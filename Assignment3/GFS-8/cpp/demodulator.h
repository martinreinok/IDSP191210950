#ifndef _DEMODULATOR_INCLUDED_
#define _DEMODULATOR_INCLUDED_

#include <arx_numeric.h>
#include <arx_util.h>
#include "settings.h"

#ifdef VCD_OUTPUT
#include <iostream>
#include <fstream>
#endif

class demodulator {
private:
#ifdef VCD_OUTPUT
   std::ofstream vcd_file;
   unsigned int vcd_time_stamp;
#endif
private:
   bool init(void);
   void exit(void);
public:
   demodulator() { init(); }
   ~demodulator() { exit(); }
   void reset(void);
   void run(
         i32 data_i, // signed(5,1,Wrap,Trunc)
         i32 data_q, // signed(5,1,Wrap,Trunc)
         i32 &data_out // signed(7,1,Sat,Trunc)
      );
};
#endif
