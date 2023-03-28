--
-- TRA22_std
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity TRA22_std is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      data_in : in std_logic_vector(7 downto 0);
      data_out : out std_logic_vector(7 downto 0)
   );
end TRA22_std;

architecture rtl of TRA22_std is
   component TRA22
      port (
         clock : in std_logic;
         resetn : in std_logic;
         data_in : in signed(7 downto 0);
         data_out : out signed(7 downto 0)
      );
   end component;

   signal arx_data_in : signed(7 downto 0);
   signal arx_data_out : signed(7 downto 0);
begin

   TRA22_inst : TRA22
      port map (
         clock => clock,
         resetn => resetn,
         data_in => arx_data_in,
         data_out => arx_data_out
      );

   arx_data_in <= signed(data_in);
   data_out <= std_logic_vector(arx_data_out);
end rtl;

--
-- TRA22
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity TRA22 is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      data_in : in signed(7 downto 0);
      data_out : out signed(7 downto 0)
   );
end TRA22;

architecture rtl of TRA22 is

   constant arx_z1_reset : signed(7 downto 0) := "00000000";
   constant arx_z2_reset : signed(7 downto 0) := "00000000";
   constant arx_z3_reset : signed(7 downto 0) := "00000000";
   constant arx_p2_out_reset : signed(7 downto 0) := "00000000";

   signal arx_z1_reg, arx_z1_nxt : signed(7 downto 0);
   signal arx_z2_reg, arx_z2_nxt : signed(7 downto 0);
   signal arx_z3_reg, arx_z3_nxt : signed(7 downto 0);
   signal arx_p2_out_reg, arx_p2_out_nxt : signed(7 downto 0);
begin

   registers : process (resetn, clock)
   begin
      if resetn = '0' then
         arx_z1_reg <= arx_z1_reset;
         arx_z2_reg <= arx_z2_reset;
         arx_z3_reg <= arx_z3_reset;
         arx_p2_out_reg <= arx_p2_out_reset;
      elsif rising_edge(clock) then
         arx_z1_reg <= arx_z1_nxt;
         arx_z2_reg <= arx_z2_nxt;
         arx_z3_reg <= arx_z3_nxt;
         arx_p2_out_reg <= arx_p2_out_nxt;
      end if;
   end process registers;

   update : process (data_in, arx_z1_reg, arx_z2_reg, arx_z3_reg, arx_p2_out_reg)
      variable m1 : signed(15 downto 0); -- reads=1, writes=1
      variable m2 : signed(15 downto 0); -- reads=1, writes=1
      variable m3 : signed(15 downto 0); -- reads=1, writes=1
      variable m4 : signed(15 downto 0); -- reads=1, writes=1
      variable m5 : signed(15 downto 0); -- reads=1, writes=1
      variable p1 : signed(7 downto 0); -- reads=1, writes=1
      variable p2 : signed(7 downto 0); -- reads=1, writes=1
      variable p3 : signed(7 downto 0); -- reads=1, writes=1
      variable p4 : signed(7 downto 0); -- reads=1, writes=1
      variable b2 : signed(7 downto 0); -- reads=1, writes=1
      variable b1 : signed(7 downto 0); -- reads=1, writes=1
      variable b0 : signed(7 downto 0); -- reads=1, writes=1
      variable a2 : signed(7 downto 0); -- reads=1, writes=1
      variable a1 : signed(7 downto 0); -- reads=1, writes=1
      variable z1 : signed(7 downto 0); -- reads=3, writes=1
      variable z2 : signed(7 downto 0); -- reads=3, writes=1
      variable z3 : signed(7 downto 0); -- reads=1, writes=1
      variable p2_out : signed(7 downto 0); -- reads=1, writes=1
   begin
      --initialize variables and outports
      m1 := to_signed(0, 16);
      m2 := to_signed(0, 16);
      m3 := to_signed(0, 16);
      m4 := to_signed(0, 16);
      m5 := to_signed(0, 16);
      p1 := to_signed(0, 8);
      p2 := to_signed(0, 8);
      p3 := to_signed(0, 8);
      p4 := to_signed(0, 8);
      b2 := to_signed(0, 8);
      b1 := to_signed(0, 8);
      b0 := to_signed(0, 8);
      a2 := to_signed(0, 8);
      a1 := to_signed(0, 8);
      data_out <= to_signed(0, 8);
      --copy register values to local variables
      z1 := arx_z1_reg;
      z2 := arx_z2_reg;
      z3 := arx_z3_reg;
      p2_out := arx_p2_out_reg;
      --read from component outports
      --update outputs and register values
      b2 := "00111001";
      b1 := "10011010";
      b0 := "00111001";
      a2 := "11001111";
      a1 := "01000011";
      m2 := (a1 * arx_z1_reg);
      m3 := (b1 * arx_z2_reg);
      m4 := (a2 * arx_z2_reg);
      m5 := (b2 * arx_z3_reg);
      p3 := arx_wrap(arx_round((arx_msb_extend(m2, 1) + arx_msb_extend(m4, 1)), 7), 2);
      p1 := arx_wrap((arx_msb_extend(p3, 1) + arx_msb_extend(data_in, 1)), 1);
      m1 := (b0 * arx_z1_reg);
      p4 := arx_wrap(arx_round((arx_msb_extend(m3, 1) + arx_msb_extend(m5, 1)), 7), 2);
      p2 := arx_wrap(arx_round((arx_msb_extend(m1, 1) + arx_msb_extend(arx_lsb_extend(p4, 7), 2)), 7), 2);
      z1 := p1;
      z2 := arx_z1_reg;
      z3 := arx_z2_reg;
      p2_out := p2;
      data_out <= arx_p2_out_reg;
      --write to component inports
      --copy local variables to next register values
      arx_z1_nxt <= z1;
      arx_z2_nxt <= z2;
      arx_z3_nxt <= z3;
      arx_p2_out_nxt <= p2_out;
   end process update;
end rtl;

