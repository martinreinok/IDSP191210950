--
-- filter_std
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity filter_std is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      data_in_i : in std_logic_vector(11 downto 0);
      data_in_q : in std_logic_vector(11 downto 0);
      data_out_i : out std_logic_vector(4 downto 0);
      data_out_q : out std_logic_vector(4 downto 0)
   );
end filter_std;

architecture rtl of filter_std is
   component filter
      port (
         clock : in std_logic;
         resetn : in std_logic;
         data_in_i : in signed(11 downto 0);
         data_in_q : in signed(11 downto 0);
         data_out_i : out signed(4 downto 0);
         data_out_q : out signed(4 downto 0)
      );
   end component;

   signal arx_data_in_i : signed(11 downto 0);
   signal arx_data_in_q : signed(11 downto 0);
   signal arx_data_out_i : signed(4 downto 0);
   signal arx_data_out_q : signed(4 downto 0);
begin

   filter_inst : filter
      port map (
         clock => clock,
         resetn => resetn,
         data_in_i => arx_data_in_i,
         data_in_q => arx_data_in_q,
         data_out_i => arx_data_out_i,
         data_out_q => arx_data_out_q
      );

   arx_data_in_i <= signed(data_in_i);
   arx_data_in_q <= signed(data_in_q);
   data_out_i <= std_logic_vector(arx_data_out_i);
   data_out_q <= std_logic_vector(arx_data_out_q);
end rtl;

--
-- filter
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity filter is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      data_in_i : in signed(11 downto 0);
      data_in_q : in signed(11 downto 0);
      data_out_i : out signed(4 downto 0);
      data_out_q : out signed(4 downto 0)
   );
end filter;

architecture rtl of filter is


   component lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc
      port (
         clock : in std_logic;
         resetn : in std_logic;
         data_in : in signed(11 downto 0);
         data_out : out signed(4 downto 0)
      );
   end component;
   
   signal arx_lpf_i_data_in : signed(11 downto 0);
   signal arx_lpf_i_data_out : signed(4 downto 0);
   signal arx_lpf_q_data_in : signed(11 downto 0);
   signal arx_lpf_q_data_out : signed(4 downto 0);
begin

   lpf_i : lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc
      port map (
         clock => clock,
         resetn => resetn,
         data_in => arx_lpf_i_data_in,
         data_out => arx_lpf_i_data_out
      );
   
   lpf_q : lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc
      port map (
         clock => clock,
         resetn => resetn,
         data_in => arx_lpf_q_data_in,
         data_out => arx_lpf_q_data_out
      );
   
   update : process (arx_lpf_i_data_out, arx_lpf_q_data_out, data_in_i, data_in_q)
   begin
      --initialize variables and outports
      data_out_i <= to_signed(0, 5);
      data_out_q <= to_signed(0, 5);
      --copy register values to local variables
      --read from component outports
      data_out_i <= arx_lpf_i_data_out;
      data_out_q <= arx_lpf_q_data_out;
      --update outputs and register values
      --write to component inports
      arx_lpf_i_data_in <= data_in_i;
      arx_lpf_q_data_in <= data_in_q;
      --copy local variables to next register values
   end process update;
end rtl;

--
-- lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      data_in : in signed(11 downto 0);
      data_out : out signed(4 downto 0)
   );
end lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc;

architecture rtl of lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc is
   type arx_input_array_type is array (0 to 27) of signed(11 downto 0);

   constant arx_input_reset : arx_input_array_type := 
      (
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000",
      "000000000000"
      );

   signal arx_input_reg, arx_input_nxt : arx_input_array_type;
begin

   registers : process (resetn, clock)
   begin
      if resetn = '0' then
         arx_input_reg <= arx_input_reset;
      elsif rising_edge(clock) then
         for i in 0 to 27 loop
            arx_input_reg(i) <= arx_input_nxt(i);
         end loop;
      end if;
   end process registers;

   update : process (data_in, arx_input_reg)
      variable pair0_28 : signed(12 downto 0); -- reads=1, writes=1
      variable pair1_27 : signed(12 downto 0); -- reads=1, writes=1
      variable pair3_25 : signed(12 downto 0); -- reads=1, writes=1
      variable pair4_24 : signed(12 downto 0); -- reads=1, writes=1
      variable pair5_23 : signed(12 downto 0); -- reads=1, writes=1
      variable pair7_21 : signed(12 downto 0); -- reads=1, writes=1
      variable pair8_20 : signed(12 downto 0); -- reads=1, writes=1
      variable pair9_19 : signed(12 downto 0); -- reads=1, writes=1
      variable pair11_17 : signed(12 downto 0); -- reads=1, writes=1
      variable pair12_16 : signed(12 downto 0); -- reads=4, writes=1
      variable pair13_15 : signed(12 downto 0); -- reads=4, writes=1
      variable p232_1 : signed(13 downto 0); -- reads=1, writes=1
      variable p232_2 : signed(17 downto 0); -- reads=1, writes=1
      variable t4_5 : signed(13 downto 0); -- reads=1, writes=1
      variable t8_9 : signed(13 downto 0); -- reads=1, writes=1
      variable t0_1 : signed(14 downto 0); -- reads=1, writes=1
      variable t3_7 : signed(15 downto 0); -- reads=1, writes=1
      variable p141_1 : signed(19 downto 0); -- reads=1, writes=1
      variable p141_2 : signed(17 downto 0); -- reads=1, writes=1
      variable p141_3 : signed(21 downto 0); -- reads=1, writes=1
      variable p206_1 : signed(19 downto 0); -- reads=1, writes=1
      variable p206_2 : signed(15 downto 0); -- reads=1, writes=1
      variable p206_3 : signed(20 downto 0); -- reads=1, writes=1
      variable t11_14 : signed(18 downto 0); -- reads=1, writes=1
      variable t4_5_8_9 : signed(19 downto 0); -- reads=1, writes=1
      variable t0_1_3_7 : signed(18 downto 0); -- reads=1, writes=1
      variable t0_1_3_4_5_7_8_9 : signed(20 downto 0); -- reads=1, writes=1
      variable t12_13 : signed(22 downto 0); -- reads=1, writes=1
      variable t0_1_3_4_5_7_8_9_11_14 : signed(22 downto 0); -- reads=1, writes=1
      variable t0_1_3_4_5_7_8_9_11_12_13_14 : signed(23 downto 0); -- reads=1, writes=1
      variable sum_scaled : signed(23 downto 0); -- reads=1, writes=1
      variable input : arx_input_array_type; -- reads=51, writes=28
   begin
      --initialize variables and outports
      pair0_28 := to_signed(0, 13);
      pair1_27 := to_signed(0, 13);
      pair3_25 := to_signed(0, 13);
      pair4_24 := to_signed(0, 13);
      pair5_23 := to_signed(0, 13);
      pair7_21 := to_signed(0, 13);
      pair8_20 := to_signed(0, 13);
      pair9_19 := to_signed(0, 13);
      pair11_17 := to_signed(0, 13);
      pair12_16 := to_signed(0, 13);
      pair13_15 := to_signed(0, 13);
      p232_1 := to_signed(0, 14);
      p232_2 := to_signed(0, 18);
      t4_5 := to_signed(0, 14);
      t8_9 := to_signed(0, 14);
      t0_1 := to_signed(0, 15);
      t3_7 := to_signed(0, 16);
      p141_1 := to_signed(0, 20);
      p141_2 := to_signed(0, 18);
      p141_3 := to_signed(0, 22);
      p206_1 := to_signed(0, 20);
      p206_2 := to_signed(0, 16);
      p206_3 := to_signed(0, 21);
      t11_14 := to_signed(0, 19);
      t4_5_8_9 := to_signed(0, 20);
      t0_1_3_7 := to_signed(0, 19);
      t0_1_3_4_5_7_8_9 := to_signed(0, 21);
      t12_13 := to_signed(0, 23);
      t0_1_3_4_5_7_8_9_11_14 := to_signed(0, 23);
      t0_1_3_4_5_7_8_9_11_12_13_14 := to_signed(0, 24);
      sum_scaled := to_signed(0, 24);
      data_out <= to_signed(0, 5);
      --copy register values to local variables
      for i in 0 to 27 loop
         input(i) := arx_input_reg(i);
      end loop;
      --read from component outports
      --update outputs and register values
      pair0_28 := (arx_msb_extend(data_in, 1) + arx_msb_extend(arx_input_reg(27), 1));
      pair1_27 := (arx_msb_extend(arx_input_reg(0), 1) + arx_msb_extend(arx_input_reg(26), 1));
      pair3_25 := (arx_msb_extend(arx_input_reg(2), 1) + arx_msb_extend(arx_input_reg(24), 1));
      pair4_24 := (arx_msb_extend(arx_input_reg(3), 1) + arx_msb_extend(arx_input_reg(23), 1));
      pair5_23 := (arx_msb_extend(arx_input_reg(4), 1) + arx_msb_extend(arx_input_reg(22), 1));
      pair7_21 := (arx_msb_extend(arx_input_reg(6), 1) + arx_msb_extend(arx_input_reg(20), 1));
      pair8_20 := (arx_msb_extend(arx_input_reg(7), 1) + arx_msb_extend(arx_input_reg(19), 1));
      pair9_19 := (arx_msb_extend(arx_input_reg(8), 1) + arx_msb_extend(arx_input_reg(18), 1));
      pair11_17 := (arx_msb_extend(arx_input_reg(10), 1) + arx_msb_extend(arx_input_reg(16), 1));
      pair12_16 := (arx_msb_extend(arx_input_reg(11), 1) + arx_msb_extend(arx_input_reg(15), 1));
      pair13_15 := (arx_msb_extend(arx_input_reg(12), 1) + arx_msb_extend(arx_input_reg(14), 1));
      p232_1 := (arx_msb_extend(arx_input_reg(13), 2) + arx_msb_extend(arx_lsb_extend(arx_input_reg(13), 1), 1));
      p232_2 := (arx_msb_extend(arx_lsb_extend(arx_input_reg(13), 5), 1) - arx_msb_extend(p232_1, 4));
      t4_5 := (arx_msb_extend(pair4_24, 1) + arx_msb_extend(pair5_23, 1));
      t8_9 := (arx_msb_extend(pair8_20, 1) + arx_msb_extend(pair9_19, 1));
      t0_1 := (arx_msb_extend(pair0_28, 2) + arx_msb_extend(arx_lsb_extend(pair1_27, 1), 1));
      t3_7 := (arx_msb_extend(pair3_25, 3) - arx_msb_extend(arx_lsb_extend(pair7_21, 2), 1));
      p141_1 := (arx_msb_extend(arx_lsb_extend(pair12_16, 6), 1) - arx_msb_extend(pair12_16, 7));
      p141_2 := (arx_msb_extend(arx_lsb_extend(pair12_16, 4), 1) - arx_msb_extend(pair12_16, 5));
      p141_3 := (arx_msb_extend(arx_lsb_extend(p141_1, 1), 1) + arx_msb_extend(p141_2, 4));
      p206_1 := (arx_msb_extend(arx_lsb_extend(pair13_15, 6), 1) - arx_msb_extend(pair13_15, 7));
      p206_2 := (arx_msb_extend(arx_lsb_extend(pair13_15, 2), 1) + arx_msb_extend(pair13_15, 3));
      p206_3 := (arx_msb_extend(p206_1, 1) + arx_msb_extend(arx_lsb_extend(p206_2, 3), 2));
      t11_14 := (arx_msb_extend(arx_lsb_extend(pair11_17, 3), 3) + arx_msb_extend(p232_2, 1));
      t4_5_8_9 := arx_lsb_extend((arx_msb_extend(t4_5, 3) - arx_msb_extend(arx_lsb_extend(t8_9, 2), 1)), 3);
      t0_1_3_7 := (arx_msb_extend(arx_lsb_extend(t3_7, 2), 1) - arx_msb_extend(t0_1, 4));
      t0_1_3_4_5_7_8_9 := (arx_msb_extend(t0_1_3_7, 2) + arx_msb_extend(t4_5_8_9, 1));
      t12_13 := (arx_msb_extend(p141_3, 1) + arx_msb_extend(arx_lsb_extend(p206_3, 1), 1));
      t0_1_3_4_5_7_8_9_11_14 := (arx_msb_extend(t0_1_3_4_5_7_8_9, 2) + arx_msb_extend(arx_lsb_extend(t11_14, 3), 1));
      t0_1_3_4_5_7_8_9_11_12_13_14 := (arx_msb_extend(t0_1_3_4_5_7_8_9_11_14, 1) + arx_msb_extend(t12_13, 1));
      sum_scaled := t0_1_3_4_5_7_8_9_11_12_13_14;
      data_out <= arx_saturate(arx_truncate(sum_scaled, 12), 7);
      input(0) := data_in;
      input(1) := arx_input_reg(0);
      input(2) := arx_input_reg(1);
      input(3) := arx_input_reg(2);
      input(4) := arx_input_reg(3);
      input(5) := arx_input_reg(4);
      input(6) := arx_input_reg(5);
      input(7) := arx_input_reg(6);
      input(8) := arx_input_reg(7);
      input(9) := arx_input_reg(8);
      input(10) := arx_input_reg(9);
      input(11) := arx_input_reg(10);
      input(12) := arx_input_reg(11);
      input(13) := arx_input_reg(12);
      input(14) := arx_input_reg(13);
      input(15) := arx_input_reg(14);
      input(16) := arx_input_reg(15);
      input(17) := arx_input_reg(16);
      input(18) := arx_input_reg(17);
      input(19) := arx_input_reg(18);
      input(20) := arx_input_reg(19);
      input(21) := arx_input_reg(20);
      input(22) := arx_input_reg(21);
      input(23) := arx_input_reg(22);
      input(24) := arx_input_reg(23);
      input(25) := arx_input_reg(24);
      input(26) := arx_input_reg(25);
      input(27) := arx_input_reg(26);
      --write to component inports
      --copy local variables to next register values
      for i in 0 to 27 loop
         arx_input_nxt(i) <= input(i);
      end loop;
   end process update;
end rtl;

