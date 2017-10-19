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
	uv_output_init(&this->beacon, BEACON_SENSE_CHN, BEACON_IO,
			SENSE_MOHM, 0, BEACON_MAX_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_BEACON_OVERCURRENT, CSB_EMCY_BEACON_FAULT);
	uv_output_init(&this->cooler, COOLER_SENSE_CHN, COOLER_IO,
			SENSE_MOHM, 0, COOLER_MAX_CURRENT_MA, OUTPUT_AVG_COUNT,
			CSB_EMCY_COOLER_OVERCURRENT, CSB_EMCY_COOLER_FAULT);

	uv_gpio_init_input(WIPER_SENSOR_IO, PULL_DOWN_ENABLED);
	uv_gpio_init_input(COOLER_P_IO, PULL_DOWN_ENABLED);

}




void step(void* me) {

	init(this);

	while (true) {
		unsigned int step_ms = 10;
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
