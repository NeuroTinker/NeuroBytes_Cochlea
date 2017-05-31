#ifndef HAL_H_
#define HAL_H_

#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>
#include <libopencm3/stm32/exti.h>
#include <libopencm3/stm32/adc.h>

#define PORT_MIC    GPIOA
#define PIN_MIC     GPIO0

extern volatile uint8_t main_tick;
extern volatile uint8_t tick;

void systick_setup(int xms);
void clock_setup(void);
void gpio_setup(void);
void tim_setup(void);
void adc_setup(void);


#endif
