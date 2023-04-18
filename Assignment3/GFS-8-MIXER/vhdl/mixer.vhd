--
-- cordic_signed_5_1_signed_9_4_10_8_8_signed_9_4
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity cordic_signed_5_1_signed_9_4_10_8_8_signed_9_4 is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      x_in : in signed(8 downto 0);
      y_in : in signed(8 downto 0);
      p_in : in signed(4 downto 0);
      op_mode : in std_logic;
      x_out : out signed(8 downto 0);
      y_out : out signed(8 downto 0);
      p_out : out signed(4 downto 0)
   );
end cordic_signed_5_1_signed_9_4_10_8_8_signed_9_4;

architecture rtl of cordic_signed_5_1_signed_9_4_10_8_8_signed_9_4 is
   type arx_aTan_array_type is array (0 to 6) of signed(4 downto 0);
   type arx_d_array_type is array (0 to 6) of Boolean;
   type arx_x_sh_array_type is array (0 to 6) of signed(8 downto 0);
   type arx_y_sh_array_type is array (0 to 6) of signed(8 downto 0);
   type arx_x_array_type is array (0 to 7) of signed(8 downto 0);
   type arx_y_array_type is array (0 to 7) of signed(8 downto 0);
   type arx_z_array_type is array (0 to 7) of signed(4 downto 0);

   constant aTan : arx_aTan_array_type := 
      (
      "00100",
      "00010",
      "00001",
      "00000",
      "00000",
      "00000",
      "00000"
      );
   constant arx_x_reset : arx_x_array_type := 
      (
      "000000000",
      "000000000",
      "000000000",
      "000000000",
      "000000000",
      "000000000",
      "000000000",
      "000000000"
      );
   constant arx_y_reset : arx_y_array_type := 
      (
      "000000000",
      "000000000",
      "000000000",
      "000000000",
      "000000000",
      "000000000",
      "000000000",
      "000000000"
      );
   constant arx_z_reset : arx_z_array_type := 
      (
      "00000",
      "00000",
      "00000",
      "00000",
      "00000",
      "00000",
      "00000",
      "00000"
      );

   signal arx_x_reg, arx_x_nxt : arx_x_array_type;
   signal arx_y_reg, arx_y_nxt : arx_y_array_type;
   signal arx_z_reg, arx_z_nxt : arx_z_array_type;
begin

   registers : process (resetn, clock)
   begin
      if resetn = '0' then
         arx_x_reg <= arx_x_reset;
         arx_y_reg <= arx_y_reset;
         arx_z_reg <= arx_z_reset;
      elsif rising_edge(clock) then
         for i in 0 to 7 loop
            arx_x_reg(i) <= arx_x_nxt(i);
         end loop;
         for i in 0 to 7 loop
            arx_y_reg(i) <= arx_y_nxt(i);
         end loop;
         for i in 0 to 7 loop
            arx_z_reg(i) <= arx_z_nxt(i);
         end loop;
      end if;
   end process registers;

   update : process (x_in, y_in, p_in, op_mode, arx_x_reg, arx_y_reg, arx_z_reg)
      variable d : arx_d_array_type; -- reads=7, writes=7
      variable x_sh : arx_x_sh_array_type; -- reads=14, writes=7
      variable y_sh : arx_y_sh_array_type; -- reads=14, writes=7
      variable x : arx_x_array_type; -- reads=22, writes=18
      variable y : arx_y_array_type; -- reads=29, writes=18
      variable z : arx_z_array_type; -- reads=22, writes=18
   begin
      --initialize variables and outports
      d(0) := false;
      d(1) := false;
      d(2) := false;
      d(3) := false;
      d(4) := false;
      d(5) := false;
      d(6) := false;
      x_sh(0) := to_signed(0, 9);
      x_sh(1) := to_signed(0, 9);
      x_sh(2) := to_signed(0, 9);
      x_sh(3) := to_signed(0, 9);
      x_sh(4) := to_signed(0, 9);
      x_sh(5) := to_signed(0, 9);
      x_sh(6) := to_signed(0, 9);
      y_sh(0) := to_signed(0, 9);
      y_sh(1) := to_signed(0, 9);
      y_sh(2) := to_signed(0, 9);
      y_sh(3) := to_signed(0, 9);
      y_sh(4) := to_signed(0, 9);
      y_sh(5) := to_signed(0, 9);
      y_sh(6) := to_signed(0, 9);
      x_out <= to_signed(0, 9);
      y_out <= to_signed(0, 9);
      p_out <= to_signed(0, 5);
      --copy register values to local variables
      for i in 0 to 7 loop
         x(i) := arx_x_reg(i);
      end loop;
      for i in 0 to 7 loop
         y(i) := arx_y_reg(i);
      end loop;
      for i in 0 to 7 loop
         z(i) := arx_z_reg(i);
      end loop;
      --read from component outports
      --update outputs and register values
      x_out <= arx_x_reg(7);
      y_out <= arx_y_reg(7);
      p_out <= arx_z_reg(7);
      d(6) := ((op_mode = '0' and arx_z_reg(6) >= "00000") or (op_mode = '1' and arx_y_reg(6) < "000000000"));
      x_sh(6) := arx_msb_extend(arx_truncate(arx_x_reg(6), 6), 6);
      y_sh(6) := arx_msb_extend(arx_truncate(arx_y_reg(6), 6), 6);
      if d(6) = true then
         x(7) := arx_wrap((arx_msb_extend(arx_x_reg(6), 1) - arx_msb_extend(y_sh(6), 1)), 1);
         y(7) := arx_wrap((arx_msb_extend(arx_y_reg(6), 1) + arx_msb_extend(x_sh(6), 1)), 1);
         z(7) := arx_wrap((arx_msb_extend(arx_z_reg(6), 1) - arx_msb_extend("00000", 1)), 1);
      else
         x(7) := arx_wrap((arx_msb_extend(arx_x_reg(6), 1) + arx_msb_extend(y_sh(6), 1)), 1);
         y(7) := arx_wrap((arx_msb_extend(arx_y_reg(6), 1) - arx_msb_extend(x_sh(6), 1)), 1);
         z(7) := arx_wrap((arx_msb_extend(arx_z_reg(6), 1) + arx_msb_extend("00000", 1)), 1);
      end if;
      d(5) := ((op_mode = '0' and arx_z_reg(5) >= "00000") or (op_mode = '1' and arx_y_reg(5) < "000000000"));
      x_sh(5) := arx_msb_extend(arx_truncate(arx_x_reg(5), 5), 5);
      y_sh(5) := arx_msb_extend(arx_truncate(arx_y_reg(5), 5), 5);
      if d(5) = true then
         x(6) := arx_wrap((arx_msb_extend(arx_x_reg(5), 1) - arx_msb_extend(y_sh(5), 1)), 1);
         y(6) := arx_wrap((arx_msb_extend(arx_y_reg(5), 1) + arx_msb_extend(x_sh(5), 1)), 1);
         z(6) := arx_wrap((arx_msb_extend(arx_z_reg(5), 1) - arx_msb_extend("00000", 1)), 1);
      else
         x(6) := arx_wrap((arx_msb_extend(arx_x_reg(5), 1) + arx_msb_extend(y_sh(5), 1)), 1);
         y(6) := arx_wrap((arx_msb_extend(arx_y_reg(5), 1) - arx_msb_extend(x_sh(5), 1)), 1);
         z(6) := arx_wrap((arx_msb_extend(arx_z_reg(5), 1) + arx_msb_extend("00000", 1)), 1);
      end if;
      d(4) := ((op_mode = '0' and arx_z_reg(4) >= "00000") or (op_mode = '1' and arx_y_reg(4) < "000000000"));
      x_sh(4) := arx_msb_extend(arx_truncate(arx_x_reg(4), 4), 4);
      y_sh(4) := arx_msb_extend(arx_truncate(arx_y_reg(4), 4), 4);
      if d(4) = true then
         x(5) := arx_wrap((arx_msb_extend(arx_x_reg(4), 1) - arx_msb_extend(y_sh(4), 1)), 1);
         y(5) := arx_wrap((arx_msb_extend(arx_y_reg(4), 1) + arx_msb_extend(x_sh(4), 1)), 1);
         z(5) := arx_wrap((arx_msb_extend(arx_z_reg(4), 1) - arx_msb_extend("00000", 1)), 1);
      else
         x(5) := arx_wrap((arx_msb_extend(arx_x_reg(4), 1) + arx_msb_extend(y_sh(4), 1)), 1);
         y(5) := arx_wrap((arx_msb_extend(arx_y_reg(4), 1) - arx_msb_extend(x_sh(4), 1)), 1);
         z(5) := arx_wrap((arx_msb_extend(arx_z_reg(4), 1) + arx_msb_extend("00000", 1)), 1);
      end if;
      d(3) := ((op_mode = '0' and arx_z_reg(3) >= "00000") or (op_mode = '1' and arx_y_reg(3) < "000000000"));
      x_sh(3) := arx_msb_extend(arx_truncate(arx_x_reg(3), 3), 3);
      y_sh(3) := arx_msb_extend(arx_truncate(arx_y_reg(3), 3), 3);
      if d(3) = true then
         x(4) := arx_wrap((arx_msb_extend(arx_x_reg(3), 1) - arx_msb_extend(y_sh(3), 1)), 1);
         y(4) := arx_wrap((arx_msb_extend(arx_y_reg(3), 1) + arx_msb_extend(x_sh(3), 1)), 1);
         z(4) := arx_wrap((arx_msb_extend(arx_z_reg(3), 1) - arx_msb_extend("00000", 1)), 1);
      else
         x(4) := arx_wrap((arx_msb_extend(arx_x_reg(3), 1) + arx_msb_extend(y_sh(3), 1)), 1);
         y(4) := arx_wrap((arx_msb_extend(arx_y_reg(3), 1) - arx_msb_extend(x_sh(3), 1)), 1);
         z(4) := arx_wrap((arx_msb_extend(arx_z_reg(3), 1) + arx_msb_extend("00000", 1)), 1);
      end if;
      d(2) := ((op_mode = '0' and arx_z_reg(2) >= "00000") or (op_mode = '1' and arx_y_reg(2) < "000000000"));
      x_sh(2) := arx_msb_extend(arx_truncate(arx_x_reg(2), 2), 2);
      y_sh(2) := arx_msb_extend(arx_truncate(arx_y_reg(2), 2), 2);
      if d(2) = true then
         x(3) := arx_wrap((arx_msb_extend(arx_x_reg(2), 1) - arx_msb_extend(y_sh(2), 1)), 1);
         y(3) := arx_wrap((arx_msb_extend(arx_y_reg(2), 1) + arx_msb_extend(x_sh(2), 1)), 1);
         z(3) := arx_wrap((arx_msb_extend(arx_z_reg(2), 1) - arx_msb_extend("00001", 1)), 1);
      else
         x(3) := arx_wrap((arx_msb_extend(arx_x_reg(2), 1) + arx_msb_extend(y_sh(2), 1)), 1);
         y(3) := arx_wrap((arx_msb_extend(arx_y_reg(2), 1) - arx_msb_extend(x_sh(2), 1)), 1);
         z(3) := arx_wrap((arx_msb_extend(arx_z_reg(2), 1) + arx_msb_extend("00001", 1)), 1);
      end if;
      d(1) := ((op_mode = '0' and arx_z_reg(1) >= "00000") or (op_mode = '1' and arx_y_reg(1) < "000000000"));
      x_sh(1) := arx_msb_extend(arx_truncate(arx_x_reg(1), 1), 1);
      y_sh(1) := arx_msb_extend(arx_truncate(arx_y_reg(1), 1), 1);
      if d(1) = true then
         x(2) := arx_wrap((arx_msb_extend(arx_x_reg(1), 1) - arx_msb_extend(y_sh(1), 1)), 1);
         y(2) := arx_wrap((arx_msb_extend(arx_y_reg(1), 1) + arx_msb_extend(x_sh(1), 1)), 1);
         z(2) := arx_wrap((arx_msb_extend(arx_z_reg(1), 1) - arx_msb_extend("00010", 1)), 1);
      else
         x(2) := arx_wrap((arx_msb_extend(arx_x_reg(1), 1) + arx_msb_extend(y_sh(1), 1)), 1);
         y(2) := arx_wrap((arx_msb_extend(arx_y_reg(1), 1) - arx_msb_extend(x_sh(1), 1)), 1);
         z(2) := arx_wrap((arx_msb_extend(arx_z_reg(1), 1) + arx_msb_extend("00010", 1)), 1);
      end if;
      d(0) := ((op_mode = '0' and arx_z_reg(0) >= "00000") or (op_mode = '1' and arx_y_reg(0) < "000000000"));
      x_sh(0) := arx_x_reg(0);
      y_sh(0) := arx_y_reg(0);
      if d(0) = true then
         x(1) := arx_wrap((arx_msb_extend(arx_x_reg(0), 1) - arx_msb_extend(y_sh(0), 1)), 1);
         y(1) := arx_wrap((arx_msb_extend(arx_y_reg(0), 1) + arx_msb_extend(x_sh(0), 1)), 1);
         z(1) := arx_wrap((arx_msb_extend(arx_z_reg(0), 1) - arx_msb_extend("00100", 1)), 1);
      else
         x(1) := arx_wrap((arx_msb_extend(arx_x_reg(0), 1) + arx_msb_extend(y_sh(0), 1)), 1);
         y(1) := arx_wrap((arx_msb_extend(arx_y_reg(0), 1) - arx_msb_extend(x_sh(0), 1)), 1);
         z(1) := arx_wrap((arx_msb_extend(arx_z_reg(0), 1) + arx_msb_extend("00100", 1)), 1);
      end if;
      if op_mode = '0' then
         if (p_in > "01000" or p_in < "11000") then
            x(0) := (-x_in);
            y(0) := (-y_in);
            z(0) := arx_wrap((arx_msb_extend(p_in, 1) + arx_msb_extend("10000", 1)), 1);
         else
            x(0) := x_in;
            y(0) := y_in;
            z(0) := p_in;
         end if;
      else
         if x_in <= "000000000" then
            x(0) := (-x_in);
            y(0) := (-y_in);
            z(0) := arx_wrap((arx_msb_extend(p_in, 1) + arx_msb_extend("10000", 1)), 1);
         else
            x(0) := x_in;
            y(0) := y_in;
            z(0) := p_in;
         end if;
      end if;
      --write to component inports
      --copy local variables to next register values
      for i in 0 to 7 loop
         arx_x_nxt(i) <= x(i);
      end loop;
      for i in 0 to 7 loop
         arx_y_nxt(i) <= y(i);
      end loop;
      for i in 0 to 7 loop
         arx_z_nxt(i) <= z(i);
      end loop;
   end process update;
end rtl;

--
-- mixer_std
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity mixer_std is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      data_in : in std_logic_vector(8 downto 0);
      phase_corr : in std_logic_vector(4 downto 0);
      data_out_i : out std_logic_vector(8 downto 0);
      data_out_q : out std_logic_vector(8 downto 0)
   );
end mixer_std;

architecture rtl of mixer_std is
   component mixer
      port (
         clock : in std_logic;
         resetn : in std_logic;
         data_in : in signed(8 downto 0);
         phase_corr : in signed(4 downto 0);
         data_out_i : out signed(8 downto 0);
         data_out_q : out signed(8 downto 0)
      );
   end component;

   signal arx_data_in : signed(8 downto 0);
   signal arx_phase_corr : signed(4 downto 0);
   signal arx_data_out_i : signed(8 downto 0);
   signal arx_data_out_q : signed(8 downto 0);
begin

   mixer_inst : mixer
      port map (
         clock => clock,
         resetn => resetn,
         data_in => arx_data_in,
         phase_corr => arx_phase_corr,
         data_out_i => arx_data_out_i,
         data_out_q => arx_data_out_q
      );

   arx_data_in <= signed(data_in);
   arx_phase_corr <= signed(phase_corr);
   data_out_i <= std_logic_vector(arx_data_out_i);
   data_out_q <= std_logic_vector(arx_data_out_q);
end rtl;

--
-- mixer
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity mixer is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      data_in : in signed(8 downto 0);
      phase_corr : in signed(4 downto 0);
      data_out_i : out signed(8 downto 0);
      data_out_q : out signed(8 downto 0)
   );
end mixer;

architecture rtl of mixer is
   type arx_sin_array_array_type is array (0 to 7) of signed(4 downto 0);
   type arx_cos_array_array_type is array (0 to 7) of signed(4 downto 0);

   constant arx_phase_step_reset : signed(4 downto 0) := "00100";
   constant arx_sin_array_reset : arx_sin_array_array_type := 
      (
      "00000",
      "01011",
      "01111",
      "01011",
      "00000",
      "10101",
      "10000",
      "10101"
      );
   constant arx_cos_array_reset : arx_cos_array_array_type := 
      (
      "01111",
      "01011",
      "00000",
      "10101",
      "10000",
      "10101",
      "00000",
      "01011"
      );

   component phase_acc_signed_5_1_8
      port (
         clock : in std_logic;
         resetn : in std_logic;
         phase_step : in signed(4 downto 0);
         phase_sum : out signed(4 downto 0)
      );
   end component;
   
   signal arx_i_acc_phase_step : signed(4 downto 0);
   signal arx_i_acc_phase_sum : signed(4 downto 0);
   component cordic_signed_5_1_signed_9_4_10_8_8_signed_9_4
      port (
         clock : in std_logic;
         resetn : in std_logic;
         x_in : in signed(8 downto 0);
         y_in : in signed(8 downto 0);
         p_in : in signed(4 downto 0);
         op_mode : in std_logic;
         x_out : out signed(8 downto 0);
         y_out : out signed(8 downto 0);
         p_out : out signed(4 downto 0)
      );
   end component;
   
   signal arx_i_cordic_x_in : signed(8 downto 0);
   signal arx_i_cordic_y_in : signed(8 downto 0);
   signal arx_i_cordic_p_in : signed(4 downto 0);
   signal arx_i_cordic_op_mode : std_logic;
   signal arx_i_cordic_x_out : signed(8 downto 0);
   signal arx_i_cordic_y_out : signed(8 downto 0);
   signal arx_i_cordic_p_out : signed(4 downto 0);
   signal arx_phase_step_reg, arx_phase_step_nxt : signed(4 downto 0);
   signal arx_sin_array_reg, arx_sin_array_nxt : arx_sin_array_array_type;
   signal arx_cos_array_reg, arx_cos_array_nxt : arx_cos_array_array_type;
begin

   i_acc : phase_acc_signed_5_1_8
      port map (
         clock => clock,
         resetn => resetn,
         phase_step => arx_i_acc_phase_step,
         phase_sum => arx_i_acc_phase_sum
      );
   
   i_cordic : cordic_signed_5_1_signed_9_4_10_8_8_signed_9_4
      port map (
         clock => clock,
         resetn => resetn,
         x_in => arx_i_cordic_x_in,
         y_in => arx_i_cordic_y_in,
         p_in => arx_i_cordic_p_in,
         op_mode => arx_i_cordic_op_mode,
         x_out => arx_i_cordic_x_out,
         y_out => arx_i_cordic_y_out,
         p_out => arx_i_cordic_p_out
      );
   
   registers : process (resetn, clock)
   begin
      if resetn = '0' then
         arx_phase_step_reg <= arx_phase_step_reset;
         arx_sin_array_reg <= arx_sin_array_reset;
         arx_cos_array_reg <= arx_cos_array_reset;
      elsif rising_edge(clock) then
         arx_phase_step_reg <= arx_phase_step_nxt;
         for i in 0 to 7 loop
            arx_sin_array_reg(i) <= arx_sin_array_nxt(i);
         end loop;
         for i in 0 to 7 loop
            arx_cos_array_reg(i) <= arx_cos_array_nxt(i);
         end loop;
      end if;
   end process registers;

   update : process (arx_i_acc_phase_sum, arx_i_cordic_x_out, arx_i_cordic_y_out, arx_i_cordic_p_out, data_in, phase_corr, arx_phase_step_reg, arx_sin_array_reg, arx_cos_array_reg)
      variable cordic_in_x : signed(8 downto 0); -- reads=1, writes=0
      variable cordic_in_y : signed(8 downto 0); -- reads=1, writes=0
      variable cordic_out_x : signed(8 downto 0); -- reads=0, writes=1
      variable cordic_out_y : signed(8 downto 0); -- reads=0, writes=1
      variable cordic_out_p : signed(4 downto 0); -- reads=0, writes=1
      variable phase_i : unsigned(3 downto 0); -- reads=2, writes=2
      variable phase_sum : signed(4 downto 0); -- reads=1, writes=1
      variable cordic_op_mode : std_logic; -- reads=1, writes=0
      variable corrected_step : signed(4 downto 0); -- reads=1, writes=0
      variable phase_step : signed(4 downto 0); -- reads=0, writes=0
      variable sin_array : arx_sin_array_array_type; -- reads=0, writes=0
      variable cos_array : arx_cos_array_array_type; -- reads=0, writes=0
   begin
      --initialize variables and outports
      cordic_in_x := to_signed(0, 9);
      cordic_in_y := to_signed(0, 9);
      cordic_out_x := to_signed(0, 9);
      cordic_out_y := to_signed(0, 9);
      cordic_out_p := to_signed(0, 5);
      phase_i := to_unsigned(0, 4);
      phase_sum := to_signed(0, 5);
      cordic_op_mode := '0';
      corrected_step := to_signed(0, 5);
      data_out_i <= to_signed(0, 9);
      data_out_q <= to_signed(0, 9);
      --copy register values to local variables
      phase_step := arx_phase_step_reg;
      for i in 0 to 7 loop
         sin_array(i) := arx_sin_array_reg(i);
      end loop;
      for i in 0 to 7 loop
         cos_array(i) := arx_cos_array_reg(i);
      end loop;
      --read from component outports
      phase_sum := arx_i_acc_phase_sum;
      cordic_out_x := arx_i_cordic_x_out;
      cordic_out_y := arx_i_cordic_y_out;
      cordic_out_p := arx_i_cordic_p_out;
      --update outputs and register values
      data_out_q <= "000000000";
      data_out_i <= "000000000";
      if phase_i < "1000" then
         phase_i := arx_wrap((arx_msb_extend(phase_i, 1) + arx_msb_extend("0001", 1)), 1);
      else
         phase_i := "0000";
      end if;
      --write to component inports
      arx_i_acc_phase_step <= corrected_step;
      arx_i_cordic_x_in <= cordic_in_x;
      arx_i_cordic_y_in <= cordic_in_y;
      arx_i_cordic_p_in <= phase_sum;
      arx_i_cordic_op_mode <= cordic_op_mode;
      --copy local variables to next register values
      arx_phase_step_nxt <= phase_step;
      for i in 0 to 7 loop
         arx_sin_array_nxt(i) <= sin_array(i);
      end loop;
      for i in 0 to 7 loop
         arx_cos_array_nxt(i) <= cos_array(i);
      end loop;
   end process update;
end rtl;

--
-- phase_acc_signed_5_1_8
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity phase_acc_signed_5_1_8 is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      phase_step : in signed(4 downto 0);
      phase_sum : out signed(4 downto 0)
   );
end phase_acc_signed_5_1_8;

architecture rtl of phase_acc_signed_5_1_8 is

   constant arx_phase_acc_reset : signed(4 downto 0) := "00000";

   signal arx_phase_acc_reg, arx_phase_acc_nxt : signed(4 downto 0);
begin

   registers : process (resetn, clock)
   begin
      if resetn = '0' then
         arx_phase_acc_reg <= arx_phase_acc_reset;
      elsif rising_edge(clock) then
         arx_phase_acc_reg <= arx_phase_acc_nxt;
      end if;
   end process registers;

   update : process (phase_step, arx_phase_acc_reg)
      variable phase_acc : signed(4 downto 0); -- reads=2, writes=1
   begin
      --initialize variables and outports
      phase_sum <= to_signed(0, 5);
      --copy register values to local variables
      phase_acc := arx_phase_acc_reg;
      --read from component outports
      --update outputs and register values
      phase_acc := arx_wrap((arx_msb_extend(arx_phase_acc_reg, 1) + arx_msb_extend(phase_step, 1)), 1);
      phase_sum <= arx_phase_acc_reg;
      --write to component inports
      --copy local variables to next register values
      arx_phase_acc_nxt <= phase_acc;
   end process update;
end rtl;
