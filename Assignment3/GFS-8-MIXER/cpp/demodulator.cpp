#include "demodulator.h"

const i32 arx_reset__top__dem_samples_i[] = 
   {
   i32(0),
   i32(0),
   i32(0),
   i32(0)
   };
const i32 arx_reset__top__dem_samples_q[] = 
   {
   i32(0),
   i32(0),
   i32(0),
   i32(0)
   };
const i32 arx_reset__top__result = i32(0);

i32 *top__dem_samples_i, *arx_reg__top__dem_samples_i;
i32 *top__dem_samples_q, *arx_reg__top__dem_samples_q;
i32 top__result, arx_reg__top__result;


bool demodulator::init(void)
{
   if ((top__dem_samples_i = new i32[4]) == NULL)
      return false;
   if ((arx_reg__top__dem_samples_i = new i32[4]) == NULL)
      return false;
   if ((top__dem_samples_q = new i32[4]) == NULL)
      return false;
   if ((arx_reg__top__dem_samples_q = new i32[4]) == NULL)
      return false;
   #ifdef VCD_OUTPUT
      vcd_file.open("debug.vcd", std::ios::out);
      vcd_file << "$timescale\n\t1 ps\n$end\n";
      vcd_file << "$scope module Arx $end\n";
      vcd_file << "$var wire 1 aaa clock $end\n";
      init_vcd_vector(vcd_file, 5, "aab", "top__dem_samples_i:0");
      init_vcd_vector(vcd_file, 5, "aac", "top__dem_samples_i:1");
      init_vcd_vector(vcd_file, 5, "aad", "top__dem_samples_i:2");
      init_vcd_vector(vcd_file, 5, "aae", "top__dem_samples_i:3");
      init_vcd_vector(vcd_file, 5, "aaf", "top__dem_samples_q:0");
      init_vcd_vector(vcd_file, 5, "aag", "top__dem_samples_q:1");
      init_vcd_vector(vcd_file, 5, "aah", "top__dem_samples_q:2");
      init_vcd_vector(vcd_file, 5, "aai", "top__dem_samples_q:3");
      init_vcd_vector(vcd_file, 11, "aaj", "top__result");
      init_vcd_vector(vcd_file, 5, "aba", "data_i");
      init_vcd_vector(vcd_file, 5, "abb", "data_q");
      init_vcd_vector(vcd_file, 7, "abc", "data_out");
      init_vcd_vector(vcd_file, 10, "abd", "top__prod_q_id");
      init_vcd_vector(vcd_file, 10, "abe", "top__prod_i_qd");
      vcd_file << "$upscope $end\n";
      vcd_file << "$enddefinitions $end\n\n";
   #endif
   return true;
}

void demodulator::exit(void)
{
   delete [] top__dem_samples_i;
   delete [] arx_reg__top__dem_samples_i;
   delete [] top__dem_samples_q;
   delete [] arx_reg__top__dem_samples_q;
   #ifdef VCD_OUTPUT
      vcd_file.close();
   #endif
}

void demodulator::reset(void)
{
   for (int _i=0; _i<4; _i++) {
      top__dem_samples_i[_i] = arx_reset__top__dem_samples_i[_i];
   }
   for (int _i=0; _i<4; _i++) {
      top__dem_samples_q[_i] = arx_reset__top__dem_samples_q[_i];
   }
   top__result = arx_reset__top__result;
   #ifdef VCD_OUTPUT
      vcd_time_stamp = 0;
   #endif
}

void demodulator::run
   (
      i32 data_i, // signed(5,1,Wrap,Trunc)
      i32 data_q, // signed(5,1,Wrap,Trunc)
      i32 &data_out // signed(7,1,Sat,Trunc)
   )
{
   /* declare and init variables */
   i32 top__prod_q_id = 0; /* variable */
   i32 top__prod_i_qd = 0; /* variable */
   data_out = 0; /* top-level outport */


   /* copy register values to temp values */
   for (int _i=0; _i<4; _i++) {
      arx_reg__top__dem_samples_i[_i] = top__dem_samples_i[_i];
   }
   for (int _i=0; _i<4; _i++) {
      arx_reg__top__dem_samples_q[_i] = top__dem_samples_q[_i];
   }
   arx_reg__top__result = top__result;

   #ifdef VCD_OUTPUT
      /* dump register values to VCD file */
      if (vcd_time_stamp == 0) vcd_file << "$dumpvars\n";
      else vcd_file << '#' << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '1' << "aaa\n";
      output_vcd_vector(vcd_file, u32(top__dem_samples_i[0]), 5, "aab");
      output_vcd_vector(vcd_file, u32(top__dem_samples_i[1]), 5, "aac");
      output_vcd_vector(vcd_file, u32(top__dem_samples_i[2]), 5, "aad");
      output_vcd_vector(vcd_file, u32(top__dem_samples_i[3]), 5, "aae");
      output_vcd_vector(vcd_file, u32(top__dem_samples_q[0]), 5, "aaf");
      output_vcd_vector(vcd_file, u32(top__dem_samples_q[1]), 5, "aag");
      output_vcd_vector(vcd_file, u32(top__dem_samples_q[2]), 5, "aah");
      output_vcd_vector(vcd_file, u32(top__dem_samples_q[3]), 5, "aai");
      output_vcd_vector(vcd_file, u32(top__result), 11, "aaj");
   #endif

   /* update */
   top__prod_q_id = (data_q * arx_reg__top__dem_samples_i[3]);
   top__prod_i_qd = (data_i * arx_reg__top__dem_samples_q[3]);
   top__result = (top__prod_q_id - top__prod_i_qd);
   top__dem_samples_i[0] = data_i;
   top__dem_samples_q[0] = data_q;
   top__dem_samples_i[1] = arx_reg__top__dem_samples_i[0];
   top__dem_samples_q[1] = arx_reg__top__dem_samples_q[0];
   top__dem_samples_i[2] = arx_reg__top__dem_samples_i[1];
   top__dem_samples_q[2] = arx_reg__top__dem_samples_q[1];
   top__dem_samples_i[3] = arx_reg__top__dem_samples_i[2];
   top__dem_samples_q[3] = arx_reg__top__dem_samples_q[2];
   data_out = arx_saturate(arx_truncate(arx_reg__top__result, 2), 7, false);
   #ifdef VCD_OUTPUT
      /* dump port values to VCD file */
      output_vcd_vector(vcd_file, u32(data_i), 5, "aba");
      output_vcd_vector(vcd_file, u32(data_q), 5, "abb");
      output_vcd_vector(vcd_file, u32(data_out), 7, "abc");
      output_vcd_vector(vcd_file, u32(top__prod_q_id), 10, "abd");
      output_vcd_vector(vcd_file, u32(top__prod_i_qd), 10, "abe");
      vcd_file << "\n#" << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '0' << "aaa\n\n";
   #endif
}

