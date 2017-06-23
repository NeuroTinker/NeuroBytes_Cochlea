#include <math.h>
//#define FIXED_POINT 32

#define NUM_OUTPUTS 4
//#define FIXED_POINT 32

#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>

#include "mini-printf.h"

#include "kiss_fft.h"
#include "kiss_fftr.h"
#include "HAL.h"

//#define PRINT

#define BUCKET_BEGIN 0
#define BUCKET_END 500



int main()
{
    uint32_t i;
    uint32_t largest_bucket=100;
    clock_setup();
    systick_setup(100);
    gpio_setup();
    adc_setup();
    usart_setup();
    tim_setup();

    char strDisp[20];
	for (i=0;i<20;i++)
	{
		strDisp[i] = 0;
	}
	uint32_t val;
    uint32_t bucket[5] = {0,0,0,0,0};
    uint16_t bucket_end[5] = {10, 20, 30, 40, NUM_BUCKETS - 1}; // define buckets -> linked to LEDs
    uint16_t bucket_i = 0;

    kiss_fft_cpx freqdata[NUM_SAMPLES]; // frequency domain samples
    // initialize FFT buffer
    kiss_fftr_cfg fft_buffer = kiss_fft_alloc(NUM_SAMPLES, 0, 0, 0);

    uint32_t output_bucket[4];
    for(;;){
        if (main_tick == 1){
            main_tick = 0;
            if (data_ready_flag == 1){
                // 2048 samples ready for FFT
                //gpio_set(GPIOA, GPIO3);
                mini_snprintf(strDisp, 20, "%u", 111111);
		        usart_print(strDisp);
                usart_send_blocking(USART2, '\n');
                
                for (i=0; i< NUM_SAMPLES; i++){
                    val = timedata[i];
                    mini_snprintf(strDisp, 20, "%u", val);
		            usart_print(strDisp);
                    usart_send_blocking(USART2, '\n');
                }
                
                
                kiss_fftr(fft_buffer, timedata, freqdata); // FFT transform time domain -> frequency domain
                for(i=0; i<5; i++){
                    bucket[i] = 0;
                }
                bucket_i = 0;
                for(i=BUCKET_BEGIN; i<BUCKET_END; i++){
                    val = freqdata[i].r;
                    
                    #ifdef PRINT
                    mini_snprintf(strDisp, 20, "%u", val);
		            usart_print(strDisp);
                    usart_send_blocking(USART2, '\n');
                    #endif
                    
                    // perform bucketing
                    if (i<bucket_end[bucket_i]){
                        bucket[bucket_i] += val;
                    } else{
                        bucket[bucket_i] = bucket[bucket_i] / 10;
                        if (bucket_i != 4){
                            bucket_i += 1;
                        } else{
                            break;
                        }
                    }
                    //gpio_clear(GPIOA, GPIO3);
                    data_ready_flag = 0;
                }
            }

            setLED(bucket[0],bucket[1],bucket[2],bucket[3]);
        }
    }
}

