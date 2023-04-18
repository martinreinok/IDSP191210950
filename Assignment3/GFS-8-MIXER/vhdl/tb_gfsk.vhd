-------------------------------------------------------------------------------
-- (C) Bibix
-- The content below includes confidential, proprietary information of
-- Bibix. All use, disclosure, and/or reproduction is prohibited
-- unless authorized in writing. All rights reserved.
-------------------------------------------------------------------------------
-- File         : tb_gfsk.vhd
-- Description  : VHDL testbench for the GFSK demo
-- Author       : Sabih Gerez, Bibix
--                based on work by Rene Moll (DSE)
-- Creation date: February 25, 2012
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Sun Mar 19 22:36:35 CET 2023$
-- $Log$
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- stimuli generator:
-- + reads test vectors from file
-- + performs type conversions
-- + writes results to file
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

use work.pk_gfsk.all;

entity sg_gfsk is
  port(
    clock    : out std_logic;
    resetn   : out std_logic;
    data_in  : out std_logic_vector(mixer_word_length-1 downto 0);
    data_out : in  std_logic
  );
end entity;

architecture behavior of sg_gfsk is
  constant DELAY_PIPELINE: integer := 61;
  constant SLICER_SAMPLE: integer := 2;
  
  -- Internally generated clock
  signal clk_i : std_logic;

  -- Open input and twiddle files for DUV input
  file in_file: text open read_mode is "mixer_i32.in";

  -- Open output file for DUV results
  file out_file: text open write_mode is "bits.out";
  
begin
  clock <= clk_i;

  -- generate clock
  clock_gen: process
    constant half_clock_period: time := 100 ns;
  begin
    clk_i <= '1';
    wait for half_clock_period;
    clk_i <= '0';
    wait for half_clock_period;
  end process clock_gen;

  -- read input data from file and store results in output file
  stimuli : process(clk_i)
    variable first : boolean := true;
    variable inline, outline : line;
    variable in_data : integer;
    variable init_pipeline : boolean := false;
    variable sample_counter : integer := 0;
    variable symbol_counter : integer := 0;
    
  begin
    if (falling_edge(clk_i)) then
      if (first = true) then
         first := false;
         resetn <= '0';
      else
         resetn <= '1';

         -- Read one complex sample
         assert not endfile(in_file)
           report "OK! Simulation stopped at end of input file!"
           severity failure;

         readline(in_file, inline);

         read(inline, in_data);
         data_in <= std_logic_vector(to_signed(in_data, mixer_word_length));

         -- process output: sufficient to read output once in 16 cycles
         sample_counter := sample_counter + 1;
         if sample_counter = 16 then 
            sample_counter := 0;
            if symbol_counter >= symbol_offset-1 then
               write(outline, data_out);
               writeline(out_file, outline);
             end if;
            symbol_counter := symbol_counter + 1;
         end if;
      end if;
    end if;
  end process stimuli;
end architecture;

-------------------------------------------------------------------------------
-- Testbench: 
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.pk_gfsk.all;

entity tb_gfsk is
end entity;

architecture behavior of tb_gfsk is
  -- Internal wiring
  signal clock, resetn : std_logic;
  signal mixer_in : std_logic_vector(mixer_word_length-1 downto 0);
  signal slicer_out : std_logic;
  
  -- DUV
  component gfsk
    port (clk:   in  std_logic;
          rstn:  in  std_logic;
          mixer_in: in std_logic_vector (mixer_word_length-1 downto 0);
          slicer_out: out std_logic);
  end component;

  -- SG
  component sg_gfsk is
    port(
      clock          : out std_logic;
      resetn         : out std_logic;
      data_in        : out std_logic_vector(mixer_word_length-1 downto 0);
      data_out       : in  std_logic);
  end component;
  
begin
  -- instantiate and interconnect
  duv: gfsk
    port map (clk        => clock,      
              rstn       => resetn,
              mixer_in   => mixer_in,
              slicer_out => slicer_out);

  tvg: sg_gfsk
  port map (clock          => clock,
            resetn         => resetn,
            data_in        => mixer_in,
            data_out       => slicer_out);
  
end architecture;
