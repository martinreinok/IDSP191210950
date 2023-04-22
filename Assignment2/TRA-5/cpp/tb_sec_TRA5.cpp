// -----------------------------------------------------------------------------
// File         : tb_sec_generic.cpp
// Description  : generic C++ testbench code for SEC design
// Author       : Sabih Gerez, University of Twente
// Creation date: March 16, 2018
// -----------------------------------------------------------------------------
// $Rev: 1$
// $Author: gerezsh$
// $Date: Mon Feb 20 23:22:13 CET 2023$
// $Log$
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

// for command-line option processing
#include <unistd.h>

// auxiliary macros to convert a name to a string 
#define xstr(mac) str(mac)
#define str(mac) #mac

// main function
int main(int argc, char* argv[])
{
  // parse command-line arguments (-s <SNR level> -b <# bits>)
  int c;

  // amplitudes of the two input sources
  double amp_low  = 1.0;
  double amp_high = 1.0;

  while ((c = getopt (argc, argv, "l:h:")) != -1)
    switch (c) {
      case 'l': 
        sscanf(optarg, "%lf", &amp_low);
        break;
      case 'h':
        sscanf(optarg, "%lf", &amp_high);
        break;
      default:
        std::cerr << 
          "error in argument processing, use any of -l <val> -h <val>" << 
          std::endl;
        exit(-1);
    }

  // create output files, both input and output streams to be dumped
  // in integer format and floating point format
  // std::fstream oFileIn(IN_FILE_NAME,
  std::fstream oFileIn(xstr(TOP_DESIGN) "_in_int.dat",
                       std::ios_base::out | std::ios_base::trunc);
  std::fstream oFileOut(xstr(TOP_DESIGN) "_out_int.dat",
                        std::ios_base::out | std::ios_base::trunc);
  std::fstream oFileInFix(xstr(TOP_DESIGN) "_in_fixp.dat",
                       std::ios_base::out | std::ios_base::trunc);
  std::fstream oFileOutFix(xstr(TOP_DESIGN) "_out_fixp.dat",
                       std::ios_base::out | std::ios_base::trunc);

  // check that files could be opened
  if (!oFileIn.good() || !oFileOut.good() ||
      !oFileInFix.good() || !oFileOutFix.good()
     ) {
    std::cout << "Error opening/creating output file(s)!" << std::endl;
    return 1;
  }

  std::cout << "*** Start of simulation of: " xstr(TOP_DESIGN) << std::endl;

  std::cout << "==> amp_low  = " << amp_low << std::endl;
  std::cout << "==> amp_high = " << amp_high << std::endl;

  // vector to hold time instants
  itpp::vec vTime = itpp::linspace(0, 199, 200);

  // sinusoidal signal source
  itpp::vec vSource = amp_low  * cos(itpp::pi * 0.15 * vTime) + 
                      amp_high * cos(itpp::pi * 0.60 * vTime);

  // instantiate hardware
  TOP_DESIGN hardware; 
  // and reset it
  hardware.reset();

  // iterate over all samples
  for (int k = 0; k < vSource.length(); k++) {
    // analog-to-digital conversion: go to IT++ fixed-point and then
    // back to double
    itpp::Fix fixp_input (vSource(k),
                          WORD_LENGTH - INT_WORD_LENGTH, // fractional bits
                          WORD_LENGTH,
                          itpp::TC,                      // two's complement
                          itpp::SAT,                     // saturation
                          itpp::RND_ZERO);               // rounding to zero
    double d_input = fixp_input.unfix();
    k++;
    itpp::Fix fixp_input2 (vSource(k),
                          WORD_LENGTH - INT_WORD_LENGTH, // fractional bits
                          WORD_LENGTH,
                          itpp::TC,                      // two's complement
                          itpp::SAT,                     // saturation
                          itpp::RND_ZERO);               // rounding to zero
    double d_input2 = fixp_input2.unfix();
	
    

    // now convert Arx format
    i32 arx_input = double_to_signed32(d_input, WORD_LENGTH, INT_WORD_LENGTH);
    i32 arx_output;
	
	i32 arx_input2 = double_to_signed32(d_input2, WORD_LENGTH, INT_WORD_LENGTH);
    i32 arx_output2;

    // call filter
    for (int i = 0; i < CLOCKS_PER_SAMPLE; i++)
      hardware.run(arx_input, arx_output, arx_input2, arx_output2);
    
    double d_output = (1.0*arx_output) / (1 << (WORD_LENGTH - INT_WORD_LENGTH));
	double d_output2 = (1.0*arx_output2) / (1 << (WORD_LENGTH - INT_WORD_LENGTH)); 
	
    // save inputs and outputs
    oFileIn     << arx_input  << std::endl;
    oFileInFix  << d_input    << std::endl;
    oFileOut    << arx_output << std::endl;
    oFileOutFix << d_output   << std::endl;
	
	oFileIn     << arx_input2  << std::endl;
    oFileInFix  << d_input2    << std::endl;
    oFileOut    << arx_output2 << std::endl;
    oFileOutFix << d_output2   << std::endl;
    
  }
  std::cout << "*** End of simulation ***" << std::endl;
}
