#include "HAL.h"

volatile uint8_t tick = 0;
extern volatile uint8_t main_tick = 0;
kiss_fft_cpx timedata[N];
volatile uint8_t data_ready_flag=0;
uint32_t sample_count = 0;

void clock_setup(void)
{
	rcc_clock_setup_hse_3v3(&rcc_hse_8mhz_3v3[RCC_CLOCK_3V3_168MHZ]);

	/* Enable GPIOD clock. */
    rcc_periph_clock_enable(RCC_GPIOA);
    rcc_periph_clock_enable(RCC_ADC1);
}

void sys_tick_handler(void)
{
    gpio_toggle(GPIOA, GPIO2);
    
    if (tick++ >= 100){
        main_tick = 1;
        tick = 0;
    }
    
    if (sample_count < NUM_SAMPLES && data_ready_flag == 0){
        timedata[sample_count].r = read_adc();
        sample_count += 1;
    } else{
        sample_count = 0;
        data_ready_flag = 1;
    }
    
    

}

void systick_setup(int ums)
{
	
    /* clock rate / 1000 to get 1mS interrupt rate */
	systick_set_reload(10000);
	systick_set_clocksource(STK_CSR_CLKSOURCE_AHB);
	systick_counter_enable();
	/* this done last */
    systick_interrupt_enable();
	
}

void adc_setup(void)
{
	/*	Light sensor is on PA1 (ADC1) */
	
	int i;

	/*	Enable ADC clock */
	rcc_periph_clock_enable(RCC_ADC1);

	adc_power_off(ADC1);
	adc_disable_scan_mode(ADC1);
	adc_set_sample_time_on_all_channels(ADC1, ADC_SMPR_SMP_3CYC);
    adc_power_on(ADC1); 
}

uint32_t read_adc(void)
{
    uint32_t val = adc_read_regular(ADC1);
    adc_start_conversion_regular(ADC1);
    return val;
}

void gpio_setup(void)
{
	/*	Enable GPIO clocks */
	rcc_periph_clock_enable(RCC_GPIOA);
    rcc_periph_clock_enable(RCC_GPIOD);

	rcc_periph_clock_enable(RCC_ADC1); // enable ADC 1


	/*	Set up ADC input */
	gpio_mode_setup(PORT_MIC, GPIO_MODE_ANALOG, GPIO_PUPD_NONE, PIN_MIC);

    gpio_mode_setup(PORT_LED, GPIO_MODE_OUTPUT, GPIO_PUPD_NONE, PIN_LED1 | PIN_LED2 | PIN_LED3 | PIN_LED4);
    gpio_mode_setup(GPIOA, GPIO_MODE_OUTPUT, GPIO_PUPD_PULLDOWN, GPIO2);

}
