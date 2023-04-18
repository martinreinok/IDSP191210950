#include "slicer.h"

const i32 arx_reset__top__slicer_fifo[] = 
   {
   i32(0),
   i32(0),
   i32(0)
   };
const u32 arx_reset__top__counter = u32(0);
const u32 arx_reset__top__output = 0;

i32 *top__slicer_fifo, *arx_reg__top__slicer_fifo;
u32 top__counter, arx_reg__top__counter;
u32 top__output, arx_reg__top__output;


bool slicer::init(void)
{
   if ((top__slicer_fifo = new i32[3]) == NULL)
      return false;
   if ((arx_reg__top__slicer_fifo = new i32[3]) == NULL)
      return false;
   #ifdef VCD_OUTPUT
      vcd_file.open("debug.vcd", std::ios::out);
      vcd_file << "$timescale\n\t1 ps\n$end\n";
      vcd_file << "$scope module Arx $end\n";
      vcd_file << "$var wire 1 aaa clock $end\n";
      init_vcd_vector(vcd_file, 7, "aab", "top__slicer_fifo:0");
      init_vcd_vector(vcd_file, 7, "aac", "top__slicer_fifo:1");
      init_vcd_vector(vcd_file, 7, "aad", "top__slicer_fifo:2");
      init_vcd_vector(vcd_file, 2, "aae", "top__counter");
      init_vcd_value(vcd_file, "aaf", "top__output");
      init_vcd_vector(vcd_file, 7, "aag", "data_in");
      init_vcd_vector(vcd_file, 2, "aah", "offset");
      init_vcd_value(vcd_file, "aai", "data_out");
      init_vcd_vector(vcd_file, 8, "aaj", "top__sum0_1");
      init_vcd_vector(vcd_file, 8, "aba", "top__sum2_3");
      init_vcd_vector(vcd_file, 9, "abb", "top__sum0_1_2_3");
      vcd_file << "$upscope $end\n";
      vcd_file << "$enddefinitions $end\n\n";
   #endif
   return true;
}

void slicer::exit(void)
{
   delete [] top__slicer_fifo;
   delete [] arx_reg__top__slicer_fifo;
   #ifdef VCD_OUTPUT
      vcd_file.close();
   #endif
}

void slicer::reset(void)
{
   for (int _i=0; _i<3; _i++) {
      top__slicer_fifo[_i] = arx_reset__top__slicer_fifo[_i];
   }
   top__counter = arx_reset__top__counter;
   top__output = arx_reset__top__output;
   #ifdef VCD_OUTPUT
      vcd_time_stamp = 0;
   #endif
}

void slicer::run
   (
      i32 data_in, // signed(7,1,Wrap,Trunc)
      u32 offset, // unsigned(2,2,Wrap,Trunc)
      u32 &data_out // bit
   )
{
   /* declare and init variables */
   i32 top__sum0_1 = 0; /* variable */
   i32 top__sum2_3 = 0; /* variable */
   i32 top__sum0_1_2_3 = 0; /* variable */
   data_out = 0; /* top-level outport */


   /* copy register values to temp values */
   for (int _i=0; _i<3; _i++) {
      arx_reg__top__slicer_fifo[_i] = top__slicer_fifo[_i];
   }
   arx_reg__top__counter = top__counter;
   arx_reg__top__output = top__output;

   #ifdef VCD_OUTPUT
      /* dump register values to VCD file */
      if (vcd_time_stamp == 0) vcd_file << "$dumpvars\n";
      else vcd_file << '#' << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '1' << "aaa\n";
      output_vcd_vector(vcd_file, u32(top__slicer_fifo[0]), 7, "aab");
      output_vcd_vector(vcd_file, u32(top__slicer_fifo[1]), 7, "aac");
      output_vcd_vector(vcd_file, u32(top__slicer_fifo[2]), 7, "aad");
      output_vcd_vector(vcd_file, u32(top__counter), 2, "aae");
      output_vcd_value(vcd_file, top__output, "aaf");
   #endif

   /* update */
   top__sum0_1 = (data_in + arx_reg__top__slicer_fifo[0]);
   top__sum2_3 = (arx_reg__top__slicer_fifo[1] + arx_reg__top__slicer_fifo[2]);
   top__sum0_1_2_3 = (top__sum0_1 + top__sum2_3);
   if (arx_reg__top__counter == offset)
   {
      if (top__sum0_1_2_3 > i32(0))
      {
         top__output = 1;
      }
      else
      {
         top__output = 0;
      }
   }
   top__counter = arx_wrap((arx_reg__top__counter + u32(1)), 30);
   top__slicer_fifo[0] = data_in;
   top__slicer_fifo[1] = arx_reg__top__slicer_fifo[0];
   top__slicer_fifo[2] = arx_reg__top__slicer_fifo[1];
   data_out = arx_reg__top__output;
   #ifdef VCD_OUTPUT
      /* dump port values to VCD file */
      output_vcd_vector(vcd_file, u32(data_in), 7, "aag");
      output_vcd_vector(vcd_file, u32(offset), 2, "aah");
      output_vcd_value(vcd_file, data_out, "aai");
      output_vcd_vector(vcd_file, u32(top__sum0_1), 8, "aaj");
      output_vcd_vector(vcd_file, u32(top__sum2_3), 8, "aba");
      output_vcd_vector(vcd_file, u32(top__sum0_1_2_3), 9, "abb");
      vcd_file << "\n#" << vcd_time_stamp << '\n';
      vcd_time_stamp += 500;
      vcd_file << '0' << "aaa\n\n";
   #endif
}

