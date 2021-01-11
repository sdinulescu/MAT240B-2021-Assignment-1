// MAT 240B Assignment 1
// Written by Stejara Dinulescu
// Due January 11 2021 by 12pm

// References:
// sine-sweep.cpp

#include "everything.h"

struct BLSaw {
  float output; // output of the saw oscillator
  //float amplitude; // gain of oscillator output
  float phase; // phase accumulator
  float w; // normalized frequency
  float scaling; // scaling amount
  float DC; // DC compensation
  float norm; // normalization amount
  float const a0 = 2.5f; // precalculated coeffs
  float const a1 = -1.5f; // for HF compensation
  float in_hist; // delay for the HF filter
  float vf = 0.2; //virtual filter to get rid of nyquist ringing -> added from MAT240C class 10.21, changed to reflect 80% of Nyquist (but this isn't right I don't think)
  
  void set(float freq) { // calculate w and scaling
    //amplitude = gain; // set oscillator amplitude
    w = freq/SAMPLE_RATE; // normalized frequency
    float n = 0.5f-w;
    scaling = vf * 13.0f * n*n*n*n; // calculate scaling
    DC = 0.376f - w*0.752f; // calculate DC compensation
    output = 0.f; // reset oscillator
    phase = 0.f; // reset phase
    norm = 1.0f - 2.0f*w; // calculate normalization
  }
  
  // calculates each sample
  float operator()(float speed) { 
    // increment accumulator
    phase += 2.0f*w; 
    if (phase >= 1.0f) {
      phase -= 2.0f; //wrapping
      w += 0.00001 * speed;
    }
    // calculate next sample
    output = (output + sin(2.0f*pi*(phase + output*scaling)))*0.5f;
    // compensate HF rolloff
    float out = a0*output + a1*in_hist; 
    in_hist = output;
    out = out + DC; // compensate DC offset
    return (out*norm); // store normalized result
  }
};

int main(int argc, char* argv[]) {
  BLSaw saw;
  float phase = 0;
  saw.set(440);
  float duration = 10;
  for (int i = 0; i < duration * SAMPLE_RATE; i++) {
    mono(saw(0.4) * 0.707);
  }
}