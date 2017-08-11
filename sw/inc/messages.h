/*
 * uw_messages.h
 *
 *  Created on: Jan 27, 2015
 *      Author: usenius
 */

#ifndef GSM_MESSAGES_H_
#define GSM_MESSAGES_H_

#include <uv_reset.h>
#include <stdint.h>
#include <uv_terminal.h>
#include <uv_canopen.h>




//extern canopen_object_st obj_dict[];

int obj_dict_len();


/// @brief: Lists all gsm commands
typedef enum {
	CMD_COUNT,
	CMD_DRIVE_LIGHT,
	CMD_WORK_LIGHT,
	CMD_BACK_LIGHT,
	CMD_IN_LIGHT,
	CMD_BEACON,
	CMD_WIPER,
	CMD_COOLER
} gsm_commands_e;


// define of commands variable declared in gsm_messages.c
extern const uv_command_st terminal_commands[];
unsigned int commands_size(void);


#endif /* GSM_MESSAGES_H_ */
