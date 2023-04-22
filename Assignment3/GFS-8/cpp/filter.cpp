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
      init_vcd_vector(vcd_file, 12, "aab", "top__lpf_i__input:0");
      init_vcd_vector(vcd_file, 12, "aac", "top__lpf_i__input:1");
      init_vcd_vector(vcd_file, 12, "aad", "top__lpf_i__input:2");
      init_vcd_vector(vcd_file, 12, "aae", "top__lpf_i__input:3");
      init_vcd_vector(vcd_file, 12, "aaf", "top__lpf_i__input:4");
      init_vcd_vector(vcd_file, 12, "aag", "top__lpf_i__input:5");
      init_vcd_vector(vcd_file, 12, "aah", "top__lpf_i__input:6");
      init_vcd_vector(vcd_file, 12, "aai", "top__lpf_i__input:7");
      init_vcd_vector(vcd_file, 12, "aaj", "top__lpf_i__input:8");
      init_vcd_vector(vcd_file, 12, "aba", "top__lpf_i__input:9");
      init_vcd_vector(vcd_file, 12, "abb", "top__lpf_i__input:10");
      init_vcd_vector(vcd_file, 12, "abc", "top__lpf_i__input:11");
      init_vcd_vector(vcd_file, 12, "abd", "top__lpf_i__input:12");
      init_vcd_vector(vcd_file, 12, "abe", "top__lpf_i__input:13");
      init_vcd_vector(vcd_file, 12, "abf", "top__lpf_i__input:14");
      init_vcd_vector(vcd_file, 12, "abg", "top__lpf_i__input:15");
      init_vcd_vector(vcd_file, 12, "abh", "top__lpf_i__input:16");
      init_vcd_vector(vcd_file, 12, "abi", "top__lpf_i__input:17");
      init_vcd_vector(vcd_file, 12, "abj", "top__lpf_i__input:18");
      init_vcd_vector(vcd_file, 12, "aca", "top__lpf_i__input:19");
      init_vcd_vector(vcd_file, 12, "acb", "top__lpf_i__input:20");
      init_vcd_vector(vcd_file, 12, "acc", "top__lpf_i__input:21");
      init_vcd_vector(vcd_file, 12, "acd", "top__lpf_i__input:22");
      init_vcd_vector(vcd_file, 12, "ace", "top__lpf_i__input:23");
      init_vcd_vector(vcd_file, 12, "acf", "top__lpf_i__input:24");
      init_vcd_vector(vcd_file, 12, "acg", "top__lpf_i__input:25");
      init_vcd_vector(vcd_file, 12, "ach", "top__lpf_i__input:26");
      init_vcd_vector(vcd_file, 12, "aci", "top__lpf_i__input:27");
      init_vcd_vector(vcd_file, 12, "acj", "top__lpf_q__input:0");
      init_vcd_vector(vcd_file, 12, "ada", "top__lpf_q__input:1");
      init_vcd_vector(vcd_file, 12, "adb", "top__lpf_q__input:2");
      init_vcd_vector(vcd_file, 12, "adc", "top__lpf_q__input:3");
      init_vcd_vector(vcd_file, 12, "add", "top__lpf_q__input:4");
      init_vcd_vector(vcd_file, 12, "ade", "top__lpf_q__input:5");
      init_vcd_vector(vcd_file, 12, "adf", "top__lpf_q__input:6");
      init_vcd_vector(vcd_file, 12, "adg", "top__lpf_q__input:7");
      init_vcd_vector(vcd_file, 12, "adh", "top__lpf_q__input:8");
      init_vcd_vector(vcd_file, 12, "adi", "top__lpf_q__input:9");
      init_vcd_vector(vcd_file, 12, "adj", "top__lpf_q__input:10");
      init_vcd_vector(vcd_file, 12, "aea", "top__lpf_q__input:11");
      init_vcd_vector(vcd_file, 12, "aeb", "top__lpf_q__input:12");
      init_vcd_vector(vcd_file, 12, "aec", "top__lpf_q__input:13");
      init_vcd_vector(vcd_file, 12, "aed", "top__lpf_q__input:14");
      init_vcd_vector(vcd_file, 12, "aee", "top__lpf_q__input:15");
      init_vcd_vector(vcd_file, 12, "aef", "top__lpf_q__input:16");
      init_vcd_vector(vcd_file, 12, "aeg", "top__lpf_q__input:17");
      init_vcd_vector(vcd_file, 12, "aeh", "top__lpf_q__input:18");
      init_vcd_vector(vcd_file, 12, "aei", "top__lpf_q__input:19");
      init_vcd_vector(vcd_file, 12, "aej", "top__lpf_q__input:20");
      init_vcd_vector(vcd_file, 12, "afa", "top__lpf_q__input:21");
      init_vcd_vector(vcd_file, 12, "afb", "top__lpf_q__input:22");
      init_vcd_vector(vcd_file, 12, "afc", "top__lpf_q__input:23");
      init_vcd_vector(vcd_file, 12, "afd", "top__lpf_q__input:24");
      init_vcd_vector(vcd_file, 12, "afe", "top__lpf_q__input:25");
      init_vcd_vector(vcd_file, 12, "aff", "top__lpf_q__input:26");
      init_vcd_vector(vcd_file, 12, "afg", "top__lpf_q__input:27");
      init_vcd_vector(vcd_file, 12, "afh", "data_in_i");
      init_vcd_vector(vcd_file, 12, "afi", "data_in_q");
      init_vcd_vector(vcd_file, 5, "afj", "data_out_i");
      init_vcd_vector(vcd_file, 5, "aga", "data_out_q");
      init_vcd_vector(vcd_file, 12, "agb", "top__lpf_i__data_in");
      init_vcd_vector(vcd_file, 5, "agc", "top__lpf_i__data_out");
      init_vcd_vector(vcd_file, 12, "agd", "top__lpf_q__data_in");
      init_vcd_vector(vcd_file, 5, "age", "top__lpf_q__data_out");
      init_vcd_vector(vcd_file, 13, "agf", "top__lpf_i__pair0_28");
      init_vcd_vector(vcd_file, 13, "agg", "top__lpf_i__pair1_27");
      init_vcd_vector(vcd_file, 13, "agh", "top__lpf_i__pair3_25");
      init_vcd_vector(vcd_file, 13, "agi", "top__lpf_i__pair4_24");
      init_vcd_vector(vcd_file, 13, "agj", "top__lpf_i__pair5_23");
      init_vcd_vector(vcd_file, 13, "aha", "top__lpf_i__pair7_21");
      init_vcd_vector(vcd_file, 13, "ahb", "top__lpf_i__pair8_20");
      init_vcd_vector(vcd_file, 13, "ahc", "top__lpf_i__pair9_19");
      init_vcd_vector(vcd_file, 13, "ahd", "top__lpf_i__pair11_17");
      init_vcd_vector(vcd_file, 13, "ahe", "top__lpf_i__pair12_16");
      init_vcd_vector(vcd_file, 13, "ahf", "top__lpf_i__pair13_15");
      init_vcd_vector(vcd_file, 14, "ahg", "top__lpf_i__p232_1");
      init_vcd_vector(vcd_file, 18, "ahh", "top__lpf_i__p232_2");
      init_vcd_vector(vcd_file, 14, "ahi", "top__lpf_i__t4_5");
      init_vcd_vector(vcd_file, 14, "ahj", "top__lpf_i__t8_9");
      init_vcd_vector(vcd_file, 15, "aia", "top__lpf_i__t0_1");
      init_vcd_vector(vcd_file, 16, "aib", "top__lpf_i__t3_7");
      init_vcd_vector(vcd_file, 20, "aic", "top__lpf_i__p141_1");
      init_vcd_vector(vcd_file, 18, "aid", "top__lpf_i__p141_2");
      init_vcd_vector(vcd_file, 22, "aie", "top__lpf_i__p141_3");
      init_vcd_vector(vcd_file, 20, "aif", "top__lpf_i__p206_1");
      init_vcd_vector(vcd_file, 16, "aig", "top__lpf_i__p206_2");
      init_vcd_vector(vcd_file, 21, "aih", "top__lpf_i__p206_3");
      init_vcd_vector(vcd_file, 19, "aii", "top__lpf_i__t11_14");
      init_vcd_vector(vcd_file, 20, "aij", "top__lpf_i__t4_5_8_9");
      init_vcd_vector(vcd_file, 19, "aja", "top__lpf_i__t0_1_3_7");
      init_vcd_vector(vcd_file, 21, "ajb", "top__lpf_i__t0_1_3_4_5_7_8_9");
      init_vcd_vector(vcd_file, 23, "ajc", "top__lpf_i__t12_13");
      init_vcd_vector(vcd_file, 23, "ajd", "top__lpf_i__t0_1_3_4_5_7_8_9_11_14");
      init_vcd_vector(vcd_file, 24, "aje", "top__lpf_i__t0_1_3_4_5_7_8_9_11_12_13_14");
      init_vcd_vector(vcd_file, 24, "ajf", "top__lpf_i__sum_scaled");
      init_vcd_vector(vcd_file, 13, "ajg", "top__lpf_q__pair0_28");
      init_vcd_vector(vcd_file, 13, "ajh", "top__lpf_q__pair1_27");
      init_vcd_vector(vcd_file, 13, "aji", "top__lpf_q__pair3_25");
      init_vcd_vector(vcd_file, 13, "ajj", "top__lpf_q__pair4_24");
      init_vcd_vector(vcd_file, 13, "baa", "top__lpf_q__pair5_23");
      init_vcd_vector(vcd_file, 13, "bab", "top__lpf_q__pair7_21");
      init_vcd_vector(vcd_file, 13, "bac", "top__lpf_q__pair8_20");
      init_vcd_vector(vcd_file, 13, "bad", "top__lpf_q__pair9_19");
      init_vcd_vector(vcd_file, 13, "bae", "top__lpf_q__pair11_17");
      init_vcd_vector(vcd_file, 13, "baf", "top__lpf_q__pair12_16");
      init_vcd_vector(vcd_file, 13, "bag", "top__lpf_q__pair13_15");
      init_vcd_vector(vcd_file, 14, "bah", "top__lpf_q__p232_1");
      init_vcd_vector(vcd_file, 18, "bai", "top__lpf_q__p232_2");
      init_vcd_vector(vcd_file, 14, "baj", "top__lpf_q__t4_5");
      init_vcd_vector(vcd_file, 14, "bba", "top__lpf_q__t8_9");
      init_vcd_vector(vcd_file, 15, "bbb", "top__lpf_q__t0_1");
      init_vcd_vector(vcd_file, 16, "bbc", "top__lpf_q__t3_7");
      init_vcd_vector(vcd_file, 20, "bbd", "top__lpf_q__p141_1");
      init_vcd_vector(vcd_file, 18, "bbe", "top__lpf_q__p141_2");
      init_vcd_vector(vcd_file, 22, "bbf", "top__lpf_q__p141_3");
      init_vcd_vector(vcd_file, 20, "bbg", "top__lpf_q__p206_1");
      init_vcd_vector(vcd_file, 16, "bbh", "top__lpf_q__p206_2");
      init_vcd_vector(vcd_file, 21, "bbi", "top__lpf_q__p206_3");
      init_vcd_vector(vcd_file, 19, "bbj", "top__lpf_q__t11_14");
      init_vcd_vector(vcd_file, 20, "bca", "top__lpf_q__t4_5_8_9");
      init_vcd_vector(vcd_file, 19, "bcb", "top__lpf_q__t0_1_3_7");
      init_vcd_vector(vcd_file, 21, "bcc", "top__lpf_q__t0_1_3_4_5_7_8_9");
      init_vcd_vector(vcd_file, 23, "bcd", "top__lpf_q__t12_13");
      init_vcd_vector(vcd_file, 23, "bce", "top__lpf_q__t0_1_3_4_5_7_8_9_11_14");
      init_vcd_vector(vcd_file, 24, "bcf", "top__lpf_q__t0_1_3_4_5_7_8_9_11_12_13_14");
      init_vcd_vector(vcd_file, 24, "bcg", "top__lpf_q__sum_scaled");
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
      i32 data_in_i, // signed(12,6,Wrap,Trunc)
      i32 data_in_q, // signed(12,6,Wrap,Trunc)
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
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[0]), 12, "aab");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[1]), 12, "aac");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[2]), 12, "aad");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[3]), 12, "aae");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[4]), 12, "aaf");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[5]), 12, "aag");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[6]), 12, "aah");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[7]), 12, "aai");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[8]), 12, "aaj");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[9]), 12, "aba");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[10]), 12, "abb");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[11]), 12, "abc");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[12]), 12, "abd");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[13]), 12, "abe");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[14]), 12, "abf");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[15]), 12, "abg");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[16]), 12, "abh");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[17]), 12, "abi");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[18]), 12, "abj");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[19]), 12, "aca");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[20]), 12, "acb");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[21]), 12, "acc");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[22]), 12, "acd");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[23]), 12, "ace");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[24]), 12, "acf");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[25]), 12, "acg");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[26]), 12, "ach");
      output_vcd_vector(vcd_file, u32(top__lpf_i__input[27]), 12, "aci");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[0]), 12, "acj");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[1]), 12, "ada");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[2]), 12, "adb");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[3]), 12, "adc");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[4]), 12, "add");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[5]), 12, "ade");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[6]), 12, "adf");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[7]), 12, "adg");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[8]), 12, "adh");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[9]), 12, "adi");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[10]), 12, "adj");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[11]), 12, "aea");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[12]), 12, "aeb");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[13]), 12, "aec");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[14]), 12, "aed");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[15]), 12, "aee");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[16]), 12, "aef");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[17]), 12, "aeg");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[18]), 12, "aeh");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[19]), 12, "aei");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[20]), 12, "aej");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[21]), 12, "afa");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[22]), 12, "afb");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[23]), 12, "afc");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[24]), 12, "afd");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[25]), 12, "afe");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[26]), 12, "aff");
      output_vcd_vector(vcd_file, u32(top__lpf_q__input[27]), 12, "afg");
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
   top__lpf_i__data_out = arx_saturate(arx_truncate(top__lpf_i__sum_scaled, 12), 5, false);
   top__lpf_i__input[0] = top__lpf_i__data_in;
   top__lpf_q__pair0_28 = (top__lpf_q__data_in + arx_reg__top__lpf_q__input[27]);
   top__lpf_q__t0_1 = (top__lpf_q__pair0_28 + arx_lsb_extend(i32(top__lpf_q__pair1_27), 1));
   top__lpf_q__t0_1_3_7 = (arx_lsb_extend(i32(top__lpf_q__t3_7), 2) - top__lpf_q__t0_1);
   top__lpf_q__t0_1_3_4_5_7_8_9 = (top__lpf_q__t0_1_3_7 + top__lpf_q__t4_5_8_9);
   top__lpf_q__t0_1_3_4_5_7_8_9_11_14 = (top__lpf_q__t0_1_3_4_5_7_8_9 + arx_lsb_extend(i32(top__lpf_q__t11_14), 3));
   top__lpf_q__t0_1_3_4_5_7_8_9_11_12_13_14 = (top__lpf_q__t0_1_3_4_5_7_8_9_11_14 + top__lpf_q__t12_13);
   top__lpf_q__sum_scaled = i32(top__lpf_q__t0_1_3_4_5_7_8_9_11_12_13_14);
   top__lpf_q__data_out = arx_saturate(arx_truncate(top__lpf_q__sum_scaled, 12), 5, false);
   top__lpf_q__input[0] = top__lpf_q__data_in;
   data_out_i = top__lpf_i__data_out;
   data_out_q = top__lpf_q__data_out;
   #ifdef VCD_OUTPUT
      /* dump port values to VCD file */
      output_vcd_vector(vcd_file, u32(data_in_i), 12, "afh");
      output_vcd_vector(vcd_file, u32(data_in_q), 12, "afi");
      output_vcd_vector(vcd_file, u32(data_out_i), 5, "afj");
      output_vcd_vector(vcd_file, u32(data_out_q), 5, "aga");
      output_vcd_vector(vcd_file, u32(top__lpf_i__data_in), 12, "agb");
      output_vcd_vector(vcd_file, u32(top__lpf_i__data_out), 5, "agc");
      output_vcd_vector(vcd_file, u32(top__lpf_q__data_in), 12, "agd");
      output_vcd_vector(vcd_file, u32(top__lpf_q__data_out), 5, "age");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair0_28), 13, "agf");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair1_27), 13, "agg");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair3_25), 13, "agh");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair4_24), 13, "agi");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair5_23), 13, "agj");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair7_21), 13, "aha");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair8_20), 13, "ahb");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair9_19), 13, "ahc");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair11_17), 13, "ahd");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair12_16), 13, "ahe");
      output_vcd_vector(vcd_file, u32(top__lpf_i__pair13_15), 13, "ahf");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p232_1), 14, "ahg");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p232_2), 18, "ahh");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t4_5), 14, "ahi");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t8_9), 14, "ahj");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t0_1), 15, "aia");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t3_7), 16, "aib");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p141_1), 20, "aic");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p141_2), 18, "aid");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p141_3), 22, "aie");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p206_1), 20, "aif");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p206_2), 16, "aig");
      output_vcd_vector(vcd_file, u32(top__lpf_i__p206_3), 21, "aih");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t11_14), 19, "aii");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t4_5_8_9), 20, "aij");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t0_1_3_7), 19, "aja");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t0_1_3_4_5_7_8_9), 21, "ajb");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t12_13), 23, "ajc");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t0_1_3_4_5_7_8_9_11_14), 23, "ajd");
      output_vcd_vector(vcd_file, u32(top__lpf_i__t0_1_3_4_5_7_8_9_11_12_13_14), 24, "aje");
      output_vcd_vector(vcd_file, u32(top__lpf_i__sum_scaled), 24, "ajf");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair0_28), 13, "ajg");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair1_27), 13, "ajh");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair3_25), 13, "aji");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair4_24), 13, "ajj");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair5_23), 13, "baa");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair7_21), 13, "bab");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair8_20), 13, "bac");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair9_19), 13, "bad");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair11_17), 13, "bae");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair12_16), 13, "baf");
      output_vcd_vector(vcd_file, u32(top__lpf_q__pair13_15), 13, "bag");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p232_1), 14, "bah");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p232_2), 18, "bai");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t4_5), 14, "baj");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t8_9), 14, "bba");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t0_1), 15, "bbb");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t3_7), 16, "bbc");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p141_1), 20, "bbd");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p141_2), 18, "bbe");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p141_3), 22, "bbf");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p206_1), 20, "bbg");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p206_2), 16, "bbh");
      output_vcd_vector(vcd_file, u32(top__lpf_q__p206_3), 21, "bbi");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t11_14), 19, "bbj");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t4_5_8_9), 20, "bca");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t0_1_3_7), 19, "bcb");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t0_1_3_4_5_7_8_9), 21, "bcc");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t12_13), 23, "bcd");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t0_1_3_4_5_7_8_9_11_14), 23, "bce");
      output_vcd_vector(vcd_file, u32(top__lpf_q__t0_1_3_4_5_7_8_9_11_12_13_14), 24, "bcf");
      output_vcd_vector(vcd_file, u32(top__lpf_q__sum_scaled), 24, "bcg");
      vcd_file << "\n#" << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '0' << "aaa\n\n";
   #endif
}

