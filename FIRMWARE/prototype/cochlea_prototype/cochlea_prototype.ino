#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

// GUItool: begin automatically generated code
AudioInputAnalog         adc1;           //xy=227,187
AudioAnalyzeFFT1024      fft1024_1;      //xy=480,289
AudioConnection          patchCord1(adc1, fft1024_1);
// GUItool: end automatically generated code

//  LED pin identities
int pinLED0 = 35;
int pinLED1 = 36;
int pinLED2 = 37;
int pinLED3 = 20;
int pinLED4 = 21;
int pinLED5 = 22;
int pinLED6 = 23;

//  FFT reading array
float input_array[7] = {0,0,0,0,0,0,0};

//  FFT max value array
float max_array[7] = {0.01,0.01,0.01,0.01,0.01,0.01,0.01};

//  FFT value scaling array
float scale_array[7] = {0.08, 0.10, 0.14, 0.3624, 0.3068, 0.46, 0.7201};

//  LED output array
int led_array[7] = {0,0,0,0,0,0,0};

void setup() {
  AudioMemory(12);
  fft1024_1.windowFunction(AudioWindowNuttall1024);
  
  pinMode(pinLED0, OUTPUT);
  pinMode(pinLED1, OUTPUT);
  pinMode(pinLED2, OUTPUT);
  pinMode(pinLED3, OUTPUT);
  pinMode(pinLED4, OUTPUT);
  pinMode(pinLED5, OUTPUT);
  pinMode(pinLED6, OUTPUT);

}

void getSamples() {
  //  fills input_array[7] with FFT readings
    input_array[0] = fft1024_1.read(10,12);
    input_array[1] = fft1024_1.read(13,15);
    input_array[2] = fft1024_1.read(16,19);
    input_array[3] = fft1024_1.read(22,25);
    input_array[4] = fft1024_1.read(28,31);
    input_array[5] = fft1024_1.read(35,37);
    input_array[6] = fft1024_1.read(47,49);  
}

void applyMinimum(float minimum) {
  //  cuts off the lowest part of the FFT result (noise)
  int i;
  for (i=0;i<7;i++) {
    if (input_array[i] < minimum) {
      input_array[i] = 0; 
    }
  }
}

void keepMaximum() {
  //  keeps the maximum FFT values from input_array in max_array
  int i;
  for (i=0;i<7;i++) {
    if (input_array[i] > max_array[i]) {
      max_array[i] = input_array[i];
    }
  }
}

void scaleOutput() {
  //  scales led_array (0-255) based on scale_array
  int i;
  for (i=0;i<7;i++) {
    led_array[i] = (input_array[i] / scale_array[i]) * 255;
    if (led_array[i] > 255) {
      led_array[i] = 255;
    }
  }
}

void updateLEDs() {
  //  updates the LEDs with the current led_array values
  analogWrite(pinLED0, led_array[0]);
  analogWrite(pinLED1, led_array[1]);
  analogWrite(pinLED2, led_array[2]);
  analogWrite(pinLED3, led_array[3]);
  analogWrite(pinLED4, led_array[4]);
  analogWrite(pinLED5, led_array[5]);
  analogWrite(pinLED6, led_array[6]);  
}

void loop() {
  int i;
  if (fft1024_1.available()) {
    getSamples();
    applyMinimum(0.01);
    keepMaximum();
    scaleOutput();
    updateLEDs();
    Serial.print("FFT raw output: ");
    for (i=0;i<7;i++) {
      Serial.print(input_array[i],4);
      Serial.print("\t");
      Serial.print(led_array[i]);
      Serial.print("\t\t");
    }
    Serial.println();
  }
}
