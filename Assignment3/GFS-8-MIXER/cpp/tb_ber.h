// -----------------------------------------------------------------------------
// File         : tb_ber.h
// Description  : settings for GFSK BER testbench
// Author       : Sabih Gerez, University of Twente
// Creation date: April 1, 2018
// -----------------------------------------------------------------------------
// $Rev: 1$
// $Author: gerezsh$
// $Date: Mon Mar 13 00:08:42 CET 2023$
// $Log$
// -----------------------------------------------------------------------------


// -----------------------------------------------------------------------------
// Definitions depending on simulation structure
// -----------------------------------------------------------------------------

#define OUTPUT_FOLDER "./output_itpp"
#define SYMBOL_OFFSET 4
#define SLICER_OFFSET 0

// mixer size is also the size of the ADC
#define MIXER_WORD_LENGTH   11
#define MIXER_IWORD_LENGTH  6

// values below for interferer with amplitude 10
// #define MIXER_WORD_LENGTH   10
// #define MIXER_IWORD_LENGTH  5

#ifdef ARX_MIXER
  #include "mixer.h"

  #undef OUTPUT_FOLDER
  #undef SYMBOL_OFFSET
  #undef SLICER_OFFSET

  #define OUTPUT_FOLDER "./output_mixer"
  #define SYMBOL_OFFSET 4
  #define SLICER_OFFSET 2
#endif

#ifdef ARX_FILTER
  #include "filter.h"

  #define FILTER_WORD_LENGTH  7
  #define FILTER_IWORD_LENGTH 1

  #undef  OUTPUT_FOLDER
  #undef SYMBOL_OFFSET
  #undef SLICER_OFFSET

  #define OUTPUT_FOLDER "./output_filter"
  #define SYMBOL_OFFSET 4
  #define SLICER_OFFSET 2
#endif

#ifdef ARX_DEMODULATOR
  #include "demodulator.h"

  #define DEMODULATOR_WORD_LENGTH  9
  #define DEMODULATOR_IWORD_LENGTH 2

  #undef  OUTPUT_FOLDER
  #undef SYMBOL_OFFSET
  #undef SLICER_OFFSET

  #define OUTPUT_FOLDER "./output_demod"
  #define SYMBOL_OFFSET 4
  #define SLICER_OFFSET 3
#endif

#ifdef ARX_SLICER
  #include "slicer.h"
  
  #undef  OUTPUT_FOLDER
  #undef SYMBOL_OFFSET
  #undef SLICER_OFFSET

  #define OUTPUT_FOLDER "./output_slicer"
  #define SYMBOL_OFFSET 5
  #define SLICER_OFFSET 3
#endif
