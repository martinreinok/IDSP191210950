// The content below includes confidential, proprietary information of
// Bibix. All use, disclosure, and/or reproduction is prohibited
// unless authorized in writing. All rights reserved.
// -----------------------------------------------------------------------------
// File         : gfsk.cpp
// Description  : member functions of GFSK class
// Author       : Sabih Gerez, Bibix
//                based on work by Rene Moll (DSE)
// Creation date: December 7, 2011
// -----------------------------------------------------------------------------
// $Rev: 1$
// $Author: gerezsh$
// $Date: Mon Mar 13 00:08:42 CET 2023$
// $Log$
// -----------------------------------------------------------------------------


#include "gfsk.h"

GFSK::GFSK(stPropertiesGFSK const &settings) : dH(0.5) 
{
  // Copy the settings into the object
  this->stFreq = settings;

  // Calculate the number of samples per symbol
  this->nSamplesSymbol = settings.dSample / settings.dSymbol;

  /*
   * Initialze internal memory
   */

  // support two modulators: wanted + interferer
  this->vWantedFIRmem.set_length(4*16+1);
  this->vWantedFIRmem.clear();

  this->vInterfFIRmem.set_length(4*16+1);
  this->vInterfFIRmem.clear();

  this->vLPFmemI.set_length(29);
  this->vLPFmemI.clear();

  this->vLPFmemQ.set_length(29);
  this->vLPFmemQ.clear();

  this->vDAMmemI.set_length(4);
  this->vDAMmemI.clear();

  this->vDAMmemQ.set_length(4);
  this->vDAMmemQ.clear();

  this->vSliceMem.set_length(4);
  this->vSliceMem.clear();

  /*
   * Calculate input filter coefficients
   */

  // Sample time
  double dTs = 1/settings.dSample;

  // Spawn the filter over 4 symbols
  int nFilterLength = (4.0 / settings.dSymbol) / dTs + 1;

  // Generate coefficients
  itpp::vec vGaussCoeff(nFilterLength);

  double dSigma    = sqrt(log(2))/(2*itpp::pi*(settings.dSymbol/2));
  double dTimeInst = 0;

  for (int i = 0; i < nFilterLength; i++) {
    dTimeInst = (-1*double(nFilterLength-1)/2 + i) * dTs;

    vGaussCoeff(i) = 1.0/(sqrt(2.0*itpp::pi)*dSigma) * exp(-1.0/2.0*pow(dTimeInst/dSigma, 2));
  }

  // Normailze and store the coefficients
  this->vInputFIRcoeff = vGaussCoeff/itpp::sum(vGaussCoeff);

  /*
   * Calculate demodulation filter coefficients
   */
  itpp::vec vB(29);
  vB.set("-1 -2 0 4 8 8 0 -16 -32 -32 0 64 141 206 232 206 141 64 0 -32 -32 -16 0 8 8 4 0 -2 -1");

  this->vLPFcoeff = vB/itpp::sum(vB);
}

void GFSK::reset()
{
  this->vWantedFIRmem.clear();
  this->vInterfFIRmem.clear();
  this->vLPFmemI.clear();
  this->vLPFmemQ.clear();
  this->vDAMmemI.clear();
  this->vDAMmemQ.clear();
  this->vSliceMem.clear();
  
  this->iSlicerCnt = 0;
  this->iSlicerOut = 0;

  dWantedIntegratedPhase = 0.0;
  dInterfIntegratedPhase = 0.0;
}

void GFSK::setH(double h)
{
  if (h == 0) {
    return;
  }

  this->dH = h;
}

/**
 * Modulator (for streaming)
 * 
 * Generates a modulated signal represeting the input symbol for given carrier
 */

// modulate at wanted frequency + offset
itpp::vec GFSK::mod_wanted(itpp::vec const &time, itpp::bin const input) 
{
  // Convert 0,1 to -1,1
  int nInput = 2*(int(input)-0.5);

  // Perform filtering and integration
  itpp::vec vPhaseSeq(this->nSamplesSymbol);
  double FIRresult;
  double f_carr = this->stFreq.dIF + this->stFreq.dIFOffset;

  for(int i = 0; i < this->nSamplesSymbol; i++) {
    this->vWantedFIRmem.shift_right(nInput, 1);
    
    // filter
    FIRresult = itpp::dot(this->vInputFIRcoeff, this->vWantedFIRmem);

    // integrate
    this->dWantedIntegratedPhase = this->dWantedIntegratedPhase + 
                                   (FIRresult/this->nSamplesSymbol);
    vPhaseSeq(i) = this->dWantedIntegratedPhase;
  }

  // Phase for the carrier
  itpp::vec vPhase = 2 * itpp::pi * f_carr * time;

  // Phase due to input
  itpp::vec vPhaseMod = itpp::pi * this->dH * vPhaseSeq;

  // Modulated signal
  itpp::vec vMod = cos(vPhase + vPhaseMod);

  return vMod;
}

// modulate at interferer frequency
itpp::vec GFSK::mod_interf(itpp::vec const &time, itpp::bin const input) 
{
  // Convert 0,1 to -1,1
  int nInput = 2*(int(input)-0.5);

  // Perform filtering and integration
  itpp::vec vPhaseSeq(this->nSamplesSymbol);
  double FIRresult;
  double f_carr = this->stFreq.dFInterf;

  for(int i = 0; i < this->nSamplesSymbol; i++) {
    this->vInterfFIRmem.shift_right(nInput, 1);
    
    // filter
    FIRresult = itpp::dot(this->vInputFIRcoeff, this->vInterfFIRmem);

    // integrate
    this->dInterfIntegratedPhase = this->dInterfIntegratedPhase + 
                                   (FIRresult/this->nSamplesSymbol);
    vPhaseSeq(i) = this->dInterfIntegratedPhase;
  }

  // Phase for the carrier
  itpp::vec vPhase = 2 * itpp::pi * f_carr * time;

  // Phase due to input
  itpp::vec vPhaseMod = itpp::pi * this->dH * vPhaseSeq;

  // Modulated signal
  itpp::vec vMod = cos(vPhase + vPhaseMod);

  return vMod;
}

/**
 * Mixer
 *
 * Mixes input signal with the given mixer frequency
 */
void GFSK::mixer(double const time, double const input, double &mixI, double &mixQ) const
{
  double dIosc =  cos(2*itpp::pi*this->stFreq.dMix*time);
  double dQosc = -sin(2*itpp::pi*this->stFreq.dMix*time);

  mixI = dIosc * input;
  mixQ = dQosc * input;
}

/**
 * Low pass filter
 */
void GFSK::lpf(double const mixI, double const mixQ, double &lpfI, double &lpfQ)
{
  // Perform filtering
  this->vLPFmemI.shift_right(mixI, 1);
  this->vLPFmemQ.shift_right(mixQ, 1);
  
  lpfI = itpp::dot(this->vLPFcoeff, this->vLPFmemI);
  lpfQ = itpp::dot(this->vLPFcoeff, this->vLPFmemQ);
}

/**
 * Demodulation
 * 
 * Uses delay and multiply stragedy
 */
void GFSK::demodulate(double const decI, double const decQ, double &dam)
{
  // delay and multiply
  dam = decQ * this->vDAMmemI(3) - decI * this->vDAMmemQ(3);

  // Save current symbol for the next demodulation
  this->vDAMmemI.shift_right(decI);
  this->vDAMmemQ.shift_right(decQ);
}

itpp::bin GFSK::slicer(double const dam, int const offset)
{
  // shift in new demodulator output
  this->vSliceMem.shift_right(dam);
  
  // slice on the basis of the sum of all samples
  if (this->iSlicerCnt == offset) {
     double dSum = itpp::sum(this->vSliceMem);
     this->iSlicerOut = (dSum > 0) ? 1 : 0;
  }

  // update counter
  this->iSlicerCnt = (this->iSlicerCnt + 1) % 4;

  return (this->iSlicerOut);
}
