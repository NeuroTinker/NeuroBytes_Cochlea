#include "HAL.h"

volatile uint16_t tick = 0;
extern volatile uint8_t main_tick = 0;
volatile uint8_t data_ready_flag=0;
uint32_t sample_count = 0;
kiss_fft_cpx timedata[1024];

void sys_tick_handler(void)
{
    // 100 microseconds
    uint16_t val;
    if (tick++ >= 1000){
        main_tick = 1;
        tick = 0;
    }
    //gpio_toggle(GPIOA, GPIO3);
    if (sample_count < NUM_SAMPLES && data_ready_flag == 0){
        //gpio_set(GPIOA, GPIO3);
        val = read_adc(0);
        timedata[sample_count].r = (double_t) val * 1.0;
        timedata[sample_count].i = 0;
        //printf("%f\n", timedata[sample_count].r);
        sample_count += 1;
        //gpio_clear(GPIOA, GPIO3);
    } else if (sample_count >= NUM_SAMPLES && data_ready_flag ==0){
        sample_count = 0;
        data_ready_flag = 1;
    }

}


void systick_setup(int ums)
{
	
    /* clock rate / 1000 to get 1mS interrupt rate */
	systick_set_reload(10000); // 10000 --> 60 us 4000
	systick_set_clocksource(STK_CSR_CLKSOURCE_AHB);
	systick_counter_enable();
	/* this done last */
    systick_interrupt_enable();
	
}

void clock_setup(void)
{
	rcc_clock_setup_hse_3v3(&rcc_hse_8mhz_3v3[RCC_CLOCK_3V3_168MHZ]);
	/* Enable GPIOD clock for LED & USARTs. */
	rcc_periph_clock_enable(RCC_GPIOD);
	rcc_periph_clock_enable(RCC_GPIOA);

	/* Enable clocks for USART2 and dac */
	rcc_periph_clock_enable(RCC_USART2);
	rcc_periph_clock_enable(RCC_DAC);

    rcc_clock_setup_hse_3v3(&rcc_hse_8mhz_3v3[RCC_CLOCK_3V3_168MHZ]);

	/* Enable GPIOD clock. */
    rcc_periph_clock_enable(RCC_GPIOA);
    rcc_periph_clock_enable(RCC_GPIOG);
    rcc_periph_clock_enable(RCC_ADC1);

    rcc_periph_clock_enable(RCC_USART2);

	/* And ADC*/
	rcc_periph_clock_enable(RCC_ADC1);
}

void usart_setup(void)
{
	/* Setup GPIO pins for USART2 transmit. */
	gpio_mode_setup(GPIOA, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO2);

	/* Setup USART2 TX pin as alternate function. */
	gpio_set_af(GPIOA, GPIO_AF7, GPIO2);

	usart_set_baudrate(USART_CONSOLE, 115200);
	usart_set_databits(USART_CONSOLE, 8);
	usart_set_stopbits(USART_CONSOLE, USART_STOPBITS_1);
	usart_set_mode(USART_CONSOLE, USART_MODE_TX);
	usart_set_parity(USART_CONSOLE, USART_PARITY_NONE);
	usart_set_flow_control(USART_CONSOLE, USART_FLOWCONTROL_NONE);

	/* Finally enable the USART. */
	usart_enable(USART_CONSOLE);
}

/**
 * Use USART_CONSOLE as a console.
 * This is a syscall for newlib
 * @param file
 * @param ptr
 * @param len
 * @return
 */
int _write(int file, char *ptr, int len)
{
	int i;

	if (file == STDOUT_FILENO || file == STDERR_FILENO) {
		for (i = 0; i < len; i++) {
			if (ptr[i] == '\n') {
				usart_send_blocking(USART_CONSOLE, '\r');
			}
			usart_send_blocking(USART_CONSOLE, ptr[i]);
		}
		return i;
	}
	errno = EIO;
	return -1;
}

void adc_setup(void)
{
	gpio_mode_setup(GPIOA, GPIO_MODE_ANALOG, GPIO_PUPD_NONE, GPIO0);
	gpio_mode_setup(GPIOA, GPIO_MODE_ANALOG, GPIO_PUPD_NONE, GPIO1);

	adc_power_off(ADC1);
	adc_disable_scan_mode(ADC1);
	adc_set_sample_time_on_all_channels(ADC1, ADC_SMPR_SMP_15CYC);

	adc_power_on(ADC1);

}

uint16_t read_adc(uint8_t channel)
{
	uint8_t channel_array[16];
	channel_array[0] = channel;
	adc_set_regular_sequence(ADC1, 1, channel_array);
	adc_start_conversion_regular(ADC1);
	while (!adc_eoc(ADC1));
	uint16_t reg16 = adc_read_regular(ADC1);
	return reg16;
}

void gpio_setup(void)
{
	/*	Enable GPIO clocks */
	rcc_periph_clock_enable(RCC_GPIOA);
    rcc_periph_clock_enable(RCC_GPIOD);

	rcc_periph_clock_enable(RCC_ADC1); // enable ADC 1


	/*	Set up ADC input */
	gpio_mode_setup(PORT_MIC, GPIO_MODE_ANALOG, GPIO_PUPD_NONE, PIN_MIC);

    gpio_mode_setup(PORT_LED, GPIO_MODE_AF, GPIO_PUPD_NONE, PIN_LED1 | PIN_LED2 | PIN_LED3 | PIN_LED4);
	gpio_set_output_options(PORT_LED, GPIO_OTYPE_PP, GPIO_OSPEED_25MHZ, PIN_LED1 | PIN_LED2 | PIN_LED3 | PIN_LED4);
	gpio_set_af(PORT_LED, GPIO_AF2, PIN_LED1 | PIN_LED2 | PIN_LED3 | PIN_LED4);


    gpio_mode_setup(GPIOA, GPIO_MODE_OUTPUT, GPIO_PUPD_PULLDOWN, GPIO3);

    /* Setup GPIO pins for USART2 transmit. */
	gpio_mode_setup(GPIOA, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO2);

	/* Setup USART2 TX pin as alternate function. */
    gpio_set_af(GPIOA, GPIO_AF7, GPIO2);	/* Setup GPIO pins for USART1 transmit. */
	gpio_mode_setup(GPIOA, GPIO_MODE_AF, GPIO_PUPD_NONE, GPIO9);

}

void tim_setup(void)
{
    /* 	Enable and reset TIM4 clock */
	rcc_periph_clock_enable(RCC_TIM4);

	// Setup TIM4 interrupts	rcc_set_sysclk_source(RCC_HSI16);
	nvic_enable_irq(NVIC_TIM4_IRQ);

	/* 	Set up TIM4 mode to no clock divider ratio, edge alignment, and up direction */
	timer_set_mode(TIM4, TIM_CR1_CKD_CK_INT, TIM_CR1_CMS_EDGE, TIM_CR1_DIR_UP);

    /*	Set prescaler to 0: 16 MHz clock */
	timer_set_prescaler(TIM4, 1);

	/* 	Set timer period to 9600: 5 kHz PWM with 9600 steps */
	timer_set_period(TIM4, 9600);

	// 	Set TIM4 Output Compare mode to PWM1 on channels 1, 3, and 4 (NeuroBytes v1.01) 
	timer_set_oc_mode(TIM4, TIM_OC1, TIM_OCM_PWM1);
	timer_set_oc_mode(TIM4, TIM_OC2, TIM_OCM_PWM1);
	timer_set_oc_mode(TIM4, TIM_OC3, TIM_OCM_PWM1); 
    timer_set_oc_mode(TIM4, TIM_OC4, TIM_OCM_PWM1); 

	// 	Set starting output compare values (NeuroBytes v1.01) 
	timer_set_oc_value(TIM4, TIM_OC1, 0);
	timer_set_oc_value(TIM4, TIM_OC2, 0);
	timer_set_oc_value(TIM4, TIM_OC3, 0); 
    timer_set_oc_value(TIM4, TIM_OC4, 0);

	// 	Enable outputs (NeuroBytes v1.01) 
	timer_enable_oc_output(TIM4, TIM_OC1);
	timer_enable_oc_output(TIM4, TIM_OC2);
	timer_enable_oc_output(TIM4, TIM_OC3);
    timer_enable_oc_output(TIM4, TIM_OC4);
	

	/*	Enable counter */
	timer_enable_counter(TIM4);
}


void setLED(uint32_t led1, uint32_t led2, uint32_t led3, uint32_t led4)
{
	if (led1 <= 1023) 
	{
		timer_set_oc_value(TIM4, TIM_OC1, gamma_lookup[led1]);
	}
	else 
	{
		timer_set_oc_value(TIM4, TIM_OC1, 9600);
	}

	if (led2 <= 1023) 
	{
		timer_set_oc_value(TIM4, TIM_OC2, gamma_lookup[led2]);
	}
	else
	{
		timer_set_oc_value(TIM4, TIM_OC2, 9600);
	}

	if (led3 <= 1023)
	{
		timer_set_oc_value(TIM4, TIM_OC3, gamma_lookup[led3]);
	}
	else
	{
		timer_set_oc_value(TIM4, TIM_OC3, 9600);
	}

    if (led4 <= 1023)
	{
		timer_set_oc_value(TIM4, TIM_OC4, gamma_lookup[led4]);
	}
	else
	{
		timer_set_oc_value(TIM4, TIM_OC4, 9600);
	}
}


static const uint16_t gamma_lookup[1024] = {
	/*	Gamma = 2, input range = 0-1023, output range = 0-9600 */
    0,  0,  0,  0,  0,  0,  0,  0,  1,  1,  1,  1,  1,  2,  2,  2,
    2,  3,  3,  3,  4,  4,  4,  5,  5,  6,  6,  7,  7,  8,  8,  9,
    9, 10, 11, 11, 12, 13, 13, 14, 15, 15, 16, 17, 18, 19, 19, 20,
   21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36,
   38, 39, 40, 41, 42, 44, 45, 46, 48, 49, 50, 52, 53, 54, 56, 57,
   59, 60, 62, 63, 65, 66, 68, 69, 71, 73, 74, 76, 78, 79, 81, 83,
   85, 86, 88, 90, 92, 94, 95, 97, 99,101,103,105,107,109,111,113,
  115,117,119,121,123,126,128,130,132,134,137,139,141,143,146,148,
  150,153,155,157,160,162,165,167,170,172,175,177,180,182,185,188,
  190,193,196,198,201,204,206,209,212,215,218,220,223,226,229,232,
  235,238,241,244,247,250,253,256,259,262,265,268,271,275,278,281,
  284,287,291,294,297,301,304,307,311,314,317,321,324,328,331,335,
  338,342,345,349,352,356,360,363,367,371,374,378,382,386,389,393,
  397,401,405,408,412,416,420,424,428,432,436,440,444,448,452,456,
  460,464,469,473,477,481,485,489,494,498,502,507,511,515,520,524,
  528,533,537,542,546,551,555,560,564,569,573,578,583,587,592,596,
  601,606,611,615,620,625,630,634,639,644,649,654,659,664,669,674,
  679,684,689,694,699,704,709,714,719,724,729,735,740,745,750,756,
  761,766,771,777,782,788,793,798,804,809,815,820,826,831,837,842,
  848,853,859,865,870,876,882,887,893,899,904,910,916,922,928,933,
  939,945,951,957,963,969,975,981,987,993,999,1005,1011,1017,1023,1029,
  1036,1042,1048,1054,1060,1067,1073,1079,1086,1092,1098,1105,1111,1117,1124,1130,
  1137,1143,1150,1156,1163,1169,1176,1182,1189,1195,1202,1209,1215,1222,1229,1236,
  1242,1249,1256,1263,1269,1276,1283,1290,1297,1304,1311,1318,1325,1332,1339,1346,
  1353,1360,1367,1374,1381,1388,1395,1402,1410,1417,1424,1431,1439,1446,1453,1460,
  1468,1475,1482,1490,1497,1505,1512,1520,1527,1534,1542,1550,1557,1565,1572,1580,
  1587,1595,1603,1610,1618,1626,1634,1641,1649,1657,1665,1673,1680,1688,1696,1704,
  1712,1720,1728,1736,1744,1752,1760,1768,1776,1784,1792,1800,1808,1817,1825,1833,
  1841,1849,1858,1866,1874,1882,1891,1899,1907,1916,1924,1933,1941,1949,1958,1966,
  1975,1983,1992,2001,2009,2018,2026,2035,2044,2052,2061,2070,2078,2087,2096,2105,
  2114,2122,2131,2140,2149,2158,2167,2176,2185,2194,2202,2211,2220,2230,2239,2248,
  2257,2266,2275,2284,2293,2302,2312,2321,2330,2339,2349,2358,2367,2377,2386,2395,
  2405,2414,2424,2433,2442,2452,2461,2471,2480,2490,2500,2509,2519,2528,2538,2548,
  2557,2567,2577,2586,2596,2606,2616,2626,2635,2645,2655,2665,2675,2685,2695,2705,
  2715,2725,2735,2745,2755,2765,2775,2785,2795,2805,2815,2826,2836,2846,2856,2866,
  2877,2887,2897,2908,2918,2928,2939,2949,2959,2970,2980,2991,3001,3012,3022,3033,
  3043,3054,3065,3075,3086,3097,3107,3118,3129,3139,3150,3161,3172,3182,3193,3204,
  3215,3226,3237,3248,3258,3269,3280,3291,3302,3313,3324,3335,3347,3358,3369,3380,
  3391,3402,3413,3425,3436,3447,3458,3470,3481,3492,3503,3515,3526,3538,3549,3560,
  3572,3583,3595,3606,3618,3629,3641,3652,3664,3676,3687,3699,3711,3722,3734,3746,
  3757,3769,3781,3793,3804,3816,3828,3840,3852,3864,3876,3888,3900,3912,3924,3936,
  3948,3960,3972,3984,3996,4008,4020,4032,4044,4057,4069,4081,4093,4106,4118,4130,
  4142,4155,4167,4180,4192,4204,4217,4229,4242,4254,4267,4279,4292,4304,4317,4329,
  4342,4355,4367,4380,4393,4405,4418,4431,4444,4456,4469,4482,4495,4508,4521,4533,
  4546,4559,4572,4585,4598,4611,4624,4637,4650,4663,4676,4690,4703,4716,4729,4742,
  4755,4769,4782,4795,4808,4822,4835,4848,4862,4875,4888,4902,4915,4929,4942,4956,
  4969,4983,4996,5010,5023,5037,5050,5064,5078,5091,5105,5119,5132,5146,5160,5174,
  5187,5201,5215,5229,5243,5257,5271,5284,5298,5312,5326,5340,5354,5368,5382,5396,
  5411,5425,5439,5453,5467,5481,5495,5510,5524,5538,5552,5567,5581,5595,5610,5624,
  5638,5653,5667,5682,5696,5710,5725,5739,5754,5769,5783,5798,5812,5827,5842,5856,
  5871,5886,5900,5915,5930,5944,5959,5974,5989,6004,6019,6033,6048,6063,6078,6093,
  6108,6123,6138,6153,6168,6183,6198,6213,6228,6243,6259,6274,6289,6304,6319,6335,
  6350,6365,6380,6396,6411,6426,6442,6457,6473,6488,6503,6519,6534,6550,6565,6581,
  6596,6612,6628,6643,6659,6674,6690,6706,6722,6737,6753,6769,6784,6800,6816,6832,
  6848,6864,6879,6895,6911,6927,6943,6959,6975,6991,7007,7023,7039,7055,7071,7088,
  7104,7120,7136,7152,7168,7185,7201,7217,7233,7250,7266,7282,7299,7315,7332,7348,
  7364,7381,7397,7414,7430,7447,7463,7480,7496,7513,7530,7546,7563,7580,7596,7613,
  7630,7646,7663,7680,7697,7714,7730,7747,7764,7781,7798,7815,7832,7849,7866,7883,
  7900,7917,7934,7951,7968,7985,8002,8019,8037,8054,8071,8088,8105,8123,8140,8157,
  8175,8192,8209,8227,8244,8261,8279,8296,8314,8331,8349,8366,8384,8401,8419,8436,
  8454,8472,8489,8507,8525,8542,8560,8578,8595,8613,8631,8649,8667,8685,8702,8720,
  8738,8756,8774,8792,8810,8828,8846,8864,8882,8900,8918,8936,8954,8972,8991,9009,
  9027,9045,9063,9082,9100,9118,9137,9155,9173,9192,9210,9228,9247,9265,9284,9302,
  9321,9339,9358,9376,9395,9413,9432,9450,9469,9488,9506,9525,9544,9563,9581,9600 };


