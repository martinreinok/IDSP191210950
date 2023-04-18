-------------------------------------------------------------------------------
-- (C) Bibix
-- The content below includes confidential, proprietary information of
-- Bibix. All use, disclosure, and/or reproduction is prohibited
-- unless authorized in writing. All rights reserved.
-------------------------------------------------------------------------------
-- File         : gfsk.vhd
-- Description  : GFSK demodulator top level
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
use work.pk_gfsk.all;

entity gfsk is
  port (clk:   in  std_logic;
        rstn:  in  std_logic;
        mixer_in: in std_logic_vector (mixer_word_length-1 downto 0);
        slicer_out: out std_logic);
end gfsk;

architecture structure of gfsk is
  -- declare all subblocks
  component clock_gen 
    port (clk:   in  std_logic;
          rstn:  in  std_logic;
          clk4:  out std_logic;
          clk16: out std_logic);
  end component;

  component mixer_std 
     port(
        clock : in std_logic;
        resetn : in std_logic;
        data_in : in std_logic_vector(mixer_word_length-1 downto 0);
        phase_corr : in std_logic_vector(phase_word_length-1 downto 0);
        data_out_i : out std_logic_vector(mixer_word_length-1 downto 0);
        data_out_q : out std_logic_vector(mixer_word_length-1 downto 0)
     );
  end component;

  component filter_std
     port(
        clock : in std_logic;
        resetn : in std_logic;
        data_in_i : in std_logic_vector(mixer_word_length-1 downto 0);
        data_in_q : in std_logic_vector(mixer_word_length-1 downto 0);
        data_out_i : out std_logic_vector(filter_word_length-1 downto 0);
        data_out_q : out std_logic_vector(filter_word_length-1 downto 0)
     );
  end component;

  component demodulator_std 
     port(
        clock : in std_logic;
        resetn : in std_logic;
        data_i : in std_logic_vector(filter_word_length-1 downto 0);
        data_q : in std_logic_vector(filter_word_length-1 downto 0);
        data_out : out std_logic_vector(demodulator_word_length-1 downto 0)
     );
  end component;

  component slicer_std
     port(
        clock : in std_logic;
        resetn : in std_logic;
        data_in : in std_logic_vector(demodulator_word_length-1 downto 0);
        offset : in std_logic_vector(1 downto 0);
        data_out : out std_logic
     );
  end component;

  -- internal wiring
  signal clk4, clk16: std_logic;
  signal mixer_out_i : std_logic_vector(mixer_word_length-1 downto 0);
  signal mixer_out_q : std_logic_vector(mixer_word_length-1 downto 0);
  signal filter_out_i : std_logic_vector(filter_word_length-1 downto 0);
  signal filter_out_q : std_logic_vector(filter_word_length-1 downto 0);
  signal demodulator_out : std_logic_vector(demodulator_word_length-1 downto 0);
begin
  -- instantiate and connect
  cg: clock_gen 
    port map (clk   => clk,
              rstn  => rstn,
              clk4  => clk4,
              clk16 => clk16);
  mx: mixer_std 
     port map (clock      => clk16 ,
               resetn     => rstn ,
               data_in    => mixer_in ,
               phase_corr => (others => '0'),
               data_out_i => mixer_out_i ,
               data_out_q => mixer_out_q);
  lpf: filter_std
     port map (clock      => clk16,
               resetn     => rstn ,
               data_in_i  => mixer_out_i ,
               data_in_q  => mixer_out_q ,
               data_out_i => filter_out_i ,
               data_out_q => filter_out_q);
  dam: demodulator_std 
     port map(clock    => clk4 ,
              resetn   => rstn ,
              data_i   => filter_out_i ,
              data_q   => filter_out_q ,
              data_out => demodulator_out);
  
  sl: slicer_std
     port map(clock    => clk4,    
              resetn   => rstn, 
              data_in  => demodulator_out, 
              offset   => slicer_offset,
              data_out => slicer_out); 
end structure;
