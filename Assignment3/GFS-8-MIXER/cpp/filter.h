#ifndef _FILTER_INCLUDED_
#define _FILTER_INCLUDED_

#include <arx_numeric.h>
#include <arx_util.h>
#include "settings.h"

#ifdef VCD_OUTPUT
#include <iostream>
#include <fstream>
#endif

class filter {
private:
#ifdef VCD_OUTPUT
   std::ofstream vcd_file;
   unsigned int vcd_time_stamp;
#endif
private:
   bool init(void);
   void exit(void);
public:
   filter() { init(); }
   ~filter() { exit(); }
   void reset(void);
   void run(
         i32 data_in_i, // signed(9,4,Wrap,Trunc)
         i32 data_in_q, // signed(9,4,Wrap,Trunc)
         i32 &data_out_i, // signed(7,1,Sat,Trunc)
         i32 &data_out_q // signed(7,1,Sat,Trunc)
      );
};
#endif
