-------------------------------------------------------------------------------
-- (C) Bibix
-- The content below includes confidential, proprietary information of
-- Bibix. All use, disclosure, and/or reproduction is prohibited
-- unless authorized in writing. All rights reserved.
-------------------------------------------------------------------------------
-- File         : pk_gfsk.vhd
-- Description  : GFSK configuration package
-- Author       : Sabih Gerez, Bibix
-- Creation date: February 26, 2012
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Sun Mar 19 22:36:35 CET 2023$
-- $Log$
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

package pk_gfsk is
  -- word length for ADC output, mixer input, mixer output and LPF input
  constant mixer_word_length      : integer := 12;
  -- word length of mixer's phase-correction input
  constant phase_word_length      : integer := 10;
  -- word length for LPF ouput
  constant filter_word_length     : integer := 5;
  -- word length for DAM ouput and slicer input
  constant demodulator_word_length: integer := 7;
  -- cycle-offset value for slicer
  constant slicer_offset: std_logic_vector(1 downto 0) := "11";
  -- symbol-offset, latency expressed in integer symbols 
  constant symbol_offset: integer := 6;
end package;
