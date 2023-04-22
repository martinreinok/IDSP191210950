#include "mixer.h"

const i32 top__sin_array[] = 
   {
   i32(256),
   i32(181),
   i32(0),
   i32(-181),
   i32(-256),
   i32(-181),
   i32(0),
   i32(181)
   };
const u32 arx_reset__top__i = u32(0);

u32 top__i, arx_reg__top__i;


bool mixer::init(void)
{
   #ifdef VCD_OUTPUT
      vcd_file.open("debug.vcd", std::ios::out);
      vcd_file << "$timescale\n\t1 ps\n$end\n";
      vcd_file << "$scope module Arx $end\n";
      vcd_file << "$var wire 1 aaa clock $end\n";
      init_vcd_vector(vcd_file, 3, "aab", "top__i");
      init_vcd_vector(vcd_file, 12, "aac", "data_in");
      init_vcd_vector(vcd_file, 10, "aad", "phase_corr");
      init_vcd_vector(vcd_file, 12, "aae", "data_out_i");
      init_vcd_vector(vcd_file, 12, "aaf", "data_out_q");
      vcd_file << "$upscope $end\n";
      vcd_file << "$enddefinitions $end\n\n";
   #endif
   return true;
}

void mixer::exit(void)
{
   #ifdef VCD_OUTPUT
      vcd_file.close();
   #endif
}

void mixer::reset(void)
{
   top__i = arx_reset__top__i;
   #ifdef VCD_OUTPUT
      vcd_time_stamp = 0;
   #endif
}

void mixer::run
   (
      i32 data_in, // signed(12,6,Wrap,Trunc)
      i32 phase_corr, // signed(10,2,Wrap,Trunc)
      i32 &data_out_i, // signed(12,6,Wrap,Trunc)
      i32 &data_out_q // signed(12,6,Wrap,Trunc)
   )
{
   /* declare and init variables */
   data_out_i = 0; /* top-level outport */
   data_out_q = 0; /* top-level outport */


   /* copy register values to temp values */
   arx_reg__top__i = top__i;

   #ifdef VCD_OUTPUT
      /* dump register values to VCD file */
      if (vcd_time_stamp == 0) vcd_file << "$dumpvars\n";
      else vcd_file << '#' << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '1' << "aaa\n";
      output_vcd_vector(vcd_file, u32(top__i), 3, "aab");
   #endif

   /* update */
   switch(arx_reg__top__i) {
   case u32(0):
      data_out_q = arx_wrap(arx_truncate((i32(0) * data_in), 6), 20);
      data_out_i = arx_wrap(arx_truncate((i32(64) * data_in), 6), 20);
      top__i = u32(1);
      break;
   case u32(1):
      data_out_q = arx_wrap(arx_truncate((i32(-45) * data_in), 6), 20);
      data_out_i = arx_wrap(arx_truncate((i32(45) * data_in), 6), 20);
      top__i = u32(2);
      break;
   case u32(2):
      data_out_q = arx_wrap(arx_truncate((i32(-64) * data_in), 6), 20);
      data_out_i = arx_wrap(arx_truncate((i32(0) * data_in), 6), 20);
      top__i = u32(3);
      break;
   case u32(3):
      data_out_q = arx_wrap(arx_truncate((i32(-45) * data_in), 6), 20);
      data_out_i = arx_wrap(arx_truncate((i32(-45) * data_in), 6), 20);
      top__i = u32(4);
      break;
   case u32(4):
      data_out_q = arx_wrap(arx_truncate((i32(0) * data_in), 6), 20);
      data_out_i = arx_wrap(arx_truncate((i32(-64) * data_in), 6), 20);
      top__i = u32(5);
      break;
   case u32(5):
      data_out_q = arx_wrap(arx_truncate((i32(45) * data_in), 6), 20);
      data_out_i = arx_wrap(arx_truncate((i32(-45) * data_in), 6), 20);
      top__i = u32(6);
      break;
   case u32(6):
      data_out_q = arx_wrap(arx_truncate((i32(64) * data_in), 6), 20);
      data_out_i = arx_wrap(arx_truncate((i32(0) * data_in), 6), 20);
      top__i = u32(7);
      break;
   case u32(7):
      data_out_q = arx_wrap(arx_truncate((i32(45) * data_in), 6), 20);
      data_out_i = arx_wrap(arx_truncate((i32(45) * data_in), 6), 20);
      top__i = u32(0);
      break;
   default:
      top__i = u32(0);
      break;
   }
   #ifdef VCD_OUTPUT
      /* dump port values to VCD file */
      output_vcd_vector(vcd_file, u32(data_in), 12, "aac");
      output_vcd_vector(vcd_file, u32(phase_corr), 10, "aad");
      output_vcd_vector(vcd_file, u32(data_out_i), 12, "aae");
      output_vcd_vector(vcd_file, u32(data_out_q), 12, "aaf");
      vcd_file << "\n#" << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '0' << "aaa\n\n";
   #endif
}

