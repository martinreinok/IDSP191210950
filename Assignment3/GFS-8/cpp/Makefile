# -----------------------------------------------------------------------------
# (C) Bibix
# The content below includes confidential, proprietary information of
# Bibix. All use, disclosure, and/or reproduction is prohibited
# unless authorized in writing. All rights reserved.
# -----------------------------------------------------------------------------
# File         : Makefile
# Description  : decimator for C++ simulation of GFSK demo
# Author       : Sabih Gerez, Bibix
#                based on work by Rene Moll (DSE)
# Creation date: December 7, 2011
# -----------------------------------------------------------------------------
# $Rev: 1$
# $Author: gerezsh$
# $Date: Mon Mar 13 00:08:42 CET 2023$
# $Log$
# -----------------------------------------------------------------------------


# paths: ARX_ROOT is set in environment
INCL_PATH = $(ARX_ROOT)/lib/c
LIB_PATH  = $(ARX_ROOT)/lib/c

# compiler
CC = g++

# itpp bin path
# I_BIN = /opt/sw/it++4.3.0/bin
# ITPP_FLAGS = -I/opt/sw/it++4.3.0_nolibs/include -O3 -DNDEBUG
# ITPP_LIBS  = -L/opt/sw/it++4.3.0_nolibs/lib -litpp

# RELEASE:
# FLAGS = -I$(INCL_PATH) -Wall -O3 -ffast-math `pkg-config --cflags itpp`
FLAGS = -I$(INCL_PATH) `itpp-config --cflags` -Wall -O3 -ffast-math 
# FLAGS = -I$(INCL_PATH) $(ITPP_FLAGS) -Wall -O3 -ffast-math 
# DEBUG:
# FLAGS = -I$(INCL_PATH) -Wall -g -ffast-math `pkg-config --cflags itpp` -D DEBUG

# used libraries
# LIBS  = -L$(LIB_PATH) -larxutil `pkg-config --static --libs itpp`
LIBS  = -L$(LIB_PATH) -larxutil `itpp-config --libs`
# LIBS  = -L$(LIB_PATH) -larxutil $(ITPP_LIBS)

# source files
SOURCES = gfsk.cpp 

SOURCES_itpp   = $(SOURCES)
SOURCES_mixer  = $(SOURCES) mixer.cpp
SOURCES_filter = $(SOURCES) mixer.cpp filter.cpp
SOURCES_demod  = $(SOURCES) mixer.cpp filter.cpp demodulator.cpp
SOURCES_slicer = $(SOURCES) mixer.cpp filter.cpp demodulator.cpp slicer.cpp

# object files
OBJ_itpp   = tb_ber_itpp.o   $(SOURCES_itpp:%.cpp=%.o)
OBJ_mixer  = tb_ber_mixer.o  $(SOURCES_mixer:%.cpp=%.o)
OBJ_filter = tb_ber_filter.o $(SOURCES_filter:%.cpp=%.o)
OBJ_demod  = tb_ber_demod.o  $(SOURCES_demod:%.cpp=%.o)
OBJ_slicer = tb_ber_slicer.o $(SOURCES_slicer:%.cpp=%.o)

# defines
DEFINE_itpp   = 
DEFINE_mixer  = $(DEFINE_itpp) -D ARX_MIXER
DEFINE_filter = $(DEFINE_mixer) -D ARX_FILTER
DEFINE_demod  = $(DEFINE_filter) -D ARX_DEMODULATOR
DEFINE_slicer = $(DEFINE_demod) -D ARX_SLICER

all: tb_ber_itpp tb_ber_mixer tb_ber_filter tb_ber_demod tb_ber_slicer

# dependencies; don't know how to replace these by generic rule
tb_ber_itpp:   $(OBJ_itpp)
tb_ber_mixer:  $(OBJ_mixer)
tb_ber_filter: $(OBJ_filter)
tb_ber_demod:  $(OBJ_demod)
tb_ber_slicer: $(OBJ_slicer)

# compilation rule for testbench source
tb_ber_%.o: tb_ber.cpp tb_ber.h gfsk.h settings.h
	$(CC) -c $(FLAGS) $(DEFINE_$*) -o tb_ber_$*.o tb_ber.cpp

# generic link rule for testbenches
tb_ber_%:
	$(CC) $(OBJ_$*) -o tb_ber_$* $(LIBS)

# generic compilation rule for C++ source files
%.o: %.cpp %.h
	$(CC) -c $(FLAGS) $*.cpp

clean:
	rm -rf tb_ber_itpp
	rm -rf tb_ber_mixer
	rm -rf tb_ber_filter
	rm -rf tb_ber_demod
	rm -rf tb_ber_slicer
	rm -rf *.o
