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
const i32 arx_reset__top__sin_array[] = 
   {
   i32(0),
   i32(11),
   i32(15),
   i32(11),
   i32(0),
   i32(-11),
   i32(-16),
   i32(-11)
   };
const i32 arx_reset__top__cos_array[] = 
   {
   i32(15),
   i32(11),
   i32(0),
   i32(-11),
   i32(-16),
   i32(-11),
   i32(0),
   i32(11)
   };
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
i32 *top__sin_array, *arx_reg__top__sin_array;
i32 *top__cos_array, *arx_reg__top__cos_array;
i32 top__i_acc__phase_acc, arx_reg__top__i_acc__phase_acc;
i32 *top__i_cordic__x, *arx_reg__top__i_cordic__x;
i32 *top__i_cordic__y, *arx_reg__top__i_cordic__y;
i32 *top__i_cordic__z, *arx_reg__top__i_cordic__z;


bool mixer::init(void)
{
   if ((top__sin_array = new i32[8]) == NULL)
      return false;
   if ((arx_reg__top__sin_array = new i32[8]) == NULL)
      return false;
   if ((top__cos_array = new i32[8]) == NULL)
      return false;
   if ((arx_reg__top__cos_array = new i32[8]) == NULL)
      return false;
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
      init_vcd_vector(vcd_file, 5, "aac", "top__sin_array:0");
      init_vcd_vector(vcd_file, 5, "aad", "top__sin_array:1");
      init_vcd_vector(vcd_file, 5, "aae", "top__sin_array:2");
      init_vcd_vector(vcd_file, 5, "aaf", "top__sin_array:3");
      init_vcd_vector(vcd_file, 5, "aag", "top__sin_array:4");
      init_vcd_vector(vcd_file, 5, "aah", "top__sin_array:5");
      init_vcd_vector(vcd_file, 5, "aai", "top__sin_array:6");
      init_vcd_vector(vcd_file, 5, "aaj", "top__sin_array:7");
      init_vcd_vector(vcd_file, 5, "aba", "top__cos_array:0");
      init_vcd_vector(vcd_file, 5, "abb", "top__cos_array:1");
      init_vcd_vector(vcd_file, 5, "abc", "top__cos_array:2");
      init_vcd_vector(vcd_file, 5, "abd", "top__cos_array:3");
      init_vcd_vector(vcd_file, 5, "abe", "top__cos_array:4");
      init_vcd_vector(vcd_file, 5, "abf", "top__cos_array:5");
      init_vcd_vector(vcd_file, 5, "abg", "top__cos_array:6");
      init_vcd_vector(vcd_file, 5, "abh", "top__cos_array:7");
      init_vcd_vector(vcd_file, 5, "abi", "top__i_acc__phase_acc");
      init_vcd_vector(vcd_file, 9, "abj", "top__i_cordic__x:0");
      init_vcd_vector(vcd_file, 9, "aca", "top__i_cordic__x:1");
      init_vcd_vector(vcd_file, 9, "acb", "top__i_cordic__x:2");
      init_vcd_vector(vcd_file, 9, "acc", "top__i_cordic__x:3");
      init_vcd_vector(vcd_file, 9, "acd", "top__i_cordic__x:4");
      init_vcd_vector(vcd_file, 9, "ace", "top__i_cordic__x:5");
      init_vcd_vector(vcd_file, 9, "acf", "top__i_cordic__x:6");
      init_vcd_vector(vcd_file, 9, "acg", "top__i_cordic__x:7");
      init_vcd_vector(vcd_file, 9, "ach", "top__i_cordic__y:0");
      init_vcd_vector(vcd_file, 9, "aci", "top__i_cordic__y:1");
      init_vcd_vector(vcd_file, 9, "acj", "top__i_cordic__y:2");
      init_vcd_vector(vcd_file, 9, "ada", "top__i_cordic__y:3");
      init_vcd_vector(vcd_file, 9, "adb", "top__i_cordic__y:4");
      init_vcd_vector(vcd_file, 9, "adc", "top__i_cordic__y:5");
      init_vcd_vector(vcd_file, 9, "add", "top__i_cordic__y:6");
      init_vcd_vector(vcd_file, 9, "ade", "top__i_cordic__y:7");
      init_vcd_vector(vcd_file, 5, "adf", "top__i_cordic__z:0");
      init_vcd_vector(vcd_file, 5, "adg", "top__i_cordic__z:1");
      init_vcd_vector(vcd_file, 5, "adh", "top__i_cordic__z:2");
      init_vcd_vector(vcd_file, 5, "adi", "top__i_cordic__z:3");
      init_vcd_vector(vcd_file, 5, "adj", "top__i_cordic__z:4");
      init_vcd_vector(vcd_file, 5, "aea", "top__i_cordic__z:5");
      init_vcd_vector(vcd_file, 5, "aeb", "top__i_cordic__z:6");
      init_vcd_vector(vcd_file, 5, "aec", "top__i_cordic__z:7");
      init_vcd_vector(vcd_file, 9, "aed", "data_in");
      init_vcd_vector(vcd_file, 5, "aee", "phase_corr");
      init_vcd_vector(vcd_file, 9, "aef", "data_out_i");
      init_vcd_vector(vcd_file, 9, "aeg", "data_out_q");
      init_vcd_vector(vcd_file, 5, "aeh", "top__i_acc__phase_step");
      init_vcd_vector(vcd_file, 5, "aei", "top__i_acc__phase_sum");
      init_vcd_vector(vcd_file, 9, "aej", "top__i_cordic__x_in");
      init_vcd_vector(vcd_file, 9, "afa", "top__i_cordic__y_in");
      init_vcd_vector(vcd_file, 5, "afb", "top__i_cordic__p_in");
      init_vcd_value(vcd_file, "afc", "top__i_cordic__op_mode");
      init_vcd_vector(vcd_file, 9, "afd", "top__i_cordic__x_out");
      init_vcd_vector(vcd_file, 9, "afe", "top__i_cordic__y_out");
      init_vcd_vector(vcd_file, 5, "aff", "top__i_cordic__p_out");
      init_vcd_vector(vcd_file, 9, "afg", "top__cordic_in_x");
      init_vcd_vector(vcd_file, 9, "afh", "top__cordic_in_y");
      init_vcd_vector(vcd_file, 9, "afi", "top__cordic_out_x");
      init_vcd_vector(vcd_file, 9, "afj", "top__cordic_out_y");
      init_vcd_vector(vcd_file, 5, "aga", "top__cordic_out_p");
      init_vcd_vector(vcd_file, 4, "agb", "top__phase_i");
      init_vcd_vector(vcd_file, 5, "agc", "top__phase_sum");
      init_vcd_value(vcd_file, "agd", "top__cordic_op_mode");
      init_vcd_vector(vcd_file, 5, "age", "top__corrected_step");
      init_vcd_value(vcd_file, "agf", "top__i_cordic__d:0");
      init_vcd_value(vcd_file, "agg", "top__i_cordic__d:1");
      init_vcd_value(vcd_file, "agh", "top__i_cordic__d:2");
      init_vcd_value(vcd_file, "agi", "top__i_cordic__d:3");
      init_vcd_value(vcd_file, "agj", "top__i_cordic__d:4");
      init_vcd_value(vcd_file, "aha", "top__i_cordic__d:5");
      init_vcd_value(vcd_file, "ahb", "top__i_cordic__d:6");
      init_vcd_vector(vcd_file, 9, "ahc", "top__i_cordic__x_sh:0");
      init_vcd_vector(vcd_file, 9, "ahd", "top__i_cordic__x_sh:1");
      init_vcd_vector(vcd_file, 9, "ahe", "top__i_cordic__x_sh:2");
      init_vcd_vector(vcd_file, 9, "ahf", "top__i_cordic__x_sh:3");
      init_vcd_vector(vcd_file, 9, "ahg", "top__i_cordic__x_sh:4");
      init_vcd_vector(vcd_file, 9, "ahh", "top__i_cordic__x_sh:5");
      init_vcd_vector(vcd_file, 9, "ahi", "top__i_cordic__x_sh:6");
      init_vcd_vector(vcd_file, 9, "ahj", "top__i_cordic__y_sh:0");
      init_vcd_vector(vcd_file, 9, "aia", "top__i_cordic__y_sh:1");
      init_vcd_vector(vcd_file, 9, "aib", "top__i_cordic__y_sh:2");
      init_vcd_vector(vcd_file, 9, "aic", "top__i_cordic__y_sh:3");
      init_vcd_vector(vcd_file, 9, "aid", "top__i_cordic__y_sh:4");
      init_vcd_vector(vcd_file, 9, "aie", "top__i_cordic__y_sh:5");
      init_vcd_vector(vcd_file, 9, "aif", "top__i_cordic__y_sh:6");
      vcd_file << "$upscope $end\n";
      vcd_file << "$enddefinitions $end\n\n";
   #endif
   return true;
}

void mixer::exit(void)
{
   delete [] top__sin_array;
   delete [] arx_reg__top__sin_array;
   delete [] top__cos_array;
   delete [] arx_reg__top__cos_array;
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
   for (int _i=0; _i<8; _i++) {
      top__sin_array[_i] = arx_reset__top__sin_array[_i];
   }
   for (int _i=0; _i<8; _i++) {
      top__cos_array[_i] = arx_reset__top__cos_array[_i];
   }
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
   u32 top__phase_i = 0; /* variable */
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
   for (int _i=0; _i<8; _i++) {
      arx_reg__top__sin_array[_i] = top__sin_array[_i];
   }
   for (int _i=0; _i<8; _i++) {
      arx_reg__top__cos_array[_i] = top__cos_array[_i];
   }
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
      output_vcd_vector(vcd_file, u32(top__sin_array[0]), 5, "aac");
      output_vcd_vector(vcd_file, u32(top__sin_array[1]), 5, "aad");
      output_vcd_vector(vcd_file, u32(top__sin_array[2]), 5, "aae");
      output_vcd_vector(vcd_file, u32(top__sin_array[3]), 5, "aaf");
      output_vcd_vector(vcd_file, u32(top__sin_array[4]), 5, "aag");
      output_vcd_vector(vcd_file, u32(top__sin_array[5]), 5, "aah");
      output_vcd_vector(vcd_file, u32(top__sin_array[6]), 5, "aai");
      output_vcd_vector(vcd_file, u32(top__sin_array[7]), 5, "aaj");
      output_vcd_vector(vcd_file, u32(top__cos_array[0]), 5, "aba");
      output_vcd_vector(vcd_file, u32(top__cos_array[1]), 5, "abb");
      output_vcd_vector(vcd_file, u32(top__cos_array[2]), 5, "abc");
      output_vcd_vector(vcd_file, u32(top__cos_array[3]), 5, "abd");
      output_vcd_vector(vcd_file, u32(top__cos_array[4]), 5, "abe");
      output_vcd_vector(vcd_file, u32(top__cos_array[5]), 5, "abf");
      output_vcd_vector(vcd_file, u32(top__cos_array[6]), 5, "abg");
      output_vcd_vector(vcd_file, u32(top__cos_array[7]), 5, "abh");
      output_vcd_vector(vcd_file, u32(top__i_acc__phase_acc), 5, "abi");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[0]), 9, "abj");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[1]), 9, "aca");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[2]), 9, "acb");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[3]), 9, "acc");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[4]), 9, "acd");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[5]), 9, "ace");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[6]), 9, "acf");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x[7]), 9, "acg");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[0]), 9, "ach");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[1]), 9, "aci");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[2]), 9, "acj");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[3]), 9, "ada");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[4]), 9, "adb");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[5]), 9, "adc");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[6]), 9, "add");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y[7]), 9, "ade");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[0]), 5, "adf");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[1]), 5, "adg");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[2]), 5, "adh");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[3]), 5, "adi");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[4]), 5, "adj");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[5]), 5, "aea");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[6]), 5, "aeb");
      output_vcd_vector(vcd_file, u32(top__i_cordic__z[7]), 5, "aec");
   #endif

   /* update */
   top__i_acc__phase_sum = arx_reg__top__i_acc__phase_acc;
   top__i_cordic__x_out = arx_reg__top__i_cordic__x[7];
   top__i_cordic__y_out = arx_reg__top__i_cordic__y[7];
   top__i_cordic__p_out = arx_reg__top__i_cordic__z[7];
   top__i_cordic__x_sh[6] = arx_truncate(i32(arx_reg__top__i_cordic__x[6]), 6);
   top__i_cordic__y_sh[6] = arx_truncate(i32(arx_reg__top__i_cordic__y[6]), 6);
   data_out_q = arx_wrap(arx_truncate((data_in * arx_reg__top__sin_array[top__phase_i]), 4), 23);
   data_out_i = arx_wrap(arx_truncate((data_in * arx_reg__top__cos_array[top__phase_i]), 4), 23);
   if (top__phase_i < u32(8))
   {
      top__phase_i = arx_wrap((top__phase_i + u32(1)), 28);
   }
   else
   {
      top__phase_i = u32(0);
   }
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
   #ifdef VCD_OUTPUT
      /* dump port values to VCD file */
      output_vcd_vector(vcd_file, u32(data_in), 9, "aed");
      output_vcd_vector(vcd_file, u32(phase_corr), 5, "aee");
      output_vcd_vector(vcd_file, u32(data_out_i), 9, "aef");
      output_vcd_vector(vcd_file, u32(data_out_q), 9, "aeg");
      output_vcd_vector(vcd_file, u32(top__i_acc__phase_step), 5, "aeh");
      output_vcd_vector(vcd_file, u32(top__i_acc__phase_sum), 5, "aei");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_in), 9, "aej");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_in), 9, "afa");
      output_vcd_vector(vcd_file, u32(top__i_cordic__p_in), 5, "afb");
      output_vcd_value(vcd_file, top__i_cordic__op_mode, "afc");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_out), 9, "afd");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_out), 9, "afe");
      output_vcd_vector(vcd_file, u32(top__i_cordic__p_out), 5, "aff");
      output_vcd_vector(vcd_file, u32(top__cordic_in_x), 9, "afg");
      output_vcd_vector(vcd_file, u32(top__cordic_in_y), 9, "afh");
      output_vcd_vector(vcd_file, u32(top__cordic_out_x), 9, "afi");
      output_vcd_vector(vcd_file, u32(top__cordic_out_y), 9, "afj");
      output_vcd_vector(vcd_file, u32(top__cordic_out_p), 5, "aga");
      output_vcd_vector(vcd_file, u32(top__phase_i), 4, "agb");
      output_vcd_vector(vcd_file, u32(top__phase_sum), 5, "agc");
      output_vcd_value(vcd_file, top__cordic_op_mode, "agd");
      output_vcd_vector(vcd_file, u32(top__corrected_step), 5, "age");
      output_vcd_value(vcd_file, top__i_cordic__d[0], "agf");
      output_vcd_value(vcd_file, top__i_cordic__d[1], "agg");
      output_vcd_value(vcd_file, top__i_cordic__d[2], "agh");
      output_vcd_value(vcd_file, top__i_cordic__d[3], "agi");
      output_vcd_value(vcd_file, top__i_cordic__d[4], "agj");
      output_vcd_value(vcd_file, top__i_cordic__d[5], "aha");
      output_vcd_value(vcd_file, top__i_cordic__d[6], "ahb");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[0]), 9, "ahc");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[1]), 9, "ahd");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[2]), 9, "ahe");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[3]), 9, "ahf");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[4]), 9, "ahg");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[5]), 9, "ahh");
      output_vcd_vector(vcd_file, u32(top__i_cordic__x_sh[6]), 9, "ahi");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[0]), 9, "ahj");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[1]), 9, "aia");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[2]), 9, "aib");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[3]), 9, "aic");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[4]), 9, "aid");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[5]), 9, "aie");
      output_vcd_vector(vcd_file, u32(top__i_cordic__y_sh[6]), 9, "aif");
      vcd_file << "\n#" << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '0' << "aaa\n\n";
   #endif
}

