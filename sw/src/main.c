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

// Current sense amplifiers are not ideal rail-to-rail amplifiers,
// this is the amount of millivolts the amplifier shows when no load is applied
#define OUTPUT_CUR_AMPL_OFFSET_MV	23
// Current sense resistor's resistor value in milliohms
#define OUTPUT_CUR_SENSE_RES_MOHM	2
// Current sense amplifiers amplification
#define OUTPUT_CUR_AMPLIFICATION	62


const char * t_state_names[] = {
		"On",
		"Over current",
		"Disabled"
};


void output_init(output_st *this, uint16_t max_current, uint8_t init_state,
		uv_gpios_e gpio, uv_adc_channels_e adc_chn, csb_emcy_e overcurrent_emcy_value) {
	this->max_current = max_current;
	this->overcurrent_emcy_value = overcurrent_emcy_value;
	uv_delay_init(OUTPUT_OVERCURRENT_DELAY_MS, &this->overcurrent_delay);
	this->state = init_state;
	this->gpio = gpio;
	this->adc_chn = adc_chn;
	this->overcurrent_counter = 0;
	uv_moving_aver_init(&this->avg, OUTPUT_MOVING_AVG_COUNT);
	uv_gpio_init_output(this->gpio, (this->state == CSB_OUTPUT_STATE_ON));
}


void output_step(output_st *this, uint16_t step_ms) {
	int32_t adc = uv_adc_read(this->adc_chn);
	int32_t mv = (int32_t) adc * 3300 / ADC_MAX_VALUE - OUTPUT_CUR_AMPL_OFFSET_MV;
	// current is multiplied by inverted resistor value (1 / 0.002) and divided
	// by current sensing amplification
	int32_t current = mv * ((1000 / OUTPUT_CUR_SENSE_RES_MOHM) / OUTPUT_CUR_AMPLIFICATION);
	if (current < 0) {
		current = 0;
	}

	this->current = uv_moving_aver_step(&this->avg, current);


	if (this->state == CSB_OUTPUT_STATE_ON) {
		uv_gpio_set(this->gpio, true);
		if ((this->current > this->max_current)) {
			uv_gpio_set(this->gpio, false);
			this->state = CSB_OUTPUT_STATE_OVERCURRENT;
			uv_delay_init(OUTPUT_OVERCURRENT_DELAY_MS, &this->overcurrent_delay);
			this->overcurrent_counter++;
			// send EMCY message
			uv_canopen_emcy_send(CANOPEN_EMCY_DEVICE_SPECIFIC, this->overcurrent_emcy_value);
			printf("overcurrent! %i\n", this->current);
		}
	}
	else if (this->state == CSB_OUTPUT_STATE_OVERCURRENT) {
		output_set_state(this, CSB_OUTPUT_STATE_OFF);
//		if (uv_delay(step_ms, &this->overcurrent_delay)) {
//			// test by putting output ON and seeing if it stays without
//			// triggering overcurrent
//			uv_gpio_set(this->gpio, true);
//			output_set_state(this,
//					(this->overcurrent_counter < OUTPUT_OVERCURRENT_COUNTER_VAL) ?
//							CSB_OUTPUT_STATE_ON : CSB_OUTPUT_STATE_OFF);
//		}
//		uv_gpio_set(this->gpio, false);
	}
	else {
		uv_gpio_set(this->gpio, false);
		this->overcurrent_counter = 0;
	}

}











#define this ((dev_st*) me)


void wiper_set_speed(void *me, uint8_t speed) {
	if (speed > CSB_WIPER_MAX_SPEED) {
		speed = CSB_WIPER_MAX_SPEED;
	}
	this->wiper_speed = speed;
}


void init(dev_st* me) {
	//init terminal and pass application terminal commands array as a parameter
	uv_terminal_init(terminal_commands, commands_size());

	// load non-volatile data
	if (uv_memory_load()) {
		// initialize default settings
		this->beacon_enabled = 0;

		uv_memory_save();
	}

	this->total_current = 0;

	output_init(&this->drive_light, DRIVE_LIGHT_MAX_CURRENT_MA,
			CSB_OUTPUT_STATE_OFF, DRIVE_LIGHT_IO, DRIVE_LIGHT_SENSE_CHN,
			CSB_EMCY_DRIVE_LIGHT_OVERCURRENT);
	output_init(&this->work_light, WORK_LIGHT_MAX_CURRENT_MA,
			CSB_OUTPUT_STATE_OFF, WORK_LIGHT_IO, WORK_LIGHT_SENSE_CHN,
			CSB_EMCY_WORK_LIGHT_OVERCURRENT);
	output_init(&this->back_light, BACK_LIGHT_MAX_CURRENT_MA,
			CSB_OUTPUT_STATE_ON, BACK_LIGHT_IO, BACK_LIGHT_SENSE_CHN,
			CSB_EMCY_BACK_LIGHT_OVERCURRENT);
	output_init(&this->in_light, IN_LIGHT_MAX_CURRENT_MA,
			CSB_OUTPUT_STATE_ON, IN_LIGHT_IO, IN_LIGHT_SENSE_CHN,
			CSB_EMCY_IN_LIGHT_OVERCURRENT);
	output_init(&this->beacon, BEACON_MAX_CURRENT_MA,
			(this->beacon_enabled) ? CSB_OUTPUT_STATE_ON : CSB_OUTPUT_STATE_OFF,
					BEACON_IO, BEACON_SENSE_CHN, CSB_EMCY_BEACON_OVERCURRENT);
	output_init(&this->cooler, COOLER_MAX_CURRENT_MA,
			CSB_OUTPUT_STATE_ON, COOLER_IO, COOLER_SENSE_CHN,
			CSB_EMCY_COOLER_OVERCURRENT);

	uv_gpio_init_input(WIPER_SENSOR_IO, PULL_DOWN_ENABLED);
	uv_gpio_init_input(COOLER_P_IO, PULL_DOWN_ENABLED);

}




void step(void* me) {

	init(this);

	while (true) {
		unsigned int step_ms = 3;
		// update watchdog timer value to prevent a hard reset
//		uw_wdt_update();

		// terminal step function
		uv_terminal_step();

		output_step(&this->drive_light, step_ms);
		output_step(&this->work_light, step_ms);
		output_step(&this->back_light, step_ms);
		output_step(&this->in_light, step_ms);
		output_step(&this->beacon, step_ms);
		output_step(&this->wiper, step_ms);
		output_step(&this->cooler, step_ms);

		this->total_current = this->drive_light.current +
				this->work_light.current +
				this->back_light.current +
				this->in_light.current +
				this->beacon.current +
				this->wiper.current +
				this->cooler.current;


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
