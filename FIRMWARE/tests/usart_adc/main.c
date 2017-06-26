#include <math.h>
//#define FIXED_POINT 32

#define NUM_OUTPUTS 4
//#define FIXED_POINT 32

#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>

#include "mini-printf.h"

#include "kiss_fft.h"
#include "HAL.h"


int main()
{
    uint32_t i;
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

    for(;;){
        if (data_ready_flag == 1){
            // 2048 samples ready for FFT
            //gpio_set(GPIOA, GPIO3);
            
            mini_snprintf(strDisp, 20, "%u", 111111);
            usart_print(strDisp);
            usart_send_blocking(USART2, '\n');
            
            for (i=0; i< NUM_SAMPLES; i++){
                val = timedata[i].r;
                mini_snprintf(strDisp, 20, "%u", val);
                usart_print(strDisp);
                usart_send_blocking(USART2, '\n');
            }
            
        }        
    }
}

