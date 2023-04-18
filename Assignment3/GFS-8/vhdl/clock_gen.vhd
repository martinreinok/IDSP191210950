-------------------------------------------------------------------------------
-- (C) Bibix
-- The content below includes confidential, proprietary information of
-- Bibix. All use, disclosure, and/or reproduction is prohibited
-- unless authorized in writing. All rights reserved.
-------------------------------------------------------------------------------
-- File         : clock_gen.vhd
-- Description  : Clock generator for GFSK demodulator
-- Author       : Sabih Gerez, Bibix
-- Creation date: February 26, 2012
-------------------------------------------------------------------------------
-- $Rev: 1$
-- $Author: gerezsh$
-- $Date: Sun Mar 19 22:36:35 CET 2023$
-- $Log$
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- clock_gen: divide main clock by 4 and 16 and provide as well the 
-- original one
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_gen is
  port (clk:   in  std_logic;
        rstn:  in  std_logic;
        clk4:  out std_logic;
        clk16: out std_logic);
end clock_gen;

architecture behavior of clock_gen is
  signal counter: unsigned(1 downto 0);
begin
  seq: process(clk, rstn)
  begin
    if (rstn = '0')
    then
       counter <= (others => '0');
       clk4 <= '0';
    elsif rising_edge(clk)
    then
       counter <= counter + 1;
       if (counter = 3)
       then
          clk4 <= '1';
       else
          clk4 <= '0';
       end if;
    end if;
  end process seq;

  -- buffer clk16; in an ASIC realization clock-tree synthesis should
  -- align clk4 and clk16
  clk16 <= clk after 1 ns;
end behavior;
