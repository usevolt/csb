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


#define VND5050_CURRENT_AMPL_UA		4173
#define VN5E01_CURRENT_AMPL_UA		13923





void init(dev_st* me) {
	//init terminal and pass application terminal commands array as a parameter
	uv_terminal_init(terminal_commands, commands_size());

	// load non-volatile data
	if (uv_memory_load()) {
		// initialize default settings
		this->beacon_enabled = 0;
		this->wiper_pol = WIPER_HOME_STATE;
		this->wiper_manual = WIPER_MANUAL_DEF;

		uv_memory_save();
	}

	this->total_current = 0;
	this->wiper_state = WIPER_STATE_OFF;
	this->wiper_speed = 0;
	this->wiper_req = 0;
	this->last_wiper_req = 0;
	uv_delay_init(&this->wiper_req_delay, WIPER_REQ_DELAY_MS);
	this->last_wiper_speed = this->wiper_speed;
	this->cooler_p = 0;
	this->fsb.seat_sw = 0;
	this->fsb.door_sw1 = 0;
	this->fsb.door_sw2 = 0;
	this->fsb.emcy = 0;
	uv_delay_init(&this->ignkey_delay, IGNKEY_DELAY_MS);

	uv_output_init(&this->drive_light, DRIVE_LIGHT_SENSE_CHN, DRIVE_LIGHT_IO,
			VN5E01_CURRENT_AMPL_UA, DRIVE_LIGHT_MAX_CURRENT_MA,
			DRIVE_LIGHT_FAULT_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_DRIVE_LIGHT_OVERCURRENT, CSB_EMCY_DRIVE_LIGHT_FAULT);
	uv_output_init(&this->work_light, WORK_LIGHT_SENSE_CHN, WORK_LIGHT_IO,
			VN5E01_CURRENT_AMPL_UA, WORK_LIGHT_MAX_CURRENT_MA,
			WORK_LIGHT_FAULT_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_WORK_LIGHT_OVERCURRENT, CSB_EMCY_WORK_LIGHT_FAULT);
	uv_output_init(&this->back_light, BACK_LIGHT_SENSE_CHN, BACK_LIGHT_IO,
			VND5050_CURRENT_AMPL_UA, BACK_LIGHT_MAX_CURRENT_MA,
			BACK_LIGHT_FAULT_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_BACK_LIGHT_OVERCURRENT, CSB_EMCY_BACK_LIGHT_FAULT);
	uv_output_init(&this->in_light, IN_LIGHT_SENSE_CHN, IN_LIGHT_IO,
			VND5050_CURRENT_AMPL_UA, IN_LIGHT_MAX_CURRENT_MA,
			IN_LIGHT_FAULT_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_IN_LIGHT_OVERCURRENT, CSB_EMCY_IN_LIGHT_FAULT);
	uv_output_set_state(&this->in_light, OUTPUT_STATE_ON);
	uv_output_init(&this->beacon, BEACON_SENSE_CHN, BEACON_IO,
			VND5050_CURRENT_AMPL_UA, BEACON_MAX_CURRENT_MA,
			BEACON_FAULT_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_BEACON_OVERCURRENT, CSB_EMCY_BEACON_FAULT);
	uv_output_init(&this->wiper, WIPER_SENSE_CHN, WIPER_IO,
			VND5050_CURRENT_AMPL_UA, WIPER_MAX_CURRENT_MA,
			WIPER_FAULT_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_WIPER_OVERCURRENT, CSB_EMCY_WIPER_FAULT);
	uv_output_init(&this->cooler, COOLER_SENSE_CHN, COOLER_IO,
			VN5E01_CURRENT_AMPL_UA, COOLER_MAX_CURRENT_MA,
			COOLER_FAULT_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_COOLER_OVERCURRENT, CSB_EMCY_COOLER_FAULT);
	uv_output_set_state(&this->cooler, OUTPUT_STATE_ON);

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

		// cooler is always on unless there's a fault
		if (uv_output_get_state(&this->cooler) == OUTPUT_STATE_OFF) {
			uv_output_set_state(&this->cooler, OUTPUT_STATE_ON);
		}

		this->total_current = this->drive_light.current +
				this->work_light.current +
				this->back_light.current +
				this->in_light.current +
				this->beacon.current +
				this->wiper.current +
				this->cooler.current;

		// back light
		uv_output_set_state(&this->back_light,
				uv_output_get_state(&this->drive_light));

		static bool last_wiper = 0;



		// ** wiper logic **
		if (this->wiper_manual) {
			// manual wiper works just as is
			if (this->wiper_req && !this->last_wiper_req) {
				if (this->wiper_speed) {
					this->wiper_speed = 0;
				}
				else {
					this->wiper_speed = CSB_WIPER_MAX_SPEED;
				}
			}
			uv_output_set_state(&this->wiper, this->wiper_speed ? OUTPUT_STATE_ON : OUTPUT_STATE_OFF);
		}
		else {
			// helps debugging wiper logic
			if (uv_gpio_get(WIPER_SENSOR_IO) != last_wiper) {
				//printf("wiper: %u\n", uv_gpio_get(WIPER_SENSOR_IO));
			}
			// wiper speed request handling
			uv_delay(&this->wiper_req_delay, step_ms);
			if (this->wiper_req && !this->last_wiper_req) {
				// user has made a wiper request. Wiper request either swings
				// wiper once or increases / decreases the wiper speed if pressed more than
				// once within the time delay.
				uv_canopen_pdo_mapping_update(CSB_WIPER_SPEED_INDEX, CSB_WIPER_SPEED_SUBINDEX);
				if (!uv_delay_has_ended(&this->wiper_req_delay)) {
					if (this->wiper_req > 0) {
						// increase wiper speed
						this->wiper_speed = this->wiper_speed + CSB_WIPER_MAX_SPEED / 4;
						if (this->wiper_speed > CSB_WIPER_MAX_SPEED) {
							this->wiper_speed = CSB_WIPER_MAX_SPEED;
						}
					}
					else {
						// decrease wiper speed
						if (this->wiper_speed >= CSB_WIPER_MAX_SPEED / 4) {
							this->wiper_speed = this->wiper_speed - CSB_WIPER_MAX_SPEED / 4;
						}
						else {
							this->wiper_speed = 0;
						}
					}
				}
				else {
					// sweep wiper only once
					uv_delay_init(&this->wiper_delay, WIPER_ON_DELAY_MS);
					this->wiper_state = WIPER_STATE_ON;
				}
				uv_delay_init(&this->wiper_req_delay, WIPER_REQ_DELAY_MS);
			}
			// wiper is "going away" from home
			if (this->wiper_state == WIPER_STATE_ON) {
				uv_output_set_state(&this->wiper, OUTPUT_STATE_ON);

				if (uv_delay(&this->wiper_delay, step_ms) ||
						uv_delay_has_ended(&this->wiper_delay)) {

					if (uv_gpio_get(WIPER_SENSOR_IO) != this->wiper_pol) {
						// wiper is now on the furthest position
						uv_delay_init(&this->wiper_delay, WIPER_ON_DELAY_MS);
						this->wiper_state = WIPER_STATE_RETURN_HOME;
					}
				}
			}
			// wiper is returning to home
			else if (this->wiper_state == WIPER_STATE_RETURN_HOME) {
				uv_output_set_state(&this->wiper, OUTPUT_STATE_ON);

				if (uv_delay(&this->wiper_delay, step_ms) ||
						uv_delay_has_ended(&this->wiper_delay)) {

					if (uv_gpio_get(WIPER_SENSOR_IO) == this->wiper_pol) {
						// wiper is now home, wait for the delay specified by wiper speed
						uv_delay_init(&this->wiper_delay, WIPER_SLOWEST_DELAY_MS -
								(uint64_t) WIPER_SLOWEST_DELAY_MS *
								this->wiper_speed / (CSB_WIPER_MAX_SPEED));
						this->wiper_state = WIPER_STATE_WAIT;
					}
				}

			}
			// wiper is waiting for delay time to end
			else if (this->wiper_state == WIPER_STATE_WAIT) {
				uv_output_set_state(&this->wiper, OUTPUT_STATE_OFF);

				if (this->wiper_speed) {
					if (uv_delay(&this->wiper_delay, step_ms) ||
							(this->wiper_speed != this->last_wiper_speed)) {
						uv_delay_init(&this->wiper_delay, WIPER_ON_DELAY_MS);
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
					uv_delay_init(&this->wiper_delay, WIPER_ON_DELAY_MS);
					this->wiper_state = WIPER_STATE_ON;
				}
			}
			this->last_wiper_speed = this->wiper_speed;

			last_wiper = uv_gpio_get(WIPER_SENSOR_IO);
		}
		this->last_wiper_req = this->wiper_req;


		// cooler P
		this->cooler_p = uv_gpio_get(COOLER_P_IO);

		// emcy logic
		if (this->fsb.emcy) {
			uv_output_disable(&this->wiper);
			uv_output_disable(&this->cooler);
		}
		else {
			uv_output_enable(&this->wiper);
			uv_output_enable(&this->cooler);
		}
		if (this->fsb.ignkey == FSB_IGNKEY_STATE_OFF) {
			if (uv_delay(&this->ignkey_delay, step_ms)) {
				// ignkey has been off for too long. Shut off cooler and wiper
				this->wiper_speed = 0;
				uv_output_set_state(&this->cooler, OUTPUT_STATE_OFF);
				uv_output_step(&this->cooler, step_ms);
				uv_rtos_task_delay(500);
			}
		}
		else {
			uv_delay_init(&this->ignkey_delay, IGNKEY_DELAY_MS);
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
