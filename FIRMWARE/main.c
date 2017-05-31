#include <math.h>
#define FIXED_POINT 32

#include "kiss_fft.h"
#include "HAL.h"

#define NUM_BUCKETS     1024
#define NYQUIST_F       NUM_BUCKETS / 2
#define MAIN_TICK_TIME  5000 // 5 ms
#define UPDATE_TIME     50000  // microseconds update time 50 Hz = 10 main ticks
#define UPDATE_TICKS    = UPDATE_TIME / MAIN_TICK_TIME
#define SAMPLE_TIME     100 // sample every 100 us, 10 kHz
#define NUM_SAMPLES     UPDATE_TIME / SAMPLE_TIME


int main()
{
    clock_setup();
    systick_setup(100);

    kiss_fft_cpx timedata[NUM_SAMPLES]; // time domain samples
    kiss_fft_cpx freqdata[NUM_BUCKETS]; // frequency domain samples
    // initialize FFT buffer
    kiss_fft_cfg fft_buffer = kiss_fft_alloc(NUM_BUCKETS, 0, 0, 0);

    for(;;){
        if (main_tick == 1){
            main_tick = 0;

            kiss_fft(fft_buffer, timedata, freqdata); // FFT transform time domain -> frequency domain
        }
    }
}