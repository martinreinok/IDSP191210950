#include "MAP1_overlapped.h"

enum T_state {T_state_cycle0, T_state_cycle1, T_state_cycle2, T_state_cycle3};
const i32 arx_reset__top__i1 = i32(0);
const i32 arx_reset__top__o1 = i32(0);
const i32 arx_reset__top__r1 = i32(0);
const i32 arx_reset__top__r2 = i32(0);
const i32 arx_reset__top__r3 = i32(0);
const i32 arx_reset__top__r4 = i32(0);
const i32 arx_reset__top__d1 = i32(0);
const i32 arx_reset__top__d2 = i32(0);
const T_state arx_reset__top__state = T_state_cycle0;

i32 top__i1, arx_reg__top__i1;
i32 top__o1, arx_reg__top__o1;
i32 top__r1, arx_reg__top__r1;
i32 top__r2, arx_reg__top__r2;
i32 top__r3, arx_reg__top__r3;
i32 top__r4, arx_reg__top__r4;
i32 top__d1, arx_reg__top__d1;
i32 top__d2, arx_reg__top__d2;
T_state top__state, arx_reg__top__state;


bool MAP1_overlapped::init(void)
{
   #ifdef VCD_OUTPUT
      vcd_file.open("debug.vcd", std::ios::out);
      vcd_file << "$timescale\n\t1 ps\n$end\n";
      vcd_file << "$scope module Arx $end\n";
      vcd_file << "$var wire 1 aaa clock $end\n";
      init_vcd_vector(vcd_file, 8, "aab", "top__i1");
      init_vcd_vector(vcd_file, 8, "aac", "top__o1");
      init_vcd_vector(vcd_file, 16, "aad", "top__r1");
      init_vcd_vector(vcd_file, 16, "aae", "top__r2");
      init_vcd_vector(vcd_file, 16, "aaf", "top__r3");
      init_vcd_vector(vcd_file, 16, "aag", "top__r4");
      init_vcd_vector(vcd_file, 16, "aah", "top__d1");
      init_vcd_vector(vcd_file, 16, "aai", "top__d2");
      init_vcd_vector(vcd_file, 2, "aaj", "top__state");
      init_vcd_vector(vcd_file, 8, "aba", "data_in");
      init_vcd_vector(vcd_file, 8, "abb", "data1_out");
      init_vcd_vector(vcd_file, 8, "abc", "top__m1_in_l");
      init_vcd_vector(vcd_file, 8, "abd", "top__m1_in_r");
      init_vcd_vector(vcd_file, 16, "abe", "top__m1_out");
      init_vcd_vector(vcd_file, 8, "abf", "top__m2_in_l");
      init_vcd_vector(vcd_file, 8, "abg", "top__m2_in_r");
      init_vcd_vector(vcd_file, 16, "abh", "top__m2_out");
      init_vcd_vector(vcd_file, 8, "abi", "top__m3_in_l");
      init_vcd_vector(vcd_file, 8, "abj", "top__m3_in_r");
      init_vcd_vector(vcd_file, 16, "aca", "top__m3_out");
      init_vcd_vector(vcd_file, 16, "acb", "top__a1_in_l");
      init_vcd_vector(vcd_file, 16, "acc", "top__a1_in_r");
      init_vcd_vector(vcd_file, 8, "acd", "top__a1_out");
      init_vcd_vector(vcd_file, 16, "ace", "top__a2_in_l");
      init_vcd_vector(vcd_file, 16, "acf", "top__a2_in_r");
      init_vcd_vector(vcd_file, 8, "acg", "top__a2_out");
      init_vcd_vector(vcd_file, 8, "ach", "top__b2");
      init_vcd_vector(vcd_file, 8, "aci", "top__b1");
      init_vcd_vector(vcd_file, 8, "acj", "top__b0");
      init_vcd_vector(vcd_file, 8, "ada", "top__a2");
      init_vcd_vector(vcd_file, 8, "adb", "top__a1");
      vcd_file << "$upscope $end\n";
      vcd_file << "$enddefinitions $end\n\n";
   #endif
   return true;
}

void MAP1_overlapped::exit(void)
{
   #ifdef VCD_OUTPUT
      vcd_file.close();
   #endif
}

void MAP1_overlapped::reset(void)
{
   top__i1 = arx_reset__top__i1;
   top__o1 = arx_reset__top__o1;
   top__r1 = arx_reset__top__r1;
   top__r2 = arx_reset__top__r2;
   top__r3 = arx_reset__top__r3;
   top__r4 = arx_reset__top__r4;
   top__d1 = arx_reset__top__d1;
   top__d2 = arx_reset__top__d2;
   top__state = arx_reset__top__state;
   #ifdef VCD_OUTPUT
      vcd_time_stamp = 0;
   #endif
}

void MAP1_overlapped::run
   (
      i32 data_in, // signed(8,5,Wrap,Round)
      i32 &data1_out // signed(8,5,Wrap,Round)
   )
{
   /* declare and init variables */
   i32 top__m1_in_l = 0; /* variable */
   i32 top__m1_in_r = 0; /* variable */
   i32 top__m1_out = 0; /* variable */
   i32 top__m2_in_l = 0; /* variable */
   i32 top__m2_in_r = 0; /* variable */
   i32 top__m2_out = 0; /* variable */
   i32 top__m3_in_l = 0; /* variable */
   i32 top__m3_in_r = 0; /* variable */
   i32 top__m3_out = 0; /* variable */
   i32 top__a1_in_l = 0; /* variable */
   i32 top__a1_in_r = 0; /* variable */
   i32 top__a1_out = 0; /* variable */
   i32 top__a2_in_l = 0; /* variable */
   i32 top__a2_in_r = 0; /* variable */
   i32 top__a2_out = 0; /* variable */
   i32 top__b2 = 0; /* variable */
   i32 top__b1 = 0; /* variable */
   i32 top__b0 = 0; /* variable */
   i32 top__a2 = 0; /* variable */
   i32 top__a1 = 0; /* variable */
   data1_out = 0; /* top-level outport */


   /* copy register values to temp values */
   arx_reg__top__i1 = top__i1;
   arx_reg__top__o1 = top__o1;
   arx_reg__top__r1 = top__r1;
   arx_reg__top__r2 = top__r2;
   arx_reg__top__r3 = top__r3;
   arx_reg__top__r4 = top__r4;
   arx_reg__top__d1 = top__d1;
   arx_reg__top__d2 = top__d2;
   arx_reg__top__state = top__state;

   #ifdef VCD_OUTPUT
      /* dump register values to VCD file */
      if (vcd_time_stamp == 0) vcd_file << "$dumpvars\n";
      else vcd_file << '#' << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '1' << "aaa\n";
      output_vcd_vector(vcd_file, u32(top__i1), 8, "aab");
      output_vcd_vector(vcd_file, u32(top__o1), 8, "aac");
      output_vcd_vector(vcd_file, u32(top__r1), 16, "aad");
      output_vcd_vector(vcd_file, u32(top__r2), 16, "aae");
      output_vcd_vector(vcd_file, u32(top__r3), 16, "aaf");
      output_vcd_vector(vcd_file, u32(top__r4), 16, "aag");
      output_vcd_vector(vcd_file, u32(top__d1), 16, "aah");
      output_vcd_vector(vcd_file, u32(top__d2), 16, "aai");
      output_vcd_vector(vcd_file, u32(top__state), 2, "aaj");
   #endif

   /* update */
   top__b2 = i32(57);
   top__b1 = i32(-102);
   top__b0 = i32(57);
   top__a2 = i32(-49);
   top__a1 = i32(67);
   switch(arx_reg__top__state) {
   case T_state_cycle0:
      top__m1_in_l = top__b1;
      top__m1_in_r = arx_wrap(arx_round(arx_reg__top__d1, 7), 24);
      top__m2_in_l = top__b2;
      top__m2_in_r = arx_wrap(arx_round(arx_reg__top__d2, 7), 24);
      break;
   case T_state_cycle1:
      top__m1_in_l = top__b1;
      top__m1_in_r = arx_wrap(arx_round(arx_reg__top__d1, 7), 24);
      top__m2_in_l = top__b2;
      top__m2_in_r = arx_wrap(arx_round(arx_reg__top__d2, 7), 24);
      break;
   case T_state_cycle2:
      top__m1_in_l = top__a1;
      top__m1_in_r = arx_wrap(arx_round(arx_reg__top__d1, 7), 24);
      top__m2_in_l = top__a2;
      top__m2_in_r = arx_wrap(arx_round(arx_reg__top__d2, 7), 24);
      top__m3_in_l = top__b0;
      top__m3_in_r = arx_wrap(arx_round(arx_reg__top__d1, 7), 24);
      break;
   case T_state_cycle3:
      top__m1_in_l = top__a1;
      top__m1_in_r = arx_wrap(arx_round(arx_reg__top__d1, 7), 24);
      top__m2_in_l = top__a2;
      top__m2_in_r = arx_wrap(arx_round(arx_reg__top__d2, 7), 24);
      top__m3_in_l = top__b0;
      top__m3_in_r = arx_wrap(arx_round(arx_reg__top__d1, 7), 24);
      break;
   }
   switch(arx_reg__top__state) {
   case T_state_cycle0:
      top__a1_in_l = arx_reg__top__r1;
      top__a1_in_r = arx_reg__top__r2;
      top__a2_in_l = arx_reg__top__r3;
      top__a2_in_r = arx_reg__top__r4;
      break;
   case T_state_cycle1:
      top__a1_in_l = arx_lsb_extend(arx_reg__top__i1, 7);
      top__a1_in_r = arx_reg__top__r2;
      break;
   case T_state_cycle2:
      top__a1_in_l = arx_reg__top__r1;
      top__a1_in_r = arx_reg__top__r2;
      break;
   case T_state_cycle3:
      break;
   }
   top__m1_out = (top__m1_in_l * top__m1_in_r);
   top__m2_out = (top__m2_in_l * top__m2_in_r);
   top__m3_out = (top__m3_in_l * top__m3_in_r);
   top__a1_out = arx_wrap(arx_round((top__a1_in_l + top__a1_in_r), 7), 24);
   top__a2_out = arx_wrap(arx_round((top__a2_in_l + top__a2_in_r), 7), 24);
   switch(arx_reg__top__state) {
   case T_state_cycle0:
      top__state = T_state_cycle1;
      top__i1 = data_in;
      top__r2 = arx_lsb_extend(top__a1_out, 7);
      top__o1 = top__a2_out;
      break;
   case T_state_cycle1:
      top__state = T_state_cycle2;
      top__r1 = top__m1_out;
      top__r2 = top__m2_out;
      top__d2 = arx_reg__top__d1;
      top__d1 = arx_lsb_extend(top__a1_out, 7);
      break;
   case T_state_cycle2:
      top__state = T_state_cycle3;
      top__r3 = arx_lsb_extend(top__a1_out, 7);
      break;
   case T_state_cycle3:
      top__state = T_state_cycle0;
      top__r1 = top__m1_out;
      top__r2 = top__m2_out;
      top__r4 = top__m3_out;
      break;
   }
   data1_out = arx_reg__top__o1;
   #ifdef VCD_OUTPUT
      /* dump port values to VCD file */
      output_vcd_vector(vcd_file, u32(data_in), 8, "aba");
      output_vcd_vector(vcd_file, u32(data1_out), 8, "abb");
      output_vcd_vector(vcd_file, u32(top__m1_in_l), 8, "abc");
      output_vcd_vector(vcd_file, u32(top__m1_in_r), 8, "abd");
      output_vcd_vector(vcd_file, u32(top__m1_out), 16, "abe");
      output_vcd_vector(vcd_file, u32(top__m2_in_l), 8, "abf");
      output_vcd_vector(vcd_file, u32(top__m2_in_r), 8, "abg");
      output_vcd_vector(vcd_file, u32(top__m2_out), 16, "abh");
      output_vcd_vector(vcd_file, u32(top__m3_in_l), 8, "abi");
      output_vcd_vector(vcd_file, u32(top__m3_in_r), 8, "abj");
      output_vcd_vector(vcd_file, u32(top__m3_out), 16, "aca");
      output_vcd_vector(vcd_file, u32(top__a1_in_l), 16, "acb");
      output_vcd_vector(vcd_file, u32(top__a1_in_r), 16, "acc");
      output_vcd_vector(vcd_file, u32(top__a1_out), 8, "acd");
      output_vcd_vector(vcd_file, u32(top__a2_in_l), 16, "ace");
      output_vcd_vector(vcd_file, u32(top__a2_in_r), 16, "acf");
      output_vcd_vector(vcd_file, u32(top__a2_out), 8, "acg");
      output_vcd_vector(vcd_file, u32(top__b2), 8, "ach");
      output_vcd_vector(vcd_file, u32(top__b1), 8, "aci");
      output_vcd_vector(vcd_file, u32(top__b0), 8, "acj");
      output_vcd_vector(vcd_file, u32(top__a2), 8, "ada");
      output_vcd_vector(vcd_file, u32(top__a1), 8, "adb");
      vcd_file << "\n#" << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '0' << "aaa\n\n";
   #endif
}

