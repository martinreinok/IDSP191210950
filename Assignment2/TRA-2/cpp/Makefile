# -----------------------------------------------------------------------------
# File         : Makefile
# Description  : makefile for Arx C++ sec_par testbench
# Author       : Sabih Gerez, University of Twente
# Creation date: March 16, 2018
# -----------------------------------------------------------------------------
# $Rev: 1$
# $Author: gerezsh$
# $Date: Mon Feb 20 23:22:13 CET 2023$
# $Log$
# -----------------------------------------------------------------------------


# paths: ARX_ROOT is set in environment
INCL_PATH = $(ARX_ROOT)/lib/c
LIB_PATH  = $(ARX_ROOT)/lib/c

# compiler
CC = g++

# itpp bin path
# I_BIN = $(ITPP_ROOT)/bin

# compiler flags
FLAGS = -I$(INCL_PATH) `itpp-config --cflags` -Wall -O3 -ffast-math 

# used libraries
LIBS  = -L$(LIB_PATH) -larxutil `itpp-config --libs`

# source files
# SOURCES = sec_par.cpp sec_ser.cpp
SOURCES = TRA2.cpp

# compiler
CC = g++

# file names derived from source files
TESTBENCHES  = $(SOURCES:%.cpp=tb_%.cpp)

OBJS    = $(SOURCES:%.cpp=%.o) 
TB_OBJS = $(TESTBENCHES:%.cpp=%.o)

EXES = $(TESTBENCHES:%.cpp=%.exe)

# main target
all:    $(EXES)

# link all object files and build executable
tb_%.exe : tb_%.o %.o
	$(CC) $*.o tb_$*.o -o tb_$*.exe $(LIBS)

# TO DO: makedepend

# compile C++ source files
$(TB_OBJS): tb_sec_generic.cpp settings.h
$(OBJS):    settings.h

%.o: %.cpp 
	$(CC) -c $(FLAGS) $*.cpp

# cleanup
.PHONY : clean
clean :
	rm -f $(EXES) $(OBJS) $(TB_OBJS)
