
library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

package CONV_PACK_gfsk is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type SIGNED is array (INTEGER range <>) of std_logic;
type UNSIGNED is array (INTEGER range <>) of std_logic;

end CONV_PACK_gfsk;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of demodulator_DW_mult_tc_1_DW_mult_tc_3 is

   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component ADHALFDL
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n41, n42, n43, n45, n46, n47
      , n48, n49, n50, n51, n52, n53, n54, n55, n56, n92, n93, n94, n95, n96, 
      n97, n98, n99, n100, n101 : std_logic;

begin
   
   U2 : ADFULD1 port map( A => n9, B => n33, CI => n2, CO => n1, S => 
                           product(8));
   U3 : ADFULD1 port map( A => n11, B => n10, CI => n3, CO => n2, S => 
                           product(7));
   U4 : ADFULD1 port map( A => n12, B => n15, CI => n4, CO => n3, S => 
                           product(6));
   U5 : ADFULD1 port map( A => n16, B => n21, CI => n5, CO => n4, S => 
                           product(5));
   U6 : ADFULD1 port map( A => n22, B => n24, CI => n6, CO => n5, S => 
                           product(4));
   U7 : ADFULD1 port map( A => n7, B => n30, CI => n28, CO => n6, S => 
                           product(3));
   U8 : ADFULD1 port map( A => n8, B => n47, CI => n32, CO => n7, S => 
                           product(2));
   U9 : ADHALFDL port map( A => n56, B => n52, CO => n8, S => product(1));
   U10 : ADFULD1 port map( A => n34, B => n38, CI => n13, CO => n9, S => n10);
   U11 : ADFULD1 port map( A => n17, B => n19, CI => n14, CO => n11, S => n12);
   U12 : ADFULD1 port map( A => n43, B => n39, CI => n35, CO => n13, S => n14);
   U13 : ADFULD1 port map( A => n23, B => n20, CI => n18, CO => n15, S => n16);
   U14 : ADFULD1 port map( A => n36, B => n48, CI => n25, CO => n17, S => n18);
   U17 : ADFULD1 port map( A => n26, B => n29, CI => n27, CO => n21, S => n22);
   U18 : ADFULD1 port map( A => n53, B => n45, CI => n37, CO => n23, S => n24);
   U19 : ADHALFDL port map( A => n49, B => n41, CO => n25, S => n26);
   U20 : ADFULD1 port map( A => n50, B => n54, CI => n31, CO => n27, S => n28);
   U21 : ADHALFDL port map( A => n42, B => n46, CO => n29, S => n30);
   U22 : ADHALFDL port map( A => n51, B => n55, CO => n31, S => n32);
   U60 : INVD1 port map( A => a(0), Z => n92);
   U61 : INVD1 port map( A => a(1), Z => n93);
   U62 : INVD1 port map( A => a(2), Z => n94);
   U63 : INVD1 port map( A => a(3), Z => n95);
   U64 : INVD1 port map( A => n1, Z => product(9));
   U65 : INVD1 port map( A => b(1), Z => n98);
   U66 : INVD1 port map( A => b(0), Z => n99);
   U67 : INVD1 port map( A => b(2), Z => n97);
   U68 : INVD1 port map( A => b(3), Z => n96);
   U69 : NOR2D1 port map( A1 => n92, A2 => n99, Z => product(0));
   U70 : NOR2D1 port map( A1 => n92, A2 => n98, Z => n56);
   U71 : NOR2D1 port map( A1 => n92, A2 => n97, Z => n55);
   U72 : NOR2D1 port map( A1 => n92, A2 => n96, Z => n54);
   U73 : NAN2D1 port map( A1 => b(4), A2 => a(0), Z => n53);
   U74 : NOR2D1 port map( A1 => n99, A2 => n93, Z => n52);
   U75 : NOR2D1 port map( A1 => n98, A2 => n93, Z => n51);
   U76 : NOR2D1 port map( A1 => n97, A2 => n93, Z => n50);
   U77 : NOR2D1 port map( A1 => n96, A2 => n93, Z => n49);
   U78 : NAN2D1 port map( A1 => a(1), A2 => b(4), Z => n48);
   U79 : NOR2D1 port map( A1 => n99, A2 => n94, Z => n47);
   U80 : NOR2D1 port map( A1 => n98, A2 => n94, Z => n46);
   U81 : NOR2D1 port map( A1 => n97, A2 => n94, Z => n45);
   U82 : NAN2D1 port map( A1 => a(2), A2 => b(4), Z => n43);
   U83 : NOR2D1 port map( A1 => n99, A2 => n95, Z => n42);
   U84 : NOR2D1 port map( A1 => n98, A2 => n95, Z => n41);
   U85 : NOR2D1 port map( A1 => n96, A2 => n95, Z => n39);
   U86 : NAN2D1 port map( A1 => a(3), A2 => b(4), Z => n38);
   U87 : NAN2D1 port map( A1 => a(4), A2 => b(0), Z => n37);
   U88 : NAN2D1 port map( A1 => a(4), A2 => b(1), Z => n36);
   U89 : NAN2D1 port map( A1 => a(4), A2 => b(2), Z => n35);
   U90 : NAN2D1 port map( A1 => a(4), A2 => b(3), Z => n34);
   U91 : AND2D1 port map( A1 => b(4), A2 => a(4), Z => n33);
   U92 : EXNOR2D1 port map( A1 => n100, A2 => n101, Z => n20);
   U93 : NAN2D1 port map( A1 => n101, A2 => n100, Z => n19);
   U94 : NAN2D1 port map( A1 => a(3), A2 => b(2), Z => n100);
   U95 : NAN2D1 port map( A1 => a(2), A2 => b(3), Z => n101);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of demodulator_DW_mult_tc_0_DW_mult_tc_2 is

   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component ADHALFDL
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n41, n42, n43, n45, n46, n47
      , n48, n49, n50, n51, n52, n53, n54, n55, n56, n92, n93, n94, n95, n96, 
      n97, n98, n99, n100, n101 : std_logic;

begin
   
   U2 : ADFULD1 port map( A => n9, B => n33, CI => n2, CO => n1, S => 
                           product(8));
   U3 : ADFULD1 port map( A => n11, B => n10, CI => n3, CO => n2, S => 
                           product(7));
   U4 : ADFULD1 port map( A => n12, B => n15, CI => n4, CO => n3, S => 
                           product(6));
   U5 : ADFULD1 port map( A => n16, B => n21, CI => n5, CO => n4, S => 
                           product(5));
   U6 : ADFULD1 port map( A => n22, B => n24, CI => n6, CO => n5, S => 
                           product(4));
   U7 : ADFULD1 port map( A => n7, B => n30, CI => n28, CO => n6, S => 
                           product(3));
   U8 : ADFULD1 port map( A => n8, B => n47, CI => n32, CO => n7, S => 
                           product(2));
   U9 : ADHALFDL port map( A => n56, B => n52, CO => n8, S => product(1));
   U10 : ADFULD1 port map( A => n34, B => n38, CI => n13, CO => n9, S => n10);
   U11 : ADFULD1 port map( A => n17, B => n19, CI => n14, CO => n11, S => n12);
   U12 : ADFULD1 port map( A => n43, B => n39, CI => n35, CO => n13, S => n14);
   U13 : ADFULD1 port map( A => n23, B => n20, CI => n18, CO => n15, S => n16);
   U14 : ADFULD1 port map( A => n36, B => n48, CI => n25, CO => n17, S => n18);
   U17 : ADFULD1 port map( A => n26, B => n29, CI => n27, CO => n21, S => n22);
   U18 : ADFULD1 port map( A => n53, B => n45, CI => n37, CO => n23, S => n24);
   U19 : ADHALFDL port map( A => n49, B => n41, CO => n25, S => n26);
   U20 : ADFULD1 port map( A => n50, B => n54, CI => n31, CO => n27, S => n28);
   U21 : ADHALFDL port map( A => n42, B => n46, CO => n29, S => n30);
   U22 : ADHALFDL port map( A => n51, B => n55, CO => n31, S => n32);
   U60 : INVD1 port map( A => a(0), Z => n92);
   U61 : INVD1 port map( A => a(1), Z => n93);
   U62 : INVD1 port map( A => a(2), Z => n94);
   U63 : INVD1 port map( A => a(3), Z => n95);
   U64 : INVD1 port map( A => n1, Z => product(9));
   U65 : INVD1 port map( A => b(1), Z => n98);
   U66 : INVD1 port map( A => b(0), Z => n99);
   U67 : INVD1 port map( A => b(2), Z => n97);
   U68 : INVD1 port map( A => b(3), Z => n96);
   U69 : NOR2D1 port map( A1 => n92, A2 => n99, Z => product(0));
   U70 : NOR2D1 port map( A1 => n92, A2 => n98, Z => n56);
   U71 : NOR2D1 port map( A1 => n92, A2 => n97, Z => n55);
   U72 : NOR2D1 port map( A1 => n92, A2 => n96, Z => n54);
   U73 : NAN2D1 port map( A1 => b(4), A2 => a(0), Z => n53);
   U74 : NOR2D1 port map( A1 => n99, A2 => n93, Z => n52);
   U75 : NOR2D1 port map( A1 => n98, A2 => n93, Z => n51);
   U76 : NOR2D1 port map( A1 => n97, A2 => n93, Z => n50);
   U77 : NOR2D1 port map( A1 => n96, A2 => n93, Z => n49);
   U78 : NAN2D1 port map( A1 => a(1), A2 => b(4), Z => n48);
   U79 : NOR2D1 port map( A1 => n99, A2 => n94, Z => n47);
   U80 : NOR2D1 port map( A1 => n98, A2 => n94, Z => n46);
   U81 : NOR2D1 port map( A1 => n97, A2 => n94, Z => n45);
   U82 : NAN2D1 port map( A1 => a(2), A2 => b(4), Z => n43);
   U83 : NOR2D1 port map( A1 => n99, A2 => n95, Z => n42);
   U84 : NOR2D1 port map( A1 => n98, A2 => n95, Z => n41);
   U85 : NOR2D1 port map( A1 => n96, A2 => n95, Z => n39);
   U86 : NAN2D1 port map( A1 => a(3), A2 => b(4), Z => n38);
   U87 : NAN2D1 port map( A1 => a(4), A2 => b(0), Z => n37);
   U88 : NAN2D1 port map( A1 => a(4), A2 => b(1), Z => n36);
   U89 : NAN2D1 port map( A1 => a(4), A2 => b(2), Z => n35);
   U90 : NAN2D1 port map( A1 => a(4), A2 => b(3), Z => n34);
   U91 : AND2D1 port map( A1 => b(4), A2 => a(4), Z => n33);
   U92 : EXNOR2D1 port map( A1 => n100, A2 => n101, Z => n20);
   U93 : NAN2D1 port map( A1 => n101, A2 => n100, Z => n19);
   U94 : NAN2D1 port map( A1 => a(3), A2 => b(2), Z => n100);
   U95 : NAN2D1 port map( A1 => a(2), A2 => b(3), Z => n101);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of demodulator_DW01_sub_0_DW01_sub_15 is

   component NOR2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port
      , carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1, n2, n3, n4,
      n5, n6, n7, n8, n9, n10, n11, n_1004 : std_logic;

begin
   
   U2_10 : ADFULD1 port map( A => A(10), B => n1, CI => carry_10_port, CO => 
                           n_1004, S => DIFF(10));
   U2_9 : ADFULD1 port map( A => A(9), B => n1, CI => carry_9_port, CO => 
                           carry_10_port, S => DIFF(9));
   U2_8 : ADFULD1 port map( A => A(8), B => n2, CI => carry_8_port, CO => 
                           carry_9_port, S => DIFF(8));
   U2_7 : ADFULD1 port map( A => A(7), B => n3, CI => carry_7_port, CO => 
                           carry_8_port, S => DIFF(7));
   U2_6 : ADFULD1 port map( A => A(6), B => n4, CI => carry_6_port, CO => 
                           carry_7_port, S => DIFF(6));
   U2_5 : ADFULD1 port map( A => A(5), B => n5, CI => carry_5_port, CO => 
                           carry_6_port, S => DIFF(5));
   U2_4 : ADFULD1 port map( A => A(4), B => n6, CI => carry_4_port, CO => 
                           carry_5_port, S => DIFF(4));
   U2_3 : ADFULD1 port map( A => A(3), B => n7, CI => carry_3_port, CO => 
                           carry_4_port, S => DIFF(3));
   U2_2 : ADFULD1 port map( A => A(2), B => n8, CI => carry_2_port, CO => 
                           carry_3_port, S => DIFF(2));
   U1 : INVD1 port map( A => B(3), Z => n7);
   U2 : INVD1 port map( A => B(5), Z => n5);
   U3 : INVD1 port map( A => B(6), Z => n4);
   U4 : INVD1 port map( A => B(2), Z => n8);
   U5 : INVD1 port map( A => B(4), Z => n6);
   U6 : INVD1 port map( A => B(7), Z => n3);
   U7 : INVD1 port map( A => A(1), Z => n9);
   U8 : INVD1 port map( A => B(8), Z => n2);
   U9 : INVD1 port map( A => B(10), Z => n1);
   U10 : OAI22D1 port map( A1 => n10, A2 => n9, B1 => B(1), B2 => n11, Z => 
                           carry_2_port);
   U11 : AND2D1 port map( A1 => n10, A2 => n9, Z => n11);
   U12 : NOR2M1D1 port map( A1 => B(0), A2 => A(0), Z => n10);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_22_DW01_add_48 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1 : std_logic;

begin
   
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1_12 : EXOR3D1 port map( A1 => A(12), A2 => B(12), A3 => carry_12_port, Z 
                           => SUM(12));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_21_DW01_add_47 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, 
      SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, SUM_4_port, 
      SUM_3_port, SUM_2_port, SUM_1_port, carry_14_port, carry_13_port, 
      carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, n1 
      : std_logic;

begin
   SUM <= ( SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, 
      SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, SUM_4_port, 
      SUM_3_port, SUM_2_port, SUM_1_port, B(0) );
   
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM_6_port);
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM_5_port);
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM_4_port);
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM_3_port);
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => n1, CO => carry_3_port,
                           S => SUM_2_port);
   U1_14 : EXOR3D1 port map( A1 => A(14), A2 => B(14), A3 => carry_14_port, Z 
                           => SUM_14_port);
   U1 : AND2D1 port map( A1 => B(1), A2 => A(1), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(1), A2 => A(1), Z => SUM_1_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_20_DW01_add_46 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_22_port, SUM_21_port, SUM_20_port, SUM_19_port, SUM_18_port, 
      SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, SUM_13_port, 
      SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port
      , SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, carry_22_port, 
      carry_21_port, carry_20_port, carry_19_port, carry_18_port, carry_17_port
      , carry_16_port, carry_15_port, carry_14_port, carry_13_port, 
      carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, n1, n_1015, n_1017 : std_logic;

begin
   SUM <= ( SUM_22_port, SUM_21_port, SUM_20_port, SUM_19_port, SUM_18_port, 
      SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, SUM_13_port, 
      SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port
      , SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, B(2), B(1), n_1015 );
   
   U1_22 : ADFULD1 port map( A => A(22), B => B(22), CI => carry_22_port, CO =>
                           n_1017, S => SUM_22_port);
   U1_21 : ADFULD1 port map( A => A(21), B => B(21), CI => carry_21_port, CO =>
                           carry_22_port, S => SUM_21_port);
   U1_20 : ADFULD1 port map( A => A(20), B => B(20), CI => carry_20_port, CO =>
                           carry_21_port, S => SUM_20_port);
   U1_19 : ADFULD1 port map( A => A(19), B => B(19), CI => carry_19_port, CO =>
                           carry_20_port, S => SUM_19_port);
   U1_18 : ADFULD1 port map( A => A(18), B => B(18), CI => carry_18_port, CO =>
                           carry_19_port, S => SUM_18_port);
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           carry_18_port, S => SUM_17_port);
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM_16_port);
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM_15_port);
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM_14_port);
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM_6_port);
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM_5_port);
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => n1, CO => carry_5_port,
                           S => SUM_4_port);
   U1 : AND2D1 port map( A1 => B(3), A2 => A(3), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(3), A2 => A(3), Z => SUM_3_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_19_DW01_add_45 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_20_port, SUM_19_port, SUM_18_port, SUM_17_port, SUM_16_port, 
      SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, 
      SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, 
      SUM_4_port, SUM_3_port, carry_20_port, carry_19_port, carry_18_port, 
      carry_17_port, carry_16_port, carry_15_port, carry_14_port, carry_13_port
      , carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port
      , carry_7_port, carry_6_port, carry_5_port, n1, n_1024, n_1025, n_1027 : 
      std_logic;

begin
   SUM <= ( SUM_20_port, SUM_19_port, SUM_18_port, SUM_17_port, SUM_16_port, 
      SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, 
      SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, 
      SUM_4_port, SUM_3_port, A(2), n_1024, n_1025 );
   
   U1_20 : ADFULD1 port map( A => A(20), B => B(20), CI => carry_20_port, CO =>
                           n_1027, S => SUM_20_port);
   U1_19 : ADFULD1 port map( A => A(19), B => B(19), CI => carry_19_port, CO =>
                           carry_20_port, S => SUM_19_port);
   U1_18 : ADFULD1 port map( A => A(18), B => B(18), CI => carry_18_port, CO =>
                           carry_19_port, S => SUM_18_port);
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           carry_18_port, S => SUM_17_port);
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM_16_port);
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM_15_port);
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM_14_port);
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM_6_port);
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM_5_port);
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => n1, CO => carry_5_port,
                           S => SUM_4_port);
   U1 : AND2D1 port map( A1 => B(3), A2 => A(3), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(3), A2 => A(3), Z => SUM_3_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_18_DW01_add_44 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_22_port, SUM_21_port, SUM_20_port, SUM_19_port, SUM_18_port, 
      SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, SUM_13_port, 
      SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port
      , SUM_6_port, SUM_5_port, SUM_4_port, carry_22_port, carry_21_port, 
      carry_20_port, carry_19_port, carry_18_port, carry_17_port, carry_16_port
      , carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, n1, n_1034, n_1036 : std_logic;

begin
   SUM <= ( SUM_22_port, SUM_21_port, SUM_20_port, SUM_19_port, SUM_18_port, 
      SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, SUM_13_port, 
      SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port
      , SUM_6_port, SUM_5_port, SUM_4_port, B(3), B(2), B(1), n_1034 );
   
   U1_22 : ADFULD1 port map( A => A(22), B => B(22), CI => carry_22_port, CO =>
                           n_1036, S => SUM_22_port);
   U1_21 : ADFULD1 port map( A => A(21), B => B(21), CI => carry_21_port, CO =>
                           carry_22_port, S => SUM_21_port);
   U1_20 : ADFULD1 port map( A => A(20), B => B(20), CI => carry_20_port, CO =>
                           carry_21_port, S => SUM_20_port);
   U1_19 : ADFULD1 port map( A => A(19), B => B(19), CI => carry_19_port, CO =>
                           carry_20_port, S => SUM_19_port);
   U1_18 : ADFULD1 port map( A => A(18), B => B(18), CI => carry_18_port, CO =>
                           carry_19_port, S => SUM_18_port);
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           carry_18_port, S => SUM_17_port);
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM_16_port);
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM_15_port);
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM_14_port);
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM_6_port);
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => n1, CO => carry_6_port,
                           S => SUM_5_port);
   U1 : AND2D1 port map( A1 => B(4), A2 => A(4), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(4), A2 => A(4), Z => SUM_4_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_17_DW01_add_43 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_23_port, carry_22_port, carry_21_port, carry_20_port, 
      carry_19_port, carry_18_port, carry_17_port, carry_16_port, carry_15_port
      , carry_14_port, carry_13_port, carry_12_port, carry_11_port, 
      carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port, 
      carry_5_port, carry_4_port, carry_3_port, n1, n_1042 : std_logic;

begin
   
   U1_23 : ADFULD1 port map( A => A(23), B => B(23), CI => carry_23_port, CO =>
                           n_1042, S => SUM(23));
   U1_22 : ADFULD1 port map( A => A(22), B => B(22), CI => carry_22_port, CO =>
                           carry_23_port, S => SUM(22));
   U1_21 : ADFULD1 port map( A => A(21), B => B(21), CI => carry_21_port, CO =>
                           carry_22_port, S => SUM(21));
   U1_20 : ADFULD1 port map( A => A(20), B => B(20), CI => carry_20_port, CO =>
                           carry_21_port, S => SUM(20));
   U1_19 : ADFULD1 port map( A => A(19), B => B(19), CI => carry_19_port, CO =>
                           carry_20_port, S => SUM(19));
   U1_18 : ADFULD1 port map( A => A(18), B => B(18), CI => carry_18_port, CO =>
                           carry_19_port, S => SUM(18));
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           carry_18_port, S => SUM(17));
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM(16));
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM(15));
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM(14));
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM(13));
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => n1, CO => carry_3_port,
                           S => SUM(2));
   U1 : AND2D1 port map( A1 => B(1), A2 => A(1), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(1), A2 => A(1), Z => SUM(1));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_6_DW01_sub_14 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal DIFF_23_port, DIFF_22_port, DIFF_21_port, DIFF_20_port, DIFF_19_port,
      DIFF_18_port, DIFF_17_port, DIFF_16_port, DIFF_15_port, DIFF_14_port, 
      DIFF_13_port, DIFF_12_port, DIFF_11_port, DIFF_10_port, DIFF_9_port, 
      DIFF_8_port, DIFF_7_port, DIFF_6_port, DIFF_5_port, DIFF_4_port, 
      DIFF_3_port, DIFF_2_port, DIFF_1_port, carry_23_port, carry_22_port, 
      carry_21_port, carry_20_port, carry_19_port, carry_18_port, carry_17_port
      , carry_16_port, carry_15_port, carry_14_port, carry_13_port, 
      carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, n1,
      n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n_1047
      : std_logic;

begin
   DIFF <= ( DIFF_23_port, DIFF_22_port, DIFF_21_port, DIFF_20_port, 
      DIFF_19_port, DIFF_18_port, DIFF_17_port, DIFF_16_port, DIFF_15_port, 
      DIFF_14_port, DIFF_13_port, DIFF_12_port, DIFF_11_port, DIFF_10_port, 
      DIFF_9_port, DIFF_8_port, DIFF_7_port, DIFF_6_port, DIFF_5_port, 
      DIFF_4_port, DIFF_3_port, DIFF_2_port, DIFF_1_port, B(0) );
   
   U2_23 : ADFULD1 port map( A => A(23), B => n2, CI => carry_23_port, CO => 
                           n_1047, S => DIFF_23_port);
   U2_22 : ADFULD1 port map( A => A(22), B => n2, CI => carry_22_port, CO => 
                           carry_23_port, S => DIFF_22_port);
   U2_21 : ADFULD1 port map( A => A(21), B => n2, CI => carry_21_port, CO => 
                           carry_22_port, S => DIFF_21_port);
   U2_20 : ADFULD1 port map( A => A(20), B => n2, CI => carry_20_port, CO => 
                           carry_21_port, S => DIFF_20_port);
   U2_19 : ADFULD1 port map( A => A(19), B => n2, CI => carry_19_port, CO => 
                           carry_20_port, S => DIFF_19_port);
   U2_18 : ADFULD1 port map( A => A(18), B => n2, CI => carry_18_port, CO => 
                           carry_19_port, S => DIFF_18_port);
   U2_17 : ADFULD1 port map( A => A(17), B => n2, CI => carry_17_port, CO => 
                           carry_18_port, S => DIFF_17_port);
   U2_16 : ADFULD1 port map( A => A(16), B => n2, CI => carry_16_port, CO => 
                           carry_17_port, S => DIFF_16_port);
   U2_15 : ADFULD1 port map( A => A(15), B => n2, CI => carry_15_port, CO => 
                           carry_16_port, S => DIFF_15_port);
   U2_14 : ADFULD1 port map( A => A(14), B => n2, CI => carry_14_port, CO => 
                           carry_15_port, S => DIFF_14_port);
   U2_13 : ADFULD1 port map( A => A(13), B => n3, CI => carry_13_port, CO => 
                           carry_14_port, S => DIFF_13_port);
   U2_12 : ADFULD1 port map( A => A(12), B => n4, CI => carry_12_port, CO => 
                           carry_13_port, S => DIFF_12_port);
   U2_11 : ADFULD1 port map( A => A(11), B => n5, CI => carry_11_port, CO => 
                           carry_12_port, S => DIFF_11_port);
   U2_10 : ADFULD1 port map( A => A(10), B => n6, CI => carry_10_port, CO => 
                           carry_11_port, S => DIFF_10_port);
   U2_9 : ADFULD1 port map( A => A(9), B => n7, CI => carry_9_port, CO => 
                           carry_10_port, S => DIFF_9_port);
   U2_8 : ADFULD1 port map( A => A(8), B => n8, CI => carry_8_port, CO => 
                           carry_9_port, S => DIFF_8_port);
   U2_7 : ADFULD1 port map( A => A(7), B => n9, CI => carry_7_port, CO => 
                           carry_8_port, S => DIFF_7_port);
   U2_6 : ADFULD1 port map( A => A(6), B => n10, CI => carry_6_port, CO => 
                           carry_7_port, S => DIFF_6_port);
   U2_5 : ADFULD1 port map( A => A(5), B => n11, CI => carry_5_port, CO => 
                           carry_6_port, S => DIFF_5_port);
   U2_4 : ADFULD1 port map( A => A(4), B => n12, CI => carry_4_port, CO => 
                           carry_5_port, S => DIFF_4_port);
   U2_3 : ADFULD1 port map( A => A(3), B => n13, CI => carry_3_port, CO => 
                           carry_4_port, S => DIFF_3_port);
   U2_2 : ADFULD1 port map( A => A(2), B => n14, CI => n1, CO => carry_3_port, 
                           S => DIFF_2_port);
   U1 : AND2D1 port map( A1 => n15, A2 => n16, Z => n1);
   U2 : INVD1 port map( A => B(4), Z => n12);
   U3 : INVD1 port map( A => B(5), Z => n11);
   U4 : INVD1 port map( A => B(6), Z => n10);
   U5 : INVD1 port map( A => B(7), Z => n9);
   U6 : INVD1 port map( A => B(8), Z => n8);
   U7 : INVD1 port map( A => B(9), Z => n7);
   U8 : INVD1 port map( A => B(10), Z => n6);
   U9 : INVD1 port map( A => B(11), Z => n5);
   U10 : INVD1 port map( A => B(12), Z => n4);
   U11 : INVD1 port map( A => B(13), Z => n3);
   U12 : INVD1 port map( A => B(23), Z => n2);
   U13 : INVD1 port map( A => B(0), Z => n16);
   U14 : INVD1 port map( A => B(3), Z => n13);
   U15 : INVD1 port map( A => B(1), Z => n15);
   U16 : INVD1 port map( A => B(2), Z => n14);
   U17 : EXOR2D1 port map( A1 => n15, A2 => n16, Z => DIFF_1_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_16_DW01_add_42 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_23_port, SUM_22_port, SUM_21_port, SUM_20_port, SUM_19_port, 
      SUM_18_port, SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, 
      SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, 
      SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, 
      SUM_2_port, SUM_1_port, carry_23_port, carry_22_port, carry_21_port, 
      carry_20_port, carry_19_port, carry_18_port, carry_17_port, carry_16_port
      , carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, n1, n_1051 : 
      std_logic;

begin
   SUM <= ( SUM_23_port, SUM_22_port, SUM_21_port, SUM_20_port, SUM_19_port, 
      SUM_18_port, SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, 
      SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, 
      SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, 
      SUM_2_port, SUM_1_port, A(0) );
   
   U1_23 : ADFULD1 port map( A => A(23), B => B(23), CI => carry_23_port, CO =>
                           n_1051, S => SUM_23_port);
   U1_22 : ADFULD1 port map( A => A(22), B => B(22), CI => carry_22_port, CO =>
                           carry_23_port, S => SUM_22_port);
   U1_21 : ADFULD1 port map( A => A(21), B => B(21), CI => carry_21_port, CO =>
                           carry_22_port, S => SUM_21_port);
   U1_20 : ADFULD1 port map( A => A(20), B => B(20), CI => carry_20_port, CO =>
                           carry_21_port, S => SUM_20_port);
   U1_19 : ADFULD1 port map( A => A(19), B => B(19), CI => carry_19_port, CO =>
                           carry_20_port, S => SUM_19_port);
   U1_18 : ADFULD1 port map( A => A(18), B => B(18), CI => carry_18_port, CO =>
                           carry_19_port, S => SUM_18_port);
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           carry_18_port, S => SUM_17_port);
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM_16_port);
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM_15_port);
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM_14_port);
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM_6_port);
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM_5_port);
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM_4_port);
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM_3_port);
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => n1, CO => carry_3_port,
                           S => SUM_2_port);
   U1 : AND2D1 port map( A1 => B(1), A2 => A(1), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(1), A2 => A(1), Z => SUM_1_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_5_DW01_sub_13 is

   component NOR2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22M20D1
      port( B1, B2, A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_23_port, carry_22_port, carry_21_port, carry_20_port, 
      carry_19_port, carry_18_port, carry_17_port, carry_16_port, carry_15_port
      , carry_14_port, carry_13_port, carry_12_port, n1, n2, n3, n4, n5, n6, n7
      , n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22
      , n23, n24, n25, n26, n27, n28, n29, n_1066 : std_logic;

begin
   
   U2_23 : ADFULD1 port map( A => A(23), B => n1, CI => carry_23_port, CO => 
                           n_1066, S => DIFF(23));
   U2_22 : ADFULD1 port map( A => A(22), B => n1, CI => carry_22_port, CO => 
                           carry_23_port, S => DIFF(22));
   U2_21 : ADFULD1 port map( A => A(21), B => n1, CI => carry_21_port, CO => 
                           carry_22_port, S => DIFF(21));
   U2_20 : ADFULD1 port map( A => A(20), B => n1, CI => carry_20_port, CO => 
                           carry_21_port, S => DIFF(20));
   U2_19 : ADFULD1 port map( A => A(19), B => n1, CI => carry_19_port, CO => 
                           carry_20_port, S => DIFF(19));
   U2_18 : ADFULD1 port map( A => A(18), B => n1, CI => carry_18_port, CO => 
                           carry_19_port, S => DIFF(18));
   U2_17 : ADFULD1 port map( A => A(17), B => n1, CI => carry_17_port, CO => 
                           carry_18_port, S => DIFF(17));
   U2_16 : ADFULD1 port map( A => A(16), B => n1, CI => carry_16_port, CO => 
                           carry_17_port, S => DIFF(16));
   U2_15 : ADFULD1 port map( A => A(15), B => n1, CI => carry_15_port, CO => 
                           carry_16_port, S => DIFF(15));
   U2_14 : ADFULD1 port map( A => A(14), B => n1, CI => carry_14_port, CO => 
                           carry_15_port, S => DIFF(14));
   U2_13 : ADFULD1 port map( A => A(13), B => n1, CI => carry_13_port, CO => 
                           carry_14_port, S => DIFF(13));
   U2_12 : ADFULD1 port map( A => A(12), B => n1, CI => carry_12_port, CO => 
                           carry_13_port, S => DIFF(12));
   U1 : INVD1 port map( A => A(11), Z => n2);
   U2 : INVD1 port map( A => A(1), Z => n7);
   U3 : INVD1 port map( A => A(3), Z => n6);
   U4 : INVD1 port map( A => A(5), Z => n5);
   U5 : INVD1 port map( A => A(7), Z => n4);
   U6 : INVD1 port map( A => A(9), Z => n3);
   U7 : INVD1 port map( A => B(23), Z => n1);
   U8 : OAI22D1 port map( A1 => n8, A2 => n2, B1 => B(11), B2 => n9, Z => 
                           carry_12_port);
   U9 : AND2D1 port map( A1 => n8, A2 => n2, Z => n9);
   U10 : AOI22M20D1 port map( B1 => n10, B2 => A(10), A1 => B(10), A2 => n11, Z
                           => n8);
   U11 : NOR2D1 port map( A1 => A(10), A2 => n10, Z => n11);
   U12 : OAI22D1 port map( A1 => n12, A2 => n3, B1 => B(9), B2 => n13, Z => n10
                           );
   U13 : AND2D1 port map( A1 => n12, A2 => n3, Z => n13);
   U14 : AOI22M20D1 port map( B1 => n14, B2 => A(8), A1 => B(8), A2 => n15, Z 
                           => n12);
   U15 : NOR2D1 port map( A1 => A(8), A2 => n14, Z => n15);
   U16 : OAI22D1 port map( A1 => n16, A2 => n4, B1 => B(7), B2 => n17, Z => n14
                           );
   U17 : AND2D1 port map( A1 => n16, A2 => n4, Z => n17);
   U18 : AOI22M20D1 port map( B1 => n18, B2 => A(6), A1 => B(6), A2 => n19, Z 
                           => n16);
   U19 : NOR2D1 port map( A1 => A(6), A2 => n18, Z => n19);
   U20 : OAI22D1 port map( A1 => n20, A2 => n5, B1 => B(5), B2 => n21, Z => n18
                           );
   U21 : AND2D1 port map( A1 => n20, A2 => n5, Z => n21);
   U22 : AOI22M20D1 port map( B1 => n22, B2 => A(4), A1 => B(4), A2 => n23, Z 
                           => n20);
   U23 : NOR2D1 port map( A1 => A(4), A2 => n22, Z => n23);
   U24 : OAI22D1 port map( A1 => n24, A2 => n6, B1 => B(3), B2 => n25, Z => n22
                           );
   U25 : AND2D1 port map( A1 => n24, A2 => n6, Z => n25);
   U26 : AOI22M20D1 port map( B1 => n26, B2 => A(2), A1 => B(2), A2 => n27, Z 
                           => n24);
   U27 : NOR2D1 port map( A1 => A(2), A2 => n26, Z => n27);
   U28 : OAI22D1 port map( A1 => n28, A2 => n7, B1 => B(1), B2 => n29, Z => n26
                           );
   U29 : AND2D1 port map( A1 => n28, A2 => n7, Z => n29);
   U30 : NOR2M1D1 port map( A1 => B(0), A2 => A(0), Z => n28);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_22_DW01_add_41 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1 : std_logic;

begin
   
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1_12 : EXOR3D1 port map( A1 => A(12), A2 => B(12), A3 => carry_12_port, Z 
                           => SUM(12));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_21_DW01_add_40 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, 
      SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, SUM_4_port, 
      SUM_3_port, SUM_2_port, SUM_1_port, carry_14_port, carry_13_port, 
      carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, n1 
      : std_logic;

begin
   SUM <= ( SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, 
      SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, SUM_4_port, 
      SUM_3_port, SUM_2_port, SUM_1_port, B(0) );
   
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM_6_port);
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM_5_port);
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM_4_port);
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM_3_port);
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => n1, CO => carry_3_port,
                           S => SUM_2_port);
   U1_14 : EXOR3D1 port map( A1 => A(14), A2 => B(14), A3 => carry_14_port, Z 
                           => SUM_14_port);
   U1 : AND2D1 port map( A1 => B(1), A2 => A(1), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(1), A2 => A(1), Z => SUM_1_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_20_DW01_add_39 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_22_port, SUM_21_port, SUM_20_port, SUM_19_port, SUM_18_port, 
      SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, SUM_13_port, 
      SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port
      , SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, carry_22_port, 
      carry_21_port, carry_20_port, carry_19_port, carry_18_port, carry_17_port
      , carry_16_port, carry_15_port, carry_14_port, carry_13_port, 
      carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, n1, n_1077, n_1079 : std_logic;

begin
   SUM <= ( SUM_22_port, SUM_21_port, SUM_20_port, SUM_19_port, SUM_18_port, 
      SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, SUM_13_port, 
      SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port
      , SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, B(2), B(1), n_1077 );
   
   U1_22 : ADFULD1 port map( A => A(22), B => B(22), CI => carry_22_port, CO =>
                           n_1079, S => SUM_22_port);
   U1_21 : ADFULD1 port map( A => A(21), B => B(21), CI => carry_21_port, CO =>
                           carry_22_port, S => SUM_21_port);
   U1_20 : ADFULD1 port map( A => A(20), B => B(20), CI => carry_20_port, CO =>
                           carry_21_port, S => SUM_20_port);
   U1_19 : ADFULD1 port map( A => A(19), B => B(19), CI => carry_19_port, CO =>
                           carry_20_port, S => SUM_19_port);
   U1_18 : ADFULD1 port map( A => A(18), B => B(18), CI => carry_18_port, CO =>
                           carry_19_port, S => SUM_18_port);
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           carry_18_port, S => SUM_17_port);
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM_16_port);
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM_15_port);
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM_14_port);
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM_6_port);
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM_5_port);
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => n1, CO => carry_5_port,
                           S => SUM_4_port);
   U1 : AND2D1 port map( A1 => B(3), A2 => A(3), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(3), A2 => A(3), Z => SUM_3_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_19_DW01_add_38 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_20_port, SUM_19_port, SUM_18_port, SUM_17_port, SUM_16_port, 
      SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, 
      SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, 
      SUM_4_port, SUM_3_port, carry_20_port, carry_19_port, carry_18_port, 
      carry_17_port, carry_16_port, carry_15_port, carry_14_port, carry_13_port
      , carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port
      , carry_7_port, carry_6_port, carry_5_port, n1, n_1086, n_1087, n_1089 : 
      std_logic;

begin
   SUM <= ( SUM_20_port, SUM_19_port, SUM_18_port, SUM_17_port, SUM_16_port, 
      SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, 
      SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, 
      SUM_4_port, SUM_3_port, A(2), n_1086, n_1087 );
   
   U1_20 : ADFULD1 port map( A => A(20), B => B(20), CI => carry_20_port, CO =>
                           n_1089, S => SUM_20_port);
   U1_19 : ADFULD1 port map( A => A(19), B => B(19), CI => carry_19_port, CO =>
                           carry_20_port, S => SUM_19_port);
   U1_18 : ADFULD1 port map( A => A(18), B => B(18), CI => carry_18_port, CO =>
                           carry_19_port, S => SUM_18_port);
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           carry_18_port, S => SUM_17_port);
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM_16_port);
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM_15_port);
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM_14_port);
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM_6_port);
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM_5_port);
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => n1, CO => carry_5_port,
                           S => SUM_4_port);
   U1 : AND2D1 port map( A1 => B(3), A2 => A(3), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(3), A2 => A(3), Z => SUM_3_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_18_DW01_add_37 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_22_port, SUM_21_port, SUM_20_port, SUM_19_port, SUM_18_port, 
      SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, SUM_13_port, 
      SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port
      , SUM_6_port, SUM_5_port, SUM_4_port, carry_22_port, carry_21_port, 
      carry_20_port, carry_19_port, carry_18_port, carry_17_port, carry_16_port
      , carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, n1, n_1096, n_1098 : std_logic;

begin
   SUM <= ( SUM_22_port, SUM_21_port, SUM_20_port, SUM_19_port, SUM_18_port, 
      SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, SUM_13_port, 
      SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port
      , SUM_6_port, SUM_5_port, SUM_4_port, B(3), B(2), B(1), n_1096 );
   
   U1_22 : ADFULD1 port map( A => A(22), B => B(22), CI => carry_22_port, CO =>
                           n_1098, S => SUM_22_port);
   U1_21 : ADFULD1 port map( A => A(21), B => B(21), CI => carry_21_port, CO =>
                           carry_22_port, S => SUM_21_port);
   U1_20 : ADFULD1 port map( A => A(20), B => B(20), CI => carry_20_port, CO =>
                           carry_21_port, S => SUM_20_port);
   U1_19 : ADFULD1 port map( A => A(19), B => B(19), CI => carry_19_port, CO =>
                           carry_20_port, S => SUM_19_port);
   U1_18 : ADFULD1 port map( A => A(18), B => B(18), CI => carry_18_port, CO =>
                           carry_19_port, S => SUM_18_port);
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           carry_18_port, S => SUM_17_port);
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM_16_port);
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM_15_port);
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM_14_port);
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM_6_port);
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => n1, CO => carry_6_port,
                           S => SUM_5_port);
   U1 : AND2D1 port map( A1 => B(4), A2 => A(4), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(4), A2 => A(4), Z => SUM_4_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_17_DW01_add_36 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_23_port, carry_22_port, carry_21_port, carry_20_port, 
      carry_19_port, carry_18_port, carry_17_port, carry_16_port, carry_15_port
      , carry_14_port, carry_13_port, carry_12_port, carry_11_port, 
      carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port, 
      carry_5_port, carry_4_port, carry_3_port, n1, n_1104 : std_logic;

begin
   
   U1_23 : ADFULD1 port map( A => A(23), B => B(23), CI => carry_23_port, CO =>
                           n_1104, S => SUM(23));
   U1_22 : ADFULD1 port map( A => A(22), B => B(22), CI => carry_22_port, CO =>
                           carry_23_port, S => SUM(22));
   U1_21 : ADFULD1 port map( A => A(21), B => B(21), CI => carry_21_port, CO =>
                           carry_22_port, S => SUM(21));
   U1_20 : ADFULD1 port map( A => A(20), B => B(20), CI => carry_20_port, CO =>
                           carry_21_port, S => SUM(20));
   U1_19 : ADFULD1 port map( A => A(19), B => B(19), CI => carry_19_port, CO =>
                           carry_20_port, S => SUM(19));
   U1_18 : ADFULD1 port map( A => A(18), B => B(18), CI => carry_18_port, CO =>
                           carry_19_port, S => SUM(18));
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           carry_18_port, S => SUM(17));
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM(16));
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM(15));
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM(14));
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM(13));
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => n1, CO => carry_3_port,
                           S => SUM(2));
   U1 : AND2D1 port map( A1 => B(1), A2 => A(1), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(1), A2 => A(1), Z => SUM(1));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_6_DW01_sub_12 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal DIFF_23_port, DIFF_22_port, DIFF_21_port, DIFF_20_port, DIFF_19_port,
      DIFF_18_port, DIFF_17_port, DIFF_16_port, DIFF_15_port, DIFF_14_port, 
      DIFF_13_port, DIFF_12_port, DIFF_11_port, DIFF_10_port, DIFF_9_port, 
      DIFF_8_port, DIFF_7_port, DIFF_6_port, DIFF_5_port, DIFF_4_port, 
      DIFF_3_port, DIFF_2_port, DIFF_1_port, carry_23_port, carry_22_port, 
      carry_21_port, carry_20_port, carry_19_port, carry_18_port, carry_17_port
      , carry_16_port, carry_15_port, carry_14_port, carry_13_port, 
      carry_12_port, carry_11_port, carry_10_port, carry_9_port, carry_8_port, 
      carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port, n1,
      n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n_1109
      : std_logic;

begin
   DIFF <= ( DIFF_23_port, DIFF_22_port, DIFF_21_port, DIFF_20_port, 
      DIFF_19_port, DIFF_18_port, DIFF_17_port, DIFF_16_port, DIFF_15_port, 
      DIFF_14_port, DIFF_13_port, DIFF_12_port, DIFF_11_port, DIFF_10_port, 
      DIFF_9_port, DIFF_8_port, DIFF_7_port, DIFF_6_port, DIFF_5_port, 
      DIFF_4_port, DIFF_3_port, DIFF_2_port, DIFF_1_port, B(0) );
   
   U2_23 : ADFULD1 port map( A => A(23), B => n2, CI => carry_23_port, CO => 
                           n_1109, S => DIFF_23_port);
   U2_22 : ADFULD1 port map( A => A(22), B => n2, CI => carry_22_port, CO => 
                           carry_23_port, S => DIFF_22_port);
   U2_21 : ADFULD1 port map( A => A(21), B => n2, CI => carry_21_port, CO => 
                           carry_22_port, S => DIFF_21_port);
   U2_20 : ADFULD1 port map( A => A(20), B => n2, CI => carry_20_port, CO => 
                           carry_21_port, S => DIFF_20_port);
   U2_19 : ADFULD1 port map( A => A(19), B => n2, CI => carry_19_port, CO => 
                           carry_20_port, S => DIFF_19_port);
   U2_18 : ADFULD1 port map( A => A(18), B => n2, CI => carry_18_port, CO => 
                           carry_19_port, S => DIFF_18_port);
   U2_17 : ADFULD1 port map( A => A(17), B => n2, CI => carry_17_port, CO => 
                           carry_18_port, S => DIFF_17_port);
   U2_16 : ADFULD1 port map( A => A(16), B => n2, CI => carry_16_port, CO => 
                           carry_17_port, S => DIFF_16_port);
   U2_15 : ADFULD1 port map( A => A(15), B => n2, CI => carry_15_port, CO => 
                           carry_16_port, S => DIFF_15_port);
   U2_14 : ADFULD1 port map( A => A(14), B => n2, CI => carry_14_port, CO => 
                           carry_15_port, S => DIFF_14_port);
   U2_13 : ADFULD1 port map( A => A(13), B => n3, CI => carry_13_port, CO => 
                           carry_14_port, S => DIFF_13_port);
   U2_12 : ADFULD1 port map( A => A(12), B => n4, CI => carry_12_port, CO => 
                           carry_13_port, S => DIFF_12_port);
   U2_11 : ADFULD1 port map( A => A(11), B => n5, CI => carry_11_port, CO => 
                           carry_12_port, S => DIFF_11_port);
   U2_10 : ADFULD1 port map( A => A(10), B => n6, CI => carry_10_port, CO => 
                           carry_11_port, S => DIFF_10_port);
   U2_9 : ADFULD1 port map( A => A(9), B => n7, CI => carry_9_port, CO => 
                           carry_10_port, S => DIFF_9_port);
   U2_8 : ADFULD1 port map( A => A(8), B => n8, CI => carry_8_port, CO => 
                           carry_9_port, S => DIFF_8_port);
   U2_7 : ADFULD1 port map( A => A(7), B => n9, CI => carry_7_port, CO => 
                           carry_8_port, S => DIFF_7_port);
   U2_6 : ADFULD1 port map( A => A(6), B => n10, CI => carry_6_port, CO => 
                           carry_7_port, S => DIFF_6_port);
   U2_5 : ADFULD1 port map( A => A(5), B => n11, CI => carry_5_port, CO => 
                           carry_6_port, S => DIFF_5_port);
   U2_4 : ADFULD1 port map( A => A(4), B => n12, CI => carry_4_port, CO => 
                           carry_5_port, S => DIFF_4_port);
   U2_3 : ADFULD1 port map( A => A(3), B => n13, CI => carry_3_port, CO => 
                           carry_4_port, S => DIFF_3_port);
   U2_2 : ADFULD1 port map( A => A(2), B => n14, CI => n1, CO => carry_3_port, 
                           S => DIFF_2_port);
   U1 : AND2D1 port map( A1 => n15, A2 => n16, Z => n1);
   U2 : INVD1 port map( A => B(4), Z => n12);
   U3 : INVD1 port map( A => B(5), Z => n11);
   U4 : INVD1 port map( A => B(6), Z => n10);
   U5 : INVD1 port map( A => B(7), Z => n9);
   U6 : INVD1 port map( A => B(8), Z => n8);
   U7 : INVD1 port map( A => B(9), Z => n7);
   U8 : INVD1 port map( A => B(10), Z => n6);
   U9 : INVD1 port map( A => B(11), Z => n5);
   U10 : INVD1 port map( A => B(12), Z => n4);
   U11 : INVD1 port map( A => B(13), Z => n3);
   U12 : INVD1 port map( A => B(23), Z => n2);
   U13 : INVD1 port map( A => B(0), Z => n16);
   U14 : INVD1 port map( A => B(3), Z => n13);
   U15 : INVD1 port map( A => B(1), Z => n15);
   U16 : INVD1 port map( A => B(2), Z => n14);
   U17 : EXOR2D1 port map( A1 => n15, A2 => n16, Z => DIFF_1_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_16_DW01_add_35 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_23_port, SUM_22_port, SUM_21_port, SUM_20_port, SUM_19_port, 
      SUM_18_port, SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, 
      SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, 
      SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, 
      SUM_2_port, SUM_1_port, carry_23_port, carry_22_port, carry_21_port, 
      carry_20_port, carry_19_port, carry_18_port, carry_17_port, carry_16_port
      , carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, n1, n_1113 : 
      std_logic;

begin
   SUM <= ( SUM_23_port, SUM_22_port, SUM_21_port, SUM_20_port, SUM_19_port, 
      SUM_18_port, SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, 
      SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, 
      SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, 
      SUM_2_port, SUM_1_port, A(0) );
   
   U1_23 : ADFULD1 port map( A => A(23), B => B(23), CI => carry_23_port, CO =>
                           n_1113, S => SUM_23_port);
   U1_22 : ADFULD1 port map( A => A(22), B => B(22), CI => carry_22_port, CO =>
                           carry_23_port, S => SUM_22_port);
   U1_21 : ADFULD1 port map( A => A(21), B => B(21), CI => carry_21_port, CO =>
                           carry_22_port, S => SUM_21_port);
   U1_20 : ADFULD1 port map( A => A(20), B => B(20), CI => carry_20_port, CO =>
                           carry_21_port, S => SUM_20_port);
   U1_19 : ADFULD1 port map( A => A(19), B => B(19), CI => carry_19_port, CO =>
                           carry_20_port, S => SUM_19_port);
   U1_18 : ADFULD1 port map( A => A(18), B => B(18), CI => carry_18_port, CO =>
                           carry_19_port, S => SUM_18_port);
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           carry_18_port, S => SUM_17_port);
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM_16_port);
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM_15_port);
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM_14_port);
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM_6_port);
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM_5_port);
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM_4_port);
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM_3_port);
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => n1, CO => carry_3_port,
                           S => SUM_2_port);
   U1 : AND2D1 port map( A1 => B(1), A2 => A(1), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(1), A2 => A(1), Z => SUM_1_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_5_DW01_sub_11 is

   component NOR2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22M20D1
      port( B1, B2, A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_23_port, carry_22_port, carry_21_port, carry_20_port, 
      carry_19_port, carry_18_port, carry_17_port, carry_16_port, carry_15_port
      , carry_14_port, carry_13_port, carry_12_port, n1, n2, n3, n4, n5, n6, n7
      , n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22
      , n23, n24, n25, n26, n27, n28, n29, n_1128 : std_logic;

begin
   
   U2_23 : ADFULD1 port map( A => A(23), B => n1, CI => carry_23_port, CO => 
                           n_1128, S => DIFF(23));
   U2_22 : ADFULD1 port map( A => A(22), B => n1, CI => carry_22_port, CO => 
                           carry_23_port, S => DIFF(22));
   U2_21 : ADFULD1 port map( A => A(21), B => n1, CI => carry_21_port, CO => 
                           carry_22_port, S => DIFF(21));
   U2_20 : ADFULD1 port map( A => A(20), B => n1, CI => carry_20_port, CO => 
                           carry_21_port, S => DIFF(20));
   U2_19 : ADFULD1 port map( A => A(19), B => n1, CI => carry_19_port, CO => 
                           carry_20_port, S => DIFF(19));
   U2_18 : ADFULD1 port map( A => A(18), B => n1, CI => carry_18_port, CO => 
                           carry_19_port, S => DIFF(18));
   U2_17 : ADFULD1 port map( A => A(17), B => n1, CI => carry_17_port, CO => 
                           carry_18_port, S => DIFF(17));
   U2_16 : ADFULD1 port map( A => A(16), B => n1, CI => carry_16_port, CO => 
                           carry_17_port, S => DIFF(16));
   U2_15 : ADFULD1 port map( A => A(15), B => n1, CI => carry_15_port, CO => 
                           carry_16_port, S => DIFF(15));
   U2_14 : ADFULD1 port map( A => A(14), B => n1, CI => carry_14_port, CO => 
                           carry_15_port, S => DIFF(14));
   U2_13 : ADFULD1 port map( A => A(13), B => n1, CI => carry_13_port, CO => 
                           carry_14_port, S => DIFF(13));
   U2_12 : ADFULD1 port map( A => A(12), B => n1, CI => carry_12_port, CO => 
                           carry_13_port, S => DIFF(12));
   U1 : INVD1 port map( A => A(11), Z => n2);
   U2 : INVD1 port map( A => A(1), Z => n7);
   U3 : INVD1 port map( A => A(3), Z => n6);
   U4 : INVD1 port map( A => A(5), Z => n5);
   U5 : INVD1 port map( A => A(7), Z => n4);
   U6 : INVD1 port map( A => A(9), Z => n3);
   U7 : INVD1 port map( A => B(23), Z => n1);
   U8 : OAI22D1 port map( A1 => n8, A2 => n2, B1 => B(11), B2 => n9, Z => 
                           carry_12_port);
   U9 : AND2D1 port map( A1 => n8, A2 => n2, Z => n9);
   U10 : AOI22M20D1 port map( B1 => n10, B2 => A(10), A1 => B(10), A2 => n11, Z
                           => n8);
   U11 : NOR2D1 port map( A1 => A(10), A2 => n10, Z => n11);
   U12 : OAI22D1 port map( A1 => n12, A2 => n3, B1 => B(9), B2 => n13, Z => n10
                           );
   U13 : AND2D1 port map( A1 => n12, A2 => n3, Z => n13);
   U14 : AOI22M20D1 port map( B1 => n14, B2 => A(8), A1 => B(8), A2 => n15, Z 
                           => n12);
   U15 : NOR2D1 port map( A1 => A(8), A2 => n14, Z => n15);
   U16 : OAI22D1 port map( A1 => n16, A2 => n4, B1 => B(7), B2 => n17, Z => n14
                           );
   U17 : AND2D1 port map( A1 => n16, A2 => n4, Z => n17);
   U18 : AOI22M20D1 port map( B1 => n18, B2 => A(6), A1 => B(6), A2 => n19, Z 
                           => n16);
   U19 : NOR2D1 port map( A1 => A(6), A2 => n18, Z => n19);
   U20 : OAI22D1 port map( A1 => n20, A2 => n5, B1 => B(5), B2 => n21, Z => n18
                           );
   U21 : AND2D1 port map( A1 => n20, A2 => n5, Z => n21);
   U22 : AOI22M20D1 port map( B1 => n22, B2 => A(4), A1 => B(4), A2 => n23, Z 
                           => n20);
   U23 : NOR2D1 port map( A1 => A(4), A2 => n22, Z => n23);
   U24 : OAI22D1 port map( A1 => n24, A2 => n6, B1 => B(3), B2 => n25, Z => n22
                           );
   U25 : AND2D1 port map( A1 => n24, A2 => n6, Z => n25);
   U26 : AOI22M20D1 port map( B1 => n26, B2 => A(2), A1 => B(2), A2 => n27, Z 
                           => n24);
   U27 : NOR2D1 port map( A1 => A(2), A2 => n26, Z => n27);
   U28 : OAI22D1 port map( A1 => n28, A2 => n7, B1 => B(1), B2 => n29, Z => n26
                           );
   U29 : AND2D1 port map( A1 => n28, A2 => n7, Z => n29);
   U30 : NOR2M1D1 port map( A1 => B(0), A2 => A(0), Z => n28);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_15_DW01_add_34 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_19_port, SUM_18_port, SUM_17_port, SUM_16_port, SUM_15_port, 
      SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, 
      SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, carry_19_port, 
      carry_18_port, carry_17_port, carry_16_port, carry_15_port, carry_14_port
      , carry_13_port, carry_12_port, carry_11_port, carry_10_port, 
      carry_9_port, carry_8_port, n1, n_1139, n_1140, n_1141, n_1143 : 
      std_logic;

begin
   SUM <= ( SUM_19_port, SUM_18_port, SUM_17_port, SUM_16_port, SUM_15_port, 
      SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, 
      SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, B(5), B(4), B(3), n_1139,
      n_1140, n_1141 );
   
   U1_19 : ADFULD1 port map( A => A(19), B => B(19), CI => carry_19_port, CO =>
                           n_1143, S => SUM_19_port);
   U1_18 : ADFULD1 port map( A => A(18), B => B(18), CI => carry_18_port, CO =>
                           carry_19_port, S => SUM_18_port);
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           carry_18_port, S => SUM_17_port);
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM_16_port);
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM_15_port);
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM_14_port);
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => n1, CO => carry_8_port,
                           S => SUM_7_port);
   U1 : AND2D1 port map( A1 => B(6), A2 => A(6), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(6), A2 => A(6), Z => SUM_6_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_15_DW01_add_33 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_19_port, SUM_18_port, SUM_17_port, SUM_16_port, SUM_15_port, 
      SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, 
      SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, carry_19_port, 
      carry_18_port, carry_17_port, carry_16_port, carry_15_port, carry_14_port
      , carry_13_port, carry_12_port, carry_11_port, carry_10_port, 
      carry_9_port, carry_8_port, n1, n_1154, n_1155, n_1156, n_1158 : 
      std_logic;

begin
   SUM <= ( SUM_19_port, SUM_18_port, SUM_17_port, SUM_16_port, SUM_15_port, 
      SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, 
      SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, B(5), B(4), B(3), n_1154,
      n_1155, n_1156 );
   
   U1_19 : ADFULD1 port map( A => A(19), B => B(19), CI => carry_19_port, CO =>
                           n_1158, S => SUM_19_port);
   U1_18 : ADFULD1 port map( A => A(18), B => B(18), CI => carry_18_port, CO =>
                           carry_19_port, S => SUM_18_port);
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           carry_18_port, S => SUM_17_port);
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM_16_port);
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM_15_port);
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM_14_port);
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => n1, CO => carry_8_port,
                           S => SUM_7_port);
   U1 : AND2D1 port map( A1 => B(6), A2 => A(6), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(6), A2 => A(6), Z => SUM_6_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_14_DW01_add_32 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1161 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1161, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_3_DW01_sub_8 is

   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal DIFF_15_port, DIFF_14_port, DIFF_13_port, DIFF_12_port, DIFF_11_port,
      DIFF_10_port, DIFF_9_port, DIFF_8_port, DIFF_7_port, DIFF_6_port, 
      DIFF_5_port, DIFF_4_port, DIFF_3_port, DIFF_2_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
      n12, n13, n14, n_1166 : std_logic;

begin
   DIFF <= ( DIFF_15_port, DIFF_14_port, DIFF_13_port, DIFF_12_port, 
      DIFF_11_port, DIFF_10_port, DIFF_9_port, DIFF_8_port, DIFF_7_port, 
      DIFF_6_port, DIFF_5_port, DIFF_4_port, DIFF_3_port, DIFF_2_port, A(1), 
      A(0) );
   
   U2_15 : ADFULD1 port map( A => A(15), B => n2, CI => carry_15_port, CO => 
                           n_1166, S => DIFF_15_port);
   U2_14 : ADFULD1 port map( A => A(14), B => n2, CI => carry_14_port, CO => 
                           carry_15_port, S => DIFF_14_port);
   U2_13 : ADFULD1 port map( A => A(13), B => n3, CI => carry_13_port, CO => 
                           carry_14_port, S => DIFF_13_port);
   U2_12 : ADFULD1 port map( A => A(12), B => n4, CI => carry_12_port, CO => 
                           carry_13_port, S => DIFF_12_port);
   U2_11 : ADFULD1 port map( A => A(11), B => n5, CI => carry_11_port, CO => 
                           carry_12_port, S => DIFF_11_port);
   U2_10 : ADFULD1 port map( A => A(10), B => n6, CI => carry_10_port, CO => 
                           carry_11_port, S => DIFF_10_port);
   U2_9 : ADFULD1 port map( A => A(9), B => n7, CI => carry_9_port, CO => 
                           carry_10_port, S => DIFF_9_port);
   U2_8 : ADFULD1 port map( A => A(8), B => n8, CI => carry_8_port, CO => 
                           carry_9_port, S => DIFF_8_port);
   U2_7 : ADFULD1 port map( A => A(7), B => n9, CI => carry_7_port, CO => 
                           carry_8_port, S => DIFF_7_port);
   U2_6 : ADFULD1 port map( A => A(6), B => n10, CI => carry_6_port, CO => 
                           carry_7_port, S => DIFF_6_port);
   U2_5 : ADFULD1 port map( A => A(5), B => n11, CI => carry_5_port, CO => 
                           carry_6_port, S => DIFF_5_port);
   U2_4 : ADFULD1 port map( A => A(4), B => n12, CI => carry_4_port, CO => 
                           carry_5_port, S => DIFF_4_port);
   U2_3 : ADFULD1 port map( A => A(3), B => n13, CI => carry_3_port, CO => 
                           carry_4_port, S => DIFF_3_port);
   U1 : INVD1 port map( A => B(12), Z => n4);
   U2 : INVD1 port map( A => B(13), Z => n3);
   U3 : INVD1 port map( A => B(3), Z => n13);
   U4 : NAN2D1 port map( A1 => B(2), A2 => n1, Z => carry_3_port);
   U5 : INVD1 port map( A => B(4), Z => n12);
   U6 : INVD1 port map( A => B(5), Z => n11);
   U7 : INVD1 port map( A => B(6), Z => n10);
   U8 : INVD1 port map( A => B(7), Z => n9);
   U9 : INVD1 port map( A => B(8), Z => n8);
   U10 : INVD1 port map( A => B(9), Z => n7);
   U11 : INVD1 port map( A => B(10), Z => n6);
   U12 : INVD1 port map( A => B(11), Z => n5);
   U13 : INVD1 port map( A => A(2), Z => n1);
   U14 : INVD1 port map( A => B(14), Z => n2);
   U15 : INVD1 port map( A => B(2), Z => n14);
   U16 : EXNOR2D1 port map( A1 => n14, A2 => A(2), Z => DIFF_2_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_12_DW01_add_30 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, SUM_13_port, 
      SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port
      , SUM_6_port, SUM_5_port, carry_17_port, carry_16_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, n1, n_1176, n_1177, n_1178, 
      n_1180 : std_logic;

begin
   SUM <= ( SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, SUM_13_port, 
      SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port
      , SUM_6_port, SUM_5_port, A(4), A(3), n_1176, n_1177, n_1178 );
   
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           n_1180, S => SUM_17_port);
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM_16_port);
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM_15_port);
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM_14_port);
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => n1, CO => carry_7_port,
                           S => SUM_6_port);
   U1 : AND2D1 port map( A1 => B(5), A2 => A(5), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(5), A2 => A(5), Z => SUM_5_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_2_DW01_sub_7 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal DIFF_18_port, DIFF_17_port, DIFF_16_port, DIFF_15_port, DIFF_14_port,
      DIFF_13_port, DIFF_12_port, DIFF_11_port, DIFF_10_port, DIFF_9_port, 
      DIFF_8_port, DIFF_7_port, DIFF_6_port, DIFF_5_port, DIFF_4_port, 
      DIFF_3_port, DIFF_2_port, DIFF_1_port, carry_18_port, carry_17_port, 
      carry_16_port, carry_15_port, carry_14_port, carry_13_port, carry_12_port
      , carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port,
      carry_6_port, carry_5_port, carry_4_port, n1, n2, n3, n4, n5, n6, n7, n8,
      n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n_1186 : 
      std_logic;

begin
   DIFF <= ( DIFF_18_port, DIFF_17_port, DIFF_16_port, DIFF_15_port, 
      DIFF_14_port, DIFF_13_port, DIFF_12_port, DIFF_11_port, DIFF_10_port, 
      DIFF_9_port, DIFF_8_port, DIFF_7_port, DIFF_6_port, DIFF_5_port, 
      DIFF_4_port, DIFF_3_port, DIFF_2_port, DIFF_1_port, B(0) );
   
   U2_18 : ADFULD1 port map( A => A(18), B => n3, CI => carry_18_port, CO => 
                           n_1186, S => DIFF_18_port);
   U2_17 : ADFULD1 port map( A => A(17), B => n3, CI => carry_17_port, CO => 
                           carry_18_port, S => DIFF_17_port);
   U2_16 : ADFULD1 port map( A => A(16), B => n4, CI => carry_16_port, CO => 
                           carry_17_port, S => DIFF_16_port);
   U2_15 : ADFULD1 port map( A => A(15), B => n5, CI => carry_15_port, CO => 
                           carry_16_port, S => DIFF_15_port);
   U2_14 : ADFULD1 port map( A => A(14), B => n6, CI => carry_14_port, CO => 
                           carry_15_port, S => DIFF_14_port);
   U2_13 : ADFULD1 port map( A => A(13), B => n7, CI => carry_13_port, CO => 
                           carry_14_port, S => DIFF_13_port);
   U2_12 : ADFULD1 port map( A => A(12), B => n8, CI => carry_12_port, CO => 
                           carry_13_port, S => DIFF_12_port);
   U2_11 : ADFULD1 port map( A => A(11), B => n9, CI => carry_11_port, CO => 
                           carry_12_port, S => DIFF_11_port);
   U2_10 : ADFULD1 port map( A => A(10), B => n10, CI => carry_10_port, CO => 
                           carry_11_port, S => DIFF_10_port);
   U2_9 : ADFULD1 port map( A => A(9), B => n11, CI => carry_9_port, CO => 
                           carry_10_port, S => DIFF_9_port);
   U2_8 : ADFULD1 port map( A => A(8), B => n12, CI => carry_8_port, CO => 
                           carry_9_port, S => DIFF_8_port);
   U2_7 : ADFULD1 port map( A => A(7), B => n13, CI => carry_7_port, CO => 
                           carry_8_port, S => DIFF_7_port);
   U2_6 : ADFULD1 port map( A => A(6), B => n14, CI => carry_6_port, CO => 
                           carry_7_port, S => DIFF_6_port);
   U2_5 : ADFULD1 port map( A => A(5), B => n15, CI => carry_5_port, CO => 
                           carry_6_port, S => DIFF_5_port);
   U2_4 : ADFULD1 port map( A => A(4), B => n16, CI => carry_4_port, CO => 
                           carry_5_port, S => DIFF_4_port);
   U2_3 : ADFULD1 port map( A => A(3), B => n17, CI => n1, CO => carry_4_port, 
                           S => DIFF_3_port);
   U1 : AND2D1 port map( A1 => n18, A2 => n2, Z => n1);
   U2 : INVD1 port map( A => B(4), Z => n16);
   U3 : INVD1 port map( A => B(6), Z => n14);
   U4 : INVD1 port map( A => B(7), Z => n13);
   U5 : INVD1 port map( A => B(8), Z => n12);
   U6 : INVD1 port map( A => B(9), Z => n11);
   U7 : INVD1 port map( A => B(10), Z => n10);
   U8 : INVD1 port map( A => B(11), Z => n9);
   U9 : INVD1 port map( A => B(12), Z => n8);
   U10 : INVD1 port map( A => B(13), Z => n7);
   U11 : INVD1 port map( A => B(14), Z => n6);
   U12 : INVD1 port map( A => B(15), Z => n5);
   U13 : INVD1 port map( A => B(16), Z => n4);
   U14 : INVD1 port map( A => B(18), Z => n3);
   U15 : INVD1 port map( A => B(2), Z => n18);
   U16 : AND2D1 port map( A1 => n19, A2 => n20, Z => n2);
   U17 : INVD1 port map( A => B(3), Z => n17);
   U18 : INVD1 port map( A => B(5), Z => n15);
   U19 : INVD1 port map( A => B(0), Z => n20);
   U20 : INVD1 port map( A => B(1), Z => n19);
   U21 : EXOR2D1 port map( A1 => n18, A2 => n2, Z => DIFF_2_port);
   U22 : EXOR2D1 port map( A1 => n19, A2 => n20, Z => DIFF_1_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_14_DW01_add_29 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1189 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1189, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_3_DW01_sub_6 is

   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal DIFF_15_port, DIFF_14_port, DIFF_13_port, DIFF_12_port, DIFF_11_port,
      DIFF_10_port, DIFF_9_port, DIFF_8_port, DIFF_7_port, DIFF_6_port, 
      DIFF_5_port, DIFF_4_port, DIFF_3_port, DIFF_2_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
      n12, n13, n14, n_1194 : std_logic;

begin
   DIFF <= ( DIFF_15_port, DIFF_14_port, DIFF_13_port, DIFF_12_port, 
      DIFF_11_port, DIFF_10_port, DIFF_9_port, DIFF_8_port, DIFF_7_port, 
      DIFF_6_port, DIFF_5_port, DIFF_4_port, DIFF_3_port, DIFF_2_port, A(1), 
      A(0) );
   
   U2_15 : ADFULD1 port map( A => A(15), B => n2, CI => carry_15_port, CO => 
                           n_1194, S => DIFF_15_port);
   U2_14 : ADFULD1 port map( A => A(14), B => n2, CI => carry_14_port, CO => 
                           carry_15_port, S => DIFF_14_port);
   U2_13 : ADFULD1 port map( A => A(13), B => n3, CI => carry_13_port, CO => 
                           carry_14_port, S => DIFF_13_port);
   U2_12 : ADFULD1 port map( A => A(12), B => n4, CI => carry_12_port, CO => 
                           carry_13_port, S => DIFF_12_port);
   U2_11 : ADFULD1 port map( A => A(11), B => n5, CI => carry_11_port, CO => 
                           carry_12_port, S => DIFF_11_port);
   U2_10 : ADFULD1 port map( A => A(10), B => n6, CI => carry_10_port, CO => 
                           carry_11_port, S => DIFF_10_port);
   U2_9 : ADFULD1 port map( A => A(9), B => n7, CI => carry_9_port, CO => 
                           carry_10_port, S => DIFF_9_port);
   U2_8 : ADFULD1 port map( A => A(8), B => n8, CI => carry_8_port, CO => 
                           carry_9_port, S => DIFF_8_port);
   U2_7 : ADFULD1 port map( A => A(7), B => n9, CI => carry_7_port, CO => 
                           carry_8_port, S => DIFF_7_port);
   U2_6 : ADFULD1 port map( A => A(6), B => n10, CI => carry_6_port, CO => 
                           carry_7_port, S => DIFF_6_port);
   U2_5 : ADFULD1 port map( A => A(5), B => n11, CI => carry_5_port, CO => 
                           carry_6_port, S => DIFF_5_port);
   U2_4 : ADFULD1 port map( A => A(4), B => n12, CI => carry_4_port, CO => 
                           carry_5_port, S => DIFF_4_port);
   U2_3 : ADFULD1 port map( A => A(3), B => n13, CI => carry_3_port, CO => 
                           carry_4_port, S => DIFF_3_port);
   U1 : INVD1 port map( A => B(12), Z => n4);
   U2 : INVD1 port map( A => B(13), Z => n3);
   U3 : INVD1 port map( A => B(3), Z => n13);
   U4 : NAN2D1 port map( A1 => B(2), A2 => n1, Z => carry_3_port);
   U5 : INVD1 port map( A => B(4), Z => n12);
   U6 : INVD1 port map( A => B(5), Z => n11);
   U7 : INVD1 port map( A => B(6), Z => n10);
   U8 : INVD1 port map( A => B(7), Z => n9);
   U9 : INVD1 port map( A => B(8), Z => n8);
   U10 : INVD1 port map( A => B(9), Z => n7);
   U11 : INVD1 port map( A => B(10), Z => n6);
   U12 : INVD1 port map( A => B(11), Z => n5);
   U13 : INVD1 port map( A => A(2), Z => n1);
   U14 : INVD1 port map( A => B(14), Z => n2);
   U15 : INVD1 port map( A => B(2), Z => n14);
   U16 : EXNOR2D1 port map( A1 => n14, A2 => A(2), Z => DIFF_2_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_12_DW01_add_27 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, SUM_13_port, 
      SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port
      , SUM_6_port, SUM_5_port, carry_17_port, carry_16_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, n1, n_1204, n_1205, n_1206, 
      n_1208 : std_logic;

begin
   SUM <= ( SUM_17_port, SUM_16_port, SUM_15_port, SUM_14_port, SUM_13_port, 
      SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port
      , SUM_6_port, SUM_5_port, A(4), A(3), n_1204, n_1205, n_1206 );
   
   U1_17 : ADFULD1 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           n_1208, S => SUM_17_port);
   U1_16 : ADFULD1 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM_16_port);
   U1_15 : ADFULD1 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM_15_port);
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM_14_port);
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM_13_port);
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM_12_port);
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM_11_port);
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM_10_port);
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => n1, CO => carry_7_port,
                           S => SUM_6_port);
   U1 : AND2D1 port map( A1 => B(5), A2 => A(5), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(5), A2 => A(5), Z => SUM_5_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_2_DW01_sub_5 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal DIFF_18_port, DIFF_17_port, DIFF_16_port, DIFF_15_port, DIFF_14_port,
      DIFF_13_port, DIFF_12_port, DIFF_11_port, DIFF_10_port, DIFF_9_port, 
      DIFF_8_port, DIFF_7_port, DIFF_6_port, DIFF_5_port, DIFF_4_port, 
      DIFF_3_port, DIFF_2_port, DIFF_1_port, carry_18_port, carry_17_port, 
      carry_16_port, carry_15_port, carry_14_port, carry_13_port, carry_12_port
      , carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port,
      carry_6_port, carry_5_port, carry_4_port, n1, n2, n3, n4, n5, n6, n7, n8,
      n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n_1214 : 
      std_logic;

begin
   DIFF <= ( DIFF_18_port, DIFF_17_port, DIFF_16_port, DIFF_15_port, 
      DIFF_14_port, DIFF_13_port, DIFF_12_port, DIFF_11_port, DIFF_10_port, 
      DIFF_9_port, DIFF_8_port, DIFF_7_port, DIFF_6_port, DIFF_5_port, 
      DIFF_4_port, DIFF_3_port, DIFF_2_port, DIFF_1_port, B(0) );
   
   U2_18 : ADFULD1 port map( A => A(18), B => n3, CI => carry_18_port, CO => 
                           n_1214, S => DIFF_18_port);
   U2_17 : ADFULD1 port map( A => A(17), B => n3, CI => carry_17_port, CO => 
                           carry_18_port, S => DIFF_17_port);
   U2_16 : ADFULD1 port map( A => A(16), B => n4, CI => carry_16_port, CO => 
                           carry_17_port, S => DIFF_16_port);
   U2_15 : ADFULD1 port map( A => A(15), B => n5, CI => carry_15_port, CO => 
                           carry_16_port, S => DIFF_15_port);
   U2_14 : ADFULD1 port map( A => A(14), B => n6, CI => carry_14_port, CO => 
                           carry_15_port, S => DIFF_14_port);
   U2_13 : ADFULD1 port map( A => A(13), B => n7, CI => carry_13_port, CO => 
                           carry_14_port, S => DIFF_13_port);
   U2_12 : ADFULD1 port map( A => A(12), B => n8, CI => carry_12_port, CO => 
                           carry_13_port, S => DIFF_12_port);
   U2_11 : ADFULD1 port map( A => A(11), B => n9, CI => carry_11_port, CO => 
                           carry_12_port, S => DIFF_11_port);
   U2_10 : ADFULD1 port map( A => A(10), B => n10, CI => carry_10_port, CO => 
                           carry_11_port, S => DIFF_10_port);
   U2_9 : ADFULD1 port map( A => A(9), B => n11, CI => carry_9_port, CO => 
                           carry_10_port, S => DIFF_9_port);
   U2_8 : ADFULD1 port map( A => A(8), B => n12, CI => carry_8_port, CO => 
                           carry_9_port, S => DIFF_8_port);
   U2_7 : ADFULD1 port map( A => A(7), B => n13, CI => carry_7_port, CO => 
                           carry_8_port, S => DIFF_7_port);
   U2_6 : ADFULD1 port map( A => A(6), B => n14, CI => carry_6_port, CO => 
                           carry_7_port, S => DIFF_6_port);
   U2_5 : ADFULD1 port map( A => A(5), B => n15, CI => carry_5_port, CO => 
                           carry_6_port, S => DIFF_5_port);
   U2_4 : ADFULD1 port map( A => A(4), B => n16, CI => carry_4_port, CO => 
                           carry_5_port, S => DIFF_4_port);
   U2_3 : ADFULD1 port map( A => A(3), B => n17, CI => n1, CO => carry_4_port, 
                           S => DIFF_3_port);
   U1 : AND2D1 port map( A1 => n18, A2 => n2, Z => n1);
   U2 : INVD1 port map( A => B(4), Z => n16);
   U3 : INVD1 port map( A => B(6), Z => n14);
   U4 : INVD1 port map( A => B(7), Z => n13);
   U5 : INVD1 port map( A => B(8), Z => n12);
   U6 : INVD1 port map( A => B(9), Z => n11);
   U7 : INVD1 port map( A => B(10), Z => n10);
   U8 : INVD1 port map( A => B(11), Z => n9);
   U9 : INVD1 port map( A => B(12), Z => n8);
   U10 : INVD1 port map( A => B(13), Z => n7);
   U11 : INVD1 port map( A => B(14), Z => n6);
   U12 : INVD1 port map( A => B(15), Z => n5);
   U13 : INVD1 port map( A => B(16), Z => n4);
   U14 : INVD1 port map( A => B(18), Z => n3);
   U15 : INVD1 port map( A => B(2), Z => n18);
   U16 : AND2D1 port map( A1 => n19, A2 => n20, Z => n2);
   U17 : INVD1 port map( A => B(3), Z => n17);
   U18 : INVD1 port map( A => B(5), Z => n15);
   U19 : INVD1 port map( A => B(0), Z => n20);
   U20 : INVD1 port map( A => B(1), Z => n19);
   U21 : EXOR2D1 port map( A1 => n18, A2 => n2, Z => DIFF_2_port);
   U22 : EXOR2D1 port map( A1 => n19, A2 => n20, Z => DIFF_1_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of slicer_DW01_add_2_DW01_add_26 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, n1, n_1217 : std_logic;

begin
   
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           n_1217, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of slicer_DW01_add_1_DW01_add_25 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, n1, n_1220 : std_logic;

begin
   
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           n_1220, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of slicer_DW01_add_0_DW01_add_24 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, n1, n_1223 : std_logic;

begin
   
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           n_1223, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of mixer_DW_mult_tc_1 is

   component OAI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI211D1
      port( A1, A2, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component ADHALFDL
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n18, n19, n20, 
      n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35
      , n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, 
      n50, n51, n52, n53, n113, n114, n115, n116, n117, n118, n119, n120, n121,
      n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, 
      n134, n135 : std_logic;

begin
   
   U3 : ADFULD1 port map( A => n18, B => b(10), CI => n3, CO => n2, S => 
                           product(16));
   U4 : ADFULD1 port map( A => n19, B => n20, CI => n4, CO => n3, S => 
                           product(15));
   U5 : ADFULD1 port map( A => n21, B => n22, CI => n5, CO => n4, S => 
                           product(14));
   U6 : ADFULD1 port map( A => n24, B => n23, CI => n6, CO => n5, S => 
                           product(13));
   U7 : ADFULD1 port map( A => n26, B => n25, CI => n7, CO => n6, S => 
                           product(12));
   U8 : ADFULD1 port map( A => n27, B => n30, CI => n8, CO => n7, S => 
                           product(11));
   U9 : ADFULD1 port map( A => n31, B => n34, CI => n9, CO => n8, S => 
                           product(10));
   U10 : ADFULD1 port map( A => n35, B => n38, CI => n10, CO => n9, S => 
                           product(9));
   U11 : ADFULD1 port map( A => n39, B => n42, CI => n11, CO => n10, S => 
                           product(8));
   U12 : ADFULD1 port map( A => n43, B => n46, CI => n12, CO => n11, S => 
                           product(7));
   U13 : ADFULD1 port map( A => n47, B => n50, CI => n13, CO => n12, S => 
                           product(6));
   U19 : ADFULD1 port map( A => n115, B => n113, CI => n114, CO => n18, S => 
                           n19);
   U20 : ADFULD1 port map( A => n116, B => b(8), CI => b(10), CO => n20, S => 
                           n21);
   U21 : ADFULD1 port map( A => n113, B => b(7), CI => b(9), CO => n22, S => 
                           n23);
   U22 : ADFULD1 port map( A => b(8), B => n117, CI => n28, CO => n24, S => n25
                           );
   U23 : ADFULD1 port map( A => n32, B => b(7), CI => n29, CO => n26, S => n27)
                           ;
   U24 : ADFULD1 port map( A => n118, B => b(11), CI => b(10), CO => n28, S => 
                           n29);
   U25 : ADFULD1 port map( A => n36, B => b(9), CI => n33, CO => n30, S => n31)
                           ;
   U26 : ADFULD1 port map( A => b(10), B => n120, CI => b(6), CO => n32, S => 
                           n33);
   U27 : ADFULD1 port map( A => n40, B => b(8), CI => n37, CO => n34, S => n35)
                           ;
   U28 : ADFULD1 port map( A => b(9), B => n123, CI => b(5), CO => n36, S => 
                           n37);
   U29 : ADFULD1 port map( A => n44, B => b(7), CI => n41, CO => n38, S => n39)
                           ;
   U30 : ADFULD1 port map( A => b(8), B => n124, CI => b(4), CO => n40, S => 
                           n41);
   U31 : ADFULD1 port map( A => n48, B => b(6), CI => n45, CO => n42, S => n43)
                           ;
   U32 : ADFULD1 port map( A => b(7), B => n125, CI => b(3), CO => n44, S => 
                           n45);
   U33 : ADFULD1 port map( A => b(2), B => b(5), CI => n49, CO => n46, S => n47
                           );
   U36 : ADFULD1 port map( A => b(1), B => b(5), CI => b(4), CO => n50, S => 
                           n51);
   U37 : ADHALFDL port map( A => b(3), B => b(4), CO => n52, S => n53);
   U58 : INVD1 port map( A => n52, Z => n121);
   U59 : INVD1 port map( A => n51, Z => n119);
   U60 : INVD1 port map( A => n53, Z => n122);
   U61 : INVD1 port map( A => b(2), Z => n124);
   U62 : INVD1 port map( A => b(1), Z => n125);
   U63 : INVD1 port map( A => b(0), Z => n126);
   U64 : INVD1 port map( A => b(6), Z => n117);
   U65 : INVD1 port map( A => b(3), Z => n123);
   U66 : INVD1 port map( A => b(4), Z => n120);
   U67 : INVD1 port map( A => b(5), Z => n118);
   U68 : INVD1 port map( A => b(11), Z => n113);
   U69 : INVD1 port map( A => b(7), Z => n116);
   U70 : INVD1 port map( A => b(9), Z => n114);
   U71 : INVD1 port map( A => b(8), Z => n115);
   U72 : EXNOR3D1 port map( A1 => n2, A2 => b(11), A3 => b(10), Z => 
                           product(17));
   U73 : EXNOR2D1 port map( A1 => n117, A2 => b(0), Z => n49);
   U74 : NAN2D1 port map( A1 => b(0), A2 => n117, Z => n48);
   U75 : OAI211D1 port map( A1 => n121, A2 => n119, B => n127, C => n128, Z => 
                           n13);
   U76 : NAN2D1 port map( A1 => n52, A2 => n129, Z => n128);
   U77 : NAN2D1 port map( A1 => n51, A2 => n129, Z => n127);
   U78 : OAI211D1 port map( A1 => n126, A2 => n122, B => n130, C => n131, Z => 
                           n129);
   U79 : NAN2D1 port map( A1 => b(0), A2 => n132, Z => n131);
   U80 : NAN2D1 port map( A1 => n53, A2 => n132, Z => n130);
   U81 : OAI211D1 port map( A1 => n124, A2 => n123, B => n133, C => n134, Z => 
                           n132);
   U82 : NAN2D1 port map( A1 => n135, A2 => b(2), Z => n134);
   U83 : NAN2D1 port map( A1 => n135, A2 => b(3), Z => n133);
   U84 : OAI22D1 port map( A1 => n125, A2 => n124, B1 => n125, B2 => n126, Z =>
                           n135);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of mixer_DW_mult_tc_0 is

   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI211D1
      port( A1, A2, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component ADHALFDL
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n15, n16, n17, n18, n19, 
      n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34
      , n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, 
      n49, n50, n51, n52, product_6_port, product_7_port, product_8_port, 
      product_9_port, product_10_port, product_11_port, product_12_port, 
      product_13_port, product_14_port, product_15_port, product_16_port, n94, 
      n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n_1245, n_1246, 
      n_1247, n_1248, n_1249, n_1250, n_1251 : std_logic;

begin
   product <= ( n_1245, b(11), product_16_port, product_15_port, 
      product_14_port, product_13_port, product_12_port, product_11_port, 
      product_10_port, product_9_port, product_8_port, product_7_port, 
      product_6_port, n_1246, n_1247, n_1248, n_1249, n_1250, n_1251 );
   
   U2 : ADFULD1 port map( A => b(10), B => b(11), CI => n2, CO => 
                           product_16_port, S => product_15_port);
   U3 : ADFULD1 port map( A => n15, B => b(9), CI => n3, CO => n2, S => 
                           product_14_port);
   U4 : ADFULD1 port map( A => n17, B => n16, CI => n4, CO => n3, S => 
                           product_13_port);
   U5 : ADFULD1 port map( A => n18, B => n21, CI => n5, CO => n4, S => 
                           product_12_port);
   U6 : ADFULD1 port map( A => n22, B => n25, CI => n6, CO => n5, S => 
                           product_11_port);
   U7 : ADFULD1 port map( A => n26, B => n29, CI => n7, CO => n6, S => 
                           product_10_port);
   U8 : ADFULD1 port map( A => n30, B => n33, CI => n8, CO => n7, S => 
                           product_9_port);
   U9 : ADFULD1 port map( A => n34, B => n37, CI => n9, CO => n8, S => 
                           product_8_port);
   U10 : ADFULD1 port map( A => n38, B => n41, CI => n10, CO => n9, S => 
                           product_7_port);
   U11 : ADFULD1 port map( A => n42, B => n45, CI => n11, CO => n10, S => 
                           product_6_port);
   U16 : ADFULD1 port map( A => b(8), B => b(10), CI => n19, CO => n15, S => 
                           n16);
   U17 : ADFULD1 port map( A => n23, B => b(7), CI => n20, CO => n17, S => n18)
                           ;
   U18 : ADFULD1 port map( A => b(10), B => b(11), CI => b(9), CO => n19, S => 
                           n20);
   U19 : ADFULD1 port map( A => n27, B => b(6), CI => n24, CO => n21, S => n22)
                           ;
   U20 : ADFULD1 port map( A => b(9), B => b(11), CI => b(8), CO => n23, S => 
                           n24);
   U21 : ADFULD1 port map( A => n31, B => b(10), CI => n28, CO => n25, S => n26
                           );
   U22 : ADFULD1 port map( A => b(5), B => b(7), CI => b(8), CO => n27, S => 
                           n28);
   U23 : ADFULD1 port map( A => n35, B => b(9), CI => n32, CO => n29, S => n30)
                           ;
   U24 : ADFULD1 port map( A => b(4), B => b(6), CI => b(7), CO => n31, S => 
                           n32);
   U25 : ADFULD1 port map( A => n39, B => b(8), CI => n36, CO => n33, S => n34)
                           ;
   U26 : ADFULD1 port map( A => b(3), B => b(5), CI => b(6), CO => n35, S => 
                           n36);
   U27 : ADFULD1 port map( A => n43, B => b(7), CI => n40, CO => n37, S => n38)
                           ;
   U28 : ADFULD1 port map( A => b(2), B => b(4), CI => b(5), CO => n39, S => 
                           n40);
   U29 : ADFULD1 port map( A => n47, B => b(6), CI => n44, CO => n41, S => n42)
                           ;
   U30 : ADFULD1 port map( A => b(1), B => b(3), CI => b(4), CO => n43, S => 
                           n44);
   U31 : ADFULD1 port map( A => b(3), B => b(5), CI => n48, CO => n45, S => n46
                           );
   U32 : ADHALFDL port map( A => b(0), B => b(2), CO => n47, S => n48);
   U33 : ADFULD1 port map( A => b(1), B => b(4), CI => b(2), CO => n49, S => 
                           n50);
   U34 : ADHALFDL port map( A => b(1), B => b(3), CO => n51, S => n52);
   U39 : INVD1 port map( A => n51, Z => n97);
   U40 : INVD1 port map( A => n50, Z => n96);
   U41 : INVD1 port map( A => n49, Z => n95);
   U42 : INVD1 port map( A => n46, Z => n94);
   U43 : OAI211D1 port map( A1 => n95, A2 => n94, B => n98, C => n99, Z => n11)
                           ;
   U44 : NAN2D1 port map( A1 => n49, A2 => n100, Z => n99);
   U45 : NAN2D1 port map( A1 => n46, A2 => n100, Z => n98);
   U46 : OAI211D1 port map( A1 => n97, A2 => n96, B => n101, C => n102, Z => 
                           n100);
   U47 : NAN2D1 port map( A1 => n51, A2 => n103, Z => n102);
   U48 : NAN2D1 port map( A1 => n50, A2 => n103, Z => n101);
   U49 : OAI21M20D1 port map( A1 => b(0), A2 => n47, B => n104, Z => n103);
   U50 : AOI22D1 port map( A1 => n52, A2 => b(0), B1 => n47, B2 => n52, Z => 
                           n104);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_11_DW01_add_23 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1254 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1254, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_10_DW01_add_22 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1257 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1257, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_9_DW01_add_21 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_13_port, carry_12_port, carry_11_port, carry_10_port, 
      carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1, n_1260 : std_logic;

begin
   
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           n_1260, S => SUM(13));
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_1_DW01_sub_4 is

   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal DIFF_16_port, DIFF_15_port, DIFF_14_port, DIFF_13_port, DIFF_12_port,
      DIFF_11_port, DIFF_10_port, DIFF_9_port, DIFF_8_port, DIFF_7_port, 
      DIFF_6_port, DIFF_5_port, DIFF_4_port, DIFF_3_port, DIFF_2_port, 
      carry_16_port, carry_15_port, carry_14_port, carry_13_port, carry_12_port
      , carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port,
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, n1, n2, n3, n4, 
      n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n_1265 : std_logic;

begin
   DIFF <= ( DIFF_16_port, DIFF_15_port, DIFF_14_port, DIFF_13_port, 
      DIFF_12_port, DIFF_11_port, DIFF_10_port, DIFF_9_port, DIFF_8_port, 
      DIFF_7_port, DIFF_6_port, DIFF_5_port, DIFF_4_port, DIFF_3_port, 
      DIFF_2_port, A(1), A(0) );
   
   U2_16 : ADFULD1 port map( A => A(16), B => n2, CI => carry_16_port, CO => 
                           n_1265, S => DIFF_16_port);
   U2_15 : ADFULD1 port map( A => A(15), B => n2, CI => carry_15_port, CO => 
                           carry_16_port, S => DIFF_15_port);
   U2_14 : ADFULD1 port map( A => A(14), B => n3, CI => carry_14_port, CO => 
                           carry_15_port, S => DIFF_14_port);
   U2_13 : ADFULD1 port map( A => A(13), B => n4, CI => carry_13_port, CO => 
                           carry_14_port, S => DIFF_13_port);
   U2_12 : ADFULD1 port map( A => A(12), B => n5, CI => carry_12_port, CO => 
                           carry_13_port, S => DIFF_12_port);
   U2_11 : ADFULD1 port map( A => A(11), B => n6, CI => carry_11_port, CO => 
                           carry_12_port, S => DIFF_11_port);
   U2_10 : ADFULD1 port map( A => A(10), B => n7, CI => carry_10_port, CO => 
                           carry_11_port, S => DIFF_10_port);
   U2_9 : ADFULD1 port map( A => A(9), B => n8, CI => carry_9_port, CO => 
                           carry_10_port, S => DIFF_9_port);
   U2_8 : ADFULD1 port map( A => A(8), B => n9, CI => carry_8_port, CO => 
                           carry_9_port, S => DIFF_8_port);
   U2_7 : ADFULD1 port map( A => A(7), B => n10, CI => carry_7_port, CO => 
                           carry_8_port, S => DIFF_7_port);
   U2_6 : ADFULD1 port map( A => A(6), B => n11, CI => carry_6_port, CO => 
                           carry_7_port, S => DIFF_6_port);
   U2_5 : ADFULD1 port map( A => A(5), B => n12, CI => carry_5_port, CO => 
                           carry_6_port, S => DIFF_5_port);
   U2_4 : ADFULD1 port map( A => A(4), B => n13, CI => carry_4_port, CO => 
                           carry_5_port, S => DIFF_4_port);
   U2_3 : ADFULD1 port map( A => A(3), B => n14, CI => carry_3_port, CO => 
                           carry_4_port, S => DIFF_3_port);
   U1 : INVD1 port map( A => B(13), Z => n4);
   U2 : INVD1 port map( A => B(14), Z => n3);
   U3 : INVD1 port map( A => B(3), Z => n14);
   U4 : NAN2D1 port map( A1 => B(2), A2 => n1, Z => carry_3_port);
   U5 : INVD1 port map( A => B(4), Z => n13);
   U6 : INVD1 port map( A => B(5), Z => n12);
   U7 : INVD1 port map( A => B(6), Z => n11);
   U8 : INVD1 port map( A => B(7), Z => n10);
   U9 : INVD1 port map( A => B(8), Z => n9);
   U10 : INVD1 port map( A => B(9), Z => n8);
   U11 : INVD1 port map( A => B(10), Z => n7);
   U12 : INVD1 port map( A => B(11), Z => n6);
   U13 : INVD1 port map( A => B(12), Z => n5);
   U14 : INVD1 port map( A => A(2), Z => n1);
   U15 : INVD1 port map( A => B(15), Z => n2);
   U16 : INVD1 port map( A => B(2), Z => n15);
   U17 : EXNOR2D1 port map( A1 => n15, A2 => A(2), Z => DIFF_2_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_11_DW01_add_20 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1268 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1268, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_10_DW01_add_19 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1271 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1271, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_9_DW01_add_18 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_13_port, carry_12_port, carry_11_port, carry_10_port, 
      carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1, n_1274 : std_logic;

begin
   
   U1_13 : ADFULD1 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           n_1274, S => SUM(13));
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_1_DW01_sub_3 is

   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal DIFF_16_port, DIFF_15_port, DIFF_14_port, DIFF_13_port, DIFF_12_port,
      DIFF_11_port, DIFF_10_port, DIFF_9_port, DIFF_8_port, DIFF_7_port, 
      DIFF_6_port, DIFF_5_port, DIFF_4_port, DIFF_3_port, DIFF_2_port, 
      carry_16_port, carry_15_port, carry_14_port, carry_13_port, carry_12_port
      , carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port,
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, n1, n2, n3, n4, 
      n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n_1279 : std_logic;

begin
   DIFF <= ( DIFF_16_port, DIFF_15_port, DIFF_14_port, DIFF_13_port, 
      DIFF_12_port, DIFF_11_port, DIFF_10_port, DIFF_9_port, DIFF_8_port, 
      DIFF_7_port, DIFF_6_port, DIFF_5_port, DIFF_4_port, DIFF_3_port, 
      DIFF_2_port, A(1), A(0) );
   
   U2_16 : ADFULD1 port map( A => A(16), B => n2, CI => carry_16_port, CO => 
                           n_1279, S => DIFF_16_port);
   U2_15 : ADFULD1 port map( A => A(15), B => n2, CI => carry_15_port, CO => 
                           carry_16_port, S => DIFF_15_port);
   U2_14 : ADFULD1 port map( A => A(14), B => n3, CI => carry_14_port, CO => 
                           carry_15_port, S => DIFF_14_port);
   U2_13 : ADFULD1 port map( A => A(13), B => n4, CI => carry_13_port, CO => 
                           carry_14_port, S => DIFF_13_port);
   U2_12 : ADFULD1 port map( A => A(12), B => n5, CI => carry_12_port, CO => 
                           carry_13_port, S => DIFF_12_port);
   U2_11 : ADFULD1 port map( A => A(11), B => n6, CI => carry_11_port, CO => 
                           carry_12_port, S => DIFF_11_port);
   U2_10 : ADFULD1 port map( A => A(10), B => n7, CI => carry_10_port, CO => 
                           carry_11_port, S => DIFF_10_port);
   U2_9 : ADFULD1 port map( A => A(9), B => n8, CI => carry_9_port, CO => 
                           carry_10_port, S => DIFF_9_port);
   U2_8 : ADFULD1 port map( A => A(8), B => n9, CI => carry_8_port, CO => 
                           carry_9_port, S => DIFF_8_port);
   U2_7 : ADFULD1 port map( A => A(7), B => n10, CI => carry_7_port, CO => 
                           carry_8_port, S => DIFF_7_port);
   U2_6 : ADFULD1 port map( A => A(6), B => n11, CI => carry_6_port, CO => 
                           carry_7_port, S => DIFF_6_port);
   U2_5 : ADFULD1 port map( A => A(5), B => n12, CI => carry_5_port, CO => 
                           carry_6_port, S => DIFF_5_port);
   U2_4 : ADFULD1 port map( A => A(4), B => n13, CI => carry_4_port, CO => 
                           carry_5_port, S => DIFF_4_port);
   U2_3 : ADFULD1 port map( A => A(3), B => n14, CI => carry_3_port, CO => 
                           carry_4_port, S => DIFF_3_port);
   U1 : INVD1 port map( A => B(13), Z => n4);
   U2 : INVD1 port map( A => B(14), Z => n3);
   U3 : INVD1 port map( A => B(3), Z => n14);
   U4 : NAN2D1 port map( A1 => B(2), A2 => n1, Z => carry_3_port);
   U5 : INVD1 port map( A => B(4), Z => n13);
   U6 : INVD1 port map( A => B(5), Z => n12);
   U7 : INVD1 port map( A => B(6), Z => n11);
   U8 : INVD1 port map( A => B(7), Z => n10);
   U9 : INVD1 port map( A => B(8), Z => n9);
   U10 : INVD1 port map( A => B(9), Z => n8);
   U11 : INVD1 port map( A => B(10), Z => n7);
   U12 : INVD1 port map( A => B(11), Z => n6);
   U13 : INVD1 port map( A => B(12), Z => n5);
   U14 : INVD1 port map( A => A(2), Z => n1);
   U15 : INVD1 port map( A => B(15), Z => n2);
   U16 : INVD1 port map( A => B(2), Z => n15);
   U17 : EXNOR2D1 port map( A1 => n15, A2 => A(2), Z => DIFF_2_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_8_DW01_add_17 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1282 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1282, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_7_DW01_add_16 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1285 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1285, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_6_DW01_add_15 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_13_port, carry_12_port, carry_11_port, carry_10_port, 
      carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1_13 : EXOR3D1 port map( A1 => A(13), A2 => B(13), A3 => carry_13_port, Z 
                           => SUM(13));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_8_DW01_add_14 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1290 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1290, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_7_DW01_add_13 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1293 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1293, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_6_DW01_add_12 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_13_port, carry_12_port, carry_11_port, carry_10_port, 
      carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1_13 : EXOR3D1 port map( A1 => A(13), A2 => B(13), A3 => carry_13_port, Z 
                           => SUM(13));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_5_DW01_add_11 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1298 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1298, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_4_DW01_add_10 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1 : std_logic;

begin
   
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1_12 : EXOR3D1 port map( A1 => A(12), A2 => B(12), A3 => carry_12_port, Z 
                           => SUM(12));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_3_DW01_add_9 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1303 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1303, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_2_DW01_add_8 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1 : std_logic;

begin
   
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1_12 : EXOR3D1 port map( A1 => A(12), A2 => B(12), A3 => carry_12_port, Z 
                           => SUM(12));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_1_DW01_add_7 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1308 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1308, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_5 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1311 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1311, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_4 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1 : std_logic;

begin
   
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1_12 : EXOR3D1 port map( A1 => A(12), A2 => B(12), A3 => carry_12_port, Z 
                           => SUM(12));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_3 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1316 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1316, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_2 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1 : std_logic;

begin
   
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1_12 : EXOR3D1 port map( A1 => A(12), A2 => B(12), A3 => carry_12_port, Z 
                           => SUM(12));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_1 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port, 
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port, 
      carry_3_port, carry_2_port, n1, n_1321 : std_logic;

begin
   
   U1_12 : ADFULD1 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           n_1321, S => SUM(12));
   U1_11 : ADFULD1 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADFULD1 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADFULD1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : ADFULD1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : ADFULD1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : ADFULD1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : ADFULD1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : ADFULD1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : ADFULD1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : ADFULD1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port,
                           S => SUM(1));
   U1 : AND2D1 port map( A1 => B(0), A2 => A(0), Z => n1);
   U2 : EXOR2D1 port map( A1 => B(0), A2 => A(0), Z => SUM(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUFD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_3_DW01_sub_6
      port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (15 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_14_DW01_add_29
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_6_DW01_add_12
      port( A, B : in std_logic_vector (13 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (13 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_7_DW01_add_13
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_8_DW01_add_14
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_2_DW01_sub_5
      port( A, B : in std_logic_vector (18 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (18 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_12_DW01_add_27
      port( A, B : in std_logic_vector (17 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (17 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_1_DW01_sub_3
      port( A, B : in std_logic_vector (16 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (16 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_9_DW01_add_18
      port( A, B : in std_logic_vector (13 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (13 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_10_DW01_add_19
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_11_DW01_add_20
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_15_DW01_add_33
      port( A, B : in std_logic_vector (19 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (19 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_5_DW01_sub_11
      port( A, B : in std_logic_vector (23 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (23 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_16_DW01_add_35
      port( A, B : in std_logic_vector (23 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (23 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_6_DW01_sub_12
      port( A, B : in std_logic_vector (23 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (23 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_17_DW01_add_36
      port( A, B : in std_logic_vector (23 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (23 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_18_DW01_add_37
      port( A, B : in std_logic_vector (22 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (22 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_19_DW01_add_38
      port( A, B : in std_logic_vector (20 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (20 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_20_DW01_add_39
      port( A, B : in std_logic_vector (22 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (22 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_21_DW01_add_40
      port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (14 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_22_DW01_add_41
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_5
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_4
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_3
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_2
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_1
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component OR4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port, arx_input_reg_334_port, arx_input_reg_333_port, 
      arx_input_reg_332_port, arx_input_reg_331_port, arx_input_reg_330_port, 
      arx_input_reg_329_port, arx_input_reg_328_port, arx_input_reg_327_port, 
      arx_input_reg_326_port, arx_input_reg_325_port, arx_input_reg_324_port, 
      arx_input_reg_323_port, arx_input_reg_322_port, arx_input_reg_321_port, 
      arx_input_reg_320_port, arx_input_reg_319_port, arx_input_reg_318_port, 
      arx_input_reg_317_port, arx_input_reg_316_port, arx_input_reg_315_port, 
      arx_input_reg_314_port, arx_input_reg_313_port, arx_input_reg_312_port, 
      arx_input_reg_311_port, arx_input_reg_310_port, arx_input_reg_309_port, 
      arx_input_reg_308_port, arx_input_reg_307_port, arx_input_reg_306_port, 
      arx_input_reg_305_port, arx_input_reg_304_port, arx_input_reg_303_port, 
      arx_input_reg_302_port, arx_input_reg_301_port, arx_input_reg_300_port, 
      arx_input_reg_299_port, arx_input_reg_298_port, arx_input_reg_297_port, 
      arx_input_reg_296_port, arx_input_reg_295_port, arx_input_reg_294_port, 
      arx_input_reg_293_port, arx_input_reg_292_port, arx_input_reg_291_port, 
      arx_input_reg_290_port, arx_input_reg_289_port, arx_input_reg_288_port, 
      arx_input_reg_287_port, arx_input_reg_286_port, arx_input_reg_285_port, 
      arx_input_reg_284_port, arx_input_reg_283_port, arx_input_reg_282_port, 
      arx_input_reg_281_port, arx_input_reg_280_port, arx_input_reg_279_port, 
      arx_input_reg_278_port, arx_input_reg_277_port, arx_input_reg_276_port, 
      arx_input_reg_275_port, arx_input_reg_274_port, arx_input_reg_273_port, 
      arx_input_reg_272_port, arx_input_reg_271_port, arx_input_reg_270_port, 
      arx_input_reg_269_port, arx_input_reg_268_port, arx_input_reg_267_port, 
      arx_input_reg_266_port, arx_input_reg_265_port, arx_input_reg_264_port, 
      arx_input_reg_263_port, arx_input_reg_262_port, arx_input_reg_261_port, 
      arx_input_reg_260_port, arx_input_reg_259_port, arx_input_reg_258_port, 
      arx_input_reg_257_port, arx_input_reg_256_port, arx_input_reg_255_port, 
      arx_input_reg_254_port, arx_input_reg_253_port, arx_input_reg_252_port, 
      arx_input_reg_251_port, arx_input_reg_250_port, arx_input_reg_249_port, 
      arx_input_reg_248_port, arx_input_reg_247_port, arx_input_reg_246_port, 
      arx_input_reg_245_port, arx_input_reg_244_port, arx_input_reg_243_port, 
      arx_input_reg_242_port, arx_input_reg_241_port, arx_input_reg_240_port, 
      arx_input_reg_239_port, arx_input_reg_238_port, arx_input_reg_237_port, 
      arx_input_reg_236_port, arx_input_reg_235_port, arx_input_reg_234_port, 
      arx_input_reg_233_port, arx_input_reg_232_port, arx_input_reg_231_port, 
      arx_input_reg_230_port, arx_input_reg_229_port, arx_input_reg_228_port, 
      arx_input_reg_227_port, arx_input_reg_226_port, arx_input_reg_225_port, 
      arx_input_reg_224_port, arx_input_reg_223_port, arx_input_reg_222_port, 
      arx_input_reg_221_port, arx_input_reg_220_port, arx_input_reg_219_port, 
      arx_input_reg_218_port, arx_input_reg_217_port, arx_input_reg_216_port, 
      arx_input_reg_215_port, arx_input_reg_214_port, arx_input_reg_213_port, 
      arx_input_reg_212_port, arx_input_reg_211_port, arx_input_reg_210_port, 
      arx_input_reg_209_port, arx_input_reg_208_port, arx_input_reg_207_port, 
      arx_input_reg_206_port, arx_input_reg_205_port, arx_input_reg_204_port, 
      arx_input_reg_203_port, arx_input_reg_202_port, arx_input_reg_201_port, 
      arx_input_reg_200_port, arx_input_reg_199_port, arx_input_reg_198_port, 
      arx_input_reg_197_port, arx_input_reg_196_port, arx_input_reg_195_port, 
      arx_input_reg_194_port, arx_input_reg_193_port, arx_input_reg_192_port, 
      arx_input_reg_191_port, arx_input_reg_190_port, arx_input_reg_189_port, 
      arx_input_reg_188_port, arx_input_reg_187_port, arx_input_reg_186_port, 
      arx_input_reg_185_port, arx_input_reg_184_port, arx_input_reg_183_port, 
      arx_input_reg_182_port, arx_input_reg_181_port, arx_input_reg_180_port, 
      arx_input_reg_179_port, arx_input_reg_178_port, arx_input_reg_177_port, 
      arx_input_reg_176_port, arx_input_reg_175_port, arx_input_reg_174_port, 
      arx_input_reg_173_port, arx_input_reg_172_port, arx_input_reg_171_port, 
      arx_input_reg_170_port, arx_input_reg_169_port, arx_input_reg_168_port, 
      arx_input_reg_167_port, arx_input_reg_166_port, arx_input_reg_165_port, 
      arx_input_reg_164_port, arx_input_reg_163_port, arx_input_reg_162_port, 
      arx_input_reg_161_port, arx_input_reg_160_port, arx_input_reg_159_port, 
      arx_input_reg_158_port, arx_input_reg_157_port, arx_input_reg_156_port, 
      arx_input_reg_155_port, arx_input_reg_154_port, arx_input_reg_153_port, 
      arx_input_reg_152_port, arx_input_reg_151_port, arx_input_reg_150_port, 
      arx_input_reg_149_port, arx_input_reg_148_port, arx_input_reg_147_port, 
      arx_input_reg_146_port, arx_input_reg_145_port, arx_input_reg_144_port, 
      arx_input_reg_143_port, arx_input_reg_142_port, arx_input_reg_141_port, 
      arx_input_reg_140_port, arx_input_reg_139_port, arx_input_reg_138_port, 
      arx_input_reg_137_port, arx_input_reg_136_port, arx_input_reg_135_port, 
      arx_input_reg_134_port, arx_input_reg_133_port, arx_input_reg_132_port, 
      arx_input_reg_131_port, arx_input_reg_130_port, arx_input_reg_129_port, 
      arx_input_reg_128_port, arx_input_reg_127_port, arx_input_reg_126_port, 
      arx_input_reg_125_port, arx_input_reg_124_port, arx_input_reg_123_port, 
      arx_input_reg_122_port, arx_input_reg_121_port, arx_input_reg_120_port, 
      arx_input_reg_119_port, arx_input_reg_118_port, arx_input_reg_117_port, 
      arx_input_reg_116_port, arx_input_reg_115_port, arx_input_reg_114_port, 
      arx_input_reg_113_port, arx_input_reg_112_port, arx_input_reg_111_port, 
      arx_input_reg_110_port, arx_input_reg_109_port, arx_input_reg_108_port, 
      arx_input_reg_107_port, arx_input_reg_106_port, arx_input_reg_105_port, 
      arx_input_reg_104_port, arx_input_reg_103_port, arx_input_reg_102_port, 
      arx_input_reg_101_port, arx_input_reg_100_port, arx_input_reg_99_port, 
      arx_input_reg_98_port, arx_input_reg_97_port, arx_input_reg_96_port, 
      arx_input_reg_95_port, arx_input_reg_94_port, arx_input_reg_93_port, 
      arx_input_reg_92_port, arx_input_reg_91_port, arx_input_reg_90_port, 
      arx_input_reg_89_port, arx_input_reg_88_port, arx_input_reg_87_port, 
      arx_input_reg_86_port, arx_input_reg_85_port, arx_input_reg_84_port, 
      arx_input_reg_83_port, arx_input_reg_82_port, arx_input_reg_81_port, 
      arx_input_reg_80_port, arx_input_reg_79_port, arx_input_reg_78_port, 
      arx_input_reg_77_port, arx_input_reg_76_port, arx_input_reg_75_port, 
      arx_input_reg_74_port, arx_input_reg_73_port, arx_input_reg_72_port, 
      arx_input_reg_71_port, arx_input_reg_70_port, arx_input_reg_69_port, 
      arx_input_reg_68_port, arx_input_reg_67_port, arx_input_reg_66_port, 
      arx_input_reg_65_port, arx_input_reg_64_port, arx_input_reg_63_port, 
      arx_input_reg_62_port, arx_input_reg_61_port, arx_input_reg_60_port, 
      arx_input_reg_59_port, arx_input_reg_58_port, arx_input_reg_57_port, 
      arx_input_reg_56_port, arx_input_reg_55_port, arx_input_reg_54_port, 
      arx_input_reg_53_port, arx_input_reg_52_port, arx_input_reg_51_port, 
      arx_input_reg_50_port, arx_input_reg_49_port, arx_input_reg_48_port, 
      arx_input_reg_47_port, arx_input_reg_46_port, arx_input_reg_45_port, 
      arx_input_reg_44_port, arx_input_reg_43_port, arx_input_reg_42_port, 
      arx_input_reg_41_port, arx_input_reg_40_port, arx_input_reg_39_port, 
      arx_input_reg_38_port, arx_input_reg_37_port, arx_input_reg_36_port, 
      arx_input_reg_35_port, arx_input_reg_34_port, arx_input_reg_33_port, 
      arx_input_reg_32_port, arx_input_reg_31_port, arx_input_reg_30_port, 
      arx_input_reg_29_port, arx_input_reg_28_port, arx_input_reg_27_port, 
      arx_input_reg_26_port, arx_input_reg_25_port, arx_input_reg_24_port, 
      arx_input_reg_23_port, arx_input_reg_22_port, arx_input_reg_21_port, 
      arx_input_reg_20_port, arx_input_reg_19_port, arx_input_reg_18_port, 
      arx_input_reg_17_port, arx_input_reg_16_port, arx_input_reg_15_port, 
      arx_input_reg_14_port, arx_input_reg_13_port, arx_input_reg_12_port, 
      arx_input_reg_11_port, arx_input_reg_10_port, arx_input_reg_9_port, 
      arx_input_reg_8_port, arx_input_reg_7_port, arx_input_reg_6_port, 
      arx_input_reg_5_port, arx_input_reg_4_port, arx_input_reg_3_port, 
      arx_input_reg_2_port, arx_input_reg_1_port, arx_input_reg_0_port, 
      pair1_27_12_port, pair1_27_11_port, pair1_27_10_port, pair1_27_9_port, 
      pair1_27_8_port, pair1_27_7_port, pair1_27_6_port, pair1_27_5_port, 
      pair1_27_4_port, pair1_27_3_port, pair1_27_2_port, pair1_27_1_port, 
      pair1_27_0_port, pair7_21_12_port, pair7_21_11_port, pair7_21_10_port, 
      pair7_21_9_port, pair7_21_8_port, pair7_21_7_port, pair7_21_6_port, 
      pair7_21_5_port, pair7_21_4_port, pair7_21_3_port, pair7_21_2_port, 
      pair7_21_1_port, pair7_21_0_port, pair11_17_12_port, pair11_17_11_port, 
      pair11_17_10_port, pair11_17_9_port, pair11_17_8_port, pair11_17_7_port, 
      pair11_17_6_port, pair11_17_5_port, pair11_17_4_port, pair11_17_3_port, 
      pair11_17_2_port, pair11_17_1_port, pair11_17_0_port, pair12_16_12_port, 
      pair12_16_11_port, pair12_16_10_port, pair12_16_9_port, pair12_16_8_port,
      pair12_16_7_port, pair12_16_6_port, pair12_16_5_port, pair12_16_4_port, 
      pair12_16_3_port, pair12_16_2_port, pair12_16_1_port, pair13_15_11_port, 
      pair13_15_10_port, pair13_15_9_port, pair13_15_8_port, pair13_15_7_port, 
      pair13_15_6_port, pair13_15_5_port, pair13_15_4_port, pair13_15_3_port, 
      pair13_15_2_port, t8_9_13_port, t8_9_12_port, t8_9_11_port, t8_9_10_port,
      t8_9_9_port, t8_9_8_port, t8_9_7_port, t8_9_6_port, t8_9_5_port, 
      t8_9_4_port, t8_9_3_port, t8_9_2_port, t8_9_1_port, t8_9_0_port, 
      t3_7_15_port, t3_7_14_port, t3_7_13_port, t3_7_12_port, t3_7_11_port, 
      t3_7_10_port, t3_7_9_port, t3_7_8_port, t3_7_7_port, t3_7_6_port, 
      t3_7_5_port, t3_7_4_port, t3_7_3_port, t3_7_2_port, t3_7_1_port, 
      t3_7_0_port, p141_1_19_port, p141_1_17_port, p141_1_16_port, 
      p141_1_15_port, p141_1_14_port, p141_1_13_port, p141_1_12_port, 
      p141_1_11_port, p141_1_10_port, p141_1_9_port, p141_1_8_port, 
      p141_1_7_port, p141_1_6_port, p141_1_5_port, p141_1_4_port, p141_1_3_port
      , p141_1_2_port, p141_1_1_port, p141_1_0_port, p206_2_15_port, 
      p206_2_14_port, p206_2_13_port, p206_2_12_port, p206_2_11_port, 
      p206_2_10_port, p206_2_9_port, p206_2_8_port, p206_2_7_port, 
      p206_2_6_port, p206_2_5_port, p206_2_4_port, p206_2_3_port, p206_2_2_port
      , p206_2_1_port, p206_3_20_port, p206_3_19_port, p206_3_18_port, 
      p206_3_17_port, p206_3_16_port, p206_3_15_port, p206_3_14_port, 
      p206_3_13_port, p206_3_12_port, p206_3_11_port, p206_3_10_port, 
      p206_3_9_port, p206_3_8_port, p206_3_7_port, p206_3_6_port, p206_3_5_port
      , p206_3_4_port, p206_3_3_port, p206_3_2_port, p206_3_1_port, 
      p206_3_0_port, t11_14_18_port, t11_14_17_port, t11_14_16_port, 
      t11_14_15_port, t11_14_14_port, t11_14_13_port, t11_14_12_port, 
      t11_14_11_port, t11_14_10_port, t11_14_9_port, t11_14_8_port, 
      t11_14_7_port, t11_14_6_port, t11_14_5_port, t11_14_4_port, t11_14_3_port
      , t11_14_2_port, t11_14_1_port, t11_14_0_port, t4_5_8_9_19_port, 
      t4_5_8_9_18_port, t4_5_8_9_17_port, t4_5_8_9_16_port, t4_5_8_9_15_port, 
      t4_5_8_9_14_port, t4_5_8_9_13_port, t4_5_8_9_12_port, t4_5_8_9_11_port, 
      t4_5_8_9_10_port, t4_5_8_9_9_port, t4_5_8_9_8_port, t4_5_8_9_7_port, 
      t4_5_8_9_6_port, t4_5_8_9_5_port, t4_5_8_9_4_port, t4_5_8_9_3_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_22_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_21_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_20_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_19_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_18_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_17_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_16_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_15_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_14_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_13_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_12_port, t12_13_9_port, t12_13_8_port, 
      t12_13_7_port, t12_13_6_port, t12_13_5_port, t12_13_4_port, t12_13_3_port
      , t12_13_2_port, t12_13_22_port, t12_13_21_port, t12_13_20_port, 
      t12_13_1_port, t12_13_19_port, t12_13_18_port, t12_13_17_port, 
      t12_13_16_port, t12_13_15_port, t12_13_14_port, t12_13_13_port, 
      t12_13_12_port, t12_13_11_port, t12_13_10_port, net5308, t0_1_9_port, 
      t0_1_8_port, t0_1_7_port, t0_1_6_port, t0_1_5_port, t0_1_4_port, 
      t0_1_3_port, t0_1_2_port, t0_1_1_port, t0_1_14_port, t0_1_13_port, 
      t0_1_12_port, t0_1_11_port, t0_1_10_port, t0_1_0_port, pair0_28_9_port, 
      pair0_28_8_port, pair0_28_7_port, pair0_28_6_port, pair0_28_5_port, 
      pair0_28_4_port, pair0_28_3_port, pair0_28_2_port, pair0_28_1_port, 
      pair0_28_12_port, pair0_28_11_port, pair0_28_10_port, pair0_28_0_port, 
      p206_1_9_port, p206_1_8_port, p206_1_7_port, p206_1_6_port, p206_1_5_port
      , p206_1_4_port, p206_1_3_port, p206_1_19_port, p206_1_18_port, 
      p206_1_17_port, p206_1_16_port, p206_1_15_port, p206_1_14_port, 
      p206_1_13_port, p206_1_12_port, p206_1_11_port, p206_1_10_port, 
      t4_5_9_port, t4_5_8_port, t4_5_7_port, t4_5_6_port, t4_5_5_port, 
      t4_5_4_port, t4_5_3_port, t4_5_2_port, t4_5_1_port, t4_5_13_port, 
      t4_5_12_port, t4_5_11_port, t4_5_10_port, t4_5_0_port, pair5_23_9_port, 
      pair5_23_8_port, pair5_23_7_port, pair5_23_6_port, pair5_23_5_port, 
      pair5_23_4_port, pair5_23_3_port, pair5_23_2_port, pair5_23_1_port, 
      pair5_23_12_port, pair5_23_11_port, pair5_23_10_port, pair5_23_0_port, 
      pair4_24_9_port, pair4_24_8_port, pair4_24_7_port, pair4_24_6_port, 
      pair4_24_5_port, pair4_24_4_port, pair4_24_3_port, pair4_24_2_port, 
      pair4_24_1_port, pair4_24_12_port, pair4_24_11_port, pair4_24_10_port, 
      pair4_24_0_port, p232_2_9_port, p232_2_8_port, p232_2_7_port, 
      p232_2_6_port, p232_2_5_port, p232_2_4_port, p232_2_3_port, p232_2_2_port
      , p232_2_1_port, p232_2_17_port, p232_2_12_port, p232_2_11_port, 
      p232_2_10_port, p232_2_0_port, pair9_19_9_port, pair9_19_8_port, 
      pair9_19_7_port, pair9_19_6_port, pair9_19_5_port, pair9_19_4_port, 
      pair9_19_3_port, pair9_19_2_port, pair9_19_1_port, pair9_19_12_port, 
      pair9_19_11_port, pair9_19_10_port, pair9_19_0_port, pair8_20_9_port, 
      pair8_20_8_port, pair8_20_7_port, pair8_20_6_port, pair8_20_5_port, 
      pair8_20_4_port, pair8_20_3_port, pair8_20_2_port, pair8_20_1_port, 
      pair8_20_12_port, pair8_20_11_port, pair8_20_10_port, pair8_20_0_port, 
      pair3_25_9_port, pair3_25_8_port, pair3_25_7_port, pair3_25_6_port, 
      pair3_25_5_port, pair3_25_4_port, pair3_25_3_port, pair3_25_2_port, 
      pair3_25_1_port, pair3_25_12_port, pair3_25_11_port, pair3_25_10_port, 
      pair3_25_0_port, add_284_carry_3_port, add_284_carry_4_port, 
      add_284_carry_5_port, add_284_carry_6_port, add_284_carry_7_port, 
      add_284_carry_8_port, add_284_carry_9_port, add_284_carry_10_port, 
      add_284_carry_11_port, add_284_carry_12_port, add_284_carry_13_port, 
      sub_280_carry_2_port, sub_280_carry_3_port, sub_280_carry_4_port, 
      sub_280_carry_5_port, sub_280_carry_6_port, sub_280_carry_7_port, 
      sub_280_carry_8_port, sub_280_carry_9_port, sub_280_carry_10_port, 
      sub_280_carry_11_port, sub_280_carry_12_port, sub_280_carry_13_port, 
      sub_280_carry_14_port, sub_280_carry_15_port, sub_280_carry_16_port, 
      sub_280_carry_17_port, sub_280_carry_18_port, 
      add_1_root_add_286_carry_2_port, add_1_root_add_286_carry_3_port, 
      add_1_root_add_286_carry_4_port, add_1_root_add_286_carry_5_port, 
      add_1_root_add_286_carry_6_port, add_1_root_add_286_carry_7_port, 
      add_1_root_add_286_carry_8_port, add_1_root_add_286_carry_9_port, 
      add_1_root_add_286_carry_10_port, add_1_root_add_286_carry_11_port, 
      sub_0_root_add_285_carry_2_port, sub_0_root_add_285_carry_3_port, 
      sub_0_root_add_285_carry_4_port, sub_0_root_add_285_carry_5_port, 
      sub_0_root_add_285_carry_6_port, sub_0_root_add_285_carry_7_port, 
      sub_0_root_add_285_carry_8_port, sub_0_root_add_285_carry_9_port, 
      sub_0_root_add_285_carry_10_port, sub_0_root_add_285_carry_11_port, 
      sub_0_root_add_285_carry_12_port, sub_0_root_add_285_carry_13_port, 
      sub_0_root_add_285_carry_14_port, sub_0_root_add_285_carry_15_port, 
      sub_0_root_add_285_carry_16_port, sub_0_root_add_285_carry_17_port, 
      sub_0_root_add_285_carry_18_port, sub_0_root_add_285_carry_19_port, 
      sub_0_root_add_285_carry_20_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10
      , n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, 
      n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39
      , n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, 
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n74
      , n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, 
      n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, 
      n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, 
      n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, 
      n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, 
      n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, 
      n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, 
      n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, 
      n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, 
      n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, 
      n199, n200, n_1322, n_1323, n_1324, n_1325, n_1326, n_1327, n_1328, 
      n_1329, n_1330, n_1331, n_1332, n_1333, n_1334, n_1335, n_1336, n_1337, 
      n_1338, n_1339, n_1340, n_1341, n_1342, n_1343, n_1344, n_1345, n_1346, 
      n_1347, n_1348, n_1349, n_1350, n_1351, n_1352, n_1353, n_1354, n_1355, 
      n_1356, n_1357, n_1358, n_1359, n_1360, n_1361, n_1362, n_1363, n_1364, 
      n_1365, n_1366, n_1367, n_1368, n_1369, n_1370, n_1371 : std_logic;

begin
   data_out <= ( data_out_4_port, data_out_3_port, data_out_2_port, 
      data_out_1_port, data_out_0_port );
   
   U16 : OR2D1 port map( A1 => n200, A2 => data_out_4_port, Z => n199);
   U17 : OAI22D1 port map( A1 => n198, A2 => n197, B1 => n196, B2 => n195, Z =>
                           n200);
   U18 : OR4D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_16_port, A2 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_17_port, A3 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_18_port, A4 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_19_port, Z => n195);
   U19 : OR4D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_20_port, A2 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_21_port, A3 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_22_port, A4 => 
                           data_out_4_port, Z => n196);
   add_273 : lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_1 port 
                           map( A(12) => arx_input_reg_190_port, A(11) => 
                           arx_input_reg_190_port, A(10) => 
                           arx_input_reg_189_port, A(9) => 
                           arx_input_reg_188_port, A(8) => 
                           arx_input_reg_187_port, A(7) => 
                           arx_input_reg_186_port, A(6) => 
                           arx_input_reg_185_port, A(5) => 
                           arx_input_reg_184_port, A(4) => 
                           arx_input_reg_183_port, A(3) => 
                           arx_input_reg_182_port, A(2) => 
                           arx_input_reg_181_port, A(1) => 
                           arx_input_reg_180_port, A(0) => 
                           arx_input_reg_179_port, B(12) => 
                           arx_input_reg_167_port, B(11) => 
                           arx_input_reg_167_port, B(10) => 
                           arx_input_reg_166_port, B(9) => 
                           arx_input_reg_165_port, B(8) => 
                           arx_input_reg_164_port, B(7) => 
                           arx_input_reg_163_port, B(6) => 
                           arx_input_reg_162_port, B(5) => 
                           arx_input_reg_161_port, B(4) => 
                           arx_input_reg_160_port, B(3) => 
                           arx_input_reg_159_port, B(2) => 
                           arx_input_reg_158_port, B(1) => 
                           arx_input_reg_157_port, B(0) => 
                           arx_input_reg_156_port, CI => net5308, SUM(12) => 
                           p206_2_15_port, SUM(11) => pair13_15_11_port, 
                           SUM(10) => pair13_15_10_port, SUM(9) => 
                           pair13_15_9_port, SUM(8) => pair13_15_8_port, SUM(7)
                           => pair13_15_7_port, SUM(6) => pair13_15_6_port, 
                           SUM(5) => pair13_15_5_port, SUM(4) => 
                           pair13_15_4_port, SUM(3) => pair13_15_3_port, SUM(2)
                           => pair13_15_2_port, SUM(1) => p206_2_1_port, SUM(0)
                           => p206_3_0_port, CO => n_1322);
   add_272 : lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_2 port 
                           map( A(12) => arx_input_reg_202_port, A(11) => 
                           arx_input_reg_202_port, A(10) => 
                           arx_input_reg_201_port, A(9) => 
                           arx_input_reg_200_port, A(8) => 
                           arx_input_reg_199_port, A(7) => 
                           arx_input_reg_198_port, A(6) => 
                           arx_input_reg_197_port, A(5) => 
                           arx_input_reg_196_port, A(4) => 
                           arx_input_reg_195_port, A(3) => 
                           arx_input_reg_194_port, A(2) => 
                           arx_input_reg_193_port, A(1) => 
                           arx_input_reg_192_port, A(0) => 
                           arx_input_reg_191_port, B(12) => 
                           arx_input_reg_155_port, B(11) => 
                           arx_input_reg_155_port, B(10) => 
                           arx_input_reg_154_port, B(9) => 
                           arx_input_reg_153_port, B(8) => 
                           arx_input_reg_152_port, B(7) => 
                           arx_input_reg_151_port, B(6) => 
                           arx_input_reg_150_port, B(5) => 
                           arx_input_reg_149_port, B(4) => 
                           arx_input_reg_148_port, B(3) => 
                           arx_input_reg_147_port, B(2) => 
                           arx_input_reg_146_port, B(1) => 
                           arx_input_reg_145_port, B(0) => 
                           arx_input_reg_144_port, CI => net5308, SUM(12) => 
                           pair12_16_12_port, SUM(11) => pair12_16_11_port, 
                           SUM(10) => pair12_16_10_port, SUM(9) => 
                           pair12_16_9_port, SUM(8) => pair12_16_8_port, SUM(7)
                           => pair12_16_7_port, SUM(6) => pair12_16_6_port, 
                           SUM(5) => pair12_16_5_port, SUM(4) => 
                           pair12_16_4_port, SUM(3) => pair12_16_3_port, SUM(2)
                           => pair12_16_2_port, SUM(1) => pair12_16_1_port, 
                           SUM(0) => p141_1_0_port, CO => n_1323);
   add_271 : lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_3 port 
                           map( A(12) => arx_input_reg_214_port, A(11) => 
                           arx_input_reg_214_port, A(10) => 
                           arx_input_reg_213_port, A(9) => 
                           arx_input_reg_212_port, A(8) => 
                           arx_input_reg_211_port, A(7) => 
                           arx_input_reg_210_port, A(6) => 
                           arx_input_reg_209_port, A(5) => 
                           arx_input_reg_208_port, A(4) => 
                           arx_input_reg_207_port, A(3) => 
                           arx_input_reg_206_port, A(2) => 
                           arx_input_reg_205_port, A(1) => 
                           arx_input_reg_204_port, A(0) => 
                           arx_input_reg_203_port, B(12) => 
                           arx_input_reg_143_port, B(11) => 
                           arx_input_reg_143_port, B(10) => 
                           arx_input_reg_142_port, B(9) => 
                           arx_input_reg_141_port, B(8) => 
                           arx_input_reg_140_port, B(7) => 
                           arx_input_reg_139_port, B(6) => 
                           arx_input_reg_138_port, B(5) => 
                           arx_input_reg_137_port, B(4) => 
                           arx_input_reg_136_port, B(3) => 
                           arx_input_reg_135_port, B(2) => 
                           arx_input_reg_134_port, B(1) => 
                           arx_input_reg_133_port, B(0) => 
                           arx_input_reg_132_port, CI => net5308, SUM(12) => 
                           pair11_17_12_port, SUM(11) => pair11_17_11_port, 
                           SUM(10) => pair11_17_10_port, SUM(9) => 
                           pair11_17_9_port, SUM(8) => pair11_17_8_port, SUM(7)
                           => pair11_17_7_port, SUM(6) => pair11_17_6_port, 
                           SUM(5) => pair11_17_5_port, SUM(4) => 
                           pair11_17_4_port, SUM(3) => pair11_17_3_port, SUM(2)
                           => pair11_17_2_port, SUM(1) => pair11_17_1_port, 
                           SUM(0) => pair11_17_0_port, CO => n_1324);
   add_268 : lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_4 port 
                           map( A(12) => arx_input_reg_262_port, A(11) => 
                           arx_input_reg_262_port, A(10) => 
                           arx_input_reg_261_port, A(9) => 
                           arx_input_reg_260_port, A(8) => 
                           arx_input_reg_259_port, A(7) => 
                           arx_input_reg_258_port, A(6) => 
                           arx_input_reg_257_port, A(5) => 
                           arx_input_reg_256_port, A(4) => 
                           arx_input_reg_255_port, A(3) => 
                           arx_input_reg_254_port, A(2) => 
                           arx_input_reg_253_port, A(1) => 
                           arx_input_reg_252_port, A(0) => 
                           arx_input_reg_251_port, B(12) => 
                           arx_input_reg_95_port, B(11) => 
                           arx_input_reg_95_port, B(10) => 
                           arx_input_reg_94_port, B(9) => arx_input_reg_93_port
                           , B(8) => arx_input_reg_92_port, B(7) => 
                           arx_input_reg_91_port, B(6) => arx_input_reg_90_port
                           , B(5) => arx_input_reg_89_port, B(4) => 
                           arx_input_reg_88_port, B(3) => arx_input_reg_87_port
                           , B(2) => arx_input_reg_86_port, B(1) => 
                           arx_input_reg_85_port, B(0) => arx_input_reg_84_port
                           , CI => net5308, SUM(12) => pair7_21_12_port, 
                           SUM(11) => pair7_21_11_port, SUM(10) => 
                           pair7_21_10_port, SUM(9) => pair7_21_9_port, SUM(8) 
                           => pair7_21_8_port, SUM(7) => pair7_21_7_port, 
                           SUM(6) => pair7_21_6_port, SUM(5) => pair7_21_5_port
                           , SUM(4) => pair7_21_4_port, SUM(3) => 
                           pair7_21_3_port, SUM(2) => pair7_21_2_port, SUM(1) 
                           => pair7_21_1_port, SUM(0) => pair7_21_0_port, CO =>
                           n_1325);
   add_264 : lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_5 port 
                           map( A(12) => arx_input_reg_334_port, A(11) => 
                           arx_input_reg_334_port, A(10) => 
                           arx_input_reg_333_port, A(9) => 
                           arx_input_reg_332_port, A(8) => 
                           arx_input_reg_331_port, A(7) => 
                           arx_input_reg_330_port, A(6) => 
                           arx_input_reg_329_port, A(5) => 
                           arx_input_reg_328_port, A(4) => 
                           arx_input_reg_327_port, A(3) => 
                           arx_input_reg_326_port, A(2) => 
                           arx_input_reg_325_port, A(1) => 
                           arx_input_reg_324_port, A(0) => 
                           arx_input_reg_323_port, B(12) => 
                           arx_input_reg_23_port, B(11) => 
                           arx_input_reg_23_port, B(10) => 
                           arx_input_reg_22_port, B(9) => arx_input_reg_21_port
                           , B(8) => arx_input_reg_20_port, B(7) => 
                           arx_input_reg_19_port, B(6) => arx_input_reg_18_port
                           , B(5) => arx_input_reg_17_port, B(4) => 
                           arx_input_reg_16_port, B(3) => arx_input_reg_15_port
                           , B(2) => arx_input_reg_14_port, B(1) => 
                           arx_input_reg_13_port, B(0) => arx_input_reg_12_port
                           , CI => net5308, SUM(12) => pair1_27_12_port, 
                           SUM(11) => pair1_27_11_port, SUM(10) => 
                           pair1_27_10_port, SUM(9) => pair1_27_9_port, SUM(8) 
                           => pair1_27_8_port, SUM(7) => pair1_27_7_port, 
                           SUM(6) => pair1_27_6_port, SUM(5) => pair1_27_5_port
                           , SUM(4) => pair1_27_4_port, SUM(3) => 
                           pair1_27_3_port, SUM(2) => pair1_27_2_port, SUM(1) 
                           => pair1_27_1_port, SUM(0) => pair1_27_0_port, CO =>
                           n_1326);
   add_5_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_22_DW01_add_41 
                           port map( A(12) => data_in(11), A(11) => data_in(11)
                           , A(10) => data_in(10), A(9) => data_in(9), A(8) => 
                           data_in(8), A(7) => data_in(7), A(6) => data_in(6), 
                           A(5) => data_in(5), A(4) => data_in(4), A(3) => 
                           data_in(3), A(2) => data_in(2), A(1) => data_in(1), 
                           A(0) => data_in(0), B(12) => arx_input_reg_11_port, 
                           B(11) => arx_input_reg_11_port, B(10) => 
                           arx_input_reg_10_port, B(9) => arx_input_reg_9_port,
                           B(8) => arx_input_reg_8_port, B(7) => 
                           arx_input_reg_7_port, B(6) => arx_input_reg_6_port, 
                           B(5) => arx_input_reg_5_port, B(4) => 
                           arx_input_reg_4_port, B(3) => arx_input_reg_3_port, 
                           B(2) => arx_input_reg_2_port, B(1) => 
                           arx_input_reg_1_port, B(0) => arx_input_reg_0_port, 
                           CI => net5308, SUM(12) => pair0_28_12_port, SUM(11) 
                           => pair0_28_11_port, SUM(10) => pair0_28_10_port, 
                           SUM(9) => pair0_28_9_port, SUM(8) => pair0_28_8_port
                           , SUM(7) => pair0_28_7_port, SUM(6) => 
                           pair0_28_6_port, SUM(5) => pair0_28_5_port, SUM(4) 
                           => pair0_28_4_port, SUM(3) => pair0_28_3_port, 
                           SUM(2) => pair0_28_2_port, SUM(1) => pair0_28_1_port
                           , SUM(0) => pair0_28_0_port, CO => n_1327);
   add_4_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_21_DW01_add_40 
                           port map( A(14) => pair1_27_12_port, A(13) => 
                           pair1_27_12_port, A(12) => pair1_27_11_port, A(11) 
                           => pair1_27_10_port, A(10) => pair1_27_9_port, A(9) 
                           => pair1_27_8_port, A(8) => pair1_27_7_port, A(7) =>
                           pair1_27_6_port, A(6) => pair1_27_5_port, A(5) => 
                           pair1_27_4_port, A(4) => pair1_27_3_port, A(3) => 
                           pair1_27_2_port, A(2) => pair1_27_1_port, A(1) => 
                           pair1_27_0_port, A(0) => net5308, B(14) => n1, B(13)
                           => n1, B(12) => n1, B(11) => pair12_16_11_port, 
                           B(10) => pair12_16_10_port, B(9) => pair12_16_9_port
                           , B(8) => pair12_16_8_port, B(7) => pair12_16_7_port
                           , B(6) => pair12_16_6_port, B(5) => pair12_16_5_port
                           , B(4) => pair12_16_4_port, B(3) => pair12_16_3_port
                           , B(2) => pair12_16_2_port, B(1) => pair12_16_1_port
                           , B(0) => p141_1_0_port, CI => net5308, SUM(14) => 
                           t0_1_14_port, SUM(13) => t0_1_13_port, SUM(12) => 
                           t0_1_12_port, SUM(11) => t0_1_11_port, SUM(10) => 
                           t0_1_10_port, SUM(9) => t0_1_9_port, SUM(8) => 
                           t0_1_8_port, SUM(7) => t0_1_7_port, SUM(6) => 
                           t0_1_6_port, SUM(5) => t0_1_5_port, SUM(4) => 
                           t0_1_4_port, SUM(3) => t0_1_3_port, SUM(2) => 
                           t0_1_2_port, SUM(1) => t0_1_1_port, SUM(0) => 
                           t0_1_0_port, CO => n_1328);
   add_7_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_20_DW01_add_39 
                           port map( A(22) => t11_14_18_port, A(21) => 
                           t11_14_18_port, A(20) => t11_14_17_port, A(19) => 
                           t11_14_16_port, A(18) => t11_14_15_port, A(17) => 
                           t11_14_14_port, A(16) => t11_14_13_port, A(15) => 
                           t11_14_12_port, A(14) => t11_14_11_port, A(13) => 
                           t11_14_10_port, A(12) => t11_14_9_port, A(11) => 
                           t11_14_8_port, A(10) => t11_14_7_port, A(9) => 
                           t11_14_6_port, A(8) => t11_14_5_port, A(7) => 
                           t11_14_4_port, A(6) => t11_14_3_port, A(5) => 
                           t11_14_2_port, A(4) => t11_14_1_port, A(3) => 
                           t11_14_0_port, A(2) => net5308, A(1) => net5308, 
                           A(0) => net5308, B(22) => p141_1_19_port, B(21) => 
                           p141_1_19_port, B(20) => p141_1_19_port, B(19) => 
                           p141_1_19_port, B(18) => p141_1_17_port, B(17) => 
                           p141_1_16_port, B(16) => p141_1_15_port, B(15) => 
                           p141_1_14_port, B(14) => p141_1_13_port, B(13) => 
                           p141_1_12_port, B(12) => p141_1_11_port, B(11) => 
                           p141_1_10_port, B(10) => p141_1_9_port, B(9) => 
                           p141_1_8_port, B(8) => p141_1_7_port, B(7) => 
                           p141_1_6_port, B(6) => p141_1_5_port, B(5) => 
                           p141_1_4_port, B(4) => p141_1_3_port, B(3) => 
                           p141_1_2_port, B(2) => p141_1_1_port, B(1) => 
                           p141_1_0_port, B(0) => net5308, CI => net5308, 
                           SUM(22) => n137, SUM(21) => n138, SUM(20) => n139, 
                           SUM(19) => n140, SUM(18) => n141, SUM(17) => n142, 
                           SUM(16) => n143, SUM(15) => n144, SUM(14) => n145, 
                           SUM(13) => n146, SUM(12) => n147, SUM(11) => n148, 
                           SUM(10) => n149, SUM(9) => n150, SUM(8) => n151, 
                           SUM(7) => n152, SUM(6) => n153, SUM(5) => n154, 
                           SUM(4) => n155, SUM(3) => n156, SUM(2) => n157, 
                           SUM(1) => n158, SUM(0) => n_1329, CO => n_1330);
   add_8_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_19_DW01_add_38 
                           port map( A(20) => t3_7_15_port, A(19) => 
                           t3_7_15_port, A(18) => t3_7_15_port, A(17) => 
                           t3_7_15_port, A(16) => t3_7_14_port, A(15) => 
                           t3_7_13_port, A(14) => t3_7_12_port, A(13) => 
                           t3_7_11_port, A(12) => t3_7_10_port, A(11) => 
                           t3_7_9_port, A(10) => t3_7_8_port, A(9) => 
                           t3_7_7_port, A(8) => t3_7_6_port, A(7) => 
                           t3_7_5_port, A(6) => t3_7_4_port, A(5) => 
                           t3_7_3_port, A(4) => t3_7_2_port, A(3) => 
                           t3_7_1_port, A(2) => t3_7_0_port, A(1) => net5308, 
                           A(0) => net5308, B(20) => t4_5_8_9_19_port, B(19) =>
                           t4_5_8_9_19_port, B(18) => t4_5_8_9_18_port, B(17) 
                           => t4_5_8_9_17_port, B(16) => t4_5_8_9_16_port, 
                           B(15) => t4_5_8_9_15_port, B(14) => t4_5_8_9_14_port
                           , B(13) => t4_5_8_9_13_port, B(12) => 
                           t4_5_8_9_12_port, B(11) => t4_5_8_9_11_port, B(10) 
                           => t4_5_8_9_10_port, B(9) => t4_5_8_9_9_port, B(8) 
                           => t4_5_8_9_8_port, B(7) => t4_5_8_9_7_port, B(6) =>
                           t4_5_8_9_6_port, B(5) => t4_5_8_9_5_port, B(4) => 
                           t4_5_8_9_4_port, B(3) => t4_5_8_9_3_port, B(2) => 
                           net5308, B(1) => net5308, B(0) => net5308, CI => 
                           net5308, SUM(20) => n118, SUM(19) => n119, SUM(18) 
                           => n120, SUM(17) => n121, SUM(16) => n122, SUM(15) 
                           => n123, SUM(14) => n124, SUM(13) => n125, SUM(12) 
                           => n126, SUM(11) => n127, SUM(10) => n128, SUM(9) =>
                           n129, SUM(8) => n130, SUM(7) => n131, SUM(6) => n132
                           , SUM(5) => n133, SUM(4) => n134, SUM(3) => n135, 
                           SUM(2) => n136, SUM(1) => n_1331, SUM(0) => n_1332, 
                           CO => n_1333);
   add_6_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_18_DW01_add_37 
                           port map( A(22) => n1, A(21) => n1, A(20) => n1, 
                           A(19) => n1, A(18) => n1, A(17) => n1, A(16) => n1, 
                           A(15) => pair12_16_11_port, A(14) => 
                           pair12_16_10_port, A(13) => pair12_16_9_port, A(12) 
                           => pair12_16_8_port, A(11) => pair12_16_7_port, 
                           A(10) => pair12_16_6_port, A(9) => pair12_16_5_port,
                           A(8) => pair12_16_4_port, A(7) => pair12_16_3_port, 
                           A(6) => pair12_16_2_port, A(5) => pair12_16_1_port, 
                           A(4) => p141_1_0_port, A(3) => net5308, A(2) => 
                           net5308, A(1) => net5308, A(0) => net5308, B(22) => 
                           p206_3_20_port, B(21) => p206_3_20_port, B(20) => 
                           p206_3_19_port, B(19) => p206_3_18_port, B(18) => 
                           p206_3_17_port, B(17) => p206_3_16_port, B(16) => 
                           p206_3_15_port, B(15) => p206_3_14_port, B(14) => 
                           p206_3_13_port, B(13) => p206_3_12_port, B(12) => 
                           p206_3_11_port, B(11) => p206_3_10_port, B(10) => 
                           p206_3_9_port, B(9) => p206_3_8_port, B(8) => 
                           p206_3_7_port, B(7) => p206_3_6_port, B(6) => 
                           p206_3_5_port, B(5) => p206_3_4_port, B(4) => 
                           p206_3_3_port, B(3) => p206_3_2_port, B(2) => 
                           p206_3_1_port, B(1) => p206_3_0_port, B(0) => 
                           net5308, CI => net5308, SUM(22) => t12_13_22_port, 
                           SUM(21) => t12_13_21_port, SUM(20) => t12_13_20_port
                           , SUM(19) => t12_13_19_port, SUM(18) => 
                           t12_13_18_port, SUM(17) => t12_13_17_port, SUM(16) 
                           => t12_13_16_port, SUM(15) => t12_13_15_port, 
                           SUM(14) => t12_13_14_port, SUM(13) => t12_13_13_port
                           , SUM(12) => t12_13_12_port, SUM(11) => 
                           t12_13_11_port, SUM(10) => t12_13_10_port, SUM(9) =>
                           t12_13_9_port, SUM(8) => t12_13_8_port, SUM(7) => 
                           t12_13_7_port, SUM(6) => t12_13_6_port, SUM(5) => 
                           t12_13_5_port, SUM(4) => t12_13_4_port, SUM(3) => 
                           t12_13_3_port, SUM(2) => t12_13_2_port, SUM(1) => 
                           t12_13_1_port, SUM(0) => n_1334, CO => n_1335);
   add_2_root_sub_0_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_17_DW01_add_36 
                           port map( A(23) => t12_13_22_port, A(22) => 
                           t12_13_22_port, A(21) => t12_13_21_port, A(20) => 
                           t12_13_20_port, A(19) => t12_13_19_port, A(18) => 
                           t12_13_18_port, A(17) => t12_13_17_port, A(16) => 
                           t12_13_16_port, A(15) => t12_13_15_port, A(14) => 
                           t12_13_14_port, A(13) => t12_13_13_port, A(12) => 
                           t12_13_12_port, A(11) => t12_13_11_port, A(10) => 
                           t12_13_10_port, A(9) => t12_13_9_port, A(8) => 
                           t12_13_8_port, A(7) => t12_13_7_port, A(6) => 
                           t12_13_6_port, A(5) => t12_13_5_port, A(4) => 
                           t12_13_4_port, A(3) => t12_13_3_port, A(2) => 
                           t12_13_2_port, A(1) => t12_13_1_port, A(0) => 
                           net5308, B(23) => n137, B(22) => n137, B(21) => n138
                           , B(20) => n139, B(19) => n140, B(18) => n141, B(17)
                           => n142, B(16) => n143, B(15) => n144, B(14) => n145
                           , B(13) => n146, B(12) => n147, B(11) => n148, B(10)
                           => n149, B(9) => n150, B(8) => n151, B(7) => n152, 
                           B(6) => n153, B(5) => n154, B(4) => n155, B(3) => 
                           n156, B(2) => n157, B(1) => n158, B(0) => net5308, 
                           CI => net5308, SUM(23) => n159, SUM(22) => n160, 
                           SUM(21) => n161, SUM(20) => n162, SUM(19) => n163, 
                           SUM(18) => n164, SUM(17) => n165, SUM(16) => n166, 
                           SUM(15) => n167, SUM(14) => n168, SUM(13) => n169, 
                           SUM(12) => n170, SUM(11) => n171, SUM(10) => n172, 
                           SUM(9) => n173, SUM(8) => n174, SUM(7) => n175, 
                           SUM(6) => n176, SUM(5) => n177, SUM(4) => n178, 
                           SUM(3) => n179, SUM(2) => n180, SUM(1) => n181, 
                           SUM(0) => n_1336, CO => n_1337);
   sub_3_root_sub_0_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_6_DW01_sub_12 
                           port map( A(23) => n118, A(22) => n118, A(21) => 
                           n118, A(20) => n118, A(19) => n119, A(18) => n120, 
                           A(17) => n121, A(16) => n122, A(15) => n123, A(14) 
                           => n124, A(13) => n125, A(12) => n126, A(11) => n127
                           , A(10) => n128, A(9) => n129, A(8) => n130, A(7) =>
                           n131, A(6) => n132, A(5) => n133, A(4) => n134, A(3)
                           => n135, A(2) => n136, A(1) => net5308, A(0) => 
                           net5308, B(23) => t0_1_14_port, B(22) => 
                           t0_1_14_port, B(21) => t0_1_14_port, B(20) => 
                           t0_1_14_port, B(19) => t0_1_14_port, B(18) => 
                           t0_1_14_port, B(17) => t0_1_14_port, B(16) => 
                           t0_1_14_port, B(15) => t0_1_14_port, B(14) => 
                           t0_1_14_port, B(13) => t0_1_13_port, B(12) => 
                           t0_1_12_port, B(11) => t0_1_11_port, B(10) => 
                           t0_1_10_port, B(9) => t0_1_9_port, B(8) => 
                           t0_1_8_port, B(7) => t0_1_7_port, B(6) => 
                           t0_1_6_port, B(5) => t0_1_5_port, B(4) => 
                           t0_1_4_port, B(3) => t0_1_3_port, B(2) => 
                           t0_1_2_port, B(1) => t0_1_1_port, B(0) => 
                           t0_1_0_port, CI => net5308, DIFF(23) => n182, 
                           DIFF(22) => n183, DIFF(21) => n184, DIFF(20) => n185
                           , DIFF(19) => n186, DIFF(18) => n187, DIFF(17) => 
                           n188, DIFF(16) => n189, DIFF(15) => n190, DIFF(14) 
                           => n191, DIFF(13) => n192, DIFF(12) => n193, 
                           DIFF(11) => n194, DIFF(10) => n83, DIFF(9) => n84, 
                           DIFF(8) => n85, DIFF(7) => n86, DIFF(6) => n87, 
                           DIFF(5) => n88, DIFF(4) => n89, DIFF(3) => n90, 
                           DIFF(2) => n91, DIFF(1) => n92, DIFF(0) => n93, CO 
                           => n_1338);
   add_1_root_sub_0_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_16_DW01_add_35 
                           port map( A(23) => n182, A(22) => n183, A(21) => 
                           n184, A(20) => n185, A(19) => n186, A(18) => n187, 
                           A(17) => n188, A(16) => n189, A(15) => n190, A(14) 
                           => n191, A(13) => n192, A(12) => n193, A(11) => n194
                           , A(10) => n83, A(9) => n84, A(8) => n85, A(7) => 
                           n86, A(6) => n87, A(5) => n88, A(4) => n89, A(3) => 
                           n90, A(2) => n91, A(1) => n92, A(0) => n93, B(23) =>
                           n159, B(22) => n160, B(21) => n161, B(20) => n162, 
                           B(19) => n163, B(18) => n164, B(17) => n165, B(16) 
                           => n166, B(15) => n167, B(14) => n168, B(13) => n169
                           , B(12) => n170, B(11) => n171, B(10) => n172, B(9) 
                           => n173, B(8) => n174, B(7) => n175, B(6) => n176, 
                           B(5) => n177, B(4) => n178, B(3) => n179, B(2) => 
                           n180, B(1) => n181, B(0) => net5308, CI => net5308, 
                           SUM(23) => n94, SUM(22) => n95, SUM(21) => n96, 
                           SUM(20) => n97, SUM(19) => n98, SUM(18) => n99, 
                           SUM(17) => n100, SUM(16) => n101, SUM(15) => n102, 
                           SUM(14) => n103, SUM(13) => n104, SUM(12) => n105, 
                           SUM(11) => n106, SUM(10) => n107, SUM(9) => n108, 
                           SUM(8) => n109, SUM(7) => n110, SUM(6) => n111, 
                           SUM(5) => n112, SUM(4) => n113, SUM(3) => n114, 
                           SUM(2) => n115, SUM(1) => n116, SUM(0) => n117, CO 
                           => n_1339);
   sub_0_root_sub_0_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_5_DW01_sub_11 
                           port map( A(23) => n94, A(22) => n95, A(21) => n96, 
                           A(20) => n97, A(19) => n98, A(18) => n99, A(17) => 
                           n100, A(16) => n101, A(15) => n102, A(14) => n103, 
                           A(13) => n104, A(12) => n105, A(11) => n106, A(10) 
                           => n107, A(9) => n108, A(8) => n109, A(7) => n110, 
                           A(6) => n111, A(5) => n112, A(4) => n113, A(3) => 
                           n114, A(2) => n115, A(1) => n116, A(0) => n117, 
                           B(23) => pair0_28_12_port, B(22) => pair0_28_12_port
                           , B(21) => pair0_28_12_port, B(20) => 
                           pair0_28_12_port, B(19) => pair0_28_12_port, B(18) 
                           => pair0_28_12_port, B(17) => pair0_28_12_port, 
                           B(16) => pair0_28_12_port, B(15) => pair0_28_12_port
                           , B(14) => pair0_28_12_port, B(13) => 
                           pair0_28_12_port, B(12) => pair0_28_12_port, B(11) 
                           => pair0_28_11_port, B(10) => pair0_28_10_port, B(9)
                           => pair0_28_9_port, B(8) => pair0_28_8_port, B(7) =>
                           pair0_28_7_port, B(6) => pair0_28_6_port, B(5) => 
                           pair0_28_5_port, B(4) => pair0_28_4_port, B(3) => 
                           pair0_28_3_port, B(2) => pair0_28_2_port, B(1) => 
                           pair0_28_1_port, B(0) => pair0_28_0_port, CI => 
                           net5308, DIFF(23) => data_out_4_port, DIFF(22) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_22_port, DIFF(21) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_21_port, DIFF(20) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_20_port, DIFF(19) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_19_port, DIFF(18) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_18_port, DIFF(17) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_17_port, DIFF(16) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_16_port, DIFF(15) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_15_port, DIFF(14) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_14_port, DIFF(13) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_13_port, DIFF(12) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_12_port, DIFF(11) => 
                           n_1340, DIFF(10) => n_1341, DIFF(9) => n_1342, 
                           DIFF(8) => n_1343, DIFF(7) => n_1344, DIFF(6) => 
                           n_1345, DIFF(5) => n_1346, DIFF(4) => n_1347, 
                           DIFF(3) => n_1348, DIFF(2) => n_1349, DIFF(1) => 
                           n_1350, DIFF(0) => n_1351, CO => n_1352);
   add_1_root_add_285 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_15_DW01_add_33 
                           port map( A(19) => p206_2_15_port, A(18) => 
                           p206_2_15_port, A(17) => pair13_15_11_port, A(16) =>
                           pair13_15_10_port, A(15) => pair13_15_9_port, A(14) 
                           => pair13_15_8_port, A(13) => pair13_15_7_port, 
                           A(12) => pair13_15_6_port, A(11) => pair13_15_5_port
                           , A(10) => pair13_15_4_port, A(9) => 
                           pair13_15_3_port, A(8) => pair13_15_2_port, A(7) => 
                           p206_2_1_port, A(6) => p206_3_0_port, A(5) => 
                           net5308, A(4) => net5308, A(3) => net5308, A(2) => 
                           net5308, A(1) => net5308, A(0) => net5308, B(19) => 
                           p206_2_15_port, B(18) => p206_2_15_port, B(17) => 
                           p206_2_14_port, B(16) => p206_2_13_port, B(15) => 
                           p206_2_12_port, B(14) => p206_2_11_port, B(13) => 
                           p206_2_10_port, B(12) => p206_2_9_port, B(11) => 
                           p206_2_8_port, B(10) => p206_2_7_port, B(9) => 
                           p206_2_6_port, B(8) => p206_2_5_port, B(7) => 
                           p206_2_4_port, B(6) => p206_2_3_port, B(5) => 
                           p206_2_2_port, B(4) => p206_2_1_port, B(3) => 
                           p206_3_0_port, B(2) => net5308, B(1) => net5308, 
                           B(0) => net5308, CI => net5308, SUM(19) => 
                           p206_1_19_port, SUM(18) => p206_1_18_port, SUM(17) 
                           => p206_1_17_port, SUM(16) => p206_1_16_port, 
                           SUM(15) => p206_1_15_port, SUM(14) => p206_1_14_port
                           , SUM(13) => p206_1_13_port, SUM(12) => 
                           p206_1_12_port, SUM(11) => p206_1_11_port, SUM(10) 
                           => p206_1_10_port, SUM(9) => p206_1_9_port, SUM(8) 
                           => p206_1_8_port, SUM(7) => p206_1_7_port, SUM(6) =>
                           p206_1_6_port, SUM(5) => p206_1_5_port, SUM(4) => 
                           p206_1_4_port, SUM(3) => p206_1_3_port, SUM(2) => 
                           n_1353, SUM(1) => n_1354, SUM(0) => n_1355, CO => 
                           n_1356);
   add_2_root_sub_287 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_11_DW01_add_20 
                           port map( A(12) => arx_input_reg_286_port, A(11) => 
                           arx_input_reg_286_port, A(10) => 
                           arx_input_reg_285_port, A(9) => 
                           arx_input_reg_284_port, A(8) => 
                           arx_input_reg_283_port, A(7) => 
                           arx_input_reg_282_port, A(6) => 
                           arx_input_reg_281_port, A(5) => 
                           arx_input_reg_280_port, A(4) => 
                           arx_input_reg_279_port, A(3) => 
                           arx_input_reg_278_port, A(2) => 
                           arx_input_reg_277_port, A(1) => 
                           arx_input_reg_276_port, A(0) => 
                           arx_input_reg_275_port, B(12) => 
                           arx_input_reg_71_port, B(11) => 
                           arx_input_reg_71_port, B(10) => 
                           arx_input_reg_70_port, B(9) => arx_input_reg_69_port
                           , B(8) => arx_input_reg_68_port, B(7) => 
                           arx_input_reg_67_port, B(6) => arx_input_reg_66_port
                           , B(5) => arx_input_reg_65_port, B(4) => 
                           arx_input_reg_64_port, B(3) => arx_input_reg_63_port
                           , B(2) => arx_input_reg_62_port, B(1) => 
                           arx_input_reg_61_port, B(0) => arx_input_reg_60_port
                           , CI => net5308, SUM(12) => pair4_24_12_port, 
                           SUM(11) => pair4_24_11_port, SUM(10) => 
                           pair4_24_10_port, SUM(9) => pair4_24_9_port, SUM(8) 
                           => pair4_24_8_port, SUM(7) => pair4_24_7_port, 
                           SUM(6) => pair4_24_6_port, SUM(5) => pair4_24_5_port
                           , SUM(4) => pair4_24_4_port, SUM(3) => 
                           pair4_24_3_port, SUM(2) => pair4_24_2_port, SUM(1) 
                           => pair4_24_1_port, SUM(0) => pair4_24_0_port, CO =>
                           n_1357);
   add_3_root_sub_287 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_10_DW01_add_19 
                           port map( A(12) => arx_input_reg_298_port, A(11) => 
                           arx_input_reg_298_port, A(10) => 
                           arx_input_reg_297_port, A(9) => 
                           arx_input_reg_296_port, A(8) => 
                           arx_input_reg_295_port, A(7) => 
                           arx_input_reg_294_port, A(6) => 
                           arx_input_reg_293_port, A(5) => 
                           arx_input_reg_292_port, A(4) => 
                           arx_input_reg_291_port, A(3) => 
                           arx_input_reg_290_port, A(2) => 
                           arx_input_reg_289_port, A(1) => 
                           arx_input_reg_288_port, A(0) => 
                           arx_input_reg_287_port, B(12) => 
                           arx_input_reg_59_port, B(11) => 
                           arx_input_reg_59_port, B(10) => 
                           arx_input_reg_58_port, B(9) => arx_input_reg_57_port
                           , B(8) => arx_input_reg_56_port, B(7) => 
                           arx_input_reg_55_port, B(6) => arx_input_reg_54_port
                           , B(5) => arx_input_reg_53_port, B(4) => 
                           arx_input_reg_52_port, B(3) => arx_input_reg_51_port
                           , B(2) => arx_input_reg_50_port, B(1) => 
                           arx_input_reg_49_port, B(0) => arx_input_reg_48_port
                           , CI => net5308, SUM(12) => pair5_23_12_port, 
                           SUM(11) => pair5_23_11_port, SUM(10) => 
                           pair5_23_10_port, SUM(9) => pair5_23_9_port, SUM(8) 
                           => pair5_23_8_port, SUM(7) => pair5_23_7_port, 
                           SUM(6) => pair5_23_6_port, SUM(5) => pair5_23_5_port
                           , SUM(4) => pair5_23_4_port, SUM(3) => 
                           pair5_23_3_port, SUM(2) => pair5_23_2_port, SUM(1) 
                           => pair5_23_1_port, SUM(0) => pair5_23_0_port, CO =>
                           n_1358);
   add_1_root_sub_287 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_9_DW01_add_18 
                           port map( A(13) => pair5_23_12_port, A(12) => 
                           pair5_23_12_port, A(11) => pair5_23_11_port, A(10) 
                           => pair5_23_10_port, A(9) => pair5_23_9_port, A(8) 
                           => pair5_23_8_port, A(7) => pair5_23_7_port, A(6) =>
                           pair5_23_6_port, A(5) => pair5_23_5_port, A(4) => 
                           pair5_23_4_port, A(3) => pair5_23_3_port, A(2) => 
                           pair5_23_2_port, A(1) => pair5_23_1_port, A(0) => 
                           pair5_23_0_port, B(13) => pair4_24_12_port, B(12) =>
                           pair4_24_12_port, B(11) => pair4_24_11_port, B(10) 
                           => pair4_24_10_port, B(9) => pair4_24_9_port, B(8) 
                           => pair4_24_8_port, B(7) => pair4_24_7_port, B(6) =>
                           pair4_24_6_port, B(5) => pair4_24_5_port, B(4) => 
                           pair4_24_4_port, B(3) => pair4_24_3_port, B(2) => 
                           pair4_24_2_port, B(1) => pair4_24_1_port, B(0) => 
                           pair4_24_0_port, CI => net5308, SUM(13) => 
                           t4_5_13_port, SUM(12) => t4_5_12_port, SUM(11) => 
                           t4_5_11_port, SUM(10) => t4_5_10_port, SUM(9) => 
                           t4_5_9_port, SUM(8) => t4_5_8_port, SUM(7) => 
                           t4_5_7_port, SUM(6) => t4_5_6_port, SUM(5) => 
                           t4_5_5_port, SUM(4) => t4_5_4_port, SUM(3) => 
                           t4_5_3_port, SUM(2) => t4_5_2_port, SUM(1) => 
                           t4_5_1_port, SUM(0) => t4_5_0_port, CO => n_1359);
   sub_0_root_sub_287 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_1_DW01_sub_3 
                           port map( A(16) => t4_5_13_port, A(15) => 
                           t4_5_13_port, A(14) => t4_5_13_port, A(13) => 
                           t4_5_13_port, A(12) => t4_5_12_port, A(11) => 
                           t4_5_11_port, A(10) => t4_5_10_port, A(9) => 
                           t4_5_9_port, A(8) => t4_5_8_port, A(7) => 
                           t4_5_7_port, A(6) => t4_5_6_port, A(5) => 
                           t4_5_5_port, A(4) => t4_5_4_port, A(3) => 
                           t4_5_3_port, A(2) => t4_5_2_port, A(1) => 
                           t4_5_1_port, A(0) => t4_5_0_port, B(16) => 
                           t8_9_13_port, B(15) => t8_9_13_port, B(14) => 
                           t8_9_12_port, B(13) => t8_9_11_port, B(12) => 
                           t8_9_10_port, B(11) => t8_9_9_port, B(10) => 
                           t8_9_8_port, B(9) => t8_9_7_port, B(8) => 
                           t8_9_6_port, B(7) => t8_9_5_port, B(6) => 
                           t8_9_4_port, B(5) => t8_9_3_port, B(4) => 
                           t8_9_2_port, B(3) => t8_9_1_port, B(2) => 
                           t8_9_0_port, B(1) => net5308, B(0) => net5308, CI =>
                           net5308, DIFF(16) => t4_5_8_9_19_port, DIFF(15) => 
                           t4_5_8_9_18_port, DIFF(14) => t4_5_8_9_17_port, 
                           DIFF(13) => t4_5_8_9_16_port, DIFF(12) => 
                           t4_5_8_9_15_port, DIFF(11) => t4_5_8_9_14_port, 
                           DIFF(10) => t4_5_8_9_13_port, DIFF(9) => 
                           t4_5_8_9_12_port, DIFF(8) => t4_5_8_9_11_port, 
                           DIFF(7) => t4_5_8_9_10_port, DIFF(6) => 
                           t4_5_8_9_9_port, DIFF(5) => t4_5_8_9_8_port, DIFF(4)
                           => t4_5_8_9_7_port, DIFF(3) => t4_5_8_9_6_port, 
                           DIFF(2) => t4_5_8_9_5_port, DIFF(1) => 
                           t4_5_8_9_4_port, DIFF(0) => t4_5_8_9_3_port, CO => 
                           n_1360);
   add_2_root_add_286 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_12_DW01_add_27 
                           port map( A(17) => pair11_17_12_port, A(16) => 
                           pair11_17_12_port, A(15) => pair11_17_12_port, A(14)
                           => pair11_17_11_port, A(13) => pair11_17_10_port, 
                           A(12) => pair11_17_9_port, A(11) => pair11_17_8_port
                           , A(10) => pair11_17_7_port, A(9) => 
                           pair11_17_6_port, A(8) => pair11_17_5_port, A(7) => 
                           pair11_17_4_port, A(6) => pair11_17_3_port, A(5) => 
                           pair11_17_2_port, A(4) => pair11_17_1_port, A(3) => 
                           pair11_17_0_port, A(2) => net5308, A(1) => net5308, 
                           A(0) => net5308, B(17) => p232_2_17_port, B(16) => 
                           p232_2_17_port, B(15) => arx_input_reg_177_port, 
                           B(14) => arx_input_reg_176_port, B(13) => 
                           arx_input_reg_175_port, B(12) => 
                           arx_input_reg_174_port, B(11) => 
                           arx_input_reg_173_port, B(10) => 
                           arx_input_reg_172_port, B(9) => 
                           arx_input_reg_171_port, B(8) => 
                           arx_input_reg_170_port, B(7) => 
                           arx_input_reg_169_port, B(6) => 
                           arx_input_reg_168_port, B(5) => p232_2_0_port, B(4) 
                           => net5308, B(3) => net5308, B(2) => net5308, B(1) 
                           => net5308, B(0) => net5308, CI => net5308, SUM(17) 
                           => n62, SUM(16) => n75, SUM(15) => n76, SUM(14) => 
                           n77, SUM(13) => n78, SUM(12) => n79, SUM(11) => n80,
                           SUM(10) => n81, SUM(9) => n82, SUM(8) => n63, SUM(7)
                           => n64, SUM(6) => n65, SUM(5) => n66, SUM(4) => n67,
                           SUM(3) => n74, SUM(2) => n_1361, SUM(1) => n_1362, 
                           SUM(0) => n_1363, CO => n_1364);
   sub_0_root_add_286 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_2_DW01_sub_5 
                           port map( A(18) => n62, A(17) => n62, A(16) => n75, 
                           A(15) => n76, A(14) => n77, A(13) => n78, A(12) => 
                           n79, A(11) => n80, A(10) => n81, A(9) => n82, A(8) 
                           => n63, A(7) => n64, A(6) => n65, A(5) => n66, A(4) 
                           => n67, A(3) => n74, A(2) => net5308, A(1) => 
                           net5308, A(0) => net5308, B(18) => p232_2_17_port, 
                           B(17) => p232_2_17_port, B(16) => p232_2_17_port, 
                           B(15) => p232_2_17_port, B(14) => p232_2_17_port, 
                           B(13) => p232_2_17_port, B(12) => p232_2_12_port, 
                           B(11) => p232_2_11_port, B(10) => p232_2_10_port, 
                           B(9) => p232_2_9_port, B(8) => p232_2_8_port, B(7) 
                           => p232_2_7_port, B(6) => p232_2_6_port, B(5) => 
                           p232_2_5_port, B(4) => p232_2_4_port, B(3) => 
                           p232_2_3_port, B(2) => p232_2_2_port, B(1) => 
                           p232_2_1_port, B(0) => p232_2_0_port, CI => net5308,
                           DIFF(18) => t11_14_18_port, DIFF(17) => 
                           t11_14_17_port, DIFF(16) => t11_14_16_port, DIFF(15)
                           => t11_14_15_port, DIFF(14) => t11_14_14_port, 
                           DIFF(13) => t11_14_13_port, DIFF(12) => 
                           t11_14_12_port, DIFF(11) => t11_14_11_port, DIFF(10)
                           => t11_14_10_port, DIFF(9) => t11_14_9_port, DIFF(8)
                           => t11_14_8_port, DIFF(7) => t11_14_7_port, DIFF(6) 
                           => t11_14_6_port, DIFF(5) => t11_14_5_port, DIFF(4) 
                           => t11_14_4_port, DIFF(3) => t11_14_3_port, DIFF(2) 
                           => t11_14_2_port, DIFF(1) => t11_14_1_port, DIFF(0) 
                           => t11_14_0_port, CO => n_1365);
   add_1_root_add_277 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_8_DW01_add_14 
                           port map( A(12) => arx_input_reg_238_port, A(11) => 
                           arx_input_reg_238_port, A(10) => 
                           arx_input_reg_237_port, A(9) => 
                           arx_input_reg_236_port, A(8) => 
                           arx_input_reg_235_port, A(7) => 
                           arx_input_reg_234_port, A(6) => 
                           arx_input_reg_233_port, A(5) => 
                           arx_input_reg_232_port, A(4) => 
                           arx_input_reg_231_port, A(3) => 
                           arx_input_reg_230_port, A(2) => 
                           arx_input_reg_229_port, A(1) => 
                           arx_input_reg_228_port, A(0) => 
                           arx_input_reg_227_port, B(12) => 
                           arx_input_reg_119_port, B(11) => 
                           arx_input_reg_119_port, B(10) => 
                           arx_input_reg_118_port, B(9) => 
                           arx_input_reg_117_port, B(8) => 
                           arx_input_reg_116_port, B(7) => 
                           arx_input_reg_115_port, B(6) => 
                           arx_input_reg_114_port, B(5) => 
                           arx_input_reg_113_port, B(4) => 
                           arx_input_reg_112_port, B(3) => 
                           arx_input_reg_111_port, B(2) => 
                           arx_input_reg_110_port, B(1) => 
                           arx_input_reg_109_port, B(0) => 
                           arx_input_reg_108_port, CI => net5308, SUM(12) => 
                           pair8_20_12_port, SUM(11) => pair8_20_11_port, 
                           SUM(10) => pair8_20_10_port, SUM(9) => 
                           pair8_20_9_port, SUM(8) => pair8_20_8_port, SUM(7) 
                           => pair8_20_7_port, SUM(6) => pair8_20_6_port, 
                           SUM(5) => pair8_20_5_port, SUM(4) => pair8_20_4_port
                           , SUM(3) => pair8_20_3_port, SUM(2) => 
                           pair8_20_2_port, SUM(1) => pair8_20_1_port, SUM(0) 
                           => pair8_20_0_port, CO => n_1366);
   add_2_root_add_277 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_7_DW01_add_13 
                           port map( A(12) => arx_input_reg_250_port, A(11) => 
                           arx_input_reg_250_port, A(10) => 
                           arx_input_reg_249_port, A(9) => 
                           arx_input_reg_248_port, A(8) => 
                           arx_input_reg_247_port, A(7) => 
                           arx_input_reg_246_port, A(6) => 
                           arx_input_reg_245_port, A(5) => 
                           arx_input_reg_244_port, A(4) => 
                           arx_input_reg_243_port, A(3) => 
                           arx_input_reg_242_port, A(2) => 
                           arx_input_reg_241_port, A(1) => 
                           arx_input_reg_240_port, A(0) => 
                           arx_input_reg_239_port, B(12) => 
                           arx_input_reg_107_port, B(11) => 
                           arx_input_reg_107_port, B(10) => 
                           arx_input_reg_106_port, B(9) => 
                           arx_input_reg_105_port, B(8) => 
                           arx_input_reg_104_port, B(7) => 
                           arx_input_reg_103_port, B(6) => 
                           arx_input_reg_102_port, B(5) => 
                           arx_input_reg_101_port, B(4) => 
                           arx_input_reg_100_port, B(3) => 
                           arx_input_reg_99_port, B(2) => arx_input_reg_98_port
                           , B(1) => arx_input_reg_97_port, B(0) => 
                           arx_input_reg_96_port, CI => net5308, SUM(12) => 
                           pair9_19_12_port, SUM(11) => pair9_19_11_port, 
                           SUM(10) => pair9_19_10_port, SUM(9) => 
                           pair9_19_9_port, SUM(8) => pair9_19_8_port, SUM(7) 
                           => pair9_19_7_port, SUM(6) => pair9_19_6_port, 
                           SUM(5) => pair9_19_5_port, SUM(4) => pair9_19_4_port
                           , SUM(3) => pair9_19_3_port, SUM(2) => 
                           pair9_19_2_port, SUM(1) => pair9_19_1_port, SUM(0) 
                           => pair9_19_0_port, CO => n_1367);
   add_0_root_add_277 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_6_DW01_add_12 
                           port map( A(13) => pair9_19_12_port, A(12) => 
                           pair9_19_12_port, A(11) => pair9_19_11_port, A(10) 
                           => pair9_19_10_port, A(9) => pair9_19_9_port, A(8) 
                           => pair9_19_8_port, A(7) => pair9_19_7_port, A(6) =>
                           pair9_19_6_port, A(5) => pair9_19_5_port, A(4) => 
                           pair9_19_4_port, A(3) => pair9_19_3_port, A(2) => 
                           pair9_19_2_port, A(1) => pair9_19_1_port, A(0) => 
                           pair9_19_0_port, B(13) => pair8_20_12_port, B(12) =>
                           pair8_20_12_port, B(11) => pair8_20_11_port, B(10) 
                           => pair8_20_10_port, B(9) => pair8_20_9_port, B(8) 
                           => pair8_20_8_port, B(7) => pair8_20_7_port, B(6) =>
                           pair8_20_6_port, B(5) => pair8_20_5_port, B(4) => 
                           pair8_20_4_port, B(3) => pair8_20_3_port, B(2) => 
                           pair8_20_2_port, B(1) => pair8_20_1_port, B(0) => 
                           pair8_20_0_port, CI => net5308, SUM(13) => 
                           t8_9_13_port, SUM(12) => t8_9_12_port, SUM(11) => 
                           t8_9_11_port, SUM(10) => t8_9_10_port, SUM(9) => 
                           t8_9_9_port, SUM(8) => t8_9_8_port, SUM(7) => 
                           t8_9_7_port, SUM(6) => t8_9_6_port, SUM(5) => 
                           t8_9_5_port, SUM(4) => t8_9_4_port, SUM(3) => 
                           t8_9_3_port, SUM(2) => t8_9_2_port, SUM(1) => 
                           t8_9_1_port, SUM(0) => t8_9_0_port, CO => n_1368);
   add_1_root_sub_279 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_add_14_DW01_add_29 
                           port map( A(12) => arx_input_reg_310_port, A(11) => 
                           arx_input_reg_310_port, A(10) => 
                           arx_input_reg_309_port, A(9) => 
                           arx_input_reg_308_port, A(8) => 
                           arx_input_reg_307_port, A(7) => 
                           arx_input_reg_306_port, A(6) => 
                           arx_input_reg_305_port, A(5) => 
                           arx_input_reg_304_port, A(4) => 
                           arx_input_reg_303_port, A(3) => 
                           arx_input_reg_302_port, A(2) => 
                           arx_input_reg_301_port, A(1) => 
                           arx_input_reg_300_port, A(0) => 
                           arx_input_reg_299_port, B(12) => 
                           arx_input_reg_47_port, B(11) => 
                           arx_input_reg_47_port, B(10) => 
                           arx_input_reg_46_port, B(9) => arx_input_reg_45_port
                           , B(8) => arx_input_reg_44_port, B(7) => 
                           arx_input_reg_43_port, B(6) => arx_input_reg_42_port
                           , B(5) => arx_input_reg_41_port, B(4) => 
                           arx_input_reg_40_port, B(3) => arx_input_reg_39_port
                           , B(2) => arx_input_reg_38_port, B(1) => 
                           arx_input_reg_37_port, B(0) => arx_input_reg_36_port
                           , CI => net5308, SUM(12) => pair3_25_12_port, 
                           SUM(11) => pair3_25_11_port, SUM(10) => 
                           pair3_25_10_port, SUM(9) => pair3_25_9_port, SUM(8) 
                           => pair3_25_8_port, SUM(7) => pair3_25_7_port, 
                           SUM(6) => pair3_25_6_port, SUM(5) => pair3_25_5_port
                           , SUM(4) => pair3_25_4_port, SUM(3) => 
                           pair3_25_3_port, SUM(2) => pair3_25_2_port, SUM(1) 
                           => pair3_25_1_port, SUM(0) => pair3_25_0_port, CO =>
                           n_1369);
   sub_0_root_sub_279 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0_DW01_sub_3_DW01_sub_6 
                           port map( A(15) => pair3_25_12_port, A(14) => 
                           pair3_25_12_port, A(13) => pair3_25_12_port, A(12) 
                           => pair3_25_12_port, A(11) => pair3_25_11_port, 
                           A(10) => pair3_25_10_port, A(9) => pair3_25_9_port, 
                           A(8) => pair3_25_8_port, A(7) => pair3_25_7_port, 
                           A(6) => pair3_25_6_port, A(5) => pair3_25_5_port, 
                           A(4) => pair3_25_4_port, A(3) => pair3_25_3_port, 
                           A(2) => pair3_25_2_port, A(1) => pair3_25_1_port, 
                           A(0) => pair3_25_0_port, B(15) => pair7_21_12_port, 
                           B(14) => pair7_21_12_port, B(13) => pair7_21_11_port
                           , B(12) => pair7_21_10_port, B(11) => 
                           pair7_21_9_port, B(10) => pair7_21_8_port, B(9) => 
                           pair7_21_7_port, B(8) => pair7_21_6_port, B(7) => 
                           pair7_21_5_port, B(6) => pair7_21_4_port, B(5) => 
                           pair7_21_3_port, B(4) => pair7_21_2_port, B(3) => 
                           pair7_21_1_port, B(2) => pair7_21_0_port, B(1) => 
                           net5308, B(0) => net5308, CI => net5308, DIFF(15) =>
                           t3_7_15_port, DIFF(14) => t3_7_14_port, DIFF(13) => 
                           t3_7_13_port, DIFF(12) => t3_7_12_port, DIFF(11) => 
                           t3_7_11_port, DIFF(10) => t3_7_10_port, DIFF(9) => 
                           t3_7_9_port, DIFF(8) => t3_7_8_port, DIFF(7) => 
                           t3_7_7_port, DIFF(6) => t3_7_6_port, DIFF(5) => 
                           t3_7_5_port, DIFF(4) => t3_7_4_port, DIFF(3) => 
                           t3_7_3_port, DIFF(2) => t3_7_2_port, DIFF(1) => 
                           t3_7_1_port, DIFF(0) => t3_7_0_port, CO => n_1370);
   add_284_U1_3 : ADFULD1 port map( A => p206_2_1_port, B => pair13_15_3_port, 
                           CI => add_284_carry_3_port, CO => 
                           add_284_carry_4_port, S => p206_2_3_port);
   add_284_U1_4 : ADFULD1 port map( A => pair13_15_2_port, B => 
                           pair13_15_4_port, CI => add_284_carry_4_port, CO => 
                           add_284_carry_5_port, S => p206_2_4_port);
   add_284_U1_5 : ADFULD1 port map( A => pair13_15_3_port, B => 
                           pair13_15_5_port, CI => add_284_carry_5_port, CO => 
                           add_284_carry_6_port, S => p206_2_5_port);
   add_284_U1_6 : ADFULD1 port map( A => pair13_15_4_port, B => 
                           pair13_15_6_port, CI => add_284_carry_6_port, CO => 
                           add_284_carry_7_port, S => p206_2_6_port);
   add_284_U1_7 : ADFULD1 port map( A => pair13_15_5_port, B => 
                           pair13_15_7_port, CI => add_284_carry_7_port, CO => 
                           add_284_carry_8_port, S => p206_2_7_port);
   add_284_U1_8 : ADFULD1 port map( A => pair13_15_6_port, B => 
                           pair13_15_8_port, CI => add_284_carry_8_port, CO => 
                           add_284_carry_9_port, S => p206_2_8_port);
   add_284_U1_9 : ADFULD1 port map( A => pair13_15_7_port, B => 
                           pair13_15_9_port, CI => add_284_carry_9_port, CO => 
                           add_284_carry_10_port, S => p206_2_9_port);
   add_284_U1_10 : ADFULD1 port map( A => pair13_15_8_port, B => 
                           pair13_15_10_port, CI => add_284_carry_10_port, CO 
                           => add_284_carry_11_port, S => p206_2_10_port);
   add_284_U1_11 : ADFULD1 port map( A => pair13_15_9_port, B => 
                           pair13_15_11_port, CI => add_284_carry_11_port, CO 
                           => add_284_carry_12_port, S => p206_2_11_port);
   add_284_U1_12 : ADFULD1 port map( A => pair13_15_10_port, B => 
                           p206_2_15_port, CI => add_284_carry_12_port, CO => 
                           add_284_carry_13_port, S => p206_2_12_port);
   add_284_U1_13 : ADFULD1 port map( A => pair13_15_11_port, B => 
                           p206_2_15_port, CI => add_284_carry_13_port, CO => 
                           p206_2_14_port, S => p206_2_13_port);
   sub_280_U2_6 : ADFULD1 port map( A => p141_1_0_port, B => n55, CI => 
                           sub_280_carry_6_port, CO => sub_280_carry_7_port, S 
                           => p141_1_6_port);
   sub_280_U2_7 : ADFULD1 port map( A => pair12_16_1_port, B => n56, CI => 
                           sub_280_carry_7_port, CO => sub_280_carry_8_port, S 
                           => p141_1_7_port);
   sub_280_U2_8 : ADFULD1 port map( A => pair12_16_2_port, B => n57, CI => 
                           sub_280_carry_8_port, CO => sub_280_carry_9_port, S 
                           => p141_1_8_port);
   sub_280_U2_9 : ADFULD1 port map( A => pair12_16_3_port, B => n58, CI => 
                           sub_280_carry_9_port, CO => sub_280_carry_10_port, S
                           => p141_1_9_port);
   sub_280_U2_10 : ADFULD1 port map( A => pair12_16_4_port, B => n59, CI => 
                           sub_280_carry_10_port, CO => sub_280_carry_11_port, 
                           S => p141_1_10_port);
   sub_280_U2_11 : ADFULD1 port map( A => pair12_16_5_port, B => n60, CI => 
                           sub_280_carry_11_port, CO => sub_280_carry_12_port, 
                           S => p141_1_11_port);
   sub_280_U2_12 : ADFULD1 port map( A => pair12_16_6_port, B => n61, CI => 
                           sub_280_carry_12_port, CO => sub_280_carry_13_port, 
                           S => p141_1_12_port);
   sub_280_U2_13 : ADFULD1 port map( A => pair12_16_7_port, B => n61, CI => 
                           sub_280_carry_13_port, CO => sub_280_carry_14_port, 
                           S => p141_1_13_port);
   sub_280_U2_14 : ADFULD1 port map( A => pair12_16_8_port, B => n61, CI => 
                           sub_280_carry_14_port, CO => sub_280_carry_15_port, 
                           S => p141_1_14_port);
   sub_280_U2_15 : ADFULD1 port map( A => pair12_16_9_port, B => n61, CI => 
                           sub_280_carry_15_port, CO => sub_280_carry_16_port, 
                           S => p141_1_15_port);
   sub_280_U2_16 : ADFULD1 port map( A => pair12_16_10_port, B => n61, CI => 
                           sub_280_carry_16_port, CO => sub_280_carry_17_port, 
                           S => p141_1_16_port);
   sub_280_U2_17 : ADFULD1 port map( A => pair12_16_11_port, B => n61, CI => 
                           sub_280_carry_17_port, CO => sub_280_carry_18_port, 
                           S => p141_1_17_port);
   add_1_root_add_286_U1_2 : ADFULD1 port map( A => arx_input_reg_169_port, B 
                           => arx_input_reg_168_port, CI => 
                           add_1_root_add_286_carry_2_port, CO => 
                           add_1_root_add_286_carry_3_port, S => p232_2_2_port)
                           ;
   add_1_root_add_286_U1_3 : ADFULD1 port map( A => arx_input_reg_170_port, B 
                           => arx_input_reg_169_port, CI => 
                           add_1_root_add_286_carry_3_port, CO => 
                           add_1_root_add_286_carry_4_port, S => p232_2_3_port)
                           ;
   add_1_root_add_286_U1_4 : ADFULD1 port map( A => arx_input_reg_171_port, B 
                           => arx_input_reg_170_port, CI => 
                           add_1_root_add_286_carry_4_port, CO => 
                           add_1_root_add_286_carry_5_port, S => p232_2_4_port)
                           ;
   add_1_root_add_286_U1_5 : ADFULD1 port map( A => arx_input_reg_172_port, B 
                           => arx_input_reg_171_port, CI => 
                           add_1_root_add_286_carry_5_port, CO => 
                           add_1_root_add_286_carry_6_port, S => p232_2_5_port)
                           ;
   add_1_root_add_286_U1_6 : ADFULD1 port map( A => arx_input_reg_173_port, B 
                           => arx_input_reg_172_port, CI => 
                           add_1_root_add_286_carry_6_port, CO => 
                           add_1_root_add_286_carry_7_port, S => p232_2_6_port)
                           ;
   add_1_root_add_286_U1_7 : ADFULD1 port map( A => arx_input_reg_174_port, B 
                           => arx_input_reg_173_port, CI => 
                           add_1_root_add_286_carry_7_port, CO => 
                           add_1_root_add_286_carry_8_port, S => p232_2_7_port)
                           ;
   add_1_root_add_286_U1_8 : ADFULD1 port map( A => arx_input_reg_175_port, B 
                           => arx_input_reg_174_port, CI => 
                           add_1_root_add_286_carry_8_port, CO => 
                           add_1_root_add_286_carry_9_port, S => p232_2_8_port)
                           ;
   add_1_root_add_286_U1_9 : ADFULD1 port map( A => arx_input_reg_176_port, B 
                           => arx_input_reg_175_port, CI => 
                           add_1_root_add_286_carry_9_port, CO => 
                           add_1_root_add_286_carry_10_port, S => p232_2_9_port
                           );
   add_1_root_add_286_U1_10 : ADFULD1 port map( A => arx_input_reg_177_port, B 
                           => arx_input_reg_176_port, CI => 
                           add_1_root_add_286_carry_10_port, CO => 
                           add_1_root_add_286_carry_11_port, S => 
                           p232_2_10_port);
   add_1_root_add_286_U1_11 : ADFULD1 port map( A => p232_2_17_port, B => 
                           arx_input_reg_177_port, CI => 
                           add_1_root_add_286_carry_11_port, CO => 
                           p232_2_12_port, S => p232_2_11_port);
   sub_0_root_add_285_U2_3 : ADFULD1 port map( A => p206_1_3_port, B => n39, CI
                           => sub_0_root_add_285_carry_3_port, CO => 
                           sub_0_root_add_285_carry_4_port, S => p206_3_3_port)
                           ;
   sub_0_root_add_285_U2_4 : ADFULD1 port map( A => p206_1_4_port, B => n40, CI
                           => sub_0_root_add_285_carry_4_port, CO => 
                           sub_0_root_add_285_carry_5_port, S => p206_3_4_port)
                           ;
   sub_0_root_add_285_U2_5 : ADFULD1 port map( A => p206_1_5_port, B => n41, CI
                           => sub_0_root_add_285_carry_5_port, CO => 
                           sub_0_root_add_285_carry_6_port, S => p206_3_5_port)
                           ;
   sub_0_root_add_285_U2_6 : ADFULD1 port map( A => p206_1_6_port, B => n42, CI
                           => sub_0_root_add_285_carry_6_port, CO => 
                           sub_0_root_add_285_carry_7_port, S => p206_3_6_port)
                           ;
   sub_0_root_add_285_U2_7 : ADFULD1 port map( A => p206_1_7_port, B => n43, CI
                           => sub_0_root_add_285_carry_7_port, CO => 
                           sub_0_root_add_285_carry_8_port, S => p206_3_7_port)
                           ;
   sub_0_root_add_285_U2_8 : ADFULD1 port map( A => p206_1_8_port, B => n44, CI
                           => sub_0_root_add_285_carry_8_port, CO => 
                           sub_0_root_add_285_carry_9_port, S => p206_3_8_port)
                           ;
   sub_0_root_add_285_U2_9 : ADFULD1 port map( A => p206_1_9_port, B => n45, CI
                           => sub_0_root_add_285_carry_9_port, CO => 
                           sub_0_root_add_285_carry_10_port, S => p206_3_9_port
                           );
   sub_0_root_add_285_U2_10 : ADFULD1 port map( A => p206_1_10_port, B => n46, 
                           CI => sub_0_root_add_285_carry_10_port, CO => 
                           sub_0_root_add_285_carry_11_port, S => 
                           p206_3_10_port);
   sub_0_root_add_285_U2_11 : ADFULD1 port map( A => p206_1_11_port, B => n47, 
                           CI => sub_0_root_add_285_carry_11_port, CO => 
                           sub_0_root_add_285_carry_12_port, S => 
                           p206_3_11_port);
   sub_0_root_add_285_U2_12 : ADFULD1 port map( A => p206_1_12_port, B => n48, 
                           CI => sub_0_root_add_285_carry_12_port, CO => 
                           sub_0_root_add_285_carry_13_port, S => 
                           p206_3_12_port);
   sub_0_root_add_285_U2_13 : ADFULD1 port map( A => p206_1_13_port, B => n48, 
                           CI => sub_0_root_add_285_carry_13_port, CO => 
                           sub_0_root_add_285_carry_14_port, S => 
                           p206_3_13_port);
   sub_0_root_add_285_U2_14 : ADFULD1 port map( A => p206_1_14_port, B => n48, 
                           CI => sub_0_root_add_285_carry_14_port, CO => 
                           sub_0_root_add_285_carry_15_port, S => 
                           p206_3_14_port);
   sub_0_root_add_285_U2_15 : ADFULD1 port map( A => p206_1_15_port, B => n48, 
                           CI => sub_0_root_add_285_carry_15_port, CO => 
                           sub_0_root_add_285_carry_16_port, S => 
                           p206_3_15_port);
   sub_0_root_add_285_U2_16 : ADFULD1 port map( A => p206_1_16_port, B => n48, 
                           CI => sub_0_root_add_285_carry_16_port, CO => 
                           sub_0_root_add_285_carry_17_port, S => 
                           p206_3_16_port);
   sub_0_root_add_285_U2_17 : ADFULD1 port map( A => p206_1_17_port, B => n48, 
                           CI => sub_0_root_add_285_carry_17_port, CO => 
                           sub_0_root_add_285_carry_18_port, S => 
                           p206_3_17_port);
   sub_0_root_add_285_U2_18 : ADFULD1 port map( A => p206_1_18_port, B => n48, 
                           CI => sub_0_root_add_285_carry_18_port, CO => 
                           sub_0_root_add_285_carry_19_port, S => 
                           p206_3_18_port);
   sub_0_root_add_285_U2_19 : ADFULD1 port map( A => p206_1_19_port, B => n48, 
                           CI => sub_0_root_add_285_carry_19_port, CO => 
                           sub_0_root_add_285_carry_20_port, S => 
                           p206_3_19_port);
   sub_0_root_add_285_U2_20 : ADFULD1 port map( A => p206_1_19_port, B => n48, 
                           CI => sub_0_root_add_285_carry_20_port, CO => n_1371
                           , S => p206_3_20_port);
   arx_input_reg_reg_27_10_inst : DFFRPQ1 port map( D => arx_input_reg_22_port,
                           CK => clock, RB => n29, Q => arx_input_reg_10_port);
   arx_input_reg_reg_27_9_inst : DFFRPQ1 port map( D => arx_input_reg_21_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_9_port);
   arx_input_reg_reg_27_8_inst : DFFRPQ1 port map( D => arx_input_reg_20_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_8_port);
   arx_input_reg_reg_27_7_inst : DFFRPQ1 port map( D => arx_input_reg_19_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_7_port);
   arx_input_reg_reg_27_6_inst : DFFRPQ1 port map( D => arx_input_reg_18_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_6_port);
   arx_input_reg_reg_27_5_inst : DFFRPQ1 port map( D => arx_input_reg_17_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_5_port);
   arx_input_reg_reg_27_4_inst : DFFRPQ1 port map( D => arx_input_reg_16_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_4_port);
   arx_input_reg_reg_27_3_inst : DFFRPQ1 port map( D => arx_input_reg_15_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_3_port);
   arx_input_reg_reg_27_2_inst : DFFRPQ1 port map( D => arx_input_reg_14_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_2_port);
   arx_input_reg_reg_27_1_inst : DFFRPQ1 port map( D => arx_input_reg_13_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_1_port);
   arx_input_reg_reg_27_0_inst : DFFRPQ1 port map( D => arx_input_reg_12_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_0_port);
   arx_input_reg_reg_27_11_inst : DFFRPQ1 port map( D => arx_input_reg_23_port,
                           CK => clock, RB => n28, Q => arx_input_reg_11_port);
   arx_input_reg_reg_0_0_inst : DFFRPQ1 port map( D => data_in(0), CK => clock,
                           RB => n4, Q => arx_input_reg_323_port);
   arx_input_reg_reg_2_0_inst : DFFRPQ1 port map( D => arx_input_reg_311_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_299_port);
   arx_input_reg_reg_3_0_inst : DFFRPQ1 port map( D => arx_input_reg_299_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_287_port);
   arx_input_reg_reg_4_0_inst : DFFRPQ1 port map( D => arx_input_reg_287_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_275_port);
   arx_input_reg_reg_6_0_inst : DFFRPQ1 port map( D => arx_input_reg_263_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_251_port)
                           ;
   arx_input_reg_reg_7_0_inst : DFFRPQ1 port map( D => arx_input_reg_251_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_239_port)
                           ;
   arx_input_reg_reg_8_0_inst : DFFRPQ1 port map( D => arx_input_reg_239_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_227_port)
                           ;
   arx_input_reg_reg_10_0_inst : DFFRPQ1 port map( D => arx_input_reg_215_port,
                           CK => clock, RB => n14, Q => arx_input_reg_203_port)
                           ;
   arx_input_reg_reg_11_0_inst : DFFRPQ1 port map( D => arx_input_reg_203_port,
                           CK => clock, RB => n15, Q => arx_input_reg_191_port)
                           ;
   arx_input_reg_reg_12_0_inst : DFFRPQ1 port map( D => arx_input_reg_191_port,
                           CK => clock, RB => n15, Q => arx_input_reg_179_port)
                           ;
   arx_input_reg_reg_14_10_inst : DFFRPQ1 port map( D => arx_input_reg_177_port
                           , CK => clock, RB => n17, Q => 
                           arx_input_reg_166_port);
   arx_input_reg_reg_14_9_inst : DFFRPQ1 port map( D => arx_input_reg_176_port,
                           CK => clock, RB => n17, Q => arx_input_reg_165_port)
                           ;
   arx_input_reg_reg_14_8_inst : DFFRPQ1 port map( D => arx_input_reg_175_port,
                           CK => clock, RB => n17, Q => arx_input_reg_164_port)
                           ;
   arx_input_reg_reg_14_7_inst : DFFRPQ1 port map( D => arx_input_reg_174_port,
                           CK => clock, RB => n17, Q => arx_input_reg_163_port)
                           ;
   arx_input_reg_reg_14_6_inst : DFFRPQ1 port map( D => arx_input_reg_173_port,
                           CK => clock, RB => n17, Q => arx_input_reg_162_port)
                           ;
   arx_input_reg_reg_14_5_inst : DFFRPQ1 port map( D => arx_input_reg_172_port,
                           CK => clock, RB => n17, Q => arx_input_reg_161_port)
                           ;
   arx_input_reg_reg_14_4_inst : DFFRPQ1 port map( D => arx_input_reg_171_port,
                           CK => clock, RB => n17, Q => arx_input_reg_160_port)
                           ;
   arx_input_reg_reg_14_3_inst : DFFRPQ1 port map( D => arx_input_reg_170_port,
                           CK => clock, RB => n17, Q => arx_input_reg_159_port)
                           ;
   arx_input_reg_reg_14_2_inst : DFFRPQ1 port map( D => arx_input_reg_169_port,
                           CK => clock, RB => n17, Q => arx_input_reg_158_port)
                           ;
   arx_input_reg_reg_14_1_inst : DFFRPQ1 port map( D => arx_input_reg_168_port,
                           CK => clock, RB => n17, Q => arx_input_reg_157_port)
                           ;
   arx_input_reg_reg_15_10_inst : DFFRPQ1 port map( D => arx_input_reg_166_port
                           , CK => clock, RB => n17, Q => 
                           arx_input_reg_154_port);
   arx_input_reg_reg_15_9_inst : DFFRPQ1 port map( D => arx_input_reg_165_port,
                           CK => clock, RB => n18, Q => arx_input_reg_153_port)
                           ;
   arx_input_reg_reg_15_8_inst : DFFRPQ1 port map( D => arx_input_reg_164_port,
                           CK => clock, RB => n18, Q => arx_input_reg_152_port)
                           ;
   arx_input_reg_reg_15_7_inst : DFFRPQ1 port map( D => arx_input_reg_163_port,
                           CK => clock, RB => n18, Q => arx_input_reg_151_port)
                           ;
   arx_input_reg_reg_15_6_inst : DFFRPQ1 port map( D => arx_input_reg_162_port,
                           CK => clock, RB => n18, Q => arx_input_reg_150_port)
                           ;
   arx_input_reg_reg_15_5_inst : DFFRPQ1 port map( D => arx_input_reg_161_port,
                           CK => clock, RB => n18, Q => arx_input_reg_149_port)
                           ;
   arx_input_reg_reg_15_4_inst : DFFRPQ1 port map( D => arx_input_reg_160_port,
                           CK => clock, RB => n18, Q => arx_input_reg_148_port)
                           ;
   arx_input_reg_reg_15_3_inst : DFFRPQ1 port map( D => arx_input_reg_159_port,
                           CK => clock, RB => n18, Q => arx_input_reg_147_port)
                           ;
   arx_input_reg_reg_15_2_inst : DFFRPQ1 port map( D => arx_input_reg_158_port,
                           CK => clock, RB => n18, Q => arx_input_reg_146_port)
                           ;
   arx_input_reg_reg_15_1_inst : DFFRPQ1 port map( D => arx_input_reg_157_port,
                           CK => clock, RB => n18, Q => arx_input_reg_145_port)
                           ;
   arx_input_reg_reg_16_10_inst : DFFRPQ1 port map( D => arx_input_reg_154_port
                           , CK => clock, RB => n18, Q => 
                           arx_input_reg_142_port);
   arx_input_reg_reg_16_9_inst : DFFRPQ1 port map( D => arx_input_reg_153_port,
                           CK => clock, RB => n18, Q => arx_input_reg_141_port)
                           ;
   arx_input_reg_reg_16_8_inst : DFFRPQ1 port map( D => arx_input_reg_152_port,
                           CK => clock, RB => n19, Q => arx_input_reg_140_port)
                           ;
   arx_input_reg_reg_16_7_inst : DFFRPQ1 port map( D => arx_input_reg_151_port,
                           CK => clock, RB => n19, Q => arx_input_reg_139_port)
                           ;
   arx_input_reg_reg_16_6_inst : DFFRPQ1 port map( D => arx_input_reg_150_port,
                           CK => clock, RB => n19, Q => arx_input_reg_138_port)
                           ;
   arx_input_reg_reg_16_5_inst : DFFRPQ1 port map( D => arx_input_reg_149_port,
                           CK => clock, RB => n19, Q => arx_input_reg_137_port)
                           ;
   arx_input_reg_reg_16_4_inst : DFFRPQ1 port map( D => arx_input_reg_148_port,
                           CK => clock, RB => n19, Q => arx_input_reg_136_port)
                           ;
   arx_input_reg_reg_16_3_inst : DFFRPQ1 port map( D => arx_input_reg_147_port,
                           CK => clock, RB => n19, Q => arx_input_reg_135_port)
                           ;
   arx_input_reg_reg_16_2_inst : DFFRPQ1 port map( D => arx_input_reg_146_port,
                           CK => clock, RB => n19, Q => arx_input_reg_134_port)
                           ;
   arx_input_reg_reg_16_1_inst : DFFRPQ1 port map( D => arx_input_reg_145_port,
                           CK => clock, RB => n19, Q => arx_input_reg_133_port)
                           ;
   arx_input_reg_reg_18_10_inst : DFFRPQ1 port map( D => arx_input_reg_130_port
                           , CK => clock, RB => n20, Q => 
                           arx_input_reg_118_port);
   arx_input_reg_reg_18_9_inst : DFFRPQ1 port map( D => arx_input_reg_129_port,
                           CK => clock, RB => n20, Q => arx_input_reg_117_port)
                           ;
   arx_input_reg_reg_18_8_inst : DFFRPQ1 port map( D => arx_input_reg_128_port,
                           CK => clock, RB => n20, Q => arx_input_reg_116_port)
                           ;
   arx_input_reg_reg_18_7_inst : DFFRPQ1 port map( D => arx_input_reg_127_port,
                           CK => clock, RB => n20, Q => arx_input_reg_115_port)
                           ;
   arx_input_reg_reg_18_6_inst : DFFRPQ1 port map( D => arx_input_reg_126_port,
                           CK => clock, RB => n21, Q => arx_input_reg_114_port)
                           ;
   arx_input_reg_reg_18_5_inst : DFFRPQ1 port map( D => arx_input_reg_125_port,
                           CK => clock, RB => n21, Q => arx_input_reg_113_port)
                           ;
   arx_input_reg_reg_18_4_inst : DFFRPQ1 port map( D => arx_input_reg_124_port,
                           CK => clock, RB => n21, Q => arx_input_reg_112_port)
                           ;
   arx_input_reg_reg_18_3_inst : DFFRPQ1 port map( D => arx_input_reg_123_port,
                           CK => clock, RB => n21, Q => arx_input_reg_111_port)
                           ;
   arx_input_reg_reg_18_2_inst : DFFRPQ1 port map( D => arx_input_reg_122_port,
                           CK => clock, RB => n21, Q => arx_input_reg_110_port)
                           ;
   arx_input_reg_reg_18_1_inst : DFFRPQ1 port map( D => arx_input_reg_121_port,
                           CK => clock, RB => n21, Q => arx_input_reg_109_port)
                           ;
   arx_input_reg_reg_19_10_inst : DFFRPQ1 port map( D => arx_input_reg_118_port
                           , CK => clock, RB => n21, Q => 
                           arx_input_reg_106_port);
   arx_input_reg_reg_19_9_inst : DFFRPQ1 port map( D => arx_input_reg_117_port,
                           CK => clock, RB => n21, Q => arx_input_reg_105_port)
                           ;
   arx_input_reg_reg_19_8_inst : DFFRPQ1 port map( D => arx_input_reg_116_port,
                           CK => clock, RB => n21, Q => arx_input_reg_104_port)
                           ;
   arx_input_reg_reg_19_7_inst : DFFRPQ1 port map( D => arx_input_reg_115_port,
                           CK => clock, RB => n21, Q => arx_input_reg_103_port)
                           ;
   arx_input_reg_reg_19_6_inst : DFFRPQ1 port map( D => arx_input_reg_114_port,
                           CK => clock, RB => n21, Q => arx_input_reg_102_port)
                           ;
   arx_input_reg_reg_19_5_inst : DFFRPQ1 port map( D => arx_input_reg_113_port,
                           CK => clock, RB => n22, Q => arx_input_reg_101_port)
                           ;
   arx_input_reg_reg_19_4_inst : DFFRPQ1 port map( D => arx_input_reg_112_port,
                           CK => clock, RB => n22, Q => arx_input_reg_100_port)
                           ;
   arx_input_reg_reg_19_3_inst : DFFRPQ1 port map( D => arx_input_reg_111_port,
                           CK => clock, RB => n22, Q => arx_input_reg_99_port);
   arx_input_reg_reg_19_2_inst : DFFRPQ1 port map( D => arx_input_reg_110_port,
                           CK => clock, RB => n22, Q => arx_input_reg_98_port);
   arx_input_reg_reg_19_1_inst : DFFRPQ1 port map( D => arx_input_reg_109_port,
                           CK => clock, RB => n22, Q => arx_input_reg_97_port);
   arx_input_reg_reg_20_10_inst : DFFRPQ1 port map( D => arx_input_reg_106_port
                           , CK => clock, RB => n22, Q => arx_input_reg_94_port
                           );
   arx_input_reg_reg_20_9_inst : DFFRPQ1 port map( D => arx_input_reg_105_port,
                           CK => clock, RB => n22, Q => arx_input_reg_93_port);
   arx_input_reg_reg_20_8_inst : DFFRPQ1 port map( D => arx_input_reg_104_port,
                           CK => clock, RB => n22, Q => arx_input_reg_92_port);
   arx_input_reg_reg_20_7_inst : DFFRPQ1 port map( D => arx_input_reg_103_port,
                           CK => clock, RB => n22, Q => arx_input_reg_91_port);
   arx_input_reg_reg_20_6_inst : DFFRPQ1 port map( D => arx_input_reg_102_port,
                           CK => clock, RB => n22, Q => arx_input_reg_90_port);
   arx_input_reg_reg_20_5_inst : DFFRPQ1 port map( D => arx_input_reg_101_port,
                           CK => clock, RB => n22, Q => arx_input_reg_89_port);
   arx_input_reg_reg_20_4_inst : DFFRPQ1 port map( D => arx_input_reg_100_port,
                           CK => clock, RB => n23, Q => arx_input_reg_88_port);
   arx_input_reg_reg_20_3_inst : DFFRPQ1 port map( D => arx_input_reg_99_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_87_port);
   arx_input_reg_reg_20_2_inst : DFFRPQ1 port map( D => arx_input_reg_98_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_86_port);
   arx_input_reg_reg_20_1_inst : DFFRPQ1 port map( D => arx_input_reg_97_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_85_port);
   arx_input_reg_reg_22_10_inst : DFFRPQ1 port map( D => arx_input_reg_82_port,
                           CK => clock, RB => n24, Q => arx_input_reg_70_port);
   arx_input_reg_reg_22_9_inst : DFFRPQ1 port map( D => arx_input_reg_81_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_69_port);
   arx_input_reg_reg_22_8_inst : DFFRPQ1 port map( D => arx_input_reg_80_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_68_port);
   arx_input_reg_reg_22_7_inst : DFFRPQ1 port map( D => arx_input_reg_79_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_67_port);
   arx_input_reg_reg_22_6_inst : DFFRPQ1 port map( D => arx_input_reg_78_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_66_port);
   arx_input_reg_reg_22_5_inst : DFFRPQ1 port map( D => arx_input_reg_77_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_65_port);
   arx_input_reg_reg_22_4_inst : DFFRPQ1 port map( D => arx_input_reg_76_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_64_port);
   arx_input_reg_reg_22_3_inst : DFFRPQ1 port map( D => arx_input_reg_75_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_63_port);
   arx_input_reg_reg_22_2_inst : DFFRPQ1 port map( D => arx_input_reg_74_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_62_port);
   arx_input_reg_reg_22_1_inst : DFFRPQ1 port map( D => arx_input_reg_73_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_61_port);
   arx_input_reg_reg_23_10_inst : DFFRPQ1 port map( D => arx_input_reg_70_port,
                           CK => clock, RB => n25, Q => arx_input_reg_58_port);
   arx_input_reg_reg_23_9_inst : DFFRPQ1 port map( D => arx_input_reg_69_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_57_port);
   arx_input_reg_reg_23_8_inst : DFFRPQ1 port map( D => arx_input_reg_68_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_56_port);
   arx_input_reg_reg_23_7_inst : DFFRPQ1 port map( D => arx_input_reg_67_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_55_port);
   arx_input_reg_reg_23_6_inst : DFFRPQ1 port map( D => arx_input_reg_66_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_54_port);
   arx_input_reg_reg_23_5_inst : DFFRPQ1 port map( D => arx_input_reg_65_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_53_port);
   arx_input_reg_reg_23_4_inst : DFFRPQ1 port map( D => arx_input_reg_64_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_52_port);
   arx_input_reg_reg_23_3_inst : DFFRPQ1 port map( D => arx_input_reg_63_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_51_port);
   arx_input_reg_reg_23_2_inst : DFFRPQ1 port map( D => arx_input_reg_62_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_50_port);
   arx_input_reg_reg_23_1_inst : DFFRPQ1 port map( D => arx_input_reg_61_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_49_port);
   arx_input_reg_reg_24_10_inst : DFFRPQ1 port map( D => arx_input_reg_58_port,
                           CK => clock, RB => n26, Q => arx_input_reg_46_port);
   arx_input_reg_reg_24_9_inst : DFFRPQ1 port map( D => arx_input_reg_57_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_45_port);
   arx_input_reg_reg_24_8_inst : DFFRPQ1 port map( D => arx_input_reg_56_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_44_port);
   arx_input_reg_reg_24_7_inst : DFFRPQ1 port map( D => arx_input_reg_55_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_43_port);
   arx_input_reg_reg_24_6_inst : DFFRPQ1 port map( D => arx_input_reg_54_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_42_port);
   arx_input_reg_reg_24_5_inst : DFFRPQ1 port map( D => arx_input_reg_53_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_41_port);
   arx_input_reg_reg_24_4_inst : DFFRPQ1 port map( D => arx_input_reg_52_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_40_port);
   arx_input_reg_reg_24_3_inst : DFFRPQ1 port map( D => arx_input_reg_51_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_39_port);
   arx_input_reg_reg_24_2_inst : DFFRPQ1 port map( D => arx_input_reg_50_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_38_port);
   arx_input_reg_reg_24_1_inst : DFFRPQ1 port map( D => arx_input_reg_49_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_37_port);
   arx_input_reg_reg_26_10_inst : DFFRPQ1 port map( D => arx_input_reg_34_port,
                           CK => clock, RB => n28, Q => arx_input_reg_22_port);
   arx_input_reg_reg_26_9_inst : DFFRPQ1 port map( D => arx_input_reg_33_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_21_port);
   arx_input_reg_reg_26_8_inst : DFFRPQ1 port map( D => arx_input_reg_32_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_20_port);
   arx_input_reg_reg_26_7_inst : DFFRPQ1 port map( D => arx_input_reg_31_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_19_port);
   arx_input_reg_reg_26_6_inst : DFFRPQ1 port map( D => arx_input_reg_30_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_18_port);
   arx_input_reg_reg_26_5_inst : DFFRPQ1 port map( D => arx_input_reg_29_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_17_port);
   arx_input_reg_reg_26_4_inst : DFFRPQ1 port map( D => arx_input_reg_28_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_16_port);
   arx_input_reg_reg_26_3_inst : DFFRPQ1 port map( D => arx_input_reg_27_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_15_port);
   arx_input_reg_reg_26_2_inst : DFFRPQ1 port map( D => arx_input_reg_26_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_14_port);
   arx_input_reg_reg_26_1_inst : DFFRPQ1 port map( D => arx_input_reg_25_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_13_port);
   arx_input_reg_reg_0_10_inst : DFFRPQ1 port map( D => data_in(10), CK => 
                           clock, RB => n4, Q => arx_input_reg_333_port);
   arx_input_reg_reg_0_9_inst : DFFRPQ1 port map( D => data_in(9), CK => clock,
                           RB => n4, Q => arx_input_reg_332_port);
   arx_input_reg_reg_0_8_inst : DFFRPQ1 port map( D => data_in(8), CK => clock,
                           RB => n4, Q => arx_input_reg_331_port);
   arx_input_reg_reg_0_7_inst : DFFRPQ1 port map( D => data_in(7), CK => clock,
                           RB => n4, Q => arx_input_reg_330_port);
   arx_input_reg_reg_0_6_inst : DFFRPQ1 port map( D => data_in(6), CK => clock,
                           RB => n4, Q => arx_input_reg_329_port);
   arx_input_reg_reg_0_5_inst : DFFRPQ1 port map( D => data_in(5), CK => clock,
                           RB => n4, Q => arx_input_reg_328_port);
   arx_input_reg_reg_0_4_inst : DFFRPQ1 port map( D => data_in(4), CK => clock,
                           RB => n4, Q => arx_input_reg_327_port);
   arx_input_reg_reg_0_3_inst : DFFRPQ1 port map( D => data_in(3), CK => clock,
                           RB => n4, Q => arx_input_reg_326_port);
   arx_input_reg_reg_0_2_inst : DFFRPQ1 port map( D => data_in(2), CK => clock,
                           RB => n4, Q => arx_input_reg_325_port);
   arx_input_reg_reg_0_1_inst : DFFRPQ1 port map( D => data_in(1), CK => clock,
                           RB => n4, Q => arx_input_reg_324_port);
   arx_input_reg_reg_2_10_inst : DFFRPQ1 port map( D => arx_input_reg_321_port,
                           CK => clock, RB => n5, Q => arx_input_reg_309_port);
   arx_input_reg_reg_2_9_inst : DFFRPQ1 port map( D => arx_input_reg_320_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_308_port);
   arx_input_reg_reg_2_8_inst : DFFRPQ1 port map( D => arx_input_reg_319_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_307_port);
   arx_input_reg_reg_2_7_inst : DFFRPQ1 port map( D => arx_input_reg_318_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_306_port);
   arx_input_reg_reg_2_6_inst : DFFRPQ1 port map( D => arx_input_reg_317_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_305_port);
   arx_input_reg_reg_2_5_inst : DFFRPQ1 port map( D => arx_input_reg_316_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_304_port);
   arx_input_reg_reg_2_4_inst : DFFRPQ1 port map( D => arx_input_reg_315_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_303_port);
   arx_input_reg_reg_2_3_inst : DFFRPQ1 port map( D => arx_input_reg_314_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_302_port);
   arx_input_reg_reg_2_2_inst : DFFRPQ1 port map( D => arx_input_reg_313_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_301_port);
   arx_input_reg_reg_2_1_inst : DFFRPQ1 port map( D => arx_input_reg_312_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_300_port);
   arx_input_reg_reg_3_10_inst : DFFRPQ1 port map( D => arx_input_reg_309_port,
                           CK => clock, RB => n6, Q => arx_input_reg_297_port);
   arx_input_reg_reg_3_9_inst : DFFRPQ1 port map( D => arx_input_reg_308_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_296_port);
   arx_input_reg_reg_3_8_inst : DFFRPQ1 port map( D => arx_input_reg_307_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_295_port);
   arx_input_reg_reg_3_7_inst : DFFRPQ1 port map( D => arx_input_reg_306_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_294_port);
   arx_input_reg_reg_3_6_inst : DFFRPQ1 port map( D => arx_input_reg_305_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_293_port);
   arx_input_reg_reg_3_5_inst : DFFRPQ1 port map( D => arx_input_reg_304_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_292_port);
   arx_input_reg_reg_3_4_inst : DFFRPQ1 port map( D => arx_input_reg_303_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_291_port);
   arx_input_reg_reg_3_3_inst : DFFRPQ1 port map( D => arx_input_reg_302_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_290_port);
   arx_input_reg_reg_3_2_inst : DFFRPQ1 port map( D => arx_input_reg_301_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_289_port);
   arx_input_reg_reg_3_1_inst : DFFRPQ1 port map( D => arx_input_reg_300_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_288_port);
   arx_input_reg_reg_4_10_inst : DFFRPQ1 port map( D => arx_input_reg_297_port,
                           CK => clock, RB => n7, Q => arx_input_reg_285_port);
   arx_input_reg_reg_4_9_inst : DFFRPQ1 port map( D => arx_input_reg_296_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_284_port);
   arx_input_reg_reg_4_8_inst : DFFRPQ1 port map( D => arx_input_reg_295_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_283_port);
   arx_input_reg_reg_4_7_inst : DFFRPQ1 port map( D => arx_input_reg_294_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_282_port);
   arx_input_reg_reg_4_6_inst : DFFRPQ1 port map( D => arx_input_reg_293_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_281_port);
   arx_input_reg_reg_4_5_inst : DFFRPQ1 port map( D => arx_input_reg_292_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_280_port);
   arx_input_reg_reg_4_4_inst : DFFRPQ1 port map( D => arx_input_reg_291_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_279_port);
   arx_input_reg_reg_4_3_inst : DFFRPQ1 port map( D => arx_input_reg_290_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_278_port);
   arx_input_reg_reg_4_2_inst : DFFRPQ1 port map( D => arx_input_reg_289_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_277_port);
   arx_input_reg_reg_4_1_inst : DFFRPQ1 port map( D => arx_input_reg_288_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_276_port);
   arx_input_reg_reg_6_10_inst : DFFRPQ1 port map( D => arx_input_reg_273_port,
                           CK => clock, RB => n9, Q => arx_input_reg_261_port);
   arx_input_reg_reg_6_9_inst : DFFRPQ1 port map( D => arx_input_reg_272_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_260_port);
   arx_input_reg_reg_6_8_inst : DFFRPQ1 port map( D => arx_input_reg_271_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_259_port);
   arx_input_reg_reg_6_7_inst : DFFRPQ1 port map( D => arx_input_reg_270_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_258_port);
   arx_input_reg_reg_6_6_inst : DFFRPQ1 port map( D => arx_input_reg_269_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_257_port);
   arx_input_reg_reg_6_5_inst : DFFRPQ1 port map( D => arx_input_reg_268_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_256_port)
                           ;
   arx_input_reg_reg_6_4_inst : DFFRPQ1 port map( D => arx_input_reg_267_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_255_port)
                           ;
   arx_input_reg_reg_6_3_inst : DFFRPQ1 port map( D => arx_input_reg_266_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_254_port)
                           ;
   arx_input_reg_reg_6_2_inst : DFFRPQ1 port map( D => arx_input_reg_265_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_253_port)
                           ;
   arx_input_reg_reg_6_1_inst : DFFRPQ1 port map( D => arx_input_reg_264_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_252_port)
                           ;
   arx_input_reg_reg_7_10_inst : DFFRPQ1 port map( D => arx_input_reg_261_port,
                           CK => clock, RB => n10, Q => arx_input_reg_249_port)
                           ;
   arx_input_reg_reg_7_9_inst : DFFRPQ1 port map( D => arx_input_reg_260_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_248_port)
                           ;
   arx_input_reg_reg_7_8_inst : DFFRPQ1 port map( D => arx_input_reg_259_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_247_port)
                           ;
   arx_input_reg_reg_7_7_inst : DFFRPQ1 port map( D => arx_input_reg_258_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_246_port)
                           ;
   arx_input_reg_reg_7_6_inst : DFFRPQ1 port map( D => arx_input_reg_257_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_245_port)
                           ;
   arx_input_reg_reg_7_5_inst : DFFRPQ1 port map( D => arx_input_reg_256_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_244_port)
                           ;
   arx_input_reg_reg_7_4_inst : DFFRPQ1 port map( D => arx_input_reg_255_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_243_port)
                           ;
   arx_input_reg_reg_7_3_inst : DFFRPQ1 port map( D => arx_input_reg_254_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_242_port)
                           ;
   arx_input_reg_reg_7_2_inst : DFFRPQ1 port map( D => arx_input_reg_253_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_241_port)
                           ;
   arx_input_reg_reg_7_1_inst : DFFRPQ1 port map( D => arx_input_reg_252_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_240_port)
                           ;
   arx_input_reg_reg_8_10_inst : DFFRPQ1 port map( D => arx_input_reg_249_port,
                           CK => clock, RB => n11, Q => arx_input_reg_237_port)
                           ;
   arx_input_reg_reg_8_9_inst : DFFRPQ1 port map( D => arx_input_reg_248_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_236_port)
                           ;
   arx_input_reg_reg_8_8_inst : DFFRPQ1 port map( D => arx_input_reg_247_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_235_port)
                           ;
   arx_input_reg_reg_8_7_inst : DFFRPQ1 port map( D => arx_input_reg_246_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_234_port)
                           ;
   arx_input_reg_reg_8_6_inst : DFFRPQ1 port map( D => arx_input_reg_245_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_233_port)
                           ;
   arx_input_reg_reg_8_5_inst : DFFRPQ1 port map( D => arx_input_reg_244_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_232_port)
                           ;
   arx_input_reg_reg_8_4_inst : DFFRPQ1 port map( D => arx_input_reg_243_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_231_port)
                           ;
   arx_input_reg_reg_8_3_inst : DFFRPQ1 port map( D => arx_input_reg_242_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_230_port)
                           ;
   arx_input_reg_reg_8_2_inst : DFFRPQ1 port map( D => arx_input_reg_241_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_229_port)
                           ;
   arx_input_reg_reg_8_1_inst : DFFRPQ1 port map( D => arx_input_reg_240_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_228_port)
                           ;
   arx_input_reg_reg_10_10_inst : DFFRPQ1 port map( D => arx_input_reg_225_port
                           , CK => clock, RB => n13, Q => 
                           arx_input_reg_213_port);
   arx_input_reg_reg_10_9_inst : DFFRPQ1 port map( D => arx_input_reg_224_port,
                           CK => clock, RB => n13, Q => arx_input_reg_212_port)
                           ;
   arx_input_reg_reg_10_8_inst : DFFRPQ1 port map( D => arx_input_reg_223_port,
                           CK => clock, RB => n13, Q => arx_input_reg_211_port)
                           ;
   arx_input_reg_reg_10_7_inst : DFFRPQ1 port map( D => arx_input_reg_222_port,
                           CK => clock, RB => n13, Q => arx_input_reg_210_port)
                           ;
   arx_input_reg_reg_10_6_inst : DFFRPQ1 port map( D => arx_input_reg_221_port,
                           CK => clock, RB => n13, Q => arx_input_reg_209_port)
                           ;
   arx_input_reg_reg_10_5_inst : DFFRPQ1 port map( D => arx_input_reg_220_port,
                           CK => clock, RB => n13, Q => arx_input_reg_208_port)
                           ;
   arx_input_reg_reg_10_4_inst : DFFRPQ1 port map( D => arx_input_reg_219_port,
                           CK => clock, RB => n13, Q => arx_input_reg_207_port)
                           ;
   arx_input_reg_reg_10_3_inst : DFFRPQ1 port map( D => arx_input_reg_218_port,
                           CK => clock, RB => n13, Q => arx_input_reg_206_port)
                           ;
   arx_input_reg_reg_10_2_inst : DFFRPQ1 port map( D => arx_input_reg_217_port,
                           CK => clock, RB => n13, Q => arx_input_reg_205_port)
                           ;
   arx_input_reg_reg_10_1_inst : DFFRPQ1 port map( D => arx_input_reg_216_port,
                           CK => clock, RB => n14, Q => arx_input_reg_204_port)
                           ;
   arx_input_reg_reg_11_10_inst : DFFRPQ1 port map( D => arx_input_reg_213_port
                           , CK => clock, RB => n14, Q => 
                           arx_input_reg_201_port);
   arx_input_reg_reg_11_9_inst : DFFRPQ1 port map( D => arx_input_reg_212_port,
                           CK => clock, RB => n14, Q => arx_input_reg_200_port)
                           ;
   arx_input_reg_reg_11_8_inst : DFFRPQ1 port map( D => arx_input_reg_211_port,
                           CK => clock, RB => n14, Q => arx_input_reg_199_port)
                           ;
   arx_input_reg_reg_11_7_inst : DFFRPQ1 port map( D => arx_input_reg_210_port,
                           CK => clock, RB => n14, Q => arx_input_reg_198_port)
                           ;
   arx_input_reg_reg_11_6_inst : DFFRPQ1 port map( D => arx_input_reg_209_port,
                           CK => clock, RB => n14, Q => arx_input_reg_197_port)
                           ;
   arx_input_reg_reg_11_5_inst : DFFRPQ1 port map( D => arx_input_reg_208_port,
                           CK => clock, RB => n14, Q => arx_input_reg_196_port)
                           ;
   arx_input_reg_reg_11_4_inst : DFFRPQ1 port map( D => arx_input_reg_207_port,
                           CK => clock, RB => n14, Q => arx_input_reg_195_port)
                           ;
   arx_input_reg_reg_11_3_inst : DFFRPQ1 port map( D => arx_input_reg_206_port,
                           CK => clock, RB => n14, Q => arx_input_reg_194_port)
                           ;
   arx_input_reg_reg_11_2_inst : DFFRPQ1 port map( D => arx_input_reg_205_port,
                           CK => clock, RB => n14, Q => arx_input_reg_193_port)
                           ;
   arx_input_reg_reg_11_1_inst : DFFRPQ1 port map( D => arx_input_reg_204_port,
                           CK => clock, RB => n14, Q => arx_input_reg_192_port)
                           ;
   arx_input_reg_reg_12_10_inst : DFFRPQ1 port map( D => arx_input_reg_201_port
                           , CK => clock, RB => n15, Q => 
                           arx_input_reg_189_port);
   arx_input_reg_reg_12_9_inst : DFFRPQ1 port map( D => arx_input_reg_200_port,
                           CK => clock, RB => n15, Q => arx_input_reg_188_port)
                           ;
   arx_input_reg_reg_12_8_inst : DFFRPQ1 port map( D => arx_input_reg_199_port,
                           CK => clock, RB => n15, Q => arx_input_reg_187_port)
                           ;
   arx_input_reg_reg_12_7_inst : DFFRPQ1 port map( D => arx_input_reg_198_port,
                           CK => clock, RB => n15, Q => arx_input_reg_186_port)
                           ;
   arx_input_reg_reg_12_6_inst : DFFRPQ1 port map( D => arx_input_reg_197_port,
                           CK => clock, RB => n15, Q => arx_input_reg_185_port)
                           ;
   arx_input_reg_reg_12_5_inst : DFFRPQ1 port map( D => arx_input_reg_196_port,
                           CK => clock, RB => n15, Q => arx_input_reg_184_port)
                           ;
   arx_input_reg_reg_12_4_inst : DFFRPQ1 port map( D => arx_input_reg_195_port,
                           CK => clock, RB => n15, Q => arx_input_reg_183_port)
                           ;
   arx_input_reg_reg_12_3_inst : DFFRPQ1 port map( D => arx_input_reg_194_port,
                           CK => clock, RB => n15, Q => arx_input_reg_182_port)
                           ;
   arx_input_reg_reg_12_2_inst : DFFRPQ1 port map( D => arx_input_reg_193_port,
                           CK => clock, RB => n15, Q => arx_input_reg_181_port)
                           ;
   arx_input_reg_reg_12_1_inst : DFFRPQ1 port map( D => arx_input_reg_192_port,
                           CK => clock, RB => n15, Q => arx_input_reg_180_port)
                           ;
   arx_input_reg_reg_14_0_inst : DFFRPQ1 port map( D => p232_2_0_port, CK => 
                           clock, RB => n17, Q => arx_input_reg_156_port);
   arx_input_reg_reg_15_0_inst : DFFRPQ1 port map( D => arx_input_reg_156_port,
                           CK => clock, RB => n18, Q => arx_input_reg_144_port)
                           ;
   arx_input_reg_reg_16_0_inst : DFFRPQ1 port map( D => arx_input_reg_144_port,
                           CK => clock, RB => n19, Q => arx_input_reg_132_port)
                           ;
   arx_input_reg_reg_18_0_inst : DFFRPQ1 port map( D => arx_input_reg_120_port,
                           CK => clock, RB => n21, Q => arx_input_reg_108_port)
                           ;
   arx_input_reg_reg_19_0_inst : DFFRPQ1 port map( D => arx_input_reg_108_port,
                           CK => clock, RB => n22, Q => arx_input_reg_96_port);
   arx_input_reg_reg_20_0_inst : DFFRPQ1 port map( D => arx_input_reg_96_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_84_port);
   arx_input_reg_reg_22_0_inst : DFFRPQ1 port map( D => arx_input_reg_72_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_60_port);
   arx_input_reg_reg_23_0_inst : DFFRPQ1 port map( D => arx_input_reg_60_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_48_port);
   arx_input_reg_reg_24_0_inst : DFFRPQ1 port map( D => arx_input_reg_48_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_36_port);
   arx_input_reg_reg_26_0_inst : DFFRPQ1 port map( D => arx_input_reg_24_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_12_port);
   arx_input_reg_reg_14_11_inst : DFFRPQ1 port map( D => p232_2_17_port, CK => 
                           clock, RB => n16, Q => arx_input_reg_167_port);
   arx_input_reg_reg_15_11_inst : DFFRPQ1 port map( D => arx_input_reg_167_port
                           , CK => clock, RB => n17, Q => 
                           arx_input_reg_155_port);
   arx_input_reg_reg_16_11_inst : DFFRPQ1 port map( D => arx_input_reg_155_port
                           , CK => clock, RB => n18, Q => 
                           arx_input_reg_143_port);
   arx_input_reg_reg_18_11_inst : DFFRPQ1 port map( D => arx_input_reg_131_port
                           , CK => clock, RB => n20, Q => 
                           arx_input_reg_119_port);
   arx_input_reg_reg_19_11_inst : DFFRPQ1 port map( D => arx_input_reg_119_port
                           , CK => clock, RB => n21, Q => 
                           arx_input_reg_107_port);
   arx_input_reg_reg_20_11_inst : DFFRPQ1 port map( D => arx_input_reg_107_port
                           , CK => clock, RB => n22, Q => arx_input_reg_95_port
                           );
   arx_input_reg_reg_22_11_inst : DFFRPQ1 port map( D => arx_input_reg_83_port,
                           CK => clock, RB => n24, Q => arx_input_reg_71_port);
   arx_input_reg_reg_23_11_inst : DFFRPQ1 port map( D => arx_input_reg_71_port,
                           CK => clock, RB => n25, Q => arx_input_reg_59_port);
   arx_input_reg_reg_24_11_inst : DFFRPQ1 port map( D => arx_input_reg_59_port,
                           CK => clock, RB => n26, Q => arx_input_reg_47_port);
   arx_input_reg_reg_26_11_inst : DFFRPQ1 port map( D => arx_input_reg_35_port,
                           CK => clock, RB => n28, Q => arx_input_reg_23_port);
   arx_input_reg_reg_0_11_inst : DFFRPQ1 port map( D => data_in(11), CK => 
                           clock, RB => n4, Q => arx_input_reg_334_port);
   arx_input_reg_reg_2_11_inst : DFFRPQ1 port map( D => arx_input_reg_322_port,
                           CK => clock, RB => n5, Q => arx_input_reg_310_port);
   arx_input_reg_reg_3_11_inst : DFFRPQ1 port map( D => arx_input_reg_310_port,
                           CK => clock, RB => n6, Q => arx_input_reg_298_port);
   arx_input_reg_reg_4_11_inst : DFFRPQ1 port map( D => arx_input_reg_298_port,
                           CK => clock, RB => n7, Q => arx_input_reg_286_port);
   arx_input_reg_reg_6_11_inst : DFFRPQ1 port map( D => arx_input_reg_274_port,
                           CK => clock, RB => n9, Q => arx_input_reg_262_port);
   arx_input_reg_reg_7_11_inst : DFFRPQ1 port map( D => arx_input_reg_262_port,
                           CK => clock, RB => n10, Q => arx_input_reg_250_port)
                           ;
   arx_input_reg_reg_8_11_inst : DFFRPQ1 port map( D => arx_input_reg_250_port,
                           CK => clock, RB => n11, Q => arx_input_reg_238_port)
                           ;
   arx_input_reg_reg_10_11_inst : DFFRPQ1 port map( D => arx_input_reg_226_port
                           , CK => clock, RB => n13, Q => 
                           arx_input_reg_214_port);
   arx_input_reg_reg_11_11_inst : DFFRPQ1 port map( D => arx_input_reg_214_port
                           , CK => clock, RB => n14, Q => 
                           arx_input_reg_202_port);
   arx_input_reg_reg_12_11_inst : DFFRPQ1 port map( D => arx_input_reg_202_port
                           , CK => clock, RB => n15, Q => 
                           arx_input_reg_190_port);
   arx_input_reg_reg_13_1_inst : DFFRPQ1 port map( D => arx_input_reg_180_port,
                           CK => clock, RB => n16, Q => arx_input_reg_168_port)
                           ;
   arx_input_reg_reg_13_10_inst : DFFRPQ1 port map( D => arx_input_reg_189_port
                           , CK => clock, RB => n16, Q => 
                           arx_input_reg_177_port);
   arx_input_reg_reg_13_9_inst : DFFRPQ1 port map( D => arx_input_reg_188_port,
                           CK => clock, RB => n16, Q => arx_input_reg_176_port)
                           ;
   arx_input_reg_reg_13_8_inst : DFFRPQ1 port map( D => arx_input_reg_187_port,
                           CK => clock, RB => n16, Q => arx_input_reg_175_port)
                           ;
   arx_input_reg_reg_13_7_inst : DFFRPQ1 port map( D => arx_input_reg_186_port,
                           CK => clock, RB => n16, Q => arx_input_reg_174_port)
                           ;
   arx_input_reg_reg_13_6_inst : DFFRPQ1 port map( D => arx_input_reg_185_port,
                           CK => clock, RB => n16, Q => arx_input_reg_173_port)
                           ;
   arx_input_reg_reg_13_5_inst : DFFRPQ1 port map( D => arx_input_reg_184_port,
                           CK => clock, RB => n16, Q => arx_input_reg_172_port)
                           ;
   arx_input_reg_reg_13_4_inst : DFFRPQ1 port map( D => arx_input_reg_183_port,
                           CK => clock, RB => n16, Q => arx_input_reg_171_port)
                           ;
   arx_input_reg_reg_13_3_inst : DFFRPQ1 port map( D => arx_input_reg_182_port,
                           CK => clock, RB => n16, Q => arx_input_reg_170_port)
                           ;
   arx_input_reg_reg_13_2_inst : DFFRPQ1 port map( D => arx_input_reg_181_port,
                           CK => clock, RB => n16, Q => arx_input_reg_169_port)
                           ;
   arx_input_reg_reg_13_0_inst : DFFRPQ1 port map( D => arx_input_reg_179_port,
                           CK => clock, RB => n16, Q => p232_2_0_port);
   arx_input_reg_reg_13_11_inst : DFFRPQ1 port map( D => arx_input_reg_190_port
                           , CK => clock, RB => n16, Q => 
                           arx_input_reg_178_port);
   arx_input_reg_reg_1_11_inst : DFFRPQ1 port map( D => arx_input_reg_334_port,
                           CK => clock, RB => n4, Q => arx_input_reg_322_port);
   arx_input_reg_reg_1_10_inst : DFFRPQ1 port map( D => arx_input_reg_333_port,
                           CK => clock, RB => n5, Q => arx_input_reg_321_port);
   arx_input_reg_reg_1_9_inst : DFFRPQ1 port map( D => arx_input_reg_332_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_320_port);
   arx_input_reg_reg_1_8_inst : DFFRPQ1 port map( D => arx_input_reg_331_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_319_port);
   arx_input_reg_reg_1_7_inst : DFFRPQ1 port map( D => arx_input_reg_330_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_318_port);
   arx_input_reg_reg_1_6_inst : DFFRPQ1 port map( D => arx_input_reg_329_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_317_port);
   arx_input_reg_reg_1_5_inst : DFFRPQ1 port map( D => arx_input_reg_328_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_316_port);
   arx_input_reg_reg_1_4_inst : DFFRPQ1 port map( D => arx_input_reg_327_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_315_port);
   arx_input_reg_reg_1_3_inst : DFFRPQ1 port map( D => arx_input_reg_326_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_314_port);
   arx_input_reg_reg_1_2_inst : DFFRPQ1 port map( D => arx_input_reg_325_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_313_port);
   arx_input_reg_reg_1_1_inst : DFFRPQ1 port map( D => arx_input_reg_324_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_312_port);
   arx_input_reg_reg_1_0_inst : DFFRPQ1 port map( D => arx_input_reg_323_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_311_port);
   arx_input_reg_reg_5_11_inst : DFFRPQ1 port map( D => arx_input_reg_286_port,
                           CK => clock, RB => n8, Q => arx_input_reg_274_port);
   arx_input_reg_reg_5_10_inst : DFFRPQ1 port map( D => arx_input_reg_285_port,
                           CK => clock, RB => n8, Q => arx_input_reg_273_port);
   arx_input_reg_reg_5_9_inst : DFFRPQ1 port map( D => arx_input_reg_284_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_272_port);
   arx_input_reg_reg_5_8_inst : DFFRPQ1 port map( D => arx_input_reg_283_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_271_port);
   arx_input_reg_reg_5_7_inst : DFFRPQ1 port map( D => arx_input_reg_282_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_270_port);
   arx_input_reg_reg_5_6_inst : DFFRPQ1 port map( D => arx_input_reg_281_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_269_port);
   arx_input_reg_reg_5_5_inst : DFFRPQ1 port map( D => arx_input_reg_280_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_268_port);
   arx_input_reg_reg_5_4_inst : DFFRPQ1 port map( D => arx_input_reg_279_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_267_port);
   arx_input_reg_reg_5_3_inst : DFFRPQ1 port map( D => arx_input_reg_278_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_266_port);
   arx_input_reg_reg_5_2_inst : DFFRPQ1 port map( D => arx_input_reg_277_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_265_port);
   arx_input_reg_reg_5_1_inst : DFFRPQ1 port map( D => arx_input_reg_276_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_264_port);
   arx_input_reg_reg_5_0_inst : DFFRPQ1 port map( D => arx_input_reg_275_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_263_port);
   arx_input_reg_reg_9_11_inst : DFFRPQ1 port map( D => arx_input_reg_238_port,
                           CK => clock, RB => n12, Q => arx_input_reg_226_port)
                           ;
   arx_input_reg_reg_9_10_inst : DFFRPQ1 port map( D => arx_input_reg_237_port,
                           CK => clock, RB => n12, Q => arx_input_reg_225_port)
                           ;
   arx_input_reg_reg_9_9_inst : DFFRPQ1 port map( D => arx_input_reg_236_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_224_port)
                           ;
   arx_input_reg_reg_9_8_inst : DFFRPQ1 port map( D => arx_input_reg_235_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_223_port)
                           ;
   arx_input_reg_reg_9_7_inst : DFFRPQ1 port map( D => arx_input_reg_234_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_222_port)
                           ;
   arx_input_reg_reg_9_6_inst : DFFRPQ1 port map( D => arx_input_reg_233_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_221_port)
                           ;
   arx_input_reg_reg_9_5_inst : DFFRPQ1 port map( D => arx_input_reg_232_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_220_port)
                           ;
   arx_input_reg_reg_9_4_inst : DFFRPQ1 port map( D => arx_input_reg_231_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_219_port)
                           ;
   arx_input_reg_reg_9_3_inst : DFFRPQ1 port map( D => arx_input_reg_230_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_218_port)
                           ;
   arx_input_reg_reg_9_2_inst : DFFRPQ1 port map( D => arx_input_reg_229_port, 
                           CK => clock, RB => n13, Q => arx_input_reg_217_port)
                           ;
   arx_input_reg_reg_9_1_inst : DFFRPQ1 port map( D => arx_input_reg_228_port, 
                           CK => clock, RB => n13, Q => arx_input_reg_216_port)
                           ;
   arx_input_reg_reg_9_0_inst : DFFRPQ1 port map( D => arx_input_reg_227_port, 
                           CK => clock, RB => n13, Q => arx_input_reg_215_port)
                           ;
   arx_input_reg_reg_17_11_inst : DFFRPQ1 port map( D => arx_input_reg_143_port
                           , CK => clock, RB => n19, Q => 
                           arx_input_reg_131_port);
   arx_input_reg_reg_17_10_inst : DFFRPQ1 port map( D => arx_input_reg_142_port
                           , CK => clock, RB => n19, Q => 
                           arx_input_reg_130_port);
   arx_input_reg_reg_17_9_inst : DFFRPQ1 port map( D => arx_input_reg_141_port,
                           CK => clock, RB => n19, Q => arx_input_reg_129_port)
                           ;
   arx_input_reg_reg_17_8_inst : DFFRPQ1 port map( D => arx_input_reg_140_port,
                           CK => clock, RB => n19, Q => arx_input_reg_128_port)
                           ;
   arx_input_reg_reg_17_7_inst : DFFRPQ1 port map( D => arx_input_reg_139_port,
                           CK => clock, RB => n20, Q => arx_input_reg_127_port)
                           ;
   arx_input_reg_reg_17_6_inst : DFFRPQ1 port map( D => arx_input_reg_138_port,
                           CK => clock, RB => n20, Q => arx_input_reg_126_port)
                           ;
   arx_input_reg_reg_17_5_inst : DFFRPQ1 port map( D => arx_input_reg_137_port,
                           CK => clock, RB => n20, Q => arx_input_reg_125_port)
                           ;
   arx_input_reg_reg_17_4_inst : DFFRPQ1 port map( D => arx_input_reg_136_port,
                           CK => clock, RB => n20, Q => arx_input_reg_124_port)
                           ;
   arx_input_reg_reg_17_3_inst : DFFRPQ1 port map( D => arx_input_reg_135_port,
                           CK => clock, RB => n20, Q => arx_input_reg_123_port)
                           ;
   arx_input_reg_reg_17_2_inst : DFFRPQ1 port map( D => arx_input_reg_134_port,
                           CK => clock, RB => n20, Q => arx_input_reg_122_port)
                           ;
   arx_input_reg_reg_17_1_inst : DFFRPQ1 port map( D => arx_input_reg_133_port,
                           CK => clock, RB => n20, Q => arx_input_reg_121_port)
                           ;
   arx_input_reg_reg_17_0_inst : DFFRPQ1 port map( D => arx_input_reg_132_port,
                           CK => clock, RB => n20, Q => arx_input_reg_120_port)
                           ;
   arx_input_reg_reg_21_11_inst : DFFRPQ1 port map( D => arx_input_reg_95_port,
                           CK => clock, RB => n23, Q => arx_input_reg_83_port);
   arx_input_reg_reg_21_10_inst : DFFRPQ1 port map( D => arx_input_reg_94_port,
                           CK => clock, RB => n23, Q => arx_input_reg_82_port);
   arx_input_reg_reg_21_9_inst : DFFRPQ1 port map( D => arx_input_reg_93_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_81_port);
   arx_input_reg_reg_21_8_inst : DFFRPQ1 port map( D => arx_input_reg_92_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_80_port);
   arx_input_reg_reg_21_7_inst : DFFRPQ1 port map( D => arx_input_reg_91_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_79_port);
   arx_input_reg_reg_21_6_inst : DFFRPQ1 port map( D => arx_input_reg_90_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_78_port);
   arx_input_reg_reg_21_5_inst : DFFRPQ1 port map( D => arx_input_reg_89_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_77_port);
   arx_input_reg_reg_21_4_inst : DFFRPQ1 port map( D => arx_input_reg_88_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_76_port);
   arx_input_reg_reg_21_3_inst : DFFRPQ1 port map( D => arx_input_reg_87_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_75_port);
   arx_input_reg_reg_21_2_inst : DFFRPQ1 port map( D => arx_input_reg_86_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_74_port);
   arx_input_reg_reg_21_1_inst : DFFRPQ1 port map( D => arx_input_reg_85_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_73_port);
   arx_input_reg_reg_21_0_inst : DFFRPQ1 port map( D => arx_input_reg_84_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_72_port);
   arx_input_reg_reg_25_11_inst : DFFRPQ1 port map( D => arx_input_reg_47_port,
                           CK => clock, RB => n27, Q => arx_input_reg_35_port);
   arx_input_reg_reg_25_10_inst : DFFRPQ1 port map( D => arx_input_reg_46_port,
                           CK => clock, RB => n27, Q => arx_input_reg_34_port);
   arx_input_reg_reg_25_9_inst : DFFRPQ1 port map( D => arx_input_reg_45_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_33_port);
   arx_input_reg_reg_25_8_inst : DFFRPQ1 port map( D => arx_input_reg_44_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_32_port);
   arx_input_reg_reg_25_7_inst : DFFRPQ1 port map( D => arx_input_reg_43_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_31_port);
   arx_input_reg_reg_25_6_inst : DFFRPQ1 port map( D => arx_input_reg_42_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_30_port);
   arx_input_reg_reg_25_5_inst : DFFRPQ1 port map( D => arx_input_reg_41_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_29_port);
   arx_input_reg_reg_25_4_inst : DFFRPQ1 port map( D => arx_input_reg_40_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_28_port);
   arx_input_reg_reg_25_3_inst : DFFRPQ1 port map( D => arx_input_reg_39_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_27_port);
   arx_input_reg_reg_25_2_inst : DFFRPQ1 port map( D => arx_input_reg_38_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_26_port);
   arx_input_reg_reg_25_1_inst : DFFRPQ1 port map( D => arx_input_reg_37_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_25_port);
   arx_input_reg_reg_25_0_inst : DFFRPQ1 port map( D => arx_input_reg_36_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_24_port);
   U3 : INVD1 port map( A => n30, Z => n28);
   U4 : INVD1 port map( A => n30, Z => n27);
   U5 : INVD1 port map( A => n31, Z => n26);
   U6 : INVD1 port map( A => n31, Z => n25);
   U7 : INVD1 port map( A => n31, Z => n24);
   U8 : INVD1 port map( A => n32, Z => n23);
   U9 : INVD1 port map( A => n32, Z => n22);
   U10 : INVD1 port map( A => n32, Z => n21);
   U11 : INVD1 port map( A => n33, Z => n20);
   U12 : INVD1 port map( A => n33, Z => n19);
   U13 : INVD1 port map( A => n33, Z => n18);
   U14 : INVD1 port map( A => n34, Z => n17);
   U15 : INVD1 port map( A => n34, Z => n16);
   U20 : INVD1 port map( A => n34, Z => n15);
   U21 : INVD1 port map( A => n32, Z => n14);
   U22 : INVD1 port map( A => n33, Z => n13);
   U23 : INVD1 port map( A => n34, Z => n12);
   U24 : INVD1 port map( A => n35, Z => n11);
   U25 : INVD1 port map( A => n35, Z => n10);
   U26 : INVD1 port map( A => n35, Z => n9);
   U27 : INVD1 port map( A => n3, Z => n8);
   U28 : INVD1 port map( A => n35, Z => n7);
   U29 : INVD1 port map( A => n31, Z => n6);
   U30 : INVD1 port map( A => n3, Z => n5);
   U31 : INVD1 port map( A => n30, Z => n4);
   U32 : INVD1 port map( A => n30, Z => n29);
   U33 : NAN4D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_19_port, A2 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_18_port, A3 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_17_port, A4 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_16_port, Z => n198);
   U34 : INVD1 port map( A => sub_280_carry_18_port, Z => p141_1_19_port);
   U35 : OAI21M20D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_14_port, A2 =>
                           n200, B => n199, Z => data_out_2_port);
   U36 : OAI21M20D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_15_port, A2 =>
                           n200, B => n199, Z => data_out_3_port);
   U37 : NAN4D1 port map( A1 => data_out_4_port, A2 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_22_port, A3 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_21_port, A4 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_20_port, Z => n197);
   U38 : OAI21M20D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_13_port, A2 =>
                           n200, B => n199, Z => data_out_1_port);
   U39 : OAI21M20D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_12_port, A2 =>
                           n200, B => n199, Z => data_out_0_port);
   U40 : INVD1 port map( A => n2, Z => n30);
   U41 : INVD1 port map( A => n2, Z => n31);
   U42 : INVD1 port map( A => n2, Z => n32);
   U43 : INVD1 port map( A => n2, Z => n33);
   U44 : INVD1 port map( A => n2, Z => n34);
   U45 : INVD1 port map( A => n2, Z => n35);
   U46 : INVD1 port map( A => n1, Z => n61);
   U47 : INVD1 port map( A => p206_2_15_port, Z => n48);
   U48 : INVD1 port map( A => pair12_16_6_port, Z => n55);
   U49 : INVD1 port map( A => pair13_15_3_port, Z => n39);
   U50 : INVD1 port map( A => pair12_16_7_port, Z => n56);
   U51 : INVD1 port map( A => pair13_15_4_port, Z => n40);
   U52 : INVD1 port map( A => pair12_16_8_port, Z => n57);
   U53 : INVD1 port map( A => pair12_16_9_port, Z => n58);
   U54 : INVD1 port map( A => pair12_16_10_port, Z => n59);
   U55 : INVD1 port map( A => pair12_16_11_port, Z => n60);
   U56 : INVD1 port map( A => pair13_15_5_port, Z => n41);
   U57 : INVD1 port map( A => pair13_15_6_port, Z => n42);
   U58 : INVD1 port map( A => pair13_15_7_port, Z => n43);
   U59 : INVD1 port map( A => pair13_15_8_port, Z => n44);
   U60 : INVD1 port map( A => pair13_15_9_port, Z => n45);
   U61 : INVD1 port map( A => pair13_15_10_port, Z => n46);
   U62 : INVD1 port map( A => pair13_15_11_port, Z => n47);
   U63 : INVD1 port map( A => p141_1_0_port, Z => n49);
   U64 : INVD1 port map( A => pair12_16_1_port, Z => n50);
   U65 : INVD1 port map( A => p206_2_1_port, Z => n37);
   U66 : INVD1 port map( A => pair12_16_2_port, Z => n51);
   U67 : INVD1 port map( A => pair12_16_3_port, Z => n52);
   U68 : INVD1 port map( A => pair12_16_4_port, Z => n53);
   U69 : INVD1 port map( A => pair12_16_5_port, Z => n54);
   U70 : INVD1 port map( A => p206_3_0_port, Z => n36);
   U71 : INVD1 port map( A => pair13_15_2_port, Z => n38);
   U72 : INVD1 port map( A => n3, Z => n2);
   U73 : BUFD1 port map( A => arx_input_reg_178_port, Z => p232_2_17_port);
   U74 : BUFD1 port map( A => pair12_16_12_port, Z => n1);
   U75 : INVD1 port map( A => resetn, Z => n3);
   U76 : TIELO port map( Z => net5308);
   U77 : AND2D1 port map( A1 => sub_280_carry_5_port, A2 => n54, Z => 
                           sub_280_carry_6_port);
   U78 : EXOR2D1 port map( A1 => n54, A2 => sub_280_carry_5_port, Z => 
                           p141_1_5_port);
   U79 : AND2D1 port map( A1 => sub_280_carry_4_port, A2 => n53, Z => 
                           sub_280_carry_5_port);
   U80 : EXOR2D1 port map( A1 => n53, A2 => sub_280_carry_4_port, Z => 
                           p141_1_4_port);
   U81 : AND2D1 port map( A1 => sub_280_carry_3_port, A2 => n52, Z => 
                           sub_280_carry_4_port);
   U82 : EXOR2D1 port map( A1 => n52, A2 => sub_280_carry_3_port, Z => 
                           p141_1_3_port);
   U83 : AND2D1 port map( A1 => sub_280_carry_2_port, A2 => n51, Z => 
                           sub_280_carry_3_port);
   U84 : EXOR2D1 port map( A1 => n51, A2 => sub_280_carry_2_port, Z => 
                           p141_1_2_port);
   U85 : AND2D1 port map( A1 => n49, A2 => n50, Z => sub_280_carry_2_port);
   U86 : EXOR2D1 port map( A1 => n50, A2 => n49, Z => p141_1_1_port);
   U87 : AND2D1 port map( A1 => p232_2_0_port, A2 => arx_input_reg_168_port, Z 
                           => add_1_root_add_286_carry_2_port);
   U88 : EXOR2D1 port map( A1 => p232_2_0_port, A2 => arx_input_reg_168_port, Z
                           => p232_2_1_port);
   U89 : AND2D1 port map( A1 => sub_0_root_add_285_carry_2_port, A2 => n38, Z 
                           => sub_0_root_add_285_carry_3_port);
   U90 : EXOR2D1 port map( A1 => n38, A2 => sub_0_root_add_285_carry_2_port, Z 
                           => p206_3_2_port);
   U91 : AND2D1 port map( A1 => n36, A2 => n37, Z => 
                           sub_0_root_add_285_carry_2_port);
   U92 : EXOR2D1 port map( A1 => n37, A2 => n36, Z => p206_3_1_port);
   U93 : AND2D1 port map( A1 => pair13_15_2_port, A2 => p206_3_0_port, Z => 
                           add_284_carry_3_port);
   U94 : EXOR2D1 port map( A1 => pair13_15_2_port, A2 => p206_3_0_port, Z => 
                           p206_2_2_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of 
   lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUFD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_3_DW01_sub_8
      port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (15 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_14_DW01_add_32
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_6_DW01_add_15
      port( A, B : in std_logic_vector (13 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (13 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_7_DW01_add_16
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_8_DW01_add_17
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_2_DW01_sub_7
      port( A, B : in std_logic_vector (18 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (18 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_12_DW01_add_30
      port( A, B : in std_logic_vector (17 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (17 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_1_DW01_sub_4
      port( A, B : in std_logic_vector (16 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (16 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_9_DW01_add_21
      port( A, B : in std_logic_vector (13 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (13 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_10_DW01_add_22
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_11_DW01_add_23
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_15_DW01_add_34
      port( A, B : in std_logic_vector (19 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (19 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_5_DW01_sub_13
      port( A, B : in std_logic_vector (23 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (23 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_16_DW01_add_42
      port( A, B : in std_logic_vector (23 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (23 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_6_DW01_sub_14
      port( A, B : in std_logic_vector (23 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (23 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_17_DW01_add_43
      port( A, B : in std_logic_vector (23 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (23 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_18_DW01_add_44
      port( A, B : in std_logic_vector (22 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (22 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_19_DW01_add_45
      port( A, B : in std_logic_vector (20 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (20 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_20_DW01_add_46
      port( A, B : in std_logic_vector (22 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (22 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_21_DW01_add_47
      port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (14 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_22_DW01_add_48
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_5_DW01_add_11
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_4_DW01_add_10
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_3_DW01_add_9
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_2_DW01_add_8
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component 
      lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_1_DW01_add_7
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component OR4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal data_out_4_port, data_out_3_port, data_out_2_port, data_out_1_port, 
      data_out_0_port, arx_input_reg_334_port, arx_input_reg_333_port, 
      arx_input_reg_332_port, arx_input_reg_331_port, arx_input_reg_330_port, 
      arx_input_reg_329_port, arx_input_reg_328_port, arx_input_reg_327_port, 
      arx_input_reg_326_port, arx_input_reg_325_port, arx_input_reg_324_port, 
      arx_input_reg_323_port, arx_input_reg_322_port, arx_input_reg_321_port, 
      arx_input_reg_320_port, arx_input_reg_319_port, arx_input_reg_318_port, 
      arx_input_reg_317_port, arx_input_reg_316_port, arx_input_reg_315_port, 
      arx_input_reg_314_port, arx_input_reg_313_port, arx_input_reg_312_port, 
      arx_input_reg_311_port, arx_input_reg_310_port, arx_input_reg_309_port, 
      arx_input_reg_308_port, arx_input_reg_307_port, arx_input_reg_306_port, 
      arx_input_reg_305_port, arx_input_reg_304_port, arx_input_reg_303_port, 
      arx_input_reg_302_port, arx_input_reg_301_port, arx_input_reg_300_port, 
      arx_input_reg_299_port, arx_input_reg_298_port, arx_input_reg_297_port, 
      arx_input_reg_296_port, arx_input_reg_295_port, arx_input_reg_294_port, 
      arx_input_reg_293_port, arx_input_reg_292_port, arx_input_reg_291_port, 
      arx_input_reg_290_port, arx_input_reg_289_port, arx_input_reg_288_port, 
      arx_input_reg_287_port, arx_input_reg_286_port, arx_input_reg_285_port, 
      arx_input_reg_284_port, arx_input_reg_283_port, arx_input_reg_282_port, 
      arx_input_reg_281_port, arx_input_reg_280_port, arx_input_reg_279_port, 
      arx_input_reg_278_port, arx_input_reg_277_port, arx_input_reg_276_port, 
      arx_input_reg_275_port, arx_input_reg_274_port, arx_input_reg_273_port, 
      arx_input_reg_272_port, arx_input_reg_271_port, arx_input_reg_270_port, 
      arx_input_reg_269_port, arx_input_reg_268_port, arx_input_reg_267_port, 
      arx_input_reg_266_port, arx_input_reg_265_port, arx_input_reg_264_port, 
      arx_input_reg_263_port, arx_input_reg_262_port, arx_input_reg_261_port, 
      arx_input_reg_260_port, arx_input_reg_259_port, arx_input_reg_258_port, 
      arx_input_reg_257_port, arx_input_reg_256_port, arx_input_reg_255_port, 
      arx_input_reg_254_port, arx_input_reg_253_port, arx_input_reg_252_port, 
      arx_input_reg_251_port, arx_input_reg_250_port, arx_input_reg_249_port, 
      arx_input_reg_248_port, arx_input_reg_247_port, arx_input_reg_246_port, 
      arx_input_reg_245_port, arx_input_reg_244_port, arx_input_reg_243_port, 
      arx_input_reg_242_port, arx_input_reg_241_port, arx_input_reg_240_port, 
      arx_input_reg_239_port, arx_input_reg_238_port, arx_input_reg_237_port, 
      arx_input_reg_236_port, arx_input_reg_235_port, arx_input_reg_234_port, 
      arx_input_reg_233_port, arx_input_reg_232_port, arx_input_reg_231_port, 
      arx_input_reg_230_port, arx_input_reg_229_port, arx_input_reg_228_port, 
      arx_input_reg_227_port, arx_input_reg_226_port, arx_input_reg_225_port, 
      arx_input_reg_224_port, arx_input_reg_223_port, arx_input_reg_222_port, 
      arx_input_reg_221_port, arx_input_reg_220_port, arx_input_reg_219_port, 
      arx_input_reg_218_port, arx_input_reg_217_port, arx_input_reg_216_port, 
      arx_input_reg_215_port, arx_input_reg_214_port, arx_input_reg_213_port, 
      arx_input_reg_212_port, arx_input_reg_211_port, arx_input_reg_210_port, 
      arx_input_reg_209_port, arx_input_reg_208_port, arx_input_reg_207_port, 
      arx_input_reg_206_port, arx_input_reg_205_port, arx_input_reg_204_port, 
      arx_input_reg_203_port, arx_input_reg_202_port, arx_input_reg_201_port, 
      arx_input_reg_200_port, arx_input_reg_199_port, arx_input_reg_198_port, 
      arx_input_reg_197_port, arx_input_reg_196_port, arx_input_reg_195_port, 
      arx_input_reg_194_port, arx_input_reg_193_port, arx_input_reg_192_port, 
      arx_input_reg_191_port, arx_input_reg_190_port, arx_input_reg_189_port, 
      arx_input_reg_188_port, arx_input_reg_187_port, arx_input_reg_186_port, 
      arx_input_reg_185_port, arx_input_reg_184_port, arx_input_reg_183_port, 
      arx_input_reg_182_port, arx_input_reg_181_port, arx_input_reg_180_port, 
      arx_input_reg_179_port, arx_input_reg_178_port, arx_input_reg_177_port, 
      arx_input_reg_176_port, arx_input_reg_175_port, arx_input_reg_174_port, 
      arx_input_reg_173_port, arx_input_reg_172_port, arx_input_reg_171_port, 
      arx_input_reg_170_port, arx_input_reg_169_port, arx_input_reg_168_port, 
      arx_input_reg_167_port, arx_input_reg_166_port, arx_input_reg_165_port, 
      arx_input_reg_164_port, arx_input_reg_163_port, arx_input_reg_162_port, 
      arx_input_reg_161_port, arx_input_reg_160_port, arx_input_reg_159_port, 
      arx_input_reg_158_port, arx_input_reg_157_port, arx_input_reg_156_port, 
      arx_input_reg_155_port, arx_input_reg_154_port, arx_input_reg_153_port, 
      arx_input_reg_152_port, arx_input_reg_151_port, arx_input_reg_150_port, 
      arx_input_reg_149_port, arx_input_reg_148_port, arx_input_reg_147_port, 
      arx_input_reg_146_port, arx_input_reg_145_port, arx_input_reg_144_port, 
      arx_input_reg_143_port, arx_input_reg_142_port, arx_input_reg_141_port, 
      arx_input_reg_140_port, arx_input_reg_139_port, arx_input_reg_138_port, 
      arx_input_reg_137_port, arx_input_reg_136_port, arx_input_reg_135_port, 
      arx_input_reg_134_port, arx_input_reg_133_port, arx_input_reg_132_port, 
      arx_input_reg_131_port, arx_input_reg_130_port, arx_input_reg_129_port, 
      arx_input_reg_128_port, arx_input_reg_127_port, arx_input_reg_126_port, 
      arx_input_reg_125_port, arx_input_reg_124_port, arx_input_reg_123_port, 
      arx_input_reg_122_port, arx_input_reg_121_port, arx_input_reg_120_port, 
      arx_input_reg_119_port, arx_input_reg_118_port, arx_input_reg_117_port, 
      arx_input_reg_116_port, arx_input_reg_115_port, arx_input_reg_114_port, 
      arx_input_reg_113_port, arx_input_reg_112_port, arx_input_reg_111_port, 
      arx_input_reg_110_port, arx_input_reg_109_port, arx_input_reg_108_port, 
      arx_input_reg_107_port, arx_input_reg_106_port, arx_input_reg_105_port, 
      arx_input_reg_104_port, arx_input_reg_103_port, arx_input_reg_102_port, 
      arx_input_reg_101_port, arx_input_reg_100_port, arx_input_reg_99_port, 
      arx_input_reg_98_port, arx_input_reg_97_port, arx_input_reg_96_port, 
      arx_input_reg_95_port, arx_input_reg_94_port, arx_input_reg_93_port, 
      arx_input_reg_92_port, arx_input_reg_91_port, arx_input_reg_90_port, 
      arx_input_reg_89_port, arx_input_reg_88_port, arx_input_reg_87_port, 
      arx_input_reg_86_port, arx_input_reg_85_port, arx_input_reg_84_port, 
      arx_input_reg_83_port, arx_input_reg_82_port, arx_input_reg_81_port, 
      arx_input_reg_80_port, arx_input_reg_79_port, arx_input_reg_78_port, 
      arx_input_reg_77_port, arx_input_reg_76_port, arx_input_reg_75_port, 
      arx_input_reg_74_port, arx_input_reg_73_port, arx_input_reg_72_port, 
      arx_input_reg_71_port, arx_input_reg_70_port, arx_input_reg_69_port, 
      arx_input_reg_68_port, arx_input_reg_67_port, arx_input_reg_66_port, 
      arx_input_reg_65_port, arx_input_reg_64_port, arx_input_reg_63_port, 
      arx_input_reg_62_port, arx_input_reg_61_port, arx_input_reg_60_port, 
      arx_input_reg_59_port, arx_input_reg_58_port, arx_input_reg_57_port, 
      arx_input_reg_56_port, arx_input_reg_55_port, arx_input_reg_54_port, 
      arx_input_reg_53_port, arx_input_reg_52_port, arx_input_reg_51_port, 
      arx_input_reg_50_port, arx_input_reg_49_port, arx_input_reg_48_port, 
      arx_input_reg_47_port, arx_input_reg_46_port, arx_input_reg_45_port, 
      arx_input_reg_44_port, arx_input_reg_43_port, arx_input_reg_42_port, 
      arx_input_reg_41_port, arx_input_reg_40_port, arx_input_reg_39_port, 
      arx_input_reg_38_port, arx_input_reg_37_port, arx_input_reg_36_port, 
      arx_input_reg_35_port, arx_input_reg_34_port, arx_input_reg_33_port, 
      arx_input_reg_32_port, arx_input_reg_31_port, arx_input_reg_30_port, 
      arx_input_reg_29_port, arx_input_reg_28_port, arx_input_reg_27_port, 
      arx_input_reg_26_port, arx_input_reg_25_port, arx_input_reg_24_port, 
      arx_input_reg_23_port, arx_input_reg_22_port, arx_input_reg_21_port, 
      arx_input_reg_20_port, arx_input_reg_19_port, arx_input_reg_18_port, 
      arx_input_reg_17_port, arx_input_reg_16_port, arx_input_reg_15_port, 
      arx_input_reg_14_port, arx_input_reg_13_port, arx_input_reg_12_port, 
      arx_input_reg_11_port, arx_input_reg_10_port, arx_input_reg_9_port, 
      arx_input_reg_8_port, arx_input_reg_7_port, arx_input_reg_6_port, 
      arx_input_reg_5_port, arx_input_reg_4_port, arx_input_reg_3_port, 
      arx_input_reg_2_port, arx_input_reg_1_port, arx_input_reg_0_port, 
      pair1_27_12_port, pair1_27_11_port, pair1_27_10_port, pair1_27_9_port, 
      pair1_27_8_port, pair1_27_7_port, pair1_27_6_port, pair1_27_5_port, 
      pair1_27_4_port, pair1_27_3_port, pair1_27_2_port, pair1_27_1_port, 
      pair1_27_0_port, pair7_21_12_port, pair7_21_11_port, pair7_21_10_port, 
      pair7_21_9_port, pair7_21_8_port, pair7_21_7_port, pair7_21_6_port, 
      pair7_21_5_port, pair7_21_4_port, pair7_21_3_port, pair7_21_2_port, 
      pair7_21_1_port, pair7_21_0_port, pair11_17_12_port, pair11_17_11_port, 
      pair11_17_10_port, pair11_17_9_port, pair11_17_8_port, pair11_17_7_port, 
      pair11_17_6_port, pair11_17_5_port, pair11_17_4_port, pair11_17_3_port, 
      pair11_17_2_port, pair11_17_1_port, pair11_17_0_port, pair12_16_12_port, 
      pair12_16_11_port, pair12_16_10_port, pair12_16_9_port, pair12_16_8_port,
      pair12_16_7_port, pair12_16_6_port, pair12_16_5_port, pair12_16_4_port, 
      pair12_16_3_port, pair12_16_2_port, pair12_16_1_port, pair13_15_11_port, 
      pair13_15_10_port, pair13_15_9_port, pair13_15_8_port, pair13_15_7_port, 
      pair13_15_6_port, pair13_15_5_port, pair13_15_4_port, pair13_15_3_port, 
      pair13_15_2_port, t8_9_13_port, t8_9_12_port, t8_9_11_port, t8_9_10_port,
      t8_9_9_port, t8_9_8_port, t8_9_7_port, t8_9_6_port, t8_9_5_port, 
      t8_9_4_port, t8_9_3_port, t8_9_2_port, t8_9_1_port, t8_9_0_port, 
      t3_7_15_port, t3_7_14_port, t3_7_13_port, t3_7_12_port, t3_7_11_port, 
      t3_7_10_port, t3_7_9_port, t3_7_8_port, t3_7_7_port, t3_7_6_port, 
      t3_7_5_port, t3_7_4_port, t3_7_3_port, t3_7_2_port, t3_7_1_port, 
      t3_7_0_port, p141_1_19_port, p141_1_17_port, p141_1_16_port, 
      p141_1_15_port, p141_1_14_port, p141_1_13_port, p141_1_12_port, 
      p141_1_11_port, p141_1_10_port, p141_1_9_port, p141_1_8_port, 
      p141_1_7_port, p141_1_6_port, p141_1_5_port, p141_1_4_port, p141_1_3_port
      , p141_1_2_port, p141_1_1_port, p141_1_0_port, p206_2_15_port, 
      p206_2_14_port, p206_2_13_port, p206_2_12_port, p206_2_11_port, 
      p206_2_10_port, p206_2_9_port, p206_2_8_port, p206_2_7_port, 
      p206_2_6_port, p206_2_5_port, p206_2_4_port, p206_2_3_port, p206_2_2_port
      , p206_2_1_port, p206_3_20_port, p206_3_19_port, p206_3_18_port, 
      p206_3_17_port, p206_3_16_port, p206_3_15_port, p206_3_14_port, 
      p206_3_13_port, p206_3_12_port, p206_3_11_port, p206_3_10_port, 
      p206_3_9_port, p206_3_8_port, p206_3_7_port, p206_3_6_port, p206_3_5_port
      , p206_3_4_port, p206_3_3_port, p206_3_2_port, p206_3_1_port, 
      p206_3_0_port, t11_14_18_port, t11_14_17_port, t11_14_16_port, 
      t11_14_15_port, t11_14_14_port, t11_14_13_port, t11_14_12_port, 
      t11_14_11_port, t11_14_10_port, t11_14_9_port, t11_14_8_port, 
      t11_14_7_port, t11_14_6_port, t11_14_5_port, t11_14_4_port, t11_14_3_port
      , t11_14_2_port, t11_14_1_port, t11_14_0_port, t4_5_8_9_19_port, 
      t4_5_8_9_18_port, t4_5_8_9_17_port, t4_5_8_9_16_port, t4_5_8_9_15_port, 
      t4_5_8_9_14_port, t4_5_8_9_13_port, t4_5_8_9_12_port, t4_5_8_9_11_port, 
      t4_5_8_9_10_port, t4_5_8_9_9_port, t4_5_8_9_8_port, t4_5_8_9_7_port, 
      t4_5_8_9_6_port, t4_5_8_9_5_port, t4_5_8_9_4_port, t4_5_8_9_3_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_22_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_21_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_20_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_19_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_18_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_17_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_16_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_15_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_14_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_13_port, 
      t0_1_3_4_5_7_8_9_11_12_13_14_12_port, n68, n69, n70, n71, n72, n73, 
      t12_13_9_port, t12_13_8_port, t12_13_7_port, t12_13_6_port, t12_13_5_port
      , t12_13_4_port, t12_13_3_port, t12_13_2_port, t12_13_22_port, 
      t12_13_21_port, t12_13_20_port, t12_13_1_port, t12_13_19_port, 
      t12_13_18_port, t12_13_17_port, t12_13_16_port, t12_13_15_port, 
      t12_13_14_port, t12_13_13_port, t12_13_12_port, t12_13_11_port, 
      t12_13_10_port, net5306, t0_1_9_port, t0_1_8_port, t0_1_7_port, 
      t0_1_6_port, t0_1_5_port, t0_1_4_port, t0_1_3_port, t0_1_2_port, 
      t0_1_1_port, t0_1_14_port, t0_1_13_port, t0_1_12_port, t0_1_11_port, 
      t0_1_10_port, t0_1_0_port, pair0_28_9_port, pair0_28_8_port, 
      pair0_28_7_port, pair0_28_6_port, pair0_28_5_port, pair0_28_4_port, 
      pair0_28_3_port, pair0_28_2_port, pair0_28_1_port, pair0_28_12_port, 
      pair0_28_11_port, pair0_28_10_port, pair0_28_0_port, p206_1_9_port, 
      p206_1_8_port, p206_1_7_port, p206_1_6_port, p206_1_5_port, p206_1_4_port
      , p206_1_3_port, p206_1_19_port, p206_1_18_port, p206_1_17_port, 
      p206_1_16_port, p206_1_15_port, p206_1_14_port, p206_1_13_port, 
      p206_1_12_port, p206_1_11_port, p206_1_10_port, t4_5_9_port, t4_5_8_port,
      t4_5_7_port, t4_5_6_port, t4_5_5_port, t4_5_4_port, t4_5_3_port, 
      t4_5_2_port, t4_5_1_port, t4_5_13_port, t4_5_12_port, t4_5_11_port, 
      t4_5_10_port, t4_5_0_port, pair5_23_9_port, pair5_23_8_port, 
      pair5_23_7_port, pair5_23_6_port, pair5_23_5_port, pair5_23_4_port, 
      pair5_23_3_port, pair5_23_2_port, pair5_23_1_port, pair5_23_12_port, 
      pair5_23_11_port, pair5_23_10_port, pair5_23_0_port, pair4_24_9_port, 
      pair4_24_8_port, pair4_24_7_port, pair4_24_6_port, pair4_24_5_port, 
      pair4_24_4_port, pair4_24_3_port, pair4_24_2_port, pair4_24_1_port, 
      pair4_24_12_port, pair4_24_11_port, pair4_24_10_port, pair4_24_0_port, 
      p232_2_9_port, p232_2_8_port, p232_2_7_port, p232_2_6_port, p232_2_5_port
      , p232_2_4_port, p232_2_3_port, p232_2_2_port, p232_2_1_port, 
      p232_2_17_port, p232_2_12_port, p232_2_11_port, p232_2_10_port, 
      p232_2_0_port, pair9_19_9_port, pair9_19_8_port, pair9_19_7_port, 
      pair9_19_6_port, pair9_19_5_port, pair9_19_4_port, pair9_19_3_port, 
      pair9_19_2_port, pair9_19_1_port, pair9_19_12_port, pair9_19_11_port, 
      pair9_19_10_port, pair9_19_0_port, pair8_20_9_port, pair8_20_8_port, 
      pair8_20_7_port, pair8_20_6_port, pair8_20_5_port, pair8_20_4_port, 
      pair8_20_3_port, pair8_20_2_port, pair8_20_1_port, pair8_20_12_port, 
      pair8_20_11_port, pair8_20_10_port, pair8_20_0_port, pair3_25_9_port, 
      pair3_25_8_port, pair3_25_7_port, pair3_25_6_port, pair3_25_5_port, 
      pair3_25_4_port, pair3_25_3_port, pair3_25_2_port, pair3_25_1_port, 
      pair3_25_12_port, pair3_25_11_port, pair3_25_10_port, pair3_25_0_port, 
      add_284_carry_3_port, add_284_carry_4_port, add_284_carry_5_port, 
      add_284_carry_6_port, add_284_carry_7_port, add_284_carry_8_port, 
      add_284_carry_9_port, add_284_carry_10_port, add_284_carry_11_port, 
      add_284_carry_12_port, add_284_carry_13_port, sub_280_carry_2_port, 
      sub_280_carry_3_port, sub_280_carry_4_port, sub_280_carry_5_port, 
      sub_280_carry_6_port, sub_280_carry_7_port, sub_280_carry_8_port, 
      sub_280_carry_9_port, sub_280_carry_10_port, sub_280_carry_11_port, 
      sub_280_carry_12_port, sub_280_carry_13_port, sub_280_carry_14_port, 
      sub_280_carry_15_port, sub_280_carry_16_port, sub_280_carry_17_port, 
      sub_280_carry_18_port, add_1_root_add_286_carry_2_port, 
      add_1_root_add_286_carry_3_port, add_1_root_add_286_carry_4_port, 
      add_1_root_add_286_carry_5_port, add_1_root_add_286_carry_6_port, 
      add_1_root_add_286_carry_7_port, add_1_root_add_286_carry_8_port, 
      add_1_root_add_286_carry_9_port, add_1_root_add_286_carry_10_port, 
      add_1_root_add_286_carry_11_port, sub_0_root_add_285_carry_2_port, 
      sub_0_root_add_285_carry_3_port, sub_0_root_add_285_carry_4_port, 
      sub_0_root_add_285_carry_5_port, sub_0_root_add_285_carry_6_port, 
      sub_0_root_add_285_carry_7_port, sub_0_root_add_285_carry_8_port, 
      sub_0_root_add_285_carry_9_port, sub_0_root_add_285_carry_10_port, 
      sub_0_root_add_285_carry_11_port, sub_0_root_add_285_carry_12_port, 
      sub_0_root_add_285_carry_13_port, sub_0_root_add_285_carry_14_port, 
      sub_0_root_add_285_carry_15_port, sub_0_root_add_285_carry_16_port, 
      sub_0_root_add_285_carry_17_port, sub_0_root_add_285_carry_18_port, 
      sub_0_root_add_285_carry_19_port, sub_0_root_add_285_carry_20_port, n1, 
      n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, 
      n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32
      , n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, 
      n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61
      , n62, n63, n64, n65, n66, n67, n74, n75, n76, n77, n78, n79, n80, n81, 
      n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96
      , n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, 
      n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, 
      n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, 
      n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, 
      n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, 
      n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, 
      n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, 
      n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, 
      n193, n194, n_1372, n_1373, n_1374, n_1375, n_1376, n_1377, n_1378, 
      n_1379, n_1380, n_1381, n_1382, n_1383, n_1384, n_1385, n_1386, n_1387, 
      n_1388, n_1389, n_1390, n_1391, n_1392, n_1393, n_1394, n_1395, n_1396, 
      n_1397, n_1398, n_1399, n_1400, n_1401, n_1402, n_1403, n_1404, n_1405, 
      n_1406, n_1407, n_1408, n_1409, n_1410, n_1411, n_1412, n_1413, n_1414, 
      n_1415, n_1416, n_1417, n_1418, n_1419, n_1420, n_1421 : std_logic;

begin
   data_out <= ( data_out_4_port, data_out_3_port, data_out_2_port, 
      data_out_1_port, data_out_0_port );
   
   U16 : OR2D1 port map( A1 => n68, A2 => data_out_4_port, Z => n69);
   U17 : OAI22D1 port map( A1 => n70, A2 => n71, B1 => n72, B2 => n73, Z => n68
                           );
   U18 : OR4D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_16_port, A2 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_17_port, A3 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_18_port, A4 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_19_port, Z => n73);
   U19 : OR4D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_20_port, A2 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_21_port, A3 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_22_port, A4 => 
                           data_out_4_port, Z => n72);
   add_273 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_1_DW01_add_7 
                           port map( A(12) => arx_input_reg_190_port, A(11) => 
                           arx_input_reg_190_port, A(10) => 
                           arx_input_reg_189_port, A(9) => 
                           arx_input_reg_188_port, A(8) => 
                           arx_input_reg_187_port, A(7) => 
                           arx_input_reg_186_port, A(6) => 
                           arx_input_reg_185_port, A(5) => 
                           arx_input_reg_184_port, A(4) => 
                           arx_input_reg_183_port, A(3) => 
                           arx_input_reg_182_port, A(2) => 
                           arx_input_reg_181_port, A(1) => 
                           arx_input_reg_180_port, A(0) => 
                           arx_input_reg_179_port, B(12) => 
                           arx_input_reg_167_port, B(11) => 
                           arx_input_reg_167_port, B(10) => 
                           arx_input_reg_166_port, B(9) => 
                           arx_input_reg_165_port, B(8) => 
                           arx_input_reg_164_port, B(7) => 
                           arx_input_reg_163_port, B(6) => 
                           arx_input_reg_162_port, B(5) => 
                           arx_input_reg_161_port, B(4) => 
                           arx_input_reg_160_port, B(3) => 
                           arx_input_reg_159_port, B(2) => 
                           arx_input_reg_158_port, B(1) => 
                           arx_input_reg_157_port, B(0) => 
                           arx_input_reg_156_port, CI => net5306, SUM(12) => 
                           p206_2_15_port, SUM(11) => pair13_15_11_port, 
                           SUM(10) => pair13_15_10_port, SUM(9) => 
                           pair13_15_9_port, SUM(8) => pair13_15_8_port, SUM(7)
                           => pair13_15_7_port, SUM(6) => pair13_15_6_port, 
                           SUM(5) => pair13_15_5_port, SUM(4) => 
                           pair13_15_4_port, SUM(3) => pair13_15_3_port, SUM(2)
                           => pair13_15_2_port, SUM(1) => p206_2_1_port, SUM(0)
                           => p206_3_0_port, CO => n_1372);
   add_272 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_2_DW01_add_8 
                           port map( A(12) => arx_input_reg_202_port, A(11) => 
                           arx_input_reg_202_port, A(10) => 
                           arx_input_reg_201_port, A(9) => 
                           arx_input_reg_200_port, A(8) => 
                           arx_input_reg_199_port, A(7) => 
                           arx_input_reg_198_port, A(6) => 
                           arx_input_reg_197_port, A(5) => 
                           arx_input_reg_196_port, A(4) => 
                           arx_input_reg_195_port, A(3) => 
                           arx_input_reg_194_port, A(2) => 
                           arx_input_reg_193_port, A(1) => 
                           arx_input_reg_192_port, A(0) => 
                           arx_input_reg_191_port, B(12) => 
                           arx_input_reg_155_port, B(11) => 
                           arx_input_reg_155_port, B(10) => 
                           arx_input_reg_154_port, B(9) => 
                           arx_input_reg_153_port, B(8) => 
                           arx_input_reg_152_port, B(7) => 
                           arx_input_reg_151_port, B(6) => 
                           arx_input_reg_150_port, B(5) => 
                           arx_input_reg_149_port, B(4) => 
                           arx_input_reg_148_port, B(3) => 
                           arx_input_reg_147_port, B(2) => 
                           arx_input_reg_146_port, B(1) => 
                           arx_input_reg_145_port, B(0) => 
                           arx_input_reg_144_port, CI => net5306, SUM(12) => 
                           pair12_16_12_port, SUM(11) => pair12_16_11_port, 
                           SUM(10) => pair12_16_10_port, SUM(9) => 
                           pair12_16_9_port, SUM(8) => pair12_16_8_port, SUM(7)
                           => pair12_16_7_port, SUM(6) => pair12_16_6_port, 
                           SUM(5) => pair12_16_5_port, SUM(4) => 
                           pair12_16_4_port, SUM(3) => pair12_16_3_port, SUM(2)
                           => pair12_16_2_port, SUM(1) => pair12_16_1_port, 
                           SUM(0) => p141_1_0_port, CO => n_1373);
   add_271 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_3_DW01_add_9 
                           port map( A(12) => arx_input_reg_214_port, A(11) => 
                           arx_input_reg_214_port, A(10) => 
                           arx_input_reg_213_port, A(9) => 
                           arx_input_reg_212_port, A(8) => 
                           arx_input_reg_211_port, A(7) => 
                           arx_input_reg_210_port, A(6) => 
                           arx_input_reg_209_port, A(5) => 
                           arx_input_reg_208_port, A(4) => 
                           arx_input_reg_207_port, A(3) => 
                           arx_input_reg_206_port, A(2) => 
                           arx_input_reg_205_port, A(1) => 
                           arx_input_reg_204_port, A(0) => 
                           arx_input_reg_203_port, B(12) => 
                           arx_input_reg_143_port, B(11) => 
                           arx_input_reg_143_port, B(10) => 
                           arx_input_reg_142_port, B(9) => 
                           arx_input_reg_141_port, B(8) => 
                           arx_input_reg_140_port, B(7) => 
                           arx_input_reg_139_port, B(6) => 
                           arx_input_reg_138_port, B(5) => 
                           arx_input_reg_137_port, B(4) => 
                           arx_input_reg_136_port, B(3) => 
                           arx_input_reg_135_port, B(2) => 
                           arx_input_reg_134_port, B(1) => 
                           arx_input_reg_133_port, B(0) => 
                           arx_input_reg_132_port, CI => net5306, SUM(12) => 
                           pair11_17_12_port, SUM(11) => pair11_17_11_port, 
                           SUM(10) => pair11_17_10_port, SUM(9) => 
                           pair11_17_9_port, SUM(8) => pair11_17_8_port, SUM(7)
                           => pair11_17_7_port, SUM(6) => pair11_17_6_port, 
                           SUM(5) => pair11_17_5_port, SUM(4) => 
                           pair11_17_4_port, SUM(3) => pair11_17_3_port, SUM(2)
                           => pair11_17_2_port, SUM(1) => pair11_17_1_port, 
                           SUM(0) => pair11_17_0_port, CO => n_1374);
   add_268 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_4_DW01_add_10 
                           port map( A(12) => arx_input_reg_262_port, A(11) => 
                           arx_input_reg_262_port, A(10) => 
                           arx_input_reg_261_port, A(9) => 
                           arx_input_reg_260_port, A(8) => 
                           arx_input_reg_259_port, A(7) => 
                           arx_input_reg_258_port, A(6) => 
                           arx_input_reg_257_port, A(5) => 
                           arx_input_reg_256_port, A(4) => 
                           arx_input_reg_255_port, A(3) => 
                           arx_input_reg_254_port, A(2) => 
                           arx_input_reg_253_port, A(1) => 
                           arx_input_reg_252_port, A(0) => 
                           arx_input_reg_251_port, B(12) => 
                           arx_input_reg_95_port, B(11) => 
                           arx_input_reg_95_port, B(10) => 
                           arx_input_reg_94_port, B(9) => arx_input_reg_93_port
                           , B(8) => arx_input_reg_92_port, B(7) => 
                           arx_input_reg_91_port, B(6) => arx_input_reg_90_port
                           , B(5) => arx_input_reg_89_port, B(4) => 
                           arx_input_reg_88_port, B(3) => arx_input_reg_87_port
                           , B(2) => arx_input_reg_86_port, B(1) => 
                           arx_input_reg_85_port, B(0) => arx_input_reg_84_port
                           , CI => net5306, SUM(12) => pair7_21_12_port, 
                           SUM(11) => pair7_21_11_port, SUM(10) => 
                           pair7_21_10_port, SUM(9) => pair7_21_9_port, SUM(8) 
                           => pair7_21_8_port, SUM(7) => pair7_21_7_port, 
                           SUM(6) => pair7_21_6_port, SUM(5) => pair7_21_5_port
                           , SUM(4) => pair7_21_4_port, SUM(3) => 
                           pair7_21_3_port, SUM(2) => pair7_21_2_port, SUM(1) 
                           => pair7_21_1_port, SUM(0) => pair7_21_0_port, CO =>
                           n_1375);
   add_264 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_5_DW01_add_11 
                           port map( A(12) => arx_input_reg_334_port, A(11) => 
                           arx_input_reg_334_port, A(10) => 
                           arx_input_reg_333_port, A(9) => 
                           arx_input_reg_332_port, A(8) => 
                           arx_input_reg_331_port, A(7) => 
                           arx_input_reg_330_port, A(6) => 
                           arx_input_reg_329_port, A(5) => 
                           arx_input_reg_328_port, A(4) => 
                           arx_input_reg_327_port, A(3) => 
                           arx_input_reg_326_port, A(2) => 
                           arx_input_reg_325_port, A(1) => 
                           arx_input_reg_324_port, A(0) => 
                           arx_input_reg_323_port, B(12) => 
                           arx_input_reg_23_port, B(11) => 
                           arx_input_reg_23_port, B(10) => 
                           arx_input_reg_22_port, B(9) => arx_input_reg_21_port
                           , B(8) => arx_input_reg_20_port, B(7) => 
                           arx_input_reg_19_port, B(6) => arx_input_reg_18_port
                           , B(5) => arx_input_reg_17_port, B(4) => 
                           arx_input_reg_16_port, B(3) => arx_input_reg_15_port
                           , B(2) => arx_input_reg_14_port, B(1) => 
                           arx_input_reg_13_port, B(0) => arx_input_reg_12_port
                           , CI => net5306, SUM(12) => pair1_27_12_port, 
                           SUM(11) => pair1_27_11_port, SUM(10) => 
                           pair1_27_10_port, SUM(9) => pair1_27_9_port, SUM(8) 
                           => pair1_27_8_port, SUM(7) => pair1_27_7_port, 
                           SUM(6) => pair1_27_6_port, SUM(5) => pair1_27_5_port
                           , SUM(4) => pair1_27_4_port, SUM(3) => 
                           pair1_27_3_port, SUM(2) => pair1_27_2_port, SUM(1) 
                           => pair1_27_1_port, SUM(0) => pair1_27_0_port, CO =>
                           n_1376);
   add_5_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_22_DW01_add_48 
                           port map( A(12) => data_in(11), A(11) => data_in(11)
                           , A(10) => data_in(10), A(9) => data_in(9), A(8) => 
                           data_in(8), A(7) => data_in(7), A(6) => data_in(6), 
                           A(5) => data_in(5), A(4) => data_in(4), A(3) => 
                           data_in(3), A(2) => data_in(2), A(1) => data_in(1), 
                           A(0) => data_in(0), B(12) => arx_input_reg_11_port, 
                           B(11) => arx_input_reg_11_port, B(10) => 
                           arx_input_reg_10_port, B(9) => arx_input_reg_9_port,
                           B(8) => arx_input_reg_8_port, B(7) => 
                           arx_input_reg_7_port, B(6) => arx_input_reg_6_port, 
                           B(5) => arx_input_reg_5_port, B(4) => 
                           arx_input_reg_4_port, B(3) => arx_input_reg_3_port, 
                           B(2) => arx_input_reg_2_port, B(1) => 
                           arx_input_reg_1_port, B(0) => arx_input_reg_0_port, 
                           CI => net5306, SUM(12) => pair0_28_12_port, SUM(11) 
                           => pair0_28_11_port, SUM(10) => pair0_28_10_port, 
                           SUM(9) => pair0_28_9_port, SUM(8) => pair0_28_8_port
                           , SUM(7) => pair0_28_7_port, SUM(6) => 
                           pair0_28_6_port, SUM(5) => pair0_28_5_port, SUM(4) 
                           => pair0_28_4_port, SUM(3) => pair0_28_3_port, 
                           SUM(2) => pair0_28_2_port, SUM(1) => pair0_28_1_port
                           , SUM(0) => pair0_28_0_port, CO => n_1377);
   add_4_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_21_DW01_add_47 
                           port map( A(14) => pair1_27_12_port, A(13) => 
                           pair1_27_12_port, A(12) => pair1_27_11_port, A(11) 
                           => pair1_27_10_port, A(10) => pair1_27_9_port, A(9) 
                           => pair1_27_8_port, A(8) => pair1_27_7_port, A(7) =>
                           pair1_27_6_port, A(6) => pair1_27_5_port, A(5) => 
                           pair1_27_4_port, A(4) => pair1_27_3_port, A(3) => 
                           pair1_27_2_port, A(2) => pair1_27_1_port, A(1) => 
                           pair1_27_0_port, A(0) => net5306, B(14) => n1, B(13)
                           => n1, B(12) => n1, B(11) => pair12_16_11_port, 
                           B(10) => pair12_16_10_port, B(9) => pair12_16_9_port
                           , B(8) => pair12_16_8_port, B(7) => pair12_16_7_port
                           , B(6) => pair12_16_6_port, B(5) => pair12_16_5_port
                           , B(4) => pair12_16_4_port, B(3) => pair12_16_3_port
                           , B(2) => pair12_16_2_port, B(1) => pair12_16_1_port
                           , B(0) => p141_1_0_port, CI => net5306, SUM(14) => 
                           t0_1_14_port, SUM(13) => t0_1_13_port, SUM(12) => 
                           t0_1_12_port, SUM(11) => t0_1_11_port, SUM(10) => 
                           t0_1_10_port, SUM(9) => t0_1_9_port, SUM(8) => 
                           t0_1_8_port, SUM(7) => t0_1_7_port, SUM(6) => 
                           t0_1_6_port, SUM(5) => t0_1_5_port, SUM(4) => 
                           t0_1_4_port, SUM(3) => t0_1_3_port, SUM(2) => 
                           t0_1_2_port, SUM(1) => t0_1_1_port, SUM(0) => 
                           t0_1_0_port, CO => n_1378);
   add_7_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_20_DW01_add_46 
                           port map( A(22) => t11_14_18_port, A(21) => 
                           t11_14_18_port, A(20) => t11_14_17_port, A(19) => 
                           t11_14_16_port, A(18) => t11_14_15_port, A(17) => 
                           t11_14_14_port, A(16) => t11_14_13_port, A(15) => 
                           t11_14_12_port, A(14) => t11_14_11_port, A(13) => 
                           t11_14_10_port, A(12) => t11_14_9_port, A(11) => 
                           t11_14_8_port, A(10) => t11_14_7_port, A(9) => 
                           t11_14_6_port, A(8) => t11_14_5_port, A(7) => 
                           t11_14_4_port, A(6) => t11_14_3_port, A(5) => 
                           t11_14_2_port, A(4) => t11_14_1_port, A(3) => 
                           t11_14_0_port, A(2) => net5306, A(1) => net5306, 
                           A(0) => net5306, B(22) => p141_1_19_port, B(21) => 
                           p141_1_19_port, B(20) => p141_1_19_port, B(19) => 
                           p141_1_19_port, B(18) => p141_1_17_port, B(17) => 
                           p141_1_16_port, B(16) => p141_1_15_port, B(15) => 
                           p141_1_14_port, B(14) => p141_1_13_port, B(13) => 
                           p141_1_12_port, B(12) => p141_1_11_port, B(11) => 
                           p141_1_10_port, B(10) => p141_1_9_port, B(9) => 
                           p141_1_8_port, B(8) => p141_1_7_port, B(7) => 
                           p141_1_6_port, B(6) => p141_1_5_port, B(5) => 
                           p141_1_4_port, B(4) => p141_1_3_port, B(3) => 
                           p141_1_2_port, B(2) => p141_1_1_port, B(1) => 
                           p141_1_0_port, B(0) => net5306, CI => net5306, 
                           SUM(22) => n137, SUM(21) => n138, SUM(20) => n139, 
                           SUM(19) => n140, SUM(18) => n141, SUM(17) => n142, 
                           SUM(16) => n143, SUM(15) => n144, SUM(14) => n145, 
                           SUM(13) => n146, SUM(12) => n147, SUM(11) => n148, 
                           SUM(10) => n149, SUM(9) => n150, SUM(8) => n151, 
                           SUM(7) => n152, SUM(6) => n153, SUM(5) => n154, 
                           SUM(4) => n155, SUM(3) => n156, SUM(2) => n157, 
                           SUM(1) => n158, SUM(0) => n_1379, CO => n_1380);
   add_8_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_19_DW01_add_45 
                           port map( A(20) => t3_7_15_port, A(19) => 
                           t3_7_15_port, A(18) => t3_7_15_port, A(17) => 
                           t3_7_15_port, A(16) => t3_7_14_port, A(15) => 
                           t3_7_13_port, A(14) => t3_7_12_port, A(13) => 
                           t3_7_11_port, A(12) => t3_7_10_port, A(11) => 
                           t3_7_9_port, A(10) => t3_7_8_port, A(9) => 
                           t3_7_7_port, A(8) => t3_7_6_port, A(7) => 
                           t3_7_5_port, A(6) => t3_7_4_port, A(5) => 
                           t3_7_3_port, A(4) => t3_7_2_port, A(3) => 
                           t3_7_1_port, A(2) => t3_7_0_port, A(1) => net5306, 
                           A(0) => net5306, B(20) => t4_5_8_9_19_port, B(19) =>
                           t4_5_8_9_19_port, B(18) => t4_5_8_9_18_port, B(17) 
                           => t4_5_8_9_17_port, B(16) => t4_5_8_9_16_port, 
                           B(15) => t4_5_8_9_15_port, B(14) => t4_5_8_9_14_port
                           , B(13) => t4_5_8_9_13_port, B(12) => 
                           t4_5_8_9_12_port, B(11) => t4_5_8_9_11_port, B(10) 
                           => t4_5_8_9_10_port, B(9) => t4_5_8_9_9_port, B(8) 
                           => t4_5_8_9_8_port, B(7) => t4_5_8_9_7_port, B(6) =>
                           t4_5_8_9_6_port, B(5) => t4_5_8_9_5_port, B(4) => 
                           t4_5_8_9_4_port, B(3) => t4_5_8_9_3_port, B(2) => 
                           net5306, B(1) => net5306, B(0) => net5306, CI => 
                           net5306, SUM(20) => n118, SUM(19) => n119, SUM(18) 
                           => n120, SUM(17) => n121, SUM(16) => n122, SUM(15) 
                           => n123, SUM(14) => n124, SUM(13) => n125, SUM(12) 
                           => n126, SUM(11) => n127, SUM(10) => n128, SUM(9) =>
                           n129, SUM(8) => n130, SUM(7) => n131, SUM(6) => n132
                           , SUM(5) => n133, SUM(4) => n134, SUM(3) => n135, 
                           SUM(2) => n136, SUM(1) => n_1381, SUM(0) => n_1382, 
                           CO => n_1383);
   add_6_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_18_DW01_add_44 
                           port map( A(22) => n1, A(21) => n1, A(20) => n1, 
                           A(19) => n1, A(18) => n1, A(17) => n1, A(16) => n1, 
                           A(15) => pair12_16_11_port, A(14) => 
                           pair12_16_10_port, A(13) => pair12_16_9_port, A(12) 
                           => pair12_16_8_port, A(11) => pair12_16_7_port, 
                           A(10) => pair12_16_6_port, A(9) => pair12_16_5_port,
                           A(8) => pair12_16_4_port, A(7) => pair12_16_3_port, 
                           A(6) => pair12_16_2_port, A(5) => pair12_16_1_port, 
                           A(4) => p141_1_0_port, A(3) => net5306, A(2) => 
                           net5306, A(1) => net5306, A(0) => net5306, B(22) => 
                           p206_3_20_port, B(21) => p206_3_20_port, B(20) => 
                           p206_3_19_port, B(19) => p206_3_18_port, B(18) => 
                           p206_3_17_port, B(17) => p206_3_16_port, B(16) => 
                           p206_3_15_port, B(15) => p206_3_14_port, B(14) => 
                           p206_3_13_port, B(13) => p206_3_12_port, B(12) => 
                           p206_3_11_port, B(11) => p206_3_10_port, B(10) => 
                           p206_3_9_port, B(9) => p206_3_8_port, B(8) => 
                           p206_3_7_port, B(7) => p206_3_6_port, B(6) => 
                           p206_3_5_port, B(5) => p206_3_4_port, B(4) => 
                           p206_3_3_port, B(3) => p206_3_2_port, B(2) => 
                           p206_3_1_port, B(1) => p206_3_0_port, B(0) => 
                           net5306, CI => net5306, SUM(22) => t12_13_22_port, 
                           SUM(21) => t12_13_21_port, SUM(20) => t12_13_20_port
                           , SUM(19) => t12_13_19_port, SUM(18) => 
                           t12_13_18_port, SUM(17) => t12_13_17_port, SUM(16) 
                           => t12_13_16_port, SUM(15) => t12_13_15_port, 
                           SUM(14) => t12_13_14_port, SUM(13) => t12_13_13_port
                           , SUM(12) => t12_13_12_port, SUM(11) => 
                           t12_13_11_port, SUM(10) => t12_13_10_port, SUM(9) =>
                           t12_13_9_port, SUM(8) => t12_13_8_port, SUM(7) => 
                           t12_13_7_port, SUM(6) => t12_13_6_port, SUM(5) => 
                           t12_13_5_port, SUM(4) => t12_13_4_port, SUM(3) => 
                           t12_13_3_port, SUM(2) => t12_13_2_port, SUM(1) => 
                           t12_13_1_port, SUM(0) => n_1384, CO => n_1385);
   add_2_root_sub_0_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_17_DW01_add_43 
                           port map( A(23) => t12_13_22_port, A(22) => 
                           t12_13_22_port, A(21) => t12_13_21_port, A(20) => 
                           t12_13_20_port, A(19) => t12_13_19_port, A(18) => 
                           t12_13_18_port, A(17) => t12_13_17_port, A(16) => 
                           t12_13_16_port, A(15) => t12_13_15_port, A(14) => 
                           t12_13_14_port, A(13) => t12_13_13_port, A(12) => 
                           t12_13_12_port, A(11) => t12_13_11_port, A(10) => 
                           t12_13_10_port, A(9) => t12_13_9_port, A(8) => 
                           t12_13_8_port, A(7) => t12_13_7_port, A(6) => 
                           t12_13_6_port, A(5) => t12_13_5_port, A(4) => 
                           t12_13_4_port, A(3) => t12_13_3_port, A(2) => 
                           t12_13_2_port, A(1) => t12_13_1_port, A(0) => 
                           net5306, B(23) => n137, B(22) => n137, B(21) => n138
                           , B(20) => n139, B(19) => n140, B(18) => n141, B(17)
                           => n142, B(16) => n143, B(15) => n144, B(14) => n145
                           , B(13) => n146, B(12) => n147, B(11) => n148, B(10)
                           => n149, B(9) => n150, B(8) => n151, B(7) => n152, 
                           B(6) => n153, B(5) => n154, B(4) => n155, B(3) => 
                           n156, B(2) => n157, B(1) => n158, B(0) => net5306, 
                           CI => net5306, SUM(23) => n159, SUM(22) => n160, 
                           SUM(21) => n161, SUM(20) => n162, SUM(19) => n163, 
                           SUM(18) => n164, SUM(17) => n165, SUM(16) => n166, 
                           SUM(15) => n167, SUM(14) => n168, SUM(13) => n169, 
                           SUM(12) => n170, SUM(11) => n171, SUM(10) => n172, 
                           SUM(9) => n173, SUM(8) => n174, SUM(7) => n175, 
                           SUM(6) => n176, SUM(5) => n177, SUM(4) => n178, 
                           SUM(3) => n179, SUM(2) => n180, SUM(1) => n181, 
                           SUM(0) => n_1386, CO => n_1387);
   sub_3_root_sub_0_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_6_DW01_sub_14 
                           port map( A(23) => n118, A(22) => n118, A(21) => 
                           n118, A(20) => n118, A(19) => n119, A(18) => n120, 
                           A(17) => n121, A(16) => n122, A(15) => n123, A(14) 
                           => n124, A(13) => n125, A(12) => n126, A(11) => n127
                           , A(10) => n128, A(9) => n129, A(8) => n130, A(7) =>
                           n131, A(6) => n132, A(5) => n133, A(4) => n134, A(3)
                           => n135, A(2) => n136, A(1) => net5306, A(0) => 
                           net5306, B(23) => t0_1_14_port, B(22) => 
                           t0_1_14_port, B(21) => t0_1_14_port, B(20) => 
                           t0_1_14_port, B(19) => t0_1_14_port, B(18) => 
                           t0_1_14_port, B(17) => t0_1_14_port, B(16) => 
                           t0_1_14_port, B(15) => t0_1_14_port, B(14) => 
                           t0_1_14_port, B(13) => t0_1_13_port, B(12) => 
                           t0_1_12_port, B(11) => t0_1_11_port, B(10) => 
                           t0_1_10_port, B(9) => t0_1_9_port, B(8) => 
                           t0_1_8_port, B(7) => t0_1_7_port, B(6) => 
                           t0_1_6_port, B(5) => t0_1_5_port, B(4) => 
                           t0_1_4_port, B(3) => t0_1_3_port, B(2) => 
                           t0_1_2_port, B(1) => t0_1_1_port, B(0) => 
                           t0_1_0_port, CI => net5306, DIFF(23) => n182, 
                           DIFF(22) => n183, DIFF(21) => n184, DIFF(20) => n185
                           , DIFF(19) => n186, DIFF(18) => n187, DIFF(17) => 
                           n188, DIFF(16) => n189, DIFF(15) => n190, DIFF(14) 
                           => n191, DIFF(13) => n192, DIFF(12) => n193, 
                           DIFF(11) => n194, DIFF(10) => n83, DIFF(9) => n84, 
                           DIFF(8) => n85, DIFF(7) => n86, DIFF(6) => n87, 
                           DIFF(5) => n88, DIFF(4) => n89, DIFF(3) => n90, 
                           DIFF(2) => n91, DIFF(1) => n92, DIFF(0) => n93, CO 
                           => n_1388);
   add_1_root_sub_0_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_16_DW01_add_42 
                           port map( A(23) => n182, A(22) => n183, A(21) => 
                           n184, A(20) => n185, A(19) => n186, A(18) => n187, 
                           A(17) => n188, A(16) => n189, A(15) => n190, A(14) 
                           => n191, A(13) => n192, A(12) => n193, A(11) => n194
                           , A(10) => n83, A(9) => n84, A(8) => n85, A(7) => 
                           n86, A(6) => n87, A(5) => n88, A(4) => n89, A(3) => 
                           n90, A(2) => n91, A(1) => n92, A(0) => n93, B(23) =>
                           n159, B(22) => n160, B(21) => n161, B(20) => n162, 
                           B(19) => n163, B(18) => n164, B(17) => n165, B(16) 
                           => n166, B(15) => n167, B(14) => n168, B(13) => n169
                           , B(12) => n170, B(11) => n171, B(10) => n172, B(9) 
                           => n173, B(8) => n174, B(7) => n175, B(6) => n176, 
                           B(5) => n177, B(4) => n178, B(3) => n179, B(2) => 
                           n180, B(1) => n181, B(0) => net5306, CI => net5306, 
                           SUM(23) => n94, SUM(22) => n95, SUM(21) => n96, 
                           SUM(20) => n97, SUM(19) => n98, SUM(18) => n99, 
                           SUM(17) => n100, SUM(16) => n101, SUM(15) => n102, 
                           SUM(14) => n103, SUM(13) => n104, SUM(12) => n105, 
                           SUM(11) => n106, SUM(10) => n107, SUM(9) => n108, 
                           SUM(8) => n109, SUM(7) => n110, SUM(6) => n111, 
                           SUM(5) => n112, SUM(4) => n113, SUM(3) => n114, 
                           SUM(2) => n115, SUM(1) => n116, SUM(0) => n117, CO 
                           => n_1389);
   sub_0_root_sub_0_root_add_292 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_5_DW01_sub_13 
                           port map( A(23) => n94, A(22) => n95, A(21) => n96, 
                           A(20) => n97, A(19) => n98, A(18) => n99, A(17) => 
                           n100, A(16) => n101, A(15) => n102, A(14) => n103, 
                           A(13) => n104, A(12) => n105, A(11) => n106, A(10) 
                           => n107, A(9) => n108, A(8) => n109, A(7) => n110, 
                           A(6) => n111, A(5) => n112, A(4) => n113, A(3) => 
                           n114, A(2) => n115, A(1) => n116, A(0) => n117, 
                           B(23) => pair0_28_12_port, B(22) => pair0_28_12_port
                           , B(21) => pair0_28_12_port, B(20) => 
                           pair0_28_12_port, B(19) => pair0_28_12_port, B(18) 
                           => pair0_28_12_port, B(17) => pair0_28_12_port, 
                           B(16) => pair0_28_12_port, B(15) => pair0_28_12_port
                           , B(14) => pair0_28_12_port, B(13) => 
                           pair0_28_12_port, B(12) => pair0_28_12_port, B(11) 
                           => pair0_28_11_port, B(10) => pair0_28_10_port, B(9)
                           => pair0_28_9_port, B(8) => pair0_28_8_port, B(7) =>
                           pair0_28_7_port, B(6) => pair0_28_6_port, B(5) => 
                           pair0_28_5_port, B(4) => pair0_28_4_port, B(3) => 
                           pair0_28_3_port, B(2) => pair0_28_2_port, B(1) => 
                           pair0_28_1_port, B(0) => pair0_28_0_port, CI => 
                           net5306, DIFF(23) => data_out_4_port, DIFF(22) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_22_port, DIFF(21) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_21_port, DIFF(20) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_20_port, DIFF(19) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_19_port, DIFF(18) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_18_port, DIFF(17) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_17_port, DIFF(16) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_16_port, DIFF(15) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_15_port, DIFF(14) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_14_port, DIFF(13) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_13_port, DIFF(12) => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_12_port, DIFF(11) => 
                           n_1390, DIFF(10) => n_1391, DIFF(9) => n_1392, 
                           DIFF(8) => n_1393, DIFF(7) => n_1394, DIFF(6) => 
                           n_1395, DIFF(5) => n_1396, DIFF(4) => n_1397, 
                           DIFF(3) => n_1398, DIFF(2) => n_1399, DIFF(1) => 
                           n_1400, DIFF(0) => n_1401, CO => n_1402);
   add_1_root_add_285 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_15_DW01_add_34 
                           port map( A(19) => p206_2_15_port, A(18) => 
                           p206_2_15_port, A(17) => pair13_15_11_port, A(16) =>
                           pair13_15_10_port, A(15) => pair13_15_9_port, A(14) 
                           => pair13_15_8_port, A(13) => pair13_15_7_port, 
                           A(12) => pair13_15_6_port, A(11) => pair13_15_5_port
                           , A(10) => pair13_15_4_port, A(9) => 
                           pair13_15_3_port, A(8) => pair13_15_2_port, A(7) => 
                           p206_2_1_port, A(6) => p206_3_0_port, A(5) => 
                           net5306, A(4) => net5306, A(3) => net5306, A(2) => 
                           net5306, A(1) => net5306, A(0) => net5306, B(19) => 
                           p206_2_15_port, B(18) => p206_2_15_port, B(17) => 
                           p206_2_14_port, B(16) => p206_2_13_port, B(15) => 
                           p206_2_12_port, B(14) => p206_2_11_port, B(13) => 
                           p206_2_10_port, B(12) => p206_2_9_port, B(11) => 
                           p206_2_8_port, B(10) => p206_2_7_port, B(9) => 
                           p206_2_6_port, B(8) => p206_2_5_port, B(7) => 
                           p206_2_4_port, B(6) => p206_2_3_port, B(5) => 
                           p206_2_2_port, B(4) => p206_2_1_port, B(3) => 
                           p206_3_0_port, B(2) => net5306, B(1) => net5306, 
                           B(0) => net5306, CI => net5306, SUM(19) => 
                           p206_1_19_port, SUM(18) => p206_1_18_port, SUM(17) 
                           => p206_1_17_port, SUM(16) => p206_1_16_port, 
                           SUM(15) => p206_1_15_port, SUM(14) => p206_1_14_port
                           , SUM(13) => p206_1_13_port, SUM(12) => 
                           p206_1_12_port, SUM(11) => p206_1_11_port, SUM(10) 
                           => p206_1_10_port, SUM(9) => p206_1_9_port, SUM(8) 
                           => p206_1_8_port, SUM(7) => p206_1_7_port, SUM(6) =>
                           p206_1_6_port, SUM(5) => p206_1_5_port, SUM(4) => 
                           p206_1_4_port, SUM(3) => p206_1_3_port, SUM(2) => 
                           n_1403, SUM(1) => n_1404, SUM(0) => n_1405, CO => 
                           n_1406);
   add_2_root_sub_287 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_11_DW01_add_23 
                           port map( A(12) => arx_input_reg_286_port, A(11) => 
                           arx_input_reg_286_port, A(10) => 
                           arx_input_reg_285_port, A(9) => 
                           arx_input_reg_284_port, A(8) => 
                           arx_input_reg_283_port, A(7) => 
                           arx_input_reg_282_port, A(6) => 
                           arx_input_reg_281_port, A(5) => 
                           arx_input_reg_280_port, A(4) => 
                           arx_input_reg_279_port, A(3) => 
                           arx_input_reg_278_port, A(2) => 
                           arx_input_reg_277_port, A(1) => 
                           arx_input_reg_276_port, A(0) => 
                           arx_input_reg_275_port, B(12) => 
                           arx_input_reg_71_port, B(11) => 
                           arx_input_reg_71_port, B(10) => 
                           arx_input_reg_70_port, B(9) => arx_input_reg_69_port
                           , B(8) => arx_input_reg_68_port, B(7) => 
                           arx_input_reg_67_port, B(6) => arx_input_reg_66_port
                           , B(5) => arx_input_reg_65_port, B(4) => 
                           arx_input_reg_64_port, B(3) => arx_input_reg_63_port
                           , B(2) => arx_input_reg_62_port, B(1) => 
                           arx_input_reg_61_port, B(0) => arx_input_reg_60_port
                           , CI => net5306, SUM(12) => pair4_24_12_port, 
                           SUM(11) => pair4_24_11_port, SUM(10) => 
                           pair4_24_10_port, SUM(9) => pair4_24_9_port, SUM(8) 
                           => pair4_24_8_port, SUM(7) => pair4_24_7_port, 
                           SUM(6) => pair4_24_6_port, SUM(5) => pair4_24_5_port
                           , SUM(4) => pair4_24_4_port, SUM(3) => 
                           pair4_24_3_port, SUM(2) => pair4_24_2_port, SUM(1) 
                           => pair4_24_1_port, SUM(0) => pair4_24_0_port, CO =>
                           n_1407);
   add_3_root_sub_287 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_10_DW01_add_22 
                           port map( A(12) => arx_input_reg_298_port, A(11) => 
                           arx_input_reg_298_port, A(10) => 
                           arx_input_reg_297_port, A(9) => 
                           arx_input_reg_296_port, A(8) => 
                           arx_input_reg_295_port, A(7) => 
                           arx_input_reg_294_port, A(6) => 
                           arx_input_reg_293_port, A(5) => 
                           arx_input_reg_292_port, A(4) => 
                           arx_input_reg_291_port, A(3) => 
                           arx_input_reg_290_port, A(2) => 
                           arx_input_reg_289_port, A(1) => 
                           arx_input_reg_288_port, A(0) => 
                           arx_input_reg_287_port, B(12) => 
                           arx_input_reg_59_port, B(11) => 
                           arx_input_reg_59_port, B(10) => 
                           arx_input_reg_58_port, B(9) => arx_input_reg_57_port
                           , B(8) => arx_input_reg_56_port, B(7) => 
                           arx_input_reg_55_port, B(6) => arx_input_reg_54_port
                           , B(5) => arx_input_reg_53_port, B(4) => 
                           arx_input_reg_52_port, B(3) => arx_input_reg_51_port
                           , B(2) => arx_input_reg_50_port, B(1) => 
                           arx_input_reg_49_port, B(0) => arx_input_reg_48_port
                           , CI => net5306, SUM(12) => pair5_23_12_port, 
                           SUM(11) => pair5_23_11_port, SUM(10) => 
                           pair5_23_10_port, SUM(9) => pair5_23_9_port, SUM(8) 
                           => pair5_23_8_port, SUM(7) => pair5_23_7_port, 
                           SUM(6) => pair5_23_6_port, SUM(5) => pair5_23_5_port
                           , SUM(4) => pair5_23_4_port, SUM(3) => 
                           pair5_23_3_port, SUM(2) => pair5_23_2_port, SUM(1) 
                           => pair5_23_1_port, SUM(0) => pair5_23_0_port, CO =>
                           n_1408);
   add_1_root_sub_287 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_9_DW01_add_21 
                           port map( A(13) => pair5_23_12_port, A(12) => 
                           pair5_23_12_port, A(11) => pair5_23_11_port, A(10) 
                           => pair5_23_10_port, A(9) => pair5_23_9_port, A(8) 
                           => pair5_23_8_port, A(7) => pair5_23_7_port, A(6) =>
                           pair5_23_6_port, A(5) => pair5_23_5_port, A(4) => 
                           pair5_23_4_port, A(3) => pair5_23_3_port, A(2) => 
                           pair5_23_2_port, A(1) => pair5_23_1_port, A(0) => 
                           pair5_23_0_port, B(13) => pair4_24_12_port, B(12) =>
                           pair4_24_12_port, B(11) => pair4_24_11_port, B(10) 
                           => pair4_24_10_port, B(9) => pair4_24_9_port, B(8) 
                           => pair4_24_8_port, B(7) => pair4_24_7_port, B(6) =>
                           pair4_24_6_port, B(5) => pair4_24_5_port, B(4) => 
                           pair4_24_4_port, B(3) => pair4_24_3_port, B(2) => 
                           pair4_24_2_port, B(1) => pair4_24_1_port, B(0) => 
                           pair4_24_0_port, CI => net5306, SUM(13) => 
                           t4_5_13_port, SUM(12) => t4_5_12_port, SUM(11) => 
                           t4_5_11_port, SUM(10) => t4_5_10_port, SUM(9) => 
                           t4_5_9_port, SUM(8) => t4_5_8_port, SUM(7) => 
                           t4_5_7_port, SUM(6) => t4_5_6_port, SUM(5) => 
                           t4_5_5_port, SUM(4) => t4_5_4_port, SUM(3) => 
                           t4_5_3_port, SUM(2) => t4_5_2_port, SUM(1) => 
                           t4_5_1_port, SUM(0) => t4_5_0_port, CO => n_1409);
   sub_0_root_sub_287 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_1_DW01_sub_4 
                           port map( A(16) => t4_5_13_port, A(15) => 
                           t4_5_13_port, A(14) => t4_5_13_port, A(13) => 
                           t4_5_13_port, A(12) => t4_5_12_port, A(11) => 
                           t4_5_11_port, A(10) => t4_5_10_port, A(9) => 
                           t4_5_9_port, A(8) => t4_5_8_port, A(7) => 
                           t4_5_7_port, A(6) => t4_5_6_port, A(5) => 
                           t4_5_5_port, A(4) => t4_5_4_port, A(3) => 
                           t4_5_3_port, A(2) => t4_5_2_port, A(1) => 
                           t4_5_1_port, A(0) => t4_5_0_port, B(16) => 
                           t8_9_13_port, B(15) => t8_9_13_port, B(14) => 
                           t8_9_12_port, B(13) => t8_9_11_port, B(12) => 
                           t8_9_10_port, B(11) => t8_9_9_port, B(10) => 
                           t8_9_8_port, B(9) => t8_9_7_port, B(8) => 
                           t8_9_6_port, B(7) => t8_9_5_port, B(6) => 
                           t8_9_4_port, B(5) => t8_9_3_port, B(4) => 
                           t8_9_2_port, B(3) => t8_9_1_port, B(2) => 
                           t8_9_0_port, B(1) => net5306, B(0) => net5306, CI =>
                           net5306, DIFF(16) => t4_5_8_9_19_port, DIFF(15) => 
                           t4_5_8_9_18_port, DIFF(14) => t4_5_8_9_17_port, 
                           DIFF(13) => t4_5_8_9_16_port, DIFF(12) => 
                           t4_5_8_9_15_port, DIFF(11) => t4_5_8_9_14_port, 
                           DIFF(10) => t4_5_8_9_13_port, DIFF(9) => 
                           t4_5_8_9_12_port, DIFF(8) => t4_5_8_9_11_port, 
                           DIFF(7) => t4_5_8_9_10_port, DIFF(6) => 
                           t4_5_8_9_9_port, DIFF(5) => t4_5_8_9_8_port, DIFF(4)
                           => t4_5_8_9_7_port, DIFF(3) => t4_5_8_9_6_port, 
                           DIFF(2) => t4_5_8_9_5_port, DIFF(1) => 
                           t4_5_8_9_4_port, DIFF(0) => t4_5_8_9_3_port, CO => 
                           n_1410);
   add_2_root_add_286 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_12_DW01_add_30 
                           port map( A(17) => pair11_17_12_port, A(16) => 
                           pair11_17_12_port, A(15) => pair11_17_12_port, A(14)
                           => pair11_17_11_port, A(13) => pair11_17_10_port, 
                           A(12) => pair11_17_9_port, A(11) => pair11_17_8_port
                           , A(10) => pair11_17_7_port, A(9) => 
                           pair11_17_6_port, A(8) => pair11_17_5_port, A(7) => 
                           pair11_17_4_port, A(6) => pair11_17_3_port, A(5) => 
                           pair11_17_2_port, A(4) => pair11_17_1_port, A(3) => 
                           pair11_17_0_port, A(2) => net5306, A(1) => net5306, 
                           A(0) => net5306, B(17) => p232_2_17_port, B(16) => 
                           p232_2_17_port, B(15) => arx_input_reg_177_port, 
                           B(14) => arx_input_reg_176_port, B(13) => 
                           arx_input_reg_175_port, B(12) => 
                           arx_input_reg_174_port, B(11) => 
                           arx_input_reg_173_port, B(10) => 
                           arx_input_reg_172_port, B(9) => 
                           arx_input_reg_171_port, B(8) => 
                           arx_input_reg_170_port, B(7) => 
                           arx_input_reg_169_port, B(6) => 
                           arx_input_reg_168_port, B(5) => p232_2_0_port, B(4) 
                           => net5306, B(3) => net5306, B(2) => net5306, B(1) 
                           => net5306, B(0) => net5306, CI => net5306, SUM(17) 
                           => n62, SUM(16) => n75, SUM(15) => n76, SUM(14) => 
                           n77, SUM(13) => n78, SUM(12) => n79, SUM(11) => n80,
                           SUM(10) => n81, SUM(9) => n82, SUM(8) => n63, SUM(7)
                           => n64, SUM(6) => n65, SUM(5) => n66, SUM(4) => n67,
                           SUM(3) => n74, SUM(2) => n_1411, SUM(1) => n_1412, 
                           SUM(0) => n_1413, CO => n_1414);
   sub_0_root_add_286 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_2_DW01_sub_7 
                           port map( A(18) => n62, A(17) => n62, A(16) => n75, 
                           A(15) => n76, A(14) => n77, A(13) => n78, A(12) => 
                           n79, A(11) => n80, A(10) => n81, A(9) => n82, A(8) 
                           => n63, A(7) => n64, A(6) => n65, A(5) => n66, A(4) 
                           => n67, A(3) => n74, A(2) => net5306, A(1) => 
                           net5306, A(0) => net5306, B(18) => p232_2_17_port, 
                           B(17) => p232_2_17_port, B(16) => p232_2_17_port, 
                           B(15) => p232_2_17_port, B(14) => p232_2_17_port, 
                           B(13) => p232_2_17_port, B(12) => p232_2_12_port, 
                           B(11) => p232_2_11_port, B(10) => p232_2_10_port, 
                           B(9) => p232_2_9_port, B(8) => p232_2_8_port, B(7) 
                           => p232_2_7_port, B(6) => p232_2_6_port, B(5) => 
                           p232_2_5_port, B(4) => p232_2_4_port, B(3) => 
                           p232_2_3_port, B(2) => p232_2_2_port, B(1) => 
                           p232_2_1_port, B(0) => p232_2_0_port, CI => net5306,
                           DIFF(18) => t11_14_18_port, DIFF(17) => 
                           t11_14_17_port, DIFF(16) => t11_14_16_port, DIFF(15)
                           => t11_14_15_port, DIFF(14) => t11_14_14_port, 
                           DIFF(13) => t11_14_13_port, DIFF(12) => 
                           t11_14_12_port, DIFF(11) => t11_14_11_port, DIFF(10)
                           => t11_14_10_port, DIFF(9) => t11_14_9_port, DIFF(8)
                           => t11_14_8_port, DIFF(7) => t11_14_7_port, DIFF(6) 
                           => t11_14_6_port, DIFF(5) => t11_14_5_port, DIFF(4) 
                           => t11_14_4_port, DIFF(3) => t11_14_3_port, DIFF(2) 
                           => t11_14_2_port, DIFF(1) => t11_14_1_port, DIFF(0) 
                           => t11_14_0_port, CO => n_1415);
   add_1_root_add_277 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_8_DW01_add_17 
                           port map( A(12) => arx_input_reg_238_port, A(11) => 
                           arx_input_reg_238_port, A(10) => 
                           arx_input_reg_237_port, A(9) => 
                           arx_input_reg_236_port, A(8) => 
                           arx_input_reg_235_port, A(7) => 
                           arx_input_reg_234_port, A(6) => 
                           arx_input_reg_233_port, A(5) => 
                           arx_input_reg_232_port, A(4) => 
                           arx_input_reg_231_port, A(3) => 
                           arx_input_reg_230_port, A(2) => 
                           arx_input_reg_229_port, A(1) => 
                           arx_input_reg_228_port, A(0) => 
                           arx_input_reg_227_port, B(12) => 
                           arx_input_reg_119_port, B(11) => 
                           arx_input_reg_119_port, B(10) => 
                           arx_input_reg_118_port, B(9) => 
                           arx_input_reg_117_port, B(8) => 
                           arx_input_reg_116_port, B(7) => 
                           arx_input_reg_115_port, B(6) => 
                           arx_input_reg_114_port, B(5) => 
                           arx_input_reg_113_port, B(4) => 
                           arx_input_reg_112_port, B(3) => 
                           arx_input_reg_111_port, B(2) => 
                           arx_input_reg_110_port, B(1) => 
                           arx_input_reg_109_port, B(0) => 
                           arx_input_reg_108_port, CI => net5306, SUM(12) => 
                           pair8_20_12_port, SUM(11) => pair8_20_11_port, 
                           SUM(10) => pair8_20_10_port, SUM(9) => 
                           pair8_20_9_port, SUM(8) => pair8_20_8_port, SUM(7) 
                           => pair8_20_7_port, SUM(6) => pair8_20_6_port, 
                           SUM(5) => pair8_20_5_port, SUM(4) => pair8_20_4_port
                           , SUM(3) => pair8_20_3_port, SUM(2) => 
                           pair8_20_2_port, SUM(1) => pair8_20_1_port, SUM(0) 
                           => pair8_20_0_port, CO => n_1416);
   add_2_root_add_277 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_7_DW01_add_16 
                           port map( A(12) => arx_input_reg_250_port, A(11) => 
                           arx_input_reg_250_port, A(10) => 
                           arx_input_reg_249_port, A(9) => 
                           arx_input_reg_248_port, A(8) => 
                           arx_input_reg_247_port, A(7) => 
                           arx_input_reg_246_port, A(6) => 
                           arx_input_reg_245_port, A(5) => 
                           arx_input_reg_244_port, A(4) => 
                           arx_input_reg_243_port, A(3) => 
                           arx_input_reg_242_port, A(2) => 
                           arx_input_reg_241_port, A(1) => 
                           arx_input_reg_240_port, A(0) => 
                           arx_input_reg_239_port, B(12) => 
                           arx_input_reg_107_port, B(11) => 
                           arx_input_reg_107_port, B(10) => 
                           arx_input_reg_106_port, B(9) => 
                           arx_input_reg_105_port, B(8) => 
                           arx_input_reg_104_port, B(7) => 
                           arx_input_reg_103_port, B(6) => 
                           arx_input_reg_102_port, B(5) => 
                           arx_input_reg_101_port, B(4) => 
                           arx_input_reg_100_port, B(3) => 
                           arx_input_reg_99_port, B(2) => arx_input_reg_98_port
                           , B(1) => arx_input_reg_97_port, B(0) => 
                           arx_input_reg_96_port, CI => net5306, SUM(12) => 
                           pair9_19_12_port, SUM(11) => pair9_19_11_port, 
                           SUM(10) => pair9_19_10_port, SUM(9) => 
                           pair9_19_9_port, SUM(8) => pair9_19_8_port, SUM(7) 
                           => pair9_19_7_port, SUM(6) => pair9_19_6_port, 
                           SUM(5) => pair9_19_5_port, SUM(4) => pair9_19_4_port
                           , SUM(3) => pair9_19_3_port, SUM(2) => 
                           pair9_19_2_port, SUM(1) => pair9_19_1_port, SUM(0) 
                           => pair9_19_0_port, CO => n_1417);
   add_0_root_add_277 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_6_DW01_add_15 
                           port map( A(13) => pair9_19_12_port, A(12) => 
                           pair9_19_12_port, A(11) => pair9_19_11_port, A(10) 
                           => pair9_19_10_port, A(9) => pair9_19_9_port, A(8) 
                           => pair9_19_8_port, A(7) => pair9_19_7_port, A(6) =>
                           pair9_19_6_port, A(5) => pair9_19_5_port, A(4) => 
                           pair9_19_4_port, A(3) => pair9_19_3_port, A(2) => 
                           pair9_19_2_port, A(1) => pair9_19_1_port, A(0) => 
                           pair9_19_0_port, B(13) => pair8_20_12_port, B(12) =>
                           pair8_20_12_port, B(11) => pair8_20_11_port, B(10) 
                           => pair8_20_10_port, B(9) => pair8_20_9_port, B(8) 
                           => pair8_20_8_port, B(7) => pair8_20_7_port, B(6) =>
                           pair8_20_6_port, B(5) => pair8_20_5_port, B(4) => 
                           pair8_20_4_port, B(3) => pair8_20_3_port, B(2) => 
                           pair8_20_2_port, B(1) => pair8_20_1_port, B(0) => 
                           pair8_20_0_port, CI => net5306, SUM(13) => 
                           t8_9_13_port, SUM(12) => t8_9_12_port, SUM(11) => 
                           t8_9_11_port, SUM(10) => t8_9_10_port, SUM(9) => 
                           t8_9_9_port, SUM(8) => t8_9_8_port, SUM(7) => 
                           t8_9_7_port, SUM(6) => t8_9_6_port, SUM(5) => 
                           t8_9_5_port, SUM(4) => t8_9_4_port, SUM(3) => 
                           t8_9_3_port, SUM(2) => t8_9_2_port, SUM(1) => 
                           t8_9_1_port, SUM(0) => t8_9_0_port, CO => n_1418);
   add_1_root_sub_279 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_add_14_DW01_add_32 
                           port map( A(12) => arx_input_reg_310_port, A(11) => 
                           arx_input_reg_310_port, A(10) => 
                           arx_input_reg_309_port, A(9) => 
                           arx_input_reg_308_port, A(8) => 
                           arx_input_reg_307_port, A(7) => 
                           arx_input_reg_306_port, A(6) => 
                           arx_input_reg_305_port, A(5) => 
                           arx_input_reg_304_port, A(4) => 
                           arx_input_reg_303_port, A(3) => 
                           arx_input_reg_302_port, A(2) => 
                           arx_input_reg_301_port, A(1) => 
                           arx_input_reg_300_port, A(0) => 
                           arx_input_reg_299_port, B(12) => 
                           arx_input_reg_47_port, B(11) => 
                           arx_input_reg_47_port, B(10) => 
                           arx_input_reg_46_port, B(9) => arx_input_reg_45_port
                           , B(8) => arx_input_reg_44_port, B(7) => 
                           arx_input_reg_43_port, B(6) => arx_input_reg_42_port
                           , B(5) => arx_input_reg_41_port, B(4) => 
                           arx_input_reg_40_port, B(3) => arx_input_reg_39_port
                           , B(2) => arx_input_reg_38_port, B(1) => 
                           arx_input_reg_37_port, B(0) => arx_input_reg_36_port
                           , CI => net5306, SUM(12) => pair3_25_12_port, 
                           SUM(11) => pair3_25_11_port, SUM(10) => 
                           pair3_25_10_port, SUM(9) => pair3_25_9_port, SUM(8) 
                           => pair3_25_8_port, SUM(7) => pair3_25_7_port, 
                           SUM(6) => pair3_25_6_port, SUM(5) => pair3_25_5_port
                           , SUM(4) => pair3_25_4_port, SUM(3) => 
                           pair3_25_3_port, SUM(2) => pair3_25_2_port, SUM(1) 
                           => pair3_25_1_port, SUM(0) => pair3_25_0_port, CO =>
                           n_1419);
   sub_0_root_sub_279 : 
                           lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1_DW01_sub_3_DW01_sub_8 
                           port map( A(15) => pair3_25_12_port, A(14) => 
                           pair3_25_12_port, A(13) => pair3_25_12_port, A(12) 
                           => pair3_25_12_port, A(11) => pair3_25_11_port, 
                           A(10) => pair3_25_10_port, A(9) => pair3_25_9_port, 
                           A(8) => pair3_25_8_port, A(7) => pair3_25_7_port, 
                           A(6) => pair3_25_6_port, A(5) => pair3_25_5_port, 
                           A(4) => pair3_25_4_port, A(3) => pair3_25_3_port, 
                           A(2) => pair3_25_2_port, A(1) => pair3_25_1_port, 
                           A(0) => pair3_25_0_port, B(15) => pair7_21_12_port, 
                           B(14) => pair7_21_12_port, B(13) => pair7_21_11_port
                           , B(12) => pair7_21_10_port, B(11) => 
                           pair7_21_9_port, B(10) => pair7_21_8_port, B(9) => 
                           pair7_21_7_port, B(8) => pair7_21_6_port, B(7) => 
                           pair7_21_5_port, B(6) => pair7_21_4_port, B(5) => 
                           pair7_21_3_port, B(4) => pair7_21_2_port, B(3) => 
                           pair7_21_1_port, B(2) => pair7_21_0_port, B(1) => 
                           net5306, B(0) => net5306, CI => net5306, DIFF(15) =>
                           t3_7_15_port, DIFF(14) => t3_7_14_port, DIFF(13) => 
                           t3_7_13_port, DIFF(12) => t3_7_12_port, DIFF(11) => 
                           t3_7_11_port, DIFF(10) => t3_7_10_port, DIFF(9) => 
                           t3_7_9_port, DIFF(8) => t3_7_8_port, DIFF(7) => 
                           t3_7_7_port, DIFF(6) => t3_7_6_port, DIFF(5) => 
                           t3_7_5_port, DIFF(4) => t3_7_4_port, DIFF(3) => 
                           t3_7_3_port, DIFF(2) => t3_7_2_port, DIFF(1) => 
                           t3_7_1_port, DIFF(0) => t3_7_0_port, CO => n_1420);
   add_284_U1_3 : ADFULD1 port map( A => p206_2_1_port, B => pair13_15_3_port, 
                           CI => add_284_carry_3_port, CO => 
                           add_284_carry_4_port, S => p206_2_3_port);
   add_284_U1_4 : ADFULD1 port map( A => pair13_15_2_port, B => 
                           pair13_15_4_port, CI => add_284_carry_4_port, CO => 
                           add_284_carry_5_port, S => p206_2_4_port);
   add_284_U1_5 : ADFULD1 port map( A => pair13_15_3_port, B => 
                           pair13_15_5_port, CI => add_284_carry_5_port, CO => 
                           add_284_carry_6_port, S => p206_2_5_port);
   add_284_U1_6 : ADFULD1 port map( A => pair13_15_4_port, B => 
                           pair13_15_6_port, CI => add_284_carry_6_port, CO => 
                           add_284_carry_7_port, S => p206_2_6_port);
   add_284_U1_7 : ADFULD1 port map( A => pair13_15_5_port, B => 
                           pair13_15_7_port, CI => add_284_carry_7_port, CO => 
                           add_284_carry_8_port, S => p206_2_7_port);
   add_284_U1_8 : ADFULD1 port map( A => pair13_15_6_port, B => 
                           pair13_15_8_port, CI => add_284_carry_8_port, CO => 
                           add_284_carry_9_port, S => p206_2_8_port);
   add_284_U1_9 : ADFULD1 port map( A => pair13_15_7_port, B => 
                           pair13_15_9_port, CI => add_284_carry_9_port, CO => 
                           add_284_carry_10_port, S => p206_2_9_port);
   add_284_U1_10 : ADFULD1 port map( A => pair13_15_8_port, B => 
                           pair13_15_10_port, CI => add_284_carry_10_port, CO 
                           => add_284_carry_11_port, S => p206_2_10_port);
   add_284_U1_11 : ADFULD1 port map( A => pair13_15_9_port, B => 
                           pair13_15_11_port, CI => add_284_carry_11_port, CO 
                           => add_284_carry_12_port, S => p206_2_11_port);
   add_284_U1_12 : ADFULD1 port map( A => pair13_15_10_port, B => 
                           p206_2_15_port, CI => add_284_carry_12_port, CO => 
                           add_284_carry_13_port, S => p206_2_12_port);
   add_284_U1_13 : ADFULD1 port map( A => pair13_15_11_port, B => 
                           p206_2_15_port, CI => add_284_carry_13_port, CO => 
                           p206_2_14_port, S => p206_2_13_port);
   sub_280_U2_6 : ADFULD1 port map( A => p141_1_0_port, B => n55, CI => 
                           sub_280_carry_6_port, CO => sub_280_carry_7_port, S 
                           => p141_1_6_port);
   sub_280_U2_7 : ADFULD1 port map( A => pair12_16_1_port, B => n56, CI => 
                           sub_280_carry_7_port, CO => sub_280_carry_8_port, S 
                           => p141_1_7_port);
   sub_280_U2_8 : ADFULD1 port map( A => pair12_16_2_port, B => n57, CI => 
                           sub_280_carry_8_port, CO => sub_280_carry_9_port, S 
                           => p141_1_8_port);
   sub_280_U2_9 : ADFULD1 port map( A => pair12_16_3_port, B => n58, CI => 
                           sub_280_carry_9_port, CO => sub_280_carry_10_port, S
                           => p141_1_9_port);
   sub_280_U2_10 : ADFULD1 port map( A => pair12_16_4_port, B => n59, CI => 
                           sub_280_carry_10_port, CO => sub_280_carry_11_port, 
                           S => p141_1_10_port);
   sub_280_U2_11 : ADFULD1 port map( A => pair12_16_5_port, B => n60, CI => 
                           sub_280_carry_11_port, CO => sub_280_carry_12_port, 
                           S => p141_1_11_port);
   sub_280_U2_12 : ADFULD1 port map( A => pair12_16_6_port, B => n61, CI => 
                           sub_280_carry_12_port, CO => sub_280_carry_13_port, 
                           S => p141_1_12_port);
   sub_280_U2_13 : ADFULD1 port map( A => pair12_16_7_port, B => n61, CI => 
                           sub_280_carry_13_port, CO => sub_280_carry_14_port, 
                           S => p141_1_13_port);
   sub_280_U2_14 : ADFULD1 port map( A => pair12_16_8_port, B => n61, CI => 
                           sub_280_carry_14_port, CO => sub_280_carry_15_port, 
                           S => p141_1_14_port);
   sub_280_U2_15 : ADFULD1 port map( A => pair12_16_9_port, B => n61, CI => 
                           sub_280_carry_15_port, CO => sub_280_carry_16_port, 
                           S => p141_1_15_port);
   sub_280_U2_16 : ADFULD1 port map( A => pair12_16_10_port, B => n61, CI => 
                           sub_280_carry_16_port, CO => sub_280_carry_17_port, 
                           S => p141_1_16_port);
   sub_280_U2_17 : ADFULD1 port map( A => pair12_16_11_port, B => n61, CI => 
                           sub_280_carry_17_port, CO => sub_280_carry_18_port, 
                           S => p141_1_17_port);
   add_1_root_add_286_U1_2 : ADFULD1 port map( A => arx_input_reg_169_port, B 
                           => arx_input_reg_168_port, CI => 
                           add_1_root_add_286_carry_2_port, CO => 
                           add_1_root_add_286_carry_3_port, S => p232_2_2_port)
                           ;
   add_1_root_add_286_U1_3 : ADFULD1 port map( A => arx_input_reg_170_port, B 
                           => arx_input_reg_169_port, CI => 
                           add_1_root_add_286_carry_3_port, CO => 
                           add_1_root_add_286_carry_4_port, S => p232_2_3_port)
                           ;
   add_1_root_add_286_U1_4 : ADFULD1 port map( A => arx_input_reg_171_port, B 
                           => arx_input_reg_170_port, CI => 
                           add_1_root_add_286_carry_4_port, CO => 
                           add_1_root_add_286_carry_5_port, S => p232_2_4_port)
                           ;
   add_1_root_add_286_U1_5 : ADFULD1 port map( A => arx_input_reg_172_port, B 
                           => arx_input_reg_171_port, CI => 
                           add_1_root_add_286_carry_5_port, CO => 
                           add_1_root_add_286_carry_6_port, S => p232_2_5_port)
                           ;
   add_1_root_add_286_U1_6 : ADFULD1 port map( A => arx_input_reg_173_port, B 
                           => arx_input_reg_172_port, CI => 
                           add_1_root_add_286_carry_6_port, CO => 
                           add_1_root_add_286_carry_7_port, S => p232_2_6_port)
                           ;
   add_1_root_add_286_U1_7 : ADFULD1 port map( A => arx_input_reg_174_port, B 
                           => arx_input_reg_173_port, CI => 
                           add_1_root_add_286_carry_7_port, CO => 
                           add_1_root_add_286_carry_8_port, S => p232_2_7_port)
                           ;
   add_1_root_add_286_U1_8 : ADFULD1 port map( A => arx_input_reg_175_port, B 
                           => arx_input_reg_174_port, CI => 
                           add_1_root_add_286_carry_8_port, CO => 
                           add_1_root_add_286_carry_9_port, S => p232_2_8_port)
                           ;
   add_1_root_add_286_U1_9 : ADFULD1 port map( A => arx_input_reg_176_port, B 
                           => arx_input_reg_175_port, CI => 
                           add_1_root_add_286_carry_9_port, CO => 
                           add_1_root_add_286_carry_10_port, S => p232_2_9_port
                           );
   add_1_root_add_286_U1_10 : ADFULD1 port map( A => arx_input_reg_177_port, B 
                           => arx_input_reg_176_port, CI => 
                           add_1_root_add_286_carry_10_port, CO => 
                           add_1_root_add_286_carry_11_port, S => 
                           p232_2_10_port);
   add_1_root_add_286_U1_11 : ADFULD1 port map( A => p232_2_17_port, B => 
                           arx_input_reg_177_port, CI => 
                           add_1_root_add_286_carry_11_port, CO => 
                           p232_2_12_port, S => p232_2_11_port);
   sub_0_root_add_285_U2_3 : ADFULD1 port map( A => p206_1_3_port, B => n39, CI
                           => sub_0_root_add_285_carry_3_port, CO => 
                           sub_0_root_add_285_carry_4_port, S => p206_3_3_port)
                           ;
   sub_0_root_add_285_U2_4 : ADFULD1 port map( A => p206_1_4_port, B => n40, CI
                           => sub_0_root_add_285_carry_4_port, CO => 
                           sub_0_root_add_285_carry_5_port, S => p206_3_4_port)
                           ;
   sub_0_root_add_285_U2_5 : ADFULD1 port map( A => p206_1_5_port, B => n41, CI
                           => sub_0_root_add_285_carry_5_port, CO => 
                           sub_0_root_add_285_carry_6_port, S => p206_3_5_port)
                           ;
   sub_0_root_add_285_U2_6 : ADFULD1 port map( A => p206_1_6_port, B => n42, CI
                           => sub_0_root_add_285_carry_6_port, CO => 
                           sub_0_root_add_285_carry_7_port, S => p206_3_6_port)
                           ;
   sub_0_root_add_285_U2_7 : ADFULD1 port map( A => p206_1_7_port, B => n43, CI
                           => sub_0_root_add_285_carry_7_port, CO => 
                           sub_0_root_add_285_carry_8_port, S => p206_3_7_port)
                           ;
   sub_0_root_add_285_U2_8 : ADFULD1 port map( A => p206_1_8_port, B => n44, CI
                           => sub_0_root_add_285_carry_8_port, CO => 
                           sub_0_root_add_285_carry_9_port, S => p206_3_8_port)
                           ;
   sub_0_root_add_285_U2_9 : ADFULD1 port map( A => p206_1_9_port, B => n45, CI
                           => sub_0_root_add_285_carry_9_port, CO => 
                           sub_0_root_add_285_carry_10_port, S => p206_3_9_port
                           );
   sub_0_root_add_285_U2_10 : ADFULD1 port map( A => p206_1_10_port, B => n46, 
                           CI => sub_0_root_add_285_carry_10_port, CO => 
                           sub_0_root_add_285_carry_11_port, S => 
                           p206_3_10_port);
   sub_0_root_add_285_U2_11 : ADFULD1 port map( A => p206_1_11_port, B => n47, 
                           CI => sub_0_root_add_285_carry_11_port, CO => 
                           sub_0_root_add_285_carry_12_port, S => 
                           p206_3_11_port);
   sub_0_root_add_285_U2_12 : ADFULD1 port map( A => p206_1_12_port, B => n48, 
                           CI => sub_0_root_add_285_carry_12_port, CO => 
                           sub_0_root_add_285_carry_13_port, S => 
                           p206_3_12_port);
   sub_0_root_add_285_U2_13 : ADFULD1 port map( A => p206_1_13_port, B => n48, 
                           CI => sub_0_root_add_285_carry_13_port, CO => 
                           sub_0_root_add_285_carry_14_port, S => 
                           p206_3_13_port);
   sub_0_root_add_285_U2_14 : ADFULD1 port map( A => p206_1_14_port, B => n48, 
                           CI => sub_0_root_add_285_carry_14_port, CO => 
                           sub_0_root_add_285_carry_15_port, S => 
                           p206_3_14_port);
   sub_0_root_add_285_U2_15 : ADFULD1 port map( A => p206_1_15_port, B => n48, 
                           CI => sub_0_root_add_285_carry_15_port, CO => 
                           sub_0_root_add_285_carry_16_port, S => 
                           p206_3_15_port);
   sub_0_root_add_285_U2_16 : ADFULD1 port map( A => p206_1_16_port, B => n48, 
                           CI => sub_0_root_add_285_carry_16_port, CO => 
                           sub_0_root_add_285_carry_17_port, S => 
                           p206_3_16_port);
   sub_0_root_add_285_U2_17 : ADFULD1 port map( A => p206_1_17_port, B => n48, 
                           CI => sub_0_root_add_285_carry_17_port, CO => 
                           sub_0_root_add_285_carry_18_port, S => 
                           p206_3_17_port);
   sub_0_root_add_285_U2_18 : ADFULD1 port map( A => p206_1_18_port, B => n48, 
                           CI => sub_0_root_add_285_carry_18_port, CO => 
                           sub_0_root_add_285_carry_19_port, S => 
                           p206_3_18_port);
   sub_0_root_add_285_U2_19 : ADFULD1 port map( A => p206_1_19_port, B => n48, 
                           CI => sub_0_root_add_285_carry_19_port, CO => 
                           sub_0_root_add_285_carry_20_port, S => 
                           p206_3_19_port);
   sub_0_root_add_285_U2_20 : ADFULD1 port map( A => p206_1_19_port, B => n48, 
                           CI => sub_0_root_add_285_carry_20_port, CO => n_1421
                           , S => p206_3_20_port);
   arx_input_reg_reg_27_10_inst : DFFRPQ1 port map( D => arx_input_reg_22_port,
                           CK => clock, RB => n29, Q => arx_input_reg_10_port);
   arx_input_reg_reg_27_9_inst : DFFRPQ1 port map( D => arx_input_reg_21_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_9_port);
   arx_input_reg_reg_27_8_inst : DFFRPQ1 port map( D => arx_input_reg_20_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_8_port);
   arx_input_reg_reg_27_7_inst : DFFRPQ1 port map( D => arx_input_reg_19_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_7_port);
   arx_input_reg_reg_27_6_inst : DFFRPQ1 port map( D => arx_input_reg_18_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_6_port);
   arx_input_reg_reg_27_5_inst : DFFRPQ1 port map( D => arx_input_reg_17_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_5_port);
   arx_input_reg_reg_27_4_inst : DFFRPQ1 port map( D => arx_input_reg_16_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_4_port);
   arx_input_reg_reg_27_3_inst : DFFRPQ1 port map( D => arx_input_reg_15_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_3_port);
   arx_input_reg_reg_27_2_inst : DFFRPQ1 port map( D => arx_input_reg_14_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_2_port);
   arx_input_reg_reg_27_1_inst : DFFRPQ1 port map( D => arx_input_reg_13_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_1_port);
   arx_input_reg_reg_27_0_inst : DFFRPQ1 port map( D => arx_input_reg_12_port, 
                           CK => clock, RB => n29, Q => arx_input_reg_0_port);
   arx_input_reg_reg_27_11_inst : DFFRPQ1 port map( D => arx_input_reg_23_port,
                           CK => clock, RB => n28, Q => arx_input_reg_11_port);
   arx_input_reg_reg_0_0_inst : DFFRPQ1 port map( D => data_in(0), CK => clock,
                           RB => n4, Q => arx_input_reg_323_port);
   arx_input_reg_reg_2_0_inst : DFFRPQ1 port map( D => arx_input_reg_311_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_299_port);
   arx_input_reg_reg_3_0_inst : DFFRPQ1 port map( D => arx_input_reg_299_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_287_port);
   arx_input_reg_reg_4_0_inst : DFFRPQ1 port map( D => arx_input_reg_287_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_275_port);
   arx_input_reg_reg_6_0_inst : DFFRPQ1 port map( D => arx_input_reg_263_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_251_port)
                           ;
   arx_input_reg_reg_7_0_inst : DFFRPQ1 port map( D => arx_input_reg_251_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_239_port)
                           ;
   arx_input_reg_reg_8_0_inst : DFFRPQ1 port map( D => arx_input_reg_239_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_227_port)
                           ;
   arx_input_reg_reg_10_0_inst : DFFRPQ1 port map( D => arx_input_reg_215_port,
                           CK => clock, RB => n14, Q => arx_input_reg_203_port)
                           ;
   arx_input_reg_reg_11_0_inst : DFFRPQ1 port map( D => arx_input_reg_203_port,
                           CK => clock, RB => n15, Q => arx_input_reg_191_port)
                           ;
   arx_input_reg_reg_12_0_inst : DFFRPQ1 port map( D => arx_input_reg_191_port,
                           CK => clock, RB => n15, Q => arx_input_reg_179_port)
                           ;
   arx_input_reg_reg_14_10_inst : DFFRPQ1 port map( D => arx_input_reg_177_port
                           , CK => clock, RB => n17, Q => 
                           arx_input_reg_166_port);
   arx_input_reg_reg_14_9_inst : DFFRPQ1 port map( D => arx_input_reg_176_port,
                           CK => clock, RB => n17, Q => arx_input_reg_165_port)
                           ;
   arx_input_reg_reg_14_8_inst : DFFRPQ1 port map( D => arx_input_reg_175_port,
                           CK => clock, RB => n17, Q => arx_input_reg_164_port)
                           ;
   arx_input_reg_reg_14_7_inst : DFFRPQ1 port map( D => arx_input_reg_174_port,
                           CK => clock, RB => n17, Q => arx_input_reg_163_port)
                           ;
   arx_input_reg_reg_14_6_inst : DFFRPQ1 port map( D => arx_input_reg_173_port,
                           CK => clock, RB => n17, Q => arx_input_reg_162_port)
                           ;
   arx_input_reg_reg_14_5_inst : DFFRPQ1 port map( D => arx_input_reg_172_port,
                           CK => clock, RB => n17, Q => arx_input_reg_161_port)
                           ;
   arx_input_reg_reg_14_4_inst : DFFRPQ1 port map( D => arx_input_reg_171_port,
                           CK => clock, RB => n17, Q => arx_input_reg_160_port)
                           ;
   arx_input_reg_reg_14_3_inst : DFFRPQ1 port map( D => arx_input_reg_170_port,
                           CK => clock, RB => n17, Q => arx_input_reg_159_port)
                           ;
   arx_input_reg_reg_14_2_inst : DFFRPQ1 port map( D => arx_input_reg_169_port,
                           CK => clock, RB => n17, Q => arx_input_reg_158_port)
                           ;
   arx_input_reg_reg_14_1_inst : DFFRPQ1 port map( D => arx_input_reg_168_port,
                           CK => clock, RB => n17, Q => arx_input_reg_157_port)
                           ;
   arx_input_reg_reg_15_10_inst : DFFRPQ1 port map( D => arx_input_reg_166_port
                           , CK => clock, RB => n17, Q => 
                           arx_input_reg_154_port);
   arx_input_reg_reg_15_9_inst : DFFRPQ1 port map( D => arx_input_reg_165_port,
                           CK => clock, RB => n18, Q => arx_input_reg_153_port)
                           ;
   arx_input_reg_reg_15_8_inst : DFFRPQ1 port map( D => arx_input_reg_164_port,
                           CK => clock, RB => n18, Q => arx_input_reg_152_port)
                           ;
   arx_input_reg_reg_15_7_inst : DFFRPQ1 port map( D => arx_input_reg_163_port,
                           CK => clock, RB => n18, Q => arx_input_reg_151_port)
                           ;
   arx_input_reg_reg_15_6_inst : DFFRPQ1 port map( D => arx_input_reg_162_port,
                           CK => clock, RB => n18, Q => arx_input_reg_150_port)
                           ;
   arx_input_reg_reg_15_5_inst : DFFRPQ1 port map( D => arx_input_reg_161_port,
                           CK => clock, RB => n18, Q => arx_input_reg_149_port)
                           ;
   arx_input_reg_reg_15_4_inst : DFFRPQ1 port map( D => arx_input_reg_160_port,
                           CK => clock, RB => n18, Q => arx_input_reg_148_port)
                           ;
   arx_input_reg_reg_15_3_inst : DFFRPQ1 port map( D => arx_input_reg_159_port,
                           CK => clock, RB => n18, Q => arx_input_reg_147_port)
                           ;
   arx_input_reg_reg_15_2_inst : DFFRPQ1 port map( D => arx_input_reg_158_port,
                           CK => clock, RB => n18, Q => arx_input_reg_146_port)
                           ;
   arx_input_reg_reg_15_1_inst : DFFRPQ1 port map( D => arx_input_reg_157_port,
                           CK => clock, RB => n18, Q => arx_input_reg_145_port)
                           ;
   arx_input_reg_reg_16_10_inst : DFFRPQ1 port map( D => arx_input_reg_154_port
                           , CK => clock, RB => n18, Q => 
                           arx_input_reg_142_port);
   arx_input_reg_reg_16_9_inst : DFFRPQ1 port map( D => arx_input_reg_153_port,
                           CK => clock, RB => n18, Q => arx_input_reg_141_port)
                           ;
   arx_input_reg_reg_16_8_inst : DFFRPQ1 port map( D => arx_input_reg_152_port,
                           CK => clock, RB => n19, Q => arx_input_reg_140_port)
                           ;
   arx_input_reg_reg_16_7_inst : DFFRPQ1 port map( D => arx_input_reg_151_port,
                           CK => clock, RB => n19, Q => arx_input_reg_139_port)
                           ;
   arx_input_reg_reg_16_6_inst : DFFRPQ1 port map( D => arx_input_reg_150_port,
                           CK => clock, RB => n19, Q => arx_input_reg_138_port)
                           ;
   arx_input_reg_reg_16_5_inst : DFFRPQ1 port map( D => arx_input_reg_149_port,
                           CK => clock, RB => n19, Q => arx_input_reg_137_port)
                           ;
   arx_input_reg_reg_16_4_inst : DFFRPQ1 port map( D => arx_input_reg_148_port,
                           CK => clock, RB => n19, Q => arx_input_reg_136_port)
                           ;
   arx_input_reg_reg_16_3_inst : DFFRPQ1 port map( D => arx_input_reg_147_port,
                           CK => clock, RB => n19, Q => arx_input_reg_135_port)
                           ;
   arx_input_reg_reg_16_2_inst : DFFRPQ1 port map( D => arx_input_reg_146_port,
                           CK => clock, RB => n19, Q => arx_input_reg_134_port)
                           ;
   arx_input_reg_reg_16_1_inst : DFFRPQ1 port map( D => arx_input_reg_145_port,
                           CK => clock, RB => n19, Q => arx_input_reg_133_port)
                           ;
   arx_input_reg_reg_18_10_inst : DFFRPQ1 port map( D => arx_input_reg_130_port
                           , CK => clock, RB => n20, Q => 
                           arx_input_reg_118_port);
   arx_input_reg_reg_18_9_inst : DFFRPQ1 port map( D => arx_input_reg_129_port,
                           CK => clock, RB => n20, Q => arx_input_reg_117_port)
                           ;
   arx_input_reg_reg_18_8_inst : DFFRPQ1 port map( D => arx_input_reg_128_port,
                           CK => clock, RB => n20, Q => arx_input_reg_116_port)
                           ;
   arx_input_reg_reg_18_7_inst : DFFRPQ1 port map( D => arx_input_reg_127_port,
                           CK => clock, RB => n20, Q => arx_input_reg_115_port)
                           ;
   arx_input_reg_reg_18_6_inst : DFFRPQ1 port map( D => arx_input_reg_126_port,
                           CK => clock, RB => n21, Q => arx_input_reg_114_port)
                           ;
   arx_input_reg_reg_18_5_inst : DFFRPQ1 port map( D => arx_input_reg_125_port,
                           CK => clock, RB => n21, Q => arx_input_reg_113_port)
                           ;
   arx_input_reg_reg_18_4_inst : DFFRPQ1 port map( D => arx_input_reg_124_port,
                           CK => clock, RB => n21, Q => arx_input_reg_112_port)
                           ;
   arx_input_reg_reg_18_3_inst : DFFRPQ1 port map( D => arx_input_reg_123_port,
                           CK => clock, RB => n21, Q => arx_input_reg_111_port)
                           ;
   arx_input_reg_reg_18_2_inst : DFFRPQ1 port map( D => arx_input_reg_122_port,
                           CK => clock, RB => n21, Q => arx_input_reg_110_port)
                           ;
   arx_input_reg_reg_18_1_inst : DFFRPQ1 port map( D => arx_input_reg_121_port,
                           CK => clock, RB => n21, Q => arx_input_reg_109_port)
                           ;
   arx_input_reg_reg_19_10_inst : DFFRPQ1 port map( D => arx_input_reg_118_port
                           , CK => clock, RB => n21, Q => 
                           arx_input_reg_106_port);
   arx_input_reg_reg_19_9_inst : DFFRPQ1 port map( D => arx_input_reg_117_port,
                           CK => clock, RB => n21, Q => arx_input_reg_105_port)
                           ;
   arx_input_reg_reg_19_8_inst : DFFRPQ1 port map( D => arx_input_reg_116_port,
                           CK => clock, RB => n21, Q => arx_input_reg_104_port)
                           ;
   arx_input_reg_reg_19_7_inst : DFFRPQ1 port map( D => arx_input_reg_115_port,
                           CK => clock, RB => n21, Q => arx_input_reg_103_port)
                           ;
   arx_input_reg_reg_19_6_inst : DFFRPQ1 port map( D => arx_input_reg_114_port,
                           CK => clock, RB => n21, Q => arx_input_reg_102_port)
                           ;
   arx_input_reg_reg_19_5_inst : DFFRPQ1 port map( D => arx_input_reg_113_port,
                           CK => clock, RB => n22, Q => arx_input_reg_101_port)
                           ;
   arx_input_reg_reg_19_4_inst : DFFRPQ1 port map( D => arx_input_reg_112_port,
                           CK => clock, RB => n22, Q => arx_input_reg_100_port)
                           ;
   arx_input_reg_reg_19_3_inst : DFFRPQ1 port map( D => arx_input_reg_111_port,
                           CK => clock, RB => n22, Q => arx_input_reg_99_port);
   arx_input_reg_reg_19_2_inst : DFFRPQ1 port map( D => arx_input_reg_110_port,
                           CK => clock, RB => n22, Q => arx_input_reg_98_port);
   arx_input_reg_reg_19_1_inst : DFFRPQ1 port map( D => arx_input_reg_109_port,
                           CK => clock, RB => n22, Q => arx_input_reg_97_port);
   arx_input_reg_reg_20_10_inst : DFFRPQ1 port map( D => arx_input_reg_106_port
                           , CK => clock, RB => n22, Q => arx_input_reg_94_port
                           );
   arx_input_reg_reg_20_9_inst : DFFRPQ1 port map( D => arx_input_reg_105_port,
                           CK => clock, RB => n22, Q => arx_input_reg_93_port);
   arx_input_reg_reg_20_8_inst : DFFRPQ1 port map( D => arx_input_reg_104_port,
                           CK => clock, RB => n22, Q => arx_input_reg_92_port);
   arx_input_reg_reg_20_7_inst : DFFRPQ1 port map( D => arx_input_reg_103_port,
                           CK => clock, RB => n22, Q => arx_input_reg_91_port);
   arx_input_reg_reg_20_6_inst : DFFRPQ1 port map( D => arx_input_reg_102_port,
                           CK => clock, RB => n22, Q => arx_input_reg_90_port);
   arx_input_reg_reg_20_5_inst : DFFRPQ1 port map( D => arx_input_reg_101_port,
                           CK => clock, RB => n22, Q => arx_input_reg_89_port);
   arx_input_reg_reg_20_4_inst : DFFRPQ1 port map( D => arx_input_reg_100_port,
                           CK => clock, RB => n23, Q => arx_input_reg_88_port);
   arx_input_reg_reg_20_3_inst : DFFRPQ1 port map( D => arx_input_reg_99_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_87_port);
   arx_input_reg_reg_20_2_inst : DFFRPQ1 port map( D => arx_input_reg_98_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_86_port);
   arx_input_reg_reg_20_1_inst : DFFRPQ1 port map( D => arx_input_reg_97_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_85_port);
   arx_input_reg_reg_22_10_inst : DFFRPQ1 port map( D => arx_input_reg_82_port,
                           CK => clock, RB => n24, Q => arx_input_reg_70_port);
   arx_input_reg_reg_22_9_inst : DFFRPQ1 port map( D => arx_input_reg_81_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_69_port);
   arx_input_reg_reg_22_8_inst : DFFRPQ1 port map( D => arx_input_reg_80_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_68_port);
   arx_input_reg_reg_22_7_inst : DFFRPQ1 port map( D => arx_input_reg_79_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_67_port);
   arx_input_reg_reg_22_6_inst : DFFRPQ1 port map( D => arx_input_reg_78_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_66_port);
   arx_input_reg_reg_22_5_inst : DFFRPQ1 port map( D => arx_input_reg_77_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_65_port);
   arx_input_reg_reg_22_4_inst : DFFRPQ1 port map( D => arx_input_reg_76_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_64_port);
   arx_input_reg_reg_22_3_inst : DFFRPQ1 port map( D => arx_input_reg_75_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_63_port);
   arx_input_reg_reg_22_2_inst : DFFRPQ1 port map( D => arx_input_reg_74_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_62_port);
   arx_input_reg_reg_22_1_inst : DFFRPQ1 port map( D => arx_input_reg_73_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_61_port);
   arx_input_reg_reg_23_10_inst : DFFRPQ1 port map( D => arx_input_reg_70_port,
                           CK => clock, RB => n25, Q => arx_input_reg_58_port);
   arx_input_reg_reg_23_9_inst : DFFRPQ1 port map( D => arx_input_reg_69_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_57_port);
   arx_input_reg_reg_23_8_inst : DFFRPQ1 port map( D => arx_input_reg_68_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_56_port);
   arx_input_reg_reg_23_7_inst : DFFRPQ1 port map( D => arx_input_reg_67_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_55_port);
   arx_input_reg_reg_23_6_inst : DFFRPQ1 port map( D => arx_input_reg_66_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_54_port);
   arx_input_reg_reg_23_5_inst : DFFRPQ1 port map( D => arx_input_reg_65_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_53_port);
   arx_input_reg_reg_23_4_inst : DFFRPQ1 port map( D => arx_input_reg_64_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_52_port);
   arx_input_reg_reg_23_3_inst : DFFRPQ1 port map( D => arx_input_reg_63_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_51_port);
   arx_input_reg_reg_23_2_inst : DFFRPQ1 port map( D => arx_input_reg_62_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_50_port);
   arx_input_reg_reg_23_1_inst : DFFRPQ1 port map( D => arx_input_reg_61_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_49_port);
   arx_input_reg_reg_24_10_inst : DFFRPQ1 port map( D => arx_input_reg_58_port,
                           CK => clock, RB => n26, Q => arx_input_reg_46_port);
   arx_input_reg_reg_24_9_inst : DFFRPQ1 port map( D => arx_input_reg_57_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_45_port);
   arx_input_reg_reg_24_8_inst : DFFRPQ1 port map( D => arx_input_reg_56_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_44_port);
   arx_input_reg_reg_24_7_inst : DFFRPQ1 port map( D => arx_input_reg_55_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_43_port);
   arx_input_reg_reg_24_6_inst : DFFRPQ1 port map( D => arx_input_reg_54_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_42_port);
   arx_input_reg_reg_24_5_inst : DFFRPQ1 port map( D => arx_input_reg_53_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_41_port);
   arx_input_reg_reg_24_4_inst : DFFRPQ1 port map( D => arx_input_reg_52_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_40_port);
   arx_input_reg_reg_24_3_inst : DFFRPQ1 port map( D => arx_input_reg_51_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_39_port);
   arx_input_reg_reg_24_2_inst : DFFRPQ1 port map( D => arx_input_reg_50_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_38_port);
   arx_input_reg_reg_24_1_inst : DFFRPQ1 port map( D => arx_input_reg_49_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_37_port);
   arx_input_reg_reg_26_10_inst : DFFRPQ1 port map( D => arx_input_reg_34_port,
                           CK => clock, RB => n28, Q => arx_input_reg_22_port);
   arx_input_reg_reg_26_9_inst : DFFRPQ1 port map( D => arx_input_reg_33_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_21_port);
   arx_input_reg_reg_26_8_inst : DFFRPQ1 port map( D => arx_input_reg_32_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_20_port);
   arx_input_reg_reg_26_7_inst : DFFRPQ1 port map( D => arx_input_reg_31_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_19_port);
   arx_input_reg_reg_26_6_inst : DFFRPQ1 port map( D => arx_input_reg_30_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_18_port);
   arx_input_reg_reg_26_5_inst : DFFRPQ1 port map( D => arx_input_reg_29_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_17_port);
   arx_input_reg_reg_26_4_inst : DFFRPQ1 port map( D => arx_input_reg_28_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_16_port);
   arx_input_reg_reg_26_3_inst : DFFRPQ1 port map( D => arx_input_reg_27_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_15_port);
   arx_input_reg_reg_26_2_inst : DFFRPQ1 port map( D => arx_input_reg_26_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_14_port);
   arx_input_reg_reg_26_1_inst : DFFRPQ1 port map( D => arx_input_reg_25_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_13_port);
   arx_input_reg_reg_0_10_inst : DFFRPQ1 port map( D => data_in(10), CK => 
                           clock, RB => n4, Q => arx_input_reg_333_port);
   arx_input_reg_reg_0_9_inst : DFFRPQ1 port map( D => data_in(9), CK => clock,
                           RB => n4, Q => arx_input_reg_332_port);
   arx_input_reg_reg_0_8_inst : DFFRPQ1 port map( D => data_in(8), CK => clock,
                           RB => n4, Q => arx_input_reg_331_port);
   arx_input_reg_reg_0_7_inst : DFFRPQ1 port map( D => data_in(7), CK => clock,
                           RB => n4, Q => arx_input_reg_330_port);
   arx_input_reg_reg_0_6_inst : DFFRPQ1 port map( D => data_in(6), CK => clock,
                           RB => n4, Q => arx_input_reg_329_port);
   arx_input_reg_reg_0_5_inst : DFFRPQ1 port map( D => data_in(5), CK => clock,
                           RB => n4, Q => arx_input_reg_328_port);
   arx_input_reg_reg_0_4_inst : DFFRPQ1 port map( D => data_in(4), CK => clock,
                           RB => n4, Q => arx_input_reg_327_port);
   arx_input_reg_reg_0_3_inst : DFFRPQ1 port map( D => data_in(3), CK => clock,
                           RB => n4, Q => arx_input_reg_326_port);
   arx_input_reg_reg_0_2_inst : DFFRPQ1 port map( D => data_in(2), CK => clock,
                           RB => n4, Q => arx_input_reg_325_port);
   arx_input_reg_reg_0_1_inst : DFFRPQ1 port map( D => data_in(1), CK => clock,
                           RB => n4, Q => arx_input_reg_324_port);
   arx_input_reg_reg_2_10_inst : DFFRPQ1 port map( D => arx_input_reg_321_port,
                           CK => clock, RB => n5, Q => arx_input_reg_309_port);
   arx_input_reg_reg_2_9_inst : DFFRPQ1 port map( D => arx_input_reg_320_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_308_port);
   arx_input_reg_reg_2_8_inst : DFFRPQ1 port map( D => arx_input_reg_319_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_307_port);
   arx_input_reg_reg_2_7_inst : DFFRPQ1 port map( D => arx_input_reg_318_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_306_port);
   arx_input_reg_reg_2_6_inst : DFFRPQ1 port map( D => arx_input_reg_317_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_305_port);
   arx_input_reg_reg_2_5_inst : DFFRPQ1 port map( D => arx_input_reg_316_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_304_port);
   arx_input_reg_reg_2_4_inst : DFFRPQ1 port map( D => arx_input_reg_315_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_303_port);
   arx_input_reg_reg_2_3_inst : DFFRPQ1 port map( D => arx_input_reg_314_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_302_port);
   arx_input_reg_reg_2_2_inst : DFFRPQ1 port map( D => arx_input_reg_313_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_301_port);
   arx_input_reg_reg_2_1_inst : DFFRPQ1 port map( D => arx_input_reg_312_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_300_port);
   arx_input_reg_reg_3_10_inst : DFFRPQ1 port map( D => arx_input_reg_309_port,
                           CK => clock, RB => n6, Q => arx_input_reg_297_port);
   arx_input_reg_reg_3_9_inst : DFFRPQ1 port map( D => arx_input_reg_308_port, 
                           CK => clock, RB => n6, Q => arx_input_reg_296_port);
   arx_input_reg_reg_3_8_inst : DFFRPQ1 port map( D => arx_input_reg_307_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_295_port);
   arx_input_reg_reg_3_7_inst : DFFRPQ1 port map( D => arx_input_reg_306_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_294_port);
   arx_input_reg_reg_3_6_inst : DFFRPQ1 port map( D => arx_input_reg_305_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_293_port);
   arx_input_reg_reg_3_5_inst : DFFRPQ1 port map( D => arx_input_reg_304_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_292_port);
   arx_input_reg_reg_3_4_inst : DFFRPQ1 port map( D => arx_input_reg_303_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_291_port);
   arx_input_reg_reg_3_3_inst : DFFRPQ1 port map( D => arx_input_reg_302_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_290_port);
   arx_input_reg_reg_3_2_inst : DFFRPQ1 port map( D => arx_input_reg_301_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_289_port);
   arx_input_reg_reg_3_1_inst : DFFRPQ1 port map( D => arx_input_reg_300_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_288_port);
   arx_input_reg_reg_4_10_inst : DFFRPQ1 port map( D => arx_input_reg_297_port,
                           CK => clock, RB => n7, Q => arx_input_reg_285_port);
   arx_input_reg_reg_4_9_inst : DFFRPQ1 port map( D => arx_input_reg_296_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_284_port);
   arx_input_reg_reg_4_8_inst : DFFRPQ1 port map( D => arx_input_reg_295_port, 
                           CK => clock, RB => n7, Q => arx_input_reg_283_port);
   arx_input_reg_reg_4_7_inst : DFFRPQ1 port map( D => arx_input_reg_294_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_282_port);
   arx_input_reg_reg_4_6_inst : DFFRPQ1 port map( D => arx_input_reg_293_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_281_port);
   arx_input_reg_reg_4_5_inst : DFFRPQ1 port map( D => arx_input_reg_292_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_280_port);
   arx_input_reg_reg_4_4_inst : DFFRPQ1 port map( D => arx_input_reg_291_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_279_port);
   arx_input_reg_reg_4_3_inst : DFFRPQ1 port map( D => arx_input_reg_290_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_278_port);
   arx_input_reg_reg_4_2_inst : DFFRPQ1 port map( D => arx_input_reg_289_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_277_port);
   arx_input_reg_reg_4_1_inst : DFFRPQ1 port map( D => arx_input_reg_288_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_276_port);
   arx_input_reg_reg_6_10_inst : DFFRPQ1 port map( D => arx_input_reg_273_port,
                           CK => clock, RB => n9, Q => arx_input_reg_261_port);
   arx_input_reg_reg_6_9_inst : DFFRPQ1 port map( D => arx_input_reg_272_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_260_port);
   arx_input_reg_reg_6_8_inst : DFFRPQ1 port map( D => arx_input_reg_271_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_259_port);
   arx_input_reg_reg_6_7_inst : DFFRPQ1 port map( D => arx_input_reg_270_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_258_port);
   arx_input_reg_reg_6_6_inst : DFFRPQ1 port map( D => arx_input_reg_269_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_257_port);
   arx_input_reg_reg_6_5_inst : DFFRPQ1 port map( D => arx_input_reg_268_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_256_port)
                           ;
   arx_input_reg_reg_6_4_inst : DFFRPQ1 port map( D => arx_input_reg_267_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_255_port)
                           ;
   arx_input_reg_reg_6_3_inst : DFFRPQ1 port map( D => arx_input_reg_266_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_254_port)
                           ;
   arx_input_reg_reg_6_2_inst : DFFRPQ1 port map( D => arx_input_reg_265_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_253_port)
                           ;
   arx_input_reg_reg_6_1_inst : DFFRPQ1 port map( D => arx_input_reg_264_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_252_port)
                           ;
   arx_input_reg_reg_7_10_inst : DFFRPQ1 port map( D => arx_input_reg_261_port,
                           CK => clock, RB => n10, Q => arx_input_reg_249_port)
                           ;
   arx_input_reg_reg_7_9_inst : DFFRPQ1 port map( D => arx_input_reg_260_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_248_port)
                           ;
   arx_input_reg_reg_7_8_inst : DFFRPQ1 port map( D => arx_input_reg_259_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_247_port)
                           ;
   arx_input_reg_reg_7_7_inst : DFFRPQ1 port map( D => arx_input_reg_258_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_246_port)
                           ;
   arx_input_reg_reg_7_6_inst : DFFRPQ1 port map( D => arx_input_reg_257_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_245_port)
                           ;
   arx_input_reg_reg_7_5_inst : DFFRPQ1 port map( D => arx_input_reg_256_port, 
                           CK => clock, RB => n10, Q => arx_input_reg_244_port)
                           ;
   arx_input_reg_reg_7_4_inst : DFFRPQ1 port map( D => arx_input_reg_255_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_243_port)
                           ;
   arx_input_reg_reg_7_3_inst : DFFRPQ1 port map( D => arx_input_reg_254_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_242_port)
                           ;
   arx_input_reg_reg_7_2_inst : DFFRPQ1 port map( D => arx_input_reg_253_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_241_port)
                           ;
   arx_input_reg_reg_7_1_inst : DFFRPQ1 port map( D => arx_input_reg_252_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_240_port)
                           ;
   arx_input_reg_reg_8_10_inst : DFFRPQ1 port map( D => arx_input_reg_249_port,
                           CK => clock, RB => n11, Q => arx_input_reg_237_port)
                           ;
   arx_input_reg_reg_8_9_inst : DFFRPQ1 port map( D => arx_input_reg_248_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_236_port)
                           ;
   arx_input_reg_reg_8_8_inst : DFFRPQ1 port map( D => arx_input_reg_247_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_235_port)
                           ;
   arx_input_reg_reg_8_7_inst : DFFRPQ1 port map( D => arx_input_reg_246_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_234_port)
                           ;
   arx_input_reg_reg_8_6_inst : DFFRPQ1 port map( D => arx_input_reg_245_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_233_port)
                           ;
   arx_input_reg_reg_8_5_inst : DFFRPQ1 port map( D => arx_input_reg_244_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_232_port)
                           ;
   arx_input_reg_reg_8_4_inst : DFFRPQ1 port map( D => arx_input_reg_243_port, 
                           CK => clock, RB => n11, Q => arx_input_reg_231_port)
                           ;
   arx_input_reg_reg_8_3_inst : DFFRPQ1 port map( D => arx_input_reg_242_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_230_port)
                           ;
   arx_input_reg_reg_8_2_inst : DFFRPQ1 port map( D => arx_input_reg_241_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_229_port)
                           ;
   arx_input_reg_reg_8_1_inst : DFFRPQ1 port map( D => arx_input_reg_240_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_228_port)
                           ;
   arx_input_reg_reg_10_10_inst : DFFRPQ1 port map( D => arx_input_reg_225_port
                           , CK => clock, RB => n13, Q => 
                           arx_input_reg_213_port);
   arx_input_reg_reg_10_9_inst : DFFRPQ1 port map( D => arx_input_reg_224_port,
                           CK => clock, RB => n13, Q => arx_input_reg_212_port)
                           ;
   arx_input_reg_reg_10_8_inst : DFFRPQ1 port map( D => arx_input_reg_223_port,
                           CK => clock, RB => n13, Q => arx_input_reg_211_port)
                           ;
   arx_input_reg_reg_10_7_inst : DFFRPQ1 port map( D => arx_input_reg_222_port,
                           CK => clock, RB => n13, Q => arx_input_reg_210_port)
                           ;
   arx_input_reg_reg_10_6_inst : DFFRPQ1 port map( D => arx_input_reg_221_port,
                           CK => clock, RB => n13, Q => arx_input_reg_209_port)
                           ;
   arx_input_reg_reg_10_5_inst : DFFRPQ1 port map( D => arx_input_reg_220_port,
                           CK => clock, RB => n13, Q => arx_input_reg_208_port)
                           ;
   arx_input_reg_reg_10_4_inst : DFFRPQ1 port map( D => arx_input_reg_219_port,
                           CK => clock, RB => n13, Q => arx_input_reg_207_port)
                           ;
   arx_input_reg_reg_10_3_inst : DFFRPQ1 port map( D => arx_input_reg_218_port,
                           CK => clock, RB => n13, Q => arx_input_reg_206_port)
                           ;
   arx_input_reg_reg_10_2_inst : DFFRPQ1 port map( D => arx_input_reg_217_port,
                           CK => clock, RB => n13, Q => arx_input_reg_205_port)
                           ;
   arx_input_reg_reg_10_1_inst : DFFRPQ1 port map( D => arx_input_reg_216_port,
                           CK => clock, RB => n14, Q => arx_input_reg_204_port)
                           ;
   arx_input_reg_reg_11_10_inst : DFFRPQ1 port map( D => arx_input_reg_213_port
                           , CK => clock, RB => n14, Q => 
                           arx_input_reg_201_port);
   arx_input_reg_reg_11_9_inst : DFFRPQ1 port map( D => arx_input_reg_212_port,
                           CK => clock, RB => n14, Q => arx_input_reg_200_port)
                           ;
   arx_input_reg_reg_11_8_inst : DFFRPQ1 port map( D => arx_input_reg_211_port,
                           CK => clock, RB => n14, Q => arx_input_reg_199_port)
                           ;
   arx_input_reg_reg_11_7_inst : DFFRPQ1 port map( D => arx_input_reg_210_port,
                           CK => clock, RB => n14, Q => arx_input_reg_198_port)
                           ;
   arx_input_reg_reg_11_6_inst : DFFRPQ1 port map( D => arx_input_reg_209_port,
                           CK => clock, RB => n14, Q => arx_input_reg_197_port)
                           ;
   arx_input_reg_reg_11_5_inst : DFFRPQ1 port map( D => arx_input_reg_208_port,
                           CK => clock, RB => n14, Q => arx_input_reg_196_port)
                           ;
   arx_input_reg_reg_11_4_inst : DFFRPQ1 port map( D => arx_input_reg_207_port,
                           CK => clock, RB => n14, Q => arx_input_reg_195_port)
                           ;
   arx_input_reg_reg_11_3_inst : DFFRPQ1 port map( D => arx_input_reg_206_port,
                           CK => clock, RB => n14, Q => arx_input_reg_194_port)
                           ;
   arx_input_reg_reg_11_2_inst : DFFRPQ1 port map( D => arx_input_reg_205_port,
                           CK => clock, RB => n14, Q => arx_input_reg_193_port)
                           ;
   arx_input_reg_reg_11_1_inst : DFFRPQ1 port map( D => arx_input_reg_204_port,
                           CK => clock, RB => n14, Q => arx_input_reg_192_port)
                           ;
   arx_input_reg_reg_12_10_inst : DFFRPQ1 port map( D => arx_input_reg_201_port
                           , CK => clock, RB => n15, Q => 
                           arx_input_reg_189_port);
   arx_input_reg_reg_12_9_inst : DFFRPQ1 port map( D => arx_input_reg_200_port,
                           CK => clock, RB => n15, Q => arx_input_reg_188_port)
                           ;
   arx_input_reg_reg_12_8_inst : DFFRPQ1 port map( D => arx_input_reg_199_port,
                           CK => clock, RB => n15, Q => arx_input_reg_187_port)
                           ;
   arx_input_reg_reg_12_7_inst : DFFRPQ1 port map( D => arx_input_reg_198_port,
                           CK => clock, RB => n15, Q => arx_input_reg_186_port)
                           ;
   arx_input_reg_reg_12_6_inst : DFFRPQ1 port map( D => arx_input_reg_197_port,
                           CK => clock, RB => n15, Q => arx_input_reg_185_port)
                           ;
   arx_input_reg_reg_12_5_inst : DFFRPQ1 port map( D => arx_input_reg_196_port,
                           CK => clock, RB => n15, Q => arx_input_reg_184_port)
                           ;
   arx_input_reg_reg_12_4_inst : DFFRPQ1 port map( D => arx_input_reg_195_port,
                           CK => clock, RB => n15, Q => arx_input_reg_183_port)
                           ;
   arx_input_reg_reg_12_3_inst : DFFRPQ1 port map( D => arx_input_reg_194_port,
                           CK => clock, RB => n15, Q => arx_input_reg_182_port)
                           ;
   arx_input_reg_reg_12_2_inst : DFFRPQ1 port map( D => arx_input_reg_193_port,
                           CK => clock, RB => n15, Q => arx_input_reg_181_port)
                           ;
   arx_input_reg_reg_12_1_inst : DFFRPQ1 port map( D => arx_input_reg_192_port,
                           CK => clock, RB => n15, Q => arx_input_reg_180_port)
                           ;
   arx_input_reg_reg_14_0_inst : DFFRPQ1 port map( D => p232_2_0_port, CK => 
                           clock, RB => n17, Q => arx_input_reg_156_port);
   arx_input_reg_reg_15_0_inst : DFFRPQ1 port map( D => arx_input_reg_156_port,
                           CK => clock, RB => n18, Q => arx_input_reg_144_port)
                           ;
   arx_input_reg_reg_16_0_inst : DFFRPQ1 port map( D => arx_input_reg_144_port,
                           CK => clock, RB => n19, Q => arx_input_reg_132_port)
                           ;
   arx_input_reg_reg_18_0_inst : DFFRPQ1 port map( D => arx_input_reg_120_port,
                           CK => clock, RB => n21, Q => arx_input_reg_108_port)
                           ;
   arx_input_reg_reg_19_0_inst : DFFRPQ1 port map( D => arx_input_reg_108_port,
                           CK => clock, RB => n22, Q => arx_input_reg_96_port);
   arx_input_reg_reg_20_0_inst : DFFRPQ1 port map( D => arx_input_reg_96_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_84_port);
   arx_input_reg_reg_22_0_inst : DFFRPQ1 port map( D => arx_input_reg_72_port, 
                           CK => clock, RB => n25, Q => arx_input_reg_60_port);
   arx_input_reg_reg_23_0_inst : DFFRPQ1 port map( D => arx_input_reg_60_port, 
                           CK => clock, RB => n26, Q => arx_input_reg_48_port);
   arx_input_reg_reg_24_0_inst : DFFRPQ1 port map( D => arx_input_reg_48_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_36_port);
   arx_input_reg_reg_26_0_inst : DFFRPQ1 port map( D => arx_input_reg_24_port, 
                           CK => clock, RB => n28, Q => arx_input_reg_12_port);
   arx_input_reg_reg_14_11_inst : DFFRPQ1 port map( D => p232_2_17_port, CK => 
                           clock, RB => n16, Q => arx_input_reg_167_port);
   arx_input_reg_reg_15_11_inst : DFFRPQ1 port map( D => arx_input_reg_167_port
                           , CK => clock, RB => n17, Q => 
                           arx_input_reg_155_port);
   arx_input_reg_reg_16_11_inst : DFFRPQ1 port map( D => arx_input_reg_155_port
                           , CK => clock, RB => n18, Q => 
                           arx_input_reg_143_port);
   arx_input_reg_reg_18_11_inst : DFFRPQ1 port map( D => arx_input_reg_131_port
                           , CK => clock, RB => n20, Q => 
                           arx_input_reg_119_port);
   arx_input_reg_reg_19_11_inst : DFFRPQ1 port map( D => arx_input_reg_119_port
                           , CK => clock, RB => n21, Q => 
                           arx_input_reg_107_port);
   arx_input_reg_reg_20_11_inst : DFFRPQ1 port map( D => arx_input_reg_107_port
                           , CK => clock, RB => n22, Q => arx_input_reg_95_port
                           );
   arx_input_reg_reg_22_11_inst : DFFRPQ1 port map( D => arx_input_reg_83_port,
                           CK => clock, RB => n24, Q => arx_input_reg_71_port);
   arx_input_reg_reg_23_11_inst : DFFRPQ1 port map( D => arx_input_reg_71_port,
                           CK => clock, RB => n25, Q => arx_input_reg_59_port);
   arx_input_reg_reg_24_11_inst : DFFRPQ1 port map( D => arx_input_reg_59_port,
                           CK => clock, RB => n26, Q => arx_input_reg_47_port);
   arx_input_reg_reg_26_11_inst : DFFRPQ1 port map( D => arx_input_reg_35_port,
                           CK => clock, RB => n28, Q => arx_input_reg_23_port);
   arx_input_reg_reg_0_11_inst : DFFRPQ1 port map( D => data_in(11), CK => 
                           clock, RB => n4, Q => arx_input_reg_334_port);
   arx_input_reg_reg_2_11_inst : DFFRPQ1 port map( D => arx_input_reg_322_port,
                           CK => clock, RB => n5, Q => arx_input_reg_310_port);
   arx_input_reg_reg_3_11_inst : DFFRPQ1 port map( D => arx_input_reg_310_port,
                           CK => clock, RB => n6, Q => arx_input_reg_298_port);
   arx_input_reg_reg_4_11_inst : DFFRPQ1 port map( D => arx_input_reg_298_port,
                           CK => clock, RB => n7, Q => arx_input_reg_286_port);
   arx_input_reg_reg_6_11_inst : DFFRPQ1 port map( D => arx_input_reg_274_port,
                           CK => clock, RB => n9, Q => arx_input_reg_262_port);
   arx_input_reg_reg_7_11_inst : DFFRPQ1 port map( D => arx_input_reg_262_port,
                           CK => clock, RB => n10, Q => arx_input_reg_250_port)
                           ;
   arx_input_reg_reg_8_11_inst : DFFRPQ1 port map( D => arx_input_reg_250_port,
                           CK => clock, RB => n11, Q => arx_input_reg_238_port)
                           ;
   arx_input_reg_reg_10_11_inst : DFFRPQ1 port map( D => arx_input_reg_226_port
                           , CK => clock, RB => n13, Q => 
                           arx_input_reg_214_port);
   arx_input_reg_reg_11_11_inst : DFFRPQ1 port map( D => arx_input_reg_214_port
                           , CK => clock, RB => n14, Q => 
                           arx_input_reg_202_port);
   arx_input_reg_reg_12_11_inst : DFFRPQ1 port map( D => arx_input_reg_202_port
                           , CK => clock, RB => n15, Q => 
                           arx_input_reg_190_port);
   arx_input_reg_reg_13_1_inst : DFFRPQ1 port map( D => arx_input_reg_180_port,
                           CK => clock, RB => n16, Q => arx_input_reg_168_port)
                           ;
   arx_input_reg_reg_13_10_inst : DFFRPQ1 port map( D => arx_input_reg_189_port
                           , CK => clock, RB => n16, Q => 
                           arx_input_reg_177_port);
   arx_input_reg_reg_13_9_inst : DFFRPQ1 port map( D => arx_input_reg_188_port,
                           CK => clock, RB => n16, Q => arx_input_reg_176_port)
                           ;
   arx_input_reg_reg_13_8_inst : DFFRPQ1 port map( D => arx_input_reg_187_port,
                           CK => clock, RB => n16, Q => arx_input_reg_175_port)
                           ;
   arx_input_reg_reg_13_7_inst : DFFRPQ1 port map( D => arx_input_reg_186_port,
                           CK => clock, RB => n16, Q => arx_input_reg_174_port)
                           ;
   arx_input_reg_reg_13_6_inst : DFFRPQ1 port map( D => arx_input_reg_185_port,
                           CK => clock, RB => n16, Q => arx_input_reg_173_port)
                           ;
   arx_input_reg_reg_13_5_inst : DFFRPQ1 port map( D => arx_input_reg_184_port,
                           CK => clock, RB => n16, Q => arx_input_reg_172_port)
                           ;
   arx_input_reg_reg_13_4_inst : DFFRPQ1 port map( D => arx_input_reg_183_port,
                           CK => clock, RB => n16, Q => arx_input_reg_171_port)
                           ;
   arx_input_reg_reg_13_3_inst : DFFRPQ1 port map( D => arx_input_reg_182_port,
                           CK => clock, RB => n16, Q => arx_input_reg_170_port)
                           ;
   arx_input_reg_reg_13_2_inst : DFFRPQ1 port map( D => arx_input_reg_181_port,
                           CK => clock, RB => n16, Q => arx_input_reg_169_port)
                           ;
   arx_input_reg_reg_13_0_inst : DFFRPQ1 port map( D => arx_input_reg_179_port,
                           CK => clock, RB => n16, Q => p232_2_0_port);
   arx_input_reg_reg_13_11_inst : DFFRPQ1 port map( D => arx_input_reg_190_port
                           , CK => clock, RB => n16, Q => 
                           arx_input_reg_178_port);
   arx_input_reg_reg_1_11_inst : DFFRPQ1 port map( D => arx_input_reg_334_port,
                           CK => clock, RB => n4, Q => arx_input_reg_322_port);
   arx_input_reg_reg_1_10_inst : DFFRPQ1 port map( D => arx_input_reg_333_port,
                           CK => clock, RB => n5, Q => arx_input_reg_321_port);
   arx_input_reg_reg_1_9_inst : DFFRPQ1 port map( D => arx_input_reg_332_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_320_port);
   arx_input_reg_reg_1_8_inst : DFFRPQ1 port map( D => arx_input_reg_331_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_319_port);
   arx_input_reg_reg_1_7_inst : DFFRPQ1 port map( D => arx_input_reg_330_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_318_port);
   arx_input_reg_reg_1_6_inst : DFFRPQ1 port map( D => arx_input_reg_329_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_317_port);
   arx_input_reg_reg_1_5_inst : DFFRPQ1 port map( D => arx_input_reg_328_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_316_port);
   arx_input_reg_reg_1_4_inst : DFFRPQ1 port map( D => arx_input_reg_327_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_315_port);
   arx_input_reg_reg_1_3_inst : DFFRPQ1 port map( D => arx_input_reg_326_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_314_port);
   arx_input_reg_reg_1_2_inst : DFFRPQ1 port map( D => arx_input_reg_325_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_313_port);
   arx_input_reg_reg_1_1_inst : DFFRPQ1 port map( D => arx_input_reg_324_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_312_port);
   arx_input_reg_reg_1_0_inst : DFFRPQ1 port map( D => arx_input_reg_323_port, 
                           CK => clock, RB => n5, Q => arx_input_reg_311_port);
   arx_input_reg_reg_5_11_inst : DFFRPQ1 port map( D => arx_input_reg_286_port,
                           CK => clock, RB => n8, Q => arx_input_reg_274_port);
   arx_input_reg_reg_5_10_inst : DFFRPQ1 port map( D => arx_input_reg_285_port,
                           CK => clock, RB => n8, Q => arx_input_reg_273_port);
   arx_input_reg_reg_5_9_inst : DFFRPQ1 port map( D => arx_input_reg_284_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_272_port);
   arx_input_reg_reg_5_8_inst : DFFRPQ1 port map( D => arx_input_reg_283_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_271_port);
   arx_input_reg_reg_5_7_inst : DFFRPQ1 port map( D => arx_input_reg_282_port, 
                           CK => clock, RB => n8, Q => arx_input_reg_270_port);
   arx_input_reg_reg_5_6_inst : DFFRPQ1 port map( D => arx_input_reg_281_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_269_port);
   arx_input_reg_reg_5_5_inst : DFFRPQ1 port map( D => arx_input_reg_280_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_268_port);
   arx_input_reg_reg_5_4_inst : DFFRPQ1 port map( D => arx_input_reg_279_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_267_port);
   arx_input_reg_reg_5_3_inst : DFFRPQ1 port map( D => arx_input_reg_278_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_266_port);
   arx_input_reg_reg_5_2_inst : DFFRPQ1 port map( D => arx_input_reg_277_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_265_port);
   arx_input_reg_reg_5_1_inst : DFFRPQ1 port map( D => arx_input_reg_276_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_264_port);
   arx_input_reg_reg_5_0_inst : DFFRPQ1 port map( D => arx_input_reg_275_port, 
                           CK => clock, RB => n9, Q => arx_input_reg_263_port);
   arx_input_reg_reg_9_11_inst : DFFRPQ1 port map( D => arx_input_reg_238_port,
                           CK => clock, RB => n12, Q => arx_input_reg_226_port)
                           ;
   arx_input_reg_reg_9_10_inst : DFFRPQ1 port map( D => arx_input_reg_237_port,
                           CK => clock, RB => n12, Q => arx_input_reg_225_port)
                           ;
   arx_input_reg_reg_9_9_inst : DFFRPQ1 port map( D => arx_input_reg_236_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_224_port)
                           ;
   arx_input_reg_reg_9_8_inst : DFFRPQ1 port map( D => arx_input_reg_235_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_223_port)
                           ;
   arx_input_reg_reg_9_7_inst : DFFRPQ1 port map( D => arx_input_reg_234_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_222_port)
                           ;
   arx_input_reg_reg_9_6_inst : DFFRPQ1 port map( D => arx_input_reg_233_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_221_port)
                           ;
   arx_input_reg_reg_9_5_inst : DFFRPQ1 port map( D => arx_input_reg_232_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_220_port)
                           ;
   arx_input_reg_reg_9_4_inst : DFFRPQ1 port map( D => arx_input_reg_231_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_219_port)
                           ;
   arx_input_reg_reg_9_3_inst : DFFRPQ1 port map( D => arx_input_reg_230_port, 
                           CK => clock, RB => n12, Q => arx_input_reg_218_port)
                           ;
   arx_input_reg_reg_9_2_inst : DFFRPQ1 port map( D => arx_input_reg_229_port, 
                           CK => clock, RB => n13, Q => arx_input_reg_217_port)
                           ;
   arx_input_reg_reg_9_1_inst : DFFRPQ1 port map( D => arx_input_reg_228_port, 
                           CK => clock, RB => n13, Q => arx_input_reg_216_port)
                           ;
   arx_input_reg_reg_9_0_inst : DFFRPQ1 port map( D => arx_input_reg_227_port, 
                           CK => clock, RB => n13, Q => arx_input_reg_215_port)
                           ;
   arx_input_reg_reg_17_11_inst : DFFRPQ1 port map( D => arx_input_reg_143_port
                           , CK => clock, RB => n19, Q => 
                           arx_input_reg_131_port);
   arx_input_reg_reg_17_10_inst : DFFRPQ1 port map( D => arx_input_reg_142_port
                           , CK => clock, RB => n19, Q => 
                           arx_input_reg_130_port);
   arx_input_reg_reg_17_9_inst : DFFRPQ1 port map( D => arx_input_reg_141_port,
                           CK => clock, RB => n19, Q => arx_input_reg_129_port)
                           ;
   arx_input_reg_reg_17_8_inst : DFFRPQ1 port map( D => arx_input_reg_140_port,
                           CK => clock, RB => n19, Q => arx_input_reg_128_port)
                           ;
   arx_input_reg_reg_17_7_inst : DFFRPQ1 port map( D => arx_input_reg_139_port,
                           CK => clock, RB => n20, Q => arx_input_reg_127_port)
                           ;
   arx_input_reg_reg_17_6_inst : DFFRPQ1 port map( D => arx_input_reg_138_port,
                           CK => clock, RB => n20, Q => arx_input_reg_126_port)
                           ;
   arx_input_reg_reg_17_5_inst : DFFRPQ1 port map( D => arx_input_reg_137_port,
                           CK => clock, RB => n20, Q => arx_input_reg_125_port)
                           ;
   arx_input_reg_reg_17_4_inst : DFFRPQ1 port map( D => arx_input_reg_136_port,
                           CK => clock, RB => n20, Q => arx_input_reg_124_port)
                           ;
   arx_input_reg_reg_17_3_inst : DFFRPQ1 port map( D => arx_input_reg_135_port,
                           CK => clock, RB => n20, Q => arx_input_reg_123_port)
                           ;
   arx_input_reg_reg_17_2_inst : DFFRPQ1 port map( D => arx_input_reg_134_port,
                           CK => clock, RB => n20, Q => arx_input_reg_122_port)
                           ;
   arx_input_reg_reg_17_1_inst : DFFRPQ1 port map( D => arx_input_reg_133_port,
                           CK => clock, RB => n20, Q => arx_input_reg_121_port)
                           ;
   arx_input_reg_reg_17_0_inst : DFFRPQ1 port map( D => arx_input_reg_132_port,
                           CK => clock, RB => n20, Q => arx_input_reg_120_port)
                           ;
   arx_input_reg_reg_21_11_inst : DFFRPQ1 port map( D => arx_input_reg_95_port,
                           CK => clock, RB => n23, Q => arx_input_reg_83_port);
   arx_input_reg_reg_21_10_inst : DFFRPQ1 port map( D => arx_input_reg_94_port,
                           CK => clock, RB => n23, Q => arx_input_reg_82_port);
   arx_input_reg_reg_21_9_inst : DFFRPQ1 port map( D => arx_input_reg_93_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_81_port);
   arx_input_reg_reg_21_8_inst : DFFRPQ1 port map( D => arx_input_reg_92_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_80_port);
   arx_input_reg_reg_21_7_inst : DFFRPQ1 port map( D => arx_input_reg_91_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_79_port);
   arx_input_reg_reg_21_6_inst : DFFRPQ1 port map( D => arx_input_reg_90_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_78_port);
   arx_input_reg_reg_21_5_inst : DFFRPQ1 port map( D => arx_input_reg_89_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_77_port);
   arx_input_reg_reg_21_4_inst : DFFRPQ1 port map( D => arx_input_reg_88_port, 
                           CK => clock, RB => n23, Q => arx_input_reg_76_port);
   arx_input_reg_reg_21_3_inst : DFFRPQ1 port map( D => arx_input_reg_87_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_75_port);
   arx_input_reg_reg_21_2_inst : DFFRPQ1 port map( D => arx_input_reg_86_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_74_port);
   arx_input_reg_reg_21_1_inst : DFFRPQ1 port map( D => arx_input_reg_85_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_73_port);
   arx_input_reg_reg_21_0_inst : DFFRPQ1 port map( D => arx_input_reg_84_port, 
                           CK => clock, RB => n24, Q => arx_input_reg_72_port);
   arx_input_reg_reg_25_11_inst : DFFRPQ1 port map( D => arx_input_reg_47_port,
                           CK => clock, RB => n27, Q => arx_input_reg_35_port);
   arx_input_reg_reg_25_10_inst : DFFRPQ1 port map( D => arx_input_reg_46_port,
                           CK => clock, RB => n27, Q => arx_input_reg_34_port);
   arx_input_reg_reg_25_9_inst : DFFRPQ1 port map( D => arx_input_reg_45_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_33_port);
   arx_input_reg_reg_25_8_inst : DFFRPQ1 port map( D => arx_input_reg_44_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_32_port);
   arx_input_reg_reg_25_7_inst : DFFRPQ1 port map( D => arx_input_reg_43_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_31_port);
   arx_input_reg_reg_25_6_inst : DFFRPQ1 port map( D => arx_input_reg_42_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_30_port);
   arx_input_reg_reg_25_5_inst : DFFRPQ1 port map( D => arx_input_reg_41_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_29_port);
   arx_input_reg_reg_25_4_inst : DFFRPQ1 port map( D => arx_input_reg_40_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_28_port);
   arx_input_reg_reg_25_3_inst : DFFRPQ1 port map( D => arx_input_reg_39_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_27_port);
   arx_input_reg_reg_25_2_inst : DFFRPQ1 port map( D => arx_input_reg_38_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_26_port);
   arx_input_reg_reg_25_1_inst : DFFRPQ1 port map( D => arx_input_reg_37_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_25_port);
   arx_input_reg_reg_25_0_inst : DFFRPQ1 port map( D => arx_input_reg_36_port, 
                           CK => clock, RB => n27, Q => arx_input_reg_24_port);
   U3 : INVD1 port map( A => n30, Z => n28);
   U4 : INVD1 port map( A => n30, Z => n27);
   U5 : INVD1 port map( A => n31, Z => n26);
   U6 : INVD1 port map( A => n31, Z => n25);
   U7 : INVD1 port map( A => n31, Z => n24);
   U8 : INVD1 port map( A => n32, Z => n23);
   U9 : INVD1 port map( A => n32, Z => n22);
   U10 : INVD1 port map( A => n32, Z => n21);
   U11 : INVD1 port map( A => n33, Z => n20);
   U12 : INVD1 port map( A => n33, Z => n19);
   U13 : INVD1 port map( A => n33, Z => n18);
   U14 : INVD1 port map( A => n34, Z => n17);
   U15 : INVD1 port map( A => n34, Z => n16);
   U20 : INVD1 port map( A => n34, Z => n15);
   U21 : INVD1 port map( A => n32, Z => n14);
   U22 : INVD1 port map( A => n33, Z => n13);
   U23 : INVD1 port map( A => n34, Z => n12);
   U24 : INVD1 port map( A => n35, Z => n11);
   U25 : INVD1 port map( A => n35, Z => n10);
   U26 : INVD1 port map( A => n35, Z => n9);
   U27 : INVD1 port map( A => n3, Z => n8);
   U28 : INVD1 port map( A => n35, Z => n7);
   U29 : INVD1 port map( A => n31, Z => n6);
   U30 : INVD1 port map( A => n3, Z => n5);
   U31 : INVD1 port map( A => n30, Z => n4);
   U32 : INVD1 port map( A => n30, Z => n29);
   U33 : NAN4D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_19_port, A2 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_18_port, A3 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_17_port, A4 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_16_port, Z => n70);
   U34 : INVD1 port map( A => sub_280_carry_18_port, Z => p141_1_19_port);
   U35 : OAI21M20D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_14_port, A2 =>
                           n68, B => n69, Z => data_out_2_port);
   U36 : OAI21M20D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_15_port, A2 =>
                           n68, B => n69, Z => data_out_3_port);
   U37 : NAN4D1 port map( A1 => data_out_4_port, A2 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_22_port, A3 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_21_port, A4 => 
                           t0_1_3_4_5_7_8_9_11_12_13_14_20_port, Z => n71);
   U38 : OAI21M20D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_13_port, A2 =>
                           n68, B => n69, Z => data_out_1_port);
   U39 : OAI21M20D1 port map( A1 => t0_1_3_4_5_7_8_9_11_12_13_14_12_port, A2 =>
                           n68, B => n69, Z => data_out_0_port);
   U40 : INVD1 port map( A => n2, Z => n30);
   U41 : INVD1 port map( A => n2, Z => n31);
   U42 : INVD1 port map( A => n2, Z => n32);
   U43 : INVD1 port map( A => n2, Z => n33);
   U44 : INVD1 port map( A => n2, Z => n34);
   U45 : INVD1 port map( A => n2, Z => n35);
   U46 : INVD1 port map( A => n1, Z => n61);
   U47 : INVD1 port map( A => p206_2_15_port, Z => n48);
   U48 : INVD1 port map( A => pair12_16_6_port, Z => n55);
   U49 : INVD1 port map( A => pair13_15_3_port, Z => n39);
   U50 : INVD1 port map( A => pair12_16_7_port, Z => n56);
   U51 : INVD1 port map( A => pair13_15_4_port, Z => n40);
   U52 : INVD1 port map( A => pair12_16_8_port, Z => n57);
   U53 : INVD1 port map( A => pair12_16_9_port, Z => n58);
   U54 : INVD1 port map( A => pair12_16_10_port, Z => n59);
   U55 : INVD1 port map( A => pair12_16_11_port, Z => n60);
   U56 : INVD1 port map( A => pair13_15_5_port, Z => n41);
   U57 : INVD1 port map( A => pair13_15_6_port, Z => n42);
   U58 : INVD1 port map( A => pair13_15_7_port, Z => n43);
   U59 : INVD1 port map( A => pair13_15_8_port, Z => n44);
   U60 : INVD1 port map( A => pair13_15_9_port, Z => n45);
   U61 : INVD1 port map( A => pair13_15_10_port, Z => n46);
   U62 : INVD1 port map( A => pair13_15_11_port, Z => n47);
   U63 : INVD1 port map( A => p141_1_0_port, Z => n49);
   U64 : INVD1 port map( A => pair12_16_1_port, Z => n50);
   U65 : INVD1 port map( A => p206_2_1_port, Z => n37);
   U66 : INVD1 port map( A => pair12_16_2_port, Z => n51);
   U67 : INVD1 port map( A => pair12_16_3_port, Z => n52);
   U68 : INVD1 port map( A => pair12_16_4_port, Z => n53);
   U69 : INVD1 port map( A => pair12_16_5_port, Z => n54);
   U70 : INVD1 port map( A => p206_3_0_port, Z => n36);
   U71 : INVD1 port map( A => pair13_15_2_port, Z => n38);
   U72 : INVD1 port map( A => n3, Z => n2);
   U73 : BUFD1 port map( A => arx_input_reg_178_port, Z => p232_2_17_port);
   U74 : BUFD1 port map( A => pair12_16_12_port, Z => n1);
   U75 : INVD1 port map( A => resetn, Z => n3);
   U76 : TIELO port map( Z => net5306);
   U77 : AND2D1 port map( A1 => sub_280_carry_5_port, A2 => n54, Z => 
                           sub_280_carry_6_port);
   U78 : EXOR2D1 port map( A1 => n54, A2 => sub_280_carry_5_port, Z => 
                           p141_1_5_port);
   U79 : AND2D1 port map( A1 => sub_280_carry_4_port, A2 => n53, Z => 
                           sub_280_carry_5_port);
   U80 : EXOR2D1 port map( A1 => n53, A2 => sub_280_carry_4_port, Z => 
                           p141_1_4_port);
   U81 : AND2D1 port map( A1 => sub_280_carry_3_port, A2 => n52, Z => 
                           sub_280_carry_4_port);
   U82 : EXOR2D1 port map( A1 => n52, A2 => sub_280_carry_3_port, Z => 
                           p141_1_3_port);
   U83 : AND2D1 port map( A1 => sub_280_carry_2_port, A2 => n51, Z => 
                           sub_280_carry_3_port);
   U84 : EXOR2D1 port map( A1 => n51, A2 => sub_280_carry_2_port, Z => 
                           p141_1_2_port);
   U85 : AND2D1 port map( A1 => n49, A2 => n50, Z => sub_280_carry_2_port);
   U86 : EXOR2D1 port map( A1 => n50, A2 => n49, Z => p141_1_1_port);
   U87 : AND2D1 port map( A1 => p232_2_0_port, A2 => arx_input_reg_168_port, Z 
                           => add_1_root_add_286_carry_2_port);
   U88 : EXOR2D1 port map( A1 => p232_2_0_port, A2 => arx_input_reg_168_port, Z
                           => p232_2_1_port);
   U89 : AND2D1 port map( A1 => sub_0_root_add_285_carry_2_port, A2 => n38, Z 
                           => sub_0_root_add_285_carry_3_port);
   U90 : EXOR2D1 port map( A1 => n38, A2 => sub_0_root_add_285_carry_2_port, Z 
                           => p206_3_2_port);
   U91 : AND2D1 port map( A1 => n36, A2 => n37, Z => 
                           sub_0_root_add_285_carry_2_port);
   U92 : EXOR2D1 port map( A1 => n37, A2 => n36, Z => p206_3_1_port);
   U93 : AND2D1 port map( A1 => pair13_15_2_port, A2 => p206_3_0_port, Z => 
                           add_284_carry_3_port);
   U94 : EXOR2D1 port map( A1 => pair13_15_2_port, A2 => p206_3_0_port, Z => 
                           p206_2_2_port);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of slicer is

   component AOI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component slicer_DW01_add_0_DW01_add_24
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   component slicer_DW01_add_1_DW01_add_25
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   component slicer_DW01_add_2_DW01_add_26
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI31M10D1
      port( A1, A2, A3, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal data_out_port, arx_slicer_fifo_reg_20_port, 
      arx_slicer_fifo_reg_19_port, arx_slicer_fifo_reg_18_port, 
      arx_slicer_fifo_reg_17_port, arx_slicer_fifo_reg_16_port, 
      arx_slicer_fifo_reg_15_port, arx_slicer_fifo_reg_14_port, 
      arx_slicer_fifo_reg_13_port, arx_slicer_fifo_reg_12_port, 
      arx_slicer_fifo_reg_11_port, arx_slicer_fifo_reg_10_port, 
      arx_slicer_fifo_reg_9_port, arx_slicer_fifo_reg_8_port, 
      arx_slicer_fifo_reg_7_port, arx_slicer_fifo_reg_6_port, 
      arx_slicer_fifo_reg_5_port, arx_slicer_fifo_reg_4_port, 
      arx_slicer_fifo_reg_3_port, arx_slicer_fifo_reg_2_port, 
      arx_slicer_fifo_reg_1_port, arx_slicer_fifo_reg_0_port, 
      arx_counter_reg_1_port, arx_counter_reg_0_port, sum0_1_2_3_8_port, 
      sum0_1_2_3_7_port, sum0_1_2_3_6_port, sum0_1_2_3_5_port, 
      sum0_1_2_3_4_port, sum0_1_2_3_3_port, sum0_1_2_3_2_port, 
      sum0_1_2_3_1_port, sum0_1_2_3_0_port, counter_1_port, N1, n2, n3, n4, n5,
      sum2_3_7_port, sum2_3_6_port, sum2_3_5_port, sum2_3_4_port, sum2_3_3_port
      , sum2_3_2_port, sum2_3_1_port, sum2_3_0_port, sum0_1_7_port, 
      sum0_1_6_port, sum0_1_5_port, sum0_1_4_port, sum0_1_3_port, sum0_1_2_port
      , sum0_1_1_port, sum0_1_0_port, n100, n6, n7, n8, n9, n101, n_1422, 
      n_1423, n_1424 : std_logic;

begin
   data_out <= data_out_port;
   
   U4 : OAI31M10D1 port map( A1 => N1, A2 => n2, A3 => n3, B => n4, Z => n5);
   U5 : OAI21D1 port map( A1 => n2, A2 => n3, B => data_out_port, Z => n4);
   U6 : EXNOR2D1 port map( A1 => n9, A2 => offset(0), Z => n3);
   U7 : EXOR2D1 port map( A1 => arx_counter_reg_1_port, A2 => offset(1), Z => 
                           n2);
   U8 : EXNOR2D1 port map( A1 => arx_counter_reg_1_port, A2 => n9, Z => 
                           counter_1_port);
   add_2_root_add_122 : slicer_DW01_add_2_DW01_add_26 port map( A(7) => 
                           data_in(6), A(6) => data_in(6), A(5) => data_in(5), 
                           A(4) => data_in(4), A(3) => data_in(3), A(2) => 
                           data_in(2), A(1) => data_in(1), A(0) => data_in(0), 
                           B(7) => arx_slicer_fifo_reg_20_port, B(6) => 
                           arx_slicer_fifo_reg_20_port, B(5) => 
                           arx_slicer_fifo_reg_19_port, B(4) => 
                           arx_slicer_fifo_reg_18_port, B(3) => 
                           arx_slicer_fifo_reg_17_port, B(2) => 
                           arx_slicer_fifo_reg_16_port, B(1) => 
                           arx_slicer_fifo_reg_15_port, B(0) => 
                           arx_slicer_fifo_reg_14_port, CI => n101, SUM(7) => 
                           sum2_3_7_port, SUM(6) => sum2_3_6_port, SUM(5) => 
                           sum2_3_5_port, SUM(4) => sum2_3_4_port, SUM(3) => 
                           sum2_3_3_port, SUM(2) => sum2_3_2_port, SUM(1) => 
                           sum2_3_1_port, SUM(0) => sum2_3_0_port, CO => n_1422
                           );
   add_1_root_add_122 : slicer_DW01_add_1_DW01_add_25 port map( A(7) => 
                           arx_slicer_fifo_reg_13_port, A(6) => 
                           arx_slicer_fifo_reg_13_port, A(5) => 
                           arx_slicer_fifo_reg_12_port, A(4) => 
                           arx_slicer_fifo_reg_11_port, A(3) => 
                           arx_slicer_fifo_reg_10_port, A(2) => 
                           arx_slicer_fifo_reg_9_port, A(1) => 
                           arx_slicer_fifo_reg_8_port, A(0) => 
                           arx_slicer_fifo_reg_7_port, B(7) => 
                           arx_slicer_fifo_reg_6_port, B(6) => 
                           arx_slicer_fifo_reg_6_port, B(5) => 
                           arx_slicer_fifo_reg_5_port, B(4) => 
                           arx_slicer_fifo_reg_4_port, B(3) => 
                           arx_slicer_fifo_reg_3_port, B(2) => 
                           arx_slicer_fifo_reg_2_port, B(1) => 
                           arx_slicer_fifo_reg_1_port, B(0) => 
                           arx_slicer_fifo_reg_0_port, CI => n101, SUM(7) => 
                           sum0_1_7_port, SUM(6) => sum0_1_6_port, SUM(5) => 
                           sum0_1_5_port, SUM(4) => sum0_1_4_port, SUM(3) => 
                           sum0_1_3_port, SUM(2) => sum0_1_2_port, SUM(1) => 
                           sum0_1_1_port, SUM(0) => sum0_1_0_port, CO => n_1423
                           );
   add_0_root_add_122 : slicer_DW01_add_0_DW01_add_24 port map( A(8) => 
                           sum2_3_7_port, A(7) => sum2_3_7_port, A(6) => 
                           sum2_3_6_port, A(5) => sum2_3_5_port, A(4) => 
                           sum2_3_4_port, A(3) => sum2_3_3_port, A(2) => 
                           sum2_3_2_port, A(1) => sum2_3_1_port, A(0) => 
                           sum2_3_0_port, B(8) => sum0_1_7_port, B(7) => 
                           sum0_1_7_port, B(6) => sum0_1_6_port, B(5) => 
                           sum0_1_5_port, B(4) => sum0_1_4_port, B(3) => 
                           sum0_1_3_port, B(2) => sum0_1_2_port, B(1) => 
                           sum0_1_1_port, B(0) => sum0_1_0_port, CI => n101, 
                           SUM(8) => sum0_1_2_3_8_port, SUM(7) => 
                           sum0_1_2_3_7_port, SUM(6) => sum0_1_2_3_6_port, 
                           SUM(5) => sum0_1_2_3_5_port, SUM(4) => 
                           sum0_1_2_3_4_port, SUM(3) => sum0_1_2_3_3_port, 
                           SUM(2) => sum0_1_2_3_2_port, SUM(1) => 
                           sum0_1_2_3_1_port, SUM(0) => sum0_1_2_3_0_port, CO 
                           => n_1424);
   arx_output_reg_reg : DFFRPQ1 port map( D => n5, CK => clock, RB => resetn, Q
                           => data_out_port);
   arx_counter_reg_reg_0_inst : DFFRPQ1 port map( D => n9, CK => n100, RB => 
                           resetn, Q => arx_counter_reg_0_port);
   arx_counter_reg_reg_1_inst : DFFRPQ1 port map( D => counter_1_port, CK => 
                           clock, RB => resetn, Q => arx_counter_reg_1_port);
   arx_slicer_fifo_reg_reg_2_5_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_12_port, CK => n100, RB => 
                           resetn, Q => arx_slicer_fifo_reg_5_port);
   arx_slicer_fifo_reg_reg_2_4_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_11_port, CK => clock, RB => 
                           resetn, Q => arx_slicer_fifo_reg_4_port);
   arx_slicer_fifo_reg_reg_2_3_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_10_port, CK => n100, RB => 
                           resetn, Q => arx_slicer_fifo_reg_3_port);
   arx_slicer_fifo_reg_reg_2_2_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_9_port, CK => clock, RB => 
                           resetn, Q => arx_slicer_fifo_reg_2_port);
   arx_slicer_fifo_reg_reg_2_1_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_8_port, CK => n100, RB => resetn
                           , Q => arx_slicer_fifo_reg_1_port);
   arx_slicer_fifo_reg_reg_2_0_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_7_port, CK => clock, RB => 
                           resetn, Q => arx_slicer_fifo_reg_0_port);
   arx_slicer_fifo_reg_reg_1_0_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_14_port, CK => n100, RB => 
                           resetn, Q => arx_slicer_fifo_reg_7_port);
   arx_slicer_fifo_reg_reg_0_5_inst : DFFRPQ1 port map( D => data_in(5), CK => 
                           n100, RB => resetn, Q => arx_slicer_fifo_reg_19_port
                           );
   arx_slicer_fifo_reg_reg_0_4_inst : DFFRPQ1 port map( D => data_in(4), CK => 
                           n100, RB => resetn, Q => arx_slicer_fifo_reg_18_port
                           );
   arx_slicer_fifo_reg_reg_0_3_inst : DFFRPQ1 port map( D => data_in(3), CK => 
                           n100, RB => resetn, Q => arx_slicer_fifo_reg_17_port
                           );
   arx_slicer_fifo_reg_reg_0_2_inst : DFFRPQ1 port map( D => data_in(2), CK => 
                           n100, RB => resetn, Q => arx_slicer_fifo_reg_16_port
                           );
   arx_slicer_fifo_reg_reg_0_1_inst : DFFRPQ1 port map( D => data_in(1), CK => 
                           n100, RB => resetn, Q => arx_slicer_fifo_reg_15_port
                           );
   arx_slicer_fifo_reg_reg_1_5_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_19_port, CK => n100, RB => 
                           resetn, Q => arx_slicer_fifo_reg_12_port);
   arx_slicer_fifo_reg_reg_1_4_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_18_port, CK => n100, RB => 
                           resetn, Q => arx_slicer_fifo_reg_11_port);
   arx_slicer_fifo_reg_reg_1_3_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_17_port, CK => n100, RB => 
                           resetn, Q => arx_slicer_fifo_reg_10_port);
   arx_slicer_fifo_reg_reg_1_2_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_16_port, CK => n100, RB => 
                           resetn, Q => arx_slicer_fifo_reg_9_port);
   arx_slicer_fifo_reg_reg_1_1_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_15_port, CK => clock, RB => 
                           resetn, Q => arx_slicer_fifo_reg_8_port);
   arx_slicer_fifo_reg_reg_0_0_inst : DFFRPQ1 port map( D => data_in(0), CK => 
                           n100, RB => resetn, Q => arx_slicer_fifo_reg_14_port
                           );
   arx_slicer_fifo_reg_reg_2_6_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_13_port, CK => n100, RB => 
                           resetn, Q => arx_slicer_fifo_reg_6_port);
   arx_slicer_fifo_reg_reg_0_6_inst : DFFRPQ1 port map( D => data_in(6), CK => 
                           n100, RB => resetn, Q => arx_slicer_fifo_reg_20_port
                           );
   arx_slicer_fifo_reg_reg_1_6_inst : DFFRPQ1 port map( D => 
                           arx_slicer_fifo_reg_20_port, CK => n100, RB => 
                           resetn, Q => arx_slicer_fifo_reg_13_port);
   U3 : INVD1 port map( A => n6, Z => n100);
   U9 : INVD1 port map( A => arx_counter_reg_0_port, Z => n9);
   U10 : INVD1 port map( A => clock, Z => n6);
   U11 : TIELO port map( Z => n101);
   U12 : NOR4D1 port map( A1 => sum0_1_2_3_3_port, A2 => sum0_1_2_3_2_port, A3 
                           => sum0_1_2_3_1_port, A4 => sum0_1_2_3_0_port, Z => 
                           n8);
   U13 : NOR4D1 port map( A1 => sum0_1_2_3_7_port, A2 => sum0_1_2_3_6_port, A3 
                           => sum0_1_2_3_5_port, A4 => sum0_1_2_3_4_port, Z => 
                           n7);
   U14 : AOI21D1 port map( A1 => n8, A2 => n7, B => sum0_1_2_3_8_port, Z => N1)
                           ;

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of demodulator is

   component TIELO
      port( Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component demodulator_DW01_sub_0_DW01_sub_15
      port( A, B : in std_logic_vector (10 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (10 downto 0);  CO : out std_logic);
   end component;
   
   component demodulator_DW_mult_tc_0_DW_mult_tc_2
      port( a, b : in std_logic_vector (4 downto 0);  product : out 
            std_logic_vector (9 downto 0));
   end component;
   
   component demodulator_DW_mult_tc_1_DW_mult_tc_3
      port( a, b : in std_logic_vector (4 downto 0);  product : out 
            std_logic_vector (9 downto 0));
   end component;
   
   component OAI31D1
      port( A1, A2, A3, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal data_out_6_port, data_out_5_port, data_out_4_port, data_out_3_port, 
      data_out_2_port, data_out_1_port, data_out_0_port, 
      arx_dem_samples_i_reg_19_port, arx_dem_samples_i_reg_18_port, 
      arx_dem_samples_i_reg_17_port, arx_dem_samples_i_reg_16_port, 
      arx_dem_samples_i_reg_15_port, arx_dem_samples_i_reg_14_port, 
      arx_dem_samples_i_reg_13_port, arx_dem_samples_i_reg_12_port, 
      arx_dem_samples_i_reg_11_port, arx_dem_samples_i_reg_10_port, 
      arx_dem_samples_i_reg_9_port, arx_dem_samples_i_reg_8_port, 
      arx_dem_samples_i_reg_7_port, arx_dem_samples_i_reg_6_port, 
      arx_dem_samples_i_reg_5_port, arx_dem_samples_i_reg_4_port, 
      arx_dem_samples_i_reg_3_port, arx_dem_samples_i_reg_2_port, 
      arx_dem_samples_i_reg_1_port, arx_dem_samples_i_reg_0_port, 
      arx_dem_samples_q_reg_19_port, arx_dem_samples_q_reg_18_port, 
      arx_dem_samples_q_reg_17_port, arx_dem_samples_q_reg_16_port, 
      arx_dem_samples_q_reg_15_port, arx_dem_samples_q_reg_14_port, 
      arx_dem_samples_q_reg_13_port, arx_dem_samples_q_reg_12_port, 
      arx_dem_samples_q_reg_11_port, arx_dem_samples_q_reg_10_port, 
      arx_dem_samples_q_reg_9_port, arx_dem_samples_q_reg_8_port, 
      arx_dem_samples_q_reg_7_port, arx_dem_samples_q_reg_6_port, 
      arx_dem_samples_q_reg_5_port, arx_dem_samples_q_reg_4_port, 
      arx_dem_samples_q_reg_3_port, arx_dem_samples_q_reg_2_port, 
      arx_dem_samples_q_reg_1_port, arx_dem_samples_q_reg_0_port, 
      arx_result_reg_9_port, arx_result_reg_8_port, arx_result_reg_7_port, 
      arx_result_reg_6_port, arx_result_reg_5_port, arx_result_reg_4_port, 
      arx_result_reg_3_port, arx_result_reg_2_port, result_10_port, 
      result_9_port, result_8_port, result_7_port, result_6_port, result_5_port
      , result_4_port, result_3_port, result_2_port, n2, n3, n4, 
      prod_q_id_9_port, prod_q_id_8_port, prod_q_id_7_port, prod_q_id_6_port, 
      prod_q_id_5_port, prod_q_id_4_port, prod_q_id_3_port, prod_q_id_2_port, 
      prod_q_id_1_port, prod_q_id_0_port, prod_i_qd_9_port, prod_i_qd_8_port, 
      prod_i_qd_7_port, prod_i_qd_6_port, prod_i_qd_5_port, prod_i_qd_4_port, 
      prod_i_qd_3_port, prod_i_qd_2_port, prod_i_qd_1_port, prod_i_qd_0_port, 
      n1, n5, n6, n7, n8, n9, n10, n_1425, n_1426, n_1427 : std_logic;

begin
   data_out <= ( data_out_6_port, data_out_5_port, data_out_4_port, 
      data_out_3_port, data_out_2_port, data_out_1_port, data_out_0_port );
   
   U10 : OR2D1 port map( A1 => n2, A2 => data_out_6_port, Z => n3);
   U11 : OAI31D1 port map( A1 => data_out_6_port, A2 => arx_result_reg_9_port, 
                           A3 => arx_result_reg_8_port, B => n4, Z => n2);
   mult_131 : demodulator_DW_mult_tc_1_DW_mult_tc_3 port map( a(4) => data_i(4)
                           , a(3) => data_i(3), a(2) => data_i(2), a(1) => 
                           data_i(1), a(0) => data_i(0), b(4) => 
                           arx_dem_samples_q_reg_4_port, b(3) => 
                           arx_dem_samples_q_reg_3_port, b(2) => 
                           arx_dem_samples_q_reg_2_port, b(1) => 
                           arx_dem_samples_q_reg_1_port, b(0) => 
                           arx_dem_samples_q_reg_0_port, product(9) => 
                           prod_i_qd_9_port, product(8) => prod_i_qd_8_port, 
                           product(7) => prod_i_qd_7_port, product(6) => 
                           prod_i_qd_6_port, product(5) => prod_i_qd_5_port, 
                           product(4) => prod_i_qd_4_port, product(3) => 
                           prod_i_qd_3_port, product(2) => prod_i_qd_2_port, 
                           product(1) => prod_i_qd_1_port, product(0) => 
                           prod_i_qd_0_port);
   mult_130 : demodulator_DW_mult_tc_0_DW_mult_tc_2 port map( a(4) => data_q(4)
                           , a(3) => data_q(3), a(2) => data_q(2), a(1) => 
                           data_q(1), a(0) => data_q(0), b(4) => 
                           arx_dem_samples_i_reg_4_port, b(3) => 
                           arx_dem_samples_i_reg_3_port, b(2) => 
                           arx_dem_samples_i_reg_2_port, b(1) => 
                           arx_dem_samples_i_reg_1_port, b(0) => 
                           arx_dem_samples_i_reg_0_port, product(9) => 
                           prod_q_id_9_port, product(8) => prod_q_id_8_port, 
                           product(7) => prod_q_id_7_port, product(6) => 
                           prod_q_id_6_port, product(5) => prod_q_id_5_port, 
                           product(4) => prod_q_id_4_port, product(3) => 
                           prod_q_id_3_port, product(2) => prod_q_id_2_port, 
                           product(1) => prod_q_id_1_port, product(0) => 
                           prod_q_id_0_port);
   sub_132 : demodulator_DW01_sub_0_DW01_sub_15 port map( A(10) => 
                           prod_q_id_9_port, A(9) => prod_q_id_9_port, A(8) => 
                           prod_q_id_8_port, A(7) => prod_q_id_7_port, A(6) => 
                           prod_q_id_6_port, A(5) => prod_q_id_5_port, A(4) => 
                           prod_q_id_4_port, A(3) => prod_q_id_3_port, A(2) => 
                           prod_q_id_2_port, A(1) => prod_q_id_1_port, A(0) => 
                           prod_q_id_0_port, B(10) => prod_i_qd_9_port, B(9) =>
                           prod_i_qd_9_port, B(8) => prod_i_qd_8_port, B(7) => 
                           prod_i_qd_7_port, B(6) => prod_i_qd_6_port, B(5) => 
                           prod_i_qd_5_port, B(4) => prod_i_qd_4_port, B(3) => 
                           prod_i_qd_3_port, B(2) => prod_i_qd_2_port, B(1) => 
                           prod_i_qd_1_port, B(0) => prod_i_qd_0_port, CI => 
                           n10, DIFF(10) => result_10_port, DIFF(9) => 
                           result_9_port, DIFF(8) => result_8_port, DIFF(7) => 
                           result_7_port, DIFF(6) => result_6_port, DIFF(5) => 
                           result_5_port, DIFF(4) => result_4_port, DIFF(3) => 
                           result_3_port, DIFF(2) => result_2_port, DIFF(1) => 
                           n_1425, DIFF(0) => n_1426, CO => n_1427);
   arx_result_reg_reg_7_inst : DFFRPQ1 port map( D => result_7_port, CK => n5, 
                           RB => n7, Q => arx_result_reg_7_port);
   arx_result_reg_reg_6_inst : DFFRPQ1 port map( D => result_6_port, CK => n1, 
                           RB => n8, Q => arx_result_reg_6_port);
   arx_result_reg_reg_5_inst : DFFRPQ1 port map( D => result_5_port, CK => n5, 
                           RB => n8, Q => arx_result_reg_5_port);
   arx_result_reg_reg_4_inst : DFFRPQ1 port map( D => result_4_port, CK => 
                           clock, RB => n7, Q => arx_result_reg_4_port);
   arx_result_reg_reg_3_inst : DFFRPQ1 port map( D => result_3_port, CK => 
                           clock, RB => n7, Q => arx_result_reg_3_port);
   arx_result_reg_reg_2_inst : DFFRPQ1 port map( D => result_2_port, CK => 
                           clock, RB => n8, Q => arx_result_reg_2_port);
   arx_result_reg_reg_8_inst : DFFRPQ1 port map( D => result_8_port, CK => 
                           clock, RB => n7, Q => arx_result_reg_8_port);
   arx_result_reg_reg_9_inst : DFFRPQ1 port map( D => result_9_port, CK => 
                           clock, RB => n8, Q => arx_result_reg_9_port);
   arx_dem_samples_i_reg_reg_3_1_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_6_port, CK => clock, RB => n7,
                           Q => arx_dem_samples_i_reg_1_port);
   arx_dem_samples_i_reg_reg_3_0_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_5_port, CK => n1, RB => n7, Q 
                           => arx_dem_samples_i_reg_0_port);
   arx_dem_samples_q_reg_reg_3_1_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_6_port, CK => n1, RB => n7, Q 
                           => arx_dem_samples_q_reg_1_port);
   arx_dem_samples_q_reg_reg_3_0_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_5_port, CK => n1, RB => n8, Q 
                           => arx_dem_samples_q_reg_0_port);
   arx_dem_samples_i_reg_reg_3_3_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_8_port, CK => n5, RB => n7, Q 
                           => arx_dem_samples_i_reg_3_port);
   arx_dem_samples_i_reg_reg_3_2_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_7_port, CK => n1, RB => n7, Q 
                           => arx_dem_samples_i_reg_2_port);
   arx_dem_samples_q_reg_reg_3_3_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_8_port, CK => n1, RB => n7, Q 
                           => arx_dem_samples_q_reg_3_port);
   arx_dem_samples_q_reg_reg_3_2_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_7_port, CK => n1, RB => n8, Q 
                           => arx_dem_samples_q_reg_2_port);
   arx_dem_samples_i_reg_reg_3_4_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_9_port, CK => n5, RB => n7, Q 
                           => arx_dem_samples_i_reg_4_port);
   arx_dem_samples_q_reg_reg_3_4_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_9_port, CK => n1, RB => n7, Q 
                           => arx_dem_samples_q_reg_4_port);
   arx_result_reg_reg_10_inst : DFFRPQ1 port map( D => result_10_port, CK => 
                           clock, RB => n8, Q => data_out_6_port);
   arx_dem_samples_q_reg_reg_1_2_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_17_port, CK => n5, RB => n8, Q
                           => arx_dem_samples_q_reg_12_port);
   arx_dem_samples_q_reg_reg_1_1_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_16_port, CK => n1, RB => n7, Q
                           => arx_dem_samples_q_reg_11_port);
   arx_dem_samples_q_reg_reg_1_0_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_15_port, CK => n1, RB => n8, Q
                           => arx_dem_samples_q_reg_10_port);
   arx_dem_samples_q_reg_reg_2_4_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_14_port, CK => n1, RB => n7, Q
                           => arx_dem_samples_q_reg_9_port);
   arx_dem_samples_q_reg_reg_2_3_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_13_port, CK => n1, RB => n8, Q
                           => arx_dem_samples_q_reg_8_port);
   arx_dem_samples_q_reg_reg_2_2_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_12_port, CK => n1, RB => n7, Q
                           => arx_dem_samples_q_reg_7_port);
   arx_dem_samples_q_reg_reg_2_1_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_11_port, CK => n1, RB => n8, Q
                           => arx_dem_samples_q_reg_6_port);
   arx_dem_samples_q_reg_reg_2_0_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_10_port, CK => n1, RB => n7, Q
                           => arx_dem_samples_q_reg_5_port);
   arx_dem_samples_i_reg_reg_0_4_inst : DFFRPQ1 port map( D => data_i(4), CK =>
                           clock, RB => n7, Q => arx_dem_samples_i_reg_19_port)
                           ;
   arx_dem_samples_i_reg_reg_0_3_inst : DFFRPQ1 port map( D => data_i(3), CK =>
                           clock, RB => n8, Q => arx_dem_samples_i_reg_18_port)
                           ;
   arx_dem_samples_i_reg_reg_0_2_inst : DFFRPQ1 port map( D => data_i(2), CK =>
                           clock, RB => n8, Q => arx_dem_samples_i_reg_17_port)
                           ;
   arx_dem_samples_i_reg_reg_0_1_inst : DFFRPQ1 port map( D => data_i(1), CK =>
                           clock, RB => n8, Q => arx_dem_samples_i_reg_16_port)
                           ;
   arx_dem_samples_i_reg_reg_0_0_inst : DFFRPQ1 port map( D => data_i(0), CK =>
                           n5, RB => n8, Q => arx_dem_samples_i_reg_15_port);
   arx_dem_samples_i_reg_reg_1_4_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_19_port, CK => n5, RB => n8, Q
                           => arx_dem_samples_i_reg_14_port);
   arx_dem_samples_i_reg_reg_1_3_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_18_port, CK => n5, RB => n8, Q
                           => arx_dem_samples_i_reg_13_port);
   arx_dem_samples_i_reg_reg_1_2_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_17_port, CK => n5, RB => n8, Q
                           => arx_dem_samples_i_reg_12_port);
   arx_dem_samples_i_reg_reg_1_1_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_16_port, CK => n5, RB => n8, Q
                           => arx_dem_samples_i_reg_11_port);
   arx_dem_samples_i_reg_reg_1_0_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_15_port, CK => n5, RB => n8, Q
                           => arx_dem_samples_i_reg_10_port);
   arx_dem_samples_i_reg_reg_2_4_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_14_port, CK => n5, RB => n8, Q
                           => arx_dem_samples_i_reg_9_port);
   arx_dem_samples_i_reg_reg_2_3_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_13_port, CK => n5, RB => n8, Q
                           => arx_dem_samples_i_reg_8_port);
   arx_dem_samples_i_reg_reg_2_2_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_12_port, CK => n5, RB => n8, Q
                           => arx_dem_samples_i_reg_7_port);
   arx_dem_samples_i_reg_reg_2_1_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_11_port, CK => n5, RB => n8, Q
                           => arx_dem_samples_i_reg_6_port);
   arx_dem_samples_i_reg_reg_2_0_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_i_reg_10_port, CK => n5, RB => n7, Q
                           => arx_dem_samples_i_reg_5_port);
   arx_dem_samples_q_reg_reg_0_4_inst : DFFRPQ1 port map( D => data_q(4), CK =>
                           n1, RB => n7, Q => arx_dem_samples_q_reg_19_port);
   arx_dem_samples_q_reg_reg_0_3_inst : DFFRPQ1 port map( D => data_q(3), CK =>
                           n5, RB => n7, Q => arx_dem_samples_q_reg_18_port);
   arx_dem_samples_q_reg_reg_0_2_inst : DFFRPQ1 port map( D => data_q(2), CK =>
                           n1, RB => n7, Q => arx_dem_samples_q_reg_17_port);
   arx_dem_samples_q_reg_reg_0_1_inst : DFFRPQ1 port map( D => data_q(1), CK =>
                           n5, RB => n7, Q => arx_dem_samples_q_reg_16_port);
   arx_dem_samples_q_reg_reg_0_0_inst : DFFRPQ1 port map( D => data_q(0), CK =>
                           n1, RB => n7, Q => arx_dem_samples_q_reg_15_port);
   arx_dem_samples_q_reg_reg_1_4_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_19_port, CK => n5, RB => n7, Q
                           => arx_dem_samples_q_reg_14_port);
   arx_dem_samples_q_reg_reg_1_3_inst : DFFRPQ1 port map( D => 
                           arx_dem_samples_q_reg_18_port, CK => n1, RB => n7, Q
                           => arx_dem_samples_q_reg_13_port);
   U3 : INVD1 port map( A => n9, Z => n7);
   U4 : INVD1 port map( A => n9, Z => n8);
   U5 : INVD1 port map( A => n6, Z => n1);
   U6 : INVD1 port map( A => n6, Z => n5);
   U7 : NAN3D1 port map( A1 => arx_result_reg_8_port, A2 => data_out_6_port, A3
                           => arx_result_reg_9_port, Z => n4);
   U8 : OAI21M20D1 port map( A1 => arx_result_reg_3_port, A2 => n2, B => n3, Z 
                           => data_out_1_port);
   U9 : OAI21M20D1 port map( A1 => arx_result_reg_4_port, A2 => n2, B => n3, Z 
                           => data_out_2_port);
   U12 : OAI21M20D1 port map( A1 => arx_result_reg_5_port, A2 => n2, B => n3, Z
                           => data_out_3_port);
   U13 : OAI21M20D1 port map( A1 => arx_result_reg_6_port, A2 => n2, B => n3, Z
                           => data_out_4_port);
   U14 : OAI21M20D1 port map( A1 => arx_result_reg_7_port, A2 => n2, B => n3, Z
                           => data_out_5_port);
   U15 : OAI21M20D1 port map( A1 => arx_result_reg_2_port, A2 => n2, B => n3, Z
                           => data_out_0_port);
   U16 : INVD1 port map( A => resetn, Z => n9);
   U17 : INVD1 port map( A => clock, Z => n6);
   U18 : TIELO port map( Z => n10);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of filter is

   component lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0
      port( clock, resetn : in std_logic;  data_in : in std_logic_vector (11 
            downto 0);  data_out : out std_logic_vector (4 downto 0));
   end component;
   
   component lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1
      port( clock, resetn : in std_logic;  data_in : in std_logic_vector (11 
            downto 0);  data_out : out std_logic_vector (4 downto 0));
   end component;

begin
   
   lpf_i : lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_1 port map( clock => 
                           clock, resetn => resetn, data_in(11) => 
                           data_in_i(11), data_in(10) => data_in_i(10), 
                           data_in(9) => data_in_i(9), data_in(8) => 
                           data_in_i(8), data_in(7) => data_in_i(7), data_in(6)
                           => data_in_i(6), data_in(5) => data_in_i(5), 
                           data_in(4) => data_in_i(4), data_in(3) => 
                           data_in_i(3), data_in(2) => data_in_i(2), data_in(1)
                           => data_in_i(1), data_in(0) => data_in_i(0), 
                           data_out(4) => data_out_i(4), data_out(3) => 
                           data_out_i(3), data_out(2) => data_out_i(2), 
                           data_out(1) => data_out_i(1), data_out(0) => 
                           data_out_i(0));
   lpf_q : lpf_5_12_signed_12_6_1_6_signed_5_1_sat_trunc_0 port map( clock => 
                           clock, resetn => resetn, data_in(11) => 
                           data_in_q(11), data_in(10) => data_in_q(10), 
                           data_in(9) => data_in_q(9), data_in(8) => 
                           data_in_q(8), data_in(7) => data_in_q(7), data_in(6)
                           => data_in_q(6), data_in(5) => data_in_q(5), 
                           data_in(4) => data_in_q(4), data_in(3) => 
                           data_in_q(3), data_in(2) => data_in_q(2), data_in(1)
                           => data_in_q(1), data_in(0) => data_in_q(0), 
                           data_out(4) => data_out_q(4), data_out(3) => 
                           data_out_q(3), data_out(2) => data_out_q(2), 
                           data_out(1) => data_out_q(1), data_out(0) => 
                           data_out_q(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of mixer is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI211D1
      port( A1, A2, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component TIEHI
      port( Z : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component mixer_DW_mult_tc_0
      port( a : in std_logic_vector (6 downto 0);  b : in std_logic_vector (11 
            downto 0);  product : out std_logic_vector (18 downto 0));
   end component;
   
   component mixer_DW_mult_tc_1
      port( a : in std_logic_vector (6 downto 0);  b : in std_logic_vector (11 
            downto 0);  product : out std_logic_vector (18 downto 0));
   end component;
   
   signal arx_i_reg_2_port, arx_i_reg_1_port, arx_i_reg_0_port, i_2_port, 
      i_1_port, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45
      , N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N58, N59, N60, 
      N61, N62, N63, N64, N65, N66, N67, N68, r377_carry_8_port, 
      r377_carry_9_port, r377_carry_10_port, r377_carry_11_port, 
      r377_carry_12_port, r377_carry_13_port, r377_carry_14_port, 
      r377_carry_15_port, r377_carry_16_port, n1, n2, n3, n4, n5, n6, n7, n8, 
      n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
      n24, n25, n26, n27, n28, n29, n30, n31, n32, n330, n340, n350, n360, n370
      , n380, n390, n400, n410, n420, n430, n440, n450, n460, n470, n480, n490,
      n500, n510, n520, n530, n540, n550, n560, n570, n580, n590, n600, n610, 
      n620, n630, n640, n650, n660, n670, n680, n69, n70, n71, n72, n73, n74, 
      n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, 
      n_1428, n_1429, n_1430, n_1431, n_1432, n_1433, n_1434, n_1435, n_1436, 
      n_1437, n_1438, n_1439, n_1440, n_1441 : std_logic;

begin
   
   U8 : EXNOR2D1 port map( A1 => arx_i_reg_1_port, A2 => n75, Z => i_1_port);
   r375 : mixer_DW_mult_tc_1 port map( a(6) => n87, a(5) => n88, a(4) => n87, 
                           a(3) => n88, a(2) => n88, a(1) => n87, a(0) => n87, 
                           b(11) => data_in(11), b(10) => data_in(10), b(9) => 
                           data_in(9), b(8) => data_in(8), b(7) => data_in(7), 
                           b(6) => data_in(6), b(5) => data_in(5), b(4) => 
                           data_in(4), b(3) => data_in(3), b(2) => data_in(2), 
                           b(1) => data_in(1), b(0) => data_in(0), product(18) 
                           => n_1428, product(17) => N44, product(16) => N43, 
                           product(15) => N42, product(14) => N41, product(13) 
                           => N40, product(12) => N39, product(11) => N38, 
                           product(10) => N37, product(9) => N36, product(8) =>
                           N35, product(7) => N34, product(6) => N33, 
                           product(5) => n_1429, product(4) => n_1430, 
                           product(3) => n_1431, product(2) => n_1432, 
                           product(1) => n_1433, product(0) => n_1434);
   r376 : mixer_DW_mult_tc_0 port map( a(6) => n88, a(5) => n87, a(4) => n88, 
                           a(3) => n87, a(2) => n87, a(1) => n88, a(0) => n87, 
                           b(11) => data_in(11), b(10) => data_in(10), b(9) => 
                           data_in(9), b(8) => data_in(8), b(7) => data_in(7), 
                           b(6) => data_in(6), b(5) => data_in(5), b(4) => 
                           data_in(4), b(3) => data_in(3), b(2) => data_in(2), 
                           b(1) => data_in(1), b(0) => data_in(0), product(18) 
                           => n_1435, product(17) => N56, product(16) => N55, 
                           product(15) => N54, product(14) => N53, product(13) 
                           => N52, product(12) => N51, product(11) => N50, 
                           product(10) => N49, product(9) => N48, product(8) =>
                           N47, product(7) => N46, product(6) => N45, 
                           product(5) => n_1436, product(4) => n_1437, 
                           product(3) => n_1438, product(2) => n_1439, 
                           product(1) => n_1440, product(0) => n_1441);
   arx_i_reg_reg_1_inst : DFFRPQ1 port map( D => i_1_port, CK => clock, RB => 
                           resetn, Q => arx_i_reg_1_port);
   arx_i_reg_reg_0_inst : DFFRPQ1 port map( D => n75, CK => clock, RB => resetn
                           , Q => arx_i_reg_0_port);
   arx_i_reg_reg_2_inst : DFFRPQ1 port map( D => i_2_port, CK => clock, RB => 
                           resetn, Q => arx_i_reg_2_port);
   U3 : NOR2D1 port map( A1 => n3, A2 => n75, Z => n27);
   U4 : NOR2M1D1 port map( A1 => n330, A2 => n74, Z => n570);
   U5 : NOR2M1D1 port map( A1 => n4, A2 => n74, Z => n28);
   U6 : NOR2D1 port map( A1 => n74, A2 => n75, Z => n560);
   U7 : INVD1 port map( A => N44, Z => n73);
   U9 : INVD1 port map( A => N43, Z => n72);
   U10 : INVD1 port map( A => N42, Z => n71);
   U11 : INVD1 port map( A => N41, Z => n70);
   U12 : INVD1 port map( A => N40, Z => n69);
   U13 : INVD1 port map( A => N39, Z => n680);
   U14 : INVD1 port map( A => N38, Z => n670);
   U15 : INVD1 port map( A => N37, Z => n660);
   U16 : INVD1 port map( A => N36, Z => n650);
   U17 : EXOR2D1 port map( A1 => data_in(11), A2 => n1, Z => N68);
   U18 : NAN2D1 port map( A1 => r377_carry_16_port, A2 => n86, Z => n1);
   U19 : INVD1 port map( A => data_in(1), Z => n77);
   U20 : INVD1 port map( A => data_in(0), Z => n76);
   U21 : INVD1 port map( A => N35, Z => n640);
   U22 : INVD1 port map( A => data_in(2), Z => n78);
   U23 : INVD1 port map( A => data_in(3), Z => n79);
   U24 : INVD1 port map( A => N34, Z => n630);
   U25 : INVD1 port map( A => data_in(4), Z => n80);
   U26 : INVD1 port map( A => N33, Z => n620);
   U27 : INVD1 port map( A => data_in(5), Z => n81);
   U28 : INVD1 port map( A => data_in(6), Z => n82);
   U29 : INVD1 port map( A => data_in(7), Z => n83);
   U30 : INVD1 port map( A => data_in(8), Z => n84);
   U31 : INVD1 port map( A => data_in(9), Z => n85);
   U32 : INVD1 port map( A => data_in(10), Z => n86);
   U33 : NOR2M1D1 port map( A1 => n330, A2 => arx_i_reg_2_port, Z => n590);
   U34 : INVD1 port map( A => arx_i_reg_0_port, Z => n75);
   U35 : NAN2D1 port map( A1 => arx_i_reg_0_port, A2 => n3, Z => n32);
   U36 : NOR2M1D1 port map( A1 => n4, A2 => arx_i_reg_2_port, Z => n29);
   U37 : INVD1 port map( A => arx_i_reg_2_port, Z => n74);
   U38 : NOR2D1 port map( A1 => n75, A2 => arx_i_reg_2_port, Z => n580);
   U39 : EXNOR2D1 port map( A1 => arx_i_reg_2_port, A2 => n2, Z => i_2_port);
   U40 : NAN2D1 port map( A1 => arx_i_reg_1_port, A2 => arx_i_reg_0_port, Z => 
                           n2);
   U41 : TIELO port map( Z => n88);
   U42 : TIEHI port map( Z => n87);
   U43 : EXOR2D1 port map( A1 => arx_i_reg_1_port, A2 => arx_i_reg_2_port, Z =>
                           n3);
   U44 : NAN2D1 port map( A1 => n27, A2 => N45, Z => n6);
   U45 : NOR2D1 port map( A1 => arx_i_reg_0_port, A2 => arx_i_reg_1_port, Z => 
                           n4);
   U46 : AOI22D1 port map( A1 => n29, A2 => data_in(0), B1 => n28, B2 => 
                           data_in(0), Z => n5);
   U47 : OAI211D1 port map( A1 => n620, A2 => n32, B => n6, C => n5, Z => 
                           data_out_i(0));
   U48 : NAN2D1 port map( A1 => n27, A2 => N46, Z => n8);
   U49 : AOI22D1 port map( A1 => n29, A2 => data_in(1), B1 => n28, B2 => N58, Z
                           => n7);
   U50 : OAI211D1 port map( A1 => n630, A2 => n32, B => n8, C => n7, Z => 
                           data_out_i(1));
   U51 : NAN2D1 port map( A1 => n27, A2 => N47, Z => n10);
   U52 : AOI22D1 port map( A1 => n29, A2 => data_in(2), B1 => n28, B2 => N59, Z
                           => n9);
   U53 : OAI211D1 port map( A1 => n640, A2 => n32, B => n10, C => n9, Z => 
                           data_out_i(2));
   U54 : NAN2D1 port map( A1 => n27, A2 => N48, Z => n12);
   U55 : AOI22D1 port map( A1 => n29, A2 => data_in(3), B1 => n28, B2 => N60, Z
                           => n11);
   U56 : OAI211D1 port map( A1 => n650, A2 => n32, B => n12, C => n11, Z => 
                           data_out_i(3));
   U57 : NAN2D1 port map( A1 => n27, A2 => N49, Z => n14);
   U58 : AOI22D1 port map( A1 => n29, A2 => data_in(4), B1 => n28, B2 => N61, Z
                           => n13);
   U59 : OAI211D1 port map( A1 => n660, A2 => n32, B => n14, C => n13, Z => 
                           data_out_i(4));
   U60 : NAN2D1 port map( A1 => n27, A2 => N50, Z => n16);
   U61 : AOI22D1 port map( A1 => n29, A2 => data_in(5), B1 => n28, B2 => N62, Z
                           => n15);
   U62 : OAI211D1 port map( A1 => n670, A2 => n32, B => n16, C => n15, Z => 
                           data_out_i(5));
   U63 : NAN2D1 port map( A1 => n27, A2 => N51, Z => n18);
   U64 : AOI22D1 port map( A1 => n29, A2 => data_in(6), B1 => n28, B2 => N63, Z
                           => n17);
   U65 : OAI211D1 port map( A1 => n680, A2 => n32, B => n18, C => n17, Z => 
                           data_out_i(6));
   U66 : NAN2D1 port map( A1 => n27, A2 => N52, Z => n20);
   U67 : AOI22D1 port map( A1 => n29, A2 => data_in(7), B1 => n28, B2 => N64, Z
                           => n19);
   U68 : OAI211D1 port map( A1 => n69, A2 => n32, B => n20, C => n19, Z => 
                           data_out_i(7));
   U69 : NAN2D1 port map( A1 => n27, A2 => N53, Z => n22);
   U70 : AOI22D1 port map( A1 => n29, A2 => data_in(8), B1 => n28, B2 => N65, Z
                           => n21);
   U71 : OAI211D1 port map( A1 => n70, A2 => n32, B => n22, C => n21, Z => 
                           data_out_i(8));
   U72 : NAN2D1 port map( A1 => n27, A2 => N54, Z => n24);
   U73 : AOI22D1 port map( A1 => n29, A2 => data_in(9), B1 => n28, B2 => N66, Z
                           => n23);
   U74 : OAI211D1 port map( A1 => n71, A2 => n32, B => n24, C => n23, Z => 
                           data_out_i(9));
   U75 : NAN2D1 port map( A1 => n27, A2 => N55, Z => n26);
   U76 : AOI22D1 port map( A1 => n29, A2 => data_in(10), B1 => n28, B2 => N67, 
                           Z => n25);
   U77 : OAI211D1 port map( A1 => n72, A2 => n32, B => n26, C => n25, Z => 
                           data_out_i(10));
   U78 : NAN2D1 port map( A1 => n27, A2 => N56, Z => n31);
   U79 : AOI22D1 port map( A1 => n29, A2 => data_in(11), B1 => n28, B2 => N68, 
                           Z => n30);
   U80 : OAI211D1 port map( A1 => n73, A2 => n32, B => n31, C => n30, Z => 
                           data_out_i(11));
   U81 : AND2D1 port map( A1 => arx_i_reg_1_port, A2 => n75, Z => n330);
   U82 : AOI22D1 port map( A1 => data_in(0), A2 => n570, B1 => N45, B2 => n560,
                           Z => n350);
   U83 : AOI22D1 port map( A1 => data_in(0), A2 => n590, B1 => N33, B2 => n580,
                           Z => n340);
   U84 : NAN2D1 port map( A1 => n350, A2 => n340, Z => data_out_q(0));
   U85 : AOI22D1 port map( A1 => data_in(1), A2 => n570, B1 => N46, B2 => n560,
                           Z => n370);
   U86 : AOI22D1 port map( A1 => N58, A2 => n590, B1 => N34, B2 => n580, Z => 
                           n360);
   U87 : NAN2D1 port map( A1 => n370, A2 => n360, Z => data_out_q(1));
   U88 : AOI22D1 port map( A1 => data_in(2), A2 => n570, B1 => N47, B2 => n560,
                           Z => n390);
   U89 : AOI22D1 port map( A1 => N59, A2 => n590, B1 => N35, B2 => n580, Z => 
                           n380);
   U90 : NAN2D1 port map( A1 => n390, A2 => n380, Z => data_out_q(2));
   U91 : AOI22D1 port map( A1 => data_in(3), A2 => n570, B1 => N48, B2 => n560,
                           Z => n410);
   U92 : AOI22D1 port map( A1 => N60, A2 => n590, B1 => N36, B2 => n580, Z => 
                           n400);
   U93 : NAN2D1 port map( A1 => n410, A2 => n400, Z => data_out_q(3));
   U94 : AOI22D1 port map( A1 => data_in(4), A2 => n570, B1 => N49, B2 => n560,
                           Z => n430);
   U95 : AOI22D1 port map( A1 => N61, A2 => n590, B1 => N37, B2 => n580, Z => 
                           n420);
   U96 : NAN2D1 port map( A1 => n430, A2 => n420, Z => data_out_q(4));
   U97 : AOI22D1 port map( A1 => data_in(5), A2 => n570, B1 => N50, B2 => n560,
                           Z => n450);
   U98 : AOI22D1 port map( A1 => N62, A2 => n590, B1 => N38, B2 => n580, Z => 
                           n440);
   U99 : NAN2D1 port map( A1 => n450, A2 => n440, Z => data_out_q(5));
   U100 : AOI22D1 port map( A1 => data_in(6), A2 => n570, B1 => N51, B2 => n560
                           , Z => n470);
   U101 : AOI22D1 port map( A1 => N63, A2 => n590, B1 => N39, B2 => n580, Z => 
                           n460);
   U102 : NAN2D1 port map( A1 => n470, A2 => n460, Z => data_out_q(6));
   U103 : AOI22D1 port map( A1 => data_in(7), A2 => n570, B1 => N52, B2 => n560
                           , Z => n490);
   U104 : AOI22D1 port map( A1 => N64, A2 => n590, B1 => N40, B2 => n580, Z => 
                           n480);
   U105 : NAN2D1 port map( A1 => n490, A2 => n480, Z => data_out_q(7));
   U106 : AOI22D1 port map( A1 => data_in(8), A2 => n570, B1 => N53, B2 => n560
                           , Z => n510);
   U107 : AOI22D1 port map( A1 => N65, A2 => n590, B1 => N41, B2 => n580, Z => 
                           n500);
   U108 : NAN2D1 port map( A1 => n510, A2 => n500, Z => data_out_q(8));
   U109 : AOI22D1 port map( A1 => data_in(9), A2 => n570, B1 => N54, B2 => n560
                           , Z => n530);
   U110 : AOI22D1 port map( A1 => N66, A2 => n590, B1 => N42, B2 => n580, Z => 
                           n520);
   U111 : NAN2D1 port map( A1 => n530, A2 => n520, Z => data_out_q(9));
   U112 : AOI22D1 port map( A1 => data_in(10), A2 => n570, B1 => N55, B2 => 
                           n560, Z => n550);
   U113 : AOI22D1 port map( A1 => N67, A2 => n590, B1 => N43, B2 => n580, Z => 
                           n540);
   U114 : NAN2D1 port map( A1 => n550, A2 => n540, Z => data_out_q(10));
   U115 : AOI22D1 port map( A1 => data_in(11), A2 => n570, B1 => N56, B2 => 
                           n560, Z => n610);
   U116 : AOI22D1 port map( A1 => N68, A2 => n590, B1 => N44, B2 => n580, Z => 
                           n600);
   U117 : NAN2D1 port map( A1 => n610, A2 => n600, Z => data_out_q(11));
   U118 : EXOR2D1 port map( A1 => n86, A2 => r377_carry_16_port, Z => N67);
   U119 : AND2D1 port map( A1 => r377_carry_15_port, A2 => n85, Z => 
                           r377_carry_16_port);
   U120 : EXOR2D1 port map( A1 => n85, A2 => r377_carry_15_port, Z => N66);
   U121 : AND2D1 port map( A1 => r377_carry_14_port, A2 => n84, Z => 
                           r377_carry_15_port);
   U122 : EXOR2D1 port map( A1 => n84, A2 => r377_carry_14_port, Z => N65);
   U123 : AND2D1 port map( A1 => r377_carry_13_port, A2 => n83, Z => 
                           r377_carry_14_port);
   U124 : EXOR2D1 port map( A1 => n83, A2 => r377_carry_13_port, Z => N64);
   U125 : AND2D1 port map( A1 => r377_carry_12_port, A2 => n82, Z => 
                           r377_carry_13_port);
   U126 : EXOR2D1 port map( A1 => n82, A2 => r377_carry_12_port, Z => N63);
   U127 : AND2D1 port map( A1 => r377_carry_11_port, A2 => n81, Z => 
                           r377_carry_12_port);
   U128 : EXOR2D1 port map( A1 => n81, A2 => r377_carry_11_port, Z => N62);
   U129 : AND2D1 port map( A1 => r377_carry_10_port, A2 => n80, Z => 
                           r377_carry_11_port);
   U130 : EXOR2D1 port map( A1 => n80, A2 => r377_carry_10_port, Z => N61);
   U131 : AND2D1 port map( A1 => r377_carry_9_port, A2 => n79, Z => 
                           r377_carry_10_port);
   U132 : EXOR2D1 port map( A1 => n79, A2 => r377_carry_9_port, Z => N60);
   U133 : AND2D1 port map( A1 => r377_carry_8_port, A2 => n78, Z => 
                           r377_carry_9_port);
   U134 : EXOR2D1 port map( A1 => n78, A2 => r377_carry_8_port, Z => N59);
   U135 : AND2D1 port map( A1 => n76, A2 => n77, Z => r377_carry_8_port);
   U136 : EXOR2D1 port map( A1 => n77, A2 => n76, Z => N58);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of slicer_std is

   component slicer
      port( clock, resetn : in std_logic;  data_in : in std_logic_vector (6 
            downto 0);  offset : in std_logic_vector (1 downto 0);  data_out : 
            out std_logic);
   end component;

begin
   
   slicer_inst : slicer port map( clock => clock, resetn => resetn, data_in(6) 
                           => data_in(6), data_in(5) => data_in(5), data_in(4) 
                           => data_in(4), data_in(3) => data_in(3), data_in(2) 
                           => data_in(2), data_in(1) => data_in(1), data_in(0) 
                           => data_in(0), offset(1) => offset(1), offset(0) => 
                           offset(0), data_out => data_out);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of demodulator_std is

   component demodulator
      port( clock, resetn : in std_logic;  data_i, data_q : in std_logic_vector
            (4 downto 0);  data_out : out std_logic_vector (6 downto 0));
   end component;

begin
   
   demodulator_inst : demodulator port map( clock => clock, resetn => resetn, 
                           data_i(4) => data_i(4), data_i(3) => data_i(3), 
                           data_i(2) => data_i(2), data_i(1) => data_i(1), 
                           data_i(0) => data_i(0), data_q(4) => data_q(4), 
                           data_q(3) => data_q(3), data_q(2) => data_q(2), 
                           data_q(1) => data_q(1), data_q(0) => data_q(0), 
                           data_out(6) => data_out(6), data_out(5) => 
                           data_out(5), data_out(4) => data_out(4), data_out(3)
                           => data_out(3), data_out(2) => data_out(2), 
                           data_out(1) => data_out(1), data_out(0) => 
                           data_out(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of filter_std is

   component filter
      port( clock, resetn : in std_logic;  data_in_i, data_in_q : in 
            std_logic_vector (11 downto 0);  data_out_i, data_out_q : out 
            std_logic_vector (4 downto 0));
   end component;

begin
   
   filter_inst : filter port map( clock => clock, resetn => resetn, 
                           data_in_i(11) => data_in_i(11), data_in_i(10) => 
                           data_in_i(10), data_in_i(9) => data_in_i(9), 
                           data_in_i(8) => data_in_i(8), data_in_i(7) => 
                           data_in_i(7), data_in_i(6) => data_in_i(6), 
                           data_in_i(5) => data_in_i(5), data_in_i(4) => 
                           data_in_i(4), data_in_i(3) => data_in_i(3), 
                           data_in_i(2) => data_in_i(2), data_in_i(1) => 
                           data_in_i(1), data_in_i(0) => data_in_i(0), 
                           data_in_q(11) => data_in_q(11), data_in_q(10) => 
                           data_in_q(10), data_in_q(9) => data_in_q(9), 
                           data_in_q(8) => data_in_q(8), data_in_q(7) => 
                           data_in_q(7), data_in_q(6) => data_in_q(6), 
                           data_in_q(5) => data_in_q(5), data_in_q(4) => 
                           data_in_q(4), data_in_q(3) => data_in_q(3), 
                           data_in_q(2) => data_in_q(2), data_in_q(1) => 
                           data_in_q(1), data_in_q(0) => data_in_q(0), 
                           data_out_i(4) => data_out_i(4), data_out_i(3) => 
                           data_out_i(3), data_out_i(2) => data_out_i(2), 
                           data_out_i(1) => data_out_i(1), data_out_i(0) => 
                           data_out_i(0), data_out_q(4) => data_out_q(4), 
                           data_out_q(3) => data_out_q(3), data_out_q(2) => 
                           data_out_q(2), data_out_q(1) => data_out_q(1), 
                           data_out_q(0) => data_out_q(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of mixer_std is

   component mixer
      port( clock, resetn : in std_logic;  data_in : in std_logic_vector (11 
            downto 0);  phase_corr : in std_logic_vector (9 downto 0);  
            data_out_i, data_out_q : out std_logic_vector (11 downto 0));
   end component;

begin
   
   mixer_inst : mixer port map( clock => clock, resetn => resetn, data_in(11) 
                           => data_in(11), data_in(10) => data_in(10), 
                           data_in(9) => data_in(9), data_in(8) => data_in(8), 
                           data_in(7) => data_in(7), data_in(6) => data_in(6), 
                           data_in(5) => data_in(5), data_in(4) => data_in(4), 
                           data_in(3) => data_in(3), data_in(2) => data_in(2), 
                           data_in(1) => data_in(1), data_in(0) => data_in(0), 
                           phase_corr(9) => phase_corr(9), phase_corr(8) => 
                           phase_corr(8), phase_corr(7) => phase_corr(7), 
                           phase_corr(6) => phase_corr(6), phase_corr(5) => 
                           phase_corr(5), phase_corr(4) => phase_corr(4), 
                           phase_corr(3) => phase_corr(3), phase_corr(2) => 
                           phase_corr(2), phase_corr(1) => phase_corr(1), 
                           phase_corr(0) => phase_corr(0), data_out_i(11) => 
                           data_out_i(11), data_out_i(10) => data_out_i(10), 
                           data_out_i(9) => data_out_i(9), data_out_i(8) => 
                           data_out_i(8), data_out_i(7) => data_out_i(7), 
                           data_out_i(6) => data_out_i(6), data_out_i(5) => 
                           data_out_i(5), data_out_i(4) => data_out_i(4), 
                           data_out_i(3) => data_out_i(3), data_out_i(2) => 
                           data_out_i(2), data_out_i(1) => data_out_i(1), 
                           data_out_i(0) => data_out_i(0), data_out_q(11) => 
                           data_out_q(11), data_out_q(10) => data_out_q(10), 
                           data_out_q(9) => data_out_q(9), data_out_q(8) => 
                           data_out_q(8), data_out_q(7) => data_out_q(7), 
                           data_out_q(6) => data_out_q(6), data_out_q(5) => 
                           data_out_q(5), data_out_q(4) => data_out_q(4), 
                           data_out_q(3) => data_out_q(3), data_out_q(2) => 
                           data_out_q(2), data_out_q(1) => data_out_q(1), 
                           data_out_q(0) => data_out_q(0));

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of clock_gen is

   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal counter_1_port, counter_0_port, N1, N2, n10 : std_logic;

begin
   clk16 <= clk;
   
   U5 : EXNOR2D1 port map( A1 => counter_1_port, A2 => n10, Z => N1);
   clk4_reg : DFFRPQ1 port map( D => N2, CK => clk, RB => rstn, Q => clk4);
   counter_reg_1_inst : DFFRPQ1 port map( D => N1, CK => clk, RB => rstn, Q => 
                           counter_1_port);
   counter_reg_0_inst : DFFRPQ1 port map( D => n10, CK => clk, RB => rstn, Q =>
                           counter_0_port);
   U3 : INVD1 port map( A => counter_0_port, Z => n10);
   U4 : AND2D1 port map( A1 => counter_1_port, A2 => counter_0_port, Z => N2);

end hier_structure_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_gfsk.all;

architecture hier_structure_none_10 of gfsk is

   component TIELO
      port( Z : out std_logic);
   end component;
   
   component TIEHI
      port( Z : out std_logic);
   end component;
   
   component slicer_std
      port( clock, resetn : in std_logic;  data_in : in std_logic_vector (6 
            downto 0);  offset : in std_logic_vector (1 downto 0);  data_out : 
            out std_logic);
   end component;
   
   component demodulator_std
      port( clock, resetn : in std_logic;  data_i, data_q : in std_logic_vector
            (4 downto 0);  data_out : out std_logic_vector (6 downto 0));
   end component;
   
   component filter_std
      port( clock, resetn : in std_logic;  data_in_i, data_in_q : in 
            std_logic_vector (11 downto 0);  data_out_i, data_out_q : out 
            std_logic_vector (4 downto 0));
   end component;
   
   component mixer_std
      port( clock, resetn : in std_logic;  data_in : in std_logic_vector (11 
            downto 0);  phase_corr : in std_logic_vector (9 downto 0);  
            data_out_i, data_out_q : out std_logic_vector (11 downto 0));
   end component;
   
   component clock_gen
      port( clk, rstn : in std_logic;  clk4, clk16 : out std_logic);
   end component;
   
   signal n_Logic1_port, n_Logic0_port, clk4, clk16, mixer_out_i_11_port, 
      mixer_out_i_10_port, mixer_out_i_9_port, mixer_out_i_8_port, 
      mixer_out_i_7_port, mixer_out_i_6_port, mixer_out_i_5_port, 
      mixer_out_i_4_port, mixer_out_i_3_port, mixer_out_i_2_port, 
      mixer_out_i_1_port, mixer_out_i_0_port, mixer_out_q_11_port, 
      mixer_out_q_10_port, mixer_out_q_9_port, mixer_out_q_8_port, 
      mixer_out_q_7_port, mixer_out_q_6_port, mixer_out_q_5_port, 
      mixer_out_q_4_port, mixer_out_q_3_port, mixer_out_q_2_port, 
      mixer_out_q_1_port, mixer_out_q_0_port, filter_out_i_4_port, 
      filter_out_i_3_port, filter_out_i_2_port, filter_out_i_1_port, 
      filter_out_i_0_port, filter_out_q_4_port, filter_out_q_3_port, 
      filter_out_q_2_port, filter_out_q_1_port, filter_out_q_0_port, 
      demodulator_out_6_port, demodulator_out_5_port, demodulator_out_4_port, 
      demodulator_out_3_port, demodulator_out_2_port, demodulator_out_1_port, 
      demodulator_out_0_port : std_logic;

begin
   
   cg : clock_gen port map( clk => clk, rstn => rstn, clk4 => clk4, clk16 => 
                           clk16);
   mx : mixer_std port map( clock => clk16, resetn => rstn, data_in(11) => 
                           mixer_in(11), data_in(10) => mixer_in(10), 
                           data_in(9) => mixer_in(9), data_in(8) => mixer_in(8)
                           , data_in(7) => mixer_in(7), data_in(6) => 
                           mixer_in(6), data_in(5) => mixer_in(5), data_in(4) 
                           => mixer_in(4), data_in(3) => mixer_in(3), 
                           data_in(2) => mixer_in(2), data_in(1) => mixer_in(1)
                           , data_in(0) => mixer_in(0), phase_corr(9) => 
                           n_Logic0_port, phase_corr(8) => n_Logic0_port, 
                           phase_corr(7) => n_Logic0_port, phase_corr(6) => 
                           n_Logic0_port, phase_corr(5) => n_Logic0_port, 
                           phase_corr(4) => n_Logic0_port, phase_corr(3) => 
                           n_Logic0_port, phase_corr(2) => n_Logic0_port, 
                           phase_corr(1) => n_Logic0_port, phase_corr(0) => 
                           n_Logic0_port, data_out_i(11) => mixer_out_i_11_port
                           , data_out_i(10) => mixer_out_i_10_port, 
                           data_out_i(9) => mixer_out_i_9_port, data_out_i(8) 
                           => mixer_out_i_8_port, data_out_i(7) => 
                           mixer_out_i_7_port, data_out_i(6) => 
                           mixer_out_i_6_port, data_out_i(5) => 
                           mixer_out_i_5_port, data_out_i(4) => 
                           mixer_out_i_4_port, data_out_i(3) => 
                           mixer_out_i_3_port, data_out_i(2) => 
                           mixer_out_i_2_port, data_out_i(1) => 
                           mixer_out_i_1_port, data_out_i(0) => 
                           mixer_out_i_0_port, data_out_q(11) => 
                           mixer_out_q_11_port, data_out_q(10) => 
                           mixer_out_q_10_port, data_out_q(9) => 
                           mixer_out_q_9_port, data_out_q(8) => 
                           mixer_out_q_8_port, data_out_q(7) => 
                           mixer_out_q_7_port, data_out_q(6) => 
                           mixer_out_q_6_port, data_out_q(5) => 
                           mixer_out_q_5_port, data_out_q(4) => 
                           mixer_out_q_4_port, data_out_q(3) => 
                           mixer_out_q_3_port, data_out_q(2) => 
                           mixer_out_q_2_port, data_out_q(1) => 
                           mixer_out_q_1_port, data_out_q(0) => 
                           mixer_out_q_0_port);
   lpf : filter_std port map( clock => clk16, resetn => rstn, data_in_i(11) => 
                           mixer_out_i_11_port, data_in_i(10) => 
                           mixer_out_i_10_port, data_in_i(9) => 
                           mixer_out_i_9_port, data_in_i(8) => 
                           mixer_out_i_8_port, data_in_i(7) => 
                           mixer_out_i_7_port, data_in_i(6) => 
                           mixer_out_i_6_port, data_in_i(5) => 
                           mixer_out_i_5_port, data_in_i(4) => 
                           mixer_out_i_4_port, data_in_i(3) => 
                           mixer_out_i_3_port, data_in_i(2) => 
                           mixer_out_i_2_port, data_in_i(1) => 
                           mixer_out_i_1_port, data_in_i(0) => 
                           mixer_out_i_0_port, data_in_q(11) => 
                           mixer_out_q_11_port, data_in_q(10) => 
                           mixer_out_q_10_port, data_in_q(9) => 
                           mixer_out_q_9_port, data_in_q(8) => 
                           mixer_out_q_8_port, data_in_q(7) => 
                           mixer_out_q_7_port, data_in_q(6) => 
                           mixer_out_q_6_port, data_in_q(5) => 
                           mixer_out_q_5_port, data_in_q(4) => 
                           mixer_out_q_4_port, data_in_q(3) => 
                           mixer_out_q_3_port, data_in_q(2) => 
                           mixer_out_q_2_port, data_in_q(1) => 
                           mixer_out_q_1_port, data_in_q(0) => 
                           mixer_out_q_0_port, data_out_i(4) => 
                           filter_out_i_4_port, data_out_i(3) => 
                           filter_out_i_3_port, data_out_i(2) => 
                           filter_out_i_2_port, data_out_i(1) => 
                           filter_out_i_1_port, data_out_i(0) => 
                           filter_out_i_0_port, data_out_q(4) => 
                           filter_out_q_4_port, data_out_q(3) => 
                           filter_out_q_3_port, data_out_q(2) => 
                           filter_out_q_2_port, data_out_q(1) => 
                           filter_out_q_1_port, data_out_q(0) => 
                           filter_out_q_0_port);
   dam : demodulator_std port map( clock => clk4, resetn => rstn, data_i(4) => 
                           filter_out_i_4_port, data_i(3) => 
                           filter_out_i_3_port, data_i(2) => 
                           filter_out_i_2_port, data_i(1) => 
                           filter_out_i_1_port, data_i(0) => 
                           filter_out_i_0_port, data_q(4) => 
                           filter_out_q_4_port, data_q(3) => 
                           filter_out_q_3_port, data_q(2) => 
                           filter_out_q_2_port, data_q(1) => 
                           filter_out_q_1_port, data_q(0) => 
                           filter_out_q_0_port, data_out(6) => 
                           demodulator_out_6_port, data_out(5) => 
                           demodulator_out_5_port, data_out(4) => 
                           demodulator_out_4_port, data_out(3) => 
                           demodulator_out_3_port, data_out(2) => 
                           demodulator_out_2_port, data_out(1) => 
                           demodulator_out_1_port, data_out(0) => 
                           demodulator_out_0_port);
   sl : slicer_std port map( clock => clk4, resetn => rstn, data_in(6) => 
                           demodulator_out_6_port, data_in(5) => 
                           demodulator_out_5_port, data_in(4) => 
                           demodulator_out_4_port, data_in(3) => 
                           demodulator_out_3_port, data_in(2) => 
                           demodulator_out_2_port, data_in(1) => 
                           demodulator_out_1_port, data_in(0) => 
                           demodulator_out_0_port, offset(1) => n_Logic1_port, 
                           offset(0) => n_Logic1_port, data_out => slicer_out);
   U3 : TIEHI port map( Z => n_Logic1_port);
   U4 : TIELO port map( Z => n_Logic0_port);

end hier_structure_none_10;
