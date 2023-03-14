#ifndef _MAP1_INCLUDED_
#define _MAP1_INCLUDED_

#include <arx_numeric.h>
#include <arx_util.h>
#include "settings.h"

#ifdef VCD_OUTPUT
#include <iostream>
#include <fstream>
#endif

class MAP1 {
private:
#ifdef VCD_OUTPUT
   std::ofstream vcd_file;
   unsigned int vcd_time_stamp;
#endif
private:
   bool init(void);
   void exit(void);
public:
   MAP1() { init(); }
   ~MAP1() { exit(); }
   void reset(void);
   void run(
         i32 data_in, // signed(8,5,Wrap,Round)
         i32 &data_out // signed(8,5,Wrap,Round)
      );
};
#endif
