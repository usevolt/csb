EESchema Schematic File Version 2
LIBS:kemet
LIBS:multicomp
LIBS:power
LIBS:usevolt
LIBS:wurth_elektronik_LED
LIBS:csb-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 12
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 6300 2700 950  350 
U 58BE8E4D
F0 "sheet58BE8E45" 60
F1 "currentSense.sch" 60
F2 "SENSE+" I R 7250 2800 60 
F3 "SENSE-" I R 7250 2950 60 
F4 "VOUT" O L 6300 2800 60 
$EndSheet
$Comp
L GND #PWR032
U 1 1 58BE8E62
P 3750 4650
F 0 "#PWR032" H 3750 4400 50  0001 C CNN
F 1 "GND" H 3755 4477 50  0000 C CNN
F 2 "" H 3750 4650 50  0000 C CNN
F 3 "" H 3750 4650 50  0000 C CNN
	1    3750 4650
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_DRIVER_LT1161 U901
U 1 1 58BE8E74
P 4400 3950
F 0 "U901" H 4400 4747 60  0000 C CNN
F 1 "MOSFET_DRIVER_LT1161" H 4400 4641 60  0000 C CNN
F 2 "usevolt:SO20" H 4450 4825 60  0001 C CNN
F 3 "http://www.linear.com/docs/3607" H 4500 4675 60  0001 C CNN
F 4 "LINEAR TECHNOLOGY" H 4425 4900 60  0001 C CNN "Manufacturer"
F 5 "LT1161" H 4450 5000 60  0001 C CNN "Manufacturer Part Number"
F 6 "Digikey" H 4450 5100 60  0001 C CNN "1st Source"
F 7 "LT1161ISW#TRPBFCT-ND" H 4550 4750 60  0001 C CNN "1st Source Part Number"
F 8 "Farnell" H 4400 3950 60  0001 C CNN "2nd Source"
F 9 "2115820" H 4400 3950 60  0001 C CNN "2nd Source Part Number"
	1    4400 3950
	1    0    0    -1  
$EndComp
$Sheet
S 6300 3200 950  350 
U 595CED50
F0 "sheet58BE8E46" 60
F1 "currentSense.sch" 60
F2 "SENSE+" I R 7250 3300 60 
F3 "SENSE-" I R 7250 3450 60 
F4 "VOUT" O L 6300 3300 60 
$EndSheet
$Sheet
S 6150 4100 950  350 
U 595CED51
F0 "sheet58BE8E47" 60
F1 "currentSense.sch" 60
F2 "SENSE+" I R 7100 4200 60 
F3 "SENSE-" I R 7100 4350 60 
F4 "VOUT" O L 6150 4200 60 
$EndSheet
$Comp
L 100nF C?
U 1 1 595CED52
P 5200 3400
AR Path="/595CED52" Ref="C?"  Part="1" 
AR Path="/58BE52C9/595CED52" Ref="C?"  Part="1" 
AR Path="/58C7B0A8/595CED52" Ref="C?"  Part="1" 
AR Path="/59542AAB/595CED52" Ref="C?"  Part="1" 
AR Path="/5954FB0E/595CED52" Ref="C901"  Part="1" 
F 0 "C901" H 5250 3599 45  0000 C CNN
F 1 "100nF" H 5250 3515 45  0000 C CNN
F 2 "kemet:0603" H 5230 3550 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2062872.pdf?_ga=1.250530118.1948984246.1460023966" H 5104 3409 60  0001 C CNN
F 4 "1288255" H 5504 3809 60  0001 C CNN "1st Source Part Number"
F 5 "C0603C104K5RACTU" H 5304 3609 60  0001 C CNN "Manufacturer Part Number"
F 6 "Farnell" H 5404 3709 60  0001 C CNN "1st Source"
F 7 "KEMET" H 5204 3509 60  0001 C CNN "Manufacturer"
	1    5200 3400
	1    0    0    -1  
$EndComp
$Comp
L 100nF C?
U 1 1 595CED53
P 5200 4550
AR Path="/595CED53" Ref="C?"  Part="1" 
AR Path="/58BE52C9/595CED53" Ref="C?"  Part="1" 
AR Path="/58C7B0A8/595CED53" Ref="C?"  Part="1" 
AR Path="/59542AAB/595CED53" Ref="C?"  Part="1" 
AR Path="/5954FB0E/595CED53" Ref="C902"  Part="1" 
F 0 "C902" H 5250 4749 45  0000 C CNN
F 1 "100nF" H 5250 4665 45  0000 C CNN
F 2 "kemet:0603" H 5230 4700 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2062872.pdf?_ga=1.250530118.1948984246.1460023966" H 5104 4559 60  0001 C CNN
F 4 "1288255" H 5504 4959 60  0001 C CNN "1st Source Part Number"
F 5 "C0603C104K5RACTU" H 5304 4759 60  0001 C CNN "Manufacturer Part Number"
F 6 "Farnell" H 5404 4859 60  0001 C CNN "1st Source"
F 7 "KEMET" H 5204 4659 60  0001 C CNN "Manufacturer"
	1    5200 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 58BE8EC1
P 5400 4650
F 0 "#PWR033" H 5400 4400 50  0001 C CNN
F 1 "GND" H 5405 4477 50  0000 C CNN
F 2 "" H 5400 4650 50  0000 C CNN
F 3 "" H 5400 4650 50  0000 C CNN
	1    5400 4650
	1    0    0    -1  
$EndComp
Text HLabel 9350 4050 2    60   Output ~ 0
OUT1
Text HLabel 9350 4350 2    60   Output ~ 0
OUT2
Text HLabel 9500 5000 2    60   Output ~ 0
OUT3
Text HLabel 2250 3650 0    60   Input ~ 0
IN1
Text HLabel 2250 3900 0    60   Input ~ 0
IN2
Text HLabel 2250 4150 0    60   Input ~ 0
IN3
Text HLabel 4050 2800 0    60   Output ~ 0
SENSE1
Text HLabel 3950 2900 0    60   Output ~ 0
SENSE2
Text HLabel 3850 3000 0    60   Output ~ 0
SENSE3
Text HLabel 7600 2000 2    60   Input ~ 0
VDD
$Comp
L MOSFET_IPG20N04S4L11ATMA1 U903
U 1 1 591C1D78
P 8400 5200
F 0 "U903" H 8400 5647 60  0000 C CNN
F 1 "MOSFET_IPG20N04S4L11ATMA1" H 8400 5541 60  0000 C CNN
F 2 "usevolt:PG-TDSON-8-4" H 8400 5700 60  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Infineon-IPG20N04S4L_11-DS-v01_00-en.pdf?fileId=db3a30432ba3fa6f012bbf644b016c14" H 9450 6100 60  0001 C CNN
F 4 "Digikey" H 8900 6000 60  0001 C CNN "2nd Source"
F 5 "IPG20N04S4L11ATMA1CT-ND" H 9000 6100 60  0001 C CNN "2nd Source Part Number"
F 6 "2443439" H 8900 6200 60  0001 C CNN "1st Source Part Number"
F 7 "Farnell" H 8800 6100 60  0001 C CNN "1st Source"
F 8 "INFINEON" H 8600 5900 60  0001 C CNN "Manufacturer"
F 9 "IPG20N04S4L11ATMA1" H 8700 6000 60  0001 C CNN "Manufacturer Part Number"
	1    8400 5200
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_IPG20N04S4L11ATMA1 U902
U 1 1 595CED56
P 8400 4250
F 0 "U902" H 8400 4697 60  0000 C CNN
F 1 "MOSFET_IPG20N04S4L11ATMA1" H 8400 4591 60  0000 C CNN
F 2 "usevolt:PG-TDSON-8-4" H 8400 4750 60  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Infineon-IPG20N04S4L_11-DS-v01_00-en.pdf?fileId=db3a30432ba3fa6f012bbf644b016c14" H 9450 5150 60  0001 C CNN
F 4 "Digikey" H 8900 5050 60  0001 C CNN "2nd Source"
F 5 "IPG20N04S4L11ATMA1CT-ND" H 9000 5150 60  0001 C CNN "2nd Source Part Number"
F 6 "2443439" H 8900 5250 60  0001 C CNN "1st Source Part Number"
F 7 "Farnell" H 8800 5150 60  0001 C CNN "1st Source"
F 8 "INFINEON" H 8600 4950 60  0001 C CNN "Manufacturer"
F 9 "IPG20N04S4L11ATMA1" H 8700 5050 60  0001 C CNN "Manufacturer Part Number"
	1    8400 4250
	1    0    0    -1  
$EndComp
$Comp
L R_ARRAY4_1K R901
U 1 1 595CED57
P 2400 3850
F 0 "R901" V 2347 3928 60  0000 L CNN
F 1 "R_ARRAY4_1K" V 2453 3928 60  0000 L CNN
F 2 "usevolt:0603_array4" H 2300 3950 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2085571.pdf?_ga=2.53355752.1982371163.1497267075-1561825231.1484148445" H 2400 4050 60  0001 C CNN
F 4 "2060100" H 2800 4450 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 2900 4550 60  0001 C CNN "2nd Source"
F 6 "EXB38V102JV" H 2600 4250 60  0001 C CNN "Manufacturer Part Number"
F 7 "Farnell" H 2700 4350 60  0001 C CNN "1st Source"
F 8 "Y9102CT-ND" H 3000 4650 60  0001 C CNN "2nd Source Part Number"
F 9 "PANASONIC ELECTRONIC COMPONENTS" H 2500 4150 60  0001 C CNN "Manufacturer"
	1    2400 3850
	0    1    1    0   
$EndComp
$Comp
L R_ARRAY4_1K R901
U 2 1 595CED58
P 2600 4100
F 0 "R901" V 2547 4178 60  0000 L CNN
F 1 "R_ARRAY4_1K" V 2653 4178 60  0000 L CNN
F 2 "usevolt:0603_array4" H 2500 4200 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2085571.pdf?_ga=2.53355752.1982371163.1497267075-1561825231.1484148445" H 2600 4300 60  0001 C CNN
F 4 "2060100" H 3000 4700 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 3100 4800 60  0001 C CNN "2nd Source"
F 6 "EXB38V102JV" H 2800 4500 60  0001 C CNN "Manufacturer Part Number"
F 7 "Farnell" H 2900 4600 60  0001 C CNN "1st Source"
F 8 "Y9102CT-ND" H 3200 4900 60  0001 C CNN "2nd Source Part Number"
F 9 "PANASONIC ELECTRONIC COMPONENTS" H 2700 4400 60  0001 C CNN "Manufacturer"
	2    2600 4100
	0    1    1    0   
$EndComp
$Comp
L R_ARRAY4_1K R901
U 3 1 595CED59
P 2800 4350
F 0 "R901" V 2747 4428 60  0000 L CNN
F 1 "R_ARRAY4_1K" V 2853 4428 60  0000 L CNN
F 2 "usevolt:0603_array4" H 2700 4450 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2085571.pdf?_ga=2.53355752.1982371163.1497267075-1561825231.1484148445" H 2800 4550 60  0001 C CNN
F 4 "2060100" H 3200 4950 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 3300 5050 60  0001 C CNN "2nd Source"
F 6 "EXB38V102JV" H 3000 4750 60  0001 C CNN "Manufacturer Part Number"
F 7 "Farnell" H 3100 4850 60  0001 C CNN "1st Source"
F 8 "Y9102CT-ND" H 3400 5150 60  0001 C CNN "2nd Source Part Number"
F 9 "PANASONIC ELECTRONIC COMPONENTS" H 2900 4650 60  0001 C CNN "Manufacturer"
	3    2800 4350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR034
U 1 1 595CED5A
P 2400 4950
F 0 "#PWR034" H 2400 4700 50  0001 C CNN
F 1 "GND" H 2405 4777 50  0000 C CNN
F 2 "" H 2400 4950 50  0000 C CNN
F 3 "" H 2400 4950 50  0000 C CNN
	1    2400 4950
	1    0    0    -1  
$EndComp
$Comp
L MOSFET_IPG20N04S4L11ATMA1 U904
U 1 1 5955DCC6
P 8400 5950
F 0 "U904" H 8400 6397 60  0000 C CNN
F 1 "MOSFET_IPG20N04S4L11ATMA1" H 8400 6291 60  0000 C CNN
F 2 "usevolt:PG-TDSON-8-4" H 8400 6450 60  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Infineon-IPG20N04S4L_11-DS-v01_00-en.pdf?fileId=db3a30432ba3fa6f012bbf644b016c14" H 9450 6850 60  0001 C CNN
F 4 "Digikey" H 8900 6750 60  0001 C CNN "2nd Source"
F 5 "IPG20N04S4L11ATMA1CT-ND" H 9000 6850 60  0001 C CNN "2nd Source Part Number"
F 6 "2443439" H 8900 6950 60  0001 C CNN "1st Source Part Number"
F 7 "Farnell" H 8800 6850 60  0001 C CNN "1st Source"
F 8 "INFINEON" H 8600 6650 60  0001 C CNN "Manufacturer"
F 9 "IPG20N04S4L11ATMA1" H 8700 6750 60  0001 C CNN "Manufacturer Part Number"
	1    8400 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2800 6300 2800
Wire Wire Line
	7700 4450 8100 4450
Wire Wire Line
	7250 2950 8000 2950
Wire Wire Line
	8000 2950 8000 4050
Wire Wire Line
	8000 4050 8100 4050
Wire Wire Line
	2250 3650 3950 3650
Connection ~ 3750 4550
Wire Wire Line
	3750 3400 3950 3400
Wire Wire Line
	3750 4550 3950 4550
Wire Wire Line
	3750 3400 3750 4650
Connection ~ 5050 4300
Wire Wire Line
	4850 4550 5100 4550
Connection ~ 5050 4050
Wire Wire Line
	5050 4300 4850 4300
Connection ~ 5050 3800
Wire Wire Line
	5050 4050 4850 4050
Connection ~ 5050 3550
Wire Wire Line
	5050 3800 4850 3800
Connection ~ 5050 3400
Wire Wire Line
	5050 3550 4850 3550
Wire Wire Line
	4850 3400 5100 3400
Wire Wire Line
	5050 2000 5050 4550
Wire Wire Line
	7900 4350 8100 4350
Wire Wire Line
	7900 3450 7900 4350
Wire Wire Line
	7900 3450 7250 3450
Wire Wire Line
	7400 3300 7250 3300
Wire Wire Line
	3950 2900 5900 2900
Wire Wire Line
	5900 2900 5900 3300
Wire Wire Line
	5900 3300 6300 3300
Wire Wire Line
	2250 3900 3950 3900
Wire Wire Line
	5600 5100 8100 5100
Wire Wire Line
	5600 5100 5600 4150
Wire Wire Line
	5600 4150 4850 4150
Wire Wire Line
	4850 3650 7800 3650
Wire Wire Line
	7800 3650 7800 4150
Wire Wire Line
	7800 4150 8100 4150
Wire Wire Line
	7700 4450 7700 3900
Wire Wire Line
	7700 3900 4850 3900
Wire Wire Line
	7100 4350 7400 4350
Wire Wire Line
	7400 4350 7400 6050
Wire Wire Line
	7400 5000 8100 5000
Wire Wire Line
	2250 4150 3950 4150
Wire Wire Line
	3850 3000 5800 3000
Wire Wire Line
	5800 3000 5800 4200
Wire Wire Line
	5800 4200 6150 4200
Connection ~ 5050 4550
Wire Wire Line
	5400 3400 5400 4650
Connection ~ 5400 4550
Wire Wire Line
	8700 5000 9500 5000
Wire Wire Line
	8700 4350 9350 4350
Wire Wire Line
	9350 4050 8700 4050
Wire Wire Line
	7400 4200 7100 4200
Connection ~ 7400 2800
Wire Wire Line
	7400 2800 7250 2800
Wire Wire Line
	7400 2000 7400 4200
Wire Wire Line
	5050 2000 7600 2000
Connection ~ 7400 2000
Connection ~ 2800 4150
Connection ~ 2600 3900
Connection ~ 2400 3650
Wire Wire Line
	2400 4050 2400 4950
Wire Wire Line
	2600 4300 2600 4800
Connection ~ 2400 4800
Wire Wire Line
	2800 4800 2800 4550
Connection ~ 2600 4800
Wire Wire Line
	7600 5100 7600 6150
Wire Wire Line
	7600 5850 8100 5850
Connection ~ 7600 5100
Wire Wire Line
	7400 5750 8100 5750
Connection ~ 7400 5000
Wire Wire Line
	9150 5750 8700 5750
Wire Wire Line
	9150 5000 9150 6050
Connection ~ 9150 5000
Connection ~ 7400 3300
Wire Wire Line
	2400 4800 2800 4800
Wire Wire Line
	8100 5300 7400 5300
Connection ~ 7400 5300
Wire Wire Line
	8700 5300 9150 5300
Connection ~ 9150 5300
Wire Wire Line
	9150 6050 8700 6050
Connection ~ 9150 5750
Wire Wire Line
	7400 6050 8100 6050
Connection ~ 7400 5750
Wire Wire Line
	7600 6150 8100 6150
Connection ~ 7600 5850
Wire Wire Line
	8100 5400 7600 5400
Connection ~ 7600 5400
$EndSCHEMATC
