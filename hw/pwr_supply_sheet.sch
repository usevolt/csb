EESchema Schematic File Version 2
LIBS:csb-rescue
LIBS:kemet
LIBS:power
LIBS:usevolt
LIBS:wurth_elektronik_LED
LIBS:yageo
LIBS:csb-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
Title "Power supply"
Date "2016-08-20"
Rev "1"
Comp "Usevolt Oy"
Comment1 "Olli Usenius"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1350 3850 0    60   Input ~ 0
VIN
$Comp
L FUSE_MC36211_350MA F201
U 1 1 57B8204F
P 2500 3850
F 0 "F201" H 2500 4054 45  0000 C CNN
F 1 "FUSE_MC36211_350MA" H 2500 3970 45  0000 C CNN
F 2 "usevolt:FUSE_MC36211" H 2530 4000 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1678471.pdf?_ga=1.218604761.1948984246.1460023966" H 2620 3870 60  0001 C CNN
F 4 "Farnell" H 2920 4170 60  0001 C CNN "1st Source"
F 5 "MC36211" H 2820 4070 60  0001 C CNN "Manufacturer Part Number"
F 6 "MC36211" H 3020 4270 60  0001 C CNN "1st Source Part Number"
F 7 "Multicomp" H 2720 3970 60  0001 C CNN "Manufacturer"
	1    2500 3850
	1    0    0    -1  
$EndComp
$Comp
L DIODE_TVS_SMBJ33A-TRDO-214AA D202
U 1 1 57B820C1
P 2800 4050
F 0 "D202" V 2892 3982 45  0000 R CNN
F 1 "DIODE_TVS_SMBJ33A-TRDO-214AA" V 2750 4750 45  0000 R CNN
F 2 "usevolt:DO-214AA" H 2830 4200 20  0001 C CNN
F 3 "http://www.littelfuse.com/~/media/electronics/datasheets/tvs_diodes/littelfuse_tvs_diode_smbj_datasheet.pdf.pdf" H 2910 4060 60  0001 C CNN
F 4 "Digi-Key" H 3210 4360 60  0001 C CNN "1st Source"
F 5 "Littlefuse" H 3010 4160 60  0001 C CNN "Manufacturer"
F 6 "SMBJ33A" H 3110 4260 60  0001 C CNN "Manufacturer Part Number"
F 7 "SMBJ33ALFCT-ND" H 3310 4460 60  0001 C CNN "1st Source Part Number"
	1    2800 4050
	0    -1   -1   0   
$EndComp
$Comp
L 100nF C201
U 1 1 57B8217A
P 3400 3950
F 0 "C201" V 3408 4023 45  0000 L CNN
F 1 "100nF" V 3492 4023 45  0000 L CNN
F 2 "kemet:0603" H 3430 4100 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2062872.pdf?_ga=1.250530118.1948984246.1460023966" H 3304 3959 60  0001 C CNN
F 4 "1288255" H 3704 4359 60  0001 C CNN "1st Source Part Number"
F 5 "C0603C104K5RACTU" H 3504 4159 60  0001 C CNN "Manufacturer Part Number"
F 6 "Farnell" H 3604 4259 60  0001 C CNN "1st Source"
F 7 "KEMET" H 3404 4059 60  0001 C CNN "Manufacturer"
	1    3400 3950
	0    1    1    0   
$EndComp
$Comp
L LM2671SOIC8 VR201
U 1 1 57B82261
P 4850 4150
F 0 "VR201" H 5050 4804 45  0000 C CNN
F 1 "LM2671SOIC8" H 5050 4720 45  0000 C CNN
F 2 "usevolt:SOIC8" H 4880 4300 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1902681.pdf?_ga=1.246738500.1948984246.1460023966" H 4650 4670 60  0001 C CNN
F 4 "1469200" H 5050 5070 60  0001 C CNN "1st Source Part Number"
F 5 "926-LM2671M-5.0/NOPB" H 5250 5270 60  0001 C CNN "2nd Source Part Number"
F 6 "Farnell" H 4950 4970 60  0001 C CNN "1st Source"
F 7 "LM2671M-5.0/NOPB" H 4850 4870 60  0001 C CNN "Manufacturer Part Number"
F 8 "Mouser" H 5150 5170 60  0001 C CNN "2nd Source"
F 9 "TEXAS INSTRUMENTS" H 4750 4770 60  0001 C CNN "Manufacturer"
	1    4850 4150
	1    0    0    -1  
$EndComp
$Comp
L 10nF C203
U 1 1 57B822C5
P 5800 3950
F 0 "C203" H 5850 4149 45  0000 C CNN
F 1 "10nF" H 5850 4065 45  0000 C CNN
F 2 "kemet:0603" H 5830 4100 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2064086.pdf?_ga=1.250530118.1948984246.1460023966" H 5704 3959 60  0001 C CNN
F 4 "1457729" H 6104 4359 60  0001 C CNN "1st Source Part Number"
F 5 "C0603C103J3GACTU" H 5904 4159 60  0001 C CNN "Manufacturer Part Number"
F 6 "Farnell" H 6004 4259 60  0001 C CNN "1st Source"
F 7 "KEMET" H 5804 4059 60  0001 C CNN "Manufacturer"
	1    5800 3950
	1    0    0    -1  
$EndComp
$Comp
L DIODE_RS07J-GS18 D203
U 1 1 57B82329
P 6200 3950
F 0 "D203" V 6150 3852 45  0000 R CNN
F 1 "DIODE_RS07J-GS18" H 6220 3890 45  0001 L BNN
F 2 "usevolt:DO219AB" H 6230 4100 20  0001 C CNN
F 3 "http://www.vishay.com/docs/85742/rs07b.pdf" H 6220 3970 60  0001 C CNN
F 4 "1864882" H 6820 4570 60  0001 C CNN "2nd Source Part Number"
F 5 "Digi-Key" H 6520 4270 60  0001 C CNN "1st Source"
F 6 "Farnell" H 6720 4470 60  0001 C CNN "2nd Source"
F 7 "RS07J-GS18" H 6420 4170 60  0001 C CNN "Manufacturer Part Number"
F 8 "RS07J-GS18-ND" H 6620 4370 60  0001 C CNN "1st Source Part Number"
F 9 "Vishay Semiconductor Diodes Division" H 6320 4070 60  0001 C CNN "Manufacturer"
	1    6200 3950
	0    -1   -1   0   
$EndComp
$Comp
L REG_MCP1700 VR202
U 1 1 57B82857
P 8000 3950
F 0 "VR202" H 8000 4305 45  0000 C CNN
F 1 "REG_MCP1700" H 8000 3950 45  0001 L BNN
F 2 "usevolt:SOT-23_3-PIN" H 8030 4100 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1784514.pdf?_ga=1.221693144.1948984246.1460023966" H 7700 4270 60  0001 C CNN
F 4 "1296592" H 8100 4670 60  0001 C CNN "1st Source Part Number"
F 5 "Digi-Key" H 8200 4770 60  0001 C CNN "2nd Source"
F 6 "Farnell" H 8000 4570 60  0001 C CNN "1st Source"
F 7 "MCP1700T-3302E/TT" H 7900 4470 60  0001 C CNN "Manufacturer Part Number"
F 8 "MCP1700T3302ETTCT-ND" H 8300 4870 60  0001 C CNN "2nd Source Part Number"
F 9 "MICROCHIP" H 7800 4370 60  0001 C CNN "Manufacturer"
	1    8000 3950
	1    0    0    -1  
$EndComp
$Comp
L 100nF C205
U 1 1 57B82A3F
P 8600 3950
F 0 "C205" V 8608 4023 45  0000 L CNN
F 1 "100nF" V 8692 4023 45  0000 L CNN
F 2 "kemet:0603" H 8630 4100 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2062872.pdf?_ga=1.250530118.1948984246.1460023966" H 8504 3959 60  0001 C CNN
F 4 "1288255" H 8904 4359 60  0001 C CNN "1st Source Part Number"
F 5 "C0603C104K5RACTU" H 8704 4159 60  0001 C CNN "Manufacturer Part Number"
F 6 "Farnell" H 8804 4259 60  0001 C CNN "1st Source"
F 7 "KEMET" H 8604 4059 60  0001 C CNN "Manufacturer"
	1    8600 3950
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR205
U 1 1 57B831F8
P 6850 3600
F 0 "#PWR205" H 6850 3450 50  0001 C CNN
F 1 "+5V" H 6865 3773 50  0000 C CNN
F 2 "" H 6850 3600 50  0000 C CNN
F 3 "" H 6850 3600 50  0000 C CNN
	1    6850 3600
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR206
U 1 1 57B83259
P 8600 3600
F 0 "#PWR206" H 8600 3450 50  0001 C CNN
F 1 "+3V3" H 8615 3773 50  0000 C CNN
F 2 "" H 8600 3600 50  0000 C CNN
F 3 "" H 8600 3600 50  0000 C CNN
	1    8600 3600
	1    0    0    -1  
$EndComp
Text HLabel 7050 3600 2    60   Output ~ 0
+5V
Text HLabel 8750 3600 2    60   Output ~ 0
+3V3
Text HLabel 3350 2850 2    60   Output ~ 0
VDD
Text HLabel 2700 4300 0    60   Input ~ 0
GND
NoConn ~ 4550 3850
NoConn ~ 4550 3950
NoConn ~ 4550 4050
$Comp
L VDD #PWR203
U 1 1 57B9C56A
P 3800 2100
F 0 "#PWR203" H 3800 1950 50  0001 C CNN
F 1 "VDD" H 3817 2273 50  0000 C CNN
F 2 "" H 3800 2100 50  0000 C CNN
F 3 "" H 3800 2100 50  0000 C CNN
	1    3800 2100
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG201
U 1 1 57B9C59C
P 3800 2300
F 0 "#FLG201" H 3800 2395 50  0001 C CNN
F 1 "PWR_FLAG" H 3800 2523 50  0000 C CNN
F 2 "" H 3800 2300 50  0000 C CNN
F 3 "" H 3800 2300 50  0000 C CNN
	1    3800 2300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR204
U 1 1 57B9D351
P 4300 2350
F 0 "#PWR204" H 4300 2100 50  0001 C CNN
F 1 "GND" H 4305 2177 50  0000 C CNN
F 2 "" H 4300 2350 50  0000 C CNN
F 3 "" H 4300 2350 50  0000 C CNN
	1    4300 2350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG202
U 1 1 57B9D3A1
P 4300 2150
F 0 "#FLG202" H 4300 2245 50  0001 C CNN
F 1 "PWR_FLAG" H 4300 2374 50  0000 C CNN
F 2 "" H 4300 2150 50  0000 C CNN
F 3 "" H 4300 2150 50  0000 C CNN
	1    4300 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR201
U 1 1 57CF1F5E
P 2800 4500
F 0 "#PWR201" H 2800 4250 50  0001 C CNN
F 1 "GND" H 2805 4327 50  0000 C CNN
F 2 "" H 2800 4500 50  0000 C CNN
F 3 "" H 2800 4500 50  0000 C CNN
	1    2800 4500
	1    0    0    -1  
$EndComp
$Comp
L IND_744045210 L201
U 1 1 58945E39
P 6500 3850
F 0 "L201" H 6500 4041 45  0000 C CNN
F 1 "IND_744045210" H 6500 3957 45  0000 C CNN
F 2 "usevolt:IND_744045210" H 6530 4000 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1735442.pdf?_ga=1.223184091.1948984246.1460023966" H 6400 3790 60  0001 C CNN
F 4 "1800416" H 6800 4190 60  0001 C CNN "1st Source Part Number"
F 5 "WURTH ELEKTRONIK" H 6500 3890 60  0001 C CNN "Manufacturer"
F 6 "Digi-Key" H 6900 4290 60  0001 C CNN "2nd Source"
F 7 "Farnell" H 6700 4090 60  0001 C CNN "1st Source"
F 8 "744045210" H 6600 3990 60  0001 C CNN "Manufacturer Part Number"
F 9 "732-3072-1-ND" H 7000 4390 60  0001 C CNN "2nd Source Part Number"
	1    6500 3850
	1    0    0    -1  
$EndComp
$Comp
L T491D226K035AT C204
U 1 1 58945F23
P 6850 4050
F 0 "C204" V 6758 4153 45  0000 L CNN
F 1 "T491D226K035AT" V 6842 4153 45  0000 L CNN
F 2 "kemet:7343" H 6880 4200 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2121523.pdf?_ga=1.259966538.1948984246.1460023966" H 6850 3990 60  0001 C CNN
F 4 "Kemet" H 6950 4090 60  0001 C CNN "Manufacturer"
F 5 "T491D226K035AT" H 7050 4190 60  0001 C CNN "Manufacturer Part Number"
F 6 "Farnell" H 7150 4290 60  0001 C CNN "1st Source"
F 7 "1457504" H 7250 4390 60  0001 C CNN "1st Source Part Number"
F 8 "Digikey" H 7350 4490 60  0001 C CNN "2nd Source"
F 9 "399-8375-1-ND" H 7450 4590 60  0001 C CNN "2nd Source Part Number"
	1    6850 4050
	0    1    1    0   
$EndComp
$Comp
L DIODE_RS07J-GS18 D201
U 1 1 5896E2A2
P 1900 3850
F 0 "D201" H 1850 3990 45  0000 C CNN
F 1 "DIODE_RS07J-GS18" H 1920 3790 45  0001 L BNN
F 2 "usevolt:DO219AB" H 1930 4000 20  0001 C CNN
F 3 "http://www.vishay.com/docs/85742/rs07b.pdf" H 1920 3870 60  0001 C CNN
F 4 "1864882" H 2520 4470 60  0001 C CNN "2nd Source Part Number"
F 5 "Digi-Key" H 2220 4170 60  0001 C CNN "1st Source"
F 6 "Farnell" H 2420 4370 60  0001 C CNN "2nd Source"
F 7 "RS07J-GS18" H 2120 4070 60  0001 C CNN "Manufacturer Part Number"
F 8 "RS07J-GS18-ND" H 2320 4270 60  0001 C CNN "1st Source Part Number"
F 9 "Vishay Semiconductor Diodes Division" H 2020 3970 60  0001 C CNN "Manufacturer"
	1    1900 3850
	1    0    0    -1  
$EndComp
$Comp
L SCHOTTKY_DIODE_V40PW10C D204
U 1 1 5A0333DC
P 2050 2900
F 0 "D204" H 2050 3247 60  0000 C CNN
F 1 "SCHOTTKY_DIODE_V40PW10C" H 2050 3141 60  0000 C CNN
F 2 "usevolt:SlimDPAK" H 1850 2550 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2245239.pdf?_ga=2.16591231.874534928.1505194133-1862443086.1504075057" H 1850 2550 60  0001 C CNN
F 4 "2535169" H 2400 3500 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 2500 3600 60  0001 C CNN "2nd Source"
F 6 "Farnell" H 2300 3400 60  0001 C CNN "1st Source"
F 7 "V40PW10CHM3/I" H 2200 3300 60  0001 C CNN "Manufacturer Part Number"
F 8 "V40PW10CHM3/IGICT-ND" H 2600 3700 60  0001 C CNN "2nd Source Part Number"
F 9 "VISHAY" H 2100 3200 60  0001 C CNN "Manufacturer"
	1    2050 2900
	1    0    0    -1  
$EndComp
$Comp
L SCHOTTKY_DIODE_V40PW10C D205
U 1 1 5A033465
P 2050 3350
F 0 "D205" H 2050 3697 60  0000 C CNN
F 1 "SCHOTTKY_DIODE_V40PW10C" H 2050 3591 60  0000 C CNN
F 2 "usevolt:SlimDPAK" H 1850 3000 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2245239.pdf?_ga=2.16591231.874534928.1505194133-1862443086.1504075057" H 1850 3000 60  0001 C CNN
F 4 "2535169" H 2400 3950 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 2500 4050 60  0001 C CNN "2nd Source"
F 6 "Farnell" H 2300 3850 60  0001 C CNN "1st Source"
F 7 "V40PW10CHM3/I" H 2200 3750 60  0001 C CNN "Manufacturer Part Number"
F 8 "V40PW10CHM3/IGICT-ND" H 2600 4150 60  0001 C CNN "2nd Source Part Number"
F 9 "VISHAY" H 2100 3650 60  0001 C CNN "Manufacturer"
	1    2050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4300 8000 4250
Wire Wire Line
	6850 4300 6850 4150
Connection ~ 8000 4300
Wire Wire Line
	6200 4300 6200 4150
Connection ~ 6850 4300
Wire Wire Line
	5550 4300 5550 4050
Connection ~ 6200 4300
Wire Wire Line
	3800 4300 3800 4150
Connection ~ 5550 4300
Wire Wire Line
	3400 4300 3400 4150
Connection ~ 3800 4300
Wire Wire Line
	2800 4150 2800 4500
Connection ~ 3400 4300
Connection ~ 2800 3850
Connection ~ 3400 3850
Wire Wire Line
	8600 4300 8600 4150
Wire Wire Line
	8600 3600 8600 3850
Wire Wire Line
	8600 3850 8400 3850
Wire Wire Line
	6700 3850 7600 3850
Connection ~ 6850 3850
Wire Wire Line
	5550 3850 6300 3850
Connection ~ 6200 3850
Wire Wire Line
	6000 3950 6000 3850
Connection ~ 6000 3850
Wire Wire Line
	5700 3950 5550 3950
Wire Wire Line
	5550 3750 6850 3750
Wire Wire Line
	6850 3600 6850 3850
Connection ~ 6850 3750
Wire Wire Line
	1350 3850 1700 3850
Wire Wire Line
	3800 3700 4550 3700
Wire Wire Line
	4550 3700 4550 3750
Wire Wire Line
	7050 3600 6850 3600
Wire Wire Line
	8750 3600 8600 3600
Connection ~ 2800 4300
Wire Wire Line
	3800 2300 3800 2100
Wire Wire Line
	4300 2150 4300 2350
Wire Wire Line
	3800 3850 3800 3700
Connection ~ 1500 3850
Wire Wire Line
	2700 3850 3800 3850
Wire Wire Line
	2000 3850 2300 3850
Wire Wire Line
	2700 4300 8600 4300
Wire Wire Line
	2450 2850 3350 2850
Wire Wire Line
	2800 2850 2800 3300
Wire Wire Line
	2800 3300 2450 3300
Connection ~ 2800 2850
Wire Wire Line
	1500 2800 1500 3850
Wire Wire Line
	1500 2800 1650 2800
Wire Wire Line
	1650 2900 1500 2900
Connection ~ 1500 2900
Wire Wire Line
	1650 3250 1500 3250
Connection ~ 1500 3250
Wire Wire Line
	1500 3350 1650 3350
Connection ~ 1500 3350
$Comp
L DIODE_TVS_TPSMD28A D206
U 1 1 5A0E0FEE
P 3000 3150
F 0 "D206" V 3092 3082 45  0000 R CNN
F 1 "DIODE_TVS_TPSMD28A" V 3008 3082 45  0000 R CNN
F 2 "usevolt:DO-214AB" H 3030 3300 20  0001 C CNN
F 3 "http://www.littelfuse.com/~/media/electronics/datasheets/tvs_diodes/littelfuse_tvs_diode_tpsmd_datasheet.pdf.pdf" H 3110 3160 60  0001 C CNN
F 4 "Digi-Key" H 3410 3460 60  0001 C CNN "1st Source"
F 5 "Littlefuse" H 3210 3260 60  0001 C CNN "Manufacturer"
F 6 "TPSMD28A" H 3310 3360 60  0001 C CNN "Manufacturer Part Number"
F 7 "F6570CT-ND" H 3510 3560 60  0001 C CNN "1st Source Part Number"
	1    3000 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 2950 3000 2850
Connection ~ 3000 2850
$Comp
L GND #PWR202
U 1 1 5A0E10EA
P 3000 3350
F 0 "#PWR202" H 3000 3100 50  0001 C CNN
F 1 "GND" H 3005 3177 50  0000 C CNN
F 2 "" H 3000 3350 50  0000 C CNN
F 3 "" H 3000 3350 50  0000 C CNN
	1    3000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3350 3000 3250
$Comp
L CAP_EEE-FK1H470P C202
U 1 1 5A0E1265
P 3800 4050
F 0 "C202" V 3708 4153 45  0000 L CNN
F 1 "CAP_EEE-FK1H470P" V 3792 4153 45  0000 L CNN
F 2 "usevolt:CAP_EEE-FK1H470P" H 3830 4200 20  0001 C CNN
F 3 "http://industrial.panasonic.com/www-cgi/jvcr13pz.cgi?E+PZ+3+ABA0120+EEEFK1H470P+7+WW" H 3800 3990 60  0001 C CNN
F 4 "667-EEE-FK1H470P" H 4400 4590 60  0001 C CNN "2nd Source Part Number"
F 5 "Digi-Key" H 4100 4290 60  0001 C CNN "1st Source"
F 6 "EEE-FK1H470P" H 4000 4190 60  0001 C CNN "Manufacturer Part Number"
F 7 "Mouser" H 4300 4490 60  0001 C CNN "2nd Source"
F 8 "Panasonic Electronic Components" H 3900 4090 60  0001 C CNN "Manufacturer"
F 9 "PCE3815CT-ND" H 4200 4390 60  0001 C CNN "1st Source Part Number"
	1    3800 4050
	0    1    1    0   
$EndComp
Connection ~ 3800 3850
$EndSCHEMATC
