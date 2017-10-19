/*
 * main.h
 *
 *  Created on: Apr 26, 2015
 *      Author: usevolt
 */

#ifndef MAIN_H_
#define MAIN_H_


#include <uv_memory.h>
#include <uv_filters.h>
#include <uv_adc.h>
#include <uv_output.h>
#include "can_csb.h"


#define SENSE_MOHM						2
#define OUTPUT_AVG_COUNT				40


#define DRIVE_LIGHT_MAX_CURRENT_MA		5000
#define WORK_LIGHT_MAX_CURRENT_MA		5000
#define BACK_LIGHT_MAX_CURRENT_MA		5000
#define IN_LIGHT_MAX_CURRENT_MA			5000
#define BEACON_MAX_CURRENT_MA			5000
#define WIPER_MAX_CURRENT_MA			5000
#define COOLER_MAX_CURRENT_MA			15000





typedef struct _dev_st {

	uv_output_st drive_light;
	uv_output_st work_light;
	uv_output_st in_light;
	uv_output_st back_light;
	uv_output_st beacon;
	uv_output_st wiper;
	uv_output_st cooler;

	uint8_t wiper_speed;
	// cooler compressor input signal from the cooler
	uint8_t cooler_p;

	uint16_t total_current;

	uv_data_start_t data_start;

	uint8_t beacon_enabled;

	uv_data_end_t data_end;


} dev_st;


void wiper_set_speed(void *me, uint8_t speed);

void step(void* me);

void init(dev_st* me);


#endif /* MAIN_H_ */
