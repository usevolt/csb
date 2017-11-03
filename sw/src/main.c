/*
===============================================================================
 Name        : tj_keypad.c
 Author      : Olli Usenius
 Version     :
 Copyright   : $(copyright)
 Description : Usewood CAN-bus keypad & joystick driver
===============================================================================
*/

#include "main.h"
#include "messages.h"
#include "pin_mappings.h"

#include <uv_utilities.h>
#include <uv_rtos.h>

dev_st dev;

#define this ((dev_st*) &dev)




void init(dev_st* me) {
	//init terminal and pass application terminal commands array as a parameter
	uv_terminal_init(terminal_commands, commands_size());

	// load non-volatile data
	if (uv_memory_load()) {
		// initialize default settings
		this->beacon_enabled = 0;
		this->oilcooler_trigger_temp = OIL_TEMP_DEFAULT_TRIGGER_VALUE_C;

		uv_memory_save();
	}

	this->total_current = 0;
	this->wiper_state = WIPER_STATE_OFF;
	this->wiper_speed = 0;
	this->last_wiper_speed = this->wiper_speed;
	this->cooler_p = 0;
	this->esb.oil_temp = 0;
	uv_hysteresis_init(&this->oil_temp, this->oilcooler_trigger_temp, OIL_TEMP_HYSTERESIS_C, false);
	this->fsb.emcy = 0;

	uv_output_init(&this->drive_light, DRIVE_LIGHT_SENSE_CHN, DRIVE_LIGHT_IO,
			SENSE_MOHM, 0, DRIVE_LIGHT_MAX_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_DRIVE_LIGHT_OVERCURRENT, CSB_EMCY_DRIVE_LIGHT_FAULT);
	uv_output_init(&this->work_light, WORK_LIGHT_SENSE_CHN, WORK_LIGHT_IO,
			SENSE_MOHM, 0, WORK_LIGHT_MAX_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_WORK_LIGHT_OVERCURRENT, CSB_EMCY_WORK_LIGHT_FAULT);
	uv_output_init(&this->back_light, BACK_LIGHT_SENSE_CHN, BACK_LIGHT_IO,
			SENSE_MOHM, 0, BACK_LIGHT_MAX_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_BACK_LIGHT_OVERCURRENT, CSB_EMCY_BACK_LIGHT_FAULT);
	uv_output_init(&this->in_light, IN_LIGHT_SENSE_CHN, IN_LIGHT_IO,
			SENSE_MOHM, 0, IN_LIGHT_MAX_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_IN_LIGHT_OVERCURRENT, CSB_EMCY_IN_LIGHT_FAULT);
	uv_output_set_state(&this->in_light, OUTPUT_STATE_ON);
	uv_output_init(&this->beacon, BEACON_SENSE_CHN, BEACON_IO,
			SENSE_MOHM, 0, BEACON_MAX_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_BEACON_OVERCURRENT, CSB_EMCY_BEACON_FAULT);
	uv_output_init(&this->wiper, WIPER_SENSE_CHN, WIPER_IO,
			SENSE_MOHM, 0, WIPER_MAX_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_WIPER_OVERCURRENT, CSB_EMCY_WIPER_FAULT);
	uv_output_init(&this->cooler, COOLER_SENSE_CHN, COOLER_IO,
			SENSE_MOHM, 0, COOLER_MAX_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_COOLER_OVERCURRENT, CSB_EMCY_COOLER_FAULT);
	uv_output_init(&this->oilcooler, OIL_COOLER_SENSE_CHN, OIL_COOLER_IO,
			SENSE_MOHM, 0, OILCOOLER_MAX_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_OILCOOLER_OVERCURRENT, CSB_EMCY_OILCOOLER_FAULT);

	uv_gpio_init_input(WIPER_SENSOR_IO, PULL_DOWN_ENABLED);
	uv_gpio_init_input(COOLER_P_IO, PULL_DOWN_ENABLED);


	uv_canopen_set_state(CANOPEN_OPERATIONAL);
}




void step(void* me) {

	init(this);

	while (true) {
		unsigned int step_ms = 20;
		// update watchdog timer value to prevent a hard reset
//		uw_wdt_update();

		// terminal step function
		uv_terminal_step();

		uv_output_step(&this->drive_light, step_ms);
		uv_output_step(&this->work_light, step_ms);
		uv_output_step(&this->back_light, step_ms);
		uv_output_step(&this->in_light, step_ms);
		uv_output_step(&this->beacon, step_ms);
		uv_output_step(&this->wiper, step_ms);
		uv_output_step(&this->cooler, step_ms);
		uv_output_step(&this->oilcooler, step_ms);

		this->total_current = this->drive_light.current +
				this->work_light.current +
				this->back_light.current +
				this->in_light.current +
				this->beacon.current +
				this->wiper.current +
				this->cooler.current +
				this->oilcooler.current;

		// back light
		uv_output_set_state(&this->back_light,
				uv_output_get_state(&this->work_light));

		// wiper logic
		// wiper is "going away" from home
		if (this->wiper_state == WIPER_STATE_ON) {
			uv_output_set_state(&this->wiper, OUTPUT_STATE_ON);

			if (uv_delay(step_ms, &this->wiper_delay) ||
					uv_delay_has_ended(&this->wiper_delay)) {

				if (uv_gpio_get(WIPER_SENSOR_IO) != WIPER_HOME_STATE) {
					// wiper is now on the furthest position
					uv_delay_init(WIPER_ON_DELAY_MS, &this->wiper_delay);
					this->wiper_state = WIPER_STATE_RETURN_HOME;
				}
			}
		}
		// wiper is returning to home
		else if (this->wiper_state == WIPER_STATE_RETURN_HOME) {
			uv_output_set_state(&this->wiper, OUTPUT_STATE_ON);

			if (uv_delay(step_ms, &this->wiper_delay) ||
					uv_delay_has_ended(&this->wiper_delay)) {

				if (uv_gpio_get(WIPER_SENSOR_IO) == WIPER_HOME_STATE) {
					// wiper is now home, wait for the delay specified by wiper speed
					uv_delay_init(WIPER_SLOWEST_DELAY_MS -
							(uint64_t) WIPER_SLOWEST_DELAY_MS *
							this->wiper_speed / (CSB_WIPER_MAX_SPEED),
							&this->wiper_delay);
					this->wiper_state = WIPER_STATE_WAIT;
				}
			}

		}
		// wiper is waiting for delay time to end
		else if (this->wiper_state == WIPER_STATE_WAIT) {
			uv_output_set_state(&this->wiper, OUTPUT_STATE_OFF);

			if (this->wiper_speed) {
				if (uv_delay(step_ms, &this->wiper_delay) ||
						(this->wiper_speed != this->last_wiper_speed)) {
					uv_delay_init(WIPER_ON_DELAY_MS, &this->wiper_delay);
					this->wiper_state = WIPER_STATE_ON;
				}
			}
			else {
				this->wiper_state = WIPER_STATE_OFF;
			}
		}
		// wiper is off
		else {
			uv_output_set_state(&this->wiper, OUTPUT_STATE_OFF);

			if (this->wiper_speed) {
				uv_delay_init(WIPER_ON_DELAY_MS, &this->wiper_delay);
				this->wiper_state = WIPER_STATE_ON;
			}
		}
		this->last_wiper_speed = this->wiper_speed;

		// oil cooler control
		uv_hysteresis_set_trigger_value(&this->oil_temp, this->oilcooler_trigger_temp);
		uv_hysteresis_step(&this->oil_temp, this->esb.oil_temp);
		uv_output_set_state(&this->oilcooler, (uv_hysteresis_get_output(&this->oil_temp)) ?
				OUTPUT_STATE_ON : OUTPUT_STATE_OFF);

		// cooler P
		this->cooler_p = uv_gpio_get(COOLER_P_IO);

		// emcy logic
		if (this->fsb.emcy) {
			uv_output_set_state(&this->wiper, OUTPUT_STATE_OFF);
			uv_output_set_state(&this->cooler, OUTPUT_STATE_OFF);
			uv_output_set_state(&this->oilcooler, OUTPUT_STATE_OFF);
		}

		uv_rtos_task_delay(step_ms);

	}
}





int main(void) {

	// init the watchdog timer
//	uw_wdt_init(5);

	uv_init(&dev);

	uv_rtos_task_create(step, "step", UV_RTOS_MIN_STACK_SIZE * 10,
			&dev, UV_RTOS_IDLE_PRIORITY + 3, NULL);


	uv_rtos_start_scheduler();


    // Enter an infinite loop
	// never should end up here
    while(1) {
    }
    return 0;
}
