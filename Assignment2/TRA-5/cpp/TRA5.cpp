#include "TRA5.h"

const i32 arx_reset__top__z0 = i32(0);
const i32 arx_reset__top__z1 = i32(0);
const i32 arx_reset__top__z2 = i32(0);
const i32 arx_reset__top__p2_out = i32(0);
const i32 arx_reset__top__p2_out_2 = i32(0);

i32 top__z0, arx_reg__top__z0;
i32 top__z1, arx_reg__top__z1;
i32 top__z2, arx_reg__top__z2;
i32 top__p2_out, arx_reg__top__p2_out;
i32 top__p2_out_2, arx_reg__top__p2_out_2;


bool TRA5::init(void)
{
   #ifdef VCD_OUTPUT
      vcd_file.open("debug.vcd", std::ios::out);
      vcd_file << "$timescale\n\t1 ps\n$end\n";
      vcd_file << "$scope module Arx $end\n";
      vcd_file << "$var wire 1 aaa clock $end\n";
      init_vcd_vector(vcd_file, 8, "aab", "top__z0");
      init_vcd_vector(vcd_file, 8, "aac", "top__z1");
      init_vcd_vector(vcd_file, 8, "aad", "top__z2");
      init_vcd_vector(vcd_file, 8, "aae", "top__p2_out");
      init_vcd_vector(vcd_file, 8, "aaf", "top__p2_out_2");
      init_vcd_vector(vcd_file, 8, "aag", "data_in");
      init_vcd_vector(vcd_file, 8, "aah", "data_out");
      init_vcd_vector(vcd_file, 8, "aai", "data_in_2");
      init_vcd_vector(vcd_file, 8, "aaj", "data_out_2");
      init_vcd_vector(vcd_file, 16, "aba", "top__m1");
      init_vcd_vector(vcd_file, 16, "abb", "top__m2");
      init_vcd_vector(vcd_file, 16, "abc", "top__m3");
      init_vcd_vector(vcd_file, 16, "abd", "top__m4");
      init_vcd_vector(vcd_file, 16, "abe", "top__m5");
      init_vcd_vector(vcd_file, 8, "abf", "top__p1");
      init_vcd_vector(vcd_file, 8, "abg", "top__p2");
      init_vcd_vector(vcd_file, 8, "abh", "top__p3");
      init_vcd_vector(vcd_file, 8, "abi", "top__p4");
      init_vcd_vector(vcd_file, 16, "abj", "top__m1_2");
      init_vcd_vector(vcd_file, 16, "aca", "top__m2_2");
      init_vcd_vector(vcd_file, 16, "acb", "top__m3_2");
      init_vcd_vector(vcd_file, 16, "acc", "top__m4_2");
      init_vcd_vector(vcd_file, 16, "acd", "top__m5_2");
      init_vcd_vector(vcd_file, 8, "ace", "top__p1_2");
      init_vcd_vector(vcd_file, 8, "acf", "top__p2_2");
      init_vcd_vector(vcd_file, 8, "acg", "top__p3_2");
      init_vcd_vector(vcd_file, 8, "ach", "top__p4_2");
      init_vcd_vector(vcd_file, 8, "aci", "top__b2");
      init_vcd_vector(vcd_file, 8, "acj", "top__b1");
      init_vcd_vector(vcd_file, 8, "ada", "top__b0");
      init_vcd_vector(vcd_file, 8, "adb", "top__a2");
      init_vcd_vector(vcd_file, 8, "adc", "top__a1");
      vcd_file << "$upscope $end\n";
      vcd_file << "$enddefinitions $end\n\n";
   #endif
   return true;
}

void TRA5::exit(void)
{
   #ifdef VCD_OUTPUT
      vcd_file.close();
   #endif
}

void TRA5::reset(void)
{
   top__z0 = arx_reset__top__z0;
   top__z1 = arx_reset__top__z1;
   top__z2 = arx_reset__top__z2;
   top__p2_out = arx_reset__top__p2_out;
   top__p2_out_2 = arx_reset__top__p2_out_2;
   #ifdef VCD_OUTPUT
      vcd_time_stamp = 0;
   #endif
}

void TRA5::run
   (
      i32 data_in, // signed(8,5,Wrap,Round)
      i32 &data_out, // signed(8,5,Wrap,Round)
      i32 data_in_2, // signed(8,5,Wrap,Round)
      i32 &data_out_2 // signed(8,5,Wrap,Round)
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
   i32 top__m1_2 = 0; /* variable */
   i32 top__m2_2 = 0; /* variable */
   i32 top__m3_2 = 0; /* variable */
   i32 top__m4_2 = 0; /* variable */
   i32 top__m5_2 = 0; /* variable */
   i32 top__p1_2 = 0; /* variable */
   i32 top__p2_2 = 0; /* variable */
   i32 top__p3_2 = 0; /* variable */
   i32 top__p4_2 = 0; /* variable */
   i32 top__b2 = 0; /* variable */
   i32 top__b1 = 0; /* variable */
   i32 top__b0 = 0; /* variable */
   i32 top__a2 = 0; /* variable */
   i32 top__a1 = 0; /* variable */
   data_out = 0; /* top-level outport */
   data_out_2 = 0; /* top-level outport */


   /* copy register values to temp values */
   arx_reg__top__z0 = top__z0;
   arx_reg__top__z1 = top__z1;
   arx_reg__top__z2 = top__z2;
   arx_reg__top__p2_out = top__p2_out;
   arx_reg__top__p2_out_2 = top__p2_out_2;

   #ifdef VCD_OUTPUT
      /* dump register values to VCD file */
      if (vcd_time_stamp == 0) vcd_file << "$dumpvars\n";
      else vcd_file << '#' << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '1' << "aaa\n";
      output_vcd_vector(vcd_file, u32(top__z0), 8, "aab");
      output_vcd_vector(vcd_file, u32(top__z1), 8, "aac");
      output_vcd_vector(vcd_file, u32(top__z2), 8, "aad");
      output_vcd_vector(vcd_file, u32(top__p2_out), 8, "aae");
      output_vcd_vector(vcd_file, u32(top__p2_out_2), 8, "aaf");
   #endif

   /* update */
   top__b2 = i32(57);
   top__b1 = i32(-102);
   top__b0 = i32(57);
   top__a2 = i32(-49);
   top__a1 = i32(67);
   top__m2 = (top__a1 * arx_reg__top__z1);
   top__m3 = (top__b1 * arx_reg__top__z1);
   top__m4 = (top__a2 * arx_reg__top__z2);
   top__m5 = (top__b2 * arx_reg__top__z2);
   top__p3 = arx_wrap(arx_round((top__m2 + top__m4), 7), 24);
   top__p1 = arx_wrap((top__p3 + data_in), 24);
   top__m1 = (top__b0 * top__p1);
   top__p4 = arx_wrap(arx_round((top__m3 + top__m5), 7), 24);
   top__p2 = arx_wrap(arx_round((top__m1 + arx_lsb_extend(top__p4, 7)), 7), 24);
   top__m2_2 = (top__a1 * top__p1);
   top__m3_2 = (top__b1 * top__p1);
   top__m4_2 = (top__a2 * arx_reg__top__z1);
   top__m5_2 = (top__b2 * arx_reg__top__z1);
   top__p3_2 = arx_wrap(arx_round((top__m2_2 + top__m4_2), 7), 24);
   top__p1_2 = arx_wrap((top__p3_2 + data_in_2), 24);
   top__m1_2 = (top__b0 * top__p1_2);
   top__p4_2 = arx_wrap(arx_round((top__m3_2 + top__m5_2), 7), 24);
   top__p2_2 = arx_wrap(arx_round((top__m1_2 + arx_lsb_extend(top__p4_2, 7)), 7), 24);
   top__z1 = top__p1_2;
   top__z2 = top__p1;
   top__p2_out = top__p2;
   top__p2_out_2 = top__p2_2;
   data_out = arx_reg__top__p2_out;
   data_out_2 = arx_reg__top__p2_out_2;
   #ifdef VCD_OUTPUT
      /* dump port values to VCD file */
      output_vcd_vector(vcd_file, u32(data_in), 8, "aag");
      output_vcd_vector(vcd_file, u32(data_out), 8, "aah");
      output_vcd_vector(vcd_file, u32(data_in_2), 8, "aai");
      output_vcd_vector(vcd_file, u32(data_out_2), 8, "aaj");
      output_vcd_vector(vcd_file, u32(top__m1), 16, "aba");
      output_vcd_vector(vcd_file, u32(top__m2), 16, "abb");
      output_vcd_vector(vcd_file, u32(top__m3), 16, "abc");
      output_vcd_vector(vcd_file, u32(top__m4), 16, "abd");
      output_vcd_vector(vcd_file, u32(top__m5), 16, "abe");
      output_vcd_vector(vcd_file, u32(top__p1), 8, "abf");
      output_vcd_vector(vcd_file, u32(top__p2), 8, "abg");
      output_vcd_vector(vcd_file, u32(top__p3), 8, "abh");
      output_vcd_vector(vcd_file, u32(top__p4), 8, "abi");
      output_vcd_vector(vcd_file, u32(top__m1_2), 16, "abj");
      output_vcd_vector(vcd_file, u32(top__m2_2), 16, "aca");
      output_vcd_vector(vcd_file, u32(top__m3_2), 16, "acb");
      output_vcd_vector(vcd_file, u32(top__m4_2), 16, "acc");
      output_vcd_vector(vcd_file, u32(top__m5_2), 16, "acd");
      output_vcd_vector(vcd_file, u32(top__p1_2), 8, "ace");
      output_vcd_vector(vcd_file, u32(top__p2_2), 8, "acf");
      output_vcd_vector(vcd_file, u32(top__p3_2), 8, "acg");
      output_vcd_vector(vcd_file, u32(top__p4_2), 8, "ach");
      output_vcd_vector(vcd_file, u32(top__b2), 8, "aci");
      output_vcd_vector(vcd_file, u32(top__b1), 8, "acj");
      output_vcd_vector(vcd_file, u32(top__b0), 8, "ada");
      output_vcd_vector(vcd_file, u32(top__a2), 8, "adb");
      output_vcd_vector(vcd_file, u32(top__a1), 8, "adc");
      vcd_file << "\n#" << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '0' << "aaa\n\n";
   #endif
}

