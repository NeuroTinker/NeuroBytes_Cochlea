#include <math.h>
//#define FIXED_POINT 32

#define NUM_OUTPUTS 4


#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>

#include "mini-printf.h"

#include "kiss_fft.h"
#include "HAL.h"

#define PRINT

#define BUCKET_BEGIN 5
#define BUCKET_END 45



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
	uint16_t val;
    uint32_t bucket[5] = {0,0,0,0,0};
    uint16_t bucket_end[4] = {14, 24, 34, 44, 500}; // define buckets -> linked to LEDs
    uint16_t bucket_i = 0;

    kiss_fft_cpx freqdata[N]; // frequency domain samples
    // initialize FFT buffer
    kiss_fft_cfg fft_buffer = kiss_fft_alloc(NUM_BUCKETS, 0, 0, 0);

    uint32_t output_bucket[4];
    for(;;){
        if (main_tick == 1){
            main_tick = 0;
            if (data_ready_flag == 1){
                // 2048 samples ready for FFT
                kiss_fft(fft_buffer, timedata, freqdata); // FFT transform time domain -> frequency domain
                data_ready_flag = 0;
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
                    
                }
            }

            setLED(bucket[0] / 5,bucket[1],bucket[2],bucket[3]);
        }
    }
}

