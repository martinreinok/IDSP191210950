
library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

package CONV_PACK_sec_df2_std is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type SIGNED is array (INTEGER range <>) of std_logic;

end CONV_PACK_sec_df2_std;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_sec_df2_std.all;

architecture hier_rtl_none_10 of sec_df2_DW_mult_tc_4 is

   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2M1D1
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
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n16, n17, n18, n19, n20, n21, n22
      , n23, n24, n25, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78 : 
      std_logic;

begin
   
   U2 : ADFULD1 port map( A => b(6), B => n68, CI => n2, CO => n1, S => 
                           product(13));
   U3 : ADFULD1 port map( A => n69, B => b(5), CI => n3, CO => n2, S => 
                           product(12));
   U4 : ADFULD1 port map( A => n16, B => n70, CI => n4, CO => n3, S => 
                           product(11));
   U5 : ADFULD1 port map( A => n17, B => n18, CI => n5, CO => n4, S => 
                           product(10));
   U6 : ADFULD1 port map( A => n19, B => n20, CI => n6, CO => n5, S => 
                           product(9));
   U7 : ADFULD1 port map( A => n21, B => n22, CI => n7, CO => n6, S => 
                           product(8));
   U8 : ADFULD1 port map( A => n23, B => n24, CI => n8, CO => n7, S => 
                           product(7));
   U9 : ADFULD1 port map( A => n25, B => b(0), CI => n9, CO => n8, S => 
                           product(6));
   U16 : ADFULD1 port map( A => b(7), B => n69, CI => b(4), CO => n16, S => n17
                           );
   U17 : ADFULD1 port map( A => n70, B => b(6), CI => b(3), CO => n18, S => n19
                           );
   U18 : ADFULD1 port map( A => n68, B => b(5), CI => b(2), CO => n20, S => n21
                           );
   U19 : ADFULD1 port map( A => n71, B => b(7), CI => b(1), CO => n22, S => n23
                           );
   U20 : ADHALFDL port map( A => b(6), B => n72, CO => n24, S => n25);
   U35 : INVD1 port map( A => n1, Z => product(14));
   U36 : INVD1 port map( A => b(7), Z => n68);
   U37 : INVD1 port map( A => b(5), Z => n70);
   U38 : INVD1 port map( A => b(4), Z => n71);
   U39 : INVD1 port map( A => b(3), Z => n72);
   U40 : INVD1 port map( A => b(6), Z => n69);
   U41 : OAI211D1 port map( A1 => b(2), A2 => n70, B => n73, C => n74, Z => n9)
                           ;
   U42 : NAN2M1D1 port map( A1 => b(2), A2 => n75, Z => n74);
   U43 : NAN2D1 port map( A1 => n75, A2 => b(5), Z => n73);
   U44 : OAI211D1 port map( A1 => b(1), A2 => n71, B => n76, C => n77, Z => n75
                           );
   U45 : NAN2M1D1 port map( A1 => b(1), A2 => n78, Z => n77);
   U46 : NAN2D1 port map( A1 => n78, A2 => b(4), Z => n76);
   U47 : NAN2D1 port map( A1 => b(0), A2 => n72, Z => n78);

end hier_rtl_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_sec_df2_std.all;

architecture hier_rtl_none_10 of sec_df2_DW01_add_3 is

   component OAI211D1
      port( A1, A2, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_14_port, carry_13_port, carry_12_port, carry_11_port, 
      carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port, n1
      , n2, n3, n4, n5, n6, n7, n8, n9 : std_logic;

begin
   
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
   U1_14 : EXOR3D1 port map( A1 => A(14), A2 => B(14), A3 => carry_14_port, Z 
                           => SUM(14));
   U1 : OAI21M20D1 port map( A1 => n1, A2 => A(5), B => n2, Z => carry_6_port);
   U2 : OAI21D1 port map( A1 => A(5), A2 => n1, B => B(5), Z => n2);
   U3 : OAI21M20D1 port map( A1 => n3, A2 => A(4), B => n4, Z => n1);
   U4 : OAI21D1 port map( A1 => A(4), A2 => n3, B => B(4), Z => n4);
   U5 : OAI21M20D1 port map( A1 => n5, A2 => A(3), B => n6, Z => n3);
   U6 : OAI21D1 port map( A1 => A(3), A2 => n5, B => B(3), Z => n6);
   U7 : OAI21M20D1 port map( A1 => n7, A2 => A(2), B => n8, Z => n5);
   U8 : OAI21D1 port map( A1 => A(2), A2 => n7, B => B(2), Z => n8);
   U9 : OAI21M20D1 port map( A1 => A(1), A2 => B(1), B => n9, Z => n7);
   U10 : OAI211D1 port map( A1 => A(1), A2 => B(1), B => A(0), C => B(0), Z => 
                           n9);

end hier_rtl_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_sec_df2_std.all;

architecture hier_rtl_none_10 of sec_df2_DW_mult_tc_0 is

   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXOR3D1
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
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, 
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31
      , n32, n33, n34, n35, n36, product_3_port, product_4_port, product_5_port
      , product_6_port, product_7_port, product_8_port, product_9_port, 
      product_10_port, product_11_port, product_12_port, product_13_port, 
      product_14_port, n83, n84, n85, n86, n87, n88, n89, n_1029, n_1030 : 
      std_logic;

begin
   product <= ( n_1029, product_14_port, product_13_port, product_12_port, 
      product_11_port, product_10_port, product_9_port, product_8_port, 
      product_7_port, product_6_port, product_5_port, product_4_port, 
      product_3_port, b(1), b(0), n_1030 );
   
   U3 : ADFULD1 port map( A => n85, B => b(6), CI => n3, CO => n2, S => 
                           product_13_port);
   U4 : ADFULD1 port map( A => n13, B => b(5), CI => n4, CO => n3, S => 
                           product_12_port);
   U5 : ADFULD1 port map( A => n14, B => n15, CI => n5, CO => n4, S => 
                           product_11_port);
   U6 : ADFULD1 port map( A => n16, B => n19, CI => n6, CO => n5, S => 
                           product_10_port);
   U7 : ADFULD1 port map( A => n20, B => n23, CI => n7, CO => n6, S => 
                           product_9_port);
   U8 : ADFULD1 port map( A => n24, B => n27, CI => n8, CO => n7, S => 
                           product_8_port);
   U9 : ADFULD1 port map( A => n28, B => n31, CI => n9, CO => n8, S => 
                           product_7_port);
   U10 : ADFULD1 port map( A => n32, B => n33, CI => n10, CO => n9, S => 
                           product_6_port);
   U11 : ADFULD1 port map( A => n34, B => n35, CI => n11, CO => n10, S => 
                           product_5_port);
   U12 : ADFULD1 port map( A => n12, B => b(0), CI => n36, CO => n11, S => 
                           product_4_port);
   U13 : ADHALFDL port map( A => b(2), B => b(0), CO => n12, S => 
                           product_3_port);
   U14 : ADFULD1 port map( A => n86, B => n83, CI => n17, CO => n13, S => n14);
   U15 : ADFULD1 port map( A => n21, B => n83, CI => n18, CO => n15, S => n16);
   U16 : ADFULD1 port map( A => n88, B => n87, CI => b(6), CO => n17, S => n18)
                           ;
   U17 : ADFULD1 port map( A => n25, B => b(5), CI => n22, CO => n19, S => n20)
                           ;
   U18 : ADFULD1 port map( A => n83, B => b(2), CI => b(6), CO => n21, S => n22
                           );
   U19 : ADFULD1 port map( A => n29, B => b(4), CI => n26, CO => n23, S => n24)
                           ;
   U20 : ADFULD1 port map( A => n89, B => b(7), CI => b(5), CO => n25, S => n26
                           );
   U21 : ADFULD1 port map( A => b(3), B => b(4), CI => n30, CO => n27, S => n28
                           );
   U24 : ADFULD1 port map( A => b(2), B => b(5), CI => b(3), CO => n31, S => 
                           n32);
   U25 : ADFULD1 port map( A => b(1), B => b(4), CI => b(2), CO => n33, S => 
                           n34);
   U26 : ADHALFDL port map( A => b(1), B => b(3), CO => n35, S => n36);
   U42 : INVD1 port map( A => b(5), Z => n85);
   U43 : INVD1 port map( A => b(1), Z => n89);
   U44 : INVD1 port map( A => b(7), Z => n83);
   U45 : INVD1 port map( A => b(6), Z => n84);
   U46 : INVD1 port map( A => b(3), Z => n87);
   U47 : INVD1 port map( A => b(2), Z => n88);
   U48 : INVD1 port map( A => b(4), Z => n86);
   U49 : EXOR3D1 port map( A1 => n2, A2 => b(7), A3 => n84, Z => 
                           product_14_port);
   U50 : EXOR2D1 port map( A1 => b(6), A2 => b(0), Z => n30);
   U51 : NAN2D1 port map( A1 => b(0), A2 => n84, Z => n29);

end hier_rtl_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_sec_df2_std.all;

architecture hier_rtl_none_10 of sec_df2_DW01_add_2 is

   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
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
   
   signal carry_14_port, carry_13_port, carry_12_port, carry_11_port, 
      carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port, n1
      , n2, n3, n4, n5, n6, n7, n8 : std_logic;

begin
   
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
   U1_14 : EXOR3D1 port map( A1 => A(14), A2 => B(14), A3 => carry_14_port, Z 
                           => SUM(14));
   U1 : AND2D1 port map( A1 => A(1), A2 => B(1), Z => n7);
   U2 : OAI21M20D1 port map( A1 => n1, A2 => A(5), B => n2, Z => carry_6_port);
   U3 : OAI21D1 port map( A1 => A(5), A2 => n1, B => B(5), Z => n2);
   U4 : OAI21M20D1 port map( A1 => n3, A2 => A(4), B => n4, Z => n1);
   U5 : OAI21D1 port map( A1 => A(4), A2 => n3, B => B(4), Z => n4);
   U6 : OAI21M20D1 port map( A1 => n5, A2 => A(3), B => n6, Z => n3);
   U7 : OAI21D1 port map( A1 => A(3), A2 => n5, B => B(3), Z => n6);
   U8 : OAI21M20D1 port map( A1 => n7, A2 => A(2), B => n8, Z => n5);
   U9 : OAI21D1 port map( A1 => A(2), A2 => n7, B => B(2), Z => n8);

end hier_rtl_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_sec_df2_std.all;

architecture hier_rtl_none_10 of sec_df2_DW01_add_1 is

   component EXOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, carry_1_port : std_logic;

begin
   
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
   U1_1 : ADFULD1 port map( A => A(1), B => B(1), CI => carry_1_port, CO => 
                           carry_2_port, S => SUM(1));
   U1_0 : ADFULD1 port map( A => A(0), B => B(0), CI => CI, CO => carry_1_port,
                           S => SUM(0));
   U1_7 : EXOR3D1 port map( A1 => A(7), A2 => B(7), A3 => carry_7_port, Z => 
                           SUM(7));

end hier_rtl_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_sec_df2_std.all;

architecture hier_rtl_none_10 of sec_df2 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component TIELO
      port( Z : out std_logic);
   end component;
   
   component TIEHI
      port( Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component ADHALFDL
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component sec_df2_DW01_add_2
      port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (14 downto 0);  CO : out std_logic);
   end component;
   
   component sec_df2_DW_mult_tc_0
      port( a, b : in std_logic_vector (7 downto 0);  product : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component sec_df2_DW01_add_3
      port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (14 downto 0);  CO : out std_logic);
   end component;
   
   component sec_df2_DW_mult_tc_4
      port( a : in std_logic_vector (6 downto 0);  b : in std_logic_vector (7 
            downto 0);  product : out std_logic_vector (14 downto 0));
   end component;
   
   component sec_df2_DW01_add_1
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   signal arx_z1_reg_6_port, arx_z1_reg_5_port, arx_z1_reg_4_port, 
      arx_z1_reg_3_port, arx_z1_reg_2_port, arx_z1_reg_1_port, 
      arx_z2_reg_7_port, arx_z2_reg_6_port, arx_z2_reg_5_port, 
      arx_z2_reg_4_port, arx_z2_reg_3_port, p1_7_port, p1_6_port, p1_5_port, 
      p1_4_port, p1_3_port, p1_2_port, p1_1_port, p1_0_port, p2_7_port, 
      p2_6_port, p2_5_port, p2_4_port, p2_3_port, p2_2_port, p2_1_port, 
      p2_0_port, N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, 
      N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, 
      p4_7_port, p4_6_port, p4_5_port, p4_4_port, p4_3_port, p4_2_port, 
      p4_1_port, p4_0_port, m1_15, m1_9_port, m1_8_port, m1_7_port, m1_13_port,
      m1_12_port, m1_11_port, m1_10_port, m4_15, m4_9_port, m4_8_port, 
      m4_7_port, m4_6_port, m4_5_port, m4_4_port, m4_3_port, m4_2_port, 
      m4_1_port, m4_13_port, m4_12_port, m4_11_port, m4_10_port, m4_0_port, 
      m2_9_port, m2_8_port, m2_7_port, m2_6_port, m2_5_port, m2_4_port, 
      m2_3_port, m2_2_port, m2_1_port, m2_14_port, m2_13_port, m2_12_port, 
      m2_11_port, m2_10_port, m2_0_port, m5_15, m5_9_port, m5_8_port, m5_7_port
      , m5_6_port, m5_5_port, m5_4_port, m5_3_port, m5_2_port, m5_1_port, 
      m5_13_port, m5_12_port, m5_11_port, m5_10_port, m3_9_port, m3_8_port, 
      m3_7_port, m3_6_port, m3_5_port, m3_4_port, m3_3_port, m3_2_port, 
      m3_1_port, m3_14_port, m3_13_port, m3_12_port, m3_11_port, m3_10_port, 
      m3_0_port, add_416_C139_rn_carry_1_port, add_416_C139_rn_carry_2_port, 
      add_416_C139_rn_carry_3_port, add_416_C139_rn_carry_4_port, 
      add_416_C139_rn_carry_5_port, add_416_C139_rn_carry_6_port, 
      add_416_C139_rn_carry_7_port, mult_134_n25, mult_134_n24, mult_134_n23, 
      mult_134_n22, mult_134_n21, mult_134_n20, mult_134_n19, mult_134_n18, 
      mult_134_n17, mult_134_n16, mult_134_n11, mult_134_n10, mult_134_n9, 
      mult_134_n8, mult_134_n7, mult_134_n6, mult_134_n5, mult_134_n4, 
      mult_134_n3, mult_134_n2, mult_134_n1, mult_131_n16, mult_131_n15, 
      mult_131_n14, mult_131_n13, mult_131_n12, mult_131_n11, mult_131_n10, 
      mult_131_n9, mult_131_n8, mult_131_n7, mult_131_n6, mult_131_n5, 
      mult_131_n4, mult_131_n3, mult_131_n2, mult_133_n26, mult_133_n25, 
      mult_133_n24, mult_133_n23, mult_133_n22, mult_133_n21, mult_133_n20, 
      mult_133_n19, mult_133_n18, mult_133_n17, mult_133_n16, mult_133_n15, 
      mult_133_n13, mult_133_n12, mult_133_n11, mult_133_n10, mult_133_n9, 
      mult_133_n8, mult_133_n7, mult_133_n6, mult_133_n5, mult_133_n4, 
      mult_133_n3, mult_133_n2, mult_133_n1, add_139_carry_8_port, 
      add_139_carry_9_port, add_139_carry_10_port, add_139_carry_11_port, 
      add_139_carry_12_port, add_139_carry_13_port, add_139_carry_14_port, 
      add_416_C138_rn_carry_1_port, add_416_C138_rn_carry_2_port, 
      add_416_C138_rn_carry_3_port, add_416_C138_rn_carry_4_port, 
      add_416_C138_rn_carry_5_port, add_416_C138_rn_carry_6_port, 
      add_416_C138_rn_carry_7_port, n110, n27, n30, n40, n50, n60, n70, n80, 
      n90, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, n_1048, 
      n_1049, n_1050, n_1051, n_1052, n_1053, n_1054, n_1055, n_1056, n_1057, 
      n_1058, n_1059, n_1060, n_1061, n_1062, n_1063, n_1064 : std_logic;

begin
   
   add_1_root_add_136 : sec_df2_DW01_add_1 port map( A(7) => N8, A(6) => N7, 
                           A(5) => N6, A(4) => N5, A(3) => N4, A(2) => N3, A(1)
                           => N2, A(0) => N1, B(7) => data_in(7), B(6) => 
                           data_in(6), B(5) => data_in(5), B(4) => data_in(4), 
                           B(3) => data_in(3), B(2) => data_in(2), B(1) => 
                           data_in(1), B(0) => data_in(0), CI => N0, SUM(7) => 
                           p1_7_port, SUM(6) => p1_6_port, SUM(5) => p1_5_port,
                           SUM(4) => p1_4_port, SUM(3) => p1_3_port, SUM(2) => 
                           p1_2_port, SUM(1) => p1_1_port, SUM(0) => p1_0_port,
                           CO => n_1041);
   mult_137 : sec_df2_DW_mult_tc_4 port map( a(6) => m3_0_port, a(5) => n90, 
                           a(4) => n90, a(3) => n90, a(2) => m3_0_port, a(1) =>
                           m3_0_port, a(0) => n90, b(7) => p1_7_port, b(6) => 
                           p1_6_port, b(5) => p1_5_port, b(4) => p1_4_port, 
                           b(3) => p1_3_port, b(2) => p1_2_port, b(1) => 
                           p1_1_port, b(0) => p1_0_port, product(14) => m1_15, 
                           product(13) => m1_13_port, product(12) => m1_12_port
                           , product(11) => m1_11_port, product(10) => 
                           m1_10_port, product(9) => m1_9_port, product(8) => 
                           m1_8_port, product(7) => m1_7_port, product(6) => 
                           N18, product(5) => n_1042, product(4) => n_1043, 
                           product(3) => n_1044, product(2) => n_1045, 
                           product(1) => n_1046, product(0) => n_1047);
   add_135 : sec_df2_DW01_add_3 port map( A(14) => m2_14_port, A(13) => 
                           m2_13_port, A(12) => m2_12_port, A(11) => m2_11_port
                           , A(10) => m2_10_port, A(9) => m2_9_port, A(8) => 
                           m2_8_port, A(7) => m2_7_port, A(6) => m2_6_port, 
                           A(5) => m2_5_port, A(4) => m2_4_port, A(3) => 
                           m2_3_port, A(2) => m2_2_port, A(1) => m2_1_port, 
                           A(0) => m2_0_port, B(14) => m4_15, B(13) => 
                           m4_13_port, B(12) => m4_12_port, B(11) => m4_11_port
                           , B(10) => m4_10_port, B(9) => m4_9_port, B(8) => 
                           m4_8_port, B(7) => m4_7_port, B(6) => m4_6_port, 
                           B(5) => m4_5_port, B(4) => m4_4_port, B(3) => 
                           m4_3_port, B(2) => m4_2_port, B(1) => m4_1_port, 
                           B(0) => m4_0_port, CI => m3_0_port, SUM(14) => N8, 
                           SUM(13) => N7, SUM(12) => N6, SUM(11) => N5, SUM(10)
                           => N4, SUM(9) => N3, SUM(8) => N2, SUM(7) => N1, 
                           SUM(6) => N0, SUM(5) => n_1048, SUM(4) => n_1049, 
                           SUM(3) => n_1050, SUM(2) => n_1051, SUM(1) => n_1052
                           , SUM(0) => n_1053, CO => n_1054);
   mult_132 : sec_df2_DW_mult_tc_0 port map( a(7) => n90, a(6) => m3_0_port, 
                           a(5) => m3_0_port, a(4) => n90, a(3) => n90, a(2) =>
                           m3_0_port, a(1) => n90, a(0) => m3_0_port, b(7) => 
                           m2_14_port, b(6) => arx_z1_reg_6_port, b(5) => 
                           arx_z1_reg_5_port, b(4) => arx_z1_reg_4_port, b(3) 
                           => arx_z1_reg_3_port, b(2) => arx_z1_reg_2_port, 
                           b(1) => arx_z1_reg_1_port, b(0) => m2_0_port, 
                           product(15) => n_1055, product(14) => m3_14_port, 
                           product(13) => m3_13_port, product(12) => m3_12_port
                           , product(11) => m3_11_port, product(10) => 
                           m3_10_port, product(9) => m3_9_port, product(8) => 
                           m3_8_port, product(7) => m3_7_port, product(6) => 
                           m3_6_port, product(5) => m3_5_port, product(4) => 
                           m3_4_port, product(3) => m3_3_port, product(2) => 
                           m3_2_port, product(1) => m3_1_port, product(0) => 
                           n_1056);
   add_138 : sec_df2_DW01_add_2 port map( A(14) => m3_14_port, A(13) => 
                           m3_13_port, A(12) => m3_12_port, A(11) => m3_11_port
                           , A(10) => m3_10_port, A(9) => m3_9_port, A(8) => 
                           m3_8_port, A(7) => m3_7_port, A(6) => m3_6_port, 
                           A(5) => m3_5_port, A(4) => m3_4_port, A(3) => 
                           m3_3_port, A(2) => m3_2_port, A(1) => m3_1_port, 
                           A(0) => m3_0_port, B(14) => m5_15, B(13) => 
                           m5_13_port, B(12) => m5_12_port, B(11) => m5_11_port
                           , B(10) => m5_10_port, B(9) => m5_9_port, B(8) => 
                           m5_8_port, B(7) => m5_7_port, B(6) => m5_6_port, 
                           B(5) => m5_5_port, B(4) => m5_4_port, B(3) => 
                           m5_3_port, B(2) => m5_2_port, B(1) => m5_1_port, 
                           B(0) => m4_0_port, CI => m3_0_port, SUM(14) => N17, 
                           SUM(13) => N16, SUM(12) => N15, SUM(11) => N14, 
                           SUM(10) => N13, SUM(9) => N12, SUM(8) => N11, SUM(7)
                           => N10, SUM(6) => N9, SUM(5) => n_1057, SUM(4) => 
                           n_1058, SUM(3) => n_1059, SUM(2) => n_1060, SUM(1) 
                           => n_1061, SUM(0) => n_1062, CO => n_1063);
   mult_134_U20 : ADHALFDL port map( A => arx_z2_reg_6_port, B => n40, CO => 
                           mult_134_n24, S => mult_134_n25);
   mult_134_U19 : ADFULD1 port map( A => n50, B => arx_z2_reg_7_port, CI => 
                           m5_1_port, CO => mult_134_n22, S => mult_134_n23);
   mult_134_U18 : ADFULD1 port map( A => n80, B => arx_z2_reg_5_port, CI => 
                           m5_2_port, CO => mult_134_n20, S => mult_134_n21);
   mult_134_U17 : ADFULD1 port map( A => n60, B => arx_z2_reg_6_port, CI => 
                           arx_z2_reg_3_port, CO => mult_134_n18, S => 
                           mult_134_n19);
   mult_134_U16 : ADFULD1 port map( A => arx_z2_reg_7_port, B => n70, CI => 
                           arx_z2_reg_4_port, CO => mult_134_n16, S => 
                           mult_134_n17);
   mult_134_U11 : ADFULD1 port map( A => arx_z2_reg_4_port, B => n27, CI => 
                           mult_134_n11, CO => mult_134_n10, S => m5_4_port);
   mult_134_U10 : ADFULD1 port map( A => arx_z2_reg_5_port, B => n30, CI => 
                           mult_134_n10, CO => mult_134_n9, S => m5_5_port);
   mult_134_U9 : ADFULD1 port map( A => mult_134_n25, B => m4_0_port, CI => 
                           mult_134_n9, CO => mult_134_n8, S => m5_6_port);
   mult_134_U8 : ADFULD1 port map( A => mult_134_n23, B => mult_134_n24, CI => 
                           mult_134_n8, CO => mult_134_n7, S => m5_7_port);
   mult_134_U7 : ADFULD1 port map( A => mult_134_n21, B => mult_134_n22, CI => 
                           mult_134_n7, CO => mult_134_n6, S => m5_8_port);
   mult_134_U6 : ADFULD1 port map( A => mult_134_n19, B => mult_134_n20, CI => 
                           mult_134_n6, CO => mult_134_n5, S => m5_9_port);
   mult_134_U5 : ADFULD1 port map( A => mult_134_n17, B => mult_134_n18, CI => 
                           mult_134_n5, CO => mult_134_n4, S => m5_10_port);
   mult_134_U4 : ADFULD1 port map( A => mult_134_n16, B => n60, CI => 
                           mult_134_n4, CO => mult_134_n3, S => m5_11_port);
   mult_134_U3 : ADFULD1 port map( A => n70, B => arx_z2_reg_5_port, CI => 
                           mult_134_n3, CO => mult_134_n2, S => m5_12_port);
   mult_134_U2 : ADFULD1 port map( A => arx_z2_reg_6_port, B => n80, CI => 
                           mult_134_n2, CO => mult_134_n1, S => m5_13_port);
   mult_131_U15 : ADHALFDL port map( A => arx_z1_reg_5_port, B => 
                           arx_z1_reg_6_port, CO => mult_131_n15, S => 
                           mult_131_n16);
   mult_131_U14 : ADFULD1 port map( A => arx_z1_reg_6_port, B => m2_14_port, CI
                           => arx_z1_reg_1_port, CO => mult_131_n13, S => 
                           mult_131_n14);
   mult_131_U13 : ADHALFDL port map( A => arx_z1_reg_1_port, B => m2_0_port, CO
                           => mult_131_n12, S => m2_1_port);
   mult_131_U12 : ADFULD1 port map( A => arx_z1_reg_2_port, B => 
                           arx_z1_reg_1_port, CI => mult_131_n12, CO => 
                           mult_131_n11, S => m2_2_port);
   mult_131_U11 : ADFULD1 port map( A => arx_z1_reg_3_port, B => 
                           arx_z1_reg_2_port, CI => mult_131_n11, CO => 
                           mult_131_n10, S => m2_3_port);
   mult_131_U10 : ADFULD1 port map( A => arx_z1_reg_4_port, B => 
                           arx_z1_reg_3_port, CI => mult_131_n10, CO => 
                           mult_131_n9, S => m2_4_port);
   mult_131_U9 : ADFULD1 port map( A => arx_z1_reg_5_port, B => 
                           arx_z1_reg_4_port, CI => mult_131_n9, CO => 
                           mult_131_n8, S => m2_5_port);
   mult_131_U8 : ADFULD1 port map( A => mult_131_n16, B => m2_0_port, CI => 
                           mult_131_n8, CO => mult_131_n7, S => m2_6_port);
   mult_131_U7 : ADFULD1 port map( A => mult_131_n14, B => mult_131_n15, CI => 
                           mult_131_n7, CO => mult_131_n6, S => m2_7_port);
   mult_131_U6 : ADFULD1 port map( A => mult_131_n13, B => arx_z1_reg_2_port, 
                           CI => mult_131_n6, CO => mult_131_n5, S => m2_8_port
                           );
   mult_131_U5 : ADFULD1 port map( A => arx_z1_reg_3_port, B => m2_14_port, CI 
                           => mult_131_n5, CO => mult_131_n4, S => m2_9_port);
   mult_131_U4 : ADFULD1 port map( A => arx_z1_reg_4_port, B => m2_14_port, CI 
                           => mult_131_n4, CO => mult_131_n3, S => m2_10_port);
   mult_131_U3 : ADFULD1 port map( A => arx_z1_reg_5_port, B => m2_14_port, CI 
                           => mult_131_n3, CO => mult_131_n2, S => m2_11_port);
   mult_131_U2 : ADFULD1 port map( A => arx_z1_reg_6_port, B => m2_14_port, CI 
                           => mult_131_n2, CO => m2_13_port, S => m2_12_port);
   mult_133_U20 : ADFULD1 port map( A => arx_z2_reg_7_port, B => m5_1_port, CI 
                           => arx_z2_reg_3_port, CO => mult_133_n23, S => 
                           mult_133_n24);
   mult_133_U19 : ADFULD1 port map( A => n27, B => m5_2_port, CI => 
                           arx_z2_reg_4_port, CO => mult_133_n21, S => 
                           mult_133_n22);
   mult_133_U18 : ADFULD1 port map( A => n30, B => arx_z2_reg_3_port, CI => 
                           arx_z2_reg_5_port, CO => mult_133_n19, S => 
                           mult_133_n20);
   mult_133_U17 : ADFULD1 port map( A => n40, B => arx_z2_reg_4_port, CI => 
                           arx_z2_reg_6_port, CO => mult_133_n17, S => 
                           mult_133_n18);
   mult_133_U16 : ADFULD1 port map( A => n50, B => n80, CI => n60, CO => 
                           mult_133_n15, S => mult_133_n16);
   mult_133_U14 : ADHALFDL port map( A => n110, B => n27, CO => mult_133_n13, S
                           => m4_1_port);
   mult_133_U13 : ADHALFDL port map( A => mult_133_n13, B => n30, CO => 
                           mult_133_n12, S => m4_2_port);
   mult_133_U12 : ADHALFDL port map( A => mult_133_n12, B => n40, CO => 
                           mult_133_n11, S => m4_3_port);
   mult_133_U11 : ADFULD1 port map( A => m4_0_port, B => n50, CI => 
                           mult_133_n11, CO => mult_133_n10, S => m4_4_port);
   mult_133_U10 : ADFULD1 port map( A => m5_1_port, B => n60, CI => 
                           mult_133_n10, CO => mult_133_n9, S => m4_5_port);
   mult_133_U9 : ADFULD1 port map( A => mult_133_n26, B => m5_2_port, CI => 
                           mult_133_n9, CO => mult_133_n8, S => m4_6_port);
   mult_133_U8 : ADFULD1 port map( A => mult_133_n24, B => mult_133_n25, CI => 
                           mult_133_n8, CO => mult_133_n7, S => m4_7_port);
   mult_133_U7 : ADFULD1 port map( A => mult_133_n22, B => mult_133_n23, CI => 
                           mult_133_n7, CO => mult_133_n6, S => m4_8_port);
   mult_133_U6 : ADFULD1 port map( A => mult_133_n20, B => mult_133_n21, CI => 
                           mult_133_n6, CO => mult_133_n5, S => m4_9_port);
   mult_133_U5 : ADFULD1 port map( A => mult_133_n18, B => mult_133_n19, CI => 
                           mult_133_n5, CO => mult_133_n4, S => m4_10_port);
   mult_133_U4 : ADFULD1 port map( A => mult_133_n16, B => mult_133_n17, CI => 
                           mult_133_n4, CO => mult_133_n3, S => m4_11_port);
   mult_133_U3 : ADFULD1 port map( A => mult_133_n15, B => arx_z2_reg_6_port, 
                           CI => mult_133_n3, CO => mult_133_n2, S => 
                           m4_12_port);
   mult_133_U2 : ADFULD1 port map( A => arx_z2_reg_7_port, B => n70, CI => 
                           mult_133_n2, CO => mult_133_n1, S => m4_13_port);
   add_139_U1_8 : ADFULD1 port map( A => m1_8_port, B => p4_1_port, CI => 
                           add_139_carry_8_port, CO => add_139_carry_9_port, S 
                           => N20);
   add_139_U1_9 : ADFULD1 port map( A => m1_9_port, B => p4_2_port, CI => 
                           add_139_carry_9_port, CO => add_139_carry_10_port, S
                           => N21);
   add_139_U1_10 : ADFULD1 port map( A => m1_10_port, B => p4_3_port, CI => 
                           add_139_carry_10_port, CO => add_139_carry_11_port, 
                           S => N22);
   add_139_U1_11 : ADFULD1 port map( A => m1_11_port, B => p4_4_port, CI => 
                           add_139_carry_11_port, CO => add_139_carry_12_port, 
                           S => N23);
   add_139_U1_12 : ADFULD1 port map( A => m1_12_port, B => p4_5_port, CI => 
                           add_139_carry_12_port, CO => add_139_carry_13_port, 
                           S => N24);
   add_139_U1_13 : ADFULD1 port map( A => m1_13_port, B => p4_6_port, CI => 
                           add_139_carry_13_port, CO => add_139_carry_14_port, 
                           S => N25);
   add_139_U1_14 : ADFULD1 port map( A => m1_15, B => p4_7_port, CI => 
                           add_139_carry_14_port, CO => n_1064, S => N26);
   arx_z2_reg_reg_7_inst : DFFRPQ1 port map( D => m2_14_port, CK => clock, RB 
                           => resetn, Q => arx_z2_reg_7_port);
   arx_z1_reg_reg_7_inst : DFFRPQ1 port map( D => p1_7_port, CK => clock, RB =>
                           resetn, Q => m2_14_port);
   arx_z2_reg_reg_5_inst : DFFRPQ1 port map( D => arx_z1_reg_5_port, CK => 
                           clock, RB => resetn, Q => arx_z2_reg_5_port);
   arx_z1_reg_reg_6_inst : DFFRPQ1 port map( D => p1_6_port, CK => clock, RB =>
                           resetn, Q => arx_z1_reg_6_port);
   arx_z2_reg_reg_6_inst : DFFRPQ1 port map( D => arx_z1_reg_6_port, CK => 
                           clock, RB => resetn, Q => arx_z2_reg_6_port);
   arx_z1_reg_reg_5_inst : DFFRPQ1 port map( D => p1_5_port, CK => clock, RB =>
                           resetn, Q => arx_z1_reg_5_port);
   arx_z1_reg_reg_4_inst : DFFRPQ1 port map( D => p1_4_port, CK => clock, RB =>
                           resetn, Q => arx_z1_reg_4_port);
   arx_z2_reg_reg_4_inst : DFFRPQ1 port map( D => arx_z1_reg_4_port, CK => 
                           clock, RB => resetn, Q => arx_z2_reg_4_port);
   arx_z2_reg_reg_3_inst : DFFRPQ1 port map( D => arx_z1_reg_3_port, CK => 
                           clock, RB => resetn, Q => arx_z2_reg_3_port);
   arx_z1_reg_reg_3_inst : DFFRPQ1 port map( D => p1_3_port, CK => clock, RB =>
                           resetn, Q => arx_z1_reg_3_port);
   arx_z2_reg_reg_2_inst : DFFRPQ1 port map( D => arx_z1_reg_2_port, CK => 
                           clock, RB => resetn, Q => m5_2_port);
   arx_z1_reg_reg_2_inst : DFFRPQ1 port map( D => p1_2_port, CK => clock, RB =>
                           resetn, Q => arx_z1_reg_2_port);
   arx_z2_reg_reg_0_inst : DFFRPQ1 port map( D => m2_0_port, CK => clock, RB =>
                           resetn, Q => m4_0_port);
   arx_z2_reg_reg_1_inst : DFFRPQ1 port map( D => arx_z1_reg_1_port, CK => 
                           clock, RB => resetn, Q => m5_1_port);
   arx_z1_reg_reg_0_inst : DFFRPQ1 port map( D => p1_0_port, CK => clock, RB =>
                           resetn, Q => m2_0_port);
   arx_z1_reg_reg_1_inst : DFFRPQ1 port map( D => p1_1_port, CK => clock, RB =>
                           resetn, Q => arx_z1_reg_1_port);
   arx_p2_out_reg_reg_7_inst : DFFRPQ1 port map( D => p2_7_port, CK => clock, 
                           RB => resetn, Q => data_out(7));
   arx_p2_out_reg_reg_6_inst : DFFRPQ1 port map( D => p2_6_port, CK => clock, 
                           RB => resetn, Q => data_out(6));
   arx_p2_out_reg_reg_5_inst : DFFRPQ1 port map( D => p2_5_port, CK => clock, 
                           RB => resetn, Q => data_out(5));
   arx_p2_out_reg_reg_4_inst : DFFRPQ1 port map( D => p2_4_port, CK => clock, 
                           RB => resetn, Q => data_out(4));
   arx_p2_out_reg_reg_3_inst : DFFRPQ1 port map( D => p2_3_port, CK => clock, 
                           RB => resetn, Q => data_out(3));
   arx_p2_out_reg_reg_2_inst : DFFRPQ1 port map( D => p2_2_port, CK => clock, 
                           RB => resetn, Q => data_out(2));
   arx_p2_out_reg_reg_1_inst : DFFRPQ1 port map( D => p2_1_port, CK => clock, 
                           RB => resetn, Q => data_out(1));
   arx_p2_out_reg_reg_0_inst : DFFRPQ1 port map( D => p2_0_port, CK => clock, 
                           RB => resetn, Q => data_out(0));
   U3 : INVD1 port map( A => mult_133_n1, Z => m4_15);
   U4 : INVD1 port map( A => m4_0_port, Z => n110);
   U5 : INVD1 port map( A => m5_1_port, Z => n27);
   U6 : INVD1 port map( A => m5_2_port, Z => n30);
   U7 : INVD1 port map( A => arx_z2_reg_3_port, Z => n40);
   U8 : INVD1 port map( A => arx_z2_reg_4_port, Z => n50);
   U9 : INVD1 port map( A => arx_z2_reg_6_port, Z => n70);
   U10 : INVD1 port map( A => arx_z2_reg_5_port, Z => n60);
   U11 : INVD1 port map( A => arx_z2_reg_7_port, Z => n80);
   U12 : INVD1 port map( A => mult_134_n1, Z => m5_15);
   U13 : TIEHI port map( Z => n90);
   U14 : TIELO port map( Z => m3_0_port);
   U15 : EXOR2D1 port map( A1 => N26, A2 => add_416_C139_rn_carry_7_port, Z => 
                           p2_7_port);
   U16 : AND2D1 port map( A1 => N25, A2 => add_416_C139_rn_carry_6_port, Z => 
                           add_416_C139_rn_carry_7_port);
   U17 : EXOR2D1 port map( A1 => N25, A2 => add_416_C139_rn_carry_6_port, Z => 
                           p2_6_port);
   U18 : AND2D1 port map( A1 => N24, A2 => add_416_C139_rn_carry_5_port, Z => 
                           add_416_C139_rn_carry_6_port);
   U19 : EXOR2D1 port map( A1 => N24, A2 => add_416_C139_rn_carry_5_port, Z => 
                           p2_5_port);
   U20 : AND2D1 port map( A1 => N23, A2 => add_416_C139_rn_carry_4_port, Z => 
                           add_416_C139_rn_carry_5_port);
   U21 : EXOR2D1 port map( A1 => N23, A2 => add_416_C139_rn_carry_4_port, Z => 
                           p2_4_port);
   U22 : AND2D1 port map( A1 => N22, A2 => add_416_C139_rn_carry_3_port, Z => 
                           add_416_C139_rn_carry_4_port);
   U23 : EXOR2D1 port map( A1 => N22, A2 => add_416_C139_rn_carry_3_port, Z => 
                           p2_3_port);
   U24 : AND2D1 port map( A1 => N21, A2 => add_416_C139_rn_carry_2_port, Z => 
                           add_416_C139_rn_carry_3_port);
   U25 : EXOR2D1 port map( A1 => N21, A2 => add_416_C139_rn_carry_2_port, Z => 
                           p2_2_port);
   U26 : AND2D1 port map( A1 => N20, A2 => add_416_C139_rn_carry_1_port, Z => 
                           add_416_C139_rn_carry_2_port);
   U27 : EXOR2D1 port map( A1 => N20, A2 => add_416_C139_rn_carry_1_port, Z => 
                           p2_1_port);
   U28 : AND2D1 port map( A1 => N18, A2 => N19, Z => 
                           add_416_C139_rn_carry_1_port);
   U29 : EXOR2D1 port map( A1 => N18, A2 => N19, Z => p2_0_port);
   U30 : AND2D1 port map( A1 => m1_7_port, A2 => p4_0_port, Z => 
                           add_139_carry_8_port);
   U31 : EXOR2D1 port map( A1 => p4_0_port, A2 => m1_7_port, Z => N19);
   U32 : EXOR2D1 port map( A1 => N17, A2 => add_416_C138_rn_carry_7_port, Z => 
                           p4_7_port);
   U33 : AND2D1 port map( A1 => N16, A2 => add_416_C138_rn_carry_6_port, Z => 
                           add_416_C138_rn_carry_7_port);
   U34 : EXOR2D1 port map( A1 => N16, A2 => add_416_C138_rn_carry_6_port, Z => 
                           p4_6_port);
   U35 : AND2D1 port map( A1 => N15, A2 => add_416_C138_rn_carry_5_port, Z => 
                           add_416_C138_rn_carry_6_port);
   U36 : EXOR2D1 port map( A1 => N15, A2 => add_416_C138_rn_carry_5_port, Z => 
                           p4_5_port);
   U37 : AND2D1 port map( A1 => N14, A2 => add_416_C138_rn_carry_4_port, Z => 
                           add_416_C138_rn_carry_5_port);
   U38 : EXOR2D1 port map( A1 => N14, A2 => add_416_C138_rn_carry_4_port, Z => 
                           p4_4_port);
   U39 : AND2D1 port map( A1 => N13, A2 => add_416_C138_rn_carry_3_port, Z => 
                           add_416_C138_rn_carry_4_port);
   U40 : EXOR2D1 port map( A1 => N13, A2 => add_416_C138_rn_carry_3_port, Z => 
                           p4_3_port);
   U41 : AND2D1 port map( A1 => N12, A2 => add_416_C138_rn_carry_2_port, Z => 
                           add_416_C138_rn_carry_3_port);
   U42 : EXOR2D1 port map( A1 => N12, A2 => add_416_C138_rn_carry_2_port, Z => 
                           p4_2_port);
   U43 : AND2D1 port map( A1 => N11, A2 => add_416_C138_rn_carry_1_port, Z => 
                           add_416_C138_rn_carry_2_port);
   U44 : EXOR2D1 port map( A1 => N11, A2 => add_416_C138_rn_carry_1_port, Z => 
                           p4_1_port);
   U45 : AND2D1 port map( A1 => N9, A2 => N10, Z => 
                           add_416_C138_rn_carry_1_port);
   U46 : EXOR2D1 port map( A1 => N9, A2 => N10, Z => p4_0_port);
   U47 : NAN2D1 port map( A1 => m4_0_port, A2 => arx_z2_reg_6_port, Z => 
                           mult_133_n25);
   U48 : EXOR2D1 port map( A1 => n70, A2 => m4_0_port, Z => mult_133_n26);
   U49 : NAN2D1 port map( A1 => m4_0_port, A2 => n40, Z => mult_134_n11);
   U50 : EXOR2D1 port map( A1 => arx_z2_reg_3_port, A2 => m4_0_port, Z => 
                           m5_3_port);

end hier_rtl_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_sec_df2_std.all;

architecture hier_rtl_none_10 of sec_df2_std is

   component sec_df2
      port( clock, resetn : in std_logic;  data_in : in std_logic_vector (7 
            downto 0);  data_out : out std_logic_vector (7 downto 0));
   end component;

begin
   
   sec_df2_inst : sec_df2 port map( clock => clock, resetn => resetn, 
                           data_in(7) => data_in(7), data_in(6) => data_in(6), 
                           data_in(5) => data_in(5), data_in(4) => data_in(4), 
                           data_in(3) => data_in(3), data_in(2) => data_in(2), 
                           data_in(1) => data_in(1), data_in(0) => data_in(0), 
                           data_out(7) => data_out(7), data_out(6) => 
                           data_out(6), data_out(5) => data_out(5), data_out(4)
                           => data_out(4), data_out(3) => data_out(3), 
                           data_out(2) => data_out(2), data_out(1) => 
                           data_out(1), data_out(0) => data_out(0));

end hier_rtl_none_10;
