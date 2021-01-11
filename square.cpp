// MAT 240B Assignment 1
// Written by Stejara Dinulescu
// Due January 11 2021 by 12pm

// References: 
// Synthesis of Quasi-Bandlimited Analog Waveforms Using Frequency Modulation by Peter Schoffhauzer
// Class examples and code provided, sawtooth.cpp, triangle.cpp
// MAT240B Class example for making a simple Phasor and using inheritance to create a specific oscillator

#include <string>
#include "everything.h"  // mono

struct Phasor {
  float phase = 0;
  float w = 0;
  
  void set(float hertz) { 
    w = hertz / SAMPLE_RATE; 
  }

  float next() {
    float value = phase;

    phase += w;
    if (phase > 1) phase -= 1;
    return value;
  }

  float operator()() { return next(); }
};

struct Square : Phasor {
  float next() {
    float value = Phasor::next();
    value *= 2;
    if (value > 1)  //
      value = 1;
    if (value < 1)
      value = 0;
    
    value -= 0.5;

    return value/2;
  }
  float operator()() { return next(); }
};

struct BLSquare {
  float osc1; // output of the saw oscillator
  float osc2;
  float phase; // phase accumulator
  float pw; //pulse-width of square wave (0 to 1)
  float w; // normalized frequency
  float scaling; // scaling amount
  float DC; // DC compensation
  float norm; // normalization amount
  float const a0 = 2.5f; // precalculated coeffs
  float const a1 = -1.5f; // for HF compensation
  float in_hist; // delay for the HF filter
  float vf = 0.5; //virtual filter to get rid of nyquist ringing -> added from MAT240C class 10.21, changed to reflect 80% of Nyquist (but this isn't right I don't think)
  
  void set(float freq, float pulse_width) { // calculate w and scaling
    pw = pulse_width;
    w = freq/SAMPLE_RATE; // normalized frequency
    float n = 0.5f-w;
    scaling = vf * 13.0f * n*n*n*n; // calculate scaling
    DC = 0.376f - w*0.752f; // calculate DC compensation
    osc1 = 0.f; // reset oscillator
    osc2 = 0.f;
    phase = 0.f; // reset phase
    norm = 1.0f - 2.0f*w; // calculate normalization
  }
  
  // calculates each sample
  float operator()() { 
    // increment accumulator
      phase += 2.0f*w; if (phase >= 1.0f) phase -= 2.0f; //wrapping
      // calculate next sample
      osc1 = (osc1 + sin(2.0f*pi*(phase + osc1*scaling)))*0.5f;
      osc2 = (osc2 + sin(2.0f*pi*(phase + osc2*scaling + pw)))*0.5f;
      float sub = osc1 - osc2;
      // compensate HF rolloff
      float out = a0*sub + a1*in_hist; 
      in_hist = sub;
      //out = out + DC; // compensate DC offset
      return (out*norm * 0.2); // store normalized result
  }
};

int main() {
  // Square square;
  // square.set(440);

  BLSquare square;
  square.set(440, 0.5);
  
  double duration = 1; // set duration of output

  for (int i = 0; i < duration * SAMPLE_RATE; ++i) {
    mono(square()); // still aliasing and the harmonics are wrong
  }

  return 0;
}