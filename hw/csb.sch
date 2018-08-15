EESchema Schematic File Version 4
LIBS:csb-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title "Usewood Ceiling Supply Board"
Date "2017-06-28"
Rev "1"
Comp "Usevolt Oy"
Comment1 "Olli Usenius"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2050 1200 1200 400 
U 595401A8
F0 "Power Supply" 60
F1 "pwr_supply_sheet.sch" 60
F2 "VIN" I L 2050 1300 60 
F3 "+5V" O R 3250 1400 60 
F4 "+3V3" O R 3250 1500 60 
F5 "VDD" O R 3250 1300 60 
F6 "GND" I L 2050 1500 60 
$EndSheet
$Comp
L power:VDD #PWR0101
U 1 1 59541057
P 3450 1150
F 0 "#PWR0101" H 3450 1000 50  0001 C CNN
F 1 "VDD" H 3467 1323 50  0000 C CNN
F 2 "" H 3450 1150 50  0000 C CNN
F 3 "" H 3450 1150 50  0000 C CNN
	1    3450 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 595410AC
P 3650 1150
F 0 "#PWR0102" H 3650 1000 50  0001 C CNN
F 1 "+5V" H 3665 1323 50  0000 C CNN
F 2 "" H 3650 1150 50  0000 C CNN
F 3 "" H 3650 1150 50  0000 C CNN
	1    3650 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0103
U 1 1 595410EA
P 3850 1150
F 0 "#PWR0103" H 3850 1000 50  0001 C CNN
F 1 "+3V3" H 3865 1323 50  0000 C CNN
F 2 "" H 3850 1150 50  0000 C CNN
F 3 "" H 3850 1150 50  0000 C CNN
	1    3850 1150
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1-RESCUE-csb J102
U 1 1 59541432
P 900 1550
F 0 "J102" H 869 1633 45  0000 C CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 900 1550 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 930 1700 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1000 1520 60  0001 C CNN
F 4 "A106572-ND" H 1600 2120 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1500 2020 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1400 1920 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1200 1720 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1300 1820 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1100 1620 60  0001 C CNN "Manufacturer"
	1    900  1550
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1-RESCUE-csb J102
U 2 1 595414CB
P 900 1700
F 0 "J102" H 869 1783 45  0000 C CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 900 1700 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 930 1850 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1000 1670 60  0001 C CNN
F 4 "A106572-ND" H 1600 2270 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1500 2170 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1400 2070 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1200 1870 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1300 1970 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1100 1770 60  0001 C CNN "Manufacturer"
	2    900  1700
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1-RESCUE-csb J102
U 3 1 5954155F
P 900 1850
F 0 "J102" H 868 1933 45  0000 C CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 900 1850 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 930 2000 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1000 1820 60  0001 C CNN
F 4 "A106572-ND" H 1600 2420 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1500 2320 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1400 2220 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1200 2020 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1300 2120 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1100 1920 60  0001 C CNN "Manufacturer"
	3    900  1850
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1-RESCUE-csb J102
U 4 1 595415DF
P 900 2000
F 0 "J102" H 868 2083 45  0000 C CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 900 2000 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 930 2150 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1000 1970 60  0001 C CNN
F 4 "A106572-ND" H 1600 2570 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1500 2470 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1400 2370 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1200 2170 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1300 2270 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1100 2070 60  0001 C CNN "Manufacturer"
	4    900  2000
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1-RESCUE-csb J102
U 5 1 59541657
P 900 2150
F 0 "J102" H 868 2233 45  0000 C CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 900 2150 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 930 2300 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1000 2120 60  0001 C CNN
F 4 "A106572-ND" H 1600 2720 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1500 2620 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1400 2520 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1200 2320 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1300 2420 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1100 2220 60  0001 C CNN "Manufacturer"
	5    900  2150
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1-RESCUE-csb J102
U 6 1 595416D1
P 900 2300
F 0 "J102" H 868 2383 45  0000 C CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 900 2300 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 930 2450 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1000 2270 60  0001 C CNN
F 4 "A106572-ND" H 1600 2870 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1500 2770 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1400 2670 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1200 2470 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1300 2570 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1100 2370 60  0001 C CNN "Manufacturer"
	6    900  2300
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1-RESCUE-csb J102
U 7 1 5954174D
P 900 2450
F 0 "J102" H 868 2533 45  0000 C CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 900 2450 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 930 2600 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1000 2420 60  0001 C CNN
F 4 "A106572-ND" H 1600 3020 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1500 2920 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1400 2820 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1200 2620 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1300 2720 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1100 2520 60  0001 C CNN "Manufacturer"
	7    900  2450
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1-RESCUE-csb J102
U 8 1 595417CB
P 900 2600
F 0 "J102" H 868 2683 45  0000 C CNN
F 1 "AMPSEAL_8_POS_VERT_BLACK_SEALED_1-776276-1" H 900 2600 45  0001 L BNN
F 2 "usevolt:AMPSEAL_8_POS_776275-1" H 930 2750 20  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=776276&DocType=Customer+Drawing&DocLang=English" H 1000 2570 60  0001 C CNN
F 4 "A106572-ND" H 1600 3170 60  0001 C CNN "2nd Source Part Number"
F 5 "Digikey" H 1500 3070 60  0001 C CNN "2nd Source"
F 6 "571-1-776276-1" H 1400 2970 60  0001 C CNN "1st Source Part Number"
F 7 "1-776276-1" H 1200 2770 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 1300 2870 60  0001 C CNN "1st Source"
F 9 "TE Connectivity" H 1100 2670 60  0001 C CNN "Manufacturer"
	8    900  2600
	-1   0    0    -1  
$EndComp
Text Label 3800 2750 0    60   ~ 0
CANH
Text Label 3800 2850 0    60   ~ 0
CANL
Text Label 1500 2000 2    60   ~ 0
CANH
Text Label 1500 2150 2    60   ~ 0
CANL
Text Label 10600 2200 2    60   ~ 0
DRIVE_15A
Text Label 10600 2700 2    60   ~ 0
WORK_15A
Text Label 10600 3400 2    60   ~ 0
BEACON_4A
Text Label 10600 3200 2    60   ~ 0
BACK_4A
Text Label 10650 4100 2    60   ~ 0
IN_4A
Text Label 10650 3900 2    60   ~ 0
WIPER_4A
Text Label 10650 4600 2    60   ~ 0
COOLER_30A
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 1 1 595D3228
P 10900 2300
F 0 "J101" H 10868 2383 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 10900 2300 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 10930 2450 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 11000 2270 60  0001 C CNN
F 4 "571-1-776228-5" H 11400 2670 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11200 2470 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11300 2570 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11100 2370 60  0001 C CNN "Manufacturer"
	1    10900 2300
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 2 1 595D3550
P 11100 2400
F 0 "J101" H 11068 2483 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 11100 2400 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 11130 2550 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 11200 2370 60  0001 C CNN
F 4 "571-1-776228-5" H 11600 2770 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11400 2570 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11500 2670 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11300 2470 60  0001 C CNN "Manufacturer"
	2    11100 2400
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 3 1 595D36E2
P 11100 2900
F 0 "J101" H 11068 2983 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 11100 2900 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 11130 3050 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 11200 2870 60  0001 C CNN
F 4 "571-1-776228-5" H 11600 3270 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11400 3070 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11500 3170 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11300 2970 60  0001 C CNN "Manufacturer"
	3    11100 2900
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 4 1 595D386E
P 750 4400
F 0 "J101" H 718 4483 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 750 4400 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 780 4550 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 850 4370 60  0001 C CNN
F 4 "571-1-776228-5" H 1250 4770 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 1050 4570 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 1150 4670 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 950 4470 60  0001 C CNN "Manufacturer"
	4    750  4400
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 5 1 595D39FC
P 750 4550
F 0 "J101" H 718 4633 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 750 4550 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 780 4700 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 850 4520 60  0001 C CNN
F 4 "571-1-776228-5" H 1250 4920 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 1050 4720 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 1150 4820 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 950 4620 60  0001 C CNN "Manufacturer"
	5    750  4550
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 6 1 595D3B8C
P 750 4700
F 0 "J101" H 718 4783 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 750 4700 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 780 4850 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 850 4670 60  0001 C CNN
F 4 "571-1-776228-5" H 1250 5070 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 1050 4870 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 1150 4970 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 950 4770 60  0001 C CNN "Manufacturer"
	6    750  4700
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 7 1 595D3D22
P 750 4850
F 0 "J101" H 718 4933 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 750 4850 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 780 5000 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 850 4820 60  0001 C CNN
F 4 "571-1-776228-5" H 1250 5220 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 1050 5020 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 1150 5120 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 950 4920 60  0001 C CNN "Manufacturer"
	7    750  4850
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 9 1 595D404C
P 10900 2100
F 0 "J101" H 10868 2183 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 10900 2100 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 10930 2250 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 11000 2070 60  0001 C CNN
F 4 "571-1-776228-5" H 11400 2470 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11200 2270 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11300 2370 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11100 2170 60  0001 C CNN "Manufacturer"
	9    10900 2100
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 10 1 595D41E8
P 10900 2800
F 0 "J101" H 10869 2883 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 10900 2800 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 10930 2950 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 11000 2770 60  0001 C CNN
F 4 "571-1-776228-5" H 11400 3170 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11200 2970 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11300 3070 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11100 2870 60  0001 C CNN "Manufacturer"
	10   10900 2800
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 11 1 595D4382
P 10900 3000
F 0 "J101" H 10868 3083 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 10900 3000 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 10930 3150 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 11000 2970 60  0001 C CNN
F 4 "571-1-776228-5" H 11400 3370 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11200 3170 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11300 3270 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11100 3070 60  0001 C CNN "Manufacturer"
	11   10900 3000
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 12 1 595D451E
P 750 5500
F 0 "J101" H 719 5583 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 750 5500 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 780 5650 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 850 5470 60  0001 C CNN
F 4 "571-1-776228-5" H 1250 5870 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 1050 5670 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 1150 5770 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 950 5570 60  0001 C CNN "Manufacturer"
	12   750  5500
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 13 1 595D46C0
P 3650 3850
F 0 "J101" H 3619 3933 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 3650 3850 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 3680 4000 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 3750 3820 60  0001 C CNN
F 4 "571-1-776228-5" H 4150 4220 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 3950 4020 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 4050 4120 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 3850 3920 60  0001 C CNN "Manufacturer"
	13   3650 3850
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 14 1 595D4862
P 750 5750
F 0 "J101" H 719 5833 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 750 5750 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 780 5900 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 850 5720 60  0001 C CNN
F 4 "571-1-776228-5" H 1250 6120 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 1050 5920 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 1150 6020 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 950 5820 60  0001 C CNN "Manufacturer"
	14   750  5750
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 15 1 595D4A2A
P 3450 3950
F 0 "J101" H 3419 4033 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 3450 3950 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 3480 4100 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 3550 3920 60  0001 C CNN
F 4 "571-1-776228-5" H 3950 4320 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 3750 4120 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 3850 4220 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 3650 4020 60  0001 C CNN "Manufacturer"
	15   3450 3950
	-1   0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 16 1 595D4BCE
P 11100 2200
F 0 "J101" H 11068 2283 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 11100 2200 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 11130 2350 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 11200 2170 60  0001 C CNN
F 4 "571-1-776228-5" H 11600 2570 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11400 2370 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11500 2470 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11300 2270 60  0001 C CNN "Manufacturer"
	16   11100 2200
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 17 1 595D4D74
P 11100 2700
F 0 "J101" H 11068 2783 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 11100 2700 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 11130 2850 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 11200 2670 60  0001 C CNN
F 4 "571-1-776228-5" H 11600 3070 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11400 2870 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11500 2970 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11300 2770 60  0001 C CNN "Manufacturer"
	17   11100 2700
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 18 1 595D4F1C
P 11100 3400
F 0 "J101" H 11068 3483 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 11100 3400 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 11130 3550 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 11200 3370 60  0001 C CNN
F 4 "571-1-776228-5" H 11600 3770 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11400 3570 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11500 3670 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11300 3470 60  0001 C CNN "Manufacturer"
	18   11100 3400
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 19 1 595D50C6
P 10850 3200
F 0 "J101" H 10818 3283 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 10850 3200 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 10880 3350 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 10950 3170 60  0001 C CNN
F 4 "571-1-776228-5" H 11350 3570 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11150 3370 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11250 3470 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11050 3270 60  0001 C CNN "Manufacturer"
	19   10850 3200
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 20 1 595D5274
P 11100 4100
F 0 "J101" H 11068 4183 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 11100 4100 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 11130 4250 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 11200 4070 60  0001 C CNN
F 4 "571-1-776228-5" H 11600 4470 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11400 4270 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11500 4370 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11300 4170 60  0001 C CNN "Manufacturer"
	20   11100 4100
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 21 1 595D5426
P 10900 3900
F 0 "J101" H 10868 3983 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 10900 3900 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 10930 4050 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 11000 3870 60  0001 C CNN
F 4 "571-1-776228-5" H 11400 4270 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11200 4070 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11300 4170 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11100 3970 60  0001 C CNN "Manufacturer"
	21   10900 3900
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 22 1 595D55F0
P 10900 4600
F 0 "J101" H 10868 4683 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 10900 4600 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 10930 4750 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 11000 4570 60  0001 C CNN
F 4 "571-1-776228-5" H 11400 4970 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11200 4770 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11300 4870 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11100 4670 60  0001 C CNN "Manufacturer"
	22   10900 4600
	1    0    0    -1  
$EndComp
$Comp
L csb-rescue:AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5-RESCUE-csb J101
U 23 1 595D57A2
P 11100 4700
F 0 "J101" H 11068 4783 45  0000 C CNN
F 1 "AMPSEAL_23_POS_VERT_BLUE_SEALED_1-776228-5" H 11100 4700 45  0001 L BNN
F 2 "usevolt:AMPSEAL_23_POS_776200-1" H 11130 4850 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/418/NG_CD_776228_C13-683129.pdf" H 11200 4670 60  0001 C CNN
F 4 "571-1-776228-5" H 11600 5070 60  0001 C CNN "1st Source Part Number"
F 5 "1-776228-5" H 11400 4870 60  0001 C CNN "Manufacturer Part Number"
F 6 "Mouser" H 11500 4970 60  0001 C CNN "1st Source"
F 7 "TE Connectivity" H 11300 4770 60  0001 C CNN "Manufacturer"
	23   11100 4700
	1    0    0    -1  
$EndComp
$Sheet
S 4250 2400 2150 2700
U 5953E91C
F0 "LPC1549" 60
F1 "lpc1549.sch" 60
F2 "CANL" I L 4250 2850 60 
F3 "CANH" I L 4250 2750 60 
F4 "WIPER_POS" I L 4250 3850 60 
F5 "COOLER_P" I L 4250 3950 60 
F6 "DRIVE" O R 6400 2500 60 
F7 "WORK" O R 6400 2700 60 
F8 "IN" O R 6400 4100 60 
F9 "BACK" O R 6400 2900 60 
F10 "BEACON" O R 6400 3100 60 
F11 "WIPER" O R 6400 3900 60 
F12 "COOLER" O R 6400 4300 60 
F13 "WORK_SENSE" I R 6400 2800 60 
F14 "DRIVE_SENSE" I R 6400 2600 60 
F15 "IN_SENSE" I R 6400 4200 60 
F16 "BEACON_SENSE" I R 6400 3200 60 
F17 "BACK_SENSE" I R 6400 3000 60 
F18 "WIPER_SENSE" I R 6400 4000 60 
F19 "COOLER_SENSE" I R 6400 4400 60 
$EndSheet
$Sheet
S 9050 3100 850  500 
U 5A015FC0
F0 "Sheet5A015FBF" 60
F1 "vnd5050.sch" 60
F2 "OUT1" O R 9900 3200 60 
F3 "OUT2" O R 9900 3400 60 
F4 "IN1" I L 9050 3200 60 
F5 "IN2" I L 9050 3400 60 
F6 "SENSE1" O L 9050 3300 60 
F7 "SENSE2" O L 9050 3500 60 
$EndSheet
$Sheet
S 9050 2100 850  300 
U 5A01611C
F0 "Sheet5A01611B" 60
F1 "vn5e010ah.sch" 60
F2 "OUT1" O R 9900 2200 60 
F3 "IN1" I L 9050 2200 60 
F4 "SENSE1" O L 9050 2300 60 
$EndSheet
$Sheet
S 9050 2600 850  300 
U 5A019746
F0 "Sheet5A019745" 60
F1 "vn5e010ah.sch" 60
F2 "OUT1" O R 9900 2700 60 
F3 "IN1" I L 9050 2700 60 
F4 "SENSE1" O L 9050 2800 60 
$EndSheet
$Sheet
S 9050 4500 850  300 
U 5A01A445
F0 "Sheet5A01A444" 60
F1 "vn5e010ah_double.sch" 60
F2 "OUT1" O R 9900 4600 60 
F3 "IN1" I L 9050 4600 60 
F4 "SENSE1" O L 9050 4700 60 
$EndSheet
Wire Wire Line
	3450 1150 3450 1300
Wire Wire Line
	3450 1300 3250 1300
Wire Wire Line
	3650 1150 3650 1400
Wire Wire Line
	3650 1400 3250 1400
Wire Wire Line
	3250 1500 3850 1500
Wire Wire Line
	3850 1500 3850 1150
Wire Wire Line
	1000 1550 1600 1550
Wire Wire Line
	1600 1300 1600 1550
Wire Wire Line
	1600 1300 2050 1300
Wire Wire Line
	2050 1500 1800 1500
Wire Wire Line
	1800 1500 1800 1700
Wire Wire Line
	1800 1700 1000 1700
Wire Wire Line
	4250 2750 3800 2750
Wire Wire Line
	3800 2850 4250 2850
Wire Wire Line
	1000 2000 1500 2000
Wire Wire Line
	1500 2150 1000 2150
Wire Wire Line
	1600 1850 1000 1850
Connection ~ 1600 1550
Wire Wire Line
	9900 2200 10750 2200
Wire Wire Line
	9900 3400 11000 3400
Wire Wire Line
	9900 2700 10750 2700
Wire Wire Line
	9900 4100 11000 4100
Wire Wire Line
	9900 3900 10800 3900
Wire Wire Line
	9900 4600 10650 4600
Wire Wire Line
	11000 4700 10650 4700
Wire Wire Line
	10650 4700 10650 4600
Connection ~ 10650 4600
Wire Wire Line
	3750 3850 4250 3850
Wire Wire Line
	4250 3950 3550 3950
Wire Wire Line
	1600 2300 1000 2300
Connection ~ 1600 1850
Wire Wire Line
	10800 2100 10750 2100
Wire Wire Line
	10750 2100 10750 2200
Connection ~ 10750 2200
Wire Wire Line
	10750 3200 9900 3200
Wire Wire Line
	6400 2500 8350 2500
Wire Wire Line
	8350 2500 8350 2200
Wire Wire Line
	8350 2200 9050 2200
Wire Wire Line
	9050 2300 8450 2300
Wire Wire Line
	8450 2300 8450 2600
Wire Wire Line
	8450 2600 6400 2600
Wire Wire Line
	9050 2700 6400 2700
Wire Wire Line
	6400 2800 9050 2800
Wire Wire Line
	6400 2900 8850 2900
Wire Wire Line
	8850 2900 8850 3200
Wire Wire Line
	8850 3200 9050 3200
Wire Wire Line
	9050 3300 8750 3300
Wire Wire Line
	8750 3300 8750 3000
Wire Wire Line
	8750 3000 6400 3000
Wire Wire Line
	8650 3100 8650 3400
Wire Wire Line
	8650 3400 9050 3400
Wire Wire Line
	9050 3500 8550 3500
Wire Wire Line
	8550 3500 8550 3200
Wire Wire Line
	8550 3200 6400 3200
Wire Wire Line
	10750 2300 10800 2300
Wire Wire Line
	10750 2400 11000 2400
Connection ~ 10750 2300
Wire Wire Line
	10750 2700 10750 2800
Wire Wire Line
	10750 3000 10800 3000
Connection ~ 10750 2700
Wire Wire Line
	10750 2900 11000 2900
Connection ~ 10750 2900
Wire Wire Line
	10800 2800 10750 2800
Connection ~ 10750 2800
Wire Wire Line
	6400 3900 9050 3900
Wire Wire Line
	9050 4000 6400 4000
$Sheet
S 9050 3800 850  500 
U 5A02A41F
F0 "Sheet5A02A41E" 60
F1 "vnd5050.sch" 60
F2 "OUT1" O R 9900 3900 60 
F3 "OUT2" O R 9900 4100 60 
F4 "IN1" I L 9050 3900 60 
F5 "IN2" I L 9050 4100 60 
F6 "SENSE1" O L 9050 4000 60 
F7 "SENSE2" O L 9050 4200 60 
$EndSheet
Wire Wire Line
	6400 4100 9050 4100
Wire Wire Line
	6400 4200 9050 4200
Wire Wire Line
	6400 4300 8500 4300
Wire Wire Line
	8500 4300 8500 4600
Wire Wire Line
	8500 4600 9050 4600
Wire Wire Line
	9050 4700 8400 4700
Wire Wire Line
	8400 4700 8400 4400
Wire Wire Line
	8400 4400 6400 4400
Wire Wire Line
	6400 3100 8650 3100
Wire Wire Line
	1600 1550 1600 1850
Wire Wire Line
	10650 4600 10800 4600
Wire Wire Line
	1600 1850 1600 2300
Wire Wire Line
	10750 2200 11000 2200
Wire Wire Line
	10750 2200 10750 2300
Wire Wire Line
	10750 2300 10750 2400
Wire Wire Line
	10750 2700 11000 2700
Wire Wire Line
	10750 2900 10750 3000
Wire Wire Line
	10750 2800 10750 2900
$EndSCHEMATC
