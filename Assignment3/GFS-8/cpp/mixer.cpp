#include "mixer.h"

const i32 top__i_cordic__aTan[] = 
   {
   i32(4),
   i32(2),
   i32(1),
   i32(0),
   i32(0),
   i32(0),
   i32(0)
   };
const i32 arx_reset__top__phase_step = i32(4);
const i32 arx_reset__top__i_acc__phase_acc = i32(0);
const i32 arx_reset__top__i_cordic__x[] = 
   {
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0)
   };
const i32 arx_reset__top__i_cordic__y[] = 
   {
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0)
   };
const i32 arx_reset__top__i_cordic__z[] = 
   {
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0)
   };

i32 top__phase_step, arx_reg__top__phase_step;
i32 top__i_acc__phase_acc, arx_reg__top__i_acc__phase_acc;
i32 *top__i_cordic__x, *arx_reg__top__i_cordic__x;
i32 *top__i_cordic__y, *arx_reg__top__i_cordic__y;
i32 *top__i_cordic__z, *arx_reg__top__i_cordic__z;


bool mixer::init(void)
{
   if ((top__i_cordic__x = new i32[8]) == NULL)
      return false;
   if ((arx_reg__top__i_cordic__x = new i32[8]) == NULL)
      return false;
   if ((top__i_cordic__y = new i32[8]) == NULL)
      return false;
   if ((arx_reg__top__i_cordic__y = new i32[8]) == NULL)
      return false;
   if ((top__i_cordic__z = new i32[8]) == NULL)
      return false;
   if ((arx_reg__top__i_cordic__z = new i32[8]) == NULL)
      return false;
   #ifdef VCD_OUTPUT
      vcd_file.open("debug.vcd", std::ios::out);
      vcd_file << "$timescale\n\t1 ps\n$end\n";
      vcd_file << "$scope module Arx $end\n";
      vcd_file << "$var wire 1 aaa clock $end\n";
      init_vcd_vector(vcd_file, 5, "aab", "top__phase_step");
      init_vcd_vector(vcd_file, 5, "aac", "top__i_acc__phase_acc");
      init_vcd_vector(vcd_file, 9, "aad", "top__i_cordic__x:0");
      init_vcd_vector(vcd_file, 9, "aae", "top__i_cordic__x:1");
      init_vcd_vector(vcd_file, 9, "aaf", "top__i_cordic__x:2");
      init_vcd_vector(vcd_file, 9, "aag", "top__i_cordic__x:3");
      init_vcd_vector(vcd_file, 9, "aah", "top__i_cordic__x:4");
      init_vcd_vector(vcd_file, 9, "aai", "top__i_cordic__x:5");
      init_vcd_vector(vcd_file, 9, "aaj", "top__i_cordic__x:6");
      init_vcd_vector(vcd_file, 9, "aba", "top__i_cordic__x:7");
      init_vcd_vector(vcd_file, 9, "abb", "top__i_cordic__y:0");
      init_vcd_vector(vcd_file, 9, "abc", "top__i_cordic__y:1");
      init_vcd_vector(vcd_file, 9, "abd", "top__i_cordic__y:2");
      init_vcd_vector(vcd_file, 9, "abe", "top__i_cordic__y:3");
      init_vcd_vector(vcd_file, 9, "abf", "top__i_cordic__y:4");
      init_vcd_vector(vcd_file, 9, "abg", "top__i_cordic__y:5");
      init_vcd_vector(vcd_file, 9, "abh", "top__i_cordic__y:6");
      init_vcd_vector(vcd_file, 9, "abi", "top__i_cordic__y:7");
      init_vcd_vector(vcd_file, 5, "abj", "top__i_cordic__z:0");
      init_vcd_vector(vcd_file, 5, "aca", "top__i_cordic__z:1");
      init_vcd_vector(vcd_file, 5, "acb", "top__i_cordic__z:2");
      init_vcd_vector(vcd_file, 5, "acc", "top__i_cordic__z:3");
      init_vcd_vector(vcd_file, 5, "acd", "top__i_cordic__z:4");
      init_vcd_vector(vcd_file, 5, "ace", "top__i_cordic__z:5");
      init_vcd_vector(vcd_file, 5, "acf", "top__i_cordic__z:6");
      init_vcd_vector(vcd_file, 5, "acg", "top__i_cordic__z:7");
      init_vcd_vector(vcd_file, 9, "ach", "data_in");
      init_vcd_vector(vcd_file, 5, "aci", "phase_corr");
      init_vcd_vector(vcd_file, 9, "acj", "data_out_i");
      init_vcd_vector(vcd_file, 9, "ada", "data_out_q");
      init_vcd_vector(vcd_file, 5, "adb", "top__i_acc__phase_step");
      init_vcd_vector(vcd_file, 5, "adc", "top__i_acc__phase_sum");
      init_vcd_vector(vcd_file, 9, "add", "top__i_cordic__x_in");
      init_vcd_vector(vcd_file, 9, "ade", "top__i_cordic__y_in");
      init_vcd_vector(vcd_file, 5, "adf", "top__i_cordic__p_in");
      init_vcd_value(vcd_file, "adg", "top__i_cordic__op_mode");
      init_vcd_vector(vcd_file, 9, "adh", "top__i_cordic__x_out");
      init_vcd_vector(vcd_file, 9, "adi", "top__i_cordic__y_out");
      init_vcd_vector(vcd_file, 5, "adj", "top__i_cordic__p_out");
      init_vcd_vector(vcd_file, 9, "aea", "top__cordic_in_x");
      init_vcd_vector(vcd_file, 9, "aeb", "top__cordic_in_y");
      init_vcd_vector(vcd_file, 9, "aec", "top__cordic_out_x");
      init_vcd_vector(vcd_file, 9, "aed", "top__cordic_out_y");
      init_vcd_vector(vcd_file, 5, "aee", "top__cordic_out_p");
      init_vcd_vector(vcd_file, 5, "aef", "top__phase_sum");
      init_vcd_value(vcd_file, "aeg", "top__cordic_op_mode");
      init_vcd_vector(vcd_file, 5, "aeh", "top__corrected_step");
      init_vcd_value(vcd_file, "aei", "top__i_cordic__d:0");
      init_vcd_value(vcd_file, "aej", "top__i_cordic__d:1");
      init_vcd_value(vcd_file, "afa", "top__i_cordic__d:2");
      init_vcd_value(vcd_file, "afb", "top__i_cordic__d:3");
      init_vcd_value(vcd_file, "afc", "top__i_cordic__d:4");
      init_vcd_value(vcd_file, "afd", "top__i_cordic__d:5");
      init_vcd_value(vcd_file, "afe", "top__i_cordic__d:6");
      init_vcd_vector(vcd_file, 9, "aff", "top__i_cordic__x_sh:0");
      init_vcd_vector(vcd_file, 9, "afg", "top__i_cordic__x_sh:1");
      init_vcd_vector(vcd_file, 9, "afh", "top__i_cordic__x_sh:2");
      init_vcd_vector(vcd_file, 9, "afi", "top__i_cordic__x_sh:3");
      init_vcd_vector(vcd_file, 9, "afj", "top__i_cordic__x_sh:4");
      init_vcd_vector(vcd_file, 9, "aga", "top__i_cordic__x_sh:5");
      init_vcd_vector(vcd_file, 9, "agb", "top__i_cordic__x_sh:6");
      init_vcd_vector(vcd_file, 9, "agc", "top__i_cordic__y_sh:0");
      init_vcd_vector(vcd_file, 9, "agd", "top__i_cordic__y_sh:1");
      init_vcd_vector(vcd_file, 9, "age", "top__i_cordic__y_sh:2");
      init_vcd_vector(vcd_file, 9, "agf", "top__i_cordic__y_sh:3");
      init_vcd_vector(vcd_file, 9, "agg", "top__i_cordic__y_sh:4");
      init_vcd_vector(vcd_file, 9, "agh", "top__i_cordic__y_sh:5");
      init_vcd_vector(vcd_file, 9, "agi", "top__i_cordic__y_sh:6");
      vcd_file << "$upscope $end\n";
      vcd_file << "$enddefinitions $end\n\n";
   #endif
   return true;
}

void mixer::exit(void)
{
   delete [] top__i_cordic__x;
   delete [] arx_reg__top__i_cordic__x;
   delete [] top__i_cordic__y;
   delete [] arx_reg__top__i_cordic__y;
   delete [] top__i_cordic__z;
   delete [] arx_reg__top__i_cordic__z;
   #ifdef VCD_OUTPUT
      vcd_file.close();
   #endif
}

void mixer::reset(void)
{
   top__phase_step = arx_reset__top__phase_step;
   top__i_acc__phase_acc = arx_reset__top__i_acc__phase_acc;
   for (int _i=0; _i<8; _i++) {
      top__i_cordic__x[_i] = arx_reset__top__i_cordic__x[_i];
   }
   for (int _i=0; _i<8; _i++) {
      top__i_cordic__y[_i] = arx_reset__top__i_cordic__y[_i];
   }
   for (int _i=0; _i<8; _i++) {
      top__i_cordic__z[_i] = arx_reset__top__i_cordic__z[_i];
   }
   #ifdef VCD_OUTPUT
      vcd_time_stamp = 0;
   #endif
}

void mixer::run
   (
      i32 data_in, // signed(9,4,Wrap,Trunc)
      i32 phase_corr, // signed(5,1,Wrap,Trunc)
      i32 &data_out_i, // signed(9,4,Wrap,Trunc)
      i32 &data_out_q // signed(9,4,Wrap,Trunc)
   )
{
   /* declare and init variables */
   i32 top__cordic_in_x = 0; /* variable */
   i32 top__cordic_in_y = 0; /* variable */
   i32 top__cordic_out_x = 0; /* variable */
   i32 top__cordic_out_y = 0; /* variable */
   i32 top__cordic_out_p = 0; /* variable */
   i32 top__phase_sum = 0; /* variable */
   u32 top__cordic_op_mode = 0; /* variable */
   i32 top__corrected_step = 0; /* variable */
   bool top__i_cordic__d[7] = { /* variable */
      false,
      false,
      false,
      false,
      false,
      false,
      false
   };
   i32 top__i_cordic__x_sh[7] = { /* variable */
      0,
      0,
      0,
      0,
      0,
      0,
      0
   };
   i32 top__i_cordic__y_sh[7] = { /* variable */
      0,
      0,
      0,
      0,
      0,
      0,
      0
   };
   data_out_i = 0; /* top-level outport */
   data_out_q = 0; /* top-level outport */
   i32 top__i_acc__phase_step; /* inport */
   i32 top__i_acc__phase_sum = 0; /* outport */
   i32 top__i_cordic__x_in; /* inport */
   i32 top__i_cordic__y_in; /* inport */
   i32 top__i_cordic__p_in; /* inport */
   u32 top__i_cordic__op_mode; /* inport */
   i32 top__i_cordic__x_out = 0; /* outport */
   i32 top__i_cordic__y_out = 0; /* outport */
   i32 top__i_cordic__p_out = 0; /* outport */


   /* copy register values to temp values */
   arx_reg__top__phase_step = top__phase_step;
   arx_reg__top__i_acc__phase_acc = top__i_acc__phase_acc;
   for (int _i=0; _i<8; _i++) {
      arx_reg__top__i_cordic__x[_i] = top__i_cordic__x[_i];
   }
   for (int _i=0; _i<8; _i++) {
      arx_reg__top__i_cordic__y[_i] = top__i_cordic__y[_i];
   }
   for (int _i=0; _i<8; _i++) {
      arx_reg__top__i_cordic__z[_i] = top__i_cordic__z[_i];
   }

   #ifdef VCD_OUTPUT
      /* dump register values to VCD file */
      if (vcd_time_stamp == 0) vcd_file << "$dumpvars\n";
      else vcd_file << '#' << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '1' << "aaa\n";
      output_vcd_vector(vcd_file, u32(top__phase_step), 5, "aab");
      output_vcd_vector(vcd_file, u32(top__i_acc__phase_acc), 5, "aac");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[0]), 9, "aad");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[1]), 9, "aae");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[2]), 9, "aaf");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[3]), 9, "aag");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[4]), 9, "aah");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[5]), 9, "aai");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[6]), 9, "aaj");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[7]), 9, "aba");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[0]), 9, "abb");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[1]), 9, "abc");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[2]), 9, "abd");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[3]), 9, "abe");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[4]), 9, "abf");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[5]), 9, "abg");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[6]), 9, "abh");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[7]), 9, "abi");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[0]), 5, "abj");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[1]), 5, "aca");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[2]), 5, "acb");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[3]), 5, "acc");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[4]), 5, "acd");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[5]), 5, "ace");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[6]), 5, "acf");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[7]), 5, "acg");
   #endif

   /* update */
   top__i_acc__phase_sum = arx_reg__top__i_acc__phase_acc;
   top__i_cordic__x_out = arx_reg__top__i_cordic__x[7];
   top__i_cordic__y_out = arx_reg__top__i_cordic__y[7];
   top__i_cordic__p_out = arx_reg__top__i_cordic__z[7];
   top__i_cordic__x_sh[6] = arx_truncate(i32(arx_reg__top__i_cordic__x[6]), 6);
   top__i_cordic__y_sh[6] = arx_truncate(i32(arx_reg__top__i_cordic__y[6]), 6);
   top__corrected_step = arx_wrap((arx_reg__top__phase_step + phase_corr), 27);
   top__cordic_op_mode = 0;
   top__cordic_in_x = i32(0);
   top__cordic_in_y = data_in;
   top__i_acc__phase_step = top__corrected_step;
   top__phase_sum = top__i_acc__phase_sum;
   top__i_cordic__x_in = top__cordic_in_x;
   top__i_cordic__y_in = top__cordic_in_y;
   top__i_cordic__p_in = top__phase_sum;
   top__i_cordic__op_mode = top__cordic_op_mode;
   top__cordic_out_x = top__i_cordic__x_out;
   top__cordic_out_y = top__i_cordic__y_out;
   top__cordic_out_p = top__i_cordic__p_out;
   top__i_acc__phase_acc = arx_wrap((arx_reg__top__i_acc__phase_acc + top__i_acc__phase_step), 27);
   top__i_cordic__d[6] = ((top__i_cordic__op_mode == 0 && arx_reg__top__i_cordic__z[6] >= i32(0)) || (top__i_cordic__op_mode == 1 && arx_reg__top__i_cordic__y[6] < i32(0)));
   if (top__i_cordic__d[6] == true)
   {
      top__i_cordic__x[7] = arx_wrap((arx_reg__top__i_cordic__x[6] - top__i_cordic__y_sh[6]), 23);
      top__i_cordic__y[7] = arx_wrap((arx_reg__top__i_cordic__y[6] + top__i_cordic__x_sh[6]), 23);
      top__i_cordic__z[7] = arx_wrap((arx_reg__top__i_cordic__z[6] - i32(0)), 27);
   }
   else
   {
      top__i_cordic__x[7] = arx_wrap((arx_reg__top__i_cordic__x[6] + top__i_cordic__y_sh[6]), 23);
      top__i_cordic__y[7] = arx_wrap((arx_reg__top__i_cordic__y[6] - top__i_cordic__x_sh[6]), 23);
      top__i_cordic__z[7] = arx_wrap((arx_reg__top__i_cordic__z[6] + i32(0)), 27);
   }
   top__i_cordic__d[5] = ((top__i_cordic__op_mode == 0 && arx_reg__top__i_cordic__z[5] >= i32(0)) || (top__i_cordic__op_mode == 1 && arx_reg__top__i_cordic__y[5] < i32(0)));
   top__i_cordic__x_sh[5] = arx_truncate(i32(arx_reg__top__i_cordic__x[5]), 5);
   top__i_cordic__y_sh[5] = arx_truncate(i32(arx_reg__top__i_cordic__y[5]), 5);
   if (top__i_cordic__d[5] == true)
   {
      top__i_cordic__x[6] = arx_wrap((arx_reg__top__i_cordic__x[5] - top__i_cordic__y_sh[5]), 23);
      top__i_cordic__y[6] = arx_wrap((arx_reg__top__i_cordic__y[5] + top__i_cordic__x_sh[5]), 23);
      top__i_cordic__z[6] = arx_wrap((arx_reg__top__i_cordic__z[5] - i32(0)), 27);
   }
   else
   {
      top__i_cordic__x[6] = arx_wrap((arx_reg__top__i_cordic__x[5] + top__i_cordic__y_sh[5]), 23);
      top__i_cordic__y[6] = arx_wrap((arx_reg__top__i_cordic__y[5] - top__i_cordic__x_sh[5]), 23);
      top__i_cordic__z[6] = arx_wrap((arx_reg__top__i_cordic__z[5] + i32(0)), 27);
   }
   top__i_cordic__d[4] = ((top__i_cordic__op_mode == 0 && arx_reg__top__i_cordic__z[4] >= i32(0)) || (top__i_cordic__op_mode == 1 && arx_reg__top__i_cordic__y[4] < i32(0)));
   top__i_cordic__x_sh[4] = arx_truncate(i32(arx_reg__top__i_cordic__x[4]), 4);
   top__i_cordic__y_sh[4] = arx_truncate(i32(arx_reg__top__i_cordic__y[4]), 4);
   if (top__i_cordic__d[4] == true)
   {
      top__i_cordic__x[5] = arx_wrap((arx_reg__top__i_cordic__x[4] - top__i_cordic__y_sh[4]), 23);
      top__i_cordic__y[5] = arx_wrap((arx_reg__top__i_cordic__y[4] + top__i_cordic__x_sh[4]), 23);
      top__i_cordic__z[5] = arx_wrap((arx_reg__top__i_cordic__z[4] - i32(0)), 27);
   }
   else
   {
      top__i_cordic__x[5] = arx_wrap((arx_reg__top__i_cordic__x[4] + top__i_cordic__y_sh[4]), 23);
      top__i_cordic__y[5] = arx_wrap((arx_reg__top__i_cordic__y[4] - top__i_cordic__x_sh[4]), 23);
      top__i_cordic__z[5] = arx_wrap((arx_reg__top__i_cordic__z[4] + i32(0)), 27);
   }
   top__i_cordic__d[3] = ((top__i_cordic__op_mode == 0 && arx_reg__top__i_cordic__z[3] >= i32(0)) || (top__i_cordic__op_mode == 1 && arx_reg__top__i_cordic__y[3] < i32(0)));
   top__i_cordic__x_sh[3] = arx_truncate(i32(arx_reg__top__i_cordic__x[3]), 3);
   top__i_cordic__y_sh[3] = arx_truncate(i32(arx_reg__top__i_cordic__y[3]), 3);
   if (top__i_cordic__d[3] == true)
   {
      top__i_cordic__x[4] = arx_wrap((arx_reg__top__i_cordic__x[3] - top__i_cordic__y_sh[3]), 23);
      top__i_cordic__y[4] = arx_wrap((arx_reg__top__i_cordic__y[3] + top__i_cordic__x_sh[3]), 23);
      top__i_cordic__z[4] = arx_wrap((arx_reg__top__i_cordic__z[3] - i32(0)), 27);
   }
   else
   {
      top__i_cordic__x[4] = arx_wrap((arx_reg__top__i_cordic__x[3] + top__i_cordic__y_sh[3]), 23);
      top__i_cordic__y[4] = arx_wrap((arx_reg__top__i_cordic__y[3] - top__i_cordic__x_sh[3]), 23);
      top__i_cordic__z[4] = arx_wrap((arx_reg__top__i_cordic__z[3] + i32(0)), 27);
   }
   top__i_cordic__d[2] = ((top__i_cordic__op_mode == 0 && arx_reg__top__i_cordic__z[2] >= i32(0)) || (top__i_cordic__op_mode == 1 && arx_reg__top__i_cordic__y[2] < i32(0)));
   top__i_cordic__x_sh[2] = arx_truncate(i32(arx_reg__top__i_cordic__x[2]), 2);
   top__i_cordic__y_sh[2] = arx_truncate(i32(arx_reg__top__i_cordic__y[2]), 2);
   if (top__i_cordic__d[2] == true)
   {
      top__i_cordic__x[3] = arx_wrap((arx_reg__top__i_cordic__x[2] - top__i_cordic__y_sh[2]), 23);
      top__i_cordic__y[3] = arx_wrap((arx_reg__top__i_cordic__y[2] + top__i_cordic__x_sh[2]), 23);
      top__i_cordic__z[3] = arx_wrap((arx_reg__top__i_cordic__z[2] - i32(1)), 27);
   }
   else
   {
      top__i_cordic__x[3] = arx_wrap((arx_reg__top__i_cordic__x[2] + top__i_cordic__y_sh[2]), 23);
      top__i_cordic__y[3] = arx_wrap((arx_reg__top__i_cordic__y[2] - top__i_cordic__x_sh[2]), 23);
      top__i_cordic__z[3] = arx_wrap((arx_reg__top__i_cordic__z[2] + i32(1)), 27);
   }
   top__i_cordic__d[1] = ((top__i_cordic__op_mode == 0 && arx_reg__top__i_cordic__z[1] >= i32(0)) || (top__i_cordic__op_mode == 1 && arx_reg__top__i_cordic__y[1] < i32(0)));
   top__i_cordic__x_sh[1] = arx_truncate(i32(arx_reg__top__i_cordic__x[1]), 1);
   top__i_cordic__y_sh[1] = arx_truncate(i32(arx_reg__top__i_cordic__y[1]), 1);
   if (top__i_cordic__d[1] == true)
   {
      top__i_cordic__x[2] = arx_wrap((arx_reg__top__i_cordic__x[1] - top__i_cordic__y_sh[1]), 23);
      top__i_cordic__y[2] = arx_wrap((arx_reg__top__i_cordic__y[1] + top__i_cordic__x_sh[1]), 23);
      top__i_cordic__z[2] = arx_wrap((arx_reg__top__i_cordic__z[1] - i32(2)), 27);
   }
   else
   {
      top__i_cordic__x[2] = arx_wrap((arx_reg__top__i_cordic__x[1] + top__i_cordic__y_sh[1]), 23);
      top__i_cordic__y[2] = arx_wrap((arx_reg__top__i_cordic__y[1] - top__i_cordic__x_sh[1]), 23);
      top__i_cordic__z[2] = arx_wrap((arx_reg__top__i_cordic__z[1] + i32(2)), 27);
   }
   top__i_cordic__d[0] = ((top__i_cordic__op_mode == 0 && arx_reg__top__i_cordic__z[0] >= i32(0)) || (top__i_cordic__op_mode == 1 && arx_reg__top__i_cordic__y[0] < i32(0)));
   top__i_cordic__x_sh[0] = arx_reg__top__i_cordic__x[0];
   top__i_cordic__y_sh[0] = arx_reg__top__i_cordic__y[0];
   if (top__i_cordic__d[0] == true)
   {
      top__i_cordic__x[1] = arx_wrap((arx_reg__top__i_cordic__x[0] - top__i_cordic__y_sh[0]), 23);
      top__i_cordic__y[1] = arx_wrap((arx_reg__top__i_cordic__y[0] + top__i_cordic__x_sh[0]), 23);
      top__i_cordic__z[1] = arx_wrap((arx_reg__top__i_cordic__z[0] - i32(4)), 27);
   }
   else
   {
      top__i_cordic__x[1] = arx_wrap((arx_reg__top__i_cordic__x[0] + top__i_cordic__y_sh[0]), 23);
      top__i_cordic__y[1] = arx_wrap((arx_reg__top__i_cordic__y[0] - top__i_cordic__x_sh[0]), 23);
      top__i_cordic__z[1] = arx_wrap((arx_reg__top__i_cordic__z[0] + i32(4)), 27);
   }
   if (top__i_cordic__op_mode == 0)
   {
      if ((top__i_cordic__p_in > i32(8) || top__i_cordic__p_in < i32(-8)))
      {
         top__i_cordic__x[0] = (-top__i_cordic__x_in);
         top__i_cordic__y[0] = (-top__i_cordic__y_in);
         top__i_cordic__z[0] = arx_wrap((top__i_cordic__p_in + i32(-16)), 27);
      }
      else
      {
         top__i_cordic__x[0] = top__i_cordic__x_in;
         top__i_cordic__y[0] = top__i_cordic__y_in;
         top__i_cordic__z[0] = top__i_cordic__p_in;
      }
   }
   else
   {
      if (top__i_cordic__x_in <= i32(0))
      {
         top__i_cordic__x[0] = (-top__i_cordic__x_in);
         top__i_cordic__y[0] = (-top__i_cordic__y_in);
         top__i_cordic__z[0] = arx_wrap((top__i_cordic__p_in + i32(-16)), 27);
      }
      else
      {
         top__i_cordic__x[0] = top__i_cordic__x_in;
         top__i_cordic__y[0] = top__i_cordic__y_in;
         top__i_cordic__z[0] = top__i_cordic__p_in;
      }
   }
   data_out_q = top__cordic_out_x;
   data_out_i = top__cordic_out_y;
   #ifdef VCD_OUTPUT
      /* dump port values to VCD file */
      output_vcd_vector(vcd_file, u32(data_in), 9, "ach");
      output_vcd_vector(vcd_file, u32(phase_corr), 5, "aci");
      output_vcd_vector(vcd_file, u32(data_out_i), 9, "acj");
      output_vcd_vector(vcd_file, u32(data_out_q), 9, "ada");
      output_vcd_vector(vcd_file, u32(top__i_acc__phase_step), 5, "adb");
      output_vcd_vector(vcd_file, u32(top__i_acc__phase_sum), 5, "adc");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_in), 9, "add");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_in), 9, "ade");
      output_vcd_vector(vcd_file, u32(top__i_cordic__p_in), 5, "adf");
      output_vcd_value(vcd_file, top__i_cordic__op_mode, "adg");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_out), 9, "adh");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_out), 9, "adi");
      output_vcd_vector(vcd_file, u32(top__i_cordic__p_out), 5, "adj");
      output_vcd_vector(vcd_file, u32(top__cordic_in_x), 9, "aea");
      output_vcd_vector(vcd_file, u32(top__cordic_in_y), 9, "aeb");
      output_vcd_vector(vcd_file, u32(top__cordic_out_x), 9, "aec");
      output_vcd_vector(vcd_file, u32(top__cordic_out_y), 9, "aed");
      output_vcd_vector(vcd_file, u32(top__cordic_out_p), 5, "aee");
      output_vcd_vector(vcd_file, u32(top__phase_sum), 5, "aef");
      output_vcd_value(vcd_file, top__cordic_op_mode, "aeg");
      output_vcd_vector(vcd_file, u32(top__corrected_step), 5, "aeh");
      output_vcd_value(vcd_file, top__i_cordic__d[0], "aei");
      output_vcd_value(vcd_file, top__i_cordic__d[1], "aej");
      output_vcd_value(vcd_file, top__i_cordic__d[2], "afa");
      output_vcd_value(vcd_file, top__i_cordic__d[3], "afb");
      output_vcd_value(vcd_file, top__i_cordic__d[4], "afc");
      output_vcd_value(vcd_file, top__i_cordic__d[5], "afd");
      output_vcd_value(vcd_file, top__i_cordic__d[6], "afe");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[0]), 9, "aff");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[1]), 9, "afg");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[2]), 9, "afh");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[3]), 9, "afi");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[4]), 9, "afj");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[5]), 9, "aga");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[6]), 9, "agb");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[0]), 9, "agc");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[1]), 9, "agd");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[2]), 9, "age");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[3]), 9, "agf");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[4]), 9, "agg");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[5]), 9, "agh");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[6]), 9, "agi");
      vcd_file << "\n#" << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '0' << "aaa\n\n";
   #endif
}

