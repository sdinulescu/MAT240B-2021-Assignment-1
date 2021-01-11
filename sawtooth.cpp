// MAT 240B Assignment 1
// Written by Stejara Dinulescu
// Due January 11 2021 by 12pm

// References: 
// Assignment 2 of MAT240C class
// Synthesis of Quasi-Bandlimited Analog Waveforms Using Frequency Modulation by Peter Schoffhauzer
// Class examples and code provided (sine.cpp specifically)

#include <string>
#include "everything.h"  // mono

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
    float operator()() { 
      // increment accumulator
      phase += 2.0f*w; if (phase >= 1.0f) phase -= 2.0f; //wrapping
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
    
    double frequency = 440.0; // set frequency value
    if (argc > 1) {
      frequency = std::stof(argv[1]);
    }
    saw.set(frequency); // set frequency and gain of saw oscillator

    double duration = 1; // set duration of output
    if (argc > 2) {
      duration = std::stof(argv[2]);
    }

    // sound loop
    for (int i = 0; i < duration * SAMPLE_RATE; ++i) {
      mono(saw()); 
      
      // 80% of the Nyquist = 80% * (48000/2) = 19200 Hz should be upper limit
      // when i try using 0.8f as a multiplicative factor in several places, it just acts as a gain factor so I'm still getting spectral components past 17640 Hz. 
      // How to do this? Right now, I'm using 0.2 as a virtual filter factor, which severely attenuates frequencies past ~20kHz. 
      // This is closest, but don't think it's correct.
    }

    return 0;
  }