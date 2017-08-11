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
#include "can_csb.h"


#define OUTPUT_OVERCURRENT_DELAY_MS		1000
#define OUTPUT_MOVING_AVG_COUNT			2
#define OUTPUT_OVERCURRENT_COUNTER_VAL	4


#define DRIVE_LIGHT_MAX_CURRENT_MA		5000
#define WORK_LIGHT_MAX_CURRENT_MA		5000
#define BACK_LIGHT_MAX_CURRENT_MA		5000
#define IN_LIGHT_MAX_CURRENT_MA			5000
#define BEACON_MAX_CURRENT_MA			5000
#define WIPER_MAX_CURRENT_MA			5000
#define COOLER_MAX_CURRENT_MA			15000



/// @brief: Structure for an output
typedef struct {
	uv_moving_aver_st avg;
	uint16_t max_current;
	csb_output_state_e state;
	int32_t current;
	int overcurrent_delay;
	uint8_t overcurrent_counter;
	uv_gpios_e gpio;
	uv_adc_channels_e adc_chn;
	csb_emcy_e overcurrent_emcy_value;
} output_st;


/// @brief: Initializes a single output
void output_init(output_st *this, uint16_t max_current, uint8_t init_state,
		uv_gpios_e gpio, uv_adc_channels_e adc_chn, csb_emcy_e overcurrent_emcy_value);


/// @brief: Thruster power supply step function
///
/// @return: Value representing the gpio state which should be set to enabling gpio pin
void output_step(output_st *this, uint16_t step_ms);


static inline void output_set_state(output_st *this, csb_output_state_e state) {
	this->state = state;
}

static inline csb_output_state_e output_get_state(output_st *this) {
	return this->state;
}


typedef struct _dev_st {

	output_st drive_light;
	output_st work_light;
	output_st in_light;
	output_st back_light;
	output_st beacon;
	output_st wiper;
	output_st cooler;

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
