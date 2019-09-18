EESchema Schematic File Version 5
LIBS:circuit board design-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title "Pyro drivers"
Date "2019-09-09"
Rev "1.0"
Comp "Imperial College Space Society"
Comment1 "Pyro drivers based on the Telementrum design"
Comment2 ""
Comment3 ""
Comment4 ""
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
$Comp
L power:GND #PWR024
U 1 1 5D69AE81
P 5850 2250
F 0 "#PWR024" H 5850 2000 50  0001 C CNN
F 1 "GND" H 5855 2077 50  0000 C CNN
F 2 "" H 5850 2250 50  0001 C CNN
F 3 "" H 5850 2250 50  0001 C CNN
	1    5850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2250 5850 2000
Wire Wire Line
	6650 1600 6950 1600
Wire Wire Line
	6950 1900 6950 1600
Wire Wire Line
	6950 2250 6950 2200
$Comp
L power:GND #PWR025
U 1 1 5D6A67BF
P 6950 2250
F 0 "#PWR025" H 6950 2000 50  0001 C CNN
F 1 "GND" H 6955 2077 50  0000 C CNN
F 2 "" H 6950 2250 50  0001 C CNN
F 3 "" H 6950 2250 50  0001 C CNN
	1    6950 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1600 6150 1600
Wire Wire Line
	5950 1500 6150 1500
Wire Wire Line
	6150 1600 6150 1500
Connection ~ 6150 1600
Wire Wire Line
	6150 1600 6350 1600
Connection ~ 6150 1500
Wire Wire Line
	6150 1500 7450 1500
Connection ~ 6950 1600
Wire Wire Line
	6950 1600 7450 1600
Text HLabel 7450 1600 2    50   Output ~ 0
SENSE_FET_A
Wire Wire Line
	4450 1800 4450 1950
Connection ~ 4450 1800
Wire Wire Line
	4450 1800 3700 1800
$Comp
L power:GND #PWR023
U 1 1 5D6AF664
P 4450 2350
F 0 "#PWR023" H 4450 2100 50  0001 C CNN
F 1 "GND" H 4455 2177 50  0000 C CNN
F 2 "" H 4450 2350 50  0001 C CNN
F 3 "" H 4450 2350 50  0001 C CNN
	1    4450 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2250 4450 2350
$Comp
L power:GND #PWR043
U 1 1 5D743B8B
P 5850 3500
F 0 "#PWR043" H 5850 3250 50  0001 C CNN
F 1 "GND" H 5855 3327 50  0000 C CNN
F 2 "" H 5850 3500 50  0001 C CNN
F 3 "" H 5850 3500 50  0001 C CNN
	1    5850 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2850 6950 2850
Wire Wire Line
	6950 3150 6950 2850
Wire Wire Line
	6950 3500 6950 3450
$Comp
L power:GND #PWR044
U 1 1 5D743BAD
P 6950 3500
F 0 "#PWR044" H 6950 3250 50  0001 C CNN
F 1 "GND" H 6955 3327 50  0000 C CNN
F 2 "" H 6950 3500 50  0001 C CNN
F 3 "" H 6950 3500 50  0001 C CNN
	1    6950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2850 6150 2850
Wire Wire Line
	5950 2750 6150 2750
Wire Wire Line
	6150 2850 6150 2750
Connection ~ 6150 2850
Wire Wire Line
	6150 2850 6350 2850
Connection ~ 6150 2750
Wire Wire Line
	6150 2750 7450 2750
Connection ~ 6950 2850
Wire Wire Line
	6950 2850 7450 2850
Text HLabel 7450 2850 2    50   Output ~ 0
SENSE_FET_B
Wire Wire Line
	5850 3500 5850 3250
Wire Wire Line
	4450 3050 4450 3200
Connection ~ 4450 3050
Wire Wire Line
	4450 3050 3700 3050
$Comp
L power:GND #PWR042
U 1 1 5D743BCA
P 4450 3600
F 0 "#PWR042" H 4450 3350 50  0001 C CNN
F 1 "GND" H 4455 3427 50  0000 C CNN
F 2 "" H 4450 3600 50  0001 C CNN
F 3 "" H 4450 3600 50  0001 C CNN
	1    4450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3500 4450 3600
$Comp
L power:GND #PWR051
U 1 1 5D7DA5A1
P 5850 4900
F 0 "#PWR051" H 5850 4650 50  0001 C CNN
F 1 "GND" H 5855 4727 50  0000 C CNN
F 2 "" H 5850 4900 50  0001 C CNN
F 3 "" H 5850 4900 50  0001 C CNN
	1    5850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4900 5850 4650
Wire Wire Line
	6650 4250 6950 4250
Wire Wire Line
	6950 4550 6950 4250
Wire Wire Line
	6950 4900 6950 4850
$Comp
L power:GND #PWR055
U 1 1 5D7DA5C3
P 6950 4900
F 0 "#PWR055" H 6950 4650 50  0001 C CNN
F 1 "GND" H 6955 4727 50  0000 C CNN
F 2 "" H 6950 4900 50  0001 C CNN
F 3 "" H 6950 4900 50  0001 C CNN
	1    6950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4250 6150 4250
Wire Wire Line
	5950 4150 6150 4150
Wire Wire Line
	6150 4250 6150 4150
Connection ~ 6150 4250
Wire Wire Line
	6150 4250 6350 4250
Connection ~ 6150 4150
Wire Wire Line
	6150 4150 7450 4150
Connection ~ 6950 4250
Wire Wire Line
	6950 4250 7450 4250
Text HLabel 7450 4250 2    50   Output ~ 0
SENSE_FET_C
Wire Wire Line
	4450 4450 4450 4600
Connection ~ 4450 4450
Wire Wire Line
	4450 4450 3700 4450
$Comp
L power:GND #PWR048
U 1 1 5D7DA5DB
P 4450 5000
F 0 "#PWR048" H 4450 4750 50  0001 C CNN
F 1 "GND" H 4455 4827 50  0000 C CNN
F 2 "" H 4450 5000 50  0001 C CNN
F 3 "" H 4450 5000 50  0001 C CNN
	1    4450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4900 4450 5000
$Comp
L power:GND #PWR054
U 1 1 5D7DA607
P 5850 6150
F 0 "#PWR054" H 5850 5900 50  0001 C CNN
F 1 "GND" H 5855 5977 50  0000 C CNN
F 2 "" H 5850 6150 50  0001 C CNN
F 3 "" H 5850 6150 50  0001 C CNN
	1    5850 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5500 6950 5500
Wire Wire Line
	6950 5800 6950 5500
Wire Wire Line
	6950 6150 6950 6100
$Comp
L power:GND #PWR056
U 1 1 5D7DA628
P 6950 6150
F 0 "#PWR056" H 6950 5900 50  0001 C CNN
F 1 "GND" H 6955 5977 50  0000 C CNN
F 2 "" H 6950 6150 50  0001 C CNN
F 3 "" H 6950 6150 50  0001 C CNN
	1    6950 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5500 6150 5500
Wire Wire Line
	5950 5400 6150 5400
Wire Wire Line
	6150 5500 6150 5400
Connection ~ 6150 5500
Wire Wire Line
	6150 5500 6350 5500
Connection ~ 6150 5400
Wire Wire Line
	6150 5400 7450 5400
Connection ~ 6950 5500
Wire Wire Line
	6950 5500 7450 5500
Text HLabel 7450 5500 2    50   Output ~ 0
SENSE_FET_D
Wire Wire Line
	5850 6150 5850 5900
Wire Wire Line
	4450 5700 4450 5850
Connection ~ 4450 5700
Wire Wire Line
	4450 5700 3700 5700
$Comp
L power:GND #PWR049
U 1 1 5D7DA642
P 4450 6250
F 0 "#PWR049" H 4450 6000 50  0001 C CNN
F 1 "GND" H 4455 6077 50  0000 C CNN
F 2 "" H 4450 6250 50  0001 C CNN
F 3 "" H 4450 6250 50  0001 C CNN
	1    4450 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6150 4450 6250
Text Label 7450 1500 2    50   ~ 0
FET_A
Text Label 7450 2750 2    50   ~ 0
FET_B
Text Label 7450 4150 2    50   ~ 0
FET_C
Text Label 7450 5400 2    50   ~ 0
FET_D
Wire Wire Line
	4450 1800 5550 1800
Wire Wire Line
	4450 3050 5550 3050
Wire Wire Line
	4450 4450 5550 4450
Wire Wire Line
	4450 5700 5550 5700
$Comp
L Device:R R18
U 1 1 5D7DA64C
P 4450 6000
F 0 "R18" H 4520 6046 50  0000 L CNN
F 1 "3.3K" H 4520 5955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4380 6000 50  0001 C CNN
F 3 "~" H 4450 6000 50  0001 C CNN
	1    4450 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 5D7DA61B
P 6950 5950
F 0 "R24" H 7020 5996 50  0000 L CNN
F 1 "27K" H 7020 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6880 5950 50  0001 C CNN
F 3 "~" H 6950 5950 50  0001 C CNN
	1    6950 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 5D7DA611
P 6500 5500
F 0 "R22" V 6700 5500 50  0000 C CNN
F 1 "100K" V 6600 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6430 5500 50  0001 C CNN
F 3 "~" H 6500 5500 50  0001 C CNN
	1    6500 5500
	0    1    1    0   
$EndComp
$Comp
L flight-computer:Si7232DN U?
U 2 1 5D7DA5FD
P 5850 5250
AR Path="/5D7DA5FD" Ref="U?"  Part="1" 
AR Path="/5D6468D5/5D7DA5FD" Ref="U5"  Part="2" 
F 0 "U5" H 5956 4796 50  0000 L CNN
F 1 "Si7232DN" H 5956 4705 50  0000 L CNN
F 2 "Package_SO:Vishay_PowerPAK_1212-8_Dual" H 5700 5500 50  0001 C CNN
F 3 "https://www.vishay.com/docs/68986/si7232dn.pdf" H 5850 5250 50  0001 C CNN
F 4 "https://www.mouser.co.uk/ProductDetail/Vishay-Siliconix/SI7232DN-T1-GE3?qs=%252BPu8jn5UVnH5FJ8Jo4EbFw%3D%3D" H 5850 5250 50  0001 C CNN "Purchase link"
F 5 "0.729" H 5850 5250 50  0001 C CNN "Cost"
	2    5850 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5D7DA5E5
P 4450 4750
F 0 "R17" H 4520 4796 50  0000 L CNN
F 1 "3.3K" H 4520 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4380 4750 50  0001 C CNN
F 3 "~" H 4450 4750 50  0001 C CNN
	1    4450 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 5D7DA5B6
P 6950 4700
F 0 "R23" H 7020 4746 50  0000 L CNN
F 1 "27K" H 7020 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6880 4700 50  0001 C CNN
F 3 "~" H 6950 4700 50  0001 C CNN
	1    6950 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5D7DA5AC
P 6500 4250
F 0 "R21" V 6700 4250 50  0000 C CNN
F 1 "100K" V 6600 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6430 4250 50  0001 C CNN
F 3 "~" H 6500 4250 50  0001 C CNN
	1    6500 4250
	0    1    1    0   
$EndComp
$Comp
L flight-computer:Si7232DN U?
U 1 1 5D7DA597
P 5850 4000
AR Path="/5D7DA597" Ref="U?"  Part="1" 
AR Path="/5D6468D5/5D7DA597" Ref="U5"  Part="1" 
F 0 "U5" H 5956 3546 50  0000 L CNN
F 1 "Si7232DN" H 5956 3455 50  0000 L CNN
F 2 "Package_SO:Vishay_PowerPAK_1212-8_Dual" H 5700 4250 50  0001 C CNN
F 3 "https://www.vishay.com/docs/68986/si7232dn.pdf" H 5850 4000 50  0001 C CNN
F 4 "https://www.mouser.co.uk/ProductDetail/Vishay-Siliconix/SI7232DN-T1-GE3?qs=%252BPu8jn5UVnH5FJ8Jo4EbFw%3D%3D" H 5850 4000 50  0001 C CNN "Purchase link"
F 5 "0.729" H 5850 4000 50  0001 C CNN "Cost"
	1    5850 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5D743BD4
P 4450 3350
F 0 "R13" H 4520 3396 50  0000 L CNN
F 1 "3.3K" H 4520 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4380 3350 50  0001 C CNN
F 3 "~" H 4450 3350 50  0001 C CNN
	1    4450 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5D743BA0
P 6950 3300
F 0 "R16" H 7020 3346 50  0000 L CNN
F 1 "27K" H 7020 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6880 3300 50  0001 C CNN
F 3 "~" H 6950 3300 50  0001 C CNN
	1    6950 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5D743B96
P 6500 2850
F 0 "R15" V 6700 2850 50  0000 C CNN
F 1 "100K" V 6600 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6430 2850 50  0001 C CNN
F 3 "~" H 6500 2850 50  0001 C CNN
	1    6500 2850
	0    1    1    0   
$EndComp
$Comp
L flight-computer:Si7232DN U?
U 2 1 5D743B81
P 5850 2600
AR Path="/5D743B81" Ref="U?"  Part="1" 
AR Path="/5D6468D5/5D743B81" Ref="U6"  Part="2" 
F 0 "U6" H 5956 2146 50  0000 L CNN
F 1 "Si7232DN" H 5956 2055 50  0000 L CNN
F 2 "Package_SO:Vishay_PowerPAK_1212-8_Dual" H 5700 2850 50  0001 C CNN
F 3 "https://www.vishay.com/docs/68986/si7232dn.pdf" H 5850 2600 50  0001 C CNN
F 4 "https://www.mouser.co.uk/ProductDetail/Vishay-Siliconix/SI7232DN-T1-GE3?qs=%252BPu8jn5UVnH5FJ8Jo4EbFw%3D%3D" H 5850 2600 50  0001 C CNN "Purchase link"
F 5 "0.729" H 5850 2600 50  0001 C CNN "Cost"
	2    5850 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D6AFE1F
P 4450 2100
F 0 "R3" H 4520 2146 50  0000 L CNN
F 1 "3.3K" H 4520 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4380 2100 50  0001 C CNN
F 3 "~" H 4450 2100 50  0001 C CNN
	1    4450 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D6A6316
P 6950 2050
F 0 "R6" H 7020 2096 50  0000 L CNN
F 1 "27K" H 7020 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6880 2050 50  0001 C CNN
F 3 "~" H 6950 2050 50  0001 C CNN
	1    6950 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D6A50BE
P 6500 1600
F 0 "R5" V 6700 1600 50  0000 C CNN
F 1 "100K" V 6600 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6430 1600 50  0001 C CNN
F 3 "~" H 6500 1600 50  0001 C CNN
	1    6500 1600
	0    1    1    0   
$EndComp
$Comp
L flight-computer:Si7232DN U6
U 1 1 5D696EFB
P 5850 1350
AR Path="/5D696EFB" Ref="U6"  Part="1" 
AR Path="/5D6468D5/5D696EFB" Ref="U6"  Part="1" 
F 0 "U6" H 5956 896 50  0000 L CNN
F 1 "Si7232DN" H 5956 805 50  0000 L CNN
F 2 "Package_SO:Vishay_PowerPAK_1212-8_Dual" H 5700 1600 50  0001 C CNN
F 3 "https://www.vishay.com/docs/68986/si7232dn.pdf" H 5850 1350 50  0001 C CNN
F 4 "https://www.mouser.co.uk/ProductDetail/Vishay-Siliconix/SI7232DN-T1-GE3?qs=%252BPu8jn5UVnH5FJ8Jo4EbFw%3D%3D" H 5850 1350 50  0001 C CNN "Purchase link"
F 5 "0.729" H 5850 1350 50  0001 C CNN "Cost"
	1    5850 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4500 9750 4500
Text Label 10000 4500 2    50   ~ 0
FET_D
Wire Wire Line
	10000 4300 9750 4300
Text Label 10000 4300 2    50   ~ 0
FET_C
Text Label 10050 3050 2    50   ~ 0
FET_A
Wire Wire Line
	10050 3250 9750 3250
Text Notes 8850 2350 0    50   ~ 0
Goes to a Double Pole Single Throw switch\n
Wire Wire Line
	9750 3150 10450 3150
Text Label 10050 3250 2    50   ~ 0
FET_B
Wire Wire Line
	9750 3050 10050 3050
Connection ~ 10450 4400
Wire Wire Line
	10450 4600 10450 4400
Wire Wire Line
	9750 4400 10450 4400
Wire Wire Line
	9750 4600 10450 4600
Wire Wire Line
	10450 3350 10450 3150
Connection ~ 10450 3350
Wire Wire Line
	9750 3350 10450 3350
Wire Wire Line
	10450 3150 10450 3000
$Comp
L power:Vdrive #PWR0112
U 1 1 5D7E2F36
P 10450 3000
F 0 "#PWR0112" H 10250 2850 50  0001 C CNN
F 1 "Vdrive" H 10467 3173 50  0000 C CNN
F 2 "" H 10450 3000 50  0001 C CNN
F 3 "" H 10450 3000 50  0001 C CNN
	1    10450 3000
	1    0    0    -1  
$EndComp
Text HLabel 3700 5700 0    50   Output ~ 0
FIRE_D
Text HLabel 3700 4450 0    50   Output ~ 0
FIRE_C
Text HLabel 3700 3050 0    50   Output ~ 0
FIRE_B
Text HLabel 3700 1800 0    50   Output ~ 0
FIRE_A
Wire Wire Line
	10450 3350 10450 4400
Connection ~ 10450 3150
$Comp
L Connector:Screw_Terminal_01x04 J3
U 1 1 5D9DD6B6
P 9550 3250
F 0 "J3" H 9468 2825 50  0000 C CNN
F 1 "Screw_Terminal_01x04" H 9468 2916 50  0000 C CNN
F 2 "flight-computer:TerminalBlock_TE_282834-4_1x04_P2.54mm_Horizontal" H 9550 3250 50  0001 C CNN
F 3 "~" H 9550 3250 50  0001 C CNN
F 4 "https://www.mouser.co.uk/ProductDetail/TE-Connectivity/282834-4?qs=A%252Bip%252BNCYi6Pqom9P%2FaHyRQ==" H 9550 3250 50  0001 C CNN "Purchase link"
	1    9550 3250
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J5
U 1 1 5D9DEEE7
P 9550 4500
F 0 "J5" H 9468 4075 50  0000 C CNN
F 1 "Screw_Terminal_01x04" H 9468 4166 50  0000 C CNN
F 2 "flight-computer:TerminalBlock_TE_282834-4_1x04_P2.54mm_Horizontal" H 9550 4500 50  0001 C CNN
F 3 "~" H 9550 4500 50  0001 C CNN
F 4 "https://www.mouser.co.uk/ProductDetail/TE-Connectivity/282834-4?qs=A%252Bip%252BNCYi6Pqom9P%2FaHyRQ==" H 9550 4500 50  0001 C CNN "Purchase link"
	1    9550 4500
	-1   0    0    1   
$EndComp
$EndSCHEMATC
