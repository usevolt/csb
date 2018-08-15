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
Text HLabel 5800 4100 2    60   Output ~ 0
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
P 3600 4450
AR Path="/5A015FC0/59D86DC2" Ref="#PWR0401"  Part="1" 
AR Path="/5A02A41F/59D86DC2" Ref="#PWR0801"  Part="1" 
F 0 "#PWR0401" H 3600 4200 50  0001 C CNN
F 1 "GND" H 3605 4277 50  0000 C CNN
F 2 "" H 3600 4450 50  0000 C CNN
F 3 "" H 3600 4450 50  0000 C CNN
	1    3600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3900 3600 4100
Wire Wire Line
	3600 4300 4300 4300
Wire Wire Line
	3700 3900 3600 3900
Connection ~ 3600 4300
Wire Wire Line
	3700 4100 3600 4100
Connection ~ 3600 4100
Wire Wire Line
	4000 4100 4150 4100
Wire Wire Line
	4000 3900 4150 3900
Wire Wire Line
	3200 4200 3750 4200
Wire Wire Line
	4150 4200 4150 4100
Connection ~ 4150 4100
Wire Wire Line
	4150 3900 4150 3700
Wire Wire Line
	4150 3700 3700 3700
Connection ~ 4150 3900
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
Connection ~ 3600 3900
Wire Wire Line
	5250 3800 5250 3900
Wire Wire Line
	5250 3900 5250 4000
Wire Wire Line
	5250 4100 5800 4100
Wire Wire Line
	5250 4400 5800 4400
Wire Wire Line
	3600 4300 3600 4450
Wire Wire Line
	3600 4100 3600 4300
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
P 3800 3900
AR Path="/5A02A41F/5B1C6487" Ref="R801"  Part="1" 
AR Path="/5A015FC0/5B1C6487" Ref="R401"  Part="1" 
F 0 "R401" H 3850 4084 45  0000 C CNN
F 1 "1K" H 3850 4000 45  0000 C CNN
F 2 "yageo:0603" H 3830 4050 20  0001 C CNN
F 3 "" H 3769 3939 60  0001 C CNN
F 4 "" H 4169 4339 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 4069 4239 60  0001 C CNN "1st Source"
F 6 "RC0603FR-071KL" H 3969 4139 60  0001 C CNN "Manufacturer Part Number"
F 7 "YAGEO" H 3869 4039 60  0001 C CNN "Manufacturer"
	1    3800 3900
	1    0    0    -1  
$EndComp
$Comp
L yageo:1K R802
U 1 1 5B1C64C1
P 3800 4100
AR Path="/5A02A41F/5B1C64C1" Ref="R802"  Part="1" 
AR Path="/5A015FC0/5B1C64C1" Ref="R402"  Part="1" 
F 0 "R402" H 3850 4284 45  0000 C CNN
F 1 "1K" H 3850 4200 45  0000 C CNN
F 2 "yageo:0603" H 3830 4250 20  0001 C CNN
F 3 "" H 3769 4139 60  0001 C CNN
F 4 "" H 4169 4539 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 4069 4439 60  0001 C CNN "1st Source"
F 6 "RC0603FR-071KL" H 3969 4339 60  0001 C CNN "Manufacturer Part Number"
F 7 "YAGEO" H 3869 4239 60  0001 C CNN "Manufacturer"
	1    3800 4100
	1    0    0    -1  
$EndComp
$Comp
L usevolt:DIODE_RS07J-GS18 D801
U 1 1 5B1C66B1
P 3900 3500
AR Path="/5A02A41F/5B1C66B1" Ref="D801"  Part="1" 
AR Path="/5A015FC0/5B1C66B1" Ref="D401"  Part="1" 
F 0 "D401" H 3850 3360 45  0000 C CNN
F 1 "DIODE_RS07J-GS18" H 3920 3440 45  0001 L BNN
F 2 "usevolt:DO219AB" H 3930 3650 20  0001 C CNN
F 3 "http://www.vishay.com/docs/85742/rs07b.pdf" H 3920 3520 60  0001 C CNN
F 4 "1864882" H 4520 4120 60  0001 C CNN "2nd Source Part Number"
F 5 "Digi-Key" H 4220 3820 60  0001 C CNN "1st Source"
F 6 "Farnell" H 4420 4020 60  0001 C CNN "2nd Source"
F 7 "RS07J-GS18" H 4120 3720 60  0001 C CNN "Manufacturer Part Number"
F 8 "RS07J-GS18-ND" H 4320 3920 60  0001 C CNN "1st Source Part Number"
F 9 "Vishay Semiconductor Diodes Division" H 4020 3620 60  0001 C CNN "Manufacturer"
	1    3900 3500
	1    0    0    -1  
$EndComp
$Comp
L usevolt:DIODE_RS07J-GS18 D802
U 1 1 5B1CE776
P 3950 4450
AR Path="/5A02A41F/5B1CE776" Ref="D802"  Part="1" 
AR Path="/5A015FC0/5B1CE776" Ref="D402"  Part="1" 
F 0 "D402" H 3900 4310 45  0000 C CNN
F 1 "DIODE_RS07J-GS18" H 3970 4390 45  0001 L BNN
F 2 "usevolt:DO219AB" H 3980 4600 20  0001 C CNN
F 3 "http://www.vishay.com/docs/85742/rs07b.pdf" H 3970 4470 60  0001 C CNN
F 4 "1864882" H 4570 5070 60  0001 C CNN "2nd Source Part Number"
F 5 "Digi-Key" H 4270 4770 60  0001 C CNN "1st Source"
F 6 "Farnell" H 4470 4970 60  0001 C CNN "2nd Source"
F 7 "RS07J-GS18" H 4170 4670 60  0001 C CNN "Manufacturer Part Number"
F 8 "RS07J-GS18-ND" H 4370 4870 60  0001 C CNN "1st Source Part Number"
F 9 "Vishay Semiconductor Diodes Division" H 4070 4570 60  0001 C CNN "Manufacturer"
	1    3950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4450 4100 4450
Wire Wire Line
	4100 4450 4100 3500
Wire Wire Line
	4100 3500 4000 3500
Wire Wire Line
	3750 4450 3750 4200
Connection ~ 3750 4200
Wire Wire Line
	3750 4200 4150 4200
Wire Wire Line
	3700 3500 3700 3700
Connection ~ 3700 3700
Wire Wire Line
	3700 3700 3200 3700
$Comp
L power:+3V3 #PWR0111
U 1 1 5B1D1455
P 4100 3500
AR Path="/5A02A41F/5B1D1455" Ref="#PWR0111"  Part="1" 
AR Path="/5A015FC0/5B1D1455" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 4100 3350 50  0001 C CNN
F 1 "+3V3" H 4115 3673 50  0000 C CNN
F 2 "" H 4100 3500 50  0000 C CNN
F 3 "" H 4100 3500 50  0000 C CNN
	1    4100 3500
	1    0    0    -1  
$EndComp
Connection ~ 4100 3500
$EndSCHEMATC
