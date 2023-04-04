--
-- sec_nov_std
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity sec_nov_std is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      data_in : in std_logic_vector(7 downto 0);
      data_out : out std_logic_vector(7 downto 0)
   );
end sec_nov_std;

architecture rtl of sec_nov_std is
   component sec_nov
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

   sec_nov_inst : sec_nov
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
-- sec_nov
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity sec_nov is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      data_in : in signed(7 downto 0);
      data_out : out signed(7 downto 0)
   );
end sec_nov;

architecture rtl of sec_nov is
   type T_state is (T_state_cycle0, T_state_cycle1, T_state_cycle2, T_state_cycle3, T_state_cycle4, T_state_cycle5, T_state_cycle6, T_state_cycle7, T_state_cycle8, T_state_cycle9, T_state_cycle10);

   constant arx_i1_reset : signed(7 downto 0) := "00000000";
   constant arx_r1_reset : signed(7 downto 0) := "00000000";
   constant arx_r2_reset : signed(15 downto 0) := "0000000000000000";
   constant arx_r3_reset : signed(15 downto 0) := "0000000000000000";
   constant arx_r4_reset : signed(7 downto 0) := "00000000";
   constant arx_d0_reset : signed(7 downto 0) := "00000000";
   constant arx_d1_reset : signed(7 downto 0) := "00000000";
   constant arx_d2_reset : signed(7 downto 0) := "00000000";
   constant arx_o1_reset : signed(7 downto 0) := "00000000";
   constant arx_state_reset : T_state := T_state_cycle0;

   signal arx_i1_reg, arx_i1_nxt : signed(7 downto 0);
   signal arx_r1_reg, arx_r1_nxt : signed(7 downto 0);
   signal arx_r2_reg, arx_r2_nxt : signed(15 downto 0);
   signal arx_r3_reg, arx_r3_nxt : signed(15 downto 0);
   signal arx_r4_reg, arx_r4_nxt : signed(7 downto 0);
   signal arx_d0_reg, arx_d0_nxt : signed(7 downto 0);
   signal arx_d1_reg, arx_d1_nxt : signed(7 downto 0);
   signal arx_d2_reg, arx_d2_nxt : signed(7 downto 0);
   signal arx_o1_reg, arx_o1_nxt : signed(7 downto 0);
   signal arx_state_reg, arx_state_nxt : T_state;
begin

   registers : process (resetn, clock)
   begin
      if resetn = '0' then
         arx_i1_reg <= arx_i1_reset;
         arx_r1_reg <= arx_r1_reset;
         arx_r2_reg <= arx_r2_reset;
         arx_r3_reg <= arx_r3_reset;
         arx_r4_reg <= arx_r4_reset;
         arx_d0_reg <= arx_d0_reset;
         arx_d1_reg <= arx_d1_reset;
         arx_d2_reg <= arx_d2_reset;
         arx_o1_reg <= arx_o1_reset;
         arx_state_reg <= arx_state_reset;
      elsif rising_edge(clock) then
         arx_i1_reg <= arx_i1_nxt;
         arx_r1_reg <= arx_r1_nxt;
         arx_r2_reg <= arx_r2_nxt;
         arx_r3_reg <= arx_r3_nxt;
         arx_r4_reg <= arx_r4_nxt;
         arx_d0_reg <= arx_d0_nxt;
         arx_d1_reg <= arx_d1_nxt;
         arx_d2_reg <= arx_d2_nxt;
         arx_o1_reg <= arx_o1_nxt;
         arx_state_reg <= arx_state_nxt;
      end if;
   end process registers;

   update : process (data_in, arx_i1_reg, arx_r1_reg, arx_r2_reg, arx_r3_reg, arx_r4_reg, arx_d0_reg, arx_d1_reg, arx_d2_reg, arx_o1_reg, arx_state_reg)
      variable m_in_l : signed(7 downto 0); -- reads=1, writes=11
      variable m_in_r : signed(7 downto 0); -- reads=1, writes=11
      variable m_out : signed(15 downto 0); -- reads=5, writes=1
      variable a_in_l : signed(15 downto 0); -- reads=1, writes=11
      variable a_in_r : signed(15 downto 0); -- reads=1, writes=11
      variable a_out : signed(7 downto 0); -- reads=5, writes=1
      variable b2 : signed(7 downto 0); -- reads=2, writes=1
      variable b1 : signed(7 downto 0); -- reads=2, writes=1
      variable b0 : signed(7 downto 0); -- reads=3, writes=1
      variable a2 : signed(7 downto 0); -- reads=2, writes=1
      variable a1 : signed(7 downto 0); -- reads=2, writes=1
      variable i1 : signed(7 downto 0); -- reads=3, writes=1
      variable r1 : signed(7 downto 0); -- reads=3, writes=1
      variable r2 : signed(15 downto 0); -- reads=8, writes=3
      variable r3 : signed(15 downto 0); -- reads=7, writes=2
      variable r4 : signed(7 downto 0); -- reads=4, writes=2
      variable d0 : signed(7 downto 0); -- reads=1, writes=1
      variable d1 : signed(7 downto 0); -- reads=5, writes=1
      variable d2 : signed(7 downto 0); -- reads=4, writes=1
      variable o1 : signed(7 downto 0); -- reads=1, writes=1
      variable state : T_state; -- reads=3, writes=11
   begin
      --initialize variables and outports
      m_in_l := to_signed(0, 8);
      m_in_r := to_signed(0, 8);
      m_out := to_signed(0, 16);
      a_in_l := to_signed(0, 16);
      a_in_r := to_signed(0, 16);
      a_out := to_signed(0, 8);
      b2 := to_signed(0, 8);
      b1 := to_signed(0, 8);
      b0 := to_signed(0, 8);
      a2 := to_signed(0, 8);
      a1 := to_signed(0, 8);
      data_out <= to_signed(0, 8);
      --copy register values to local variables
      i1 := arx_i1_reg;
      r1 := arx_r1_reg;
      r2 := arx_r2_reg;
      r3 := arx_r3_reg;
      r4 := arx_r4_reg;
      d0 := arx_d0_reg;
      d1 := arx_d1_reg;
      d2 := arx_d2_reg;
      o1 := arx_o1_reg;
      state := arx_state_reg;
      --read from component outports
      --update outputs and register values
      b2 := "00111001";
      b1 := "10011010";
      b0 := "00111001";
      a2 := "11001111";
      a1 := "01000011";
      case arx_state_reg is
         when T_state_cycle0 =>
            m_in_l := a2;
            m_in_r := arx_d2_reg;
         when T_state_cycle1 =>
            m_in_l := a2;
            m_in_r := arx_d2_reg;
         when T_state_cycle2 =>
            m_in_l := a1;
            m_in_r := arx_d1_reg;
         when T_state_cycle3 =>
            m_in_l := a1;
            m_in_r := arx_d1_reg;
         when T_state_cycle4 =>
            m_in_l := b2;
            m_in_r := arx_d2_reg;
         when T_state_cycle5 =>
            m_in_l := b2;
            m_in_r := arx_d2_reg;
         when T_state_cycle6 =>
            m_in_l := b1;
            m_in_r := arx_d1_reg;
         when T_state_cycle7 =>
            m_in_l := b1;
            m_in_r := arx_d1_reg;
         when T_state_cycle8 =>
            m_in_l := b0;
            m_in_r := arx_r1_reg;
         when T_state_cycle9 =>
            m_in_l := b0;
            m_in_r := arx_r1_reg;
         when T_state_cycle10 =>
            m_in_l := b0;
            m_in_r := arx_r1_reg;
      end case;
      case arx_state_reg is
         when T_state_cycle0 =>
            a_in_l := arx_r2_reg;
            a_in_r := arx_r3_reg;
         when T_state_cycle1 =>
            a_in_l := arx_r2_reg;
            a_in_r := arx_r3_reg;
         when T_state_cycle2 =>
            a_in_l := arx_r2_reg;
            a_in_r := arx_r3_reg;
         when T_state_cycle3 =>
            a_in_l := arx_r2_reg;
            a_in_r := arx_r3_reg;
         when T_state_cycle4 =>
            a_in_l := arx_r2_reg;
            a_in_r := arx_r3_reg;
         when T_state_cycle5 =>
            a_in_l := arx_msb_extend(arx_lsb_extend(arx_i1_reg, 7), 1);
            a_in_r := arx_msb_extend(arx_lsb_extend(arx_r4_reg, 7), 1);
         when T_state_cycle6 =>
            a_in_l := arx_msb_extend(arx_lsb_extend(arx_i1_reg, 7), 1);
            a_in_r := arx_msb_extend(arx_lsb_extend(arx_r4_reg, 7), 1);
         when T_state_cycle7 =>
            a_in_l := arx_msb_extend(arx_lsb_extend(arx_i1_reg, 7), 1);
            a_in_r := arx_msb_extend(arx_lsb_extend(arx_r4_reg, 7), 1);
         when T_state_cycle8 =>
            a_in_l := arx_r2_reg;
            a_in_r := arx_r3_reg;
         when T_state_cycle9 =>
            a_in_l := arx_r2_reg;
            a_in_r := arx_r3_reg;
         when T_state_cycle10 =>
            a_in_l := arx_r2_reg;
            a_in_r := arx_msb_extend(arx_lsb_extend(arx_r4_reg, 7), 1);
      end case;
      m_out := (m_in_l * m_in_r);
      a_out := arx_wrap(arx_round((arx_msb_extend(a_in_l, 1) + arx_msb_extend(a_in_r, 1)), 7), 2);
      case arx_state_reg is
         when T_state_cycle0 =>
            state := T_state_cycle1;
            i1 := data_in;
         when T_state_cycle1 =>
            state := T_state_cycle2;
            r2 := m_out;
         when T_state_cycle2 =>
            state := T_state_cycle3;
         when T_state_cycle3 =>
            state := T_state_cycle4;
            r3 := m_out;
         when T_state_cycle4 =>
            state := T_state_cycle5;
            r4 := a_out;
         when T_state_cycle5 =>
            state := T_state_cycle6;
            r2 := m_out;
            r1 := a_out;
            d0 := a_out;
         when T_state_cycle6 =>
            state := T_state_cycle7;
         when T_state_cycle7 =>
            state := T_state_cycle8;
            r3 := m_out;
         when T_state_cycle8 =>
            state := T_state_cycle9;
            r4 := a_out;
         when T_state_cycle9 =>
            state := T_state_cycle10;
            r2 := m_out;
         when T_state_cycle10 =>
            state := T_state_cycle0;
            o1 := a_out;
            d1 := arx_d0_reg;
            d2 := arx_d1_reg;
      end case;
      data_out <= arx_o1_reg;
      --write to component inports
      --copy local variables to next register values
      arx_i1_nxt <= i1;
      arx_r1_nxt <= r1;
      arx_r2_nxt <= r2;
      arx_r3_nxt <= r3;
      arx_r4_nxt <= r4;
      arx_d0_nxt <= d0;
      arx_d1_nxt <= d1;
      arx_d2_nxt <= d2;
      arx_o1_nxt <= o1;
      arx_state_nxt <= state;
   end process update;
end rtl;
