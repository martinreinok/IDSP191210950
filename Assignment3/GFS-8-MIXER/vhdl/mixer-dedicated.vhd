--
-- mixer-dedicated_std
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity mixer-dedicated_std is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      phase_corr : in std_logic_vector(9 downto 0);
      data_in : in std_logic_vector(8 downto 0);
      data_out_i : out std_logic_vector(8 downto 0);
      data_out_q : out std_logic_vector(8 downto 0)
   );
end mixer-dedicated_std;

architecture rtl of mixer-dedicated_std is
   component mixer-dedicated
      port (
         clock : in std_logic;
         resetn : in std_logic;
         phase_corr : in signed(9 downto 0);
         data_in : in signed(8 downto 0);
         data_out_i : out signed(8 downto 0);
         data_out_q : out signed(8 downto 0)
      );
   end component;

   signal arx_phase_corr : signed(9 downto 0);
   signal arx_data_in : signed(8 downto 0);
   signal arx_data_out_i : signed(8 downto 0);
   signal arx_data_out_q : signed(8 downto 0);
begin

   mixer-dedicated_inst : mixer-dedicated
      port map (
         clock => clock,
         resetn => resetn,
         phase_corr => arx_phase_corr,
         data_in => arx_data_in,
         data_out_i => arx_data_out_i,
         data_out_q => arx_data_out_q
      );

   arx_phase_corr <= signed(phase_corr);
   arx_data_in <= signed(data_in);
   data_out_i <= std_logic_vector(arx_data_out_i);
   data_out_q <= std_logic_vector(arx_data_out_q);
end rtl;

--
-- mixer-dedicated
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity mixer-dedicated is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      phase_corr : in signed(9 downto 0);
      data_in : in signed(8 downto 0);
      data_out_i : out signed(8 downto 0);
      data_out_q : out signed(8 downto 0)
   );
end mixer-dedicated;

architecture rtl of mixer-dedicated is


begin

   update : process (phase_corr, data_in)
   begin
      --initialize variables and outports
      data_out_i <= to_signed(0, 9);
      data_out_q <= to_signed(0, 9);
      --copy register values to local variables
      --read from component outports
      --update outputs and register values
      data_out_i <= arx_wrap(arx_truncate((data_in * "001100000"), 5), 4);
      data_out_q <= arx_wrap(arx_truncate((data_in * "001100000"), 5), 4);
      --write to component inports
      --copy local variables to next register values
   end process update;
end rtl;
