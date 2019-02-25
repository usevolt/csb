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
#define OUTPUT_AVG_COUNT				100


#define DRIVE_LIGHT_MAX_CURRENT_MA		20000
#define DRIVE_LIGHT_FAULT_CURRENT_MA	24000
#define WORK_LIGHT_MAX_CURRENT_MA		20000
#define WORK_LIGHT_FAULT_CURRENT_MA		24000
#define BACK_LIGHT_MAX_CURRENT_MA		5000
#define BACK_LIGHT_FAULT_CURRENT_MA		10000
#define IN_LIGHT_MAX_CURRENT_MA			4000
#define IN_LIGHT_FAULT_CURRENT_MA		5000
#define BEACON_MAX_CURRENT_MA			4000
#define BEACON_FAULT_CURRENT_MA			5000
#define WIPER_MAX_CURRENT_MA			5000
#define WIPER_FAULT_CURRENT_MA			10000
#define COOLER_MAX_CURRENT_MA			30000
#define COOLER_FAULT_CURRENT_MA			35000
#define OILCOOLER_MAX_CURRENT_MA		20000
#define OILCOOLER_FAULT_CURRENT_MA		25000

#define WIPER_SLOWEST_DELAY_MS			10000
#define WIPER_ON_DELAY_MS				300
#define WIPER_HOME_STATE				0
#define WIPER_MANUAL_DEF				0
#define WIPER_REQ_DELAY_MS				500


#define IGNKEY_DELAY_MS					10000

typedef enum {
	WIPER_STATE_OFF = 0,
	WIPER_STATE_ON,
	WIPER_STATE_RETURN_HOME,
	WIPER_STATE_WAIT
} wiper_states_e;


typedef struct _dev_st {

	uv_output_st drive_light;
	uv_output_st work_light;
	uv_output_st in_light;
	uv_output_st back_light;
	uv_output_st beacon;
	uv_output_st wiper;
	uv_output_st cooler;


	uint8_t wiper_speed;
	int8_t wiper_req;
	int8_t last_wiper_req;
	uv_delay_st wiper_req_delay;
	uint8_t last_wiper_speed;
	uv_delay_st wiper_delay;
	wiper_states_e wiper_state;

	// cooler compressor input signal from the cooler
	uint8_t cooler_p;

	uv_hysteresis_st oil_temp;

	struct {
		uint8_t emcy;
		uint8_t ignkey;
		uint8_t seat_sw;
		uint8_t door_sw1;
		uint8_t door_sw2;
	} fsb;

	uv_delay_st ignkey_delay;

	uint16_t total_current;


	uv_data_start_t data_start;

	struct {
		uint8_t beacon_enabled;
	};
	uint8_t wiper_pol;
	uint8_t wiper_manual;

	uv_data_end_t data_end;


} dev_st;


void wiper_set_speed(uint8_t speed);

void step(void* me);

void init(dev_st* me);


#endif /* MAIN_H_ */
