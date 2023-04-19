--
-- demodulator_std
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity demodulator_std is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      data_i : in std_logic_vector(4 downto 0);
      data_q : in std_logic_vector(4 downto 0);
      data_out : out std_logic_vector(8 downto 0)
   );
end demodulator_std;

architecture rtl of demodulator_std is
   component demodulator
      port (
         clock : in std_logic;
         resetn : in std_logic;
         data_i : in signed(4 downto 0);
         data_q : in signed(4 downto 0);
         data_out : out signed(8 downto 0)
      );
   end component;

   signal arx_data_i : signed(4 downto 0);
   signal arx_data_q : signed(4 downto 0);
   signal arx_data_out : signed(8 downto 0);
begin

   demodulator_inst : demodulator
      port map (
         clock => clock,
         resetn => resetn,
         data_i => arx_data_i,
         data_q => arx_data_q,
         data_out => arx_data_out
      );

   arx_data_i <= signed(data_i);
   arx_data_q <= signed(data_q);
   data_out <= std_logic_vector(arx_data_out);
end rtl;

--
-- demodulator
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity demodulator is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      data_i : in signed(4 downto 0);
      data_q : in signed(4 downto 0);
      data_out : out signed(8 downto 0)
   );
end demodulator;

architecture rtl of demodulator is
   type arx_dem_samples_i_array_type is array (0 to 3) of signed(4 downto 0);
   type arx_dem_samples_q_array_type is array (0 to 3) of signed(4 downto 0);

   constant arx_dem_samples_i_reset : arx_dem_samples_i_array_type := 
      (
      "00000",
      "00000",
      "00000",
      "00000"
      );
   constant arx_dem_samples_q_reset : arx_dem_samples_q_array_type := 
      (
      "00000",
      "00000",
      "00000",
      "00000"
      );
   constant arx_result_reset : signed(10 downto 0) := "00000000000";

   signal arx_dem_samples_i_reg, arx_dem_samples_i_nxt : arx_dem_samples_i_array_type;
   signal arx_dem_samples_q_reg, arx_dem_samples_q_nxt : arx_dem_samples_q_array_type;
   signal arx_result_reg, arx_result_nxt : signed(10 downto 0);
begin

   registers : process (resetn, clock)
   begin
      if resetn = '0' then
         arx_dem_samples_i_reg <= arx_dem_samples_i_reset;
         arx_dem_samples_q_reg <= arx_dem_samples_q_reset;
         arx_result_reg <= arx_result_reset;
      elsif rising_edge(clock) then
         for i in 0 to 3 loop
            arx_dem_samples_i_reg(i) <= arx_dem_samples_i_nxt(i);
         end loop;
         for i in 0 to 3 loop
            arx_dem_samples_q_reg(i) <= arx_dem_samples_q_nxt(i);
         end loop;
         arx_result_reg <= arx_result_nxt;
      end if;
   end process registers;

   update : process (data_i, data_q, arx_dem_samples_i_reg, arx_dem_samples_q_reg, arx_result_reg)
      variable prod_q_id : signed(9 downto 0); -- reads=1, writes=1
      variable prod_i_qd : signed(9 downto 0); -- reads=1, writes=1
      variable dem_samples_i : arx_dem_samples_i_array_type; -- reads=4, writes=4
      variable dem_samples_q : arx_dem_samples_q_array_type; -- reads=4, writes=4
      variable result : signed(10 downto 0); -- reads=1, writes=1
   begin
      --initialize variables and outports
      prod_q_id := to_signed(0, 10);
      prod_i_qd := to_signed(0, 10);
      data_out <= to_signed(0, 9);
      --copy register values to local variables
      for i in 0 to 3 loop
         dem_samples_i(i) := arx_dem_samples_i_reg(i);
      end loop;
      for i in 0 to 3 loop
         dem_samples_q(i) := arx_dem_samples_q_reg(i);
      end loop;
      result := arx_result_reg;
      --read from component outports
      --update outputs and register values
      prod_q_id := (data_q * arx_dem_samples_i_reg(3));
      prod_i_qd := (data_i * arx_dem_samples_q_reg(3));
      result := (arx_msb_extend(prod_q_id, 1) - arx_msb_extend(prod_i_qd, 1));
      dem_samples_i(0) := data_i;
      dem_samples_q(0) := data_q;
      dem_samples_i(1) := arx_dem_samples_i_reg(0);
      dem_samples_q(1) := arx_dem_samples_q_reg(0);
      dem_samples_i(2) := arx_dem_samples_i_reg(1);
      dem_samples_q(2) := arx_dem_samples_q_reg(1);
      dem_samples_i(3) := arx_dem_samples_i_reg(2);
      dem_samples_q(3) := arx_dem_samples_q_reg(2);
      data_out <= arx_saturate(arx_truncate(arx_result_reg, 1), 1);
      --write to component inports
      --copy local variables to next register values
      for i in 0 to 3 loop
         arx_dem_samples_i_nxt(i) <= dem_samples_i(i);
      end loop;
      for i in 0 to 3 loop
         arx_dem_samples_q_nxt(i) <= dem_samples_q(i);
      end loop;
      arx_result_nxt <= result;
   end process update;
end rtl;

