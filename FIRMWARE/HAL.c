#include "HAL.h"

volatile uint8_t tick = 0;
extern volatile uint8_t main_tick = 0;

void clock_setup(void)
{
	rcc_clock_setup_hse_3v3(&rcc_hse_8mhz_3v3[RCC_CLOCK_3V3_168MHZ]);

	/* Enable GPIOD clock. */
    rcc_periph_clock_enable(RCC_GPIOD);
}

void sys_tick_handler(void)
{
    if (tick++ >= 50){
        main_tick = 1;
        tick = 0;
    }
}

void systick_setup(int xms)
{
	
    /* clock rate / 1000 to get 1mS interrupt rate */
	systick_set_reload(168000);
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

void gpio_setup(void)
{
	/*	Enable GPIO clocks */
	rcc_periph_clock_enable(RCC_GPIOA);
	rcc_periph_clock_enable(RCC_GPIOB);
	rcc_periph_clock_enable(RCC_GPIOC);

	rcc_periph_clock_enable(RCC_ADC1); // enable ADC 1


	/*	Set up ADC input */
	gpio_mode_setup(PORT_MIC, GPIO_MODE_ANALOG, GPIO_PUPD_NONE, PIN_MIC);

}
