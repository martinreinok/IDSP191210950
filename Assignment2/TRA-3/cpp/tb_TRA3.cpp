// -----------------------------------------------------------------------------
// File         : tb_sec_df2.cpp
// Description  : C++ testbench for sec_df2
// Author       : Sabih Gerez, University of Twente
// Creation date: March 14, 2019
// -----------------------------------------------------------------------------
// $Rev: 1$
// $Author: gerezsh$
// $Date: Mon Feb 20 23:22:13 CET 2023$
// $Log$
// -----------------------------------------------------------------------------


#include "TRA3.h"

// -----------------------------------------------------------------------------
// parameters
// -----------------------------------------------------------------------------

#define TOP_DESIGN TRA3

#define WORD_LENGTH 8
#define INT_WORD_LENGTH 5
#define CLOCKS_PER_SAMPLE 4

#include "tb_sec_generic.cpp"
