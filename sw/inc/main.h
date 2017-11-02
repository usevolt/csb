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
#define OILCOOLER_MAX_CURRENT_MA		10000

#define WIPER_SLOWEST_DELAY_MS			30000
#define WIPER_ON_DELAY_MS				300
#define WIPER_HOME_STATE				1

#define OIL_TEMP_HYSTERESIS_C				10
#define OIL_TEMP_DEFAULT_TRIGGER_VALUE_C	70




typedef struct _dev_st {

	uv_output_st drive_light;
	uv_output_st work_light;
	uv_output_st in_light;
	uv_output_st back_light;
	uv_output_st beacon;
	uv_output_st wiper;
	uv_output_st cooler;
	uv_output_st oilcooler;

	uint8_t wiper_speed;
	uint8_t last_wiper_speed;
	int wiper_delay;
	bool wiper_home_req;
	// cooler compressor input signal from the cooler
	uint8_t cooler_p;

	uv_hysteresis_st oil_temp;

	struct {
		int8_t oil_temp;
	} esb;

	uint16_t total_current;

	uv_data_start_t data_start;
	struct {
		int8_t oilcooler_trigger_temp;
		uint8_t beacon_enabled;
	};
	uv_data_end_t data_end;


} dev_st;


void wiper_set_speed(uint8_t speed);

void step(void* me);

void init(dev_st* me);


#endif /* MAIN_H_ */
