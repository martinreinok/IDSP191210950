// -----------------------------------------------------------------------------
// (C) Bibix
// The content below includes confidential, proprietary information of
// Bibix. All use, disclosure, and/or reproduction is prohibited
// unless authorized in writing. All rights reserved.
// -----------------------------------------------------------------------------
// File         : gfsk.h
// Description  : definition of GFSK class
// Author       : Sabih Gerez, Bibix
//                based on work by Rene Moll (DSE)
// Creation date: December 7, 2011
// -----------------------------------------------------------------------------
// $Rev: 1$
// $Author: gerezsh$
// $Date: Mon Mar 13 00:08:42 CET 2023$
// $Log$
// -----------------------------------------------------------------------------


#include <itpp/itbase.h>
#include <itpp/itcomm.h>
#include <itpp/base/vec.h>

// -----------------------------------------------------------------------------
// Settings for the GFSK model
// -----------------------------------------------------------------------------

typedef struct {
  double dSample;     // Sample frequency
  double dIF;         // Intermediate frequency (input signal)
  double dIFOffset;   // Offset on the IF
  double dFInterf;    // Interferer frequency
  double dSymbol;     // Symbol interval
  double dMix;        // Internal mixing frequency
  int    iDecFactor;  // Decimation factor after LPF
} stPropertiesGFSK;

// -----------------------------------------------------------------------------
// Interface
// -----------------------------------------------------------------------------

class GFSK
{
private:
  int nSamplesSymbol;            // Number of samples per symbol
  double dH;                     // Modulation index
  stPropertiesGFSK stFreq;       // Frequency settings
  double dWantedIntegratedPhase; // total phase due to modulation
  double dInterfIntegratedPhase; // total phase due to modulation

  // Internal memory
  itpp::vec vInputFIRcoeff;
  itpp::vec vWantedFIRmem;
  itpp::vec vInterfFIRmem;
  itpp::vec vLPFcoeff;
  itpp::vec vLPFmemI;
  itpp::vec vLPFmemQ;
  itpp::vec vDAMmemI;
  itpp::vec vDAMmemQ;
  itpp::vec vSliceMem;

  // slicer memory, counter + output that is not updated every cycle
  int iSlicerCnt;
  int iSlicerOut;

public:
  GFSK(stPropertiesGFSK const &settings);

  void reset();

  void setH(double h);

  itpp::vec mod_wanted(itpp::vec const &time, itpp::bin const input);
  itpp::vec mod_interf(itpp::vec const &time, itpp::bin const input);

  void mixer(double const time, double const input, double &mixI, double &mixQ) const;
  void lpf(double const mixI, double const mixQ, double &lpfI, double &lpfQ);
  void demodulate(double const decI, double const decQ, double &dam);
  itpp::bin slicer(double const dam, int const offset);
};
