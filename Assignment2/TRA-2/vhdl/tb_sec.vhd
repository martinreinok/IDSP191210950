-------------------------------------------------------------------------------
-- File         : tb_sec.vhd
-- Description  : testbench for second-order filter IDSP project
-- Author       : Sabih Gerez, University of Twente
-- Creation date: March 17, 2018
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Mon Feb 20 23:36:12 CET 2023$
-- $Log$
-------------------------------------------------------------------------------


-- library and package declarations
library ieee, std;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;

-------------------------------------------------------------------------------
-- Test-vector controller (TVC)
-------------------------------------------------------------------------------

entity tvc_sec is
  generic (word_length: natural := 8;
           half_clock_period: time := 100 ns;
           clocks_per_sample: natural := 1;
           in_file_name: string := "sec_in.dat";
           out_file_name: string := "sec_out.dat"
          );
  port (data_in: out std_logic_vector(word_length-1 downto 0);
        clock: out std_logic;
        resetn: out std_logic;
        data_out: in std_logic_vector(word_length-1 downto 0)
       );
end tvc_sec;

architecture file_io of tvc_sec is
  -- internal clock and reset signals (these signals are necessary
  -- because VHDL does not allow that output signals are read in the
  -- entity that generates them)
  signal clk_i, rst_i: std_logic;

  -- input file
  file in_file: text open Read_mode is in_file_name;
  -- output file
  file out_file: text open Write_mode is out_file_name;

begin
  --  connect internal clock and reset to ports
  clock  <= clk_i;
  -- low-active reset!
  resetn <= not rst_i;

  -- generate clock
  clock_proc: process
  begin
    clk_i <= '1';
    wait for half_clock_period;
    clk_i <= '0';
    wait for half_clock_period;
  end process clock_proc;


  -- The hardware registers are clocked on the rising edge of the
  -- clock; the stimuli should be stable then and therefore change
  -- on the falling edge of the clock.
  
  -- Note that the first edge of the clock is a falling one.

  stimuli: process (clk_i)
    variable first: boolean := true;

    variable inline, outline: line;
    variable good: boolean;

    variable input, output: integer;

    variable cycle_counter: integer;

  begin
    if falling_edge(clk_i)
    then
      -- handle reset; reset signal is high during first clock cycle only
      if first 
      then
	first := false;
	rst_i <= '1';
        cycle_counter := 0;
      else
	rst_i <= '0';

	-- handle input signal, take it from file, in first cycle of T0
        if cycle_counter = 0
        then
	  assert not endfile(in_file)
	    report "OK! Simulation stopped at end of input file." 
            severity failure;
	  readline(in_file, inline);
	  read(inline, input, good);
	  assert good 
	    report "Error during input file processing." severity failure;
          -- encode input as a 2's complement signal
	  data_in <= std_logic_vector(to_signed(input, word_length));
        end if;

        -- handle output, copy to file at last cycle of T0
        if cycle_counter = clocks_per_sample-1
        then
          output := to_integer(signed(data_out));
          write(outline, output);
          writeline(out_file, outline);
        end if;

        if cycle_counter = clocks_per_sample-1
        then
          cycle_counter := 0;
        else
          cycle_counter := cycle_counter+1;
        end if;

      end if; -- first
    end if; -- falling_edge(clk_i)
  end process stimuli;

end file_io;

-------------------------------------------------------------------------------
-- Testbench (TB)
-------------------------------------------------------------------------------

library ieee, std;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_sec is
  generic(word_length: natural := 8);
end tb_sec;

architecture structure of tb_sec is
  -- note: component sec does not correspond to any entity
  -- the correct entity is to be provided by a configuration
  component sec
    -- generic (word_length: natural);
    port(
       clock : in std_logic;
       resetn : in std_logic;
       data_in : in std_logic_vector(word_length-1 downto 0);
       data_out : out std_logic_vector(word_length-1 downto 0)
    );
  end component;

  component tvc_sec 
    generic (word_length: natural := 8;
             half_clock_period: time := 100 ns;
             clocks_per_sample: natural := 1;
             in_file_name: string := "sec_par_in.dat";
             out_file_name: string := "sec_par_out.dat"
            );
    port (data_in: out std_logic_vector(word_length-1 downto 0);
          clock: out std_logic;
          resetn: out std_logic;
          data_out: in std_logic_vector(word_length-1 downto 0)
         );
  end component;

  signal data_in, data_out: std_logic_vector(word_length-1 downto 0);
  signal clock, resetn: std_logic;

begin
  -- instantiate and interconnect components
  -- note that the generic word_length is passed to the subblocks
  duv: sec
    -- generic map (word_length => word_length)
    port map (data_in => data_in, clock => clock, resetn => resetn, 
              data_out => data_out);
  tvc: tvc_sec
    generic map (word_length => word_length)
    port map (data_in => data_in, clock => clock, resetn => resetn, 
              data_out => data_out);
end structure;

-------------------------------------------------------------------------------
-- top level testbench (to bind generic word length)
-------------------------------------------------------------------------------

entity tb_sec_top is
end tb_sec_top;

architecture top of tb_sec_top is
  component tb_sec
    generic(word_length: natural := 8);
  end component;
begin
  tg: tb_sec;
end top;
