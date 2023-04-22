#include "TRA2.h"

const i32 arx_reset__top__z1 = i32(0);
const i32 arx_reset__top__z2 = i32(0);
const i32 arx_reset__top__z3 = i32(0);
const i32 arx_reset__top__p2_out = i32(0);

i32 top__z1, arx_reg__top__z1;
i32 top__z2, arx_reg__top__z2;
i32 top__z3, arx_reg__top__z3;
i32 top__p2_out, arx_reg__top__p2_out;


bool TRA2::init(void)
{
   #ifdef VCD_OUTPUT
      vcd_file.open("debug.vcd", std::ios::out);
      vcd_file << "$timescale\n\t1 ps\n$end\n";
      vcd_file << "$scope module Arx $end\n";
      vcd_file << "$var wire 1 aaa clock $end\n";
      init_vcd_vector(vcd_file, 8, "aab", "top__z1");
      init_vcd_vector(vcd_file, 8, "aac", "top__z2");
      init_vcd_vector(vcd_file, 8, "aad", "top__z3");
      init_vcd_vector(vcd_file, 8, "aae", "top__p2_out");
      init_vcd_vector(vcd_file, 8, "aaf", "data_in");
      init_vcd_vector(vcd_file, 8, "aag", "data_out");
      init_vcd_vector(vcd_file, 16, "aah", "top__m1");
      init_vcd_vector(vcd_file, 16, "aai", "top__m2");
      init_vcd_vector(vcd_file, 16, "aaj", "top__m3");
      init_vcd_vector(vcd_file, 16, "aba", "top__m4");
      init_vcd_vector(vcd_file, 16, "abb", "top__m5");
      init_vcd_vector(vcd_file, 8, "abc", "top__p1");
      init_vcd_vector(vcd_file, 8, "abd", "top__p2");
      init_vcd_vector(vcd_file, 8, "abe", "top__p3");
      init_vcd_vector(vcd_file, 8, "abf", "top__p4");
      init_vcd_vector(vcd_file, 8, "abg", "top__b2");
      init_vcd_vector(vcd_file, 8, "abh", "top__b1");
      init_vcd_vector(vcd_file, 8, "abi", "top__b0");
      init_vcd_vector(vcd_file, 8, "abj", "top__a2");
      init_vcd_vector(vcd_file, 8, "aca", "top__a1");
      vcd_file << "$upscope $end\n";
      vcd_file << "$enddefinitions $end\n\n";
   #endif
   return true;
}

void TRA2::exit(void)
{
   #ifdef VCD_OUTPUT
      vcd_file.close();
   #endif
}

void TRA2::reset(void)
{
   top__z1 = arx_reset__top__z1;
   top__z2 = arx_reset__top__z2;
   top__z3 = arx_reset__top__z3;
   top__p2_out = arx_reset__top__p2_out;
   #ifdef VCD_OUTPUT
      vcd_time_stamp = 0;
   #endif
}

void TRA2::run
   (
      i32 data_in, // signed(8,5,Wrap,Round)
      i32 &data_out // signed(8,5,Wrap,Round)
   )
{
   /* declare and init variables */
   i32 top__m1 = 0; /* variable */
   i32 top__m2 = 0; /* variable */
   i32 top__m3 = 0; /* variable */
   i32 top__m4 = 0; /* variable */
   i32 top__m5 = 0; /* variable */
   i32 top__p1 = 0; /* variable */
   i32 top__p2 = 0; /* variable */
   i32 top__p3 = 0; /* variable */
   i32 top__p4 = 0; /* variable */
   i32 top__b2 = 0; /* variable */
   i32 top__b1 = 0; /* variable */
   i32 top__b0 = 0; /* variable */
   i32 top__a2 = 0; /* variable */
   i32 top__a1 = 0; /* variable */
   data_out = 0; /* top-level outport */


   /* copy register values to temp values */
   arx_reg__top__z1 = top__z1;
   arx_reg__top__z2 = top__z2;
   arx_reg__top__z3 = top__z3;
   arx_reg__top__p2_out = top__p2_out;

   #ifdef VCD_OUTPUT
      /* dump register values to VCD file */
      if (vcd_time_stamp == 0) vcd_file << "$dumpvars\n";
      else vcd_file << '#' << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '1' << "aaa\n";
      output_vcd_vector(vcd_file, u32(top__z1), 8, "aab");
      output_vcd_vector(vcd_file, u32(top__z2), 8, "aac");
      output_vcd_vector(vcd_file, u32(top__z3), 8, "aad");
      output_vcd_vector(vcd_file, u32(top__p2_out), 8, "aae");
   #endif

   /* update */
   top__b2 = i32(57);
   top__b1 = i32(-102);
   top__b0 = i32(57);
   top__a2 = i32(-49);
   top__a1 = i32(67);
   top__m2 = (top__a1 * arx_reg__top__z1);
   top__m3 = (top__b1 * arx_reg__top__z2);
   top__m4 = (top__a2 * arx_reg__top__z2);
   top__m5 = (top__b2 * arx_reg__top__z3);
   top__p3 = arx_wrap(arx_round((top__m2 + top__m4), 7), 24);
   top__p1 = arx_wrap((top__p3 + data_in), 24);
   top__m1 = (top__b0 * arx_reg__top__z1);
   top__p4 = arx_wrap(arx_round((top__m3 + top__m5), 7), 24);
   top__p2 = arx_wrap(arx_round((top__m1 + arx_lsb_extend(top__p4, 7)), 7), 24);
   top__z1 = top__p1;
   top__z2 = arx_reg__top__z1;
   top__z3 = arx_reg__top__z2;
   top__p2_out = top__p2;
   data_out = arx_reg__top__p2_out;
   #ifdef VCD_OUTPUT
      /* dump port values to VCD file */
      output_vcd_vector(vcd_file, u32(data_in), 8, "aaf");
      output_vcd_vector(vcd_file, u32(data_out), 8, "aag");
      output_vcd_vector(vcd_file, u32(top__m1), 16, "aah");
      output_vcd_vector(vcd_file, u32(top__m2), 16, "aai");
      output_vcd_vector(vcd_file, u32(top__m3), 16, "aaj");
      output_vcd_vector(vcd_file, u32(top__m4), 16, "aba");
      output_vcd_vector(vcd_file, u32(top__m5), 16, "abb");
      output_vcd_vector(vcd_file, u32(top__p1), 8, "abc");
      output_vcd_vector(vcd_file, u32(top__p2), 8, "abd");
      output_vcd_vector(vcd_file, u32(top__p3), 8, "abe");
      output_vcd_vector(vcd_file, u32(top__p4), 8, "abf");
      output_vcd_vector(vcd_file, u32(top__b2), 8, "abg");
      output_vcd_vector(vcd_file, u32(top__b1), 8, "abh");
      output_vcd_vector(vcd_file, u32(top__b0), 8, "abi");
      output_vcd_vector(vcd_file, u32(top__a2), 8, "abj");
      output_vcd_vector(vcd_file, u32(top__a1), 8, "aca");
      vcd_file << "\n#" << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '0' << "aaa\n\n";
   #endif
}

