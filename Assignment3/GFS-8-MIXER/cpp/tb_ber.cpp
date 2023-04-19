// -----------------------------------------------------------------------------
// (C) Bibix
// The content below includes confidential, proprietary information of
// Bibix. All use, disclosure, and/or reproduction is prohibited
// unless authorized in writing. All rights reserved.
// -----------------------------------------------------------------------------
// File         : tb_ber.cpp
// Description  : top-level C++ file for BER simulations of GFSK demo
// Author       : Sabih Gerez, Bibix
//                based on work by Rene Moll (DSE)
// Creation date: December 7, 2011
// -----------------------------------------------------------------------------
// $Rev: 1$
// $Author: gerezsh$
// $Date: Mon Mar 13 00:08:42 CET 2023$
// $Log$
// -----------------------------------------------------------------------------


// -----------------------------------------------------------------------------
// GFSK simulation model
//
// Allows combination of Arx components with ideal components
// 
// -----------------------------------------------------------------------------

#include <iostream>
#include <fstream>
#include <iomanip>
#include "math.h"

#include <itpp/itbase.h>
#include <itpp/itcomm.h>
#include <itpp/base/vec.h>
#include <itpp/signal/source.h>
#include <itpp/fixed/fix.h>

#include "gfsk.h"

// for command-line option processing
#include <unistd.h>

// include files containing fixed-point parameters, etc.
#include "tb_ber.h"

/**
 * Main function
 *
 * Containts a BER simulator for the GFSK class
 * Input, output and BER values are written to file
 */

int main(int argc, char* argv[])
{
  // make sure that the output directory exists
  int mkdir_res = system(("mkdir -p " + std::string(OUTPUT_FOLDER)).c_str());
  if (mkdir_res) {
     std::cout << "Error when creating output directory!" << std::endl;
     return 1;
  }

  // create output files
  std::fstream oFileBER(
    (std::string(OUTPUT_FOLDER) + "/bits.err").c_str(),
    std::ios_base::out | std::ios_base::trunc
  );

  std::fstream oFileIn(
    (std::string(OUTPUT_FOLDER) + "/bits.in").c_str(),
    std::ios_base::out | std::ios_base::trunc
  );
  std::fstream oFileOut(
    (std::string(OUTPUT_FOLDER) + "/bits.out").c_str(),
    std::ios_base::out | std::ios_base::trunc
  );
  std::fstream oFileModOut(
    (std::string(OUTPUT_FOLDER) + "/mod.out").c_str(),
    std::ios_base::out | std::ios_base::trunc
  );
  std::fstream oFileMixerIn(
    (std::string(OUTPUT_FOLDER) + "/mixer.in").c_str(),
    std::ios_base::out | std::ios_base::trunc
  );
  std::fstream oFileMixerIn32(
    (std::string(OUTPUT_FOLDER) + "/mixer_i32.in").c_str(),
    std::ios_base::out | std::ios_base::trunc
  );
  std::fstream oFileMixerOutI(
    (std::string(OUTPUT_FOLDER) + "/mixer_i.out").c_str(),
    std::ios_base::out | std::ios_base::trunc
  );
  std::fstream oFileMixerOutQ(
    (std::string(OUTPUT_FOLDER) + "/mixer_q.out").c_str(),
    std::ios_base::out | std::ios_base::trunc
  );
  std::fstream oFileLPFOutI(
    (std::string(OUTPUT_FOLDER) + "/lpf_i.out").c_str(),
    std::ios_base::out | std::ios_base::trunc
  );
  std::fstream oFileLPFOutQ(
    (std::string(OUTPUT_FOLDER) + "/lpf_q.out").c_str(),
    std::ios_base::out | std::ios_base::trunc
  );
  std::fstream oFileDamOut(
    (std::string(OUTPUT_FOLDER) + "/dam.out").c_str(),
    std::ios_base::out | std::ios_base::trunc
  );
  std::fstream oFileSlcOut(
    (std::string(OUTPUT_FOLDER) + "/slc.out").c_str(),
    std::ios_base::out | std::ios_base::trunc
  );

  if (!oFileBER.good()
      || !oFileIn.good() || !oFileOut.good() || !oFileMixerIn.good()
      || !oFileMixerOutI.good() || !oFileMixerOutQ.good()
      || !oFileLPFOutI.good() || !oFileLPFOutQ.good() 
      || !oFileDamOut.good() || !oFileSlcOut.good() || !oFileMixerIn32.good()
     ) {
    std::cout << "Error opening/creating output file(s)!" << std::endl;
    return 1;
  }

  /*
   * Parameters
   */

  // GFSK model settings
  
  stPropertiesGFSK st_gfsk = {
    8000000,  // Sample frequency
    1000000,  // Intermediate frequency (input signal)
          0,  // Offset on the IF
    3000000,  // interferer frequency
     500000,  // Symbol interval
    1000000,  // Internal mixing frequency
          4   // decimation factor
  };

  // Simulation settings
  int nSymbols = 100000;         // Number of symbols to simulate
  int nPipeline = SYMBOL_OFFSET; // System delay due to the pipeline
  int nOffset = SLICER_OFFSET;   // Slicer offset

  // list of SNRs to simulate
  itpp::vec vSNR = itpp::linspace(0, 19, 20);                       
  
  // simulation parameters
  bool dump_mode = false;
  int aux_integer;
  double snr_level;
  double amp_interf = 0.0;
  
  // parse command-line arguments (-s <SNR level> -b <# bits>)
  int c;

  while ((c = getopt (argc, argv, "ds:b:o:p:i:")) != -1)
    switch (c) {
      case 'd': 
        dump_mode = true;
        break;
      case 's': 
        sscanf(optarg, "%lf", &snr_level);
        vSNR.set_size(1, false);
        vSNR(0) = snr_level;
        break;
      case 'b':
        sscanf(optarg, "%d", &aux_integer);
        nSymbols = aux_integer;
        break;
      case 'o':
        sscanf(optarg, "%d", &aux_integer);
        nOffset = aux_integer;
        break;
      case 'p':
        sscanf(optarg, "%d", &aux_integer);
        nPipeline = aux_integer;
        break;
      case 'i':
        sscanf(optarg, "%lf", &amp_interf);
        break;
      case '?':
        std::cerr << 
          "Error in argument processing. Supported options are:" << std::endl;
        std::cerr << "-d (dump mode, no arguments)" << std::endl;
        std::cerr << "-s <float val> (SNR level)" << std::endl;
        std::cerr << "-b <int val> (number of bits)" << std::endl;
        std::cerr << "-o <int val> (slicer offset)" << std::endl;
        std::cerr << "-p <int val> (symbol offset/pipeline depth)" << std::endl;
        std::cerr << "-i <float val> (interferer amplitude)" << std::endl;
        exit(-1);
    }

  std::cout << "Starting GFSK simulations with the following parameters" 
    << std::endl;
  std::cout << "Number of bits = " << nSymbols << std::endl;
  std::cout << "SNR levels: ";
  for (int i = 0; i < vSNR.length(); i++)
    std::cout << vSNR(i) << " ";
  std::cout << std::endl << std::endl;

  // Initialize random generator
  // itpp::RNG_randomize();
  // use fixed reset value for repeatable simulations
  itpp::RNG_reset(468097531);

  // Time vector used for the simulator
  // filled/updated during simulation
  itpp::vec vTime((st_gfsk.dSample / st_gfsk.dSymbol));
  vTime.clear();

  /*
   * Initialize objects
   */

  // Channel setup
  itpp::AWGN_Channel oChannel;

  // GFSK setup
  GFSK o_gfsk(st_gfsk);

  // Arx components
#ifdef ARX_MIXER
  mixer oMixer;

  i32 nMixInput, nMixOutputI, nMixOutputQ;
#endif
#ifdef ARX_FILTER
  filter oFilter;

  i32 nFilterOutputI, nFilterOutputQ;
#endif
#ifdef ARX_DEMODULATOR
  demodulator oDemodulator;

  i32 nDemodulatorOutput;
#endif
#ifdef ARX_SLICER
  slicer oSlicer;

  u32 nSlicerOutput;
#endif

  /*
   * Simulator
   */

  // Input buffer to compensate for system delay (Used to compare output)
  itpp::Vec<int> vInputBufferCycle(nPipeline+1);
  vInputBufferCycle.clear();

  // BER data
  itpp::vec vError(vSNR.length());
  vError.clear();

  // Internal/intermediate variables
  itpp::bin bInput;
  itpp::bin bInterf;
  itpp::bin bOutput;
  double dMixerI, dMixerQ;
  double dFilterI = 0;
  double dFilterQ = 0;
  double dDemodulator;

  // Synchronization variables
  int nCycle;
  int nSymbolsReceived;

  // Loop for each SNR
  for (int i = 0; i < vSNR.length(); i++) {
    int nSNR = vSNR(i);

    // Reset GFSK's memory
    o_gfsk.reset();

    // Reset Arx component's memory
#ifdef ARX_MIXER
    oMixer.reset();
#endif
#ifdef ARX_FILTER
    oFilter.reset();
#endif
#ifdef ARX_DEMODULATOR
    oDemodulator.reset();
#endif
#ifdef ARX_SLICER
    oSlicer.reset();
#endif

    // Reset synchronization counters
    nCycle = 0;
    nSymbolsReceived = 0;

#ifdef DEBUG
    double sig_power = 0;
    double noise_power = 0;
    int cum_len = 0;
#endif
    

    // Reset input buffer
    // Note: this is not really needed due to the shifting
    // in of new data however eases debuging
    vInputBufferCycle.clear();
      
    // Apply AWGN channel.
    // signal power is constant
    // average value of a sine 1/sqrt(2), squared -> 0.5
    // multiply by number of samples to get energy per bit
    // double dPs = 0.5*(st_gfsk.dSample / st_gfsk.dSymbol);
    double dPs = 0.5;
    
    // Noise power
    double dN = itpp::inv_dB(itpp::dB(dPs) - double(nSNR));
    // multiply by 4 to compensate for modulation bandwith w.r.t.
    // system bandwidth
    oChannel.set_noise(4*dN);

    for (int j = 0; j < nSymbols; j++) {
      // Generate input symbol + interferer symbol
      bInput  = itpp::randb(1).get(0);
      bInterf = itpp::randb(1).get(0);
          
      // Store bit for future BER calculation
      vInputBufferCycle.shift_right(bInput);

      // Calculate current time
      vTime(0) = j/st_gfsk.dSymbol;

      for (int k = 1; k < vTime.length(); k++) {
        vTime(k) = vTime(k-1) + (1/st_gfsk.dSample);
      }

      // Modulate one symbol
      itpp::vec v_wanted = o_gfsk.mod_wanted(vTime, bInput);
      itpp::vec v_interf = o_gfsk.mod_interf(vTime, bInterf);

      itpp::vec vTX = v_wanted + (v_interf * amp_interf);
 
      if (dump_mode == true) {
         oFileIn  << int(bInput)  << std::endl;
         for (int k = 0; k < vTX.length(); k++) {
           oFileModOut << vTX(k) << std::endl;
         }
      }

      itpp::vec vRX = oChannel(vTX);
      
#ifdef DEBUG
      double sum_tx = itpp::sum(itpp::sqr(vTX));
      double sum_rx = itpp::sum(itpp::sqr(vRX));

      int veclen = itpp::length(vTX);

      sig_power = sig_power + sum_tx;
      noise_power = noise_power + (sum_rx - sum_tx);
      cum_len = cum_len + veclen;
      
      std::cout << "dN = " << dN << std::endl;
      std::cout << "Signal Power = " << sig_power/cum_len << std::endl;
      std::cout << "Noise Power = " << noise_power/cum_len << std::endl;
#endif

      // Cycle-true simulation for the Arx modules
      // nested loop: 
      // - outer loop at sampling freq. for demodulator & slicer
      // - inner loop at sampling freq. for ADC, mixer, LPF
      for (int l = 0; l < vRX.length()/st_gfsk.iDecFactor; l++) {
        for (int m = 0; m < st_gfsk.iDecFactor; m++) {
          int k = l*st_gfsk.iDecFactor + m;
          
          // ADC model
          // use IT++ fixed-point data type 
          itpp::Fix aInput (vRX(k),
                            MIXER_WORD_LENGTH - MIXER_IWORD_LENGTH,
                            MIXER_WORD_LENGTH,
                            itpp::TC,
                            itpp::SAT,
                            itpp::RND_ZERO);
          double dInput = aInput.unfix();
          
          // std::cout << "before ADC = " << vRX(k) << std::endl;
          // std::cout << "after ADC = " << dInput << std::endl;
          // double dInput = vRX(k);
          // double dInput = 1.0;

          /*
           * Mixer
           */

#ifdef ARX_MIXER
          nMixInput = double_to_signed32(
            dInput,
            MIXER_WORD_LENGTH,
            MIXER_IWORD_LENGTH
          );

          if (dump_mode == true) {
             oFileMixerIn32 << nMixInput << std::endl;
          }

          // for the time being, the mixer has a constant phase
          // correction of zero
          oMixer.run(nMixInput, 0, nMixOutputI, nMixOutputQ);

          dMixerI = signed_to_double(
            nMixOutputI,
            MIXER_WORD_LENGTH,
            MIXER_IWORD_LENGTH
          );
          dMixerQ = signed_to_double(
            nMixOutputQ,
            MIXER_WORD_LENGTH,
            MIXER_IWORD_LENGTH
          );
#else
          o_gfsk.mixer(vTime(k), dInput, dMixerI, dMixerQ);
#endif

          if (dump_mode == true) {
             oFileMixerIn   << dInput    << std::endl;
             oFileMixerOutI << dMixerI   << std::endl;
             oFileMixerOutQ << dMixerQ << std::endl;
          }

          /*
           * Low pass filter
           */

#ifdef ARX_FILTER
          oFilter.run(nMixOutputI, nMixOutputQ, nFilterOutputI, nFilterOutputQ);

          dFilterI = signed_to_double(
            nFilterOutputI,
            FILTER_WORD_LENGTH,
            FILTER_IWORD_LENGTH
          );
          dFilterQ = signed_to_double(
            nFilterOutputQ,
            FILTER_WORD_LENGTH,
            FILTER_IWORD_LENGTH
          );
#else
          o_gfsk.lpf(
            dMixerI,  dMixerQ, 
            dFilterI, dFilterQ
          );
#endif

          if (dump_mode == true) {
            oFileLPFOutI << std::setprecision(10) << dFilterI << std::endl;
            oFileLPFOutQ << std::setprecision(10) << dFilterQ << std::endl;
          }
        } // end of fast clock section (m)


        /*
         * Delay and multiply
         */

#ifdef ARX_DEMODULATOR
        // float dem_out_tmp;

        // oDemodulator.run(
        //   float(dFilterI),
        //   float(dFilterQ),
        //   dem_out_tmp
        // );
        // dDemodulator = dem_out_tmp;

        oDemodulator.run(
          nFilterOutputI,
          nFilterOutputQ,
          nDemodulatorOutput
        );

        dDemodulator = signed_to_double(
          nDemodulatorOutput,
          DEMODULATOR_WORD_LENGTH,
          DEMODULATOR_IWORD_LENGTH
        );
#else
        o_gfsk.demodulate(
          dFilterI,
          dFilterQ,
          dDemodulator
        );
#endif

        if (dump_mode == true) {
           oFileDamOut << dDemodulator << std::endl;
        }

        /*
         * Slicer
         */

#ifdef ARX_SLICER
        oSlicer.run(
          nDemodulatorOutput,
          u32(nOffset),
          nSlicerOutput
        );

        bOutput     = (nSlicerOutput == 1);
#else
        bOutput = o_gfsk.slicer(dDemodulator, nOffset);
#endif

        if (dump_mode == true) {
          oFileSlcOut   << ((int(bOutput) == 0) ? -1 : 1) << std::endl;
        }

        } // end of slow clock section (l)

        // allow for latency to pass
        if (nCycle >= nPipeline) {
           nSymbolsReceived++;
           if (dump_mode == true) {
              oFileOut << bOutput << std::endl;
           }
           if (bOutput != vInputBufferCycle(nPipeline)) {
              vError(i) = vError(i) + 1;
              // 1000 errors is more than enough
              if (vError(i) >= 1000)
                 break;
           }
        }

        nCycle++;

      } // end of symbol loop (j)

      // Now that the number of symbols received AND processed are known,
      // compute the BER. 
      vError(i) = vError(i) / double(nSymbolsReceived);

      std::cout << std::setw(2) << nSNR << ": " << vError(i);
      std::cout << " (" << nSymbolsReceived << ")" << std::endl;
      
      // stop below 1e-4
      if (vError(i) < 1e-4) 
         break;
    } // end of SNR loop (i)

    // Write BER to file
    for (int i = 0; i < vError.length(); i++) {
      oFileBER << vSNR(i) << ": " << vError(i) << std::endl;
    }

    // estimate 1e-3 point, only when not in dump mode
    if (dump_mode == false) {
       int prev_snr = -1;
       double prev_ber = 1.0;;
       double sens_level = -1;
       for (int i = 0; i < vError.length(); i++) {
         if (vError(i) < 1e-3) {
            sens_level = prev_snr + 
              (1e-3 - prev_ber)*(vSNR(i) - prev_snr)/(vError(i) - prev_ber);
            std::cout << std::endl << "BER = 1e-3 @ " 
              << std::setprecision(4) << "SNR = " << sens_level 
              << " dB" << std::endl;
            break;
         }

         prev_snr = vSNR(i);
         prev_ber = vError(i);
       }
    }

  return 0;
}
