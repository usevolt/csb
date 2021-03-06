EESchema Schematic File Version 4
LIBS:csb-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6200 3200 2    60   Output ~ 0
OUT1
Text HLabel 3450 3200 0    60   Input ~ 0
IN1
Text HLabel 4350 3450 0    60   Output ~ 0
SENSE1
Wire Wire Line
	4350 3300 4600 3300
Wire Wire Line
	3850 3300 4050 3300
Wire Wire Line
	3450 3200 3600 3200
Wire Wire Line
	4350 3450 4600 3450
$Comp
L power:VDD #PWR0602
U 1 1 59D7E637
P 4600 3000
AR Path="/5A019746/59D7E637" Ref="#PWR0602"  Part="1" 
AR Path="/5A01611C/59D7E637" Ref="#PWR0502"  Part="1" 
AR Path="/5A01A445/59D7E637" Ref="#PWR702"  Part="1" 
AR Path="/5A01AB59/59D7E637" Ref="#PWR802"  Part="1" 
AR Path="/5A120DD2/59D7E637" Ref="#PWR602"  Part="1" 
AR Path="/5A12FF64/59D7E637" Ref="#PWR802"  Part="1" 
AR Path="/5A130D3E/59D7E637" Ref="#PWR902"  Part="1" 
AR Path="/5A1349CF/59D7E637" Ref="#PWR1002"  Part="1" 
AR Path="/5A1358B0/59D7E637" Ref="#PWR1102"  Part="1" 
AR Path="/5A13680F/59D7E637" Ref="#PWR1202"  Part="1" 
AR Path="/5A14370A/59D7E637" Ref="#PWR1302"  Part="1" 
AR Path="/5A33548E/59D7E637" Ref="#PWR602"  Part="1" 
AR Path="/5A33648A/59D7E637" Ref="#PWR031"  Part="1" 
F 0 "#PWR0602" H 4600 2850 50  0001 C CNN
F 1 "VDD" H 4617 3173 50  0000 C CNN
F 2 "" H 4600 3000 50  0000 C CNN
F 3 "" H 4600 3000 50  0000 C CNN
	1    4600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3100 4900 3100
Wire Wire Line
	5600 3300 5700 3300
Wire Wire Line
	5700 3300 5700 3200
Wire Wire Line
	5600 3200 5700 3200
Connection ~ 5700 3200
Wire Wire Line
	4600 3000 4600 3100
Wire Wire Line
	4600 3450 4600 3300
Connection ~ 4600 3300
$Comp
L power:GND #PWR0601
U 1 1 5A014ACD
P 3850 3600
AR Path="/5A019746/5A014ACD" Ref="#PWR0601"  Part="1" 
AR Path="/5A01611C/5A014ACD" Ref="#PWR0501"  Part="1" 
AR Path="/5A01A445/5A014ACD" Ref="#PWR701"  Part="1" 
AR Path="/5A01AB59/5A014ACD" Ref="#PWR801"  Part="1" 
AR Path="/5A120DD2/5A014ACD" Ref="#PWR601"  Part="1" 
AR Path="/5A12FF64/5A014ACD" Ref="#PWR801"  Part="1" 
AR Path="/5A130D3E/5A014ACD" Ref="#PWR901"  Part="1" 
AR Path="/5A1349CF/5A014ACD" Ref="#PWR1001"  Part="1" 
AR Path="/5A1358B0/5A014ACD" Ref="#PWR1101"  Part="1" 
AR Path="/5A13680F/5A014ACD" Ref="#PWR1201"  Part="1" 
AR Path="/5A14370A/5A014ACD" Ref="#PWR1301"  Part="1" 
AR Path="/5A33548E/5A014ACD" Ref="#PWR601"  Part="1" 
AR Path="/5A33648A/5A014ACD" Ref="#PWR032"  Part="1" 
F 0 "#PWR0601" H 3850 3350 50  0001 C CNN
F 1 "GND" H 3855 3427 50  0000 C CNN
F 2 "" H 3850 3600 50  0000 C CNN
F 3 "" H 3850 3600 50  0000 C CNN
	1    3850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3300 3850 3550
$Comp
L yageo:1K R501
U 1 1 5A058D94
P 3600 3350
AR Path="/5A01611C/5A058D94" Ref="R501"  Part="1" 
AR Path="/5A019746/5A058D94" Ref="R601"  Part="1" 
AR Path="/5A01A445/5A058D94" Ref="R701"  Part="1" 
AR Path="/5A01AB59/5A058D94" Ref="R802"  Part="1" 
AR Path="/5A120DD2/5A058D94" Ref="R901"  Part="1" 
AR Path="/5A12FF64/5A058D94" Ref="R801"  Part="1" 
AR Path="/5A130D3E/5A058D94" Ref="R1201"  Part="1" 
AR Path="/5A1349CF/5A058D94" Ref="R1301"  Part="1" 
AR Path="/5A1358B0/5A058D94" Ref="R1402"  Part="1" 
AR Path="/5A13680F/5A058D94" Ref="R1502"  Part="1" 
AR Path="/5A14370A/5A058D94" Ref="R1602"  Part="1" 
AR Path="/5A33548E/5A058D94" Ref="R601"  Part="1" 
AR Path="/5A33648A/5A058D94" Ref="R701"  Part="1" 
F 0 "R601" V 3608 3408 45  0000 L CNN
F 1 "1K" V 3692 3408 45  0000 L CNN
F 2 "yageo:0603" H 3630 3500 20  0001 C CNN
F 3 "" H 3569 3389 60  0001 C CNN
F 4 "" H 3969 3789 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 3869 3689 60  0001 C CNN "1st Source"
F 6 "RC0603FR-071KL" H 3769 3589 60  0001 C CNN "Manufacturer Part Number"
F 7 "YAGEO" H 3669 3489 60  0001 C CNN "Manufacturer"
	1    3600 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 3250 3600 3200
Connection ~ 3600 3200
Wire Wire Line
	3600 3550 3850 3550
Connection ~ 3850 3550
$Comp
L usevolt:VN5E010AH U1001
U 1 1 5A32CF4A
P 5300 3300
AR Path="/5A1349CF/5A32CF4A" Ref="U1001"  Part="1" 
AR Path="/5A14370A/5A32CF4A" Ref="U1301"  Part="1" 
AR Path="/5A120DD2/5A32CF4A" Ref="U601"  Part="1" 
AR Path="/5A12FF64/5A32CF4A" Ref="U801"  Part="1" 
AR Path="/5A130D3E/5A32CF4A" Ref="U901"  Part="1" 
AR Path="/5A1358B0/5A32CF4A" Ref="U1101"  Part="1" 
AR Path="/5A13680F/5A32CF4A" Ref="U1201"  Part="1" 
AR Path="/5A33548E/5A32CF4A" Ref="U601"  Part="1" 
AR Path="/5A33648A/5A32CF4A" Ref="U701"  Part="1" 
AR Path="/5A01611C/5A32CF4A" Ref="U501"  Part="1" 
AR Path="/5A019746/5A32CF4A" Ref="U601"  Part="1" 
AR Path="/5A01A445/5A32CF4A" Ref="U701"  Part="1" 
F 0 "U601" H 5250 3747 60  0000 C CNN
F 1 "VN5E010AH" H 5250 3641 60  0000 C CNN
F 2 "usevolt:HPAK" H 4950 4250 60  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/1e/52/ef/e0/cc/90/4e/2e/CD00240716.pdf/files/CD00240716.pdf/jcr:content/translations/en.CD00240716.pdf" H 5050 4350 60  0001 C CNN
F 4 "497-10505-2-ND" H 5450 4750 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 5350 4650 60  0001 C CNN "1st Source"
F 6 "STMicroelectronics" H 5150 4450 60  0001 C CNN "Manufacturer"
F 7 "VN5E010AHTR-E" H 5250 4550 60  0001 C CNN "Manufacturer Part Number"
	1    5300 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR1003
U 1 1 5A32CF90
P 4800 3900
AR Path="/5A1349CF/5A32CF90" Ref="#PWR1003"  Part="1" 
AR Path="/5A14370A/5A32CF90" Ref="#PWR1303"  Part="1" 
AR Path="/5A120DD2/5A32CF90" Ref="#PWR603"  Part="1" 
AR Path="/5A12FF64/5A32CF90" Ref="#PWR803"  Part="1" 
AR Path="/5A130D3E/5A32CF90" Ref="#PWR903"  Part="1" 
AR Path="/5A1358B0/5A32CF90" Ref="#PWR1103"  Part="1" 
AR Path="/5A13680F/5A32CF90" Ref="#PWR1203"  Part="1" 
AR Path="/5A33548E/5A32CF90" Ref="#PWR603"  Part="1" 
AR Path="/5A33648A/5A32CF90" Ref="#PWR033"  Part="1" 
AR Path="/5A01611C/5A32CF90" Ref="#PWR0503"  Part="1" 
AR Path="/5A019746/5A32CF90" Ref="#PWR0603"  Part="1" 
AR Path="/5A01A445/5A32CF90" Ref="#PWR703"  Part="1" 
F 0 "#PWR0603" H 4800 3650 50  0001 C CNN
F 1 "GND" H 4805 3727 50  0000 C CNN
F 2 "" H 4800 3900 50  0000 C CNN
F 3 "" H 4800 3900 50  0000 C CNN
	1    4800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3400 4800 3500
Wire Wire Line
	4800 3500 4900 3500
Wire Wire Line
	4900 3400 4800 3400
Connection ~ 4800 3500
Wire Wire Line
	5700 3200 5900 3200
Wire Wire Line
	4600 3300 4900 3300
Wire Wire Line
	3600 3200 4900 3200
Wire Wire Line
	3850 3550 3850 3600
Wire Wire Line
	4800 3500 4800 3800
$Comp
L yageo:1K R502
U 1 1 5B1D30FA
P 4150 3300
AR Path="/5A01611C/5B1D30FA" Ref="R502"  Part="1" 
AR Path="/5A019746/5B1D30FA" Ref="R602"  Part="1" 
AR Path="/5A01A445/5B1D30FA" Ref="R?"  Part="1" 
AR Path="/5A01AB59/5B1D30FA" Ref="R?"  Part="1" 
AR Path="/5A120DD2/5B1D30FA" Ref="R?"  Part="1" 
AR Path="/5A12FF64/5B1D30FA" Ref="R?"  Part="1" 
AR Path="/5A130D3E/5B1D30FA" Ref="R?"  Part="1" 
AR Path="/5A1349CF/5B1D30FA" Ref="R?"  Part="1" 
AR Path="/5A1358B0/5B1D30FA" Ref="R?"  Part="1" 
AR Path="/5A13680F/5B1D30FA" Ref="R?"  Part="1" 
AR Path="/5A14370A/5B1D30FA" Ref="R?"  Part="1" 
AR Path="/5A33548E/5B1D30FA" Ref="R?"  Part="1" 
AR Path="/5A33648A/5B1D30FA" Ref="R?"  Part="1" 
F 0 "R602" V 4158 3358 45  0000 L CNN
F 1 "1K" V 4242 3358 45  0000 L CNN
F 2 "yageo:0603" H 4180 3450 20  0001 C CNN
F 3 "" H 4119 3339 60  0001 C CNN
F 4 "" H 4519 3739 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 4419 3639 60  0001 C CNN "1st Source"
F 6 "RC0603FR-071KL" H 4319 3539 60  0001 C CNN "Manufacturer Part Number"
F 7 "YAGEO" H 4219 3439 60  0001 C CNN "Manufacturer"
	1    4150 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3550 4600 3450
Connection ~ 4600 3450
$Comp
L usevolt:ZENER_MM3Z3V6T1G D4
U 1 1 5BABCC09
P 4600 3600
AR Path="/5A019746/5BABCC09" Ref="D4"  Part="1" 
AR Path="/5A01611C/5BABCC09" Ref="D3"  Part="1" 
F 0 "D4" V 4525 3522 45  0000 R CNN
F 1 "ZENER_MM3Z3V6T1G" H 4875 3975 45  0001 L BNN
F 2 "usevolt:SOD-323" H 4575 3975 20  0001 C CNN
F 3 "http://www.mouser.com/ds/2/308/MM3Z2V4T1-D-269162.pdf" H 4950 4175 60  0001 C CNN
F 4 "Mouser" H 4920 3920 60  0001 C CNN "1st Source"
F 5 "MM3Z3V6T1G" H 4820 3820 60  0001 C CNN "Manufacturer Part Number"
F 6 "863-MM3Z3V6T1G" H 5020 4020 60  0001 C CNN "1st Source Part Number"
F 7 "ON Semiconductor" H 4875 4075 60  0001 C CNN "Manufacturer"
	1    4600 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 3800 4800 3800
Connection ~ 4800 3800
Wire Wire Line
	4800 3800 4800 3900
$Comp
L yageo:10K R2
U 1 1 5BABD3C0
P 5900 3400
AR Path="/5A019746/5BABD3C0" Ref="R2"  Part="1" 
AR Path="/5A01611C/5BABD3C0" Ref="R1"  Part="1" 
F 0 "R2" V 5908 3458 45  0000 L CNN
F 1 "10K" V 5992 3458 45  0000 L CNN
F 2 "yageo:0603" H 5930 3550 20  0001 C CNN
F 3 "" H 5869 3439 60  0001 C CNN
F 4 "" H 6269 3839 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 6169 3739 60  0001 C CNN "1st Source"
F 6 "RC0603FR-0710KL" H 6069 3639 60  0001 C CNN "Manufacturer Part Number"
F 7 "YAGEO" H 5969 3539 60  0001 C CNN "Manufacturer"
	1    5900 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 3300 5900 3200
Connection ~ 5900 3200
Wire Wire Line
	5900 3200 6200 3200
$Comp
L power:GND #PWR0108
U 1 1 5BABD6AD
P 5900 3700
AR Path="/5A019746/5BABD6AD" Ref="#PWR0108"  Part="1" 
AR Path="/5A01611C/5BABD6AD" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0108" H 5900 3450 50  0001 C CNN
F 1 "GND" H 5905 3527 50  0000 C CNN
F 2 "" H 5900 3700 50  0000 C CNN
F 3 "" H 5900 3700 50  0000 C CNN
	1    5900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3700 5900 3600
$EndSCHEMATC
