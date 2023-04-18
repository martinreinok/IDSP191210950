--
-- slicer_std
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity slicer_std is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      data_in : in std_logic_vector(6 downto 0);
      offset : in std_logic_vector(1 downto 0);
      data_out : out std_logic
   );
end slicer_std;

architecture rtl of slicer_std is
   component slicer
      port (
         clock : in std_logic;
         resetn : in std_logic;
         data_in : in signed(6 downto 0);
         offset : in unsigned(1 downto 0);
         data_out : out std_logic
      );
   end component;

   signal arx_data_in : signed(6 downto 0);
   signal arx_offset : unsigned(1 downto 0);
   signal arx_data_out : std_logic;
begin

   slicer_inst : slicer
      port map (
         clock => clock,
         resetn => resetn,
         data_in => arx_data_in,
         offset => arx_offset,
         data_out => arx_data_out
      );

   arx_data_in <= signed(data_in);
   arx_offset <= unsigned(offset);
   data_out <= std_logic(arx_data_out);
end rtl;

--
-- slicer
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arx_numeric.all;

entity slicer is
   port(
      clock : in std_logic;
      resetn : in std_logic;
      data_in : in signed(6 downto 0);
      offset : in unsigned(1 downto 0);
      data_out : out std_logic
   );
end slicer;

architecture rtl of slicer is
   type arx_slicer_fifo_array_type is array (0 to 2) of signed(6 downto 0);

   constant arx_slicer_fifo_reset : arx_slicer_fifo_array_type := 
      (
      "0000000",
      "0000000",
      "0000000"
      );
   constant arx_counter_reset : unsigned(1 downto 0) := "00";
   constant arx_output_reset : std_logic := '0';

   signal arx_slicer_fifo_reg, arx_slicer_fifo_nxt : arx_slicer_fifo_array_type;
   signal arx_counter_reg, arx_counter_nxt : unsigned(1 downto 0);
   signal arx_output_reg, arx_output_nxt : std_logic;
begin

   registers : process (resetn, clock)
   begin
      if resetn = '0' then
         arx_slicer_fifo_reg <= arx_slicer_fifo_reset;
         arx_counter_reg <= arx_counter_reset;
         arx_output_reg <= arx_output_reset;
      elsif rising_edge(clock) then
         for i in 0 to 2 loop
            arx_slicer_fifo_reg(i) <= arx_slicer_fifo_nxt(i);
         end loop;
         arx_counter_reg <= arx_counter_nxt;
         arx_output_reg <= arx_output_nxt;
      end if;
   end process registers;

   update : process (data_in, offset, arx_slicer_fifo_reg, arx_counter_reg, arx_output_reg)
      variable sum0_1 : signed(7 downto 0); -- reads=1, writes=1
      variable sum2_3 : signed(7 downto 0); -- reads=1, writes=1
      variable sum0_1_2_3 : signed(8 downto 0); -- reads=1, writes=1
      variable slicer_fifo : arx_slicer_fifo_array_type; -- reads=5, writes=3
      variable counter : unsigned(1 downto 0); -- reads=2, writes=1
      variable output : std_logic; -- reads=1, writes=2
   begin
      --initialize variables and outports
      sum0_1 := to_signed(0, 8);
      sum2_3 := to_signed(0, 8);
      sum0_1_2_3 := to_signed(0, 9);
      data_out <= '0';
      --copy register values to local variables
      for i in 0 to 2 loop
         slicer_fifo(i) := arx_slicer_fifo_reg(i);
      end loop;
      counter := arx_counter_reg;
      output := arx_output_reg;
      --read from component outports
      --update outputs and register values
      sum0_1 := (arx_msb_extend(data_in, 1) + arx_msb_extend(arx_slicer_fifo_reg(0), 1));
      sum2_3 := (arx_msb_extend(arx_slicer_fifo_reg(1), 1) + arx_msb_extend(arx_slicer_fifo_reg(2), 1));
      sum0_1_2_3 := (arx_msb_extend(sum0_1, 1) + arx_msb_extend(sum2_3, 1));
      if arx_counter_reg = offset then
         if sum0_1_2_3 > "000000000" then
            output := '1';
         else
            output := '0';
         end if;
      end if;
      counter := arx_wrap((arx_msb_extend(arx_counter_reg, 1) + arx_msb_extend("01", 1)), 1);
      slicer_fifo(0) := data_in;
      slicer_fifo(1) := arx_slicer_fifo_reg(0);
      slicer_fifo(2) := arx_slicer_fifo_reg(1);
      data_out <= arx_output_reg;
      --write to component inports
      --copy local variables to next register values
      for i in 0 to 2 loop
         arx_slicer_fifo_nxt(i) <= slicer_fifo(i);
      end loop;
      arx_counter_nxt <= counter;
      arx_output_nxt <= output;
   end process update;
end rtl;

