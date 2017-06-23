EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:NeuroTinker_schematic_symbols
LIBS:NeuroBytes_Cochlea-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "NeuroBytes Cochlea"
Date "2017-06-22"
Rev "C"
Comp "NeuroTinker, LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AP131-33 U3
U 1 1 58EC20D3
P 4500 5900
F 0 "U3" H 4450 6250 50  0000 L CNN
F 1 "AP2112K-3.3" H 4750 6150 50  0000 R CNN
F 2 "KiCad_Footprints:ZF_SOT23-5L" H 4500 5500 50  0001 C CNN
F 3 "" H 4500 5900 50  0000 C CNN
F 4 "No" H 4500 5900 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 4500 5900 60  0001 C CNN "RoHS"
	1    4500 5900
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 58EC23BC
P 3950 6200
F 0 "C6" H 3975 6300 50  0000 L CNN
F 1 "1u0" H 3975 6100 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0603" H 3988 6050 50  0001 C CNN
F 3 "" H 3950 6200 50  0000 C CNN
F 4 "No" H 3950 6200 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 3950 6200 60  0001 C CNN "RoHS"
	1    3950 6200
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 58EC24DC
P 5050 6200
F 0 "C7" H 5075 6300 50  0000 L CNN
F 1 "1u0" H 5075 6100 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0603" H 5088 6050 50  0001 C CNN
F 3 "" H 5050 6200 50  0000 C CNN
F 4 "No" H 5050 6200 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 5050 6200 60  0001 C CNN "RoHS"
	1    5050 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 58EC2618
P 4600 6900
F 0 "#PWR7" H 4600 6650 50  0001 C CNN
F 1 "GND" H 4600 6750 50  0000 C CNN
F 2 "" H 4600 6900 50  0000 C CNN
F 3 "" H 4600 6900 50  0000 C CNN
	1    4600 6900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR8
U 1 1 58EC26C5
P 5250 5600
F 0 "#PWR8" H 5250 5450 50  0001 C CNN
F 1 "+3.3V" H 5250 5740 50  0000 C CNN
F 2 "" H 5250 5600 50  0000 C CNN
F 3 "" H 5250 5600 50  0000 C CNN
	1    5250 5600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR4
U 1 1 58EC2774
P 3600 5600
F 0 "#PWR4" H 3600 5450 50  0001 C CNN
F 1 "+5V" H 3600 5740 50  0000 C CNN
F 2 "" H 3600 5600 50  0000 C CNN
F 3 "" H 3600 5600 50  0000 C CNN
	1    3600 5600
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 58EC4FDF
P 1000 3500
F 0 "C1" H 1025 3600 50  0000 L CNN
F 1 "1u0" H 1025 3400 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0603" H 1038 3350 50  0001 C CNN
F 3 "" H 1000 3500 50  0000 C CNN
F 4 "No" H 1000 3500 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 1000 3500 60  0001 C CNN "RoHS"
	1    1000 3500
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 58EC57B9
P 2550 3150
F 0 "C2" H 2575 3250 50  0000 L CNN
F 1 "10u" H 2575 3050 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0603" H 2588 3000 50  0001 C CNN
F 3 "" H 2550 3150 50  0000 C CNN
F 4 "No" H 2550 3150 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 2550 3150 60  0001 C CNN "RoHS"
	1    2550 3150
	0    1    1    0   
$EndComp
$Comp
L STM32F410CBU6 U4
U 1 1 5947330F
P 9100 2700
F 0 "U4" H 9100 2700 60  0000 C CNN
F 1 "STM32F410CBU6" H 9100 3100 60  0000 C CNN
F 2 "KiCad_Footprints:ZF_IC_UFQFPN48" H 9100 2700 60  0001 C CNN
F 3 "" H 9100 2700 60  0001 C CNN
F 4 "No" H 9100 2700 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 9100 2700 60  0001 C CNN "RoHS"
	1    9100 2700
	1    0    0    -1  
$EndComp
$Comp
L Knowles_SPU0410 U1
U 1 1 594BD784
P 1750 3250
F 0 "U1" H 1750 3250 60  0000 C CNN
F 1 "Knowles_SPU0410" H 1750 2950 60  0000 C CNN
F 2 "KiCad_Footprints:ZF_SENSOR_Knowles_SPU410" H 1750 3250 60  0001 C CNN
F 3 "" H 1750 3250 60  0001 C CNN
F 4 "No" H 1750 3250 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 1750 3250 60  0001 C CNN "RoHS"
	1    1750 3250
	1    0    0    -1  
$EndComp
$Comp
L MCP6001 U2
U 1 1 594BDB7E
P 4000 3050
F 0 "U2" H 4050 3250 50  0000 C CNN
F 1 "MCP6001" H 4200 2850 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SOT23-5L" H 3950 3150 50  0001 C CNN
F 3 "" H 4050 3250 50  0000 C CNN
F 4 "No" H 4000 3050 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 4000 3050 60  0001 C CNN "RoHS"
	1    4000 3050
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 594BDC25
P 3300 3150
F 0 "R3" V 3380 3150 50  0000 C CNN
F 1 "5k" V 3300 3150 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 3230 3150 50  0001 C CNN
F 3 "" H 3300 3150 50  0000 C CNN
F 4 "No" H 3300 3150 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 3300 3150 60  0001 C CNN "RoHS"
	1    3300 3150
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 594BDD62
P 4350 3550
F 0 "R4" V 4430 3550 50  0000 C CNN
F 1 "100k" V 4350 3550 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 4280 3550 50  0001 C CNN
F 3 "" H 4350 3550 50  0000 C CNN
F 4 "No" H 4350 3550 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 4350 3550 60  0001 C CNN "RoHS"
	1    4350 3550
	0    -1   -1   0   
$EndComp
$Comp
L C C5
U 1 1 594BDFE9
P 3050 3700
F 0 "C5" H 3075 3800 50  0000 L CNN
F 1 "0u1" H 3075 3600 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 3088 3550 50  0001 C CNN
F 3 "" H 3050 3700 50  0000 C CNN
F 4 "No" H 3050 3700 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 3050 3700 60  0001 C CNN "RoHS"
	1    3050 3700
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 594BE208
P 2750 3700
F 0 "C3" H 2775 3800 50  0000 L CNN
F 1 "1u0" H 2775 3600 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0603" H 2788 3550 50  0001 C CNN
F 3 "" H 2750 3700 50  0000 C CNN
F 4 "No" H 2750 3700 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 2750 3700 60  0001 C CNN "RoHS"
	1    2750 3700
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 594BE5DB
P 2650 2250
F 0 "R2" V 2730 2250 50  0000 C CNN
F 1 "10k" V 2650 2250 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 2580 2250 50  0001 C CNN
F 3 "" H 2650 2250 50  0000 C CNN
F 4 "No" H 2650 2250 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 2650 2250 60  0001 C CNN "RoHS"
	1    2650 2250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 594BE708
P 2650 1750
F 0 "R1" V 2730 1750 50  0000 C CNN
F 1 "10k" V 2650 1750 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 2580 1750 50  0001 C CNN
F 3 "" H 2650 1750 50  0000 C CNN
F 4 "No" H 2650 1750 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 2650 1750 60  0001 C CNN "RoHS"
	1    2650 1750
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 594BE7FB
P 3000 2250
F 0 "C4" H 3025 2350 50  0000 L CNN
F 1 "10u" H 3025 2150 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0603" H 3038 2100 50  0001 C CNN
F 3 "" H 3000 2250 50  0000 C CNN
F 4 "No" H 3000 2250 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 3000 2250 60  0001 C CNN "RoHS"
	1    3000 2250
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 594BFF7A
P 6400 2100
F 0 "SW2" H 6550 2210 50  0000 C CNN
F 1 "SW_EARDRUM" H 6400 2020 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SW_Momentary_Snap-Action_side-mtg" H 6400 2100 50  0001 C CNN
F 3 "" H 6400 2100 50  0000 C CNN
F 4 "No" H 6400 2100 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 6400 2100 60  0001 C CNN "RoHS"
	1    6400 2100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P1
U 1 1 594C0088
P 14050 2100
F 0 "P1" H 14050 2350 50  0000 C CNN
F 1 "JST_GH_4-pos" V 14150 2100 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH" H 14050 2100 50  0001 C CNN
F 3 "" H 14050 2100 50  0000 C CNN
F 4 "No" H 14050 2100 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 14050 2100 60  0001 C CNN "RoHS"
	1    14050 2100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P2
U 1 1 594C01F4
P 14050 2800
F 0 "P2" H 14050 3050 50  0000 C CNN
F 1 "JST_GH_4-pos" V 14150 2800 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH" H 14050 2800 50  0001 C CNN
F 3 "" H 14050 2800 50  0000 C CNN
F 4 "No" H 14050 2800 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 14050 2800 60  0001 C CNN "RoHS"
	1    14050 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X07 P7
U 1 1 594C02FD
P 14150 7050
F 0 "P7" H 14150 7450 50  0000 C CNN
F 1 "JST_GH_7-pos" V 14250 7050 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH_7POS" H 14150 7050 50  0001 C CNN
F 3 "" H 14150 7050 50  0000 C CNN
F 4 "No" H 14150 7050 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 14150 7050 60  0001 C CNN "RoHS"
	1    14150 7050
	1    0    0    1   
$EndComp
$Comp
L +3.3V #PWR11
U 1 1 594C08B6
P 6900 1350
F 0 "#PWR11" H 6900 1200 50  0001 C CNN
F 1 "+3.3V" H 6900 1490 50  0000 C CNN
F 2 "" H 6900 1350 50  0000 C CNN
F 3 "" H 6900 1350 50  0000 C CNN
	1    6900 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 594C0944
P 7100 4400
F 0 "#PWR12" H 7100 4150 50  0001 C CNN
F 1 "GND" H 7100 4250 50  0000 C CNN
F 2 "" H 7100 4400 50  0000 C CNN
F 3 "" H 7100 4400 50  0000 C CNN
	1    7100 4400
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 594C09DB
P 6900 4100
F 0 "C9" H 6925 4200 50  0000 L CNN
F 1 "0u1" H 6925 4000 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 6938 3950 50  0001 C CNN
F 3 "" H 6900 4100 50  0000 C CNN
F 4 "No" H 6900 4100 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 6900 4100 60  0001 C CNN "RoHS"
	1    6900 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 594C0AF7
P 11450 3900
F 0 "#PWR15" H 11450 3650 50  0001 C CNN
F 1 "GND" H 11450 3750 50  0000 C CNN
F 2 "" H 11450 3900 50  0000 C CNN
F 3 "" H 11450 3900 50  0000 C CNN
	1    11450 3900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR16
U 1 1 594C0C09
P 11700 1450
F 0 "#PWR16" H 11700 1300 50  0001 C CNN
F 1 "+3.3V" H 11700 1590 50  0000 C CNN
F 2 "" H 11700 1450 50  0000 C CNN
F 3 "" H 11700 1450 50  0000 C CNN
	1    11700 1450
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 594C0D0F
P 11700 3000
F 0 "C12" H 11725 3100 50  0000 L CNN
F 1 "0u1" H 11725 2900 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 11738 2850 50  0001 C CNN
F 3 "" H 11700 3000 50  0000 C CNN
F 4 "No" H 11700 3000 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 11700 3000 60  0001 C CNN "RoHS"
	1    11700 3000
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 594C0E33
P 11900 1950
F 0 "C13" H 11925 2050 50  0000 L CNN
F 1 "0u1" H 11925 1850 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 11938 1800 50  0001 C CNN
F 3 "" H 11900 1950 50  0000 C CNN
F 4 "No" H 11900 1950 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 11900 1950 60  0001 C CNN "RoHS"
	1    11900 1950
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 594C1000
P 12100 1950
F 0 "C14" H 12125 2050 50  0000 L CNN
F 1 "4u7" H 12125 1850 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0603" H 12138 1800 50  0001 C CNN
F 3 "" H 12100 1950 50  0000 C CNN
F 4 "No" H 12100 1950 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 12100 1950 60  0001 C CNN "RoHS"
	1    12100 1950
	1    0    0    -1  
$EndComp
Text GLabel 5400 3050 2    60   Input ~ 0
MIC
Text GLabel 10400 2650 2    39   Input ~ 0
SWCLK
Text GLabel 10400 2950 2    39   Input ~ 0
SWDIO
Text GLabel 7600 2150 0    39   Input ~ 0
RESET
$Comp
L +5V #PWR20
U 1 1 594C28A8
P 13650 6550
F 0 "#PWR20" H 13650 6400 50  0001 C CNN
F 1 "+5V" H 13650 6690 50  0000 C CNN
F 2 "" H 13650 6550 50  0000 C CNN
F 3 "" H 13650 6550 50  0000 C CNN
	1    13650 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR21
U 1 1 594C2981
P 13650 7550
F 0 "#PWR21" H 13650 7300 50  0001 C CNN
F 1 "GND" H 13650 7400 50  0000 C CNN
F 2 "" H 13650 7550 50  0000 C CNN
F 3 "" H 13650 7550 50  0000 C CNN
	1    13650 7550
	1    0    0    -1  
$EndComp
Text GLabel 12750 7450 0    60   Input ~ 0
RESET
Text GLabel 13250 7250 0    60   Input ~ 0
SWCLK
Text GLabel 13250 7050 0    60   Input ~ 0
SWDIO
Text GLabel 13250 6850 0    60   Input ~ 0
NSS
Text GLabel 13250 6650 0    60   Input ~ 0
MOSI
$Comp
L +5V #PWR19
U 1 1 594C3190
P 13650 1650
F 0 "#PWR19" H 13650 1500 50  0001 C CNN
F 1 "+5V" H 13650 1790 50  0000 C CNN
F 2 "" H 13650 1650 50  0000 C CNN
F 3 "" H 13650 1650 50  0000 C CNN
	1    13650 1650
	1    0    0    -1  
$EndComp
Text GLabel 13150 2050 0    60   Input ~ 0
A1IN
Text GLabel 13150 2250 0    60   Input ~ 0
A1EX
Text GLabel 13150 2650 0    60   Input ~ 0
A2IN
Text GLabel 13150 2950 0    60   Input ~ 0
A2EX
$Comp
L LED D1
U 1 1 594C4262
P 8150 6300
F 0 "D1" H 8150 6400 50  0000 C CNN
F 1 "LED" H 8150 6200 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 8150 6300 50  0001 C CNN
F 3 "" H 8150 6300 50  0000 C CNN
F 4 "No" H 8150 6300 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 8150 6300 60  0001 C CNN "RoHS"
	1    8150 6300
	-1   0    0    1   
$EndComp
Text GLabel 7800 6600 0    60   Input ~ 0
LED_X1
Text GLabel 7800 7100 0    60   Input ~ 0
LED_X2
Text GLabel 7800 6100 0    60   Input ~ 0
LED_X0
Text GLabel 8900 5600 1    60   Input ~ 0
LED_Y0
Text GLabel 10100 5600 1    60   Input ~ 0
LED_Y1
$Comp
L R R6
U 1 1 594C46F8
P 8550 6300
F 0 "R6" V 8630 6300 50  0000 C CNN
F 1 "R" V 8550 6300 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 8480 6300 50  0001 C CNN
F 3 "" H 8550 6300 50  0000 C CNN
F 4 "No" H 8550 6300 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 8550 6300 60  0001 C CNN "RoHS"
	1    8550 6300
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 594C4B1E
P 8150 6800
F 0 "D2" H 8150 6900 50  0000 C CNN
F 1 "LED" H 8150 6700 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 8150 6800 50  0001 C CNN
F 3 "" H 8150 6800 50  0000 C CNN
F 4 "No" H 8150 6800 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 8150 6800 60  0001 C CNN "RoHS"
	1    8150 6800
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 594C4B27
P 8550 6800
F 0 "R7" V 8630 6800 50  0000 C CNN
F 1 "R" V 8550 6800 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 8480 6800 50  0001 C CNN
F 3 "" H 8550 6800 50  0000 C CNN
F 4 "No" H 8550 6800 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 8550 6800 60  0001 C CNN "RoHS"
	1    8550 6800
	0    1    1    0   
$EndComp
$Comp
L LED D3
U 1 1 594C4C2D
P 8150 7300
F 0 "D3" H 8150 7400 50  0000 C CNN
F 1 "LED" H 8150 7200 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 8150 7300 50  0001 C CNN
F 3 "" H 8150 7300 50  0000 C CNN
F 4 "No" H 8150 7300 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 8150 7300 60  0001 C CNN "RoHS"
	1    8150 7300
	-1   0    0    1   
$EndComp
$Comp
L R R8
U 1 1 594C4C36
P 8550 7300
F 0 "R8" V 8630 7300 50  0000 C CNN
F 1 "R" V 8550 7300 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 8480 7300 50  0001 C CNN
F 3 "" H 8550 7300 50  0000 C CNN
F 4 "No" H 8550 7300 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 8550 7300 60  0001 C CNN "RoHS"
	1    8550 7300
	0    1    1    0   
$EndComp
$Comp
L LED D4
U 1 1 594C4FB6
P 9350 6300
F 0 "D4" H 9350 6400 50  0000 C CNN
F 1 "LED" H 9350 6200 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 9350 6300 50  0001 C CNN
F 3 "" H 9350 6300 50  0000 C CNN
F 4 "No" H 9350 6300 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 9350 6300 60  0001 C CNN "RoHS"
	1    9350 6300
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 594C4FC1
P 9750 6300
F 0 "R9" V 9830 6300 50  0000 C CNN
F 1 "R" V 9750 6300 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 9680 6300 50  0001 C CNN
F 3 "" H 9750 6300 50  0000 C CNN
F 4 "No" H 9750 6300 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 9750 6300 60  0001 C CNN "RoHS"
	1    9750 6300
	0    1    1    0   
$EndComp
$Comp
L LED D5
U 1 1 594C4FCB
P 9350 6800
F 0 "D5" H 9350 6900 50  0000 C CNN
F 1 "LED" H 9350 6700 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 9350 6800 50  0001 C CNN
F 3 "" H 9350 6800 50  0000 C CNN
F 4 "No" H 9350 6800 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 9350 6800 60  0001 C CNN "RoHS"
	1    9350 6800
	-1   0    0    1   
$EndComp
$Comp
L R R10
U 1 1 594C4FD4
P 9750 6800
F 0 "R10" V 9830 6800 50  0000 C CNN
F 1 "R" V 9750 6800 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 9680 6800 50  0001 C CNN
F 3 "" H 9750 6800 50  0000 C CNN
F 4 "No" H 9750 6800 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 9750 6800 60  0001 C CNN "RoHS"
	1    9750 6800
	0    1    1    0   
$EndComp
$Comp
L LED D6
U 1 1 594C4FDE
P 9350 7300
F 0 "D6" H 9350 7400 50  0000 C CNN
F 1 "LED" H 9350 7200 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 9350 7300 50  0001 C CNN
F 3 "" H 9350 7300 50  0000 C CNN
F 4 "No" H 9350 7300 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 9350 7300 60  0001 C CNN "RoHS"
	1    9350 7300
	-1   0    0    1   
$EndComp
$Comp
L R R11
U 1 1 594C4FE7
P 9750 7300
F 0 "R11" V 9830 7300 50  0000 C CNN
F 1 "R" V 9750 7300 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 9680 7300 50  0001 C CNN
F 3 "" H 9750 7300 50  0000 C CNN
F 4 "No" H 9750 7300 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 9750 7300 60  0001 C CNN "RoHS"
	1    9750 7300
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 594C5D79
P 6700 4100
F 0 "C8" H 6725 4200 50  0000 L CNN
F 1 "4u7" H 6725 4000 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0603" H 6738 3950 50  0001 C CNN
F 3 "" H 6700 4100 50  0000 C CNN
F 4 "No" H 6700 4100 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 6700 4100 60  0001 C CNN "RoHS"
	1    6700 4100
	1    0    0    -1  
$EndComp
Text GLabel 10400 2450 2    39   Input ~ 0
SCK
Text GLabel 10400 2350 2    39   Input ~ 0
MISO
Text GLabel 10400 2250 2    39   Input ~ 0
MOSI
Text GLabel 10400 2550 2    39   Input ~ 0
NSS
Text GLabel 13300 8200 3    60   Input ~ 0
SCK
$Comp
L R R13
U 1 1 594C6F74
P 13300 7850
F 0 "R13" V 13380 7850 50  0000 C CNN
F 1 "JMP" V 13300 7850 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 13230 7850 50  0001 C CNN
F 3 "" H 13300 7850 50  0000 C CNN
F 4 "No" H 13300 7850 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 13300 7850 60  0001 C CNN "RoHS"
	1    13300 7850
	-1   0    0    1   
$EndComp
Text GLabel 13500 8200 3    60   Input ~ 0
MISO
$Comp
L R R14
U 1 1 594C72AA
P 13500 7850
F 0 "R14" V 13580 7850 50  0000 C CNN
F 1 "JMP" V 13500 7850 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 13430 7850 50  0001 C CNN
F 3 "" H 13500 7850 50  0000 C CNN
F 4 "No" H 13500 7850 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 13500 7850 60  0001 C CNN "RoHS"
	1    13500 7850
	-1   0    0    1   
$EndComp
Text GLabel 10400 3450 2    39   Input ~ 0
LED_X0
Text GLabel 10400 3350 2    39   Input ~ 0
LED_X1
Text GLabel 10400 3250 2    39   Input ~ 0
LED_X2
Text GLabel 10400 3050 2    39   Input ~ 0
LED_Y0
Text GLabel 10400 3150 2    39   Input ~ 0
LED_Y1
Text GLabel 7600 2850 0    39   Input ~ 0
A1IN
Text GLabel 7600 2950 0    39   Input ~ 0
A1EX
Text GLabel 7600 3050 0    39   Input ~ 0
A2IN
Text GLabel 7600 3150 0    39   Input ~ 0
A2EX
Text GLabel 7600 2750 0    39   Input ~ 0
MIC
$Comp
L SW_PUSH SW1
U 1 1 594C8B87
P 6400 1750
F 0 "SW1" H 6550 1860 50  0000 C CNN
F 1 "SW_ID" H 6400 1670 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SW_Momentary_SideMtg" H 6400 1750 50  0001 C CNN
F 3 "" H 6400 1750 50  0000 C CNN
F 4 "No" H 6400 1750 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 6400 1750 60  0001 C CNN "RoHS"
	1    6400 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 594C8FA9
P 5900 2500
F 0 "#PWR9" H 5900 2250 50  0001 C CNN
F 1 "GND" H 5900 2350 50  0000 C CNN
F 2 "" H 5900 2500 50  0000 C CNN
F 3 "" H 5900 2500 50  0000 C CNN
	1    5900 2500
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 594C940C
P 7500 2450
F 0 "C11" H 7525 2550 50  0000 L CNN
F 1 "0u1" H 7525 2350 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 7538 2300 50  0001 C CNN
F 3 "" H 7500 2450 50  0000 C CNN
F 4 "No" H 7500 2450 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 7500 2450 60  0001 C CNN "RoHS"
	1    7500 2450
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 594C99AA
P 7300 2450
F 0 "C10" H 7325 2550 50  0000 L CNN
F 1 "1u0" H 7325 2350 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0603" H 7338 2300 50  0001 C CNN
F 3 "" H 7300 2450 50  0000 C CNN
F 4 "No" H 7300 2450 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 7300 2450 60  0001 C CNN "RoHS"
	1    7300 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 594CAF48
P 3900 4250
F 0 "#PWR6" H 3900 4000 50  0001 C CNN
F 1 "GND" H 3900 4100 50  0000 C CNN
F 2 "" H 3900 4250 50  0000 C CNN
F 3 "" H 3900 4250 50  0000 C CNN
	1    3900 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 594CAFD4
P 1700 4250
F 0 "#PWR2" H 1700 4000 50  0001 C CNN
F 1 "GND" H 1700 4100 50  0000 C CNN
F 2 "" H 1700 4250 50  0000 C CNN
F 3 "" H 1700 4250 50  0000 C CNN
	1    1700 4250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P3
U 1 1 594CBB61
P 14050 3400
F 0 "P3" H 14050 3650 50  0000 C CNN
F 1 "JST_GH_4-pos" V 14150 3400 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH" H 14050 3400 50  0001 C CNN
F 3 "" H 14050 3400 50  0000 C CNN
F 4 "No" H 14050 3400 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 14050 3400 60  0001 C CNN "RoHS"
	1    14050 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P4
U 1 1 594CBB69
P 14050 4100
F 0 "P4" H 14050 4350 50  0000 C CNN
F 1 "JST_GH_4-pos" V 14150 4100 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH" H 14050 4100 50  0001 C CNN
F 3 "" H 14050 4100 50  0000 C CNN
F 4 "No" H 14050 4100 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 14050 4100 60  0001 C CNN "RoHS"
	1    14050 4100
	1    0    0    -1  
$EndComp
Text GLabel 13150 3350 0    60   Input ~ 0
A3IN
Text GLabel 13150 3550 0    60   Input ~ 0
A3EX
Text GLabel 13150 3950 0    60   Input ~ 0
A4IN
Text GLabel 13150 4250 0    60   Input ~ 0
A4EX
Wire Wire Line
	4200 5900 3950 5900
Wire Wire Line
	3950 5800 3950 6050
Wire Wire Line
	3600 5800 4200 5800
Connection ~ 3950 5900
Wire Wire Line
	3950 6350 3950 6550
Wire Wire Line
	3950 6550 5050 6550
Wire Wire Line
	4500 6550 4500 6200
Wire Wire Line
	5050 6050 5050 5800
Wire Wire Line
	4800 5800 5250 5800
Wire Wire Line
	5050 6550 5050 6350
Connection ~ 4500 6550
Wire Wire Line
	4600 6900 4600 6550
Connection ~ 4600 6550
Wire Wire Line
	5250 5800 5250 5600
Connection ~ 5050 5800
Wire Wire Line
	3600 5600 3600 5800
Connection ~ 3950 5800
Wire Wire Line
	1200 3950 1200 3350
Wire Wire Line
	1200 3350 1300 3350
Wire Wire Line
	1000 3150 1300 3150
Wire Wire Line
	1200 1400 1200 3150
Wire Wire Line
	1000 3950 1000 3650
Wire Wire Line
	1000 3350 1000 3150
Connection ~ 1200 3150
Wire Wire Line
	2200 3350 2400 3350
Connection ~ 1200 3950
Wire Wire Line
	2200 3150 2400 3150
Wire Wire Line
	2700 3150 3150 3150
Wire Wire Line
	2400 3350 2400 3950
Wire Wire Line
	1700 3950 1700 4250
Connection ~ 1700 3950
Wire Wire Line
	2400 3950 1000 3950
Wire Wire Line
	3450 3150 3700 3150
Wire Wire Line
	3900 1400 3900 2750
Wire Wire Line
	4200 3550 3550 3550
Wire Wire Line
	3550 3550 3550 3150
Connection ~ 3550 3150
Wire Wire Line
	4700 3050 4700 3550
Wire Wire Line
	4700 3550 4500 3550
Connection ~ 4700 3050
Wire Wire Line
	3350 2950 3700 2950
Wire Wire Line
	3900 3350 3900 4250
Wire Wire Line
	2750 3950 3900 3950
Wire Wire Line
	3050 3950 3050 3850
Connection ~ 3900 3950
Wire Wire Line
	3050 2650 3050 3550
Wire Wire Line
	3050 2650 3900 2650
Connection ~ 3900 2650
Wire Wire Line
	3050 3350 2750 3350
Wire Wire Line
	2750 3350 2750 3550
Connection ~ 3050 3350
Wire Wire Line
	2750 3850 2750 3950
Connection ~ 3050 3950
Wire Wire Line
	2650 2400 2650 2600
Wire Wire Line
	3000 2100 3000 2000
Wire Wire Line
	3000 2400 3000 2500
Wire Wire Line
	3000 2500 2650 2500
Connection ~ 2650 2500
Wire Wire Line
	2650 2000 3350 2000
Connection ~ 2650 2000
Wire Wire Line
	2650 1900 2650 2100
Wire Wire Line
	2650 1600 2650 1500
Wire Wire Line
	2650 1500 3900 1500
Connection ~ 3900 1500
Wire Wire Line
	3350 2000 3350 2950
Connection ~ 3000 2000
Wire Wire Line
	6900 1350 6900 3950
Wire Wire Line
	6900 3850 7850 3850
Wire Wire Line
	7100 3750 7100 4400
Wire Wire Line
	7100 3750 7850 3750
Connection ~ 6900 3850
Wire Wire Line
	6900 4250 6900 4350
Wire Wire Line
	6700 4350 7100 4350
Connection ~ 7100 4350
Wire Wire Line
	11450 2850 10200 2850
Wire Wire Line
	10200 1650 11450 1650
Wire Wire Line
	11700 1450 11700 2850
Wire Wire Line
	10200 1550 11700 1550
Wire Wire Line
	10200 2750 11700 2750
Connection ~ 11700 1550
Connection ~ 11700 2750
Wire Wire Line
	11700 3150 11700 3250
Wire Wire Line
	11700 3250 11450 3250
Connection ~ 11450 3250
Wire Wire Line
	11900 1800 11900 1700
Wire Wire Line
	11700 1700 12100 1700
Connection ~ 11700 1700
Wire Wire Line
	11900 2100 11900 2200
Wire Wire Line
	11450 2200 12100 2200
Connection ~ 11450 2200
Wire Wire Line
	12100 1700 12100 1800
Connection ~ 11900 1700
Wire Wire Line
	12100 2200 12100 2100
Connection ~ 11900 2200
Wire Wire Line
	4300 3050 5400 3050
Wire Wire Line
	10400 2650 10200 2650
Wire Wire Line
	10400 2950 10200 2950
Wire Wire Line
	10200 1950 10400 1950
Wire Wire Line
	10700 1950 10900 1950
Wire Wire Line
	13650 6550 13650 6750
Wire Wire Line
	13650 6750 13950 6750
Wire Wire Line
	13650 7550 13650 7350
Wire Wire Line
	13650 7350 13950 7350
Wire Wire Line
	12750 7450 13550 7450
Wire Wire Line
	13550 7450 13550 7250
Wire Wire Line
	13550 7250 13950 7250
Wire Wire Line
	13250 7250 13450 7250
Wire Wire Line
	13450 7150 13450 7600
Wire Wire Line
	13450 7150 13950 7150
Wire Wire Line
	13250 7050 13950 7050
Wire Wire Line
	13250 6850 13450 6850
Wire Wire Line
	13450 6850 13450 6950
Wire Wire Line
	13450 6950 13950 6950
Wire Wire Line
	13250 6650 13550 6650
Wire Wire Line
	13550 6650 13550 6850
Wire Wire Line
	13550 6850 13950 6850
Wire Wire Line
	13550 1950 13550 5850
Wire Wire Line
	13550 2650 13850 2650
Wire Wire Line
	13550 1950 13850 1950
Connection ~ 13550 2650
Wire Wire Line
	13650 1650 13650 5350
Wire Wire Line
	13650 2050 13850 2050
Wire Wire Line
	13650 2750 13850 2750
Connection ~ 13650 2050
Wire Wire Line
	13150 2050 13350 2050
Wire Wire Line
	13350 2050 13350 2150
Wire Wire Line
	13350 2150 13850 2150
Wire Wire Line
	13150 2250 13850 2250
Wire Wire Line
	13150 2650 13350 2650
Wire Wire Line
	13350 2650 13350 2850
Wire Wire Line
	13350 2850 13850 2850
Wire Wire Line
	13150 2950 13850 2950
Wire Wire Line
	8000 6300 7900 6300
Wire Wire Line
	7900 6300 7900 6100
Wire Wire Line
	7800 6100 9100 6100
Wire Wire Line
	8300 6300 8400 6300
Wire Wire Line
	8900 5600 8900 7300
Wire Wire Line
	8900 6300 8700 6300
Wire Wire Line
	8000 6800 7900 6800
Wire Wire Line
	8300 6800 8400 6800
Wire Wire Line
	8900 6800 8700 6800
Wire Wire Line
	8000 7300 7900 7300
Wire Wire Line
	8300 7300 8400 7300
Wire Wire Line
	8900 7300 8700 7300
Wire Wire Line
	7900 6800 7900 6600
Wire Wire Line
	7800 6600 9100 6600
Wire Wire Line
	7900 7300 7900 7100
Wire Wire Line
	7800 7100 9100 7100
Wire Wire Line
	9200 6300 9100 6300
Wire Wire Line
	9100 6300 9100 6100
Wire Wire Line
	9500 6300 9600 6300
Wire Wire Line
	10100 6300 9900 6300
Wire Wire Line
	9200 6800 9100 6800
Wire Wire Line
	9500 6800 9600 6800
Wire Wire Line
	10100 6800 9900 6800
Wire Wire Line
	9200 7300 9100 7300
Wire Wire Line
	9500 7300 9600 7300
Wire Wire Line
	10100 7300 9900 7300
Wire Wire Line
	9100 6800 9100 6600
Wire Wire Line
	9100 7300 9100 7100
Wire Wire Line
	11450 1650 11450 3900
Connection ~ 11450 2850
Wire Wire Line
	10100 5600 10100 7300
Connection ~ 10100 6300
Connection ~ 10100 6800
Connection ~ 8900 6300
Connection ~ 8900 6800
Connection ~ 7900 6600
Connection ~ 7900 6100
Connection ~ 7900 7100
Wire Wire Line
	6700 4350 6700 4250
Connection ~ 6900 4350
Wire Wire Line
	6700 3950 6700 3650
Wire Wire Line
	6700 3650 7850 3650
Connection ~ 6900 1550
Wire Wire Line
	6900 1550 7850 1550
Wire Wire Line
	10400 2450 10200 2450
Wire Wire Line
	10400 2250 10200 2250
Wire Wire Line
	13300 8200 13300 8000
Wire Wire Line
	13300 7700 13300 7050
Connection ~ 13300 7050
Wire Wire Line
	13500 8200 13500 8000
Wire Wire Line
	13500 7700 13500 7600
Wire Wire Line
	13500 7600 13450 7600
Connection ~ 13450 7250
Wire Wire Line
	7600 2750 7850 2750
Wire Wire Line
	6700 1750 7850 1750
Wire Wire Line
	6700 2100 7100 2100
Wire Wire Line
	7100 2100 7100 1850
Wire Wire Line
	7100 1850 7850 1850
Wire Wire Line
	5900 1750 5900 2500
Wire Wire Line
	5900 1750 6100 1750
Wire Wire Line
	6100 2100 5900 2100
Connection ~ 5900 2100
Wire Wire Line
	7600 2150 7850 2150
Wire Wire Line
	5900 2250 7850 2250
Wire Wire Line
	7500 2250 7500 2300
Wire Wire Line
	7500 2650 7500 2600
Wire Wire Line
	7750 2650 7750 2350
Wire Wire Line
	7750 2350 7850 2350
Wire Wire Line
	7300 2300 7300 2250
Connection ~ 7500 2250
Wire Wire Line
	7300 2600 7300 2900
Connection ~ 7500 2650
Connection ~ 6900 2650
Connection ~ 7300 2650
Connection ~ 5900 2250
Connection ~ 7300 2250
Wire Wire Line
	13550 3950 13850 3950
Connection ~ 13550 3950
Wire Wire Line
	13650 3350 13850 3350
Connection ~ 13650 3350
Wire Wire Line
	13150 3350 13350 3350
Wire Wire Line
	13350 3350 13350 3450
Wire Wire Line
	13350 3450 13850 3450
Wire Wire Line
	13150 3550 13850 3550
Wire Wire Line
	13150 3950 13350 3950
Wire Wire Line
	13350 3950 13350 4150
Wire Wire Line
	13350 4150 13850 4150
Wire Wire Line
	13150 4250 13850 4250
Connection ~ 13650 2750
Wire Wire Line
	13850 3250 13550 3250
Connection ~ 13550 3250
$Comp
L CONN_01X04 P5
U 1 1 594CC08C
P 14050 4700
F 0 "P5" H 14050 4950 50  0000 C CNN
F 1 "JST_GH_4-pos" V 14150 4700 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH" H 14050 4700 50  0001 C CNN
F 3 "" H 14050 4700 50  0000 C CNN
F 4 "No" H 14050 4700 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 14050 4700 60  0001 C CNN "RoHS"
	1    14050 4700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P6
U 1 1 594CC094
P 14050 5400
F 0 "P6" H 14050 5650 50  0000 C CNN
F 1 "JST_GH_4-pos" V 14150 5400 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_CONN_JST_GH" H 14050 5400 50  0001 C CNN
F 3 "" H 14050 5400 50  0000 C CNN
F 4 "No" H 14050 5400 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 14050 5400 60  0001 C CNN "RoHS"
	1    14050 5400
	1    0    0    -1  
$EndComp
Text GLabel 13150 4650 0    60   Input ~ 0
A5IN
Text GLabel 13150 4850 0    60   Input ~ 0
A5EX
Text GLabel 13150 5250 0    60   Input ~ 0
A6IN
Text GLabel 13150 5550 0    60   Input ~ 0
A6EX
Wire Wire Line
	13550 3250 13550 3950
Wire Wire Line
	13650 2950 13650 3350
Wire Wire Line
	13550 5250 13850 5250
Connection ~ 13550 5250
Wire Wire Line
	13650 4650 13850 4650
Wire Wire Line
	13650 5350 13850 5350
Connection ~ 13650 4650
Wire Wire Line
	13150 4650 13350 4650
Wire Wire Line
	13350 4650 13350 4750
Wire Wire Line
	13350 4750 13850 4750
Wire Wire Line
	13150 4850 13850 4850
Wire Wire Line
	13150 5250 13350 5250
Wire Wire Line
	13350 5250 13350 5450
Wire Wire Line
	13350 5450 13850 5450
Wire Wire Line
	13150 5550 13850 5550
Wire Wire Line
	13550 4550 13850 4550
Connection ~ 13550 4550
Wire Wire Line
	13650 4050 13850 4050
Connection ~ 13650 4050
$Comp
L GND #PWR18
U 1 1 594CC24A
P 13550 5850
F 0 "#PWR18" H 13550 5600 50  0001 C CNN
F 1 "GND" H 13550 5700 50  0000 C CNN
F 2 "" H 13550 5850 50  0000 C CNN
F 3 "" H 13550 5850 50  0000 C CNN
	1    13550 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2850 7600 2850
Wire Wire Line
	7600 2950 7850 2950
Wire Wire Line
	7850 3050 7600 3050
Wire Wire Line
	7600 3150 7850 3150
Text GLabel 7600 3250 0    39   Input ~ 0
A3IN
Text GLabel 7600 3350 0    39   Input ~ 0
A3EX
Text GLabel 7600 3450 0    39   Input ~ 0
A4IN
Text GLabel 7600 3550 0    39   Input ~ 0
A4EX
Wire Wire Line
	7850 3250 7600 3250
Wire Wire Line
	7600 3350 7850 3350
Wire Wire Line
	7850 3450 7600 3450
Wire Wire Line
	7600 3550 7850 3550
Wire Wire Line
	10400 2350 10200 2350
Wire Wire Line
	10200 2550 10400 2550
Wire Wire Line
	10400 3050 10200 3050
Wire Wire Line
	10200 3150 10400 3150
Wire Wire Line
	10400 3250 10200 3250
Wire Wire Line
	10200 3350 10400 3350
Wire Wire Line
	10400 3450 10200 3450
Text GLabel 10400 3850 2    39   Input ~ 0
A5IN
Text GLabel 10400 3750 2    39   Input ~ 0
A5EX
Text GLabel 10400 3650 2    39   Input ~ 0
A6IN
Text GLabel 10400 3550 2    39   Input ~ 0
A6EX
Wire Wire Line
	10400 3850 10200 3850
Wire Wire Line
	10200 3750 10400 3750
Wire Wire Line
	10400 3650 10200 3650
Wire Wire Line
	10200 3550 10400 3550
$Comp
L GND #PWR3
U 1 1 594D18EE
P 2650 2600
F 0 "#PWR3" H 2650 2350 50  0001 C CNN
F 1 "GND" H 2650 2450 50  0000 C CNN
F 2 "" H 2650 2600 50  0000 C CNN
F 3 "" H 2650 2600 50  0000 C CNN
	1    2650 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR17
U 1 1 594D628E
P 12950 7950
F 0 "#PWR17" H 12950 7700 50  0001 C CNN
F 1 "GND" H 12950 7800 50  0000 C CNN
F 2 "" H 12950 7950 50  0000 C CNN
F 3 "" H 12950 7950 50  0000 C CNN
	1    12950 7950
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 594D6300
P 12950 7700
F 0 "C16" H 12975 7800 50  0000 L CNN
F 1 "C" H 12975 7600 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 12988 7550 50  0001 C CNN
F 3 "" H 12950 7700 50  0000 C CNN
F 4 "No" H 12950 7700 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 12950 7700 60  0001 C CNN "RoHS"
	1    12950 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12950 7950 12950 7850
Wire Wire Line
	12950 7550 12950 7450
Connection ~ 12950 7450
$Comp
L Ferrite_Bead_Small L1
U 1 1 594D6BE8
P 7100 2650
F 0 "L1" H 7175 2700 50  0000 L CNN
F 1 "Ferrite_Bead_Small" H 7175 2600 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0603" V 7030 2650 50  0001 C CNN
F 3 "" H 7100 2650 50  0000 C CNN
F 4 "No" H 7100 2650 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 7100 2650 60  0001 C CNN "RoHS"
	1    7100 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 2650 7750 2650
Wire Wire Line
	7000 2650 6900 2650
$Comp
L GND #PWR13
U 1 1 594D7587
P 7800 1300
F 0 "#PWR13" H 7800 1050 50  0001 C CNN
F 1 "GND" H 7800 1150 50  0000 C CNN
F 2 "" H 7800 1300 50  0000 C CNN
F 3 "" H 7800 1300 50  0000 C CNN
	1    7800 1300
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 594D75FB
P 7500 1150
F 0 "C15" H 7525 1250 50  0000 L CNN
F 1 "C" H 7525 1050 50  0000 L CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" H 7538 1000 50  0001 C CNN
F 3 "" H 7500 1150 50  0000 C CNN
F 4 "No" H 7500 1150 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 7500 1150 60  0001 C CNN "RoHS"
	1    7500 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 1150 7800 1150
Wire Wire Line
	7800 1150 7800 1300
Wire Wire Line
	7350 1150 7200 1150
Wire Wire Line
	7200 1150 7200 1550
Connection ~ 7200 1550
$Comp
L GND #PWR14
U 1 1 594D8193
P 10900 2350
F 0 "#PWR14" H 10900 2100 50  0001 C CNN
F 1 "GND" H 10900 2200 50  0000 C CNN
F 2 "" H 10900 2350 50  0000 C CNN
F 3 "" H 10900 2350 50  0000 C CNN
	1    10900 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 1950 10900 2350
$Comp
L R R12
U 1 1 594C2486
P 10550 1950
F 0 "R12" V 10630 1950 50  0000 C CNN
F 1 "10k" V 10550 1950 50  0000 C CNN
F 2 "KiCad_Footprints:ZF_SMD_NonPol_0402" V 10480 1950 50  0001 C CNN
F 3 "" H 10550 1950 50  0000 C CNN
F 4 "No" H 10550 1950 60  0001 C CNN "Subs Allowed"
F 5 "Yes" H 10550 1950 60  0001 C CNN "RoHS"
	1    10550 1950
	0    1    1    0   
$EndComp
$Comp
L +3.3VADC #PWR10
U 1 1 594D9438
P 6600 2900
F 0 "#PWR10" H 6750 2850 50  0001 C CNN
F 1 "+3.3VADC" H 6600 3000 50  0000 C CNN
F 2 "" H 6600 2900 50  0000 C CNN
F 3 "" H 6600 2900 50  0000 C CNN
	1    6600 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 2900 6600 2900
$Comp
L +3.3VADC #PWR5
U 1 1 594D9652
P 3900 1400
F 0 "#PWR5" H 4050 1350 50  0001 C CNN
F 1 "+3.3VADC" H 3900 1500 50  0000 C CNN
F 2 "" H 3900 1400 50  0000 C CNN
F 3 "" H 3900 1400 50  0000 C CNN
	1    3900 1400
	1    0    0    -1  
$EndComp
$Comp
L +3.3VADC #PWR1
U 1 1 594D9F5D
P 1200 1400
F 0 "#PWR1" H 1350 1350 50  0001 C CNN
F 1 "+3.3VADC" H 1200 1500 50  0000 C CNN
F 2 "" H 1200 1400 50  0000 C CNN
F 3 "" H 1200 1400 50  0000 C CNN
	1    1200 1400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
