#include "filter.h"

const i32 arx_reset__top__lpf_i__input[] = 
   {
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0)
   };
const i32 arx_reset__top__lpf_q__input[] = 
   {
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0),
   i32(0)
   };

i32 *top__lpf_i__input, *arx_reg__top__lpf_i__input;
i32 *top__lpf_q__input, *arx_reg__top__lpf_q__input;


bool filter::init(void)
{
   if ((top__lpf_i__input = new i32[28]) == NULL)
      return false;
   if ((arx_reg__top__lpf_i__input = new i32[28]) == NULL)
      return false;
   if ((top__lpf_q__input = new i32[28]) == NULL)
      return false;
   if ((arx_reg__top__lpf_q__input = new i32[28]) == NULL)
      return false;
   #ifdef VCD_OUTPUT
      vcd_file.open("debug.vcd", std::ios::out);
      vcd_file << "$timescale\n\t1 ps\n$end\n";
      vcd_file << "$scope module Arx $end\n";
      vcd_file << "$var wire 1 aaa clock $end\n";
      init_vcd_vector(vcd_file, 9, "aab", "top__lpf_i__input:0");
      init_vcd_vector(vcd_file, 9, "aac", "top__lpf_i__input:1");
      init_vcd_vector(vcd_file, 9, "aad", "top__lpf_i__input:2");
      init_vcd_vector(vcd_file, 9, "aae", "top__lpf_i__input:3");
      init_vcd_vector(vcd_file, 9, "aaf", "top__lpf_i__input:4");
      init_vcd_vector(vcd_file, 9, "aag", "top__lpf_i__input:5");
      init_vcd_vector(vcd_file, 9, "aah", "top__lpf_i__input:6");
      init_vcd_vector(vcd_file, 9, "aai", "top__lpf_i__input:7");
      init_vcd_vector(vcd_file, 9, "aaj", "top__lpf_i__input:8");
      init_vcd_vector(vcd_file, 9, "aba", "top__lpf_i__input:9");
      init_vcd_vector(vcd_file, 9, "abb", "top__lpf_i__input:10");
      init_vcd_vector(vcd_file, 9, "abc", "top__lpf_i__input:11");
      init_vcd_vector(vcd_file, 9, "abd", "top__lpf_i__input:12");
      init_vcd_vector(vcd_file, 9, "abe", "top__lpf_i__input:13");
      init_vcd_vector(vcd_file, 9, "abf", "top__lpf_i__input:14");
      init_vcd_vector(vcd_file, 9, "abg", "top__lpf_i__input:15");
      init_vcd_vector(vcd_file, 9, "abh", "top__lpf_i__input:16");
      init_vcd_vector(vcd_file, 9, "abi", "top__lpf_i__input:17");
      init_vcd_vector(vcd_file, 9, "abj", "top__lpf_i__input:18");
      init_vcd_vector(vcd_file, 9, "aca", "top__lpf_i__input:19");
      init_vcd_vector(vcd_file, 9, "acb", "top__lpf_i__input:20");
      init_vcd_vector(vcd_file, 9, "acc", "top__lpf_i__input:21");
      init_vcd_vector(vcd_file, 9, "acd", "top__lpf_i__input:22");
      init_vcd_vector(vcd_file, 9, "ace", "top__lpf_i__input:23");
      init_vcd_vector(vcd_file, 9, "acf", "top__lpf_i__input:24");
      init_vcd_vector(vcd_file, 9, "acg", "top__lpf_i__input:25");
      init_vcd_vector(vcd_file, 9, "ach", "top__lpf_i__input:26");
      init_vcd_vector(vcd_file, 9, "aci", "top__lpf_i__input:27");
      init_vcd_vector(vcd_file, 9, "acj", "top__lpf_q__input:0");
      init_vcd_vector(vcd_file, 9, "ada", "top__lpf_q__input:1");
      init_vcd_vector(vcd_file, 9, "adb", "top__lpf_q__input:2");
      init_vcd_vector(vcd_file, 9, "adc", "top__lpf_q__input:3");
      init_vcd_vector(vcd_file, 9, "add", "top__lpf_q__input:4");
      init_vcd_vector(vcd_file, 9, "ade", "top__lpf_q__input:5");
      init_vcd_vector(vcd_file, 9, "adf", "top__lpf_q__input:6");
      init_vcd_vector(vcd_file, 9, "adg", "top__lpf_q__input:7");
      init_vcd_vector(vcd_file, 9, "adh", "top__lpf_q__input:8");
      init_vcd_vector(vcd_file, 9, "adi", "top__lpf_q__input:9");
      init_vcd_vector(vcd_file, 9, "adj", "top__lpf_q__input:10");
      init_vcd_vector(vcd_file, 9, "aea", "top__lpf_q__input:11");
      init_vcd_vector(vcd_file, 9, "aeb", "top__lpf_q__input:12");
      init_vcd_vector(vcd_file, 9, "aec", "top__lpf_q__input:13");
      init_vcd_vector(vcd_file, 9, "aed", "top__lpf_q__input:14");
      init_vcd_vector(vcd_file, 9, "aee", "top__lpf_q__input:15");
      init_vcd_vector(vcd_file, 9, "aef", "top__lpf_q__input:16");
      init_vcd_vector(vcd_file, 9, "aeg", "top__lpf_q__input:17");
      init_vcd_vector(vcd_file, 9, "aeh", "top__lpf_q__input:18");
      init_vcd_vector(vcd_file, 9, "aei", "top__lpf_q__input:19");
      init_vcd_vector(vcd_file, 9, "aej", "top__lpf_q__input:20");
      init_vcd_vector(vcd_file, 9, "afa", "top__lpf_q__input:21");
      init_vcd_vector(vcd_file, 9, "afb", "top__lpf_q__input:22");
      init_vcd_vector(vcd_file, 9, "afc", "top__lpf_q__input:23");
      init_vcd_vector(vcd_file, 9, "afd", "top__lpf_q__input:24");
      init_vcd_vector(vcd_file, 9, "afe", "top__lpf_q__input:25");
      init_vcd_vector(vcd_file, 9, "aff", "top__lpf_q__input:26");
      init_vcd_vector(vcd_file, 9, "afg", "top__lpf_q__input:27");
      init_vcd_vector(vcd_file, 9, "afh", "data_in_i");
      init_vcd_vector(vcd_file, 9, "afi", "data_in_q");
      init_vcd_vector(vcd_file, 5, "afj", "data_out_i");
      init_vcd_vector(vcd_file, 5, "aga", "data_out_q");
      init_vcd_vector(vcd_file, 9, "agb", "top__lpf_i__data_in");
      init_vcd_vector(vcd_file, 5, "agc", "top__lpf_i__data_out");
      init_vcd_vector(vcd_file, 9, "agd", "top__lpf_q__data_in");
      init_vcd_vector(vcd_file, 5, "age", "top__lpf_q__data_out");
      init_vcd_vector(vcd_file, 10, "agf", "top__lpf_i__pair0_28");
      init_vcd_vector(vcd_file, 10, "agg", "top__lpf_i__pair1_27");
      init_vcd_vector(vcd_file, 10, "agh", "top__lpf_i__pair3_25");
      init_vcd_vector(vcd_file, 10, "agi", "top__lpf_i__pair4_24");
      init_vcd_vector(vcd_file, 10, "agj", "top__lpf_i__pair5_23");
      init_vcd_vector(vcd_file, 10, "aha", "top__lpf_i__pair7_21");
      init_vcd_vector(vcd_file, 10, "ahb", "top__lpf_i__pair8_20");
      init_vcd_vector(vcd_file, 10, "ahc", "top__lpf_i__pair9_19");
      init_vcd_vector(vcd_file, 10, "ahd", "top__lpf_i__pair11_17");
      init_vcd_vector(vcd_file, 10, "ahe", "top__lpf_i__pair12_16");
      init_vcd_vector(vcd_file, 10, "ahf", "top__lpf_i__pair13_15");
      init_vcd_vector(vcd_file, 11, "ahg", "top__lpf_i__p232_1");
      init_vcd_vector(vcd_file, 15, "ahh", "top__lpf_i__p232_2");
      init_vcd_vector(vcd_file, 11, "ahi", "top__lpf_i__t4_5");
      init_vcd_vector(vcd_file, 11, "ahj", "top__lpf_i__t8_9");
      init_vcd_vector(vcd_file, 12, "aia", "top__lpf_i__t0_1");
      init_vcd_vector(vcd_file, 13, "aib", "top__lpf_i__t3_7");
      init_vcd_vector(vcd_file, 17, "aic", "top__lpf_i__p141_1");
      init_vcd_vector(vcd_file, 15, "aid", "top__lpf_i__p141_2");
      init_vcd_vector(vcd_file, 19, "aie", "top__lpf_i__p141_3");
      init_vcd_vector(vcd_file, 17, "aif", "top__lpf_i__p206_1");
      init_vcd_vector(vcd_file, 13, "aig", "top__lpf_i__p206_2");
      init_vcd_vector(vcd_file, 18, "aih", "top__lpf_i__p206_3");
      init_vcd_vector(vcd_file, 16, "aii", "top__lpf_i__t11_14");
      init_vcd_vector(vcd_file, 17, "aij", "top__lpf_i__t4_5_8_9");
      init_vcd_vector(vcd_file, 16, "aja", "top__lpf_i__t0_1_3_7");
      init_vcd_vector(vcd_file, 18, "ajb", "top__lpf_i__t0_1_3_4_5_7_8_9");
      init_vcd_vector(vcd_file, 20, "ajc", "top__lpf_i__t12_13");
      init_vcd_vector(vcd_file, 20, "ajd", "top__lpf_i__t0_1_3_4_5_7_8_9_11_14");
      init_vcd_vector(vcd_file, 21, "aje", "top__lpf_i__t0_1_3_4_5_7_8_9_11_12_13_14");
      init_vcd_vector(vcd_file, 21, "ajf", "top__lpf_i__sum_scaled");
      init_vcd_vector(vcd_file, 10, "ajg", "top__lpf_q__pair0_28");
      init_vcd_vector(vcd_file, 10, "ajh", "top__lpf_q__pair1_27");
      init_vcd_vector(vcd_file, 10, "aji", "top__lpf_q__pair3_25");
      init_vcd_vector(vcd_file, 10, "ajj", "top__lpf_q__pair4_24");
      init_vcd_vector(vcd_file, 10, "baa", "top__lpf_q__pair5_23");
      init_vcd_vector(vcd_file, 10, "bab", "top__lpf_q__pair7_21");
      init_vcd_vector(vcd_file, 10, "bac", "top__lpf_q__pair8_20");
      init_vcd_vector(vcd_file, 10, "bad", "top__lpf_q__pair9_19");
      init_vcd_vector(vcd_file, 10, "bae", "top__lpf_q__pair11_17");
      init_vcd_vector(vcd_file, 10, "baf", "top__lpf_q__pair12_16");
      init_vcd_vector(vcd_file, 10, "bag", "top__lpf_q__pair13_15");
      init_vcd_vector(vcd_file, 11, "bah", "top__lpf_q__p232_1");
      init_vcd_vector(vcd_file, 15, "bai", "top__lpf_q__p232_2");
      init_vcd_vector(vcd_file, 11, "baj", "top__lpf_q__t4_5");
      init_vcd_vector(vcd_file, 11, "bba", "top__lpf_q__t8_9");
      init_vcd_vector(vcd_file, 12, "bbb", "top__lpf_q__t0_1");
      init_vcd_vector(vcd_file, 13, "bbc", "top__lpf_q__t3_7");
      init_vcd_vector(vcd_file, 17, "bbd", "top__lpf_q__p141_1");
      init_vcd_vector(vcd_file, 15, "bbe", "top__lpf_q__p141_2");
      init_vcd_vector(vcd_file, 19, "bbf", "top__lpf_q__p141_3");
      init_vcd_vector(vcd_file, 17, "bbg", "top__lpf_q__p206_1");
      init_vcd_vector(vcd_file, 13, "bbh", "top__lpf_q__p206_2");
      init_vcd_vector(vcd_file, 18, "bbi", "top__lpf_q__p206_3");
      init_vcd_vector(vcd_file, 16, "bbj", "top__lpf_q__t11_14");
      init_vcd_vector(vcd_file, 17, "bca", "top__lpf_q__t4_5_8_9");
      init_vcd_vector(vcd_file, 16, "bcb", "top__lpf_q__t0_1_3_7");
      init_vcd_vector(vcd_file, 18, "bcc", "top__lpf_q__t0_1_3_4_5_7_8_9");
      init_vcd_vector(vcd_file, 20, "bcd", "top__lpf_q__t12_13");
      init_vcd_vector(vcd_file, 20, "bce", "top__lpf_q__t0_1_3_4_5_7_8_9_11_14");
      init_vcd_vector(vcd_file, 21, "bcf", "top__lpf_q__t0_1_3_4_5_7_8_9_11_12_13_14");
      init_vcd_vector(vcd_file, 21, "bcg", "top__lpf_q__sum_scaled");
      vcd_file << "$upscope $end\n";
      vcd_file << "$enddefinitions $end\n\n";
   #endif
   return true;
}

void filter::exit(void)
{
   delete [] top__lpf_i__input;
   delete [] arx_reg__top__lpf_i__input;
   delete [] top__lpf_q__input;
   delete [] arx_reg__top__lpf_q__input;
   #ifdef VCD_OUTPUT
      vcd_file.close();
   #endif
}

void filter::reset(void)
{
   for (int _i=0; _i<28; _i++) {
      top__lpf_i__input[_i] = arx_reset__top__lpf_i__input[_i];
   }
   for (int _i=0; _i<28; _i++) {
      top__lpf_q__input[_i] = arx_reset__top__lpf_q__input[_i];
   }
   #ifdef VCD_OUTPUT
      vcd_time_stamp = 0;
   #endif
}

void filter::run
   (
      i32 data_in_i, // signed(9,4,Wrap,Trunc)
      i32 data_in_q, // signed(9,4,Wrap,Trunc)
      i32 &data_out_i, // signed(5,1,Sat,Trunc)
      i32 &data_out_q // signed(5,1,Sat,Trunc)
   )
{
   /* declare and init variables */
   i32 top__lpf_i__pair0_28 = 0; /* variable */
   i32 top__lpf_i__pair1_27 = 0; /* variable */
   i32 top__lpf_i__pair3_25 = 0; /* variable */
   i32 top__lpf_i__pair4_24 = 0; /* variable */
   i32 top__lpf_i__pair5_23 = 0; /* variable */
   i32 top__lpf_i__pair7_21 = 0; /* variable */
   i32 top__lpf_i__pair8_20 = 0; /* variable */
   i32 top__lpf_i__pair9_19 = 0; /* variable */
   i32 top__lpf_i__pair11_17 = 0; /* variable */
   i32 top__lpf_i__pair12_16 = 0; /* variable */
   i32 top__lpf_i__pair13_15 = 0; /* variable */
   i32 top__lpf_i__p232_1 = 0; /* variable */
   i32 top__lpf_i__p232_2 = 0; /* variable */
   i32 top__lpf_i__t4_5 = 0; /* variable */
   i32 top__lpf_i__t8_9 = 0; /* variable */
   i32 top__lpf_i__t0_1 = 0; /* variable */
   i32 top__lpf_i__t3_7 = 0; /* variable */
   i32 top__lpf_i__p141_1 = 0; /* variable */
   i32 top__lpf_i__p141_2 = 0; /* variable */
   i32 top__lpf_i__p141_3 = 0; /* variable */
   i32 top__lpf_i__p206_1 = 0; /* variable */
   i32 top__lpf_i__p206_2 = 0; /* variable */
   i32 top__lpf_i__p206_3 = 0; /* variable */
   i32 top__lpf_i__t11_14 = 0; /* variable */
   i32 top__lpf_i__t4_5_8_9 = 0; /* variable */
   i32 top__lpf_i__t0_1_3_7 = 0; /* variable */
   i32 top__lpf_i__t0_1_3_4_5_7_8_9 = 0; /* variable */
   i32 top__lpf_i__t12_13 = 0; /* variable */
   i32 top__lpf_i__t0_1_3_4_5_7_8_9_11_14 = 0; /* variable */
   i32 top__lpf_i__t0_1_3_4_5_7_8_9_11_12_13_14 = 0; /* variable */
   i32 top__lpf_i__sum_scaled = 0; /* variable */
   i32 top__lpf_q__pair0_28 = 0; /* variable */
   i32 top__lpf_q__pair1_27 = 0; /* variable */
   i32 top__lpf_q__pair3_25 = 0; /* variable */
   i32 top__lpf_q__pair4_24 = 0; /* variable */
   i32 top__lpf_q__pair5_23 = 0; /* variable */
   i32 top__lpf_q__pair7_21 = 0; /* variable */
   i32 top__lpf_q__pair8_20 = 0; /* variable */
   i32 top__lpf_q__pair9_19 = 0; /* variable */
   i32 top__lpf_q__pair11_17 = 0; /* variable */
   i32 top__lpf_q__pair12_16 = 0; /* variable */
   i32 top__lpf_q__pair13_15 = 0; /* variable */
   i32 top__lpf_q__p232_1 = 0; /* variable */
   i32 top__lpf_q__p232_2 = 0; /* variable */
   i32 top__lpf_q__t4_5 = 0; /* variable */
   i32 top__lpf_q__t8_9 = 0; /* variable */
   i32 top__lpf_q__t0_1 = 0; /* variable */
   i32 top__lpf_q__t3_7 = 0; /* variable */
   i32 top__lpf_q__p141_1 = 0; /* variable */
   i32 top__lpf_q__p141_2 = 0; /* variable */
   i32 top__lpf_q__p141_3 = 0; /* variable */
   i32 top__lpf_q__p206_1 = 0; /* variable */
   i32 top__lpf_q__p206_2 = 0; /* variable */
   i32 top__lpf_q__p206_3 = 0; /* variable */
   i32 top__lpf_q__t11_14 = 0; /* variable */
   i32 top__lpf_q__t4_5_8_9 = 0; /* variable */
   i32 top__lpf_q__t0_1_3_7 = 0; /* variable */
   i32 top__lpf_q__t0_1_3_4_5_7_8_9 = 0; /* variable */
   i32 top__lpf_q__t12_13 = 0; /* variable */
   i32 top__lpf_q__t0_1_3_4_5_7_8_9_11_14 = 0; /* variable */
   i32 top__lpf_q__t0_1_3_4_5_7_8_9_11_12_13_14 = 0; /* variable */
   i32 top__lpf_q__sum_scaled = 0; /* variable */
   data_out_i = 0; /* top-level outport */
   data_out_q = 0; /* top-level outport */
   i32 top__lpf_i__data_in; /* inport */
   i32 top__lpf_i__data_out = 0; /* outport */
   i32 top__lpf_q__data_in; /* inport */
   i32 top__lpf_q__data_out = 0; /* outport */


   /* copy register values to temp values */
   for (int _i=0; _i<28; _i++) {
      arx_reg__top__lpf_i__input[_i] = top__lpf_i__input[_i];
   }
   for (int _i=0; _i<28; _i++) {
      arx_reg__top__lpf_q__input[_i] = top__lpf_q__input[_i];
   }

   #ifdef VCD_OUTPUT
      /* dump register values to VCD file */
      if (vcd_time_stamp == 0) vcd_file << "$dumpvars\n";
      else vcd_file << '#' << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '1' << "aaa\n";
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[0]), 9, "aab");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[1]), 9, "aac");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[2]), 9, "aad");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[3]), 9, "aae");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[4]), 9, "aaf");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[5]), 9, "aag");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[6]), 9, "aah");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[7]), 9, "aai");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[8]), 9, "aaj");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[9]), 9, "aba");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[10]), 9, "abb");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[11]), 9, "abc");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[12]), 9, "abd");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[13]), 9, "abe");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[14]), 9, "abf");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[15]), 9, "abg");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[16]), 9, "abh");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[17]), 9, "abi");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[18]), 9, "abj");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[19]), 9, "aca");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[20]), 9, "acb");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[21]), 9, "acc");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[22]), 9, "acd");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[23]), 9, "ace");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[24]), 9, "acf");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[25]), 9, "acg");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[26]), 9, "ach");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[27]), 9, "aci");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[0]), 9, "acj");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[1]), 9, "ada");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[2]), 9, "adb");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[3]), 9, "adc");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[4]), 9, "add");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[5]), 9, "ade");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[6]), 9, "adf");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[7]), 9, "adg");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[8]), 9, "adh");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[9]), 9, "adi");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[10]), 9, "adj");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[11]), 9, "aea");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[12]), 9, "aeb");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[13]), 9, "aec");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[14]), 9, "aed");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[15]), 9, "aee");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[16]), 9, "aef");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[17]), 9, "aeg");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[18]), 9, "aeh");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[19]), 9, "aei");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[20]), 9, "aej");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[21]), 9, "afa");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[22]), 9, "afb");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[23]), 9, "afc");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[24]), 9, "afd");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[25]), 9, "afe");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[26]), 9, "aff");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[27]), 9, "afg");
   #endif

   /* update */
   top__lpf_i__pair1_27 = (arx_reg__top__lpf_i__input[0] + arx_reg__top__lpf_i__input[26]);
   top__lpf_i__pair3_25 = (arx_reg__top__lpf_i__input[2] + arx_reg__top__lpf_i__input[24]);
   top__lpf_i__pair4_24 = (arx_reg__top__lpf_i__input[3] + arx_reg__top__lpf_i__input[23]);
   top__lpf_i__pair5_23 = (arx_reg__top__lpf_i__input[4] + arx_reg__top__lpf_i__input[22]);
   top__lpf_i__pair7_21 = (arx_reg__top__lpf_i__input[6] + arx_reg__top__lpf_i__input[20]);
   top__lpf_i__pair8_20 = (arx_reg__top__lpf_i__input[7] + arx_reg__top__lpf_i__input[19]);
   top__lpf_i__pair9_19 = (arx_reg__top__lpf_i__input[8] + arx_reg__top__lpf_i__input[18]);
   top__lpf_i__pair11_17 = (arx_reg__top__lpf_i__input[10] + arx_reg__top__lpf_i__input[16]);
   top__lpf_i__pair12_16 = (arx_reg__top__lpf_i__input[11] + arx_reg__top__lpf_i__input[15]);
   top__lpf_i__pair13_15 = (arx_reg__top__lpf_i__input[12] + arx_reg__top__lpf_i__input[14]);
   top__lpf_i__p232_1 = (arx_reg__top__lpf_i__input[13] + arx_lsb_extend(i32(arx_reg__top__lpf_i__input[13]), 1));
   top__lpf_i__p232_2 = (arx_lsb_extend(i32(arx_reg__top__lpf_i__input[13]), 5) - top__lpf_i__p232_1);
   top__lpf_i__t4_5 = (top__lpf_i__pair4_24 + top__lpf_i__pair5_23);
   top__lpf_i__t8_9 = (top__lpf_i__pair8_20 + top__lpf_i__pair9_19);
   top__lpf_i__t3_7 = (top__lpf_i__pair3_25 - arx_lsb_extend(i32(top__lpf_i__pair7_21), 2));
   top__lpf_i__p141_1 = (arx_lsb_extend(i32(top__lpf_i__pair12_16), 6) - top__lpf_i__pair12_16);
   top__lpf_i__p141_2 = (arx_lsb_extend(i32(top__lpf_i__pair12_16), 4) - top__lpf_i__pair12_16);
   top__lpf_i__p141_3 = (arx_lsb_extend(i32(top__lpf_i__p141_1), 1) + top__lpf_i__p141_2);
   top__lpf_i__p206_1 = (arx_lsb_extend(i32(top__lpf_i__pair13_15), 6) - top__lpf_i__pair13_15);
   top__lpf_i__p206_2 = (arx_lsb_extend(i32(top__lpf_i__pair13_15), 2) + top__lpf_i__pair13_15);
   top__lpf_i__p206_3 = (top__lpf_i__p206_1 + arx_lsb_extend(i32(top__lpf_i__p206_2), 3));
   top__lpf_i__t11_14 = (arx_lsb_extend(i32(top__lpf_i__pair11_17), 3) + top__lpf_i__p232_2);
   top__lpf_i__t4_5_8_9 = arx_lsb_extend((i32(top__lpf_i__t4_5) - arx_lsb_extend(i32(top__lpf_i__t8_9), 2)), 3);
   top__lpf_i__t12_13 = (top__lpf_i__p141_3 + arx_lsb_extend(i32(top__lpf_i__p206_3), 1));
   top__lpf_i__input[1] = arx_reg__top__lpf_i__input[0];
   top__lpf_i__input[2] = arx_reg__top__lpf_i__input[1];
   top__lpf_i__input[3] = arx_reg__top__lpf_i__input[2];
   top__lpf_i__input[4] = arx_reg__top__lpf_i__input[3];
   top__lpf_i__input[5] = arx_reg__top__lpf_i__input[4];
   top__lpf_i__input[6] = arx_reg__top__lpf_i__input[5];
   top__lpf_i__input[7] = arx_reg__top__lpf_i__input[6];
   top__lpf_i__input[8] = arx_reg__top__lpf_i__input[7];
   top__lpf_i__input[9] = arx_reg__top__lpf_i__input[8];
   top__lpf_i__input[10] = arx_reg__top__lpf_i__input[9];
   top__lpf_i__input[11] = arx_reg__top__lpf_i__input[10];
   top__lpf_i__input[12] = arx_reg__top__lpf_i__input[11];
   top__lpf_i__input[13] = arx_reg__top__lpf_i__input[12];
   top__lpf_i__input[14] = arx_reg__top__lpf_i__input[13];
   top__lpf_i__input[15] = arx_reg__top__lpf_i__input[14];
   top__lpf_i__input[16] = arx_reg__top__lpf_i__input[15];
   top__lpf_i__input[17] = arx_reg__top__lpf_i__input[16];
   top__lpf_i__input[18] = arx_reg__top__lpf_i__input[17];
   top__lpf_i__input[19] = arx_reg__top__lpf_i__input[18];
   top__lpf_i__input[20] = arx_reg__top__lpf_i__input[19];
   top__lpf_i__input[21] = arx_reg__top__lpf_i__input[20];
   top__lpf_i__input[22] = arx_reg__top__lpf_i__input[21];
   top__lpf_i__input[23] = arx_reg__top__lpf_i__input[22];
   top__lpf_i__input[24] = arx_reg__top__lpf_i__input[23];
   top__lpf_i__input[25] = arx_reg__top__lpf_i__input[24];
   top__lpf_i__input[26] = arx_reg__top__lpf_i__input[25];
   top__lpf_i__input[27] = arx_reg__top__lpf_i__input[26];
   top__lpf_q__pair1_27 = (arx_reg__top__lpf_q__input[0] + arx_reg__top__lpf_q__input[26]);
   top__lpf_q__pair3_25 = (arx_reg__top__lpf_q__input[2] + arx_reg__top__lpf_q__input[24]);
   top__lpf_q__pair4_24 = (arx_reg__top__lpf_q__input[3] + arx_reg__top__lpf_q__input[23]);
   top__lpf_q__pair5_23 = (arx_reg__top__lpf_q__input[4] + arx_reg__top__lpf_q__input[22]);
   top__lpf_q__pair7_21 = (arx_reg__top__lpf_q__input[6] + arx_reg__top__lpf_q__input[20]);
   top__lpf_q__pair8_20 = (arx_reg__top__lpf_q__input[7] + arx_reg__top__lpf_q__input[19]);
   top__lpf_q__pair9_19 = (arx_reg__top__lpf_q__input[8] + arx_reg__top__lpf_q__input[18]);
   top__lpf_q__pair11_17 = (arx_reg__top__lpf_q__input[10] + arx_reg__top__lpf_q__input[16]);
   top__lpf_q__pair12_16 = (arx_reg__top__lpf_q__input[11] + arx_reg__top__lpf_q__input[15]);
   top__lpf_q__pair13_15 = (arx_reg__top__lpf_q__input[12] + arx_reg__top__lpf_q__input[14]);
   top__lpf_q__p232_1 = (arx_reg__top__lpf_q__input[13] + arx_lsb_extend(i32(arx_reg__top__lpf_q__input[13]), 1));
   top__lpf_q__p232_2 = (arx_lsb_extend(i32(arx_reg__top__lpf_q__input[13]), 5) - top__lpf_q__p232_1);
   top__lpf_q__t4_5 = (top__lpf_q__pair4_24 + top__lpf_q__pair5_23);
   top__lpf_q__t8_9 = (top__lpf_q__pair8_20 + top__lpf_q__pair9_19);
   top__lpf_q__t3_7 = (top__lpf_q__pair3_25 - arx_lsb_extend(i32(top__lpf_q__pair7_21), 2));
   top__lpf_q__p141_1 = (arx_lsb_extend(i32(top__lpf_q__pair12_16), 6) - top__lpf_q__pair12_16);
   top__lpf_q__p141_2 = (arx_lsb_extend(i32(top__lpf_q__pair12_16), 4) - top__lpf_q__pair12_16);
   top__lpf_q__p141_3 = (arx_lsb_extend(i32(top__lpf_q__p141_1), 1) + top__lpf_q__p141_2);
   top__lpf_q__p206_1 = (arx_lsb_extend(i32(top__lpf_q__pair13_15), 6) - top__lpf_q__pair13_15);
   top__lpf_q__p206_2 = (arx_lsb_extend(i32(top__lpf_q__pair13_15), 2) + top__lpf_q__pair13_15);
   top__lpf_q__p206_3 = (top__lpf_q__p206_1 + arx_lsb_extend(i32(top__lpf_q__p206_2), 3));
   top__lpf_q__t11_14 = (arx_lsb_extend(i32(top__lpf_q__pair11_17), 3) + top__lpf_q__p232_2);
   top__lpf_q__t4_5_8_9 = arx_lsb_extend((i32(top__lpf_q__t4_5) - arx_lsb_extend(i32(top__lpf_q__t8_9), 2)), 3);
   top__lpf_q__t12_13 = (top__lpf_q__p141_3 + arx_lsb_extend(i32(top__lpf_q__p206_3), 1));
   top__lpf_q__input[1] = arx_reg__top__lpf_q__input[0];
   top__lpf_q__input[2] = arx_reg__top__lpf_q__input[1];
   top__lpf_q__input[3] = arx_reg__top__lpf_q__input[2];
   top__lpf_q__input[4] = arx_reg__top__lpf_q__input[3];
   top__lpf_q__input[5] = arx_reg__top__lpf_q__input[4];
   top__lpf_q__input[6] = arx_reg__top__lpf_q__input[5];
   top__lpf_q__input[7] = arx_reg__top__lpf_q__input[6];
   top__lpf_q__input[8] = arx_reg__top__lpf_q__input[7];
   top__lpf_q__input[9] = arx_reg__top__lpf_q__input[8];
   top__lpf_q__input[10] = arx_reg__top__lpf_q__input[9];
   top__lpf_q__input[11] = arx_reg__top__lpf_q__input[10];
   top__lpf_q__input[12] = arx_reg__top__lpf_q__input[11];
   top__lpf_q__input[13] = arx_reg__top__lpf_q__input[12];
   top__lpf_q__input[14] = arx_reg__top__lpf_q__input[13];
   top__lpf_q__input[15] = arx_reg__top__lpf_q__input[14];
   top__lpf_q__input[16] = arx_reg__top__lpf_q__input[15];
   top__lpf_q__input[17] = arx_reg__top__lpf_q__input[16];
   top__lpf_q__input[18] = arx_reg__top__lpf_q__input[17];
   top__lpf_q__input[19] = arx_reg__top__lpf_q__input[18];
   top__lpf_q__input[20] = arx_reg__top__lpf_q__input[19];
   top__lpf_q__input[21] = arx_reg__top__lpf_q__input[20];
   top__lpf_q__input[22] = arx_reg__top__lpf_q__input[21];
   top__lpf_q__input[23] = arx_reg__top__lpf_q__input[22];
   top__lpf_q__input[24] = arx_reg__top__lpf_q__input[23];
   top__lpf_q__input[25] = arx_reg__top__lpf_q__input[24];
   top__lpf_q__input[26] = arx_reg__top__lpf_q__input[25];
   top__lpf_q__input[27] = arx_reg__top__lpf_q__input[26];
   top__lpf_i__data_in = data_in_i;
   top__lpf_q__data_in = data_in_q;
   top__lpf_i__pair0_28 = (top__lpf_i__data_in + arx_reg__top__lpf_i__input[27]);
   top__lpf_i__t0_1 = (top__lpf_i__pair0_28 + arx_lsb_extend(i32(top__lpf_i__pair1_27), 1));
   top__lpf_i__t0_1_3_7 = (arx_lsb_extend(i32(top__lpf_i__t3_7), 2) - top__lpf_i__t0_1);
   top__lpf_i__t0_1_3_4_5_7_8_9 = (top__lpf_i__t0_1_3_7 + top__lpf_i__t4_5_8_9);
   top__lpf_i__t0_1_3_4_5_7_8_9_11_14 = (top__lpf_i__t0_1_3_4_5_7_8_9 + arx_lsb_extend(i32(top__lpf_i__t11_14), 3));
   top__lpf_i__t0_1_3_4_5_7_8_9_11_12_13_14 = (top__lpf_i__t0_1_3_4_5_7_8_9_11_14 + top__lpf_i__t12_13);
   top__lpf_i__sum_scaled = i32(top__lpf_i__t0_1_3_4_5_7_8_9_11_12_13_14);
   top__lpf_i__data_out = arx_saturate(arx_truncate(top__lpf_i__sum_scaled, 11), 5, false);
   top__lpf_i__input[0] = top__lpf_i__data_in;
   top__lpf_q__pair0_28 = (top__lpf_q__data_in + arx_reg__top__lpf_q__input[27]);
   top__lpf_q__t0_1 = (top__lpf_q__pair0_28 + arx_lsb_extend(i32(top__lpf_q__pair1_27), 1));
   top__lpf_q__t0_1_3_7 = (arx_lsb_extend(i32(top__lpf_q__t3_7), 2) - top__lpf_q__t0_1);
   top__lpf_q__t0_1_3_4_5_7_8_9 = (top__lpf_q__t0_1_3_7 + top__lpf_q__t4_5_8_9);
   top__lpf_q__t0_1_3_4_5_7_8_9_11_14 = (top__lpf_q__t0_1_3_4_5_7_8_9 + arx_lsb_extend(i32(top__lpf_q__t11_14), 3));
   top__lpf_q__t0_1_3_4_5_7_8_9_11_12_13_14 = (top__lpf_q__t0_1_3_4_5_7_8_9_11_14 + top__lpf_q__t12_13);
   top__lpf_q__sum_scaled = i32(top__lpf_q__t0_1_3_4_5_7_8_9_11_12_13_14);
   top__lpf_q__data_out = arx_saturate(arx_truncate(top__lpf_q__sum_scaled, 11), 5, false);
   top__lpf_q__input[0] = top__lpf_q__data_in;
   data_out_i = top__lpf_i__data_out;
   data_out_q = top__lpf_q__data_out;
   #ifdef VCD_OUTPUT
      /* dump port values to VCD file */
      output_vcd_vector(vcd_file, u32(data_in_i), 9, "afh");
      output_vcd_vector(vcd_file, u32(data_in_q), 9, "afi");
      output_vcd_vector(vcd_file, u32(data_out_i), 5, "afj");
      output_vcd_vector(vcd_file, u32(data_out_q), 5, "aga");
      output_vcd_vector(vcd_file, u32(top__lpf_i__data_in), 9, "agb");
      output_vcd_vector(vcd_file, u32(top__lpf_i__data_out), 5, "agc");
      output_vcd_vector(vcd_file, u32(top__lpf_q__data_in), 9, "agd");
      output_vcd_vector(vcd_file, u32(top__lpf_q__data_out), 5, "age");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair0_28), 10, "agf");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair1_27), 10, "agg");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair3_25), 10, "agh");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair4_24), 10, "agi");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair5_23), 10, "agj");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair7_21), 10, "aha");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair8_20), 10, "ahb");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair9_19), 10, "ahc");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair11_17), 10, "ahd");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair12_16), 10, "ahe");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair13_15), 10, "ahf");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p232_1), 11, "ahg");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p232_2), 15, "ahh");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t4_5), 11, "ahi");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t8_9), 11, "ahj");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t0_1), 12, "aia");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t3_7), 13, "aib");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p141_1), 17, "aic");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p141_2), 15, "aid");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p141_3), 19, "aie");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p206_1), 17, "aif");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p206_2), 13, "aig");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p206_3), 18, "aih");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t11_14), 16, "aii");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t4_5_8_9), 17, "aij");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t0_1_3_7), 16, "aja");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t0_1_3_4_5_7_8_9), 18, "ajb");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t12_13), 20, "ajc");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t0_1_3_4_5_7_8_9_11_14), 20, "ajd");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t0_1_3_4_5_7_8_9_11_12_13_14), 21, "aje");
      output_vcd_vector(vcd_file, u32(top__lpf_i__sum_scaled), 21, "ajf");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair0_28), 10, "ajg");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair1_27), 10, "ajh");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair3_25), 10, "aji");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair4_24), 10, "ajj");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair5_23), 10, "baa");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair7_21), 10, "bab");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair8_20), 10, "bac");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair9_19), 10, "bad");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair11_17), 10, "bae");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair12_16), 10, "baf");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair13_15), 10, "bag");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p232_1), 11, "bah");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p232_2), 15, "bai");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t4_5), 11, "baj");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t8_9), 11, "bba");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t0_1), 12, "bbb");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t3_7), 13, "bbc");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p141_1), 17, "bbd");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p141_2), 15, "bbe");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p141_3), 19, "bbf");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p206_1), 17, "bbg");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p206_2), 13, "bbh");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p206_3), 18, "bbi");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t11_14), 16, "bbj");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t4_5_8_9), 17, "bca");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t0_1_3_7), 16, "bcb");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t0_1_3_4_5_7_8_9), 18, "bcc");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t12_13), 20, "bcd");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t0_1_3_4_5_7_8_9_11_14), 20, "bce");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t0_1_3_4_5_7_8_9_11_12_13_14), 21, "bcf");
      output_vcd_vector(vcd_file, u32(top__lpf_q__sum_scaled), 21, "bcg");
      vcd_file << "\n#" << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '0' << "aaa\n\n";
   #endif
}

