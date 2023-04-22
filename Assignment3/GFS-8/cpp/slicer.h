#ifndef _SLICER_INCLUDED_
#define _SLICER_INCLUDED_

#include <arx_numeric.h>
#include <arx_util.h>
#include "settings.h"

#ifdef VCD_OUTPUT
#include <iostream>
#include <fstream>
#endif

class slicer {
private:
#ifdef VCD_OUTPUT
   std::ofstream vcd_file;
   unsigned int vcd_time_stamp;
#endif
private:
   bool init(void);
   void exit(void);
public:
   slicer() { init(); }
   ~slicer() { exit(); }
   void reset(void);
   void run(
         i32 data_in, // signed(7,1,Wrap,Trunc)
         u32 offset, // unsigned(2,2,Wrap,Trunc)
         u32 &data_out // bit
      );
};
#endif
