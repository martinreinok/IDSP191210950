
library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

package CONV_PACK_MAP1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type SIGNED is array (INTEGER range <>) of std_logic;

end CONV_PACK_MAP1;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_MAP1.all;

architecture hier_rtl_none_10 of MAP1_DW_mult_tc_1 is

   component EXOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AO21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component INVD1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component ADHALFDL
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   component ADFULD1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n16, n17, n18, 
      n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n33, n34, n35
      , n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, 
      n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n62, n63, n64, n65
      , n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n79, n80, n81, 
      n82, n83, n85, n86, n87, n88, n89, n90, n91, n92, n194, n195, n196, n197,
      n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, 
      n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, 
      n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, 
      n234, n235, n236, n237, n238, n239, n240, n241 : std_logic;

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
   U13 : ADFULD1 port map( A => n56, B => n59, CI => n194, CO => n12, S => 
                           product(3));
   U15 : ADHALFDL port map( A => n92, B => n60, CO => n14, S => product(1));
   U17 : ADFULD1 port map( A => n62, B => n21, CI => n69, CO => n17, S => n18);
   U18 : ADFULD1 port map( A => n197, B => n63, CI => n25, CO => n19, S => n20)
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
   U145 : AND2D1 port map( A1 => n14, A2 => n91, Z => n194);
   U146 : NAN2D1 port map( A1 => n241, A2 => n195, Z => n77);
   U147 : INVD1 port map( A => n224, Z => n204);
   U148 : INVD1 port map( A => n241, Z => n202);
   U149 : EXOR2D1 port map( A1 => a(4), A2 => n205, Z => n224);
   U150 : INVD1 port map( A => a(0), Z => n205);
   U151 : INVD1 port map( A => n208, Z => n201);
   U152 : INVD1 port map( A => a(4), Z => n206);
   U153 : NAN2D1 port map( A1 => n208, A2 => n209, Z => n207);
   U154 : NOR2D1 port map( A1 => n205, A2 => n202, Z => n59);
   U155 : NOR2D1 port map( A1 => n218, A2 => n202, Z => n82);
   U156 : NAN2D1 port map( A1 => a(1), A2 => n205, Z => n211);
   U157 : NOR2D1 port map( A1 => n221, A2 => n202, Z => n80);
   U158 : INVD1 port map( A => a(1), Z => n203);
   U159 : NOR2D1 port map( A1 => n224, A2 => n227, Z => n73);
   U160 : NOR2D1 port map( A1 => n201, A2 => n232, Z => n67);
   U161 : NOR2D1 port map( A1 => n222, A2 => n202, Z => n79);
   U162 : NOR2D1 port map( A1 => n201, A2 => n233, Z => n65);
   U163 : NOR2D1 port map( A1 => n224, A2 => n229, Z => n71);
   U164 : INVD1 port map( A => n31, Z => n198);
   U165 : NOR2D1 port map( A1 => n224, A2 => n231, Z => n21);
   U166 : NOR2D1 port map( A1 => n201, A2 => n199, Z => n62);
   U167 : NAN2D1 port map( A1 => n204, A2 => n196, Z => n69);
   U168 : INVD1 port map( A => n237, Z => n199);
   U169 : INVD1 port map( A => n231, Z => n196);
   U170 : NAN2D1 port map( A1 => n208, A2 => n209, Z => n16);
   U171 : NOR2D1 port map( A1 => n219, A2 => n202, Z => n83);
   U172 : NOR2D1 port map( A1 => n220, A2 => n202, Z => n81);
   U173 : NOR2D1 port map( A1 => n224, A2 => n225, Z => n75);
   U174 : NOR3D1 port map( A1 => n224, A2 => n206, A3 => b(0), Z => n58);
   U175 : NOR2D1 port map( A1 => n224, A2 => n226, Z => n74);
   U176 : NOR3D1 port map( A1 => n201, A2 => n203, A3 => b(0), Z => n57);
   U177 : NOR2D1 port map( A1 => n224, A2 => n228, Z => n72);
   U178 : INVD1 port map( A => b(0), Z => n200);
   U179 : NOR2D1 port map( A1 => n223, A2 => n202, Z => n239);
   U180 : NOR2D1 port map( A1 => n201, A2 => n234, Z => n238);
   U181 : NOR2D1 port map( A1 => n240, A2 => n202, Z => n31);
   U182 : EXOR2D1 port map( A1 => b(7), A2 => a(3), Z => n195);
   U183 : NOR2D1 port map( A1 => n201, A2 => n235, Z => n64);
   U184 : NOR2D1 port map( A1 => n224, A2 => n230, Z => n70);
   U185 : NOR2D1 port map( A1 => n201, A2 => n236, Z => n63);
   U186 : INVD1 port map( A => n21, Z => n197);
   U187 : EXOR2D1 port map( A1 => n91, A2 => n14, Z => product(2));
   U188 : EXNOR3D1 port map( A1 => n2, A2 => n16, A3 => n207, Z => product(14))
                           ;
   U189 : NOR2D1 port map( A1 => n205, A2 => n200, Z => product(0));
   U190 : OAI22D1 port map( A1 => n210, A2 => n205, B1 => b(0), B2 => n211, Z 
                           => n92);
   U191 : OAI22D1 port map( A1 => n212, A2 => n205, B1 => n210, B2 => n211, Z 
                           => n91);
   U192 : EXOR2D1 port map( A1 => b(1), A2 => n203, Z => n210);
   U193 : OAI22D1 port map( A1 => n213, A2 => n205, B1 => n212, B2 => n211, Z 
                           => n90);
   U194 : EXOR2D1 port map( A1 => b(2), A2 => n203, Z => n212);
   U195 : OAI22D1 port map( A1 => n214, A2 => n205, B1 => n213, B2 => n211, Z 
                           => n89);
   U196 : EXOR2D1 port map( A1 => b(3), A2 => n203, Z => n213);
   U197 : OAI22D1 port map( A1 => n215, A2 => n205, B1 => n214, B2 => n211, Z 
                           => n88);
   U198 : EXOR2D1 port map( A1 => b(4), A2 => n203, Z => n214);
   U199 : OAI22D1 port map( A1 => n216, A2 => n205, B1 => n215, B2 => n211, Z 
                           => n87);
   U200 : EXOR2D1 port map( A1 => b(5), A2 => n203, Z => n215);
   U201 : OAI22D1 port map( A1 => n217, A2 => n205, B1 => n216, B2 => n211, Z 
                           => n86);
   U202 : EXOR2D1 port map( A1 => b(6), A2 => n203, Z => n216);
   U203 : AO21D1 port map( A1 => n205, A2 => n211, B => n217, Z => n85);
   U204 : EXNOR2D1 port map( A1 => b(7), A2 => a(1), Z => n217);
   U205 : EXOR2D1 port map( A1 => n205, A2 => b(0), Z => n219);
   U206 : EXOR2D1 port map( A1 => b(1), A2 => n205, Z => n218);
   U207 : EXOR2D1 port map( A1 => b(2), A2 => n205, Z => n220);
   U208 : EXOR2D1 port map( A1 => b(3), A2 => n205, Z => n221);
   U209 : EXOR2D1 port map( A1 => b(4), A2 => n205, Z => n222);
   U210 : NOR2D1 port map( A1 => n224, A2 => n200, Z => n76);
   U211 : EXOR2D1 port map( A1 => b(1), A2 => n206, Z => n225);
   U212 : EXOR2D1 port map( A1 => b(2), A2 => n206, Z => n226);
   U213 : EXOR2D1 port map( A1 => b(3), A2 => n206, Z => n227);
   U214 : EXOR2D1 port map( A1 => b(4), A2 => n206, Z => n228);
   U215 : EXOR2D1 port map( A1 => b(5), A2 => n206, Z => n229);
   U216 : NOR2D1 port map( A1 => n201, A2 => n200, Z => n68);
   U217 : EXOR2D1 port map( A1 => b(3), A2 => n203, Z => n233);
   U218 : EXOR2D1 port map( A1 => b(4), A2 => n203, Z => n235);
   U219 : EXOR2D1 port map( A1 => b(5), A2 => n203, Z => n236);
   U220 : OAI21D1 port map( A1 => b(0), A2 => n203, B => n211, Z => n60);
   U221 : EXNOR2D1 port map( A1 => n238, A2 => n239, Z => n38);
   U222 : OR2D1 port map( A1 => n238, A2 => n239, Z => n37);
   U223 : EXOR2D1 port map( A1 => b(5), A2 => n205, Z => n223);
   U224 : EXOR2D1 port map( A1 => b(1), A2 => n203, Z => n232);
   U225 : EXOR2D1 port map( A1 => b(2), A2 => n203, Z => n234);
   U226 : EXOR2D1 port map( A1 => a(3), A2 => a(2), Z => n241);
   U227 : EXOR2D1 port map( A1 => b(6), A2 => n205, Z => n240);
   U228 : EXOR2D1 port map( A1 => b(6), A2 => n206, Z => n230);
   U229 : EXNOR2D1 port map( A1 => b(7), A2 => a(5), Z => n231);
   U230 : EXNOR2D1 port map( A1 => b(6), A2 => n203, Z => n237);
   U231 : EXOR2D1 port map( A1 => b(7), A2 => a(7), Z => n209);
   U232 : EXOR2D1 port map( A1 => a(6), A2 => a(5), Z => n208);

end hier_rtl_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_MAP1.all;

architecture hier_rtl_none_10 of MAP1_DW_mult_tc_0 is

   component NOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component EXNOR2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2D1
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
      n17, n18, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32
      , n33, n34, n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, 
      n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62
      , n63, n64, n65, n66, n67, n68, n69, n70, n72, n73, n74, n75, n76, n77, 
      n78, n79, n80, n81, n82, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93
      , n94, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107
      , n108, n109, n110, n111, n112, n113, n114, n115, n167, n168, n169, n170,
      n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181 : 
      std_logic;

begin
   
   U3 : ADFULD1 port map( A => n17, B => n16, CI => n3, CO => n2, S => 
                           product(13));
   U4 : ADFULD1 port map( A => n21, B => n18, CI => n4, CO => n3, S => 
                           product(12));
   U5 : ADFULD1 port map( A => n22, B => n25, CI => n5, CO => n4, S => 
                           product(11));
   U6 : ADFULD1 port map( A => n26, B => n31, CI => n6, CO => n5, S => 
                           product(10));
   U7 : ADFULD1 port map( A => n32, B => n39, CI => n7, CO => n6, S => 
                           product(9));
   U8 : ADFULD1 port map( A => n40, B => n47, CI => n8, CO => n7, S => 
                           product(8));
   U9 : ADFULD1 port map( A => n48, B => n55, CI => n9, CO => n8, S => 
                           product(7));
   U10 : ADFULD1 port map( A => n56, B => n61, CI => n10, CO => n9, S => 
                           product(6));
   U11 : ADFULD1 port map( A => n62, B => n65, CI => n11, CO => n10, S => 
                           product(5));
   U12 : ADFULD1 port map( A => n66, B => n68, CI => n12, CO => n11, S => 
                           product(4));
   U13 : ADFULD1 port map( A => n70, B => n100, CI => n13, CO => n12, S => 
                           product(3));
   U14 : ADFULD1 port map( A => n114, B => n107, CI => n14, CO => n13, S => 
                           product(2));
   U15 : ADHALFDL port map( A => n115, B => n108, CO => n14, S => product(1));
   U16 : ADFULD1 port map( A => n79, B => n168, CI => n72, CO => n15, S => n16)
                           ;
   U17 : ADFULD1 port map( A => n20, B => n73, CI => n23, CO => n17, S => n18);
   U19 : ADFULD1 port map( A => n24, B => n29, CI => n27, CO => n21, S => n22);
   U20 : ADFULD1 port map( A => n86, B => n80, CI => n74, CO => n23, S => n24);
   U21 : ADFULD1 port map( A => n33, B => n30, CI => n28, CO => n25, S => n26);
   U22 : ADFULD1 port map( A => n94, B => n81, CI => n35, CO => n27, S => n28);
   U23 : ADFULD1 port map( A => n87, B => n167, CI => n75, CO => n29, S => n30)
                           ;
   U24 : ADFULD1 port map( A => n41, B => n36, CI => n34, CO => n31, S => n32);
   U25 : ADFULD1 port map( A => n45, B => n38, CI => n43, CO => n33, S => n34);
   U26 : ADFULD1 port map( A => n82, B => n88, CI => n76, CO => n35, S => n36);
   U28 : ADFULD1 port map( A => n49, B => n44, CI => n42, CO => n39, S => n40);
   U29 : ADFULD1 port map( A => n46, B => n53, CI => n51, CO => n41, S => n42);
   U30 : ADFULD1 port map( A => n101, B => n89, CI => n77, CO => n43, S => n44)
                           ;
   U33 : ADFULD1 port map( A => n52, B => n57, CI => n50, CO => n47, S => n48);
   U34 : ADFULD1 port map( A => n59, B => n109, CI => n54, CO => n49, S => n50)
                           ;
   U35 : ADFULD1 port map( A => n84, B => n102, CI => n78, CO => n51, S => n52)
                           ;
   U36 : ADHALFDL port map( A => n96, B => n90, CO => n53, S => n54);
   U37 : ADFULD1 port map( A => n63, B => n60, CI => n58, CO => n55, S => n56);
   U38 : ADFULD1 port map( A => n97, B => n110, CI => n103, CO => n57, S => n58
                           );
   U39 : ADHALFDL port map( A => n85, B => n91, CO => n59, S => n60);
   U40 : ADFULD1 port map( A => n67, B => n111, CI => n64, CO => n61, S => n62)
                           ;
   U41 : ADFULD1 port map( A => n92, B => n98, CI => n104, CO => n63, S => n64)
                           ;
   U42 : ADFULD1 port map( A => n105, B => n112, CI => n69, CO => n65, S => n66
                           );
   U43 : ADHALFDL port map( A => n93, B => n99, CO => n67, S => n68);
   U44 : ADHALFDL port map( A => n106, B => n113, CO => n69, S => n70);
   U110 : INVD1 port map( A => a(1), Z => n176);
   U111 : INVD1 port map( A => a(6), Z => n175);
   U112 : INVD1 port map( A => a(7), Z => n178);
   U113 : INVD1 port map( A => b(3), Z => n172);
   U114 : INVD1 port map( A => b(2), Z => n173);
   U115 : INVD1 port map( A => b(0), Z => n177);
   U116 : INVD1 port map( A => b(1), Z => n174);
   U117 : INVD1 port map( A => b(4), Z => n171);
   U118 : INVD1 port map( A => b(6), Z => n169);
   U119 : INVD1 port map( A => b(5), Z => n170);
   U120 : INVD1 port map( A => n38, Z => n167);
   U121 : INVD1 port map( A => n20, Z => n168);
   U122 : EXOR3D1 port map( A1 => n2, A2 => n15, A3 => n179, Z => product(14));
   U123 : AND2D1 port map( A1 => a(7), A2 => b(7), Z => n179);
   U124 : NOR2D1 port map( A1 => n175, A2 => n177, Z => product(0));
   U125 : NOR2D1 port map( A1 => n178, A2 => n174, Z => n99);
   U126 : NOR2D1 port map( A1 => n178, A2 => n173, Z => n98);
   U127 : NOR2D1 port map( A1 => n178, A2 => n172, Z => n97);
   U128 : NOR2D1 port map( A1 => n178, A2 => n171, Z => n96);
   U129 : NAN2D1 port map( A1 => a(3), A2 => b(7), Z => n94);
   U130 : NOR2D1 port map( A1 => n177, A2 => n178, Z => n93);
   U131 : NOR2D1 port map( A1 => n174, A2 => n178, Z => n92);
   U132 : NOR2D1 port map( A1 => n173, A2 => n178, Z => n91);
   U133 : NOR2D1 port map( A1 => n172, A2 => n178, Z => n90);
   U134 : NOR2D1 port map( A1 => n171, A2 => n178, Z => n89);
   U135 : NOR2D1 port map( A1 => n178, A2 => n170, Z => n88);
   U136 : NOR2D1 port map( A1 => n178, A2 => n169, Z => n87);
   U137 : NAN2D1 port map( A1 => a(4), A2 => b(7), Z => n86);
   U138 : NOR2D1 port map( A1 => n177, A2 => n175, Z => n85);
   U139 : NOR2D1 port map( A1 => n174, A2 => n175, Z => n84);
   U140 : NOR2D1 port map( A1 => n172, A2 => n175, Z => n82);
   U141 : NOR2D1 port map( A1 => n171, A2 => n175, Z => n81);
   U142 : NOR2D1 port map( A1 => n170, A2 => n175, Z => n80);
   U143 : NAN2D1 port map( A1 => a(6), A2 => b(7), Z => n79);
   U144 : NAN2D1 port map( A1 => b(0), A2 => a(7), Z => n78);
   U145 : NAN2D1 port map( A1 => b(1), A2 => a(7), Z => n77);
   U146 : NAN2D1 port map( A1 => b(2), A2 => a(7), Z => n76);
   U147 : NAN2D1 port map( A1 => b(3), A2 => a(7), Z => n75);
   U148 : NAN2D1 port map( A1 => b(4), A2 => a(7), Z => n74);
   U149 : NAN2D1 port map( A1 => b(5), A2 => a(7), Z => n73);
   U150 : NAN2D1 port map( A1 => b(6), A2 => a(7), Z => n72);
   U151 : EXNOR2D1 port map( A1 => n180, A2 => n181, Z => n46);
   U152 : NAN2D1 port map( A1 => n181, A2 => n180, Z => n45);
   U153 : NAN2D1 port map( A1 => a(6), A2 => b(2), Z => n180);
   U154 : NAN2D1 port map( A1 => b(5), A2 => a(3), Z => n181);
   U155 : NAN2D1 port map( A1 => b(6), A2 => a(3), Z => n38);
   U156 : NAN2D1 port map( A1 => a(6), A2 => b(6), Z => n20);
   U157 : NOR2D1 port map( A1 => n175, A2 => n174, Z => n115);
   U158 : NOR2D1 port map( A1 => n175, A2 => n173, Z => n114);
   U159 : NOR2D1 port map( A1 => n175, A2 => n172, Z => n113);
   U160 : NOR2D1 port map( A1 => n175, A2 => n171, Z => n112);
   U161 : NOR2D1 port map( A1 => n175, A2 => n170, Z => n111);
   U162 : NOR2D1 port map( A1 => n175, A2 => n169, Z => n110);
   U163 : NAN2D1 port map( A1 => a(0), A2 => b(7), Z => n109);
   U164 : NOR2D1 port map( A1 => n177, A2 => n176, Z => n108);
   U165 : NOR2D1 port map( A1 => n174, A2 => n176, Z => n107);
   U166 : NOR2D1 port map( A1 => n173, A2 => n176, Z => n106);
   U167 : NOR2D1 port map( A1 => n172, A2 => n176, Z => n105);
   U168 : NOR2D1 port map( A1 => n171, A2 => n176, Z => n104);
   U169 : NOR2D1 port map( A1 => n170, A2 => n176, Z => n103);
   U170 : NOR2D1 port map( A1 => n169, A2 => n176, Z => n102);
   U171 : NAN2D1 port map( A1 => a(1), A2 => b(7), Z => n101);
   U172 : NOR2D1 port map( A1 => n177, A2 => n178, Z => n100);

end hier_rtl_none_10;

library IEEE,umcl18u250t2;

use IEEE.std_logic_1164.all;
use umcl18u250t2.umcl18u250t2_VCOMPONENTS.all;

use work.CONV_PACK_MAP1.all;

architecture hier_rtl_none_10 of MAP1_DW01_add_1 is

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

use work.CONV_PACK_MAP1.all;

architecture hier_rtl_none_10 of MAP1 is

   component AO22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
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
   
   component NOR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN4M1D1
      port( A1, A2, A3, A4 : in std_logic;  Z : out std_logic);
   end component;
   
   component OR3D1
      port( A1, A2, A3 : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component NAN2M1D1
      port( A1, A2 : in std_logic;  Z : out std_logic);
   end component;
   
   component DFERPQ1
      port( D, CEB, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFRPQ1
      port( D, CK, RB : in std_logic;  Q : out std_logic);
   end component;
   
   component MAP1_DW_mult_tc_0
      port( a, b : in std_logic_vector (7 downto 0);  product : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component MAP1_DW_mult_tc_1
      port( a, b : in std_logic_vector (7 downto 0);  product : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component MAP1_DW01_add_1
      port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (14 downto 0);  CO : out std_logic);
   end component;
   
   component OAI22M10D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22D1
      port( A1, A2, B1, B2 : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21D1
      port( A1, A2, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal arx_i1_reg_7_port, arx_i1_reg_6_port, arx_i1_reg_5_port, 
      arx_i1_reg_4_port, arx_i1_reg_3_port, arx_i1_reg_2_port, 
      arx_i1_reg_1_port, arx_i1_reg_0_port, arx_r1_reg_14_port, 
      arx_r1_reg_13_port, arx_r1_reg_12_port, arx_r1_reg_11_port, 
      arx_r1_reg_10_port, arx_r1_reg_9_port, arx_r1_reg_8_port, 
      arx_r1_reg_7_port, arx_r1_reg_6_port, arx_r1_reg_5_port, 
      arx_r1_reg_4_port, arx_r1_reg_3_port, arx_r1_reg_2_port, 
      arx_r1_reg_1_port, arx_r1_reg_0_port, arx_r2_reg_14_port, 
      arx_r2_reg_13_port, arx_r2_reg_12_port, arx_r2_reg_11_port, 
      arx_r2_reg_10_port, arx_r2_reg_9_port, arx_r2_reg_8_port, 
      arx_r2_reg_7_port, arx_r2_reg_6_port, arx_r2_reg_5_port, 
      arx_r2_reg_4_port, arx_r2_reg_3_port, arx_r2_reg_2_port, 
      arx_r2_reg_1_port, arx_r2_reg_0_port, arx_state_reg_2_port, 
      arx_state_reg_1_port, arx_state_reg_0_port, m_in_l_4, m_in_l_0, 
      m_in_r_7_port, m_in_r_6_port, m_in_r_5_port, m_in_r_4_port, m_in_r_3_port
      , m_in_r_2_port, m_in_r_1_port, m_in_r_0_port, m_out_14_port, 
      m_out_13_port, m_out_12_port, m_out_11_port, m_out_10_port, m_out_9_port,
      m_out_8_port, m_out_7_port, m_out_6_port, m_out_5_port, m_out_4_port, 
      m_out_3_port, m_out_2_port, m_out_1_port, m_out_0_port, m2_in_l_5_port, 
      m2_in_l_3_port, m2_in_r_7_port, m2_in_r_6_port, m2_in_r_5_port, 
      m2_in_r_4_port, m2_in_r_3_port, m2_in_r_2_port, m2_in_r_1_port, 
      m2_in_r_0_port, m2_out_14_port, m2_out_13_port, m2_out_12_port, 
      m2_out_11_port, m2_out_10_port, m2_out_9_port, m2_out_8_port, 
      m2_out_7_port, m2_out_6_port, m2_out_5_port, m2_out_4_port, m2_out_3_port
      , m2_out_2_port, m2_out_1_port, m2_out_0_port, a_in_l_14_port, 
      a_in_l_13_port, a_in_l_12_port, a_in_l_11_port, a_in_l_10_port, 
      a_in_l_9_port, a_in_l_8_port, a_in_l_7_port, a_in_l_6_port, a_in_l_5_port
      , a_in_l_4_port, a_in_l_3_port, a_in_l_2_port, a_in_l_1_port, 
      a_in_l_0_port, a_in_r_14_port, a_in_r_13_port, a_in_r_12_port, 
      a_in_r_11_port, a_in_r_10_port, a_in_r_9_port, a_in_r_8_port, 
      a_in_r_7_port, a_in_r_6_port, a_in_r_5_port, a_in_r_4_port, a_in_r_3_port
      , a_in_r_2_port, a_in_r_1_port, a_in_r_0_port, a_out_7_port, a_out_6_port
      , a_out_5_port, a_out_4_port, a_out_3_port, a_out_2_port, a_out_1_port, 
      a_out_0_port, state_2_port, state_1_port, state_0_port, N44, N45, N46, 
      N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N144, 
      N145, N146, N147, N148, N149, N150, N151, N152, net1366, n62, n63, n64, 
      n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n77, n78, n79, n80
      , n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, 
      n95, n96, n97, n98, n99, n100, n101, n102, n104, n105, n106, n107, n108, 
      n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, 
      n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, 
      n133, add_416_C204_rn_carry_1_port, add_416_C204_rn_carry_2_port, 
      add_416_C204_rn_carry_3_port, add_416_C204_rn_carry_4_port, 
      add_416_C204_rn_carry_5_port, add_416_C204_rn_carry_6_port, 
      add_416_C204_rn_carry_7_port, n175, n176, n177, n178, n179, n180, n181, 
      n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, 
      n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, 
      n206, n207, n208, n209, n210, n211, n212, n_1012, n_1013, n_1014, n_1015,
      n_1016, n_1017, n_1018, n_1019, n_1020 : std_logic;

begin
   
   U103 : OAI21D1 port map( A1 => n65, A2 => n212, B => n66, Z => n104);
   U104 : AOI22D1 port map( A1 => a_out_7_port, A2 => n67, B1 => m2_out_14_port
                           , B2 => n68, Z => n66);
   U105 : OAI21D1 port map( A1 => n65, A2 => n211, B => n69, Z => n105);
   U106 : AOI22D1 port map( A1 => a_out_6_port, A2 => n67, B1 => m2_out_13_port
                           , B2 => n68, Z => n69);
   U107 : OAI21D1 port map( A1 => n65, A2 => n210, B => n70, Z => n106);
   U108 : AOI22D1 port map( A1 => a_out_5_port, A2 => n67, B1 => m2_out_12_port
                           , B2 => n68, Z => n70);
   U109 : OAI21D1 port map( A1 => n65, A2 => n209, B => n71, Z => n107);
   U110 : AOI22D1 port map( A1 => a_out_4_port, A2 => n67, B1 => m2_out_11_port
                           , B2 => n68, Z => n71);
   U111 : OAI21D1 port map( A1 => n65, A2 => n208, B => n72, Z => n108);
   U112 : AOI22D1 port map( A1 => a_out_3_port, A2 => n67, B1 => m2_out_10_port
                           , B2 => n68, Z => n72);
   U113 : OAI21D1 port map( A1 => n65, A2 => n207, B => n73, Z => n109);
   U114 : AOI22D1 port map( A1 => a_out_2_port, A2 => n67, B1 => m2_out_9_port,
                           B2 => n68, Z => n73);
   U115 : OAI21D1 port map( A1 => n65, A2 => n206, B => n74, Z => n110);
   U116 : AOI22D1 port map( A1 => a_out_1_port, A2 => n67, B1 => m2_out_8_port,
                           B2 => n68, Z => n74);
   U117 : OAI21D1 port map( A1 => n65, A2 => n205, B => n75, Z => n111);
   U118 : AOI22D1 port map( A1 => a_out_0_port, A2 => n67, B1 => m2_out_7_port,
                           B2 => n68, Z => n75);
   U119 : OAI22M10D1 port map( A1 => m2_out_6_port, A2 => n176, B1 => n65, B2 
                           => n198, Z => n112);
   U120 : OAI22M10D1 port map( A1 => m2_out_5_port, A2 => n176, B1 => n65, B2 
                           => n199, Z => n113);
   U121 : OAI22M10D1 port map( A1 => m2_out_4_port, A2 => n176, B1 => n65, B2 
                           => n200, Z => n114);
   U122 : OAI22M10D1 port map( A1 => m2_out_3_port, A2 => n176, B1 => n65, B2 
                           => n201, Z => n115);
   U123 : OAI22M10D1 port map( A1 => m2_out_2_port, A2 => n176, B1 => n65, B2 
                           => n202, Z => n116);
   U124 : OAI22M10D1 port map( A1 => m2_out_1_port, A2 => n176, B1 => n65, B2 
                           => n203, Z => n117);
   U125 : OAI22M10D1 port map( A1 => m2_out_0_port, A2 => n176, B1 => n65, B2 
                           => n204, Z => n118);
   U126 : OAI21D1 port map( A1 => n80, A2 => n197, B => n81, Z => n119);
   U127 : AOI22D1 port map( A1 => m_out_0_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_0_port, Z => n81);
   U128 : OAI21D1 port map( A1 => n80, A2 => n196, B => n82, Z => n120);
   U129 : AOI22D1 port map( A1 => m_out_1_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_1_port, Z => n82);
   U130 : OAI21D1 port map( A1 => n80, A2 => n195, B => n83, Z => n121);
   U131 : AOI22D1 port map( A1 => m_out_2_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_2_port, Z => n83);
   U132 : OAI21D1 port map( A1 => n80, A2 => n194, B => n84, Z => n122);
   U133 : AOI22D1 port map( A1 => m_out_3_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_3_port, Z => n84);
   U134 : OAI21D1 port map( A1 => n80, A2 => n193, B => n85, Z => n123);
   U135 : AOI22D1 port map( A1 => m_out_4_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_4_port, Z => n85);
   U136 : OAI21D1 port map( A1 => n80, A2 => n192, B => n86, Z => n124);
   U137 : AOI22D1 port map( A1 => m_out_5_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_5_port, Z => n86);
   U138 : OAI21D1 port map( A1 => n80, A2 => n191, B => n87, Z => n125);
   U139 : AOI22D1 port map( A1 => m_out_6_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_6_port, Z => n87);
   U140 : OAI21D1 port map( A1 => n80, A2 => n190, B => n88, Z => n126);
   U141 : AOI22D1 port map( A1 => m_out_7_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_7_port, Z => n88);
   U142 : OAI21D1 port map( A1 => n80, A2 => n189, B => n89, Z => n127);
   U143 : AOI22D1 port map( A1 => m_out_8_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_8_port, Z => n89);
   U144 : OAI21D1 port map( A1 => n80, A2 => n188, B => n90, Z => n128);
   U145 : AOI22D1 port map( A1 => m_out_9_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_9_port, Z => n90);
   U146 : OAI21D1 port map( A1 => n80, A2 => n187, B => n91, Z => n129);
   U147 : AOI22D1 port map( A1 => m_out_10_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_10_port, Z => n91);
   U148 : OAI21D1 port map( A1 => n80, A2 => n186, B => n92, Z => n130);
   U149 : AOI22D1 port map( A1 => m_out_11_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_11_port, Z => n92);
   U150 : OAI21D1 port map( A1 => n80, A2 => n185, B => n93, Z => n131);
   U151 : AOI22D1 port map( A1 => m_out_12_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_12_port, Z => n93);
   U152 : OAI21D1 port map( A1 => n80, A2 => n184, B => n94, Z => n132);
   U153 : AOI22D1 port map( A1 => m_out_13_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_13_port, Z => n94);
   U154 : OAI21D1 port map( A1 => n80, A2 => n183, B => n95, Z => n133);
   U155 : AOI22D1 port map( A1 => m_out_14_port, A2 => n68, B1 => n77, B2 => 
                           m2_out_14_port, Z => n95);
   U156 : OAI22M10D1 port map( A1 => arx_i1_reg_2_port, A2 => n96, B1 => n102, 
                           B2 => n188, Z => a_in_l_9_port);
   U157 : OAI22M10D1 port map( A1 => arx_i1_reg_1_port, A2 => n96, B1 => n102, 
                           B2 => n189, Z => a_in_l_8_port);
   U158 : OAI22M10D1 port map( A1 => arx_i1_reg_0_port, A2 => n96, B1 => n102, 
                           B2 => n190, Z => a_in_l_7_port);
   U159 : OAI22M10D1 port map( A1 => arx_i1_reg_7_port, A2 => n96, B1 => n102, 
                           B2 => n183, Z => a_in_l_14_port);
   U160 : OAI22M10D1 port map( A1 => arx_i1_reg_6_port, A2 => n96, B1 => n102, 
                           B2 => n184, Z => a_in_l_13_port);
   U161 : OAI22M10D1 port map( A1 => arx_i1_reg_5_port, A2 => n96, B1 => n102, 
                           B2 => n185, Z => a_in_l_12_port);
   U162 : OAI22M10D1 port map( A1 => arx_i1_reg_4_port, A2 => n96, B1 => n102, 
                           B2 => n186, Z => a_in_l_11_port);
   U163 : OAI22M10D1 port map( A1 => arx_i1_reg_3_port, A2 => n96, B1 => n102, 
                           B2 => n187, Z => a_in_l_10_port);
   add_204 : MAP1_DW01_add_1 port map( A(14) => a_in_l_14_port, A(13) => 
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
                           a_in_r_0_port, CI => net1366, SUM(14) => N152, 
                           SUM(13) => N151, SUM(12) => N150, SUM(11) => N149, 
                           SUM(10) => N148, SUM(9) => N147, SUM(8) => N146, 
                           SUM(7) => N145, SUM(6) => N144, SUM(5) => n_1012, 
                           SUM(4) => n_1013, SUM(3) => n_1014, SUM(2) => n_1015
                           , SUM(1) => n_1016, SUM(0) => n_1017, CO => n_1018);
   mult_203 : MAP1_DW_mult_tc_1 port map( a(7) => m_in_l_0, a(6) => m_in_l_0, 
                           a(5) => m2_in_l_5_port, a(4) => m2_in_l_5_port, a(3)
                           => m2_in_l_3_port, a(2) => m_in_l_0, a(1) => 
                           m_in_l_0, a(0) => m2_in_l_3_port, b(7) => 
                           m2_in_r_7_port, b(6) => m2_in_r_6_port, b(5) => 
                           m2_in_r_5_port, b(4) => m2_in_r_4_port, b(3) => 
                           m2_in_r_3_port, b(2) => m2_in_r_2_port, b(1) => 
                           m2_in_r_1_port, b(0) => m2_in_r_0_port, product(15) 
                           => n_1019, product(14) => m2_out_14_port, 
                           product(13) => m2_out_13_port, product(12) => 
                           m2_out_12_port, product(11) => m2_out_11_port, 
                           product(10) => m2_out_10_port, product(9) => 
                           m2_out_9_port, product(8) => m2_out_8_port, 
                           product(7) => m2_out_7_port, product(6) => 
                           m2_out_6_port, product(5) => m2_out_5_port, 
                           product(4) => m2_out_4_port, product(3) => 
                           m2_out_3_port, product(2) => m2_out_2_port, 
                           product(1) => m2_out_1_port, product(0) => 
                           m2_out_0_port);
   mult_202 : MAP1_DW_mult_tc_0 port map( a(7) => m_in_l_4, a(6) => m_in_l_0, 
                           a(5) => net1366, a(4) => m_in_l_4, a(3) => m_in_l_4,
                           a(2) => net1366, a(1) => n178, a(0) => m_in_l_0, 
                           b(7) => m_in_r_7_port, b(6) => m_in_r_6_port, b(5) 
                           => m_in_r_5_port, b(4) => m_in_r_4_port, b(3) => 
                           m_in_r_3_port, b(2) => m_in_r_2_port, b(1) => 
                           m_in_r_1_port, b(0) => m_in_r_0_port, product(15) =>
                           n_1020, product(14) => m_out_14_port, product(13) =>
                           m_out_13_port, product(12) => m_out_12_port, 
                           product(11) => m_out_11_port, product(10) => 
                           m_out_10_port, product(9) => m_out_9_port, 
                           product(8) => m_out_8_port, product(7) => 
                           m_out_7_port, product(6) => m_out_6_port, product(5)
                           => m_out_5_port, product(4) => m_out_4_port, 
                           product(3) => m_out_3_port, product(2) => 
                           m_out_2_port, product(1) => m_out_1_port, product(0)
                           => m_out_0_port);
   arx_r2_reg_reg_14_inst : DFFRPQ1 port map( D => n104, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_14_port);
   arx_r1_reg_reg_14_inst : DFFRPQ1 port map( D => n133, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_14_port);
   arx_i1_reg_reg_7_inst : DFERPQ1 port map( D => data_in(7), CEB => n97, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_7_port);
   arx_r2_reg_reg_13_inst : DFFRPQ1 port map( D => n105, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_13_port);
   arx_r1_reg_reg_13_inst : DFFRPQ1 port map( D => n132, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_13_port);
   arx_i1_reg_reg_6_inst : DFERPQ1 port map( D => data_in(6), CEB => n97, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_6_port);
   arx_r2_reg_reg_12_inst : DFFRPQ1 port map( D => n106, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_12_port);
   arx_r1_reg_reg_12_inst : DFFRPQ1 port map( D => n131, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_12_port);
   arx_i1_reg_reg_5_inst : DFERPQ1 port map( D => data_in(5), CEB => n97, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_5_port);
   arx_r2_reg_reg_11_inst : DFFRPQ1 port map( D => n107, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_11_port);
   arx_r1_reg_reg_11_inst : DFFRPQ1 port map( D => n130, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_11_port);
   arx_i1_reg_reg_4_inst : DFERPQ1 port map( D => data_in(4), CEB => n97, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_4_port);
   arx_r2_reg_reg_10_inst : DFFRPQ1 port map( D => n108, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_10_port);
   arx_r1_reg_reg_10_inst : DFFRPQ1 port map( D => n129, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_10_port);
   arx_i1_reg_reg_3_inst : DFERPQ1 port map( D => data_in(3), CEB => n97, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_3_port);
   arx_r2_reg_reg_9_inst : DFFRPQ1 port map( D => n109, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_9_port);
   arx_r1_reg_reg_9_inst : DFFRPQ1 port map( D => n128, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_9_port);
   arx_i1_reg_reg_2_inst : DFERPQ1 port map( D => data_in(2), CEB => n97, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_2_port);
   arx_r2_reg_reg_8_inst : DFFRPQ1 port map( D => n110, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_8_port);
   arx_r1_reg_reg_8_inst : DFFRPQ1 port map( D => n127, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_8_port);
   arx_i1_reg_reg_1_inst : DFERPQ1 port map( D => data_in(1), CEB => n97, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_1_port);
   arx_r2_reg_reg_7_inst : DFFRPQ1 port map( D => n111, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_7_port);
   arx_r1_reg_reg_7_inst : DFFRPQ1 port map( D => n126, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_7_port);
   arx_i1_reg_reg_0_inst : DFERPQ1 port map( D => data_in(0), CEB => n97, CK =>
                           clock, RB => resetn, Q => arx_i1_reg_0_port);
   arx_r1_reg_reg_6_inst : DFFRPQ1 port map( D => n125, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_6_port);
   arx_r2_reg_reg_6_inst : DFFRPQ1 port map( D => n112, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_6_port);
   arx_r2_reg_reg_5_inst : DFFRPQ1 port map( D => n113, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_5_port);
   arx_r1_reg_reg_5_inst : DFFRPQ1 port map( D => n124, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_5_port);
   arx_r2_reg_reg_4_inst : DFFRPQ1 port map( D => n114, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_4_port);
   arx_r1_reg_reg_4_inst : DFFRPQ1 port map( D => n123, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_4_port);
   arx_r2_reg_reg_3_inst : DFFRPQ1 port map( D => n115, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_3_port);
   arx_r1_reg_reg_3_inst : DFFRPQ1 port map( D => n122, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_3_port);
   arx_d1_reg_reg_14_inst : DFERPQ1 port map( D => a_out_7_port, CEB => n64, CK
                           => clock, RB => resetn, Q => N51);
   arx_r2_reg_reg_2_inst : DFFRPQ1 port map( D => n116, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_2_port);
   arx_r1_reg_reg_2_inst : DFFRPQ1 port map( D => n121, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_2_port);
   arx_d2_reg_reg_14_inst : DFERPQ1 port map( D => N51, CEB => n64, CK => clock
                           , RB => resetn, Q => N59);
   arx_r2_reg_reg_0_inst : DFFRPQ1 port map( D => n118, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_0_port);
   arx_r1_reg_reg_0_inst : DFFRPQ1 port map( D => n119, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_0_port);
   arx_d1_reg_reg_13_inst : DFERPQ1 port map( D => a_out_6_port, CEB => n64, CK
                           => clock, RB => resetn, Q => N50);
   arx_r1_reg_reg_1_inst : DFFRPQ1 port map( D => n120, CK => clock, RB => 
                           resetn, Q => arx_r1_reg_1_port);
   arx_r2_reg_reg_1_inst : DFFRPQ1 port map( D => n117, CK => clock, RB => 
                           resetn, Q => arx_r2_reg_1_port);
   arx_d1_reg_reg_12_inst : DFERPQ1 port map( D => a_out_5_port, CEB => n64, CK
                           => clock, RB => resetn, Q => N49);
   arx_d2_reg_reg_13_inst : DFERPQ1 port map( D => N50, CEB => n64, CK => clock
                           , RB => resetn, Q => N58);
   arx_d1_reg_reg_11_inst : DFERPQ1 port map( D => a_out_4_port, CEB => n64, CK
                           => clock, RB => resetn, Q => N48);
   arx_d2_reg_reg_12_inst : DFERPQ1 port map( D => N49, CEB => n64, CK => clock
                           , RB => resetn, Q => N57);
   arx_d1_reg_reg_9_inst : DFERPQ1 port map( D => a_out_2_port, CEB => n64, CK 
                           => clock, RB => resetn, Q => N46);
   arx_d1_reg_reg_8_inst : DFERPQ1 port map( D => a_out_1_port, CEB => n64, CK 
                           => clock, RB => resetn, Q => N45);
   arx_d1_reg_reg_10_inst : DFERPQ1 port map( D => a_out_3_port, CEB => n64, CK
                           => clock, RB => resetn, Q => N47);
   arx_d1_reg_reg_7_inst : DFERPQ1 port map( D => a_out_0_port, CEB => n64, CK 
                           => clock, RB => resetn, Q => N44);
   arx_d2_reg_reg_11_inst : DFERPQ1 port map( D => N48, CEB => n64, CK => clock
                           , RB => resetn, Q => N56);
   arx_d2_reg_reg_9_inst : DFERPQ1 port map( D => N46, CEB => n64, CK => clock,
                           RB => resetn, Q => N54);
   arx_d2_reg_reg_8_inst : DFERPQ1 port map( D => N45, CEB => n64, CK => clock,
                           RB => resetn, Q => N53);
   arx_d2_reg_reg_10_inst : DFERPQ1 port map( D => N47, CEB => n64, CK => clock
                           , RB => resetn, Q => N55);
   arx_d2_reg_reg_7_inst : DFERPQ1 port map( D => N44, CEB => n64, CK => clock,
                           RB => resetn, Q => N52);
   arx_state_reg_reg_0_inst : DFFRPQ1 port map( D => state_0_port, CK => clock,
                           RB => resetn, Q => arx_state_reg_0_port);
   arx_state_reg_reg_1_inst : DFFRPQ1 port map( D => state_1_port, CK => clock,
                           RB => resetn, Q => arx_state_reg_1_port);
   arx_state_reg_reg_2_inst : DFFRPQ1 port map( D => state_2_port, CK => clock,
                           RB => resetn, Q => arx_state_reg_2_port);
   arx_o1_reg_reg_7_inst : DFERPQ1 port map( D => a_out_7_port, CEB => n175, CK
                           => clock, RB => resetn, Q => data_out(7));
   arx_o1_reg_reg_0_inst : DFERPQ1 port map( D => a_out_0_port, CEB => n175, CK
                           => clock, RB => resetn, Q => data_out(0));
   arx_o1_reg_reg_1_inst : DFERPQ1 port map( D => a_out_1_port, CEB => n175, CK
                           => clock, RB => resetn, Q => data_out(1));
   arx_o1_reg_reg_2_inst : DFERPQ1 port map( D => a_out_2_port, CEB => n175, CK
                           => clock, RB => resetn, Q => data_out(2));
   arx_o1_reg_reg_3_inst : DFERPQ1 port map( D => a_out_3_port, CEB => n175, CK
                           => clock, RB => resetn, Q => data_out(3));
   arx_o1_reg_reg_4_inst : DFERPQ1 port map( D => a_out_4_port, CEB => n175, CK
                           => clock, RB => resetn, Q => data_out(4));
   arx_o1_reg_reg_5_inst : DFERPQ1 port map( D => a_out_5_port, CEB => n175, CK
                           => clock, RB => resetn, Q => data_out(5));
   arx_o1_reg_reg_6_inst : DFERPQ1 port map( D => a_out_6_port, CEB => n175, CK
                           => clock, RB => resetn, Q => data_out(6));
   U205 : INVD1 port map( A => n99, Z => n178);
   U206 : NOR2D1 port map( A1 => m_in_l_0, A2 => m_in_l_4, Z => n99);
   U207 : NAN2D1 port map( A1 => n98, A2 => n99, Z => m2_in_l_3_port);
   U208 : NAN2M1D1 port map( A1 => m_in_l_4, A2 => n98, Z => m2_in_l_5_port);
   U209 : NAN2M1D1 port map( A1 => n67, A2 => n78, Z => state_0_port);
   U210 : INVD1 port map( A => n68, Z => n176);
   U211 : NAN2D1 port map( A1 => n63, A2 => n96, Z => m_in_l_4);
   U212 : AND2D1 port map( A1 => n100, A2 => n179, Z => n98);
   U213 : INVD1 port map( A => n77, Z => n179);
   U214 : NAN2D1 port map( A1 => n62, A2 => n78, Z => m_in_l_0);
   U215 : AND2D1 port map( A1 => n102, A2 => n96, Z => n101);
   U216 : NOR2M1D1 port map( A1 => n79, A2 => n67, Z => n102);
   U217 : NAN2D1 port map( A1 => n63, A2 => n100, Z => n67);
   U218 : NOR2D1 port map( A1 => n101, A2 => n199, Z => a_in_r_5_port);
   U219 : NOR2D1 port map( A1 => n102, A2 => n191, Z => a_in_l_6_port);
   U220 : NOR2D1 port map( A1 => n101, A2 => n198, Z => a_in_r_6_port);
   U221 : NOR2D1 port map( A1 => n102, A2 => n195, Z => a_in_l_2_port);
   U222 : NOR2D1 port map( A1 => n101, A2 => n202, Z => a_in_r_2_port);
   U223 : NOR2D1 port map( A1 => n102, A2 => n194, Z => a_in_l_3_port);
   U224 : NOR2D1 port map( A1 => n101, A2 => n201, Z => a_in_r_3_port);
   U225 : NOR2D1 port map( A1 => n102, A2 => n193, Z => a_in_l_4_port);
   U226 : NOR2D1 port map( A1 => n101, A2 => n200, Z => a_in_r_4_port);
   U227 : NOR2D1 port map( A1 => n102, A2 => n197, Z => a_in_l_0_port);
   U228 : NOR2D1 port map( A1 => n102, A2 => n196, Z => a_in_l_1_port);
   U229 : NOR2D1 port map( A1 => n101, A2 => n203, Z => a_in_r_1_port);
   U230 : NAN3D1 port map( A1 => n181, A2 => n182, A3 => n180, Z => n78);
   U231 : NOR2D1 port map( A1 => n101, A2 => n204, Z => a_in_r_0_port);
   U232 : NOR2D1 port map( A1 => n102, A2 => n192, Z => a_in_l_5_port);
   U233 : NOR2D1 port map( A1 => n101, A2 => n212, Z => a_in_r_14_port);
   U234 : NOR2M1D1 port map( A1 => n79, A2 => state_0_port, Z => n80);
   U235 : NAN3D1 port map( A1 => n62, A2 => n179, A3 => n80, Z => n64);
   U236 : NAN2D1 port map( A1 => n62, A2 => n96, Z => n68);
   U237 : OR3D1 port map( A1 => n77, A2 => state_0_port, A3 => n68, Z => n175);
   U238 : NAN4M1D1 port map( A1 => state_2_port, A2 => n79, A3 => n63, A4 => 
                           n62, Z => n97);
   U239 : NAN2D1 port map( A1 => n98, A2 => n96, Z => state_2_port);
   U240 : AND3D1 port map( A1 => n179, A2 => n78, A3 => n79, Z => n65);
   U241 : NAN3D1 port map( A1 => n62, A2 => n179, A3 => n63, Z => state_1_port)
                           ;
   U242 : NAN3D1 port map( A1 => arx_state_reg_0_port, A2 => n182, A3 => 
                           arx_state_reg_1_port, Z => n96);
   U243 : INVD1 port map( A => arx_state_reg_2_port, Z => n182);
   U244 : NOR3D1 port map( A1 => n180, A2 => arx_state_reg_1_port, A3 => n182, 
                           Z => n77);
   U245 : NAN3D1 port map( A1 => n181, A2 => n182, A3 => arx_state_reg_0_port, 
                           Z => n62);
   U246 : INVD1 port map( A => arx_state_reg_1_port, Z => n181);
   U247 : NAN3D1 port map( A1 => n180, A2 => n182, A3 => arx_state_reg_1_port, 
                           Z => n63);
   U248 : NOR2D1 port map( A1 => n101, A2 => n205, Z => a_in_r_7_port);
   U249 : NOR2D1 port map( A1 => n101, A2 => n206, Z => a_in_r_8_port);
   U250 : NOR2D1 port map( A1 => n101, A2 => n207, Z => a_in_r_9_port);
   U251 : NOR2D1 port map( A1 => n101, A2 => n208, Z => a_in_r_10_port);
   U252 : NOR2D1 port map( A1 => n101, A2 => n209, Z => a_in_r_11_port);
   U253 : NOR2D1 port map( A1 => n101, A2 => n210, Z => a_in_r_12_port);
   U254 : NOR2D1 port map( A1 => n101, A2 => n211, Z => a_in_r_13_port);
   U255 : INVD1 port map( A => arx_state_reg_0_port, Z => n180);
   U256 : NAN3D1 port map( A1 => n180, A2 => n181, A3 => arx_state_reg_2_port, 
                           Z => n100);
   U257 : NAN3D1 port map( A1 => arx_state_reg_1_port, A2 => n180, A3 => 
                           arx_state_reg_2_port, Z => n79);
   U258 : AND2D1 port map( A1 => N47, A2 => n178, Z => m_in_r_3_port);
   U259 : AND2D1 port map( A1 => N46, A2 => n178, Z => m_in_r_2_port);
   U260 : AND2D1 port map( A1 => N44, A2 => n178, Z => m_in_r_0_port);
   U261 : AND2D1 port map( A1 => N45, A2 => n178, Z => m_in_r_1_port);
   U262 : AND2D1 port map( A1 => N48, A2 => n178, Z => m_in_r_4_port);
   U263 : AND2D1 port map( A1 => N50, A2 => n178, Z => m_in_r_6_port);
   U264 : AND2D1 port map( A1 => N49, A2 => n178, Z => m_in_r_5_port);
   U265 : AND2D1 port map( A1 => N51, A2 => n178, Z => m_in_r_7_port);
   U266 : INVD1 port map( A => arx_r2_reg_1_port, Z => n203);
   U267 : INVD1 port map( A => arx_r1_reg_1_port, Z => n196);
   U268 : INVD1 port map( A => arx_r1_reg_0_port, Z => n197);
   U269 : INVD1 port map( A => arx_r2_reg_0_port, Z => n204);
   U270 : INVD1 port map( A => arx_r1_reg_2_port, Z => n195);
   U271 : INVD1 port map( A => arx_r2_reg_2_port, Z => n202);
   U272 : INVD1 port map( A => arx_r1_reg_3_port, Z => n194);
   U273 : INVD1 port map( A => arx_r2_reg_3_port, Z => n201);
   U274 : INVD1 port map( A => arx_r1_reg_4_port, Z => n193);
   U275 : INVD1 port map( A => arx_r2_reg_4_port, Z => n200);
   U276 : INVD1 port map( A => arx_r1_reg_5_port, Z => n192);
   U277 : INVD1 port map( A => arx_r2_reg_5_port, Z => n199);
   U278 : INVD1 port map( A => arx_r2_reg_6_port, Z => n198);
   U279 : INVD1 port map( A => arx_r1_reg_6_port, Z => n191);
   U280 : INVD1 port map( A => arx_r1_reg_7_port, Z => n190);
   U281 : INVD1 port map( A => arx_r2_reg_7_port, Z => n205);
   U282 : INVD1 port map( A => arx_r1_reg_8_port, Z => n189);
   U283 : INVD1 port map( A => arx_r2_reg_8_port, Z => n206);
   U284 : INVD1 port map( A => arx_r1_reg_9_port, Z => n188);
   U285 : INVD1 port map( A => arx_r2_reg_9_port, Z => n207);
   U286 : INVD1 port map( A => arx_r1_reg_10_port, Z => n187);
   U287 : INVD1 port map( A => arx_r2_reg_10_port, Z => n208);
   U288 : INVD1 port map( A => arx_r1_reg_11_port, Z => n186);
   U289 : INVD1 port map( A => arx_r2_reg_11_port, Z => n209);
   U290 : INVD1 port map( A => arx_r1_reg_12_port, Z => n185);
   U291 : INVD1 port map( A => arx_r2_reg_12_port, Z => n210);
   U292 : INVD1 port map( A => arx_r1_reg_13_port, Z => n184);
   U293 : INVD1 port map( A => arx_r2_reg_13_port, Z => n211);
   U294 : INVD1 port map( A => arx_r1_reg_14_port, Z => n183);
   U295 : INVD1 port map( A => arx_r2_reg_14_port, Z => n212);
   U296 : TIELO port map( Z => net1366);
   U297 : EXOR2D1 port map( A1 => N152, A2 => add_416_C204_rn_carry_7_port, Z 
                           => a_out_7_port);
   U298 : AND2D1 port map( A1 => add_416_C204_rn_carry_6_port, A2 => N151, Z =>
                           add_416_C204_rn_carry_7_port);
   U299 : EXOR2D1 port map( A1 => N151, A2 => add_416_C204_rn_carry_6_port, Z 
                           => a_out_6_port);
   U300 : AND2D1 port map( A1 => add_416_C204_rn_carry_5_port, A2 => N150, Z =>
                           add_416_C204_rn_carry_6_port);
   U301 : EXOR2D1 port map( A1 => N150, A2 => add_416_C204_rn_carry_5_port, Z 
                           => a_out_5_port);
   U302 : AND2D1 port map( A1 => add_416_C204_rn_carry_4_port, A2 => N149, Z =>
                           add_416_C204_rn_carry_5_port);
   U303 : EXOR2D1 port map( A1 => N149, A2 => add_416_C204_rn_carry_4_port, Z 
                           => a_out_4_port);
   U304 : AND2D1 port map( A1 => add_416_C204_rn_carry_3_port, A2 => N148, Z =>
                           add_416_C204_rn_carry_4_port);
   U305 : EXOR2D1 port map( A1 => N148, A2 => add_416_C204_rn_carry_3_port, Z 
                           => a_out_3_port);
   U306 : AND2D1 port map( A1 => add_416_C204_rn_carry_2_port, A2 => N147, Z =>
                           add_416_C204_rn_carry_3_port);
   U307 : EXOR2D1 port map( A1 => N147, A2 => add_416_C204_rn_carry_2_port, Z 
                           => a_out_2_port);
   U308 : AND2D1 port map( A1 => add_416_C204_rn_carry_1_port, A2 => N146, Z =>
                           add_416_C204_rn_carry_2_port);
   U309 : EXOR2D1 port map( A1 => N146, A2 => add_416_C204_rn_carry_1_port, Z 
                           => a_out_1_port);
   U310 : AND2D1 port map( A1 => N145, A2 => N144, Z => 
                           add_416_C204_rn_carry_1_port);
   U311 : EXOR2D1 port map( A1 => N144, A2 => N145, Z => a_out_0_port);
   U312 : NOR2D1 port map( A1 => arx_state_reg_1_port, A2 => n182, Z => n177);
   U313 : AO22D1 port map( A1 => N52, A2 => n182, B1 => N44, B2 => n177, Z => 
                           m2_in_r_0_port);
   U314 : AO22D1 port map( A1 => N53, A2 => n182, B1 => N45, B2 => n177, Z => 
                           m2_in_r_1_port);
   U315 : AO22D1 port map( A1 => N54, A2 => n182, B1 => N46, B2 => n177, Z => 
                           m2_in_r_2_port);
   U316 : AO22D1 port map( A1 => N55, A2 => n182, B1 => N47, B2 => n177, Z => 
                           m2_in_r_3_port);
   U317 : AO22D1 port map( A1 => N56, A2 => n182, B1 => N48, B2 => n177, Z => 
                           m2_in_r_4_port);
   U318 : AO22D1 port map( A1 => N57, A2 => n182, B1 => N49, B2 => n177, Z => 
                           m2_in_r_5_port);
   U319 : AO22D1 port map( A1 => N58, A2 => n182, B1 => N50, B2 => n177, Z => 
                           m2_in_r_6_port);
   U320 : AO22D1 port map( A1 => N59, A2 => n182, B1 => N51, B2 => n177, Z => 
                           m2_in_r_7_port);

end hier_rtl_none_10;
