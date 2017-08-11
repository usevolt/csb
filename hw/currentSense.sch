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
Sheet 11 13
Title "MSB current sense sheet"
Date "2017-02-05"
Rev "1"
Comp "Usevolt Oy"
Comment1 "Olli Usenius"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ZXCT1086 U501
U 1 1 594D8B7D
P 5450 3600
AR Path="/59542AAB/595CED4D/594D8B7D" Ref="U501"  Part="1" 
AR Path="/59542AAB/58BE8E7A/594D8B7D" Ref="U601"  Part="1" 
AR Path="/59542AAB/58BE8E88/594D8B7D" Ref="U701"  Part="1" 
AR Path="/59542AAB/58BE8E96/594D8B7D" Ref="U801"  Part="1" 
AR Path="/5954FB0E/58BE8E4D/594D8B7D" Ref="U1001"  Part="1" 
AR Path="/5954FB0E/595CED50/594D8B7D" Ref="U1101"  Part="1" 
AR Path="/5954FB0E/595CED51/594D8B7D" Ref="U1201"  Part="1" 
AR Path="/5954FB0E/59847685/594D8B7D" Ref="U1301"  Part="1" 
F 0 "U501" H 5425 3887 60  0000 C CNN
F 1 "ZXCT1086" H 5425 3781 60  0000 C CNN
F 2 "usevolt:SOT-25" H 5100 4050 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1383709.pdf?_ga=1.188141032.1948984246.1460023966" H 5850 3925 60  0001 C CNN
F 4 "1904029" H 5850 4150 60  0001 C CNN "1st Source Part Number"
F 5 "Digikey" H 5950 4250 60  0001 C CNN "2nd Source"
F 6 "DIODES INC" H 5550 3850 60  0001 C CNN "Manufacturer"
F 7 "Farnell" H 5750 4050 60  0001 C CNN "1st Source"
F 8 "ZXCT1086E5TA" H 5650 3950 60  0001 C CNN "Manufacturer Part Number"
F 9 "ZXCT1086E5TACT-ND" H 6050 4350 60  0001 C CNN "2nd Source Part Number"
	1    5450 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 594D8B7E
P 5050 4000
AR Path="/59542AAB/595CED4D/594D8B7E" Ref="#PWR016"  Part="1" 
AR Path="/59542AAB/58BE8E7A/594D8B7E" Ref="#PWR018"  Part="1" 
AR Path="/59542AAB/58BE8E88/594D8B7E" Ref="#PWR020"  Part="1" 
AR Path="/59542AAB/58BE8E96/594D8B7E" Ref="#PWR022"  Part="1" 
AR Path="/5954FB0E/58BE8E4D/594D8B7E" Ref="#PWR027"  Part="1" 
AR Path="/5954FB0E/595CED50/594D8B7E" Ref="#PWR029"  Part="1" 
AR Path="/5954FB0E/595CED51/594D8B7E" Ref="#PWR031"  Part="1" 
AR Path="/5954FB0E/59847685/594D8B7E" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 5050 3750 50  0001 C CNN
F 1 "GND" H 5055 3827 50  0000 C CNN
F 2 "" H 5050 4000 50  0000 C CNN
F 3 "" H 5050 4000 50  0000 C CNN
	1    5050 4000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR017
U 1 1 589841AE
P 5050 3350
AR Path="/59542AAB/595CED4D/589841AE" Ref="#PWR017"  Part="1" 
AR Path="/59542AAB/58BE8E7A/589841AE" Ref="#PWR019"  Part="1" 
AR Path="/59542AAB/58BE8E88/589841AE" Ref="#PWR021"  Part="1" 
AR Path="/59542AAB/58BE8E96/589841AE" Ref="#PWR023"  Part="1" 
AR Path="/5954FB0E/58BE8E4D/589841AE" Ref="#PWR028"  Part="1" 
AR Path="/5954FB0E/595CED50/589841AE" Ref="#PWR030"  Part="1" 
AR Path="/5954FB0E/595CED51/589841AE" Ref="#PWR032"  Part="1" 
AR Path="/5954FB0E/59847685/589841AE" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 5050 3200 50  0001 C CNN
F 1 "+3V3" H 5065 3523 50  0000 C CNN
F 2 "" H 5050 3350 50  0000 C CNN
F 3 "" H 5050 3350 50  0000 C CNN
	1    5050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3300 6400 3300
Wire Wire Line
	5700 3550 6050 3550
Wire Wire Line
	6050 3550 6050 3300
Wire Wire Line
	5700 3750 6400 3750
Wire Wire Line
	5050 3750 5050 4000
Wire Wire Line
	5050 3750 5150 3750
Wire Wire Line
	5050 3350 5050 3550
Wire Wire Line
	5050 3550 5150 3550
Wire Wire Line
	4100 3650 5150 3650
Text HLabel 6400 3300 2    60   Input ~ 0
SENSE+
Text HLabel 6400 3750 2    60   Input ~ 0
SENSE-
Text HLabel 4100 3650 0    60   Output ~ 0
VOUT
$Comp
L LRMAT2512-R002FT4 R?
U 1 1 589858BC
P 6200 3450
AR Path="/58982E87/589858BC" Ref="R?"  Part="1" 
AR Path="/5899DD67/589858BC" Ref="R?"  Part="1" 
AR Path="/589A417E/589858BC" Ref="R?"  Part="1" 
AR Path="/58BE52C9/58BE8E88/589858BC" Ref="R?"  Part="1" 
AR Path="/58BE52C9/58BE8E4D/589858BC" Ref="R?"  Part="1" 
AR Path="/58BE52C9/58BE8E7A/589858BC" Ref="R?"  Part="1" 
AR Path="/58BE52C9/58BE8E96/589858BC" Ref="R?"  Part="1" 
AR Path="/58C7B0A8/58BE8E4D/589858BC" Ref="R?"  Part="1" 
AR Path="/58C7B0A8/58BE8E7A/589858BC" Ref="R?"  Part="1" 
AR Path="/58C7B0A8/58BE8E88/589858BC" Ref="R?"  Part="1" 
AR Path="/58C7B0A8/58BE8E96/589858BC" Ref="R?"  Part="1" 
AR Path="/58BE52C9/5955DE03/589858BC" Ref="R?"  Part="1" 
AR Path="/58C7B0A8/594D8B80/589858BC" Ref="R?"  Part="1" 
AR Path="/58C7B0A8/594D8B83/589858BC" Ref="R?"  Part="1" 
AR Path="/59542AAB/58BE8E4D/589858BC" Ref="R?"  Part="1" 
AR Path="/59542AAB/58BE8E7A/589858BC" Ref="R601"  Part="1" 
AR Path="/59542AAB/58BE8E88/589858BC" Ref="R701"  Part="1" 
AR Path="/59542AAB/58BE8E96/589858BC" Ref="R801"  Part="1" 
AR Path="/5954FB0E/58BE8E4D/589858BC" Ref="R1001"  Part="1" 
AR Path="/5954FB0E/58BE8E7A/589858BC" Ref="R?"  Part="1" 
AR Path="/5954FB0E/58BE8E88/589858BC" Ref="R?"  Part="1" 
AR Path="/59542AAB/595CED4D/589858BC" Ref="R501"  Part="1" 
AR Path="/5954FB0E/595CED50/589858BC" Ref="R1101"  Part="1" 
AR Path="/5954FB0E/595CED51/589858BC" Ref="R1201"  Part="1" 
AR Path="/5954FB0E/59847685/589858BC" Ref="R1301"  Part="1" 
F 0 "R501" V 6208 3508 45  0000 L CNN
F 1 "LRMAT2512-R002FT4" V 6292 3508 45  0000 L CNN
F 2 "usevolt:2512" H 6230 3600 20  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1518406.pdf?_ga=1.226422362.1948984246.1460023966" H 6169 3489 60  0001 C CNN
F 4 "2079420" H 6569 3889 60  0001 C CNN "1st Source Part Number"
F 5 "Farnell" H 6469 3789 60  0001 C CNN "1st Source"
F 6 "LRMAT2512-R002FT4" H 6369 3689 60  0001 C CNN "Manufacturer Part Number"
F 7 "WELWYN" H 6269 3589 60  0001 C CNN "Manufacturer"
	1    6200 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 3650 6200 3750
Connection ~ 6200 3750
Wire Wire Line
	6200 3350 6200 3300
Connection ~ 6200 3300
$EndSCHEMATC
