/*
 * pin_mappings.h
 *
 *  Created on: Jan 27, 2015
 *      Author: usenius
 *
 *  Defines keypad pin mappings for different pcb revisions used
 */

#ifndef UW_MB_SRC_PIN_MAPPINGS_H_
#define UW_MB_SRC_PIN_MAPPINGS_H_

#include <uv_gpio.h>
#include <uv_timer.h>
#include <uv_adc.h>


#define BACK_LIGHT_SENSE_CHN		ADC0_6
#define WORK_LIGHT_SENSE_CHN		ADC0_2
#define BEACON_SENSE_CHN			ADC0_7
#define WIPER_SENSE_CHN				ADC0_11
#define DRIVE_LIGHT_SENSE_CHN		ADC0_0
#define COOLER_SENSE_CHN			ADC1_7
#define IN_LIGHT_SENSE_CHN			ADC0_10

#define WORK_LIGHT_IO				P0_5
#define BACK_LIGHT_IO				P0_3
#define BEACON_IO					P0_4
#define WIPER_IO					P1_0
#define DRIVE_LIGHT_IO				P0_7
#define IN_LIGHT_IO					P0_31
#define WIPER_SENSOR_IO				P1_4
#define COOLER_IO					P0_13
#define COOLER_P_IO					P1_5





#endif /* UW_MB_SRC_PIN_MAPPINGS_H_ */
