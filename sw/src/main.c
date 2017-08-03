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





const char * t_state_names[] = {
		"On",
		"Over current",
		"Disabled"
};


void output_init(output_st *this, uint16_t *max_current, uint8_t power,
		uv_gpios_e gpio, uv_adc_channels_e adc_chn) {
	this->power = power;
	this->max_current = max_current;
	uv_delay_init(OUTPUT_OVERCURRENT_DELAY_MS, &this->overcurrent_delay);
	this->state = (this->power) ? CSB_OUTPUT_STATE_ON : CSB_OUTPUT_STATE_OFF;
	this->gpio = gpio;
	this->adc_chn = adc_chn;
	uv_moving_aver_init(&this->avg, OUTPUT_MOVING_AVG_COUNT);
	uv_gpio_init_output(this->gpio, this->power);
}


void output_step(output_st *this, uint16_t step_ms) {
	int32_t current = (int32_t) uv_adc_read(this->adc_chn) * 10 * 3300 / 0x1000;

	uv_moving_aver_step(&this->avg, current);
	this->current = uv_moving_aver_get_val(&this->avg);

	// todo: output driving

}











#define this ((dev_st*) me)



void init(dev_st* me) {
	//init terminal and pass application terminal commands array as a parameter
	uv_terminal_init(terminal_commands, commands_size());

	// load non-volatile data
	if (uv_memory_load()) {
		// initialize default settings

		uv_memory_save();
	}

}




void step(void* me) {

	init(this);

	while (true) {
		unsigned int step_ms = 5;
		// update watchdog timer value to prevent a hard reset
//		uw_wdt_update();

		// terminal step function
		uv_terminal_step();



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
