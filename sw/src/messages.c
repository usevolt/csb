/*
 * uw_messages.c
 *
 *  Created on: Feb 19, 2015
 *      Author: usenius
 */


#include "main.h"
#include "messages.h"
#include "pin_mappings.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <uv_timer.h>
#include <uv_utilities.h>

extern dev_st dev;


void vdd_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv);
void drivel_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv);
void workl_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv);
void backl_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv);
void inl_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv);
void beacon_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv);
void wiper_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv);
void cooler_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv);


canopen_object_st obj_dict[] = {
		{
				.main_index = CSB_TOTAL_CURRENT_INDEX,
				.sub_index = CSB_TOTAL_CURRENT_SUBINDEX,
				.type = CSB_TOTAL_CURRENT_TYPE,
				.permissions = CSB_TOTAL_CURRENT_PERMISSIONS,
				.data_ptr = &dev.total_current
		},
		{
				.main_index = CSB_WORK_LIGHT_STATUS_INDEX,
				.sub_index = CSB_WORK_LIGHT_STATUS_SUBINDEX,
				.type = CSB_WORK_LIGHT_STATUS_TYPE,
				.permissions = CSB_WORK_LIGHT_STATUS_PERMISSIONS,
				.data_ptr = &dev.work_light.state
		},
		{
				.main_index = CSB_WORK_LIGHT_CURRENT_INDEX,
				.sub_index = CSB_WORK_LIGHT_CURRENT_SUBINDEX,
				.type = CSB_WORK_LIGHT_CURRENT_TYPE,
				.permissions = CSB_WORK_LIGHT_CURRENT_PERMISSIONS,
				.data_ptr = &dev.work_light.current
		},
		{
				.main_index = CSB_DRIVE_LIGHT_STATUS_INDEX,
				.sub_index = CSB_DRIVE_LIGHT_STATUS_SUBINDEX,
				.type = CSB_DRIVE_LIGHT_STATUS_TYPE,
				.permissions = CSB_DRIVE_LIGHT_STATUS_PERMISSIONS,
				.data_ptr = &dev.drive_light.state
		},
		{
				.main_index = CSB_DRIVE_LIGHT_CURRENT_INDEX,
				.sub_index = CSB_DRIVE_LIGHT_CURRENT_SUBINDEX,
				.type = CSB_DRIVE_LIGHT_CURRENT_TYPE,
				.permissions = CSB_DRIVE_LIGHT_CURRENT_PERMISSIONS,
				.data_ptr = &dev.drive_light.current
		},
		{
				.main_index = CSB_BACK_LIGHT_STATUS_INDEX,
				.sub_index = CSB_BACK_LIGHT_STATUS_SUBINDEX,
				.type = CSB_BACK_LIGHT_STATUS_TYPE,
				.permissions = CSB_BACK_LIGHT_STATUS_PERMISSIONS,
				.data_ptr = &dev.back_light.state
		},
		{
				.main_index = CSB_BACK_LIGHT_CURRENT_INDEX,
				.sub_index = CSB_BACK_LIGHT_CURRENT_SUBINDEX,
				.type = CSB_BACK_LIGHT_CURRENT_TYPE,
				.permissions = CSB_BACK_LIGHT_CURRENT_PERMISSIONS,
				.data_ptr = &dev.back_light.current
		},
		{
				.main_index = CSB_IN_LIGHT_STATUS_INDEX,
				.sub_index = CSB_IN_LIGHT_STATUS_SUBINDEX,
				.type = CSB_IN_LIGHT_STATUS_TYPE,
				.permissions = CSB_IN_LIGHT_STATUS_PERMISSIONS,
				.data_ptr = &dev.in_light.state
		},
		{
				.main_index = CSB_IN_LIGHT_CURRENT_INDEX,
				.sub_index = CSB_IN_LIGHT_CURRENT_SUBINDEX,
				.type = CSB_IN_LIGHT_CURRENT_TYPE,
				.permissions = CSB_IN_LIGHT_CURRENT_PERMISSIONS,
				.data_ptr = &dev.in_light.current
		},
		{
				.main_index = CSB_BEACON_STATUS_INDEX,
				.sub_index = CSB_BEACON_STATUS_SUBINDEX,
				.type = CSB_BEACON_STATUS_TYPE,
				.permissions = CSB_BEACON_STATUS_PERMISSIONS,
				.data_ptr = &dev.beacon.state
		},
		{
				.main_index = CSB_BEACON_CURRENT_INDEX,
				.sub_index = CSB_BEACON_CURRENT_SUBINDEX,
				.type = CSB_BEACON_CURRENT_TYPE,
				.permissions = CSB_BEACON_CURRENT_PERMISSIONS,
				.data_ptr = &dev.beacon.current
		},
		{
				.main_index = CSB_BEACON_ENABLED_INDEX,
				.sub_index = CSB_BEACON_ENABLED_SUBINDEX,
				.type = CSB_BEACON_ENABLED_TYPE,
				.permissions = CSB_BEACON_ENABLED_PERMISSIONS,
				.data_ptr = &dev.beacon_enabled
		},
		{
				.main_index = CSB_WIPER_STATUS_INDEX,
				.sub_index = CSB_WIPER_STATUS_SUBINDEX,
				.type = CSB_WIPER_STATUS_TYPE,
				.permissions = CSB_WIPER_STATUS_PERMISSIONS,
				.data_ptr = &dev.wiper.state
		},
		{
				.main_index = CSB_WIPER_CURRENT_INDEX,
				.sub_index = CSB_WIPER_CURRENT_SUBINDEX,
				.type = CSB_WIPER_CURRENT_TYPE,
				.permissions = CSB_WIPER_CURRENT_PERMISSIONS,
				.data_ptr = &dev.wiper.current
		},
		{
				.main_index = CSB_WIPER_SPEED_INDEX,
				.sub_index = CSB_WIPER_SPEED_SUBINDEX,
				.type = CSB_WIPER_SPEED_TYPE,
				.permissions = CSB_WIPER_SPEED_PERMISSIONS,
				.data_ptr = &dev.wiper_speed
		},
		{
				.main_index = CSB_COOLER_STATUS_INDEX,
				.sub_index = CSB_COOLER_STATUS_SUBINDEX,
				.type = CSB_COOLER_STATUS_TYPE,
				.permissions = CSB_COOLER_STATUS_PERMISSIONS,
				.data_ptr = &dev.cooler.state
		},
		{
				.main_index = CSB_COOLER_CURRENT_INDEX,
				.sub_index = CSB_COOLER_CURRENT_SUBINDEX,
				.type = CSB_COOLER_CURRENT_TYPE,
				.permissions = CSB_COOLER_CURRENT_PERMISSIONS,
				.data_ptr = &dev.cooler.current
		},
		{
				.main_index = CSB_COOLER_P_INDEX,
				.sub_index = CSB_COOLER_P_SUBINDEX,
				.type = CSB_COOLER_P_TYPE,
				.permissions = CSB_COOLER_P_PERMISSIONS,
				.data_ptr = &dev.cooler_p
		}

};

int obj_dict_len() {
	return sizeof(obj_dict) / sizeof(canopen_object_st);
}



const uv_command_st terminal_commands[] = {
		{
				.id = CMD_DRIVE_LIGHT,
				.str = "drivel",
				.instructions = "Sets the drive light output state.\n"
						"Usage: drivel (1/0)",
				.callback = &drivel_callb
		},
		{
				.id = CMD_WORK_LIGHT,
				.str = "workl",
				.instructions = "Sets the work light output state.\n"
						"Usage: qorkl (1/0)",
				.callback = &workl_callb
		},
		{
				.id = CMD_BACK_LIGHT,
				.str = "backl",
				.instructions = "Sets the back light output state.\n"
						"Usage: backl (1/0)",
				.callback = &backl_callb
		},
		{
				.id = CMD_IN_LIGHT,
				.str = "inl",
				.instructions = "Sets the in light output state.\n"
						"Usage: inl (1/0)",
				.callback = &inl_callb
		},
		{
				.id = CMD_BEACON,
				.str = "beacon",
				.instructions = "Sets the beacon output state.\n"
						"Usage: beacon (1/0)",
				.callback = &beacon_callb
		},
		{
				.id = CMD_WIPER,
				.str = "wiper",
				.instructions = "Sets the wiper speed.\n"
						"Usage: wiper (0...100)",
				.callback = &wiper_callb
		},
		{
				.id = CMD_COOLER,
				.str = "cooler",
				.instructions = "Sets the cooler output state.\n"
						"Usage: cooler (1/0)",
				.callback = &cooler_callb
		}
};




unsigned int commands_size(void) {
	return sizeof(terminal_commands) / sizeof(uv_command_st);
}




#define this ((dev_st*)me)




void drivel_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args) {
		output_set_state(&this->drive_light,
				(argv[0].number) ? CSB_OUTPUT_STATE_ON : CSB_OUTPUT_STATE_OFF);
	}
	printf("drive light state: %u, current: %i\n", this->drive_light.state,
			(unsigned int) this->drive_light.current);
}

void workl_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args) {
		output_set_state(&this->work_light,
				(argv[0].number) ? CSB_OUTPUT_STATE_ON : CSB_OUTPUT_STATE_OFF);
	}
	printf("work light state: %u, current: %i\n", this->work_light.state,
			(unsigned int) this->work_light.current);
}

void backl_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args) {
		output_set_state(&this->back_light,
				(argv[0].number) ? CSB_OUTPUT_STATE_ON : CSB_OUTPUT_STATE_OFF);
	}
	printf("back light state: %u, current: %i\n", this->back_light.state,
			(unsigned int) this->back_light.current);
}

void inl_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args) {
		output_set_state(&this->in_light,
				(argv[0].number) ? CSB_OUTPUT_STATE_ON : CSB_OUTPUT_STATE_OFF);
	}
	printf("in light state: %u, current: %i\n", this->in_light.state,
			(unsigned int) this->in_light.current);
}

void beacon_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args) {
		output_set_state(&this->beacon,
				(argv[0].number) ? CSB_OUTPUT_STATE_ON : CSB_OUTPUT_STATE_OFF);
	}
	printf("beacon light state: %u, current: %i\n", this->beacon.state,
			(unsigned int) this->beacon.current);
}

void wiper_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args) {
		wiper_set_speed(this, argv[0].number);
	}
	printf("wiper light state: %u, current: %i\n", this->wiper.state,
			(unsigned int) this->wiper.current);
}

void cooler_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv) {
	if (args) {
		output_set_state(&this->cooler,
				(argv[0].number) ? CSB_OUTPUT_STATE_ON : CSB_OUTPUT_STATE_OFF);
	}
	printf("cooler state: %u, current: %i\n", this->cooler.state,
			(unsigned int) this->cooler.current);
}







