#include <math.h>
//#define FIXED_POINT 32

#define NUM_OUTPUTS 4


#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>

#include "kiss_fft.h"
#include "HAL.h"



int main()
{
    uint32_t i;
    uint32_t largest_bucket=100;
    clock_setup();
    systick_setup(100);
    gpio_setup();
    adc_setup();

    kiss_fft_cpx freqdata[N]; // frequency domain samples
    // initialize FFT buffer
    kiss_fft_cfg fft_buffer = kiss_fft_alloc(NUM_BUCKETS, 0, 0, 0);

    uint32_t output_bucket[4];

    for(;;){
        if (main_tick == 1){
            main_tick = 0;
            if (data_ready_flag == 1){
                kiss_fft(fft_buffer, timedata, freqdata); // FFT transform time domain -> frequency domain
                data_ready_flag = 0;
                for(i=100; i<500; i++){
                    if (freqdata[i].r >= freqdata[largest_bucket].r){
                        largest_bucket = i;
                    }
                    /*
                    if (freqdata[i].r != 0){
                        gpio_set(PORT_LED, PIN_LED3);
                    } else if (freqdata[i].r == 0){
                        gpio_set(PORT_LED, PIN_LED1);
                    }
                    */
                    gpio_clear(PORT_LED, PIN_LED1);
                    gpio_clear(PORT_LED, PIN_LED2);
                    gpio_clear(PORT_LED, PIN_LED3);
                    gpio_clear(PORT_LED, PIN_LED4);
                    
                    /*
                    if (largest_bucket < NYQUIST_F / NUM_OUTPUTS){
                        gpio_set(PORT_LED, PIN_LED1);
                    } else if (largest_bucket < 2*(NYQUIST_F / NUM_OUTPUTS)){
                        gpio_set(PORT_LED, PIN_LED2);
                    } else if (largest_bucket < 3*(NYQUIST_F / NUM_OUTPUTS)){
                        gpio_set(PORT_LED, PIN_LED3);
                    } else if (largest_bucket < 4*(NYQUIST_F / NUM_OUTPUTS)){
                        gpio_set(PORT_LED, PIN_LED4);
                    }
                    */

                    if (largest_bucket < 200){
                        gpio_set(PORT_LED, PIN_LED1);
                    } else if (largest_bucket < 600){
                        gpio_set(PORT_LED, PIN_LED2);
                    } else if (largest_bucket < 1000){
                        gpio_set(PORT_LED, PIN_LED3);
                    } else if (largest_bucket < 1400){
                        gpio_set(PORT_LED, PIN_LED4);
                    }
                }
                
                
            }
            
        }
    }
}

