#include "MAP7.h"

enum T_state {T_state_cycle0, T_state_cycle1, T_state_cycle2, T_state_cycle3, T_state_cycle4, T_state_cycle5, T_state_cycle6};
const i32 arx_reset__top__i1 = i32(0);
const i32 arx_reset__top__o1 = i32(0);
const i32 arx_reset__top__r1 = i32(0);
const i32 arx_reset__top__r2 = i32(0);
const i32 arx_reset__top__d1 = i32(0);
const i32 arx_reset__top__d2 = i32(0);
const T_state arx_reset__top__state = T_state_cycle0;

i32 top__i1, arx_reg__top__i1;
i32 top__o1, arx_reg__top__o1;
i32 top__r1, arx_reg__top__r1;
i32 top__r2, arx_reg__top__r2;
i32 top__d1, arx_reg__top__d1;
i32 top__d2, arx_reg__top__d2;
T_state top__state, arx_reg__top__state;


bool MAP7::init(void)
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
      init_vcd_vector(vcd_file, 16, "aaf", "top__d1");
      init_vcd_vector(vcd_file, 16, "aag", "top__d2");
      init_vcd_vector(vcd_file, 3, "aah", "top__state");
      init_vcd_vector(vcd_file, 8, "aai", "data_in");
      init_vcd_vector(vcd_file, 8, "aaj", "data_out");
      init_vcd_vector(vcd_file, 8, "aba", "top__m_in_l");
      init_vcd_vector(vcd_file, 8, "abb", "top__m_in_r");
      init_vcd_vector(vcd_file, 16, "abc", "top__m_out");
      init_vcd_vector(vcd_file, 8, "abd", "top__m2_in_l");
      init_vcd_vector(vcd_file, 8, "abe", "top__m2_in_r");
      init_vcd_vector(vcd_file, 16, "abf", "top__m2_out");
      init_vcd_vector(vcd_file, 16, "abg", "top__a_in_l");
      init_vcd_vector(vcd_file, 16, "abh", "top__a_in_r");
      init_vcd_vector(vcd_file, 8, "abi", "top__a_out");
      init_vcd_vector(vcd_file, 8, "abj", "top__b2");
      init_vcd_vector(vcd_file, 8, "aca", "top__b1");
      init_vcd_vector(vcd_file, 8, "acb", "top__b0");
      init_vcd_vector(vcd_file, 8, "acc", "top__a2");
      init_vcd_vector(vcd_file, 8, "acd", "top__a1");
      vcd_file << "$upscope $end\n";
      vcd_file << "$enddefinitions $end\n\n";
   #endif
   return true;
}

void MAP7::exit(void)
{
   #ifdef VCD_OUTPUT
      vcd_file.close();
   #endif
}

void MAP7::reset(void)
{
   top__i1 = arx_reset__top__i1;
   top__o1 = arx_reset__top__o1;
   top__r1 = arx_reset__top__r1;
   top__r2 = arx_reset__top__r2;
   top__d1 = arx_reset__top__d1;
   top__d2 = arx_reset__top__d2;
   top__state = arx_reset__top__state;
   #ifdef VCD_OUTPUT
      vcd_time_stamp = 0;
   #endif
}

void MAP7::run
   (
      i32 data_in, // signed(8,5,Wrap,Round)
      i32 &data_out // signed(8,5,Wrap,Round)
   )
{
   /* declare and init variables */
   i32 top__m_in_l = 0; /* variable */
   i32 top__m_in_r = 0; /* variable */
   i32 top__m_out = 0; /* variable */
   i32 top__m2_in_l = 0; /* variable */
   i32 top__m2_in_r = 0; /* variable */
   i32 top__m2_out = 0; /* variable */
   i32 top__a_in_l = 0; /* variable */
   i32 top__a_in_r = 0; /* variable */
   i32 top__a_out = 0; /* variable */
   i32 top__b2 = 0; /* variable */
   i32 top__b1 = 0; /* variable */
   i32 top__b0 = 0; /* variable */
   i32 top__a2 = 0; /* variable */
   i32 top__a1 = 0; /* variable */
   data_out = 0; /* top-level outport */


   /* copy register values to temp values */
   arx_reg__top__i1 = top__i1;
   arx_reg__top__o1 = top__o1;
   arx_reg__top__r1 = top__r1;
   arx_reg__top__r2 = top__r2;
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
      output_vcd_vector(vcd_file, u32(top__d1), 16, "aaf");
      output_vcd_vector(vcd_file, u32(top__d2), 16, "aag");
      output_vcd_vector(vcd_file, u32(top__state), 3, "aah");
   #endif

   /* update */
   top__b2 = i32(57);
   top__b1 = i32(-102);
   top__b0 = i32(57);
   top__a2 = i32(-49);
   top__a1 = i32(67);
   switch(arx_reg__top__state) {
   case T_state_cycle0:
      top__m_in_l = top__a1;
      top__m_in_r = arx_wrap(arx_round(arx_reg__top__d1, 7), 24);
      top__m2_in_l = top__a2;
      top__m2_in_r = arx_wrap(arx_round(arx_reg__top__d2, 7), 24);
      break;
   case T_state_cycle1:
      top__m_in_l = top__a1;
      top__m_in_r = arx_wrap(arx_round(arx_reg__top__d1, 7), 24);
      top__m2_in_l = top__a2;
      top__m2_in_r = arx_wrap(arx_round(arx_reg__top__d2, 7), 24);
      break;
   case T_state_cycle2:
      top__m_in_l = top__b1;
      top__m_in_r = arx_wrap(arx_round(arx_reg__top__d1, 7), 24);
      top__m2_in_l = top__b2;
      top__m2_in_r = arx_wrap(arx_round(arx_reg__top__d2, 7), 24);
      break;
   case T_state_cycle3:
      top__m_in_l = top__b1;
      top__m_in_r = arx_wrap(arx_round(arx_reg__top__d1, 7), 24);
      top__m2_in_l = top__b2;
      top__m2_in_r = arx_wrap(arx_round(arx_reg__top__d2, 7), 24);
      break;
   case T_state_cycle4:
      top__m2_in_l = top__b0;
      top__m2_in_r = arx_wrap(arx_round(arx_reg__top__d1, 7), 24);
      break;
   case T_state_cycle5:
      top__m2_in_l = top__b0;
      top__m2_in_r = arx_wrap(arx_round(arx_reg__top__d1, 7), 24);
      break;
   case T_state_cycle6:
      break;
   }
   switch(arx_reg__top__state) {
   case T_state_cycle0:
      break;
   case T_state_cycle1:
      break;
   case T_state_cycle2:
      top__a_in_l = arx_reg__top__r1;
      top__a_in_r = arx_reg__top__r2;
      break;
   case T_state_cycle3:
      top__a_in_l = arx_lsb_extend(arx_reg__top__i1, 7);
      top__a_in_r = arx_reg__top__r2;
      break;
   case T_state_cycle4:
      top__a_in_l = arx_reg__top__r1;
      top__a_in_r = arx_reg__top__r2;
      break;
   case T_state_cycle5:
      break;
   case T_state_cycle6:
      top__a_in_l = arx_reg__top__r1;
      top__a_in_r = arx_reg__top__r2;
      break;
   }
   top__m_out = (top__m_in_l * top__m_in_r);
   top__m2_out = (top__m2_in_l * top__m2_in_r);
   top__a_out = arx_wrap(arx_round((top__a_in_l + top__a_in_r), 7), 24);
   switch(arx_reg__top__state) {
   case T_state_cycle0:
      top__state = T_state_cycle1;
      top__i1 = data_in;
      break;
   case T_state_cycle1:
      top__state = T_state_cycle2;
      top__r1 = top__m_out;
      top__r2 = top__m2_out;
      break;
   case T_state_cycle2:
      top__state = T_state_cycle3;
      top__r2 = arx_lsb_extend(top__a_out, 7);
      break;
   case T_state_cycle3:
      top__state = T_state_cycle4;
      top__r1 = top__m_out;
      top__r2 = top__m2_out;
      top__d2 = arx_reg__top__d1;
      top__d1 = arx_lsb_extend(top__a_out, 7);
      break;
   case T_state_cycle4:
      top__state = T_state_cycle5;
      top__r2 = arx_lsb_extend(top__a_out, 7);
      break;
   case T_state_cycle5:
      top__state = T_state_cycle6;
      top__r1 = top__m2_out;
      break;
   case T_state_cycle6:
      top__state = T_state_cycle0;
      top__o1 = top__a_out;
      break;
   }
   data_out = arx_reg__top__o1;
   #ifdef VCD_OUTPUT
      /* dump port values to VCD file */
      output_vcd_vector(vcd_file, u32(data_in), 8, "aai");
      output_vcd_vector(vcd_file, u32(data_out), 8, "aaj");
      output_vcd_vector(vcd_file, u32(top__m_in_l), 8, "aba");
      output_vcd_vector(vcd_file, u32(top__m_in_r), 8, "abb");
      output_vcd_vector(vcd_file, u32(top__m_out), 16, "abc");
      output_vcd_vector(vcd_file, u32(top__m2_in_l), 8, "abd");
      output_vcd_vector(vcd_file, u32(top__m2_in_r), 8, "abe");
      output_vcd_vector(vcd_file, u32(top__m2_out), 16, "abf");
      output_vcd_vector(vcd_file, u32(top__a_in_l), 16, "abg");
      output_vcd_vector(vcd_file, u32(top__a_in_r), 16, "abh");
      output_vcd_vector(vcd_file, u32(top__a_out), 8, "abi");
      output_vcd_vector(vcd_file, u32(top__b2), 8, "abj");
      output_vcd_vector(vcd_file, u32(top__b1), 8, "aca");
      output_vcd_vector(vcd_file, u32(top__b0), 8, "acb");
      output_vcd_vector(vcd_file, u32(top__a2), 8, "acc");
      output_vcd_vector(vcd_file, u32(top__a1), 8, "acd");
      vcd_file << "\n#" << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '0' << "aaa\n\n";
   #endif
}

