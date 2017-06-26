#ifndef HAL_H_
#define HAL_H_
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/timer.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>
#include <libopencm3/stm32/exti.h>
#include <libopencm3/stm32/adc.h>
#include <libopencm3/stm32/usart.h>

#include "kiss_fft.h"

#define NUM_BUCKETS     513 // try NUM_SAMPLES / 2 + 1
#define NUM_SAMPLES     1024

#define PORT_MIC    GPIOA
#define PIN_MIC     GPIO1

#define PORT_LED    GPIOD
#define PIN_LED4    GPIO12
#define PIN_LED2    GPIO14
#define PIN_LED3    GPIO13
#define PIN_LED1    GPIO15

extern volatile uint8_t main_tick;
extern volatile uint16_t tick;
extern volatile kiss_fft_cpx timedata[NUM_SAMPLES]; // time domain samples
extern volatile uint8_t data_ready_flag;

static const uint16_t gamma_lookup[1024];

void systick_setup(int ums);
void clock_setup(void);
void gpio_setup(void);
void tim_setup(void);
void adc_setup(void);
uint32_t read_adc(void);
void usart_setup(void);
void tim_setup(void);
void setLED(uint32_t led1, uint32_t led2, uint32_t led3, uint32_t led4);
void usart_print(char *msg);


#endif
