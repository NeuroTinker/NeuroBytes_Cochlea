#include <errno.h>
#include <stdio.h>
#include <unistd.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/stm32/adc.h>
#include <libopencm3/stm32/dac.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/usart.h>

#define KISS_FFT_SCALAR double
#include "kiss_fft.h"

#include "HAL.h"
#define LED_DISCO_GREEN_PORT GPIOD
#define LED_DISCO_GREEN_PIN GPIO12

#define USART_CONSOLE USART2

int main(void)
{
	int i;
    int count = 0;

    kiss_fft_cpx freqdata[1024];
    kiss_fft_cfg buffer = kiss_fft_alloc(1024, 0, 0, 0);

    uint16_t bucket_divs[5] = {1,25,40,55,95};
    uint8_t bucket_i = 0;
    double bucket[5];
    double bucket_avg[5] = {0,0,0,0,0};
    double led_avg[4] = {0,0,0,0};
    double led_val = 0;
    double avg = 0;

	clock_setup();
    gpio_setup();
	usart_setup();
    tim_setup();
	printf("cochlea online\n");
	adc_setup();
    systick_setup(100);
	setLED(100,200,100, 100);
	while (1) {
        if (data_ready_flag == 1){
            printf("%d\n", 111111);
            kiss_fft(buffer, timedata, freqdata);
            for (i=0; i<513; i++){
                printf("%f\n", freqdata[i].r);
                if (freqdata[i].r < 0){
                    freqdata[i].r *= -1;
                }
            }

            bucket_i = 0;
            for(i=bucket_divs[0]; i<=bucket_divs[4]; i++){
                bucket[bucket_i] += freqdata[i].r;
                if (i == bucket_divs[bucket_i+1]){
                    bucket[bucket_i] /= bucket_divs[bucket_i+1] - bucket_divs[bucket_i];
                    bucket[bucket_i] /= 10;
                    bucket_avg[bucket_i] -= bucket_avg[bucket_i] / 2;
                    bucket_avg[bucket_i] += bucket[bucket_i] / 2;
                    //printf("%d %f\n", bucket_i, bucket[bucket_i]);
                    bucket_i += 1;
                    if (bucket_i == 4)
                            break;
                }
            }
            avg = (bucket[0] + bucket[1] + bucket[2] + bucket[3]) / 4;
            //printf("%f\n", bucket[2]);
            led_val = (bucket[0] - avg + 20) * 2;
            led_avg[0] -= led_avg[0] / 2;
            led_avg[0] += led_val / 2;
            led_val = (bucket[1] - avg) * 2;
            led_avg[1] -= led_avg[1] / 2;
            led_avg[1] += led_val / 2;
            led_val = (bucket[2] - avg + 10) * 2;
            led_avg[2] -= led_avg[2] / 2;
            led_avg[2] += led_val / 2;
            led_val = (bucket[3] - avg) * 1;
            led_avg[3] -= led_avg[3] / 2;
            led_avg[3] += led_val / 2;
            setLED((bucket[0] * 2) - 30, (bucket[1] - 50) * 2, (bucket[2] - 100) * 2, (bucket[3] - 50) * 2 );
            //setLED((bucket[0] - avg + 15) * 2, (bucket[1] - avg + 20) * 2, (bucket[2] - avg + 20) * 2, (bucket[3] - avg + 0) * 2);
            //setLED(led_avg[0], led_avg[1], led_avg[2], led_avg[3]);
            data_ready_flag = 0;
        }
		//printf("%f\n", timedata[count].r);
	}

	return 0;
}
