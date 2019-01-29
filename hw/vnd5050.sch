EESchema Schematic File Version 4
LIBS:csb-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6700 4100 2    60   Output ~ 0
OUT1
Text HLabel 5800 4400 2    60   Output ~ 0
OUT2
Text HLabel 3200 3800 0    60   Input ~ 0
IN1
Text HLabel 3200 4000 0    60   Input ~ 0
IN2
Text HLabel 3200 3700 0    60   Output ~ 0
SENSE1
Text HLabel 3200 4200 0    60   Output ~ 0
SENSE2
$Comp
L usevolt:VND5050AJTR-E U401
U 1 1 59D8088A
P 4600 4000
AR Path="/5A015FC0/59D8088A" Ref="U401"  Part="1" 
AR Path="/5A02A41F/59D8088A" Ref="U901"  Part="1" 
F 0 "U401" H 4700 4447 60  0000 C CNN
F 1 "VND5050AJTR-E" H 4700 4341 60  0000 C CNN
F 2 "usevolt:PowerSSO-12" H 4600 4400 60  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group2/a5/e5/14/55/09/93/43/94/CD00103333/files/CD00103333.pdf/jcr:content/translations/en.CD00103333.pdf" H 4600 4400 60  0001 C CNN
F 4 "497-11474-1-ND" H 5000 4800 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 4900 4700 60  0001 C CNN "1st Source"
F 6 "STMicroelectronics" H 4700 4500 60  0001 C CNN "Manufacturer"
F 7 "VND5050AJTR-E" H 4800 4600 60  0001 C CNN "Manufacturer Part Number"
	1    4600 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0402
U 1 1 59D808C7
P 5250 3650
AR Path="/5A015FC0/59D808C7" Ref="#PWR0402"  Part="1" 
AR Path="/5A02A41F/59D808C7" Ref="#PWR0802"  Part="1" 
F 0 "#PWR0402" H 5250 3500 50  0001 C CNN
F 1 "VDD" H 5267 3823 50  0000 C CNN
F 2 "" H 5250 3650 50  0000 C CNN
F 3 "" H 5250 3650 50  0000 C CNN
	1    5250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3650 5250 3800
Wire Wire Line
	5250 3800 5100 3800
Wire Wire Line
	5250 3900 5100 3900
Connection ~ 5250 3800
Wire Wire Line
	5250 4000 5100 4000
Connection ~ 5250 3900
Wire Wire Line
	5100 4100 5250 4100
Wire Wire Line
	5100 4200 5250 4200
Wire Wire Line
	5250 4200 5250 4100
Connection ~ 5250 4100
Wire Wire Line
	5100 4400 5250 4400
Wire Wire Line
	5100 4300 5250 4300
Wire Wire Line
	5250 4300 5250 4400
Connection ~ 5250 4400
Wire Wire Line
	3200 3800 3300 3800
Wire Wire Line
	3200 4000 3300 4000
$Comp
L power:GND #PWR0401
U 1 1 59D86DC2
P 3600 4900
AR Path="/5A015FC0/59D86DC2" Ref="#PWR0401"  Part="1" 
AR Path="/5A02A41F/59D86DC2" Ref="#PWR0801"  Part="1" 
F 0 "#PWR0401" H 3600 4650 50  0001 C CNN
F 1 "GND" H 3605 4727 50  0000 C CNN
F 2 "" H 3600 4900 50  0000 C CNN
F 3 "" H 3600 4900 50  0000 C CNN
	1    3600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4300 4300 4300
Wire Wire Line
	4150 4200 4150 4100
Wire Wire Line
	4150 3900 4150 3700
$Comp
L yageo:1K R403
U 1 1 5A05950C
P 3400 3900
AR Path="/5A015FC0/5A05950C" Ref="R403"  Part="1" 
AR Path="/5A02A41F/5A05950C" Ref="R903"  Part="1" 
F 0 "R403" H 3450 4084 45  0000 C CNN
F 1 "1K" H 3450 4000 45  0000 C CNN
F 2 "yageo:0603" H 3430 4050 20  0001 C CNN
F 3 "" H 3369 3939 60  0001 C CNN
F 4 "" H 3769 4339 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 3669 4239 60  0001 C CNN "1st Source"
F 6 "RC0603FR-071KL" H 3569 4139 60  0001 C CNN "Manufacturer Part Number"
F 7 "YAGEO" H 3469 4039 60  0001 C CNN "Manufacturer"
	1    3400 3900
	1    0    0    -1  
$EndComp
$Comp
L yageo:1K R404
U 1 1 5A059568
P 3400 4100
AR Path="/5A015FC0/5A059568" Ref="R404"  Part="1" 
AR Path="/5A02A41F/5A059568" Ref="R904"  Part="1" 
F 0 "R404" H 3450 4284 45  0000 C CNN
F 1 "1K" H 3450 4200 45  0000 C CNN
F 2 "yageo:0603" H 3430 4250 20  0001 C CNN
F 3 "" H 3369 4139 60  0001 C CNN
F 4 "" H 3769 4539 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 3669 4439 60  0001 C CNN "1st Source"
F 6 "RC0603FR-071KL" H 3569 4339 60  0001 C CNN "Manufacturer Part Number"
F 7 "YAGEO" H 3469 4239 60  0001 C CNN "Manufacturer"
	1    3400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3900 3300 3800
Connection ~ 3300 3800
Wire Wire Line
	3300 4000 3300 4100
Connection ~ 3300 4000
Wire Wire Line
	5250 3800 5250 3900
Wire Wire Line
	5250 3900 5250 4000
Wire Wire Line
	5250 4100 6450 4100
Wire Wire Line
	5250 4400 5650 4400
Wire Wire Line
	3600 4300 3600 4850
Wire Wire Line
	4150 4100 4300 4100
Wire Wire Line
	4150 3900 4300 3900
Wire Wire Line
	3300 3800 4300 3800
Wire Wire Line
	3300 4000 4300 4000
$Comp
L yageo:1K R801
U 1 1 5B1C6487
P 3850 3900
AR Path="/5A02A41F/5B1C6487" Ref="R801"  Part="1" 
AR Path="/5A015FC0/5B1C6487" Ref="R401"  Part="1" 
F 0 "R401" H 3900 4084 45  0000 C CNN
F 1 "1K" H 3900 4000 45  0000 C CNN
F 2 "yageo:0603" H 3880 4050 20  0001 C CNN
F 3 "" H 3819 3939 60  0001 C CNN
F 4 "" H 4219 4339 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 4119 4239 60  0001 C CNN "1st Source"
F 6 "RC0603FR-071KL" H 4019 4139 60  0001 C CNN "Manufacturer Part Number"
F 7 "YAGEO" H 3919 4039 60  0001 C CNN "Manufacturer"
	1    3850 3900
	1    0    0    -1  
$EndComp
$Comp
L yageo:1K R802
U 1 1 5B1C64C1
P 3850 4100
AR Path="/5A02A41F/5B1C64C1" Ref="R802"  Part="1" 
AR Path="/5A015FC0/5B1C64C1" Ref="R402"  Part="1" 
F 0 "R402" H 3900 4284 45  0000 C CNN
F 1 "1K" H 3900 4200 45  0000 C CNN
F 2 "yageo:0603" H 3880 4250 20  0001 C CNN
F 3 "" H 3819 4139 60  0001 C CNN
F 4 "" H 4219 4539 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 4119 4439 60  0001 C CNN "1st Source"
F 6 "RC0603FR-071KL" H 4019 4339 60  0001 C CNN "Manufacturer Part Number"
F 7 "YAGEO" H 3919 4239 60  0001 C CNN "Manufacturer"
	1    3850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3700 3200 3700
Wire Wire Line
	4150 3700 3700 3700
Connection ~ 3700 3700
$Comp
L usevolt:ZENER_MM3Z3V6T1G D6
U 1 1 5BAB973C
P 3700 4550
AR Path="/5A02A41F/5BAB973C" Ref="D6"  Part="1" 
AR Path="/5A015FC0/5BAB973C" Ref="D1"  Part="1" 
F 0 "D1" V 3625 4472 45  0000 R CNN
F 1 "ZENER_MM3Z3V6T1G" H 3975 4925 45  0001 L BNN
F 2 "usevolt:SOD-323" H 3675 4925 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/308/MM3Z2V4T1-D-269162.pdf" H 4050 5125 60  0001 C CNN
F 4 "Mouser" H 4020 4870 60  0001 C CNN "1st Source"
F 5 "MM3Z3V6T1G" H 3920 4770 60  0001 C CNN "Manufacturer Part Number"
F 6 "863-MM3Z3V6T1G" H 4120 4970 60  0001 C CNN "1st Source Part Number"
F 7 "ON Semiconductor" H 3975 5025 60  0001 C CNN "Manufacturer"
	1    3700 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 4200 3950 4200
$Comp
L usevolt:ZENER_MM3Z3V6T1G D7
U 1 1 5BAB9E63
P 3950 4550
AR Path="/5A02A41F/5BAB9E63" Ref="D7"  Part="1" 
AR Path="/5A015FC0/5BAB9E63" Ref="D2"  Part="1" 
F 0 "D2" V 3875 4472 45  0000 R CNN
F 1 "ZENER_MM3Z3V6T1G" H 4225 4925 45  0001 L BNN
F 2 "usevolt:SOD-323" H 3925 4925 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/308/MM3Z2V4T1-D-269162.pdf" H 4300 5125 60  0001 C CNN
F 4 "Mouser" H 4270 4870 60  0001 C CNN "1st Source"
F 5 "MM3Z3V6T1G" H 4170 4770 60  0001 C CNN "Manufacturer Part Number"
F 6 "863-MM3Z3V6T1G" H 4370 4970 60  0001 C CNN "1st Source Part Number"
F 7 "ON Semiconductor" H 4225 5025 60  0001 C CNN "Manufacturer"
	1    3950 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 4500 3950 4200
Connection ~ 3950 4200
Wire Wire Line
	3950 4200 4150 4200
Wire Wire Line
	3700 4750 3700 4850
Wire Wire Line
	3700 4850 3600 4850
Connection ~ 3600 4850
Wire Wire Line
	3600 4850 3600 4900
Wire Wire Line
	3700 4850 3950 4850
Wire Wire Line
	3950 4850 3950 4750
Connection ~ 3700 4850
Wire Wire Line
	3700 3700 3700 4500
Wire Wire Line
	4050 4100 4150 4100
Connection ~ 4150 4100
Wire Wire Line
	4150 3900 4050 3900
Connection ~ 4150 3900
Wire Wire Line
	3600 3900 3600 4100
Wire Wire Line
	3600 4100 3600 4300
Connection ~ 3600 4100
Connection ~ 3600 4300
Wire Wire Line
	3750 4100 3600 4100
Wire Wire Line
	3600 3900 3750 3900
Connection ~ 3600 3900
$Comp
L usevolt:DIODE_RS07J-GS18 D10
U 1 1 5C5271C5
P 5650 4700
AR Path="/5A02A41F/5C5271C5" Ref="D10"  Part="1" 
AR Path="/5A015FC0/5C5271C5" Ref="D8"  Part="1" 
F 0 "D8" V 5600 4602 45  0000 R CNN
F 1 "DIODE_RS07J-GS18" H 5670 4640 45  0001 L BNN
F 2 "usevolt:DO219AB" H 5680 4850 20  0001 C CNN
F 3 "http://www.vishay.com/docs/85742/rs07b.pdf" H 5670 4720 60  0001 C CNN
F 4 "1864882" H 6270 5320 60  0001 C CNN "2nd Source Part Number"
F 5 "Digi-Key" H 5970 5020 60  0001 C CNN "1st Source"
F 6 "Farnell" H 6170 5220 60  0001 C CNN "2nd Source"
F 7 "RS07J-GS18" H 5870 4920 60  0001 C CNN "Manufacturer Part Number"
F 8 "RS07J-GS18-ND" H 6070 5120 60  0001 C CNN "1st Source Part Number"
F 9 "Vishay Semiconductor Diodes Division" H 5770 4820 60  0001 C CNN "Manufacturer"
	1    5650 4700
	0    -1   -1   0   
$EndComp
$Comp
L usevolt:DIODE_RS07J-GS18 D11
U 1 1 5C52725E
P 6450 4700
AR Path="/5A02A41F/5C52725E" Ref="D11"  Part="1" 
AR Path="/5A015FC0/5C52725E" Ref="D9"  Part="1" 
F 0 "D9" V 6400 4602 45  0000 R CNN
F 1 "DIODE_RS07J-GS18" H 6470 4640 45  0001 L BNN
F 2 "usevolt:DO219AB" H 6480 4850 20  0001 C CNN
F 3 "http://www.vishay.com/docs/85742/rs07b.pdf" H 6470 4720 60  0001 C CNN
F 4 "1864882" H 7070 5320 60  0001 C CNN "2nd Source Part Number"
F 5 "Digi-Key" H 6770 5020 60  0001 C CNN "1st Source"
F 6 "Farnell" H 6970 5220 60  0001 C CNN "2nd Source"
F 7 "RS07J-GS18" H 6670 4920 60  0001 C CNN "Manufacturer Part Number"
F 8 "RS07J-GS18-ND" H 6870 5120 60  0001 C CNN "1st Source Part Number"
F 9 "Vishay Semiconductor Diodes Division" H 6570 4820 60  0001 C CNN "Manufacturer"
	1    6450 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 4600 6450 4100
Connection ~ 6450 4100
Wire Wire Line
	6450 4100 6700 4100
Wire Wire Line
	5650 4600 5650 4400
Connection ~ 5650 4400
Wire Wire Line
	5650 4400 5800 4400
Wire Wire Line
	5650 4900 6050 4900
$Comp
L power:GND #PWR0111
U 1 1 5C52902F
P 6050 5100
AR Path="/5A02A41F/5C52902F" Ref="#PWR0111"  Part="1" 
AR Path="/5A015FC0/5C52902F" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 6050 4850 50  0001 C CNN
F 1 "GND" H 6055 4927 50  0000 C CNN
F 2 "" H 6050 5100 50  0000 C CNN
F 3 "" H 6050 5100 50  0000 C CNN
	1    6050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4900 6050 5100
Connection ~ 6050 4900
Wire Wire Line
	6050 4900 6450 4900
$EndSCHEMATC
