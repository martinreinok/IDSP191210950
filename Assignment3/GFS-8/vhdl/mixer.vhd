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
      data_in : in std_logic_vector(11 downto 0);
      phase_corr : in std_logic_vector(9 downto 0);
      data_out_i : out std_logic_vector(11 downto 0);
      data_out_q : out std_logic_vector(11 downto 0)
   );
end mixer_std;

architecture rtl of mixer_std is
   component mixer
      port (
         clock : in std_logic;
         resetn : in std_logic;
         data_in : in signed(11 downto 0);
         phase_corr : in signed(9 downto 0);
         data_out_i : out signed(11 downto 0);
         data_out_q : out signed(11 downto 0)
      );
   end component;

   signal arx_data_in : signed(11 downto 0);
   signal arx_phase_corr : signed(9 downto 0);
   signal arx_data_out_i : signed(11 downto 0);
   signal arx_data_out_q : signed(11 downto 0);
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
      data_in : in signed(11 downto 0);
      phase_corr : in signed(9 downto 0);
      data_out_i : out signed(11 downto 0);
      data_out_q : out signed(11 downto 0)
   );
end mixer;

architecture rtl of mixer is
   type arx_sin_array_array_type is array (0 to 7) of signed(9 downto 0);

   constant sin_array : arx_sin_array_array_type := 
      (
      "0100000000",
      "0010110101",
      "0000000000",
      "1101001011",
      "1100000000",
      "1101001011",
      "0000000000",
      "0010110101"
      );
   constant arx_i_reset : unsigned(2 downto 0) := "000";

   signal arx_i_reg, arx_i_nxt : unsigned(2 downto 0);
begin

   registers : process (resetn, clock)
   begin
      if resetn = '0' then
         arx_i_reg <= arx_i_reset;
      elsif rising_edge(clock) then
         arx_i_reg <= arx_i_nxt;
      end if;
   end process registers;

   update : process (data_in, phase_corr, arx_i_reg)
      variable i : unsigned(2 downto 0); -- reads=1, writes=9
   begin
      --initialize variables and outports
      data_out_i <= to_signed(0, 12);
      data_out_q <= to_signed(0, 12);
      --copy register values to local variables
      i := arx_i_reg;
      --read from component outports
      --update outputs and register values
      case arx_i_reg is
         when "000" =>
            data_out_q <= arx_wrap(arx_truncate(("000000000000" * data_in), 6), 6);
            data_out_i <= arx_wrap(arx_truncate(("000001000000" * data_in), 6), 6);
            i := "001";
         when "001" =>
            data_out_q <= arx_wrap(arx_truncate(("111111010011" * data_in), 6), 6);
            data_out_i <= arx_wrap(arx_truncate(("000000101101" * data_in), 6), 6);
            i := "010";
         when "010" =>
            data_out_q <= arx_wrap(arx_truncate(("111111000000" * data_in), 6), 6);
            data_out_i <= arx_wrap(arx_truncate(("000000000000" * data_in), 6), 6);
            i := "011";
         when "011" =>
            data_out_q <= arx_wrap(arx_truncate(("111111010011" * data_in), 6), 6);
            data_out_i <= arx_wrap(arx_truncate(("111111010011" * data_in), 6), 6);
            i := "100";
         when "100" =>
            data_out_q <= arx_wrap(arx_truncate(("000000000000" * data_in), 6), 6);
            data_out_i <= arx_wrap(arx_truncate(("111111000000" * data_in), 6), 6);
            i := "101";
         when "101" =>
            data_out_q <= arx_wrap(arx_truncate(("000000101101" * data_in), 6), 6);
            data_out_i <= arx_wrap(arx_truncate(("111111010011" * data_in), 6), 6);
            i := "110";
         when "110" =>
            data_out_q <= arx_wrap(arx_truncate(("000001000000" * data_in), 6), 6);
            data_out_i <= arx_wrap(arx_truncate(("000000000000" * data_in), 6), 6);
            i := "111";
         when "111" =>
            data_out_q <= arx_wrap(arx_truncate(("000000101101" * data_in), 6), 6);
            data_out_i <= arx_wrap(arx_truncate(("000000101101" * data_in), 6), 6);
            i := "000";
         when others =>
            i := "000";
      end case;
      --write to component inports
      --copy local variables to next register values
      arx_i_nxt <= i;
   end process update;
end rtl;
