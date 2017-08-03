/*
 * uw_messages.c
 *
 *  Created on: Feb 19, 2015
 *      Author: usenius
 */


#include "main.h"
#include "messages.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <uv_timer.h>
#include <uv_utilities.h>

extern dev_st dev;


void vdd_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv);
void t_callb(void *me, unsigned int cmd, unsigned int args, argument_st *argv);


canopen_object_st obj_dict[] = {
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
				.main_index = CSB_WORK_LIGHT_POWER_INDEX,
				.sub_index = CSB_WORK_LIGHT_POWER_SUBINDEX,
				.type = CSB_WORK_LIGHT_POWER_TYPE,
				.permissions = CSB_WORK_LIGHT_POWER_PERMISSIONS,
				.data_ptr = &dev.work_light.power
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
				.main_index = CSB_DRIVE_LIGHT_POWER_INDEX,
				.sub_index = CSB_DRIVE_LIGHT_POWER_SUBINDEX,
				.type = CSB_DRIVE_LIGHT_POWER_TYPE,
				.permissions = CSB_DRIVE_LIGHT_POWER_PERMISSIONS,
				.data_ptr = &dev.drive_light.power
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
				.main_index = CSB_BACK_LIGHT_POWER_INDEX,
				.sub_index = CSB_BACK_LIGHT_POWER_SUBINDEX,
				.type = CSB_BACK_LIGHT_POWER_TYPE,
				.permissions = CSB_BACK_LIGHT_POWER_PERMISSIONS,
				.data_ptr = &dev.back_light.power
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
				.main_index = CSB_IN_LIGHT_POWER_INDEX,
				.sub_index = CSB_IN_LIGHT_POWER_SUBINDEX,
				.type = CSB_IN_LIGHT_POWER_TYPE,
				.permissions = CSB_IN_LIGHT_POWER_PERMISSIONS,
				.data_ptr = &dev.in_light.power
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
				.main_index = CSB_BEACON_POWER_INDEX,
				.sub_index = CSB_BEACON_POWER_SUBINDEX,
				.type = CSB_BEACON_POWER_TYPE,
				.permissions = CSB_BEACON_POWER_PERMISSIONS,
				.data_ptr = &dev.beacon.power
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
				.main_index = CSB_COOLER_POWER_INDEX,
				.sub_index = CSB_COOLER_POWER_SUBINDEX,
				.type = CSB_COOLER_POWER_TYPE,
				.permissions = CSB_COOLER_POWER_PERMISSIONS,
				.data_ptr = &dev.cooler.power
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
};




unsigned int commands_size(void) {
	return sizeof(terminal_commands) / sizeof(uv_command_st);
}




#define this ((dev_st*)me)












