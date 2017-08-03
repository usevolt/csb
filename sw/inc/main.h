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


#define OUTPUT_OVERCURRENT_DELAY_MS		100
#define OUTPUT_MOVING_AVG_COUNT			2

/// @brief: Structure for an output
typedef struct {
	/// @brief: Current state
	uint8_t power;
	uv_moving_aver_st avg;
	uint16_t *max_current;
	csb_output_state_e state;
	int32_t current;
	int overcurrent_delay;
	uv_gpios_e gpio;
	uv_adc_channels_e adc_chn;
} output_st;


/// @brief: Initializes a single output
void output_init(output_st *this, uint16_t *max_current, uint8_t power,
		uv_gpios_e gpio, uv_adc_channels_e adc_chn);


/// @brief: Thruster power supply step function
///
/// @return: Value representing the gpio state which should be set to enabling gpio pin
void output_step(output_st *this, uint16_t step_ms);


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

	uv_data_start_t data_start;

	uv_data_end_t data_end;


} dev_st;




void step(void* me);

void init(dev_st* me);


#endif /* MAIN_H_ */
