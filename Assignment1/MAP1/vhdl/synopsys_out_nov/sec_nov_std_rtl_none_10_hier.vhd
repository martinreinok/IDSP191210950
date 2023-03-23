
library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

package CONV_PACK_sec_nov_std is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type SIGNED is array (INTEGER range <>) of std_logic;

end CONV_PACK_sec_nov_std;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_sec_nov_std.all;

architecture hier_rtl_none_10 of sec_nov_DW_mult_tc_0 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI32D1
      port( A1, A2, A3, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22M10D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AO21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
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
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17, 
      n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n33, n34
      , n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, 
      n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n62, n63, n64
      , n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n79, n80, 
      n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n194, n195, 
      n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, 
      n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, 
      n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, 
      n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, 
      n244, n245, n246, n247 : std_logic;

begin
   
   U3 : ADFULD1 port map( A => n17, B => n16, CI => n3, CO => n2, S => 
                           product(13));
   U4 : ADFULD1 port map( A => n19, B => n18, CI => n4, CO => n3, S => 
                           product(12));
   U5 : ADFULD1 port map( A => n20, B => n23, CI => n5, CO => n4, S => 
                           product(11));
   U6 : ADFULD1 port map( A => n24, B => n27, CI => n6, CO => n5, S => 
                           product(10));
   U7 : ADFULD1 port map( A => n28, B => n33, CI => n7, CO => n6, S => 
                           product(9));
   U8 : ADFULD1 port map( A => n34, B => n39, CI => n8, CO => n7, S => 
                           product(8));
   U9 : ADFULD1 port map( A => n40, B => n45, CI => n9, CO => n8, S => 
                           product(7));
   U10 : ADFULD1 port map( A => n46, B => n49, CI => n10, CO => n9, S => 
                           product(6));
   U11 : ADFULD1 port map( A => n50, B => n53, CI => n11, CO => n10, S => 
                           product(5));
   U12 : ADFULD1 port map( A => n54, B => n55, CI => n12, CO => n11, S => 
                           product(4));
   U13 : ADFULD1 port map( A => n56, B => n59, CI => n13, CO => n12, S => 
                           product(3));
   U14 : ADFULD1 port map( A => n91, B => n84, CI => n14, CO => n13, S => 
                           product(2));
   U15 : ADHALFDL port map( A => n92, B => n60, CO => n14, S => product(1));
   U17 : ADFULD1 port map( A => n62, B => n21, CI => n69, CO => n17, S => n18);
   U18 : ADFULD1 port map( A => n194, B => n63, CI => n25, CO => n19, S => n20)
                           ;
   U20 : ADFULD1 port map( A => n29, B => n77, CI => n26, CO => n23, S => n24);
   U21 : ADFULD1 port map( A => n70, B => n31, CI => n64, CO => n25, S => n26);
   U22 : ADFULD1 port map( A => n35, B => n37, CI => n30, CO => n27, S => n28);
   U23 : ADFULD1 port map( A => n65, B => n71, CI => n198, CO => n29, S => n30)
                           ;
   U25 : ADFULD1 port map( A => n41, B => n38, CI => n36, CO => n33, S => n34);
   U26 : ADFULD1 port map( A => n85, B => n72, CI => n43, CO => n35, S => n36);
   U29 : ADFULD1 port map( A => n47, B => n44, CI => n42, CO => n39, S => n40);
   U30 : ADFULD1 port map( A => n67, B => n79, CI => n73, CO => n41, S => n42);
   U31 : ADHALFDL port map( A => n57, B => n86, CO => n43, S => n44);
   U32 : ADFULD1 port map( A => n51, B => n74, CI => n48, CO => n45, S => n46);
   U33 : ADFULD1 port map( A => n87, B => n68, CI => n80, CO => n47, S => n48);
   U34 : ADFULD1 port map( A => n75, B => n81, CI => n52, CO => n49, S => n50);
   U35 : ADHALFDL port map( A => n58, B => n88, CO => n51, S => n52);
   U36 : ADFULD1 port map( A => n89, B => n76, CI => n82, CO => n53, S => n54);
   U37 : ADHALFDL port map( A => n83, B => n90, CO => n55, S => n56);
   U145 : INVD1 port map( A => a(3), Z => n199);
   U146 : EXOR2D1 port map( A1 => a(4), A2 => n199, Z => n224);
   U147 : NAN2D1 port map( A1 => n224, A2 => n246, Z => n227);
   U148 : EXOR2D1 port map( A1 => a(2), A2 => n202, Z => n215);
   U149 : NAN2D1 port map( A1 => n215, A2 => n245, Z => n218);
   U150 : INVD1 port map( A => a(0), Z => n200);
   U151 : INVD1 port map( A => n205, Z => n197);
   U152 : INVD1 port map( A => a(5), Z => n195);
   U153 : INVD1 port map( A => a(7), Z => n201);
   U154 : INVD1 port map( A => n236, Z => n196);
   U155 : INVD1 port map( A => a(1), Z => n202);
   U156 : NAN2D1 port map( A1 => a(1), A2 => n200, Z => n208);
   U157 : INVD1 port map( A => n31, Z => n198);
   U158 : INVD1 port map( A => n21, Z => n194);
   U159 : INVD1 port map( A => b(0), Z => n203);
   U160 : EXNOR3D1 port map( A1 => n2, A2 => n16, A3 => n204, Z => product(14))
                           ;
   U161 : OAI21D1 port map( A1 => n196, A2 => n205, B => n206, Z => n204);
   U162 : NOR2D1 port map( A1 => n200, A2 => n203, Z => product(0));
   U163 : OAI22D1 port map( A1 => n207, A2 => n200, B1 => b(0), B2 => n208, Z 
                           => n92);
   U164 : OAI22D1 port map( A1 => n209, A2 => n200, B1 => n207, B2 => n208, Z 
                           => n91);
   U165 : EXOR2D1 port map( A1 => b(1), A2 => n202, Z => n207);
   U166 : OAI22D1 port map( A1 => n210, A2 => n200, B1 => n209, B2 => n208, Z 
                           => n90);
   U167 : EXOR2D1 port map( A1 => b(2), A2 => n202, Z => n209);
   U168 : OAI22D1 port map( A1 => n211, A2 => n200, B1 => n210, B2 => n208, Z 
                           => n89);
   U169 : EXOR2D1 port map( A1 => b(3), A2 => n202, Z => n210);
   U170 : OAI22D1 port map( A1 => n212, A2 => n200, B1 => n211, B2 => n208, Z 
                           => n88);
   U171 : EXOR2D1 port map( A1 => b(4), A2 => n202, Z => n211);
   U172 : OAI22D1 port map( A1 => n213, A2 => n200, B1 => n212, B2 => n208, Z 
                           => n87);
   U173 : EXOR2D1 port map( A1 => b(5), A2 => n202, Z => n212);
   U174 : OAI22D1 port map( A1 => n214, A2 => n200, B1 => n213, B2 => n208, Z 
                           => n86);
   U175 : EXOR2D1 port map( A1 => b(6), A2 => n202, Z => n213);
   U176 : AO21D1 port map( A1 => n200, A2 => n208, B => n214, Z => n85);
   U177 : EXNOR2D1 port map( A1 => b(7), A2 => a(1), Z => n214);
   U178 : NOR2D1 port map( A1 => n215, A2 => n203, Z => n84);
   U179 : OAI22D1 port map( A1 => n215, A2 => n216, B1 => n217, B2 => n218, Z 
                           => n83);
   U180 : EXOR2D1 port map( A1 => n199, A2 => b(0), Z => n217);
   U181 : OAI22D1 port map( A1 => n215, A2 => n219, B1 => n216, B2 => n218, Z 
                           => n82);
   U182 : EXOR2D1 port map( A1 => b(1), A2 => n199, Z => n216);
   U183 : OAI22D1 port map( A1 => n215, A2 => n220, B1 => n219, B2 => n218, Z 
                           => n81);
   U184 : EXOR2D1 port map( A1 => b(2), A2 => n199, Z => n219);
   U185 : OAI22D1 port map( A1 => n215, A2 => n221, B1 => n220, B2 => n218, Z 
                           => n80);
   U186 : EXOR2D1 port map( A1 => b(3), A2 => n199, Z => n220);
   U187 : OAI22D1 port map( A1 => n215, A2 => n222, B1 => n221, B2 => n218, Z 
                           => n79);
   U188 : EXOR2D1 port map( A1 => b(4), A2 => n199, Z => n221);
   U189 : AO21D1 port map( A1 => n218, A2 => n215, B => n223, Z => n77);
   U190 : NOR2D1 port map( A1 => n224, A2 => n203, Z => n76);
   U191 : OAI22D1 port map( A1 => n224, A2 => n225, B1 => n226, B2 => n227, Z 
                           => n75);
   U192 : EXOR2D1 port map( A1 => n195, A2 => b(0), Z => n226);
   U193 : OAI22D1 port map( A1 => n224, A2 => n228, B1 => n225, B2 => n227, Z 
                           => n74);
   U194 : EXOR2D1 port map( A1 => b(1), A2 => n195, Z => n225);
   U195 : OAI22D1 port map( A1 => n224, A2 => n229, B1 => n228, B2 => n227, Z 
                           => n73);
   U196 : EXOR2D1 port map( A1 => b(2), A2 => n195, Z => n228);
   U197 : OAI22D1 port map( A1 => n224, A2 => n230, B1 => n229, B2 => n227, Z 
                           => n72);
   U198 : EXOR2D1 port map( A1 => b(3), A2 => n195, Z => n229);
   U199 : OAI22D1 port map( A1 => n224, A2 => n231, B1 => n230, B2 => n227, Z 
                           => n71);
   U200 : EXOR2D1 port map( A1 => b(4), A2 => n195, Z => n230);
   U201 : OAI22D1 port map( A1 => n224, A2 => n232, B1 => n231, B2 => n227, Z 
                           => n70);
   U202 : EXOR2D1 port map( A1 => b(5), A2 => n195, Z => n231);
   U203 : AO21D1 port map( A1 => n227, A2 => n224, B => n233, Z => n69);
   U204 : NOR2D1 port map( A1 => n197, A2 => n203, Z => n68);
   U205 : OAI22D1 port map( A1 => n197, A2 => n234, B1 => n235, B2 => n236, Z 
                           => n67);
   U206 : EXOR2D1 port map( A1 => n201, A2 => b(0), Z => n235);
   U207 : OAI22D1 port map( A1 => n197, A2 => n237, B1 => n238, B2 => n236, Z 
                           => n65);
   U208 : OAI22D1 port map( A1 => n197, A2 => n239, B1 => n237, B2 => n236, Z 
                           => n64);
   U209 : EXOR2D1 port map( A1 => b(3), A2 => n201, Z => n237);
   U210 : OAI22D1 port map( A1 => n197, A2 => n240, B1 => n239, B2 => n236, Z 
                           => n63);
   U211 : EXOR2D1 port map( A1 => b(4), A2 => n201, Z => n239);
   U212 : OAI22M10D1 port map( A1 => n241, A2 => n197, B1 => n240, B2 => n236, 
                           Z => n62);
   U213 : EXOR2D1 port map( A1 => b(5), A2 => n201, Z => n240);
   U214 : OAI21D1 port map( A1 => b(0), A2 => n202, B => n208, Z => n60);
   U215 : OAI32D1 port map( A1 => n199, A2 => b(0), A3 => n215, B1 => n199, B2 
                           => n218, Z => n59);
   U216 : OAI32D1 port map( A1 => n195, A2 => b(0), A3 => n224, B1 => n195, B2 
                           => n227, Z => n58);
   U217 : OAI32D1 port map( A1 => n201, A2 => b(0), A3 => n197, B1 => n201, B2 
                           => n236, Z => n57);
   U218 : EXNOR2D1 port map( A1 => n242, A2 => n243, Z => n38);
   U219 : OR2D1 port map( A1 => n242, A2 => n243, Z => n37);
   U220 : OAI22D1 port map( A1 => n215, A2 => n244, B1 => n222, B2 => n218, Z 
                           => n243);
   U221 : EXOR2D1 port map( A1 => b(5), A2 => n199, Z => n222);
   U222 : OAI22D1 port map( A1 => n197, A2 => n238, B1 => n234, B2 => n236, Z 
                           => n242);
   U223 : EXOR2D1 port map( A1 => b(1), A2 => n201, Z => n234);
   U224 : EXOR2D1 port map( A1 => b(2), A2 => n201, Z => n238);
   U225 : OAI22D1 port map( A1 => n215, A2 => n223, B1 => n244, B2 => n218, Z 
                           => n31);
   U226 : EXOR2D1 port map( A1 => a(3), A2 => a(2), Z => n245);
   U227 : EXOR2D1 port map( A1 => b(6), A2 => n199, Z => n244);
   U228 : EXNOR2D1 port map( A1 => b(7), A2 => a(3), Z => n223);
   U229 : OAI22D1 port map( A1 => n224, A2 => n233, B1 => n232, B2 => n227, Z 
                           => n21);
   U230 : EXOR2D1 port map( A1 => a(5), A2 => a(4), Z => n246);
   U231 : EXOR2D1 port map( A1 => b(6), A2 => n195, Z => n232);
   U232 : EXNOR2D1 port map( A1 => b(7), A2 => a(5), Z => n233);
   U233 : AOI22D1 port map( A1 => n205, A2 => n206, B1 => n241, B2 => n196, Z 
                           => n16);
   U234 : NAN2D1 port map( A1 => n197, A2 => n247, Z => n236);
   U235 : EXOR2D1 port map( A1 => a(7), A2 => a(6), Z => n247);
   U236 : EXNOR2D1 port map( A1 => b(6), A2 => n201, Z => n241);
   U237 : EXOR2D1 port map( A1 => b(7), A2 => a(7), Z => n206);
   U238 : EXOR2D1 port map( A1 => a(6), A2 => a(5), Z => n205);

end hier_rtl_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_sec_nov_std.all;

architecture hier_rtl_none_10 of sec_nov_DW01_add_1 is

   component OAI211D1
      port( A1, A2, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_14_port, carry_13_port, carry_12_port, carry_11_port, 
      carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port, n1
      , n2, n3, n4, n5, n6, n7, n8, n9, n_1009 : std_logic;

begin
   
   U1_14 : ADFULD1 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           n_1009, S => SUM(14));
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

use work.CONV_PACK_sec_nov_std.all;

architecture hier_rtl_none_10 of sec_nov is

   component OAI21M20D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
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
   
   component NAN3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component DFERPQ1
      port( D, CEB, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component sec_nov_DW_mult_tc_0
      port( a, b : in std_logic_vector (7 downto 0);  product : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component sec_nov_DW01_add_1
      port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (14 downto 0);  CO : out std_logic);
   end component;
   
   component OAI22M10D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN3M1D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   signal arx_i1_reg_7_port, arx_i1_reg_6_port, arx_i1_reg_5_port, 
      arx_i1_reg_4_port, arx_i1_reg_3_port, arx_i1_reg_2_port, 
      arx_i1_reg_1_port, arx_i1_reg_0_port, arx_r1_reg_7_port, 
      arx_r1_reg_6_port, arx_r1_reg_5_port, arx_r1_reg_4_port, 
      arx_r1_reg_3_port, arx_r1_reg_2_port, arx_r1_reg_1_port, 
      arx_r1_reg_0_port, arx_r2_reg_14_port, arx_r2_reg_13_port, 
      arx_r2_reg_12_port, arx_r2_reg_11_port, arx_r2_reg_10_port, 
      arx_r2_reg_9_port, arx_r2_reg_8_port, arx_r2_reg_7_port, 
      arx_r2_reg_6_port, arx_r2_reg_5_port, arx_r2_reg_4_port, 
      arx_r2_reg_3_port, arx_r2_reg_2_port, arx_r2_reg_1_port, 
      arx_r2_reg_0_port, arx_r3_reg_14_port, arx_r3_reg_13_port, 
      arx_r3_reg_12_port, arx_r3_reg_11_port, arx_r3_reg_10_port, 
      arx_r3_reg_9_port, arx_r3_reg_8_port, arx_r3_reg_7_port, 
      arx_r3_reg_6_port, arx_r3_reg_5_port, arx_r3_reg_4_port, 
      arx_r3_reg_3_port, arx_r3_reg_2_port, arx_r3_reg_1_port, 
      arx_r3_reg_0_port, arx_r4_reg_7_port, arx_r4_reg_6_port, 
      arx_r4_reg_5_port, arx_r4_reg_4_port, arx_r4_reg_3_port, 
      arx_r4_reg_2_port, arx_r4_reg_1_port, arx_r4_reg_0_port, 
      arx_d0_reg_7_port, arx_d0_reg_6_port, arx_d0_reg_5_port, 
      arx_d0_reg_4_port, arx_d0_reg_3_port, arx_d0_reg_2_port, 
      arx_d0_reg_1_port, arx_d0_reg_0_port, arx_d1_reg_7_port, 
      arx_d1_reg_6_port, arx_d1_reg_5_port, arx_d1_reg_4_port, 
      arx_d1_reg_3_port, arx_d1_reg_2_port, arx_d1_reg_1_port, 
      arx_d1_reg_0_port, arx_d2_reg_7_port, arx_d2_reg_6_port, 
      arx_d2_reg_5_port, arx_d2_reg_4_port, arx_d2_reg_3_port, 
      arx_d2_reg_2_port, arx_d2_reg_1_port, arx_d2_reg_0_port, 
      arx_state_reg_3_port, arx_state_reg_2_port, arx_state_reg_1_port, 
      arx_state_reg_0_port, m_in_l_7_port, m_in_l_6_port, m_in_l_5_port, 
      m_in_l_4_port, m_in_l_3_port, m_in_l_2_port, m_in_l_1_port, m_in_l_0_port
      , m_in_r_7_port, m_in_r_6_port, m_in_r_5_port, m_in_r_4_port, 
      m_in_r_3_port, m_in_r_2_port, m_in_r_1_port, m_in_r_0_port, m_out_14_port
      , m_out_13_port, m_out_12_port, m_out_11_port, m_out_10_port, 
      m_out_9_port, m_out_8_port, m_out_7_port, m_out_6_port, m_out_5_port, 
      m_out_4_port, m_out_3_port, m_out_2_port, m_out_1_port, m_out_0_port, 
      a_in_l_14_port, a_in_l_13_port, a_in_l_12_port, a_in_l_11_port, 
      a_in_l_10_port, a_in_l_9_port, a_in_l_8_port, a_in_l_7_port, 
      a_in_l_6_port, a_in_l_5_port, a_in_l_4_port, a_in_l_3_port, a_in_l_2_port
      , a_in_l_1_port, a_in_l_0_port, a_in_r_14_port, a_in_r_13_port, 
      a_in_r_12_port, a_in_r_11_port, a_in_r_10_port, a_in_r_9_port, 
      a_in_r_8_port, a_in_r_7_port, a_in_r_6_port, a_in_r_5_port, a_in_r_4_port
      , a_in_r_3_port, a_in_r_2_port, a_in_r_1_port, a_in_r_0_port, 
      a_out_7_port, a_out_6_port, a_out_5_port, a_out_4_port, a_out_3_port, 
      a_out_2_port, a_out_1_port, a_out_0_port, state_3_port, state_2_port, 
      state_1_port, state_0_port, N123, N124, N125, N126, N127, N128, N129, 
      N130, N131, n7, n52, n53, n54, n55, n56, n57, n59, n60, n61, n62, n63, 
      n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78
      , n79, n80, n81, n82, n83, n84, add_416_C239_rn_carry_1_port, 
      add_416_C239_rn_carry_2_port, add_416_C239_rn_carry_3_port, 
      add_416_C239_rn_carry_4_port, add_416_C239_rn_carry_5_port, 
      add_416_C239_rn_carry_6_port, add_416_C239_rn_carry_7_port, n1, n2, n3, 
      n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20
      , n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, 
      n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49
      , n50, n51, n58, n85, n_1010, n_1011, n_1012, n_1013, n_1014, n_1015, 
      n_1016, n_1017 : std_logic;

begin
   
   U99 : OR2D1 port map( A1 => m_in_l_4_port, A2 => m_in_l_2_port, Z => 
                           m_in_l_3_port);
   U100 : NAN3M1D1 port map( A1 => m_in_l_7_port, A2 => n54, A3 => n69, Z => 
                           m_in_l_1_port);
   U101 : OAI22M10D1 port map( A1 => arx_r4_reg_2_port, A2 => n75, B1 => n76, 
                           B2 => n44, Z => a_in_r_9_port);
   U102 : OAI22M10D1 port map( A1 => arx_r4_reg_1_port, A2 => n75, B1 => n76, 
                           B2 => n45, Z => a_in_r_8_port);
   U103 : OAI22M10D1 port map( A1 => arx_r4_reg_0_port, A2 => n75, B1 => n76, 
                           B2 => n46, Z => a_in_r_7_port);
   U104 : OAI22M10D1 port map( A1 => arx_r4_reg_7_port, A2 => n75, B1 => n76, 
                           B2 => n39, Z => a_in_r_14_port);
   U105 : OAI22M10D1 port map( A1 => arx_r4_reg_6_port, A2 => n75, B1 => n76, 
                           B2 => n40, Z => a_in_r_13_port);
   U106 : OAI22M10D1 port map( A1 => arx_r4_reg_5_port, A2 => n75, B1 => n76, 
                           B2 => n41, Z => a_in_r_12_port);
   U107 : OAI22M10D1 port map( A1 => arx_r4_reg_4_port, A2 => n75, B1 => n76, 
                           B2 => n42, Z => a_in_r_11_port);
   U108 : OAI22M10D1 port map( A1 => arx_r4_reg_3_port, A2 => n75, B1 => n76, 
                           B2 => n43, Z => a_in_r_10_port);
   U109 : OAI22M10D1 port map( A1 => arx_i1_reg_2_port, A2 => n77, B1 => n78, 
                           B2 => n29, Z => a_in_l_9_port);
   U110 : OAI22M10D1 port map( A1 => arx_i1_reg_1_port, A2 => n77, B1 => n78, 
                           B2 => n30, Z => a_in_l_8_port);
   U111 : OAI22M10D1 port map( A1 => arx_i1_reg_0_port, A2 => n77, B1 => n78, 
                           B2 => n31, Z => a_in_l_7_port);
   U112 : OAI22M10D1 port map( A1 => arx_i1_reg_7_port, A2 => n77, B1 => n78, 
                           B2 => n24, Z => a_in_l_14_port);
   U113 : OAI22M10D1 port map( A1 => arx_i1_reg_6_port, A2 => n77, B1 => n78, 
                           B2 => n25, Z => a_in_l_13_port);
   U114 : OAI22M10D1 port map( A1 => arx_i1_reg_5_port, A2 => n77, B1 => n78, 
                           B2 => n26, Z => a_in_l_12_port);
   U115 : OAI22M10D1 port map( A1 => arx_i1_reg_4_port, A2 => n77, B1 => n78, 
                           B2 => n27, Z => a_in_l_11_port);
   U116 : OAI22M10D1 port map( A1 => arx_i1_reg_3_port, A2 => n77, B1 => n78, 
                           B2 => n28, Z => a_in_l_10_port);
   add_239 : sec_nov_DW01_add_1 port map( A(14) => a_in_l_14_port, A(13) => 
                           a_in_l_13_port, A(12) => a_in_l_12_port, A(11) => 
                           a_in_l_11_port, A(10) => a_in_l_10_port, A(9) => 
                           a_in_l_9_port, A(8) => a_in_l_8_port, A(7) => 
                           a_in_l_7_port, A(6) => a_in_l_6_port, A(5) => 
                           a_in_l_5_port, A(4) => a_in_l_4_port, A(3) => 
                           a_in_l_3_port, A(2) => a_in_l_2_port, A(1) => 
                           a_in_l_1_port, A(0) => a_in_l_0_port, B(14) => 
                           a_in_r_14_port, B(13) => a_in_r_13_port, B(12) => 
                           a_in_r_12_port, B(11) => a_in_r_11_port, B(10) => 
                           a_in_r_10_port, B(9) => a_in_r_9_port, B(8) => 
                           a_in_r_8_port, B(7) => a_in_r_7_port, B(6) => 
                           a_in_r_6_port, B(5) => a_in_r_5_port, B(4) => 
                           a_in_r_4_port, B(3) => a_in_r_3_port, B(2) => 
                           a_in_r_2_port, B(1) => a_in_r_1_port, B(0) => 
                           a_in_r_0_port, CI => n7, SUM(14) => N131, SUM(13) =>
                           N130, SUM(12) => N129, SUM(11) => N128, SUM(10) => 
                           N127, SUM(9) => N126, SUM(8) => N125, SUM(7) => N124
                           , SUM(6) => N123, SUM(5) => n_1010, SUM(4) => n_1011
                           , SUM(3) => n_1012, SUM(2) => n_1013, SUM(1) => 
                           n_1014, SUM(0) => n_1015, CO => n_1016);
   mult_238 : sec_nov_DW_mult_tc_0 port map( a(7) => m_in_l_7_port, a(6) => 
                           m_in_l_6_port, a(5) => m_in_l_5_port, a(4) => 
                           m_in_l_4_port, a(3) => m_in_l_3_port, a(2) => 
                           m_in_l_2_port, a(1) => m_in_l_1_port, a(0) => 
                           m_in_l_0_port, b(7) => m_in_r_7_port, b(6) => 
                           m_in_r_6_port, b(5) => m_in_r_5_port, b(4) => 
                           m_in_r_4_port, b(3) => m_in_r_3_port, b(2) => 
                           m_in_r_2_port, b(1) => m_in_r_1_port, b(0) => 
                           m_in_r_0_port, product(15) => n_1017, product(14) =>
                           m_out_14_port, product(13) => m_out_13_port, 
                           product(12) => m_out_12_port, product(11) => 
                           m_out_11_port, product(10) => m_out_10_port, 
                           product(9) => m_out_9_port, product(8) => 
                           m_out_8_port, product(7) => m_out_7_port, product(6)
                           => m_out_6_port, product(5) => m_out_5_port, 
                           product(4) => m_out_4_port, product(3) => 
                           m_out_3_port, product(2) => m_out_2_port, product(1)
                           => m_out_1_port, product(0) => m_out_0_port);
   arx_r2_reg_reg_14_inst : DFERPQ1 port map( D => m_out_14_port, CEB => n68, 
                           CK => clock, RB => resetn, Q => arx_r2_reg_14_port);
   arx_r3_reg_reg_14_inst : DFERPQ1 port map( D => m_out_14_port, CEB => n66, 
                           CK => clock, RB => resetn, Q => arx_r3_reg_14_port);
   arx_i1_reg_reg_7_inst : DFERPQ1 port map( D => data_in(7), CEB => n72, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_7_port);
   arx_r4_reg_reg_7_inst : DFERPQ1 port map( D => a_out_7_port, CEB => n61, CK 
                           => clock, RB => n4, Q => arx_r4_reg_7_port);
   arx_r2_reg_reg_13_inst : DFERPQ1 port map( D => m_out_13_port, CEB => n68, 
                           CK => clock, RB => resetn, Q => arx_r2_reg_13_port);
   arx_r3_reg_reg_13_inst : DFERPQ1 port map( D => m_out_13_port, CEB => n66, 
                           CK => clock, RB => resetn, Q => arx_r3_reg_13_port);
   arx_i1_reg_reg_6_inst : DFERPQ1 port map( D => data_in(6), CEB => n72, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_6_port);
   arx_r4_reg_reg_6_inst : DFERPQ1 port map( D => a_out_6_port, CEB => n61, CK 
                           => clock, RB => n4, Q => arx_r4_reg_6_port);
   arx_r2_reg_reg_12_inst : DFERPQ1 port map( D => m_out_12_port, CEB => n68, 
                           CK => clock, RB => resetn, Q => arx_r2_reg_12_port);
   arx_r3_reg_reg_12_inst : DFERPQ1 port map( D => m_out_12_port, CEB => n66, 
                           CK => clock, RB => resetn, Q => arx_r3_reg_12_port);
   arx_i1_reg_reg_5_inst : DFERPQ1 port map( D => data_in(5), CEB => n72, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_5_port);
   arx_r4_reg_reg_5_inst : DFERPQ1 port map( D => a_out_5_port, CEB => n61, CK 
                           => clock, RB => n4, Q => arx_r4_reg_5_port);
   arx_r2_reg_reg_11_inst : DFERPQ1 port map( D => m_out_11_port, CEB => n68, 
                           CK => clock, RB => resetn, Q => arx_r2_reg_11_port);
   arx_r3_reg_reg_11_inst : DFERPQ1 port map( D => m_out_11_port, CEB => n66, 
                           CK => clock, RB => resetn, Q => arx_r3_reg_11_port);
   arx_i1_reg_reg_4_inst : DFERPQ1 port map( D => data_in(4), CEB => n72, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_4_port);
   arx_r4_reg_reg_4_inst : DFERPQ1 port map( D => a_out_4_port, CEB => n61, CK 
                           => clock, RB => n4, Q => arx_r4_reg_4_port);
   arx_r2_reg_reg_10_inst : DFERPQ1 port map( D => m_out_10_port, CEB => n68, 
                           CK => clock, RB => resetn, Q => arx_r2_reg_10_port);
   arx_r3_reg_reg_10_inst : DFERPQ1 port map( D => m_out_10_port, CEB => n66, 
                           CK => clock, RB => resetn, Q => arx_r3_reg_10_port);
   arx_i1_reg_reg_3_inst : DFERPQ1 port map( D => data_in(3), CEB => n72, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_3_port);
   arx_r4_reg_reg_3_inst : DFERPQ1 port map( D => a_out_3_port, CEB => n61, CK 
                           => clock, RB => n5, Q => arx_r4_reg_3_port);
   arx_r2_reg_reg_9_inst : DFERPQ1 port map( D => m_out_9_port, CEB => n68, CK 
                           => clock, RB => resetn, Q => arx_r2_reg_9_port);
   arx_r3_reg_reg_9_inst : DFERPQ1 port map( D => m_out_9_port, CEB => n66, CK 
                           => clock, RB => resetn, Q => arx_r3_reg_9_port);
   arx_i1_reg_reg_2_inst : DFERPQ1 port map( D => data_in(2), CEB => n72, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_2_port);
   arx_r4_reg_reg_2_inst : DFERPQ1 port map( D => a_out_2_port, CEB => n61, CK 
                           => clock, RB => n5, Q => arx_r4_reg_2_port);
   arx_r2_reg_reg_8_inst : DFERPQ1 port map( D => m_out_8_port, CEB => n68, CK 
                           => clock, RB => resetn, Q => arx_r2_reg_8_port);
   arx_r3_reg_reg_8_inst : DFERPQ1 port map( D => m_out_8_port, CEB => n66, CK 
                           => clock, RB => resetn, Q => arx_r3_reg_8_port);
   arx_i1_reg_reg_1_inst : DFERPQ1 port map( D => data_in(1), CEB => n72, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_1_port);
   arx_r4_reg_reg_1_inst : DFERPQ1 port map( D => a_out_1_port, CEB => n61, CK 
                           => clock, RB => n5, Q => arx_r4_reg_1_port);
   arx_r2_reg_reg_7_inst : DFERPQ1 port map( D => m_out_7_port, CEB => n68, CK 
                           => clock, RB => resetn, Q => arx_r2_reg_7_port);
   arx_r3_reg_reg_7_inst : DFERPQ1 port map( D => m_out_7_port, CEB => n66, CK 
                           => clock, RB => resetn, Q => arx_r3_reg_7_port);
   arx_i1_reg_reg_0_inst : DFERPQ1 port map( D => data_in(0), CEB => n72, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_0_port);
   arx_r4_reg_reg_0_inst : DFERPQ1 port map( D => a_out_0_port, CEB => n61, CK 
                           => clock, RB => n5, Q => arx_r4_reg_0_port);
   arx_r2_reg_reg_6_inst : DFERPQ1 port map( D => m_out_6_port, CEB => n68, CK 
                           => clock, RB => resetn, Q => arx_r2_reg_6_port);
   arx_r3_reg_reg_6_inst : DFERPQ1 port map( D => m_out_6_port, CEB => n66, CK 
                           => clock, RB => resetn, Q => arx_r3_reg_6_port);
   arx_r3_reg_reg_5_inst : DFERPQ1 port map( D => m_out_5_port, CEB => n66, CK 
                           => clock, RB => resetn, Q => arx_r3_reg_5_port);
   arx_r2_reg_reg_5_inst : DFERPQ1 port map( D => m_out_5_port, CEB => n68, CK 
                           => clock, RB => resetn, Q => arx_r2_reg_5_port);
   arx_r3_reg_reg_4_inst : DFERPQ1 port map( D => m_out_4_port, CEB => n66, CK 
                           => clock, RB => resetn, Q => arx_r3_reg_4_port);
   arx_r2_reg_reg_4_inst : DFERPQ1 port map( D => m_out_4_port, CEB => n68, CK 
                           => clock, RB => resetn, Q => arx_r2_reg_4_port);
   arx_r3_reg_reg_3_inst : DFERPQ1 port map( D => m_out_3_port, CEB => n66, CK 
                           => clock, RB => n5, Q => arx_r3_reg_3_port);
   arx_r2_reg_reg_3_inst : DFERPQ1 port map( D => m_out_3_port, CEB => n68, CK 
                           => clock, RB => resetn, Q => arx_r2_reg_3_port);
   arx_r1_reg_reg_7_inst : DFERPQ1 port map( D => a_out_7_port, CEB => n60, CK 
                           => clock, RB => n4, Q => arx_r1_reg_7_port);
   arx_d1_reg_reg_7_inst : DFERPQ1 port map( D => arx_d0_reg_7_port, CEB => n1,
                           CK => clock, RB => n3, Q => arx_d1_reg_7_port);
   arx_d2_reg_reg_7_inst : DFERPQ1 port map( D => arx_d1_reg_7_port, CEB => n1,
                           CK => clock, RB => n3, Q => arx_d2_reg_7_port);
   arx_r3_reg_reg_2_inst : DFERPQ1 port map( D => m_out_2_port, CEB => n66, CK 
                           => clock, RB => n5, Q => arx_r3_reg_2_port);
   arx_r2_reg_reg_2_inst : DFERPQ1 port map( D => m_out_2_port, CEB => n68, CK 
                           => clock, RB => resetn, Q => arx_r2_reg_2_port);
   arx_r3_reg_reg_0_inst : DFERPQ1 port map( D => m_out_0_port, CEB => n66, CK 
                           => clock, RB => n5, Q => arx_r3_reg_0_port);
   arx_r1_reg_reg_6_inst : DFERPQ1 port map( D => a_out_6_port, CEB => n60, CK 
                           => clock, RB => n4, Q => arx_r1_reg_6_port);
   arx_r2_reg_reg_0_inst : DFERPQ1 port map( D => m_out_0_port, CEB => n68, CK 
                           => clock, RB => resetn, Q => arx_r2_reg_0_port);
   arx_d1_reg_reg_6_inst : DFERPQ1 port map( D => arx_d0_reg_6_port, CEB => n1,
                           CK => clock, RB => n3, Q => arx_d1_reg_6_port);
   arx_d2_reg_reg_6_inst : DFERPQ1 port map( D => arx_d1_reg_6_port, CEB => n1,
                           CK => clock, RB => n3, Q => arx_d2_reg_6_port);
   arx_r2_reg_reg_1_inst : DFERPQ1 port map( D => m_out_1_port, CEB => n68, CK 
                           => clock, RB => resetn, Q => arx_r2_reg_1_port);
   arx_r3_reg_reg_1_inst : DFERPQ1 port map( D => m_out_1_port, CEB => n66, CK 
                           => clock, RB => n5, Q => arx_r3_reg_1_port);
   arx_r1_reg_reg_5_inst : DFERPQ1 port map( D => a_out_5_port, CEB => n60, CK 
                           => clock, RB => n4, Q => arx_r1_reg_5_port);
   arx_d1_reg_reg_5_inst : DFERPQ1 port map( D => arx_d0_reg_5_port, CEB => n1,
                           CK => clock, RB => n3, Q => arx_d1_reg_5_port);
   arx_d2_reg_reg_5_inst : DFERPQ1 port map( D => arx_d1_reg_5_port, CEB => n1,
                           CK => clock, RB => n3, Q => arx_d2_reg_5_port);
   arx_r1_reg_reg_4_inst : DFERPQ1 port map( D => a_out_4_port, CEB => n60, CK 
                           => clock, RB => n5, Q => arx_r1_reg_4_port);
   arx_d1_reg_reg_4_inst : DFERPQ1 port map( D => arx_d0_reg_4_port, CEB => n1,
                           CK => clock, RB => n3, Q => arx_d1_reg_4_port);
   arx_d2_reg_reg_4_inst : DFERPQ1 port map( D => arx_d1_reg_4_port, CEB => n1,
                           CK => clock, RB => n2, Q => arx_d2_reg_4_port);
   arx_r1_reg_reg_2_inst : DFERPQ1 port map( D => a_out_2_port, CEB => n60, CK 
                           => clock, RB => n5, Q => arx_r1_reg_2_port);
   arx_d1_reg_reg_2_inst : DFERPQ1 port map( D => arx_d0_reg_2_port, CEB => n1,
                           CK => clock, RB => n3, Q => arx_d1_reg_2_port);
   arx_r1_reg_reg_3_inst : DFERPQ1 port map( D => a_out_3_port, CEB => n60, CK 
                           => clock, RB => n5, Q => arx_r1_reg_3_port);
   arx_d2_reg_reg_2_inst : DFERPQ1 port map( D => arx_d1_reg_2_port, CEB => n1,
                           CK => clock, RB => n2, Q => arx_d2_reg_2_port);
   arx_d1_reg_reg_3_inst : DFERPQ1 port map( D => arx_d0_reg_3_port, CEB => n1,
                           CK => clock, RB => n3, Q => arx_d1_reg_3_port);
   arx_d2_reg_reg_3_inst : DFERPQ1 port map( D => arx_d1_reg_3_port, CEB => n1,
                           CK => clock, RB => n2, Q => arx_d2_reg_3_port);
   arx_r1_reg_reg_1_inst : DFERPQ1 port map( D => a_out_1_port, CEB => n60, CK 
                           => clock, RB => n5, Q => arx_r1_reg_1_port);
   arx_r1_reg_reg_0_inst : DFERPQ1 port map( D => a_out_0_port, CEB => n60, CK 
                           => clock, RB => n5, Q => arx_r1_reg_0_port);
   arx_d1_reg_reg_0_inst : DFERPQ1 port map( D => arx_d0_reg_0_port, CEB => n1,
                           CK => clock, RB => n3, Q => arx_d1_reg_0_port);
   arx_d2_reg_reg_0_inst : DFERPQ1 port map( D => arx_d1_reg_0_port, CEB => n1,
                           CK => clock, RB => n2, Q => arx_d2_reg_0_port);
   arx_d1_reg_reg_1_inst : DFERPQ1 port map( D => arx_d0_reg_1_port, CEB => n1,
                           CK => clock, RB => n3, Q => arx_d1_reg_1_port);
   arx_d2_reg_reg_1_inst : DFERPQ1 port map( D => arx_d1_reg_1_port, CEB => n1,
                           CK => clock, RB => n2, Q => arx_d2_reg_1_port);
   arx_state_reg_reg_2_inst : DFFRPQ1 port map( D => state_2_port, CK => clock,
                           RB => resetn, Q => arx_state_reg_2_port);
   arx_state_reg_reg_1_inst : DFFRPQ1 port map( D => state_1_port, CK => clock,
                           RB => resetn, Q => arx_state_reg_1_port);
   arx_state_reg_reg_0_inst : DFFRPQ1 port map( D => state_0_port, CK => clock,
                           RB => resetn, Q => arx_state_reg_0_port);
   arx_state_reg_reg_3_inst : DFFRPQ1 port map( D => state_3_port, CK => clock,
                           RB => resetn, Q => arx_state_reg_3_port);
   arx_d0_reg_reg_7_inst : DFERPQ1 port map( D => a_out_7_port, CEB => n60, CK 
                           => clock, RB => n4, Q => arx_d0_reg_7_port);
   arx_o1_reg_reg_7_inst : DFERPQ1 port map( D => a_out_7_port, CEB => n1, CK 
                           => clock, RB => n2, Q => data_out(7));
   arx_o1_reg_reg_6_inst : DFERPQ1 port map( D => a_out_6_port, CEB => n1, CK 
                           => clock, RB => n2, Q => data_out(6));
   arx_o1_reg_reg_5_inst : DFERPQ1 port map( D => a_out_5_port, CEB => n1, CK 
                           => clock, RB => n2, Q => data_out(5));
   arx_o1_reg_reg_4_inst : DFERPQ1 port map( D => a_out_4_port, CEB => n1, CK 
                           => clock, RB => n2, Q => data_out(4));
   arx_o1_reg_reg_3_inst : DFERPQ1 port map( D => a_out_3_port, CEB => n1, CK 
                           => clock, RB => n2, Q => data_out(3));
   arx_o1_reg_reg_2_inst : DFERPQ1 port map( D => a_out_2_port, CEB => n1, CK 
                           => clock, RB => n2, Q => data_out(2));
   arx_o1_reg_reg_1_inst : DFERPQ1 port map( D => a_out_1_port, CEB => n1, CK 
                           => clock, RB => n2, Q => data_out(1));
   arx_o1_reg_reg_0_inst : DFERPQ1 port map( D => a_out_0_port, CEB => n1, CK 
                           => clock, RB => n2, Q => data_out(0));
   arx_d0_reg_reg_6_inst : DFERPQ1 port map( D => a_out_6_port, CEB => n60, CK 
                           => clock, RB => n4, Q => arx_d0_reg_6_port);
   arx_d0_reg_reg_5_inst : DFERPQ1 port map( D => a_out_5_port, CEB => n60, CK 
                           => clock, RB => n4, Q => arx_d0_reg_5_port);
   arx_d0_reg_reg_4_inst : DFERPQ1 port map( D => a_out_4_port, CEB => n60, CK 
                           => clock, RB => n4, Q => arx_d0_reg_4_port);
   arx_d0_reg_reg_3_inst : DFERPQ1 port map( D => a_out_3_port, CEB => n60, CK 
                           => clock, RB => n4, Q => arx_d0_reg_3_port);
   arx_d0_reg_reg_2_inst : DFERPQ1 port map( D => a_out_2_port, CEB => n60, CK 
                           => clock, RB => n4, Q => arx_d0_reg_2_port);
   arx_d0_reg_reg_1_inst : DFERPQ1 port map( D => a_out_1_port, CEB => n60, CK 
                           => clock, RB => n3, Q => arx_d0_reg_1_port);
   arx_d0_reg_reg_0_inst : DFERPQ1 port map( D => a_out_0_port, CEB => n60, CK 
                           => clock, RB => n3, Q => arx_d0_reg_0_port);
   U3 : NAN4D1 port map( A1 => n59, A2 => n54, A3 => n56, A4 => n53, Z => n1);
   U4 : INVD1 port map( A => m_in_l_5_port, Z => n18);
   U5 : INVD1 port map( A => m_in_l_2_port, Z => n22);
   U6 : NAN2D1 port map( A1 => n18, A2 => n21, Z => m_in_l_0_port);
   U7 : INVD1 port map( A => state_0_port, Z => n20);
   U8 : INVD1 port map( A => state_1_port, Z => n23);
   U9 : NAN4D1 port map( A1 => n52, A2 => n67, A3 => n55, A4 => n56, Z => 
                           m_in_l_5_port);
   U10 : AND2D1 port map( A1 => n63, A2 => n71, Z => n52);
   U11 : NAN2D1 port map( A1 => n74, A2 => n18, Z => m_in_l_4_port);
   U12 : AND3D1 port map( A1 => n55, A2 => n21, A3 => n52, Z => n76);
   U13 : AND2D1 port map( A1 => n76, A2 => n67, Z => n78);
   U14 : NAN2D1 port map( A1 => n64, A2 => n62, Z => m_in_l_2_port);
   U15 : INVD1 port map( A => m_in_l_6_port, Z => n21);
   U16 : NAN2D1 port map( A1 => n74, A2 => n22, Z => m_in_l_7_port);
   U17 : AND2D1 port map( A1 => n74, A2 => n56, Z => n77);
   U18 : AND2D1 port map( A1 => n77, A2 => n67, Z => n75);
   U19 : NAN3D1 port map( A1 => n69, A2 => n55, A3 => n70, Z => state_0_port);
   U20 : AND3D1 port map( A1 => n57, A2 => n64, A3 => n71, Z => n70);
   U21 : AND3D1 port map( A1 => n63, A2 => n20, A3 => n62, Z => n59);
   U22 : NAN3D1 port map( A1 => n62, A2 => n63, A3 => n19, Z => n60);
   U23 : INVD1 port map( A => n68, Z => n19);
   U24 : NAN2D1 port map( A1 => n65, A2 => n20, Z => n68);
   U25 : NAN3D1 port map( A1 => n67, A2 => n56, A3 => n59, Z => n66);
   U26 : NAN4D1 port map( A1 => n65, A2 => n55, A3 => n71, A4 => n23, Z => n72)
                           ;
   U27 : NAN3D1 port map( A1 => n62, A2 => n69, A3 => n73, Z => state_1_port);
   U28 : AND3D1 port map( A1 => n56, A2 => n63, A3 => n57, Z => n73);
   U29 : NAN3D1 port map( A1 => n64, A2 => n23, A3 => n65, Z => n61);
   U30 : NAN2D1 port map( A1 => n79, A2 => n82, Z => n63);
   U31 : NAN2D1 port map( A1 => n83, A2 => n82, Z => n71);
   U32 : NOR2D1 port map( A1 => n76, A2 => n85, Z => a_in_r_0_port);
   U33 : NOR2D1 port map( A1 => n76, A2 => n58, Z => a_in_r_1_port);
   U34 : NAN3D1 port map( A1 => n54, A2 => n22, A3 => n69, Z => m_in_l_6_port);
   U35 : NAN2D1 port map( A1 => n84, A2 => n79, Z => n62);
   U36 : NOR2D1 port map( A1 => n76, A2 => n47, Z => a_in_r_6_port);
   U37 : NOR2D1 port map( A1 => n78, A2 => n32, Z => a_in_l_6_port);
   U38 : NOR2D1 port map( A1 => n76, A2 => n51, Z => a_in_r_2_port);
   U39 : NOR2D1 port map( A1 => n78, A2 => n36, Z => a_in_l_2_port);
   U40 : NOR2D1 port map( A1 => n76, A2 => n50, Z => a_in_r_3_port);
   U41 : NOR2D1 port map( A1 => n78, A2 => n35, Z => a_in_l_3_port);
   U42 : NOR2D1 port map( A1 => n76, A2 => n49, Z => a_in_r_4_port);
   U43 : NOR2D1 port map( A1 => n78, A2 => n34, Z => a_in_l_4_port);
   U44 : NAN2D1 port map( A1 => n81, A2 => n80, Z => n57);
   U45 : AND2D1 port map( A1 => n53, A2 => n57, Z => n74);
   U46 : NAN2D1 port map( A1 => n81, A2 => n82, Z => n67);
   U47 : NAN2D1 port map( A1 => n84, A2 => n83, Z => n64);
   U48 : NAN2D1 port map( A1 => n79, A2 => n80, Z => n56);
   U49 : NAN2D1 port map( A1 => n83, A2 => n80, Z => n55);
   U50 : NAN2D1 port map( A1 => n84, A2 => n81, Z => n69);
   U51 : AND3D1 port map( A1 => n54, A2 => n53, A3 => n67, Z => n65);
   U52 : NAN2D1 port map( A1 => n52, A2 => n53, Z => state_3_port);
   U53 : NAN4D1 port map( A1 => n54, A2 => n55, A3 => n56, A4 => n57, Z => 
                           state_2_port);
   U54 : INVD1 port map( A => n6, Z => n3);
   U55 : INVD1 port map( A => n6, Z => n4);
   U56 : INVD1 port map( A => n6, Z => n5);
   U57 : NOR2M1D1 port map( A1 => arx_state_reg_3_port, A2 => 
                           arx_state_reg_2_port, Z => n82);
   U58 : NOR2M1D1 port map( A1 => arx_state_reg_0_port, A2 => 
                           arx_state_reg_1_port, Z => n79);
   U59 : NOR2D1 port map( A1 => n76, A2 => n48, Z => a_in_r_5_port);
   U60 : INVD1 port map( A => arx_r3_reg_5_port, Z => n48);
   U61 : INVD1 port map( A => arx_r3_reg_7_port, Z => n46);
   U62 : INVD1 port map( A => arx_r3_reg_8_port, Z => n45);
   U63 : INVD1 port map( A => arx_r3_reg_9_port, Z => n44);
   U64 : INVD1 port map( A => arx_r3_reg_10_port, Z => n43);
   U65 : INVD1 port map( A => arx_r3_reg_11_port, Z => n42);
   U66 : INVD1 port map( A => arx_r3_reg_12_port, Z => n41);
   U67 : INVD1 port map( A => arx_r3_reg_13_port, Z => n40);
   U68 : NOR2D1 port map( A1 => n78, A2 => n37, Z => a_in_l_1_port);
   U69 : INVD1 port map( A => arx_r2_reg_1_port, Z => n37);
   U70 : NOR2M1D1 port map( A1 => arx_state_reg_1_port, A2 => 
                           arx_state_reg_0_port, Z => n81);
   U71 : NOR2D1 port map( A1 => arx_state_reg_2_port, A2 => 
                           arx_state_reg_3_port, Z => n84);
   U72 : NOR2D1 port map( A1 => n78, A2 => n38, Z => a_in_l_0_port);
   U73 : INVD1 port map( A => arx_r2_reg_0_port, Z => n38);
   U74 : NOR2M1D1 port map( A1 => arx_state_reg_2_port, A2 => 
                           arx_state_reg_3_port, Z => n80);
   U75 : NAN3D1 port map( A1 => arx_state_reg_0_port, A2 => n80, A3 => 
                           arx_state_reg_1_port, Z => n53);
   U76 : NOR2D1 port map( A1 => arx_state_reg_0_port, A2 => 
                           arx_state_reg_1_port, Z => n83);
   U77 : NAN3D1 port map( A1 => arx_state_reg_1_port, A2 => 
                           arx_state_reg_0_port, A3 => n84, Z => n54);
   U78 : NOR2D1 port map( A1 => n78, A2 => n33, Z => a_in_l_5_port);
   U79 : INVD1 port map( A => arx_r2_reg_5_port, Z => n33);
   U80 : INVD1 port map( A => arx_r3_reg_1_port, Z => n58);
   U81 : INVD1 port map( A => arx_r3_reg_0_port, Z => n85);
   U82 : INVD1 port map( A => arx_r2_reg_2_port, Z => n36);
   U83 : INVD1 port map( A => arx_r3_reg_2_port, Z => n51);
   U84 : INVD1 port map( A => arx_r2_reg_3_port, Z => n35);
   U85 : INVD1 port map( A => arx_r3_reg_3_port, Z => n50);
   U86 : INVD1 port map( A => arx_r2_reg_4_port, Z => n34);
   U87 : INVD1 port map( A => arx_r3_reg_4_port, Z => n49);
   U88 : INVD1 port map( A => arx_r3_reg_6_port, Z => n47);
   U89 : INVD1 port map( A => arx_r2_reg_6_port, Z => n32);
   U90 : INVD1 port map( A => arx_r2_reg_7_port, Z => n31);
   U91 : INVD1 port map( A => arx_r2_reg_14_port, Z => n24);
   U92 : INVD1 port map( A => arx_r2_reg_8_port, Z => n30);
   U93 : INVD1 port map( A => arx_r2_reg_9_port, Z => n29);
   U94 : INVD1 port map( A => arx_r2_reg_10_port, Z => n28);
   U95 : INVD1 port map( A => arx_r2_reg_11_port, Z => n27);
   U96 : INVD1 port map( A => arx_r2_reg_12_port, Z => n26);
   U97 : INVD1 port map( A => arx_r2_reg_13_port, Z => n25);
   U98 : INVD1 port map( A => arx_r3_reg_14_port, Z => n39);
   U117 : INVD1 port map( A => n6, Z => n2);
   U118 : INVD1 port map( A => resetn, Z => n6);
   U119 : TIELO port map( Z => n7);
   U120 : EXOR2D1 port map( A1 => N131, A2 => add_416_C239_rn_carry_7_port, Z 
                           => a_out_7_port);
   U121 : AND2D1 port map( A1 => add_416_C239_rn_carry_6_port, A2 => N130, Z =>
                           add_416_C239_rn_carry_7_port);
   U122 : EXOR2D1 port map( A1 => N130, A2 => add_416_C239_rn_carry_6_port, Z 
                           => a_out_6_port);
   U123 : AND2D1 port map( A1 => add_416_C239_rn_carry_5_port, A2 => N129, Z =>
                           add_416_C239_rn_carry_6_port);
   U124 : EXOR2D1 port map( A1 => N129, A2 => add_416_C239_rn_carry_5_port, Z 
                           => a_out_5_port);
   U125 : AND2D1 port map( A1 => add_416_C239_rn_carry_4_port, A2 => N128, Z =>
                           add_416_C239_rn_carry_5_port);
   U126 : EXOR2D1 port map( A1 => N128, A2 => add_416_C239_rn_carry_4_port, Z 
                           => a_out_4_port);
   U127 : AND2D1 port map( A1 => add_416_C239_rn_carry_3_port, A2 => N127, Z =>
                           add_416_C239_rn_carry_4_port);
   U128 : EXOR2D1 port map( A1 => N127, A2 => add_416_C239_rn_carry_3_port, Z 
                           => a_out_3_port);
   U129 : AND2D1 port map( A1 => add_416_C239_rn_carry_2_port, A2 => N126, Z =>
                           add_416_C239_rn_carry_3_port);
   U130 : EXOR2D1 port map( A1 => N126, A2 => add_416_C239_rn_carry_2_port, Z 
                           => a_out_2_port);
   U131 : AND2D1 port map( A1 => add_416_C239_rn_carry_1_port, A2 => N125, Z =>
                           add_416_C239_rn_carry_2_port);
   U132 : EXOR2D1 port map( A1 => N125, A2 => add_416_C239_rn_carry_1_port, Z 
                           => a_out_1_port);
   U133 : AND2D1 port map( A1 => N124, A2 => N123, Z => 
                           add_416_C239_rn_carry_1_port);
   U134 : EXOR2D1 port map( A1 => N123, A2 => N124, Z => a_out_0_port);
   U135 : NOR2D1 port map( A1 => arx_state_reg_3_port, A2 => 
                           arx_state_reg_1_port, Z => n16);
   U136 : NOR2M1D1 port map( A1 => arx_state_reg_1_port, A2 => 
                           arx_state_reg_3_port, Z => n15);
   U137 : AOI22D1 port map( A1 => arx_d2_reg_0_port, A2 => n16, B1 => 
                           arx_d1_reg_0_port, B2 => n15, Z => n8);
   U138 : OAI21M20D1 port map( A1 => arx_r1_reg_0_port, A2 => 
                           arx_state_reg_3_port, B => n8, Z => m_in_r_0_port);
   U139 : AOI22D1 port map( A1 => arx_d2_reg_1_port, A2 => n16, B1 => 
                           arx_d1_reg_1_port, B2 => n15, Z => n9);
   U140 : OAI21M20D1 port map( A1 => arx_r1_reg_1_port, A2 => 
                           arx_state_reg_3_port, B => n9, Z => m_in_r_1_port);
   U141 : AOI22D1 port map( A1 => arx_d2_reg_2_port, A2 => n16, B1 => 
                           arx_d1_reg_2_port, B2 => n15, Z => n10);
   U142 : OAI21M20D1 port map( A1 => arx_r1_reg_2_port, A2 => 
                           arx_state_reg_3_port, B => n10, Z => m_in_r_2_port);
   U143 : AOI22D1 port map( A1 => arx_d2_reg_3_port, A2 => n16, B1 => 
                           arx_d1_reg_3_port, B2 => n15, Z => n11);
   U144 : OAI21M20D1 port map( A1 => arx_r1_reg_3_port, A2 => 
                           arx_state_reg_3_port, B => n11, Z => m_in_r_3_port);
   U145 : AOI22D1 port map( A1 => arx_d2_reg_4_port, A2 => n16, B1 => 
                           arx_d1_reg_4_port, B2 => n15, Z => n12);
   U146 : OAI21M20D1 port map( A1 => arx_r1_reg_4_port, A2 => 
                           arx_state_reg_3_port, B => n12, Z => m_in_r_4_port);
   U147 : AOI22D1 port map( A1 => arx_d2_reg_5_port, A2 => n16, B1 => 
                           arx_d1_reg_5_port, B2 => n15, Z => n13);
   U148 : OAI21M20D1 port map( A1 => arx_r1_reg_5_port, A2 => 
                           arx_state_reg_3_port, B => n13, Z => m_in_r_5_port);
   U149 : AOI22D1 port map( A1 => arx_d2_reg_6_port, A2 => n16, B1 => 
                           arx_d1_reg_6_port, B2 => n15, Z => n14);
   U150 : OAI21M20D1 port map( A1 => arx_r1_reg_6_port, A2 => 
                           arx_state_reg_3_port, B => n14, Z => m_in_r_6_port);
   U151 : AOI22D1 port map( A1 => arx_d2_reg_7_port, A2 => n16, B1 => 
                           arx_d1_reg_7_port, B2 => n15, Z => n17);
   U152 : OAI21M20D1 port map( A1 => arx_r1_reg_7_port, A2 => 
                           arx_state_reg_3_port, B => n17, Z => m_in_r_7_port);

end hier_rtl_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_sec_nov_std.all;

architecture hier_rtl_none_10 of sec_nov_std is

   component sec_nov
      port( clock, resetn : in std_logic;  data_in : in std_logic_vector (7 
            downto 0);  data_out : out std_logic_vector (7 downto 0));
   end component;

begin
   
   sec_nov_inst : sec_nov port map( clock => clock, resetn => resetn, 
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
