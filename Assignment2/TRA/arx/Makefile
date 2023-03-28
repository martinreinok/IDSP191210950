# -----------------------------------------------------------------------------
# File         : Makefile
# Description  : makefile for designing with Arx, version for IDSP
# Author       : Sabih Gerez, University of Twente
# Creation date: March 2, 2012
# -----------------------------------------------------------------------------
# $Rev: 1$
# $Author: gerezsh$
# $Date: Mon Feb 20 22:46:56 CET 2023$
# $Log$
# -----------------------------------------------------------------------------


# declare your sourcefiles here
SOURCEFILES = TRA2.arx

# paths
VHDL_PATH = ../vhdl
C_PATH    = ../cpp

# arx program with full path
# ARX_ROOT should come from the shell environment
ARX_JAR = $(ARX_ROOT)/bin/arx-1.4.jar

# arx options
# ARX_OPTIONS = -debug -trace 
ARX_OPTIONS = 

# target format
VHDL_TARGETS = $(SOURCEFILES:%.arx=$(VHDL_PATH)/%.vhd)

# C target
C_TARGETS = $(SOURCEFILES:%.arx=$(C_PATH)/%.cpp)
H_TARGETS = $(SOURCEFILES:%.arx=$(C_PATH)/%.h)

# all targets
TARGETS = $(VHDL_TARGETS) $(C_TARGETS) $(H_TARGETS)

# intermediate targets
TARGETS_INT = $(SOURCEFILES:%.arx=$(VHDL_PATH)/%.vhd-top)

# main target
all: paths c vhdl

# create subdirectories
paths: $(VHDL_PATH) $(C_PATH)

$(VHDL_PATH) $(C_PATH):
	mkdir -p $(VHDL_PATH) $(C_PATH)

# C
c: $(C_TARGETS)

# VHDL
vhdl: $(VHDL_TARGETS)

# do not remove intermediate files
.SECONDARY:

# clean up
clean: 
	rm -f $(TARGETS) $(TARGETS_INT)

# rule for generating vhdl
$(VHDL_PATH)/%.vhd-top: %.arx
	java -jar $(ARX_JAR) $(ARX_OPTIONS) \
          -vhdl $*.vhd-top $*.arx
	mv $*.vhd-top $(VHDL_PATH)

# rule for replacing "top" by top-level defined by file name
$(VHDL_PATH)/%.vhd: $(VHDL_PATH)/%.vhd-top
	sed -e "s/top/$*/g" < $(VHDL_PATH)/$*.vhd-top > $(VHDL_PATH)/$*.vhd

# rule for generating C
$(C_PATH)/%.cpp: %.arx
	java -jar $(ARX_JAR) $(ARX_OPTIONS) -c $* $*.arx
	mv $*.h $*.cpp $(C_PATH)
