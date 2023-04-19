#ifndef _MIXER_INCLUDED_
#define _MIXER_INCLUDED_

#include <arx_numeric.h>
#include <arx_util.h>
#include "settings.h"

#ifdef VCD_OUTPUT
#include <iostream>
#include <fstream>
#endif

class mixer {
private:
#ifdef VCD_OUTPUT
   std::ofstream vcd_file;
   unsigned int vcd_time_stamp;
#endif
private:
   bool init(void);
   void exit(void);
public:
   mixer() { init(); }
   ~mixer() { exit(); }
   void reset(void);
   void run(
         i32 data_in, // signed(11,6,Wrap,Trunc)
         i32 &data_out_i, // signed(11,6,Wrap,Trunc)
         i32 &data_out_q // signed(11,6,Wrap,Trunc)
      );
};
#endif
