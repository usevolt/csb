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


#define BACK_LIGHT_SENSE_CHN		ADC0_11
#define WORK_LIGHT_SENSE_CHN		ADC0_10
#define BEACON_SENSE_CHN			ADC0_9
#define WIPER_SENSE_CHN				ADC1_5
#define DRIVE_LIGHT_SENSE_CHN		ADC0_8
#define COOLER_SENSE_CHN			ADC1_4
#define IN_LIGHT_SENSE_CHN			ADC1_6
#define OIL_COOLER_SENSE_CHN		ADC1_3

#define WORK_LIGHT_IO				P0_3
#define BACK_LIGHT_IO				P0_4
#define BEACON_IO					P0_6
#define WIPER_IO					P0_14
#define DRIVE_LIGHT_IO				P0_5
#define IN_LIGHT_IO					P0_15
#define WIPER_SENSOR_IO				P1_4
#define COOLER_IO					P0_16
#define OIL_COOLER_IO				P0_12
#define COOLER_P_IO					P1_5





#endif /* UW_MB_SRC_PIN_MAPPINGS_H_ */
