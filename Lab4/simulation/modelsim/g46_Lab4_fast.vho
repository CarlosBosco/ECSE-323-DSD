-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/25/2016 14:51:06"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g46_VGA_Test_Pattern IS
    PORT (
	clock : IN std_logic;
	rst : IN std_logic;
	R : OUT std_logic_vector(3 DOWNTO 0);
	G : OUT std_logic_vector(3 DOWNTO 0);
	B : OUT std_logic_vector(3 DOWNTO 0);
	VSYNC : OUT std_logic;
	HSYNC : OUT std_logic;
	life : IN std_logic_vector(2 DOWNTO 0);
	level : IN std_logic_vector(2 DOWNTO 0)
	);
END g46_VGA_Test_Pattern;

-- Design Ports Information
-- R[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[2]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- G[3]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VSYNC	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HSYNC	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- level[0]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- level[1]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- level[2]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- life[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- life[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- life[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g46_VGA_Test_Pattern IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VSYNC : std_logic;
SIGNAL ww_HSYNC : std_logic;
SIGNAL ww_life : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_level : std_logic_vector(2 DOWNTO 0);
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \rom|ROM_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \vga1|Add0~0_combout\ : std_logic;
SIGNAL \vga1|Add0~2_combout\ : std_logic;
SIGNAL \vga1|Add0~4_combout\ : std_logic;
SIGNAL \vga1|Add0~6_combout\ : std_logic;
SIGNAL \vga1|Add0~12_combout\ : std_logic;
SIGNAL \score_sig[1]~16_combout\ : std_logic;
SIGNAL \score_sig[1]~17\ : std_logic;
SIGNAL \score_sig[2]~18_combout\ : std_logic;
SIGNAL \score_sig[2]~19\ : std_logic;
SIGNAL \score_sig[3]~20_combout\ : std_logic;
SIGNAL \score_sig[3]~21\ : std_logic;
SIGNAL \score_sig[4]~22_combout\ : std_logic;
SIGNAL \score_sig[4]~23\ : std_logic;
SIGNAL \score_sig[5]~24_combout\ : std_logic;
SIGNAL \score_sig[5]~25\ : std_logic;
SIGNAL \score_sig[6]~26_combout\ : std_logic;
SIGNAL \score_sig[6]~27\ : std_logic;
SIGNAL \score_sig[7]~28_combout\ : std_logic;
SIGNAL \score_sig[7]~29\ : std_logic;
SIGNAL \score_sig[8]~30_combout\ : std_logic;
SIGNAL \score_sig[8]~31\ : std_logic;
SIGNAL \score_sig[9]~32_combout\ : std_logic;
SIGNAL \score_sig[9]~33\ : std_logic;
SIGNAL \score_sig[10]~34_combout\ : std_logic;
SIGNAL \score_sig[10]~35\ : std_logic;
SIGNAL \score_sig[11]~36_combout\ : std_logic;
SIGNAL \score_sig[11]~37\ : std_logic;
SIGNAL \score_sig[12]~38_combout\ : std_logic;
SIGNAL \score_sig[12]~39\ : std_logic;
SIGNAL \score_sig[13]~40_combout\ : std_logic;
SIGNAL \score_sig[13]~41\ : std_logic;
SIGNAL \score_sig[14]~42_combout\ : std_logic;
SIGNAL \score_sig[14]~43\ : std_logic;
SIGNAL \score_sig[15]~44_combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita24~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita24~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita25~combout\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita25~COUT\ : std_logic;
SIGNAL \counterS|auto_generated|counter_comb_bita26~combout\ : std_logic;
SIGNAL \vga1|Equal2~0_combout\ : std_logic;
SIGNAL \vga1|VSYNC~0_combout\ : std_logic;
SIGNAL \vga1|HSYNC~2_combout\ : std_logic;
SIGNAL \rom|Mux0~0_combout\ : std_logic;
SIGNAL \rom|Mux0~1_combout\ : std_logic;
SIGNAL \rom|Mux0~2_combout\ : std_logic;
SIGNAL \rom|Mux0~3_combout\ : std_logic;
SIGNAL \R~0_combout\ : std_logic;
SIGNAL \vga1|BLANKING~1_combout\ : std_logic;
SIGNAL \vga1|COLUMN~0_combout\ : std_logic;
SIGNAL \vga1|COLUMN[5]~4_combout\ : std_logic;
SIGNAL \vga1|Equal2~2_combout\ : std_logic;
SIGNAL \vga1|Equal0~2_combout\ : std_logic;
SIGNAL \text_gen|Mux6~1_combout\ : std_logic;
SIGNAL \text_gen|LessThan35~0_combout\ : std_logic;
SIGNAL \text_gen|Mux6~2_combout\ : std_logic;
SIGNAL \text_gen|bcd~12_combout\ : std_logic;
SIGNAL \text_gen|bcd~13_combout\ : std_logic;
SIGNAL \text_gen|bcd~14_combout\ : std_logic;
SIGNAL \text_gen|bcd~15_combout\ : std_logic;
SIGNAL \text_gen|bcd~16_combout\ : std_logic;
SIGNAL \text_gen|bcd~17_combout\ : std_logic;
SIGNAL \text_gen|bcd~18_combout\ : std_logic;
SIGNAL \text_gen|bcd~19_combout\ : std_logic;
SIGNAL \text_gen|bcd~20_combout\ : std_logic;
SIGNAL \text_gen|bcd~21_combout\ : std_logic;
SIGNAL \text_gen|bcd~22_combout\ : std_logic;
SIGNAL \text_gen|bcd~23_combout\ : std_logic;
SIGNAL \text_gen|bcd~24_combout\ : std_logic;
SIGNAL \text_gen|bcd~25_combout\ : std_logic;
SIGNAL \text_gen|bcd~26_combout\ : std_logic;
SIGNAL \text_gen|bcd~27_combout\ : std_logic;
SIGNAL \text_gen|bcd~28_combout\ : std_logic;
SIGNAL \text_gen|bcd~29_combout\ : std_logic;
SIGNAL \text_gen|bcd~30_combout\ : std_logic;
SIGNAL \text_gen|bcd~31_combout\ : std_logic;
SIGNAL \text_gen|bcd~32_combout\ : std_logic;
SIGNAL \text_gen|bcd~33_combout\ : std_logic;
SIGNAL \text_gen|bcd~34_combout\ : std_logic;
SIGNAL \text_gen|bcd~35_combout\ : std_logic;
SIGNAL \text_gen|bcd~36_combout\ : std_logic;
SIGNAL \text_gen|bcd~37_combout\ : std_logic;
SIGNAL \text_gen|bcd~38_combout\ : std_logic;
SIGNAL \text_gen|bcd~39_combout\ : std_logic;
SIGNAL \text_gen|bcd~40_combout\ : std_logic;
SIGNAL \text_gen|bcd~41_combout\ : std_logic;
SIGNAL \text_gen|bcd~42_combout\ : std_logic;
SIGNAL \text_gen|Add30~0_combout\ : std_logic;
SIGNAL \text_gen|bcd~43_combout\ : std_logic;
SIGNAL \text_gen|score_BCD_sig[4]~0_combout\ : std_logic;
SIGNAL \text_gen|bcd~44_combout\ : std_logic;
SIGNAL \text_gen|bcd~45_combout\ : std_logic;
SIGNAL \text_gen|bcd~46_combout\ : std_logic;
SIGNAL \text_gen|bcd~47_combout\ : std_logic;
SIGNAL \text_gen|bcd~48_combout\ : std_logic;
SIGNAL \text_gen|bcd~49_combout\ : std_logic;
SIGNAL \text_gen|bcd~50_combout\ : std_logic;
SIGNAL \text_gen|bcd~51_combout\ : std_logic;
SIGNAL \text_gen|bcd~52_combout\ : std_logic;
SIGNAL \text_gen|bcd~53_combout\ : std_logic;
SIGNAL \text_gen|bcd~54_combout\ : std_logic;
SIGNAL \text_gen|bcd~55_combout\ : std_logic;
SIGNAL \text_gen|bcd~56_combout\ : std_logic;
SIGNAL \text_gen|bcd~57_combout\ : std_logic;
SIGNAL \text_gen|bcd~58_combout\ : std_logic;
SIGNAL \text_gen|bcd~59_combout\ : std_logic;
SIGNAL \text_gen|bcd~60_combout\ : std_logic;
SIGNAL \text_gen|bcd~61_combout\ : std_logic;
SIGNAL \text_gen|bcd~62_combout\ : std_logic;
SIGNAL \text_gen|bcd~63_combout\ : std_logic;
SIGNAL \text_gen|bcd~64_combout\ : std_logic;
SIGNAL \text_gen|bcd~65_combout\ : std_logic;
SIGNAL \text_gen|bcd~66_combout\ : std_logic;
SIGNAL \text_gen|bcd~67_combout\ : std_logic;
SIGNAL \text_gen|bcd~68_combout\ : std_logic;
SIGNAL \text_gen|bcd~69_combout\ : std_logic;
SIGNAL \text_gen|bcd~70_combout\ : std_logic;
SIGNAL \text_gen|bcd~71_combout\ : std_logic;
SIGNAL \text_gen|bcd~72_combout\ : std_logic;
SIGNAL \text_gen|bcd~73_combout\ : std_logic;
SIGNAL \text_gen|bcd~74_combout\ : std_logic;
SIGNAL \text_gen|bcd~75_combout\ : std_logic;
SIGNAL \text_gen|score_BCD_sig[8]~1_combout\ : std_logic;
SIGNAL \text_gen|bcd~76_combout\ : std_logic;
SIGNAL \text_gen|bcd~77_combout\ : std_logic;
SIGNAL \text_gen|bcd~78_combout\ : std_logic;
SIGNAL \text_gen|bcd~79_combout\ : std_logic;
SIGNAL \text_gen|LessThan11~0_combout\ : std_logic;
SIGNAL \text_gen|bcd~80_combout\ : std_logic;
SIGNAL \text_gen|bcd~81_combout\ : std_logic;
SIGNAL \text_gen|bcd~82_combout\ : std_logic;
SIGNAL \text_gen|bcd~83_combout\ : std_logic;
SIGNAL \text_gen|bcd~84_combout\ : std_logic;
SIGNAL \text_gen|bcd~85_combout\ : std_logic;
SIGNAL \text_gen|bcd~86_combout\ : std_logic;
SIGNAL \text_gen|bcd~87_combout\ : std_logic;
SIGNAL \text_gen|bcd~88_combout\ : std_logic;
SIGNAL \text_gen|bcd~89_combout\ : std_logic;
SIGNAL \text_gen|bcd~90_combout\ : std_logic;
SIGNAL \text_gen|bcd~91_combout\ : std_logic;
SIGNAL \text_gen|bcd~92_combout\ : std_logic;
SIGNAL \text_gen|bcd~93_combout\ : std_logic;
SIGNAL \text_gen|bcd~94_combout\ : std_logic;
SIGNAL \text_gen|bcd~95_combout\ : std_logic;
SIGNAL \text_gen|bcd~96_combout\ : std_logic;
SIGNAL \text_gen|bcd~97_combout\ : std_logic;
SIGNAL \text_gen|bcd~98_combout\ : std_logic;
SIGNAL \text_gen|score_BCD_sig[12]~2_combout\ : std_logic;
SIGNAL \text_gen|Mux6~3_combout\ : std_logic;
SIGNAL \text_gen|Mux6~4_combout\ : std_logic;
SIGNAL \text_gen|Mux6~5_combout\ : std_logic;
SIGNAL \text_gen|bcd~99_combout\ : std_logic;
SIGNAL \text_gen|bcd~100_combout\ : std_logic;
SIGNAL \text_gen|bcd~101_combout\ : std_logic;
SIGNAL \text_gen|bcd~102_combout\ : std_logic;
SIGNAL \text_gen|bcd~103_combout\ : std_logic;
SIGNAL \text_gen|bcd~104_combout\ : std_logic;
SIGNAL \text_gen|bcd~105_combout\ : std_logic;
SIGNAL \text_gen|bcd~106_combout\ : std_logic;
SIGNAL \text_gen|bcd~107_combout\ : std_logic;
SIGNAL \text_gen|bcd~108_combout\ : std_logic;
SIGNAL \text_gen|bcd~109_combout\ : std_logic;
SIGNAL \text_gen|Mux6~6_combout\ : std_logic;
SIGNAL \text_gen|Mux6~7_combout\ : std_logic;
SIGNAL \text_gen|Mux6~8_combout\ : std_logic;
SIGNAL \text_gen|Mux6~9_combout\ : std_logic;
SIGNAL \text_gen|Mux6~10_combout\ : std_logic;
SIGNAL \text_gen|Mux6~11_combout\ : std_logic;
SIGNAL \text_gen|Mux6~12_combout\ : std_logic;
SIGNAL \text_gen|Mux6~13_combout\ : std_logic;
SIGNAL \text_gen|Mux6~14_combout\ : std_logic;
SIGNAL \text_gen|char_code[0]~1_combout\ : std_logic;
SIGNAL \text_gen|char_code[0]~2_combout\ : std_logic;
SIGNAL \text_gen|score_BCD_sig[5]~3_combout\ : std_logic;
SIGNAL \text_gen|score_BCD_sig[9]~4_combout\ : std_logic;
SIGNAL \text_gen|score_BCD_sig[13]~5_combout\ : std_logic;
SIGNAL \text_gen|Mux6~15_combout\ : std_logic;
SIGNAL \text_gen|bcd~110_combout\ : std_logic;
SIGNAL \text_gen|bcd~111_combout\ : std_logic;
SIGNAL \text_gen|score_BCD_sig[1]~6_combout\ : std_logic;
SIGNAL \text_gen|Mux5~2_combout\ : std_logic;
SIGNAL \text_gen|bcd~112_combout\ : std_logic;
SIGNAL \text_gen|bcd~113_combout\ : std_logic;
SIGNAL \text_gen|bcd~114_combout\ : std_logic;
SIGNAL \text_gen|Mux5~3_combout\ : std_logic;
SIGNAL \text_gen|Mux5~4_combout\ : std_logic;
SIGNAL \text_gen|Mux5~5_combout\ : std_logic;
SIGNAL \text_gen|Mux5~6_combout\ : std_logic;
SIGNAL \text_gen|Mux5~7_combout\ : std_logic;
SIGNAL \text_gen|Mux5~8_combout\ : std_logic;
SIGNAL \text_gen|Mux5~9_combout\ : std_logic;
SIGNAL \text_gen|char_code[1]~3_combout\ : std_logic;
SIGNAL \text_gen|char_code[2]~4_combout\ : std_logic;
SIGNAL \text_gen|char_code[2]~5_combout\ : std_logic;
SIGNAL \text_gen|char_code[2]~6_combout\ : std_logic;
SIGNAL \text_gen|Mux4~0_combout\ : std_logic;
SIGNAL \text_gen|Mux4~1_combout\ : std_logic;
SIGNAL \text_gen|Mux4~2_combout\ : std_logic;
SIGNAL \text_gen|Mux4~3_combout\ : std_logic;
SIGNAL \text_gen|Mux4~4_combout\ : std_logic;
SIGNAL \text_gen|Mux4~5_combout\ : std_logic;
SIGNAL \text_gen|Mux4~6_combout\ : std_logic;
SIGNAL \text_gen|Mux4~7_combout\ : std_logic;
SIGNAL \text_gen|Mux4~8_combout\ : std_logic;
SIGNAL \text_gen|Mux4~9_combout\ : std_logic;
SIGNAL \text_gen|Mux4~10_combout\ : std_logic;
SIGNAL \text_gen|char_code[2]~7_combout\ : std_logic;
SIGNAL \text_gen|score_BCD_sig[15]~7_combout\ : std_logic;
SIGNAL \text_gen|score_BCD_sig[11]~8_combout\ : std_logic;
SIGNAL \text_gen|score_BCD_sig[3]~9_combout\ : std_logic;
SIGNAL \text_gen|Mux3~5_combout\ : std_logic;
SIGNAL \text_gen|score_BCD_sig[7]~10_combout\ : std_logic;
SIGNAL \text_gen|Mux3~6_combout\ : std_logic;
SIGNAL \text_gen|Mux3~7_combout\ : std_logic;
SIGNAL \text_gen|Mux3~8_combout\ : std_logic;
SIGNAL \text_gen|Mux3~9_combout\ : std_logic;
SIGNAL \text_gen|Mux3~10_combout\ : std_logic;
SIGNAL \text_gen|char_code[3]~8_combout\ : std_logic;
SIGNAL \text_gen|Mux2~0_combout\ : std_logic;
SIGNAL \text_gen|Mux2~1_combout\ : std_logic;
SIGNAL \text_gen|char_code[4]~9_combout\ : std_logic;
SIGNAL \text_gen|char_code[5]~10_combout\ : std_logic;
SIGNAL \text_gen|char_code[5]~11_combout\ : std_logic;
SIGNAL \text_gen|Mux1~0_combout\ : std_logic;
SIGNAL \text_gen|Mux1~1_combout\ : std_logic;
SIGNAL \text_gen|Mux1~2_combout\ : std_logic;
SIGNAL \text_gen|char_code[5]~12_combout\ : std_logic;
SIGNAL \text_gen|char_code[6]~13_combout\ : std_logic;
SIGNAL \text_gen|Mux0~0_combout\ : std_logic;
SIGNAL \text_gen|char_code[6]~14_combout\ : std_logic;
SIGNAL \vga1|COLUMN[1]~6_combout\ : std_logic;
SIGNAL \vga1|COLUMN[2]~7_combout\ : std_logic;
SIGNAL \vga1|COLUMN[3]~8_combout\ : std_logic;
SIGNAL \vga1|ROW[1]~0_combout\ : std_logic;
SIGNAL \vga1|ROW[2]~1_combout\ : std_logic;
SIGNAL \vga1|ROW[3]~2_combout\ : std_logic;
SIGNAL \vga1|ROW[4]~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \score_sig[0]~15_combout\ : std_logic;
SIGNAL \level_sig[1]~0_combout\ : std_logic;
SIGNAL \level_sig[2]~1_combout\ : std_logic;
SIGNAL \counterReset_sig~regout\ : std_logic;
SIGNAL \text_gen|Mux5~10_combout\ : std_logic;
SIGNAL \text_gen|Mux3~11_combout\ : std_logic;
SIGNAL \text_gen|Mux3~12_combout\ : std_logic;
SIGNAL \text_gen|bcd~115_combout\ : std_logic;
SIGNAL \text_gen|bcd~116_combout\ : std_logic;
SIGNAL \text_gen|bcd~117_combout\ : std_logic;
SIGNAL \text_gen|LessThan21~15_combout\ : std_logic;
SIGNAL \text_gen|LessThan21~3_combout\ : std_logic;
SIGNAL \text_gen|bcd~4_combout\ : std_logic;
SIGNAL \text_gen|bcd~5_combout\ : std_logic;
SIGNAL \text_gen|bcd~8_combout\ : std_logic;
SIGNAL \text_gen|bcd~9_combout\ : std_logic;
SIGNAL \text_gen|bcd~10_combout\ : std_logic;
SIGNAL \text_gen|bcd~11_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \vga1|Equal0~0_combout\ : std_logic;
SIGNAL \vga1|Equal0~1_combout\ : std_logic;
SIGNAL \vga1|Equal0~3_combout\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \vga1|LessThan2~0_combout\ : std_logic;
SIGNAL \vga1|LessThan2~1_combout\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|_~0_combout\ : std_logic;
SIGNAL \vga1|Equal2~1_combout\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \vga1|Equal2~3_combout\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \vga1|LessThan7~0_combout\ : std_logic;
SIGNAL \vga1|BLANKING~2_combout\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \vga1|LessThan0~0_combout\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \vga1|counterV|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \vga1|BLANKING~3_combout\ : std_logic;
SIGNAL \vga1|COLUMN~1_combout\ : std_logic;
SIGNAL \text_gen|Mux3~4_combout\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \text_gen|char_code[5]~0_combout\ : std_logic;
SIGNAL \vga1|Add1~0_combout\ : std_logic;
SIGNAL \vga1|COLUMN[7]~5_combout\ : std_logic;
SIGNAL \text_gen|Mux7~0_combout\ : std_logic;
SIGNAL \vga1|COLUMN[9]~2_combout\ : std_logic;
SIGNAL \vga1|Add0~1\ : std_logic;
SIGNAL \vga1|Add0~3\ : std_logic;
SIGNAL \vga1|Add0~5\ : std_logic;
SIGNAL \vga1|Add0~7\ : std_logic;
SIGNAL \vga1|Add0~9\ : std_logic;
SIGNAL \vga1|Add0~11\ : std_logic;
SIGNAL \vga1|Add0~13\ : std_logic;
SIGNAL \vga1|Add0~14_combout\ : std_logic;
SIGNAL \vga1|Add0~8_combout\ : std_logic;
SIGNAL \vga1|Add0~10_combout\ : std_logic;
SIGNAL \text_gen|Equal0~0_combout\ : std_logic;
SIGNAL \vga1|Add0~15\ : std_logic;
SIGNAL \vga1|Add0~16_combout\ : std_logic;
SIGNAL \R~2_combout\ : std_logic;
SIGNAL \R~3_combout\ : std_logic;
SIGNAL \R~1_combout\ : std_logic;
SIGNAL \R~4_combout\ : std_logic;
SIGNAL \R[0]~reg0_regout\ : std_logic;
SIGNAL \R[1]~reg0feeder_combout\ : std_logic;
SIGNAL \R[1]~reg0_regout\ : std_logic;
SIGNAL \R[2]~reg0feeder_combout\ : std_logic;
SIGNAL \R[2]~reg0_regout\ : std_logic;
SIGNAL \R[3]~reg0feeder_combout\ : std_logic;
SIGNAL \R[3]~reg0_regout\ : std_logic;
SIGNAL \text_gen|Mux8~0_combout\ : std_logic;
SIGNAL \G~0_combout\ : std_logic;
SIGNAL \G~1_combout\ : std_logic;
SIGNAL \G[0]~reg0feeder_combout\ : std_logic;
SIGNAL \G[0]~reg0_regout\ : std_logic;
SIGNAL \vga1|COLUMN[6]~3_combout\ : std_logic;
SIGNAL \text_gen|Mux9~0_combout\ : std_logic;
SIGNAL \text_gen|Mux9~1_combout\ : std_logic;
SIGNAL \G~2_combout\ : std_logic;
SIGNAL \G~3_combout\ : std_logic;
SIGNAL \G[1]~reg0_regout\ : std_logic;
SIGNAL \G[2]~reg0_regout\ : std_logic;
SIGNAL \G[3]~reg0_regout\ : std_logic;
SIGNAL \vga1|Add1~1_combout\ : std_logic;
SIGNAL \text_gen|Mux6~0_combout\ : std_logic;
SIGNAL \B~0_combout\ : std_logic;
SIGNAL \B~1_combout\ : std_logic;
SIGNAL \B[0]~reg0_regout\ : std_logic;
SIGNAL \B[1]~reg0feeder_combout\ : std_logic;
SIGNAL \B[1]~reg0_regout\ : std_logic;
SIGNAL \text_gen|Mux11~0_combout\ : std_logic;
SIGNAL \B~2_combout\ : std_logic;
SIGNAL \B[2]~reg0_regout\ : std_logic;
SIGNAL \B[3]~reg0feeder_combout\ : std_logic;
SIGNAL \B[3]~reg0_regout\ : std_logic;
SIGNAL \vga1|VSYNC~2_combout\ : std_logic;
SIGNAL \vga1|VSYNC~1_combout\ : std_logic;
SIGNAL \vga1|BLANKING~0_combout\ : std_logic;
SIGNAL \vga1|VSYNC~3_combout\ : std_logic;
SIGNAL \vga1|HSYNC~0_combout\ : std_logic;
SIGNAL \vga1|HSYNC~1_combout\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \vga1|HSYNC~3_combout\ : std_logic;
SIGNAL \vga1|HSYNC~4_combout\ : std_logic;
SIGNAL \vga1|counterH|auto_generated|safe_q\ : std_logic_vector(10 DOWNTO 0);
SIGNAL font_col_clk_sig : std_logic_vector(2 DOWNTO 0);
SIGNAL score_sig : std_logic_vector(15 DOWNTO 0);
SIGNAL level_sig : std_logic_vector(2 DOWNTO 0);
SIGNAL \life~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL font_row_clk_sig : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga1|counterV|auto_generated|safe_q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \counterS|auto_generated|safe_q\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \vga1|ALT_INV_HSYNC~4_combout\ : std_logic;
SIGNAL \vga1|ALT_INV_VSYNC~3_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_rst <= rst;
R <= ww_R;
G <= ww_G;
B <= ww_B;
VSYNC <= ww_VSYNC;
HSYNC <= ww_HSYNC;
ww_life <= life;
ww_level <= level;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rom|ROM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\text_gen|char_code[6]~14_combout\ & \text_gen|char_code[5]~12_combout\ & \text_gen|char_code[4]~9_combout\ & \text_gen|char_code[3]~8_combout\ & \text_gen|char_code[2]~7_combout\ & 
\text_gen|char_code[1]~3_combout\ & \text_gen|char_code[0]~2_combout\ & font_row_clk_sig(3) & font_row_clk_sig(2) & font_row_clk_sig(1) & font_row_clk_sig(0));

\rom|ROM_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \rom|ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\rom|ROM_rtl_0|auto_generated|ram_block1a2\ <= \rom|ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);

\rom|ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\text_gen|char_code[6]~14_combout\ & \text_gen|char_code[5]~12_combout\ & \text_gen|char_code[4]~9_combout\ & \text_gen|char_code[3]~8_combout\ & \text_gen|char_code[2]~7_combout\ & 
\text_gen|char_code[1]~3_combout\ & \text_gen|char_code[0]~2_combout\ & font_row_clk_sig(3) & font_row_clk_sig(2) & font_row_clk_sig(1) & font_row_clk_sig(0));

\rom|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \rom|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\rom|ROM_rtl_0|auto_generated|ram_block1a3\ <= \rom|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\rom|ROM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\text_gen|char_code[6]~14_combout\ & \text_gen|char_code[5]~12_combout\ & \text_gen|char_code[4]~9_combout\ & \text_gen|char_code[3]~8_combout\ & \text_gen|char_code[2]~7_combout\ & 
\text_gen|char_code[1]~3_combout\ & \text_gen|char_code[0]~2_combout\ & font_row_clk_sig(3) & font_row_clk_sig(2) & font_row_clk_sig(1) & font_row_clk_sig(0));

\rom|ROM_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \rom|ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\rom|ROM_rtl_0|auto_generated|ram_block1a6\ <= \rom|ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);

\rom|ROM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\text_gen|char_code[6]~14_combout\ & \text_gen|char_code[5]~12_combout\ & \text_gen|char_code[4]~9_combout\ & \text_gen|char_code[3]~8_combout\ & \text_gen|char_code[2]~7_combout\ & 
\text_gen|char_code[1]~3_combout\ & \text_gen|char_code[0]~2_combout\ & font_row_clk_sig(3) & font_row_clk_sig(2) & font_row_clk_sig(1) & font_row_clk_sig(0));

\rom|ROM_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \rom|ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\rom|ROM_rtl_0|auto_generated|ram_block1a7\ <= \rom|ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\vga1|ALT_INV_HSYNC~4_combout\ <= NOT \vga1|HSYNC~4_combout\;
\vga1|ALT_INV_VSYNC~3_combout\ <= NOT \vga1|VSYNC~3_combout\;

-- Location: M4K_X41_Y17
\rom|ROM_rtl_0|auto_generated|ram_block1a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"003FE000000000B0000030000000000000C0003000F02C000BFFFC000078B40000F55400002D540000EAA80000B0080000B838000000F8003AAAAC0000BFF80000BFF80000FFF80000557C000080000000F82C002FFFFCF00080000000FFF8000AAAAC000000028000B0F80000EAAAA000B0380000BFE00000EAA000000000000C000000000000E000AAAAA0007E00000080002000D00B7000802D50005E0B5000FD5550002D555000BFFFF00080007000BF83E000FFAFE00EBFFFE000002FE000BFFFE000FFFFF000555FD000F4000000FE0BF0002AAAB00080002000FFFFF0007FC1E0000001F000F401F0002FFF8000B401E000BFEFE000FFFE00008BFFE0",
	mem_init0 => X"00000BE00002E00000030C0000E002C00000000000000000002FFFE000BFEFE000002FF000BFE00000BFE03000EAEAA000BFEFE000F00BE000C0000000BFFFE000002D00000000000000C000000000000000C000000EEC00000AAA00008000200000000000EAB28000F02D0000BFE1E000AEAE80000002FC00000A80000000000000AF00003E8000000BF800000C00000000C0000002E000002C00000000038000CB038000FF000002E2F8380055557000F3FFF0000B0380007FFFF4000030000006E40000FD577000000370000CBFE0002A85F0FFD287FF002D7800FFFD7FFF000280000083FE000083FA000002E000000BFE0000FF7DF000C0823000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/g46_Lab4.ram0_fontROM_16852496.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fontROM:rom|altsyncram:ROM_rtl_0|altsyncram_gm61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clock~clkctrl_outclk\,
	portaaddr => \rom|ROM_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom|ROM_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y18
\rom|ROM_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0020280000000080002AAA8000AA8AA000AA8AA00080A80028800000004A8400003F540000A15400002AA80000800800008A0800000008002AAAA00000800800008008000000080000FFF00000AAAAA0000AA0002000080000AAA8A0000008002AAAA000000000A000808800002AAAA00080080000802800002AA800000000200C0000000000002800AAAAA0000A80000080002000D4287000AAA1500052A850000FD55000A155500080000000AAABF00080A0200000A0200AA0002000002020008000200000A80000557F50008000000002A80000AAAAA000AAAAA000002000008080200000A8200080A82000A000A0008000200080202000008280008AA020",
	mem_init0 => X"00A2A820000A28000002080000280A0000280A0000280A0000A02020008020200000A020008020200080202000AAAAA0008020200080282000AAAAA0008028200000A00000A000000000800000A80000000AA8000002E000002AAA8000A000A000000000002A8AA00000A0000A80202A00AAAA800000000000A2AAA000000000000AAA00002AA8000000C0000008000000008000000AA80000AAAAA000AAAAA000AAAAA000AA0000022A0A0800FFFFF000000000002AAAA0000AAA800000A80000AE6E80001557700000037000AA802000AAA2A0FFDFF7FF00200800FFF55FFF000AA00000AAFA8000A95A80000AA800002AAA0000BD7FE00097D56000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/g46_Lab4.ram0_fontROM_16852496.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fontROM:rom|altsyncram:ROM_rtl_0|altsyncram_gm61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clock~clkctrl_outclk\,
	portaaddr => \rom|ROM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom|ROM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y19
\rom|ROM_rtl_0|auto_generated|ram_block1a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"003AB400000000B000C00030000000000000300000ED2C0030EAA80000B4780000FAA800001EA80000EAA80000155D4000E1EC0000FFF80000EAAC003FFFF80000EAAC0000FFF80000AABC000040001000FFFFF01F0000000040040000FFFFF038EAAC0000FFFFD000EAEC0000EAB40000EAAC0000FFFFF000EACC00000000050C000000000000B40040001000007E000055555000EB40B000401EA000AD07A000FEAAA0001EAAA000EAAAA0004000B000E81EB000FFFFF000EAAAB000FFFFF000EAAAB000AAAFE000AAAFE000FFFFF000FFFFF000EA00000040001000AABAA0007AAAD000FFFFF000FFFFF000FFFFF0007AAAD000FFFFF000AAEB4000EAAAB0",
	mem_init0 => X"000002B000D001C000030C000001D000004000000000000000C03AB000EABAB0005500B000EABAD000E03AB00000ED0000E010B000EB40B000C0034000EBEAB0002D0000000000000000C000010000000000C000000DDC0000400010000555000000035400EAB7D0002D0A0000E03AB000FFFFC0000001FC00000540000000000005FF00003FD4000007F400000EA0000007F4000000C000001C00000000034001C7034000FF00000387ADEC00003AB000F3FFF00007034000007400002FFFE00009D80002FFFFF000FD5550000C7FD000EAB400FFE14BFF001EB400FFFEBFFF000140000043FD000043F5000007F400001FFF0000FFBEF000C0413000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/g46_Lab4.ram0_fontROM_16852496.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fontROM:rom|altsyncram:ROM_rtl_0|altsyncram_gm61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clock~clkctrl_outclk\,
	portaaddr => \rom|ROM_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom|ROM_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M4K_X41_Y20
\rom|ROM_rtl_0|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"003A8500000000D000554550005545500015554000E16C00306AA80000854800003FA8000052A800006AA80000555D500061240000C01C00106AA40030400C00006AA40000000C0000FFF8000055555000814020100000000055545000801020186AA40000C03010006AE400006A8410006AA40000400420006A4400000000150C000000000000850040001000015A800055555000E852B0005552A000A154A0000FEAA00052AAA0006AAAA0005557F00068129000801030007EAA9000C01030006AAA9000AABFA000AABFA000C0003000805020006A00100055555000AABAA0004AEA1000C0103000C0103000C00030004AAA1000C0103000AAE850006FFA90",
	mem_init0 => X"00515290001405000001040000051400005405000014050000401A90006A9A90005540B0006ABA1000603AB00040E1400060109000E8509000555550006AFA9000A14000005000000000400001540000000554000001D000005000500015554000000054006AD41000A14A0005681A95000C0C0000000000005155500000000000155F00003D55000000C000000EA0000004C4000004C40000555550005555500155555000FF00000184A12400555FD000000000001555500001750000ABFFA8005D9D4002A0011000B5555000554010006A9510FFEFFBFF00100400FFFAAFFF000550000055F5400056A5400015D5000057FC00007EBFD0006BEA9000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/g46_Lab4.ram0_fontROM_16852496.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fontROM:rom|altsyncram:ROM_rtl_0|altsyncram_gm61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clock~clkctrl_outclk\,
	portaaddr => \rom|ROM_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom|ROM_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X40_Y18_N0
\vga1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Add0~0_combout\ = (\vga1|counterV|auto_generated|safe_q\(1) & (\vga1|counterV|auto_generated|safe_q\(0) $ (VCC))) # (!\vga1|counterV|auto_generated|safe_q\(1) & (\vga1|counterV|auto_generated|safe_q\(0) & VCC))
-- \vga1|Add0~1\ = CARRY((\vga1|counterV|auto_generated|safe_q\(1) & \vga1|counterV|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(1),
	datab => \vga1|counterV|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \vga1|Add0~0_combout\,
	cout => \vga1|Add0~1\);

-- Location: LCCOMB_X40_Y18_N2
\vga1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Add0~2_combout\ = (\vga1|counterV|auto_generated|safe_q\(2) & (\vga1|Add0~1\ & VCC)) # (!\vga1|counterV|auto_generated|safe_q\(2) & (!\vga1|Add0~1\))
-- \vga1|Add0~3\ = CARRY((!\vga1|counterV|auto_generated|safe_q\(2) & !\vga1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \vga1|Add0~1\,
	combout => \vga1|Add0~2_combout\,
	cout => \vga1|Add0~3\);

-- Location: LCCOMB_X40_Y18_N4
\vga1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Add0~4_combout\ = (\vga1|counterV|auto_generated|safe_q\(3) & (\vga1|Add0~3\ $ (GND))) # (!\vga1|counterV|auto_generated|safe_q\(3) & (!\vga1|Add0~3\ & VCC))
-- \vga1|Add0~5\ = CARRY((\vga1|counterV|auto_generated|safe_q\(3) & !\vga1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \vga1|Add0~3\,
	combout => \vga1|Add0~4_combout\,
	cout => \vga1|Add0~5\);

-- Location: LCCOMB_X40_Y18_N6
\vga1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Add0~6_combout\ = (\vga1|counterV|auto_generated|safe_q\(4) & (\vga1|Add0~5\ & VCC)) # (!\vga1|counterV|auto_generated|safe_q\(4) & (!\vga1|Add0~5\))
-- \vga1|Add0~7\ = CARRY((!\vga1|counterV|auto_generated|safe_q\(4) & !\vga1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \vga1|Add0~5\,
	combout => \vga1|Add0~6_combout\,
	cout => \vga1|Add0~7\);

-- Location: LCCOMB_X40_Y18_N12
\vga1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Add0~12_combout\ = (\vga1|counterV|auto_generated|safe_q\(7) & ((GND) # (!\vga1|Add0~11\))) # (!\vga1|counterV|auto_generated|safe_q\(7) & (\vga1|Add0~11\ $ (GND)))
-- \vga1|Add0~13\ = CARRY((\vga1|counterV|auto_generated|safe_q\(7)) # (!\vga1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \vga1|Add0~11\,
	combout => \vga1|Add0~12_combout\,
	cout => \vga1|Add0~13\);

-- Location: LCFF_X32_Y20_N3
\score_sig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[1]~16_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(1));

-- Location: LCFF_X32_Y20_N25
\score_sig[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[12]~38_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(12));

-- Location: LCFF_X32_Y20_N31
\score_sig[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[15]~44_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(15));

-- Location: LCFF_X32_Y20_N27
\score_sig[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[13]~40_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(13));

-- Location: LCFF_X32_Y20_N29
\score_sig[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[14]~42_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(14));

-- Location: LCFF_X32_Y20_N23
\score_sig[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[11]~36_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(11));

-- Location: LCFF_X32_Y20_N21
\score_sig[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[10]~34_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(10));

-- Location: LCFF_X32_Y20_N19
\score_sig[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[9]~32_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(9));

-- Location: LCFF_X32_Y20_N17
\score_sig[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[8]~30_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(8));

-- Location: LCFF_X32_Y20_N15
\score_sig[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[7]~28_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(7));

-- Location: LCFF_X32_Y20_N13
\score_sig[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[6]~26_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(6));

-- Location: LCFF_X32_Y20_N11
\score_sig[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[5]~24_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(5));

-- Location: LCFF_X32_Y20_N9
\score_sig[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[4]~22_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(4));

-- Location: LCFF_X32_Y20_N7
\score_sig[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[3]~20_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(3));

-- Location: LCFF_X32_Y20_N5
\score_sig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[2]~18_combout\,
	ena => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(2));

-- Location: LCFF_X43_Y19_N25
\counterS|auto_generated|counter_reg_bit1a[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita25~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(25));

-- Location: LCFF_X43_Y19_N21
\counterS|auto_generated|counter_reg_bit1a[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita23~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(23));

-- Location: LCFF_X43_Y19_N27
\counterS|auto_generated|counter_reg_bit1a[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita26~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(26));

-- Location: LCFF_X43_Y19_N23
\counterS|auto_generated|counter_reg_bit1a[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita24~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(24));

-- Location: LCFF_X43_Y19_N19
\counterS|auto_generated|counter_reg_bit1a[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita22~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(22));

-- Location: LCFF_X43_Y19_N17
\counterS|auto_generated|counter_reg_bit1a[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita21~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(21));

-- Location: LCFF_X43_Y19_N15
\counterS|auto_generated|counter_reg_bit1a[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita20~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(20));

-- Location: LCFF_X43_Y19_N13
\counterS|auto_generated|counter_reg_bit1a[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita19~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(19));

-- Location: LCFF_X43_Y19_N9
\counterS|auto_generated|counter_reg_bit1a[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita17~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(17));

-- Location: LCFF_X43_Y19_N5
\counterS|auto_generated|counter_reg_bit1a[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita15~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(15));

-- Location: LCFF_X43_Y19_N11
\counterS|auto_generated|counter_reg_bit1a[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita18~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(18));

-- Location: LCFF_X43_Y19_N7
\counterS|auto_generated|counter_reg_bit1a[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita16~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(16));

-- Location: LCFF_X43_Y19_N3
\counterS|auto_generated|counter_reg_bit1a[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita14~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(14));

-- Location: LCFF_X43_Y19_N1
\counterS|auto_generated|counter_reg_bit1a[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita13~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(13));

-- Location: LCFF_X43_Y20_N31
\counterS|auto_generated|counter_reg_bit1a[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita12~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(12));

-- Location: LCFF_X43_Y20_N29
\counterS|auto_generated|counter_reg_bit1a[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita11~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(11));

-- Location: LCFF_X43_Y20_N21
\counterS|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita7~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(7));

-- Location: LCFF_X43_Y20_N27
\counterS|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita10~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(10));

-- Location: LCFF_X43_Y20_N25
\counterS|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita9~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(9));

-- Location: LCFF_X43_Y20_N23
\counterS|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita8~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(8));

-- Location: LCFF_X43_Y20_N19
\counterS|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita6~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(6));

-- Location: LCFF_X43_Y20_N17
\counterS|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita5~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(5));

-- Location: LCFF_X43_Y20_N15
\counterS|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita4~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(4));

-- Location: LCFF_X43_Y20_N13
\counterS|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita3~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(3));

-- Location: LCFF_X43_Y20_N11
\counterS|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita2~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(2));

-- Location: LCFF_X43_Y20_N9
\counterS|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita1~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(1));

-- Location: LCFF_X43_Y20_N7
\counterS|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counterS|auto_generated|counter_comb_bita0~combout\,
	aclr => \counterReset_sig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterS|auto_generated|safe_q\(0));

-- Location: LCCOMB_X32_Y20_N2
\score_sig[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[1]~16_combout\ = (score_sig(0) & (score_sig(1) $ (VCC))) # (!score_sig(0) & (score_sig(1) & VCC))
-- \score_sig[1]~17\ = CARRY((score_sig(0) & score_sig(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(0),
	datab => score_sig(1),
	datad => VCC,
	combout => \score_sig[1]~16_combout\,
	cout => \score_sig[1]~17\);

-- Location: LCCOMB_X32_Y20_N4
\score_sig[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[2]~18_combout\ = (score_sig(2) & (!\score_sig[1]~17\)) # (!score_sig(2) & ((\score_sig[1]~17\) # (GND)))
-- \score_sig[2]~19\ = CARRY((!\score_sig[1]~17\) # (!score_sig(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score_sig(2),
	datad => VCC,
	cin => \score_sig[1]~17\,
	combout => \score_sig[2]~18_combout\,
	cout => \score_sig[2]~19\);

-- Location: LCCOMB_X32_Y20_N6
\score_sig[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[3]~20_combout\ = (score_sig(3) & (\score_sig[2]~19\ $ (GND))) # (!score_sig(3) & (!\score_sig[2]~19\ & VCC))
-- \score_sig[3]~21\ = CARRY((score_sig(3) & !\score_sig[2]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(3),
	datad => VCC,
	cin => \score_sig[2]~19\,
	combout => \score_sig[3]~20_combout\,
	cout => \score_sig[3]~21\);

-- Location: LCCOMB_X32_Y20_N8
\score_sig[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[4]~22_combout\ = (score_sig(4) & (!\score_sig[3]~21\)) # (!score_sig(4) & ((\score_sig[3]~21\) # (GND)))
-- \score_sig[4]~23\ = CARRY((!\score_sig[3]~21\) # (!score_sig(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score_sig(4),
	datad => VCC,
	cin => \score_sig[3]~21\,
	combout => \score_sig[4]~22_combout\,
	cout => \score_sig[4]~23\);

-- Location: LCCOMB_X32_Y20_N10
\score_sig[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[5]~24_combout\ = (score_sig(5) & (\score_sig[4]~23\ $ (GND))) # (!score_sig(5) & (!\score_sig[4]~23\ & VCC))
-- \score_sig[5]~25\ = CARRY((score_sig(5) & !\score_sig[4]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(5),
	datad => VCC,
	cin => \score_sig[4]~23\,
	combout => \score_sig[5]~24_combout\,
	cout => \score_sig[5]~25\);

-- Location: LCCOMB_X32_Y20_N12
\score_sig[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[6]~26_combout\ = (score_sig(6) & (!\score_sig[5]~25\)) # (!score_sig(6) & ((\score_sig[5]~25\) # (GND)))
-- \score_sig[6]~27\ = CARRY((!\score_sig[5]~25\) # (!score_sig(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(6),
	datad => VCC,
	cin => \score_sig[5]~25\,
	combout => \score_sig[6]~26_combout\,
	cout => \score_sig[6]~27\);

-- Location: LCCOMB_X32_Y20_N14
\score_sig[7]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[7]~28_combout\ = (score_sig(7) & (\score_sig[6]~27\ $ (GND))) # (!score_sig(7) & (!\score_sig[6]~27\ & VCC))
-- \score_sig[7]~29\ = CARRY((score_sig(7) & !\score_sig[6]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score_sig(7),
	datad => VCC,
	cin => \score_sig[6]~27\,
	combout => \score_sig[7]~28_combout\,
	cout => \score_sig[7]~29\);

-- Location: LCCOMB_X32_Y20_N16
\score_sig[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[8]~30_combout\ = (score_sig(8) & (!\score_sig[7]~29\)) # (!score_sig(8) & ((\score_sig[7]~29\) # (GND)))
-- \score_sig[8]~31\ = CARRY((!\score_sig[7]~29\) # (!score_sig(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(8),
	datad => VCC,
	cin => \score_sig[7]~29\,
	combout => \score_sig[8]~30_combout\,
	cout => \score_sig[8]~31\);

-- Location: LCCOMB_X32_Y20_N18
\score_sig[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[9]~32_combout\ = (score_sig(9) & (\score_sig[8]~31\ $ (GND))) # (!score_sig(9) & (!\score_sig[8]~31\ & VCC))
-- \score_sig[9]~33\ = CARRY((score_sig(9) & !\score_sig[8]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score_sig(9),
	datad => VCC,
	cin => \score_sig[8]~31\,
	combout => \score_sig[9]~32_combout\,
	cout => \score_sig[9]~33\);

-- Location: LCCOMB_X32_Y20_N20
\score_sig[10]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[10]~34_combout\ = (score_sig(10) & (!\score_sig[9]~33\)) # (!score_sig(10) & ((\score_sig[9]~33\) # (GND)))
-- \score_sig[10]~35\ = CARRY((!\score_sig[9]~33\) # (!score_sig(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(10),
	datad => VCC,
	cin => \score_sig[9]~33\,
	combout => \score_sig[10]~34_combout\,
	cout => \score_sig[10]~35\);

-- Location: LCCOMB_X32_Y20_N22
\score_sig[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[11]~36_combout\ = (score_sig(11) & (\score_sig[10]~35\ $ (GND))) # (!score_sig(11) & (!\score_sig[10]~35\ & VCC))
-- \score_sig[11]~37\ = CARRY((score_sig(11) & !\score_sig[10]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score_sig(11),
	datad => VCC,
	cin => \score_sig[10]~35\,
	combout => \score_sig[11]~36_combout\,
	cout => \score_sig[11]~37\);

-- Location: LCCOMB_X32_Y20_N24
\score_sig[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[12]~38_combout\ = (score_sig(12) & (!\score_sig[11]~37\)) # (!score_sig(12) & ((\score_sig[11]~37\) # (GND)))
-- \score_sig[12]~39\ = CARRY((!\score_sig[11]~37\) # (!score_sig(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(12),
	datad => VCC,
	cin => \score_sig[11]~37\,
	combout => \score_sig[12]~38_combout\,
	cout => \score_sig[12]~39\);

-- Location: LCCOMB_X32_Y20_N26
\score_sig[13]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[13]~40_combout\ = (score_sig(13) & (\score_sig[12]~39\ $ (GND))) # (!score_sig(13) & (!\score_sig[12]~39\ & VCC))
-- \score_sig[13]~41\ = CARRY((score_sig(13) & !\score_sig[12]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score_sig(13),
	datad => VCC,
	cin => \score_sig[12]~39\,
	combout => \score_sig[13]~40_combout\,
	cout => \score_sig[13]~41\);

-- Location: LCCOMB_X32_Y20_N28
\score_sig[14]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[14]~42_combout\ = (score_sig(14) & (!\score_sig[13]~41\)) # (!score_sig(14) & ((\score_sig[13]~41\) # (GND)))
-- \score_sig[14]~43\ = CARRY((!\score_sig[13]~41\) # (!score_sig(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score_sig(14),
	datad => VCC,
	cin => \score_sig[13]~41\,
	combout => \score_sig[14]~42_combout\,
	cout => \score_sig[14]~43\);

-- Location: LCCOMB_X32_Y20_N30
\score_sig[15]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[15]~44_combout\ = \score_sig[14]~43\ $ (!score_sig(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => score_sig(15),
	cin => \score_sig[14]~43\,
	combout => \score_sig[15]~44_combout\);

-- Location: LCCOMB_X43_Y20_N6
\counterS|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita0~combout\ = \counterS|auto_generated|safe_q\(0) $ (VCC)
-- \counterS|auto_generated|counter_comb_bita0~COUT\ = CARRY(\counterS|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \counterS|auto_generated|counter_comb_bita0~combout\,
	cout => \counterS|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X43_Y20_N8
\counterS|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita1~combout\ = (\counterS|auto_generated|safe_q\(1) & (!\counterS|auto_generated|counter_comb_bita0~COUT\)) # (!\counterS|auto_generated|safe_q\(1) & ((\counterS|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \counterS|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\counterS|auto_generated|counter_comb_bita0~COUT\) # (!\counterS|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita0~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita1~combout\,
	cout => \counterS|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X43_Y20_N10
\counterS|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita2~combout\ = (\counterS|auto_generated|safe_q\(2) & (\counterS|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\counterS|auto_generated|safe_q\(2) & (!\counterS|auto_generated|counter_comb_bita1~COUT\ & 
-- VCC))
-- \counterS|auto_generated|counter_comb_bita2~COUT\ = CARRY((\counterS|auto_generated|safe_q\(2) & !\counterS|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita1~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita2~combout\,
	cout => \counterS|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X43_Y20_N12
\counterS|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita3~combout\ = (\counterS|auto_generated|safe_q\(3) & (!\counterS|auto_generated|counter_comb_bita2~COUT\)) # (!\counterS|auto_generated|safe_q\(3) & ((\counterS|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \counterS|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\counterS|auto_generated|counter_comb_bita2~COUT\) # (!\counterS|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita2~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita3~combout\,
	cout => \counterS|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X43_Y20_N14
\counterS|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita4~combout\ = (\counterS|auto_generated|safe_q\(4) & (\counterS|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\counterS|auto_generated|safe_q\(4) & (!\counterS|auto_generated|counter_comb_bita3~COUT\ & 
-- VCC))
-- \counterS|auto_generated|counter_comb_bita4~COUT\ = CARRY((\counterS|auto_generated|safe_q\(4) & !\counterS|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita3~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita4~combout\,
	cout => \counterS|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X43_Y20_N16
\counterS|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita5~combout\ = (\counterS|auto_generated|safe_q\(5) & (!\counterS|auto_generated|counter_comb_bita4~COUT\)) # (!\counterS|auto_generated|safe_q\(5) & ((\counterS|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \counterS|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\counterS|auto_generated|counter_comb_bita4~COUT\) # (!\counterS|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita4~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita5~combout\,
	cout => \counterS|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X43_Y20_N18
\counterS|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita6~combout\ = (\counterS|auto_generated|safe_q\(6) & (\counterS|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\counterS|auto_generated|safe_q\(6) & (!\counterS|auto_generated|counter_comb_bita5~COUT\ & 
-- VCC))
-- \counterS|auto_generated|counter_comb_bita6~COUT\ = CARRY((\counterS|auto_generated|safe_q\(6) & !\counterS|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita5~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita6~combout\,
	cout => \counterS|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X43_Y20_N20
\counterS|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita7~combout\ = (\counterS|auto_generated|safe_q\(7) & (!\counterS|auto_generated|counter_comb_bita6~COUT\)) # (!\counterS|auto_generated|safe_q\(7) & ((\counterS|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \counterS|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\counterS|auto_generated|counter_comb_bita6~COUT\) # (!\counterS|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita6~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita7~combout\,
	cout => \counterS|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X43_Y20_N22
\counterS|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita8~combout\ = (\counterS|auto_generated|safe_q\(8) & (\counterS|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\counterS|auto_generated|safe_q\(8) & (!\counterS|auto_generated|counter_comb_bita7~COUT\ & 
-- VCC))
-- \counterS|auto_generated|counter_comb_bita8~COUT\ = CARRY((\counterS|auto_generated|safe_q\(8) & !\counterS|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita7~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita8~combout\,
	cout => \counterS|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X43_Y20_N24
\counterS|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita9~combout\ = (\counterS|auto_generated|safe_q\(9) & (!\counterS|auto_generated|counter_comb_bita8~COUT\)) # (!\counterS|auto_generated|safe_q\(9) & ((\counterS|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \counterS|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\counterS|auto_generated|counter_comb_bita8~COUT\) # (!\counterS|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita8~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita9~combout\,
	cout => \counterS|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCCOMB_X43_Y20_N26
\counterS|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita10~combout\ = (\counterS|auto_generated|safe_q\(10) & (\counterS|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\counterS|auto_generated|safe_q\(10) & (!\counterS|auto_generated|counter_comb_bita9~COUT\ & 
-- VCC))
-- \counterS|auto_generated|counter_comb_bita10~COUT\ = CARRY((\counterS|auto_generated|safe_q\(10) & !\counterS|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(10),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita9~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita10~combout\,
	cout => \counterS|auto_generated|counter_comb_bita10~COUT\);

-- Location: LCCOMB_X43_Y20_N28
\counterS|auto_generated|counter_comb_bita11\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita11~combout\ = (\counterS|auto_generated|safe_q\(11) & (!\counterS|auto_generated|counter_comb_bita10~COUT\)) # (!\counterS|auto_generated|safe_q\(11) & ((\counterS|auto_generated|counter_comb_bita10~COUT\) # 
-- (GND)))
-- \counterS|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\counterS|auto_generated|counter_comb_bita10~COUT\) # (!\counterS|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(11),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita10~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita11~combout\,
	cout => \counterS|auto_generated|counter_comb_bita11~COUT\);

-- Location: LCCOMB_X43_Y20_N30
\counterS|auto_generated|counter_comb_bita12\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita12~combout\ = (\counterS|auto_generated|safe_q\(12) & (\counterS|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\counterS|auto_generated|safe_q\(12) & (!\counterS|auto_generated|counter_comb_bita11~COUT\ & 
-- VCC))
-- \counterS|auto_generated|counter_comb_bita12~COUT\ = CARRY((\counterS|auto_generated|safe_q\(12) & !\counterS|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(12),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita11~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita12~combout\,
	cout => \counterS|auto_generated|counter_comb_bita12~COUT\);

-- Location: LCCOMB_X43_Y19_N0
\counterS|auto_generated|counter_comb_bita13\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita13~combout\ = (\counterS|auto_generated|safe_q\(13) & (!\counterS|auto_generated|counter_comb_bita12~COUT\)) # (!\counterS|auto_generated|safe_q\(13) & ((\counterS|auto_generated|counter_comb_bita12~COUT\) # 
-- (GND)))
-- \counterS|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\counterS|auto_generated|counter_comb_bita12~COUT\) # (!\counterS|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(13),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita12~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita13~combout\,
	cout => \counterS|auto_generated|counter_comb_bita13~COUT\);

-- Location: LCCOMB_X43_Y19_N2
\counterS|auto_generated|counter_comb_bita14\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita14~combout\ = (\counterS|auto_generated|safe_q\(14) & (\counterS|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\counterS|auto_generated|safe_q\(14) & (!\counterS|auto_generated|counter_comb_bita13~COUT\ & 
-- VCC))
-- \counterS|auto_generated|counter_comb_bita14~COUT\ = CARRY((\counterS|auto_generated|safe_q\(14) & !\counterS|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(14),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita13~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita14~combout\,
	cout => \counterS|auto_generated|counter_comb_bita14~COUT\);

-- Location: LCCOMB_X43_Y19_N4
\counterS|auto_generated|counter_comb_bita15\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita15~combout\ = (\counterS|auto_generated|safe_q\(15) & (!\counterS|auto_generated|counter_comb_bita14~COUT\)) # (!\counterS|auto_generated|safe_q\(15) & ((\counterS|auto_generated|counter_comb_bita14~COUT\) # 
-- (GND)))
-- \counterS|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\counterS|auto_generated|counter_comb_bita14~COUT\) # (!\counterS|auto_generated|safe_q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(15),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita14~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita15~combout\,
	cout => \counterS|auto_generated|counter_comb_bita15~COUT\);

-- Location: LCCOMB_X43_Y19_N6
\counterS|auto_generated|counter_comb_bita16\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita16~combout\ = (\counterS|auto_generated|safe_q\(16) & (\counterS|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # (!\counterS|auto_generated|safe_q\(16) & (!\counterS|auto_generated|counter_comb_bita15~COUT\ & 
-- VCC))
-- \counterS|auto_generated|counter_comb_bita16~COUT\ = CARRY((\counterS|auto_generated|safe_q\(16) & !\counterS|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(16),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita15~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita16~combout\,
	cout => \counterS|auto_generated|counter_comb_bita16~COUT\);

-- Location: LCCOMB_X43_Y19_N8
\counterS|auto_generated|counter_comb_bita17\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita17~combout\ = (\counterS|auto_generated|safe_q\(17) & (!\counterS|auto_generated|counter_comb_bita16~COUT\)) # (!\counterS|auto_generated|safe_q\(17) & ((\counterS|auto_generated|counter_comb_bita16~COUT\) # 
-- (GND)))
-- \counterS|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\counterS|auto_generated|counter_comb_bita16~COUT\) # (!\counterS|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(17),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita16~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita17~combout\,
	cout => \counterS|auto_generated|counter_comb_bita17~COUT\);

-- Location: LCCOMB_X43_Y19_N10
\counterS|auto_generated|counter_comb_bita18\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita18~combout\ = (\counterS|auto_generated|safe_q\(18) & (\counterS|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # (!\counterS|auto_generated|safe_q\(18) & (!\counterS|auto_generated|counter_comb_bita17~COUT\ & 
-- VCC))
-- \counterS|auto_generated|counter_comb_bita18~COUT\ = CARRY((\counterS|auto_generated|safe_q\(18) & !\counterS|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(18),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita17~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita18~combout\,
	cout => \counterS|auto_generated|counter_comb_bita18~COUT\);

-- Location: LCCOMB_X43_Y19_N12
\counterS|auto_generated|counter_comb_bita19\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita19~combout\ = (\counterS|auto_generated|safe_q\(19) & (!\counterS|auto_generated|counter_comb_bita18~COUT\)) # (!\counterS|auto_generated|safe_q\(19) & ((\counterS|auto_generated|counter_comb_bita18~COUT\) # 
-- (GND)))
-- \counterS|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\counterS|auto_generated|counter_comb_bita18~COUT\) # (!\counterS|auto_generated|safe_q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(19),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita18~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita19~combout\,
	cout => \counterS|auto_generated|counter_comb_bita19~COUT\);

-- Location: LCCOMB_X43_Y19_N14
\counterS|auto_generated|counter_comb_bita20\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita20~combout\ = (\counterS|auto_generated|safe_q\(20) & (\counterS|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # (!\counterS|auto_generated|safe_q\(20) & (!\counterS|auto_generated|counter_comb_bita19~COUT\ & 
-- VCC))
-- \counterS|auto_generated|counter_comb_bita20~COUT\ = CARRY((\counterS|auto_generated|safe_q\(20) & !\counterS|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(20),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita19~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita20~combout\,
	cout => \counterS|auto_generated|counter_comb_bita20~COUT\);

-- Location: LCCOMB_X43_Y19_N16
\counterS|auto_generated|counter_comb_bita21\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita21~combout\ = (\counterS|auto_generated|safe_q\(21) & (!\counterS|auto_generated|counter_comb_bita20~COUT\)) # (!\counterS|auto_generated|safe_q\(21) & ((\counterS|auto_generated|counter_comb_bita20~COUT\) # 
-- (GND)))
-- \counterS|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\counterS|auto_generated|counter_comb_bita20~COUT\) # (!\counterS|auto_generated|safe_q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(21),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita20~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita21~combout\,
	cout => \counterS|auto_generated|counter_comb_bita21~COUT\);

-- Location: LCCOMB_X43_Y19_N18
\counterS|auto_generated|counter_comb_bita22\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita22~combout\ = (\counterS|auto_generated|safe_q\(22) & (\counterS|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # (!\counterS|auto_generated|safe_q\(22) & (!\counterS|auto_generated|counter_comb_bita21~COUT\ & 
-- VCC))
-- \counterS|auto_generated|counter_comb_bita22~COUT\ = CARRY((\counterS|auto_generated|safe_q\(22) & !\counterS|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(22),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita21~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita22~combout\,
	cout => \counterS|auto_generated|counter_comb_bita22~COUT\);

-- Location: LCCOMB_X43_Y19_N20
\counterS|auto_generated|counter_comb_bita23\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita23~combout\ = (\counterS|auto_generated|safe_q\(23) & (!\counterS|auto_generated|counter_comb_bita22~COUT\)) # (!\counterS|auto_generated|safe_q\(23) & ((\counterS|auto_generated|counter_comb_bita22~COUT\) # 
-- (GND)))
-- \counterS|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\counterS|auto_generated|counter_comb_bita22~COUT\) # (!\counterS|auto_generated|safe_q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(23),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita22~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita23~combout\,
	cout => \counterS|auto_generated|counter_comb_bita23~COUT\);

-- Location: LCCOMB_X43_Y19_N22
\counterS|auto_generated|counter_comb_bita24\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita24~combout\ = (\counterS|auto_generated|safe_q\(24) & (\counterS|auto_generated|counter_comb_bita23~COUT\ $ (GND))) # (!\counterS|auto_generated|safe_q\(24) & (!\counterS|auto_generated|counter_comb_bita23~COUT\ & 
-- VCC))
-- \counterS|auto_generated|counter_comb_bita24~COUT\ = CARRY((\counterS|auto_generated|safe_q\(24) & !\counterS|auto_generated|counter_comb_bita23~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \counterS|auto_generated|safe_q\(24),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita23~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita24~combout\,
	cout => \counterS|auto_generated|counter_comb_bita24~COUT\);

-- Location: LCCOMB_X43_Y19_N24
\counterS|auto_generated|counter_comb_bita25\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita25~combout\ = (\counterS|auto_generated|safe_q\(25) & (!\counterS|auto_generated|counter_comb_bita24~COUT\)) # (!\counterS|auto_generated|safe_q\(25) & ((\counterS|auto_generated|counter_comb_bita24~COUT\) # 
-- (GND)))
-- \counterS|auto_generated|counter_comb_bita25~COUT\ = CARRY((!\counterS|auto_generated|counter_comb_bita24~COUT\) # (!\counterS|auto_generated|safe_q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(25),
	datad => VCC,
	cin => \counterS|auto_generated|counter_comb_bita24~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita25~combout\,
	cout => \counterS|auto_generated|counter_comb_bita25~COUT\);

-- Location: LCCOMB_X43_Y19_N26
\counterS|auto_generated|counter_comb_bita26\ : cycloneii_lcell_comb
-- Equation(s):
-- \counterS|auto_generated|counter_comb_bita26~combout\ = \counterS|auto_generated|counter_comb_bita25~COUT\ $ (!\counterS|auto_generated|safe_q\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \counterS|auto_generated|safe_q\(26),
	cin => \counterS|auto_generated|counter_comb_bita25~COUT\,
	combout => \counterS|auto_generated|counter_comb_bita26~combout\);

-- Location: LCCOMB_X40_Y18_N26
\vga1|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Equal2~0_combout\ = (\vga1|counterV|auto_generated|safe_q\(3) & \vga1|counterV|auto_generated|safe_q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(3),
	datad => \vga1|counterV|auto_generated|safe_q\(4),
	combout => \vga1|Equal2~0_combout\);

-- Location: LCCOMB_X40_Y20_N24
\vga1|VSYNC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|VSYNC~0_combout\ = (\vga1|counterV|auto_generated|safe_q\(5)) # ((\vga1|counterV|auto_generated|safe_q\(6)) # ((\vga1|LessThan7~0_combout\ & \vga1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(5),
	datab => \vga1|LessThan7~0_combout\,
	datac => \vga1|Equal2~0_combout\,
	datad => \vga1|counterV|auto_generated|safe_q\(6),
	combout => \vga1|VSYNC~0_combout\);

-- Location: LCCOMB_X39_Y20_N24
\vga1|HSYNC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|HSYNC~2_combout\ = (\vga1|counterH|auto_generated|safe_q\(10) & ((\vga1|counterH|auto_generated|safe_q\(5)) # ((\vga1|counterH|auto_generated|safe_q\(4))))) # (!\vga1|counterH|auto_generated|safe_q\(10) & (\vga1|counterH|auto_generated|safe_q\(5) & 
-- (\vga1|counterH|auto_generated|safe_q\(4) & \vga1|counterH|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(10),
	datab => \vga1|counterH|auto_generated|safe_q\(5),
	datac => \vga1|counterH|auto_generated|safe_q\(4),
	datad => \vga1|counterH|auto_generated|safe_q\(6),
	combout => \vga1|HSYNC~2_combout\);

-- Location: LCFF_X40_Y20_N1
\font_col_clk_sig[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|COLUMN[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => font_col_clk_sig(0));

-- Location: LCFF_X40_Y20_N11
\font_col_clk_sig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|COLUMN[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => font_col_clk_sig(1));

-- Location: LCCOMB_X40_Y20_N4
\rom|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rom|Mux0~0_combout\ = (font_col_clk_sig(1) & ((font_col_clk_sig(0)) # ((\rom|ROM_rtl_0|auto_generated|ram_block1a1~portadataout\)))) # (!font_col_clk_sig(1) & (!font_col_clk_sig(0) & (\rom|ROM_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => font_col_clk_sig(1),
	datab => font_col_clk_sig(0),
	datac => \rom|ROM_rtl_0|auto_generated|ram_block1a3\,
	datad => \rom|ROM_rtl_0|auto_generated|ram_block1a1~portadataout\,
	combout => \rom|Mux0~0_combout\);

-- Location: LCCOMB_X40_Y20_N30
\rom|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rom|Mux0~1_combout\ = (\rom|Mux0~0_combout\ & (((\rom|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\) # (!font_col_clk_sig(0))))) # (!\rom|Mux0~0_combout\ & (\rom|ROM_rtl_0|auto_generated|ram_block1a2\ & ((font_col_clk_sig(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|ROM_rtl_0|auto_generated|ram_block1a2\,
	datab => \rom|Mux0~0_combout\,
	datac => \rom|ROM_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => font_col_clk_sig(0),
	combout => \rom|Mux0~1_combout\);

-- Location: LCCOMB_X40_Y20_N16
\rom|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rom|Mux0~2_combout\ = (font_col_clk_sig(1) & (font_col_clk_sig(0))) # (!font_col_clk_sig(1) & ((font_col_clk_sig(0) & (\rom|ROM_rtl_0|auto_generated|ram_block1a6\)) # (!font_col_clk_sig(0) & ((\rom|ROM_rtl_0|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => font_col_clk_sig(1),
	datab => font_col_clk_sig(0),
	datac => \rom|ROM_rtl_0|auto_generated|ram_block1a6\,
	datad => \rom|ROM_rtl_0|auto_generated|ram_block1a7\,
	combout => \rom|Mux0~2_combout\);

-- Location: LCCOMB_X40_Y20_N18
\rom|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rom|Mux0~3_combout\ = (font_col_clk_sig(1) & ((\rom|Mux0~2_combout\ & ((\rom|ROM_rtl_0|auto_generated|ram_block1a4~portadataout\))) # (!\rom|Mux0~2_combout\ & (\rom|ROM_rtl_0|auto_generated|ram_block1a5~portadataout\)))) # (!font_col_clk_sig(1) & 
-- (((\rom|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => font_col_clk_sig(1),
	datab => \rom|ROM_rtl_0|auto_generated|ram_block1a5~portadataout\,
	datac => \rom|Mux0~2_combout\,
	datad => \rom|ROM_rtl_0|auto_generated|ram_block1a4~portadataout\,
	combout => \rom|Mux0~3_combout\);

-- Location: LCFF_X40_Y20_N21
\font_col_clk_sig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|COLUMN[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => font_col_clk_sig(2));

-- Location: LCCOMB_X40_Y20_N14
\R~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \R~0_combout\ = (font_col_clk_sig(2) & ((\rom|Mux0~1_combout\))) # (!font_col_clk_sig(2) & (\rom|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom|Mux0~3_combout\,
	datac => font_col_clk_sig(2),
	datad => \rom|Mux0~1_combout\,
	combout => \R~0_combout\);

-- Location: LCCOMB_X39_Y18_N2
\vga1|BLANKING~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|BLANKING~1_combout\ = (\vga1|counterV|auto_generated|safe_q\(5)) # ((\vga1|counterV|auto_generated|safe_q\(6)) # ((\vga1|counterV|auto_generated|safe_q\(4)) # (\vga1|counterV|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(5),
	datab => \vga1|counterV|auto_generated|safe_q\(6),
	datac => \vga1|counterV|auto_generated|safe_q\(4),
	datad => \vga1|counterV|auto_generated|safe_q\(3),
	combout => \vga1|BLANKING~1_combout\);

-- Location: LCCOMB_X38_Y20_N10
\vga1|COLUMN~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|COLUMN~0_combout\ = (\vga1|counterH|auto_generated|safe_q\(5)) # (((\vga1|counterH|auto_generated|safe_q\(4) & !\vga1|Equal0~1_combout\)) # (!\vga1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(5),
	datab => \vga1|Equal0~0_combout\,
	datac => \vga1|counterH|auto_generated|safe_q\(4),
	datad => \vga1|Equal0~1_combout\,
	combout => \vga1|COLUMN~0_combout\);

-- Location: LCCOMB_X37_Y20_N10
\vga1|COLUMN[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|COLUMN[5]~4_combout\ = (!\vga1|COLUMN~1_combout\ & (\vga1|counterH|auto_generated|safe_q\(5) $ (\vga1|counterH|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|COLUMN~1_combout\,
	datac => \vga1|counterH|auto_generated|safe_q\(5),
	datad => \vga1|counterH|auto_generated|safe_q\(4),
	combout => \vga1|COLUMN[5]~4_combout\);

-- Location: LCCOMB_X39_Y18_N26
\vga1|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Equal2~2_combout\ = (\vga1|counterV|auto_generated|safe_q\(7) & (!\vga1|counterV|auto_generated|safe_q\(8) & (\vga1|counterV|auto_generated|safe_q\(9) & !\vga1|counterV|auto_generated|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(7),
	datab => \vga1|counterV|auto_generated|safe_q\(8),
	datac => \vga1|counterV|auto_generated|safe_q\(9),
	datad => \vga1|counterV|auto_generated|safe_q\(2),
	combout => \vga1|Equal2~2_combout\);

-- Location: LCCOMB_X38_Y20_N30
\vga1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Equal0~2_combout\ = (\vga1|counterH|auto_generated|safe_q\(4) & \vga1|counterH|auto_generated|safe_q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|counterH|auto_generated|safe_q\(4),
	datad => \vga1|counterH|auto_generated|safe_q\(10),
	combout => \vga1|Equal0~2_combout\);

-- Location: LCFF_X40_Y18_N25
\font_row_clk_sig[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|ROW[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => font_row_clk_sig(0));

-- Location: LCFF_X40_Y18_N19
\font_row_clk_sig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|ROW[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => font_row_clk_sig(1));

-- Location: LCFF_X40_Y18_N29
\font_row_clk_sig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|ROW[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => font_row_clk_sig(2));

-- Location: LCFF_X40_Y18_N31
\font_row_clk_sig[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|ROW[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => font_row_clk_sig(3));

-- Location: LCFF_X42_Y19_N9
\score_sig[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \score_sig[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score_sig(0));

-- Location: LCCOMB_X37_Y20_N4
\text_gen|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~1_combout\ = (\vga1|COLUMN~1_combout\) # ((\vga1|counterH|auto_generated|safe_q\(4) & (!\vga1|Add1~1_combout\ & score_sig(0))) # (!\vga1|counterH|auto_generated|safe_q\(4) & (\vga1|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(4),
	datab => \vga1|COLUMN~1_combout\,
	datac => \vga1|Add1~1_combout\,
	datad => score_sig(0),
	combout => \text_gen|Mux6~1_combout\);

-- Location: LCCOMB_X39_Y19_N0
\text_gen|LessThan35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|LessThan35~0_combout\ = (!\life~combout\(0) & (!\life~combout\(2) & !\life~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \life~combout\(0),
	datac => \life~combout\(2),
	datad => \life~combout\(1),
	combout => \text_gen|LessThan35~0_combout\);

-- Location: LCCOMB_X37_Y20_N6
\text_gen|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~2_combout\ = (\vga1|COLUMN[5]~4_combout\ & (!\text_gen|LessThan35~0_combout\ & ((\text_gen|Mux6~0_combout\)))) # (!\vga1|COLUMN[5]~4_combout\ & ((\text_gen|Mux6~1_combout\) # ((!\text_gen|LessThan35~0_combout\ & 
-- \text_gen|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|LessThan35~0_combout\,
	datac => \text_gen|Mux6~1_combout\,
	datad => \text_gen|Mux6~0_combout\,
	combout => \text_gen|Mux6~2_combout\);

-- Location: LCCOMB_X32_Y20_N0
\text_gen|bcd~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~12_combout\ = (score_sig(12) & (score_sig(14) $ (((score_sig(13)) # (!score_sig(15)))))) # (!score_sig(12) & ((score_sig(15) & (!score_sig(13) & !score_sig(14))) # (!score_sig(15) & (score_sig(13) & score_sig(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(12),
	datab => score_sig(15),
	datac => score_sig(13),
	datad => score_sig(14),
	combout => \text_gen|bcd~12_combout\);

-- Location: LCCOMB_X33_Y20_N0
\text_gen|bcd~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~13_combout\ = (score_sig(12) & (score_sig(15) & (!score_sig(13) & !score_sig(14)))) # (!score_sig(12) & (score_sig(14) & (score_sig(15) $ (!score_sig(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(15),
	datab => score_sig(12),
	datac => score_sig(13),
	datad => score_sig(14),
	combout => \text_gen|bcd~13_combout\);

-- Location: LCCOMB_X33_Y20_N2
\text_gen|bcd~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~14_combout\ = (score_sig(15) & (!score_sig(13) & ((score_sig(14)) # (!score_sig(12))))) # (!score_sig(15) & (score_sig(13) & ((score_sig(12)) # (!score_sig(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(15),
	datab => score_sig(12),
	datac => score_sig(13),
	datad => score_sig(14),
	combout => \text_gen|bcd~14_combout\);

-- Location: LCCOMB_X33_Y20_N20
\text_gen|bcd~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~15_combout\ = (score_sig(11) & (!\text_gen|bcd~13_combout\ & ((!\text_gen|bcd~14_combout\)))) # (!score_sig(11) & ((\text_gen|bcd~13_combout\) # ((\text_gen|bcd~12_combout\ & \text_gen|bcd~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(11),
	datab => \text_gen|bcd~13_combout\,
	datac => \text_gen|bcd~12_combout\,
	datad => \text_gen|bcd~14_combout\,
	combout => \text_gen|bcd~15_combout\);

-- Location: LCCOMB_X33_Y20_N30
\text_gen|bcd~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~16_combout\ = (\text_gen|bcd~14_combout\ & (!score_sig(11) & ((!\text_gen|bcd~12_combout\)))) # (!\text_gen|bcd~14_combout\ & (\text_gen|bcd~13_combout\ & ((score_sig(11)) # (\text_gen|bcd~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(11),
	datab => \text_gen|bcd~13_combout\,
	datac => \text_gen|bcd~12_combout\,
	datad => \text_gen|bcd~14_combout\,
	combout => \text_gen|bcd~16_combout\);

-- Location: LCCOMB_X33_Y20_N8
\text_gen|bcd~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~17_combout\ = (score_sig(11) & (((\text_gen|bcd~12_combout\)))) # (!score_sig(11) & ((\text_gen|bcd~13_combout\ & (!\text_gen|bcd~12_combout\)) # (!\text_gen|bcd~13_combout\ & (\text_gen|bcd~12_combout\ & !\text_gen|bcd~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(11),
	datab => \text_gen|bcd~13_combout\,
	datac => \text_gen|bcd~12_combout\,
	datad => \text_gen|bcd~14_combout\,
	combout => \text_gen|bcd~17_combout\);

-- Location: LCCOMB_X33_Y20_N26
\text_gen|bcd~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~18_combout\ = (score_sig(10) & (!\text_gen|bcd~17_combout\ & ((!\text_gen|bcd~16_combout\)))) # (!score_sig(10) & ((\text_gen|bcd~16_combout\) # ((\text_gen|bcd~17_combout\ & \text_gen|bcd~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(10),
	datab => \text_gen|bcd~17_combout\,
	datac => \text_gen|bcd~15_combout\,
	datad => \text_gen|bcd~16_combout\,
	combout => \text_gen|bcd~18_combout\);

-- Location: LCCOMB_X33_Y20_N4
\text_gen|bcd~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~19_combout\ = (\text_gen|bcd~17_combout\ & (!score_sig(10) & (!\text_gen|bcd~15_combout\))) # (!\text_gen|bcd~17_combout\ & (\text_gen|bcd~16_combout\ & ((score_sig(10)) # (\text_gen|bcd~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(10),
	datab => \text_gen|bcd~17_combout\,
	datac => \text_gen|bcd~15_combout\,
	datad => \text_gen|bcd~16_combout\,
	combout => \text_gen|bcd~19_combout\);

-- Location: LCCOMB_X33_Y20_N22
\text_gen|bcd~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~20_combout\ = (score_sig(10) & (((\text_gen|bcd~15_combout\)))) # (!score_sig(10) & ((\text_gen|bcd~15_combout\ & (!\text_gen|bcd~17_combout\ & !\text_gen|bcd~16_combout\)) # (!\text_gen|bcd~15_combout\ & ((\text_gen|bcd~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(10),
	datab => \text_gen|bcd~17_combout\,
	datac => \text_gen|bcd~15_combout\,
	datad => \text_gen|bcd~16_combout\,
	combout => \text_gen|bcd~20_combout\);

-- Location: LCCOMB_X33_Y20_N24
\text_gen|bcd~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~21_combout\ = (score_sig(9) & (!\text_gen|bcd~20_combout\ & (!\text_gen|bcd~19_combout\))) # (!score_sig(9) & ((\text_gen|bcd~19_combout\) # ((\text_gen|bcd~20_combout\ & \text_gen|bcd~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(9),
	datab => \text_gen|bcd~20_combout\,
	datac => \text_gen|bcd~19_combout\,
	datad => \text_gen|bcd~18_combout\,
	combout => \text_gen|bcd~21_combout\);

-- Location: LCCOMB_X33_Y20_N10
\text_gen|bcd~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~22_combout\ = (\text_gen|bcd~20_combout\ & (!score_sig(9) & ((!\text_gen|bcd~18_combout\)))) # (!\text_gen|bcd~20_combout\ & (\text_gen|bcd~19_combout\ & ((score_sig(9)) # (\text_gen|bcd~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(9),
	datab => \text_gen|bcd~20_combout\,
	datac => \text_gen|bcd~19_combout\,
	datad => \text_gen|bcd~18_combout\,
	combout => \text_gen|bcd~22_combout\);

-- Location: LCCOMB_X33_Y20_N12
\text_gen|bcd~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~23_combout\ = (score_sig(9) & (((\text_gen|bcd~18_combout\)))) # (!score_sig(9) & ((\text_gen|bcd~19_combout\ & ((!\text_gen|bcd~18_combout\))) # (!\text_gen|bcd~19_combout\ & (!\text_gen|bcd~20_combout\ & \text_gen|bcd~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(9),
	datab => \text_gen|bcd~20_combout\,
	datac => \text_gen|bcd~19_combout\,
	datad => \text_gen|bcd~18_combout\,
	combout => \text_gen|bcd~23_combout\);

-- Location: LCCOMB_X35_Y20_N0
\text_gen|bcd~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~24_combout\ = (\text_gen|bcd~22_combout\ & (!score_sig(8))) # (!\text_gen|bcd~22_combout\ & ((score_sig(8) & ((!\text_gen|bcd~23_combout\))) # (!score_sig(8) & (\text_gen|bcd~21_combout\ & \text_gen|bcd~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~22_combout\,
	datab => score_sig(8),
	datac => \text_gen|bcd~21_combout\,
	datad => \text_gen|bcd~23_combout\,
	combout => \text_gen|bcd~24_combout\);

-- Location: LCCOMB_X33_Y20_N6
\text_gen|bcd~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~25_combout\ = (\text_gen|bcd~23_combout\ & (((!score_sig(8) & !\text_gen|bcd~21_combout\)))) # (!\text_gen|bcd~23_combout\ & (\text_gen|bcd~22_combout\ & ((score_sig(8)) # (\text_gen|bcd~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~22_combout\,
	datab => score_sig(8),
	datac => \text_gen|bcd~21_combout\,
	datad => \text_gen|bcd~23_combout\,
	combout => \text_gen|bcd~25_combout\);

-- Location: LCCOMB_X35_Y20_N26
\text_gen|bcd~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~26_combout\ = (\text_gen|bcd~22_combout\ & (score_sig(8) $ ((!\text_gen|bcd~21_combout\)))) # (!\text_gen|bcd~22_combout\ & (\text_gen|bcd~21_combout\ & ((score_sig(8)) # (!\text_gen|bcd~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~22_combout\,
	datab => score_sig(8),
	datac => \text_gen|bcd~21_combout\,
	datad => \text_gen|bcd~23_combout\,
	combout => \text_gen|bcd~26_combout\);

-- Location: LCCOMB_X35_Y20_N20
\text_gen|bcd~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~27_combout\ = (score_sig(7) & (((!\text_gen|bcd~25_combout\ & !\text_gen|bcd~26_combout\)))) # (!score_sig(7) & ((\text_gen|bcd~25_combout\) # ((\text_gen|bcd~24_combout\ & \text_gen|bcd~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(7),
	datab => \text_gen|bcd~24_combout\,
	datac => \text_gen|bcd~25_combout\,
	datad => \text_gen|bcd~26_combout\,
	combout => \text_gen|bcd~27_combout\);

-- Location: LCCOMB_X35_Y20_N22
\text_gen|bcd~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~28_combout\ = (\text_gen|bcd~26_combout\ & (!score_sig(7) & (!\text_gen|bcd~24_combout\))) # (!\text_gen|bcd~26_combout\ & (\text_gen|bcd~25_combout\ & ((score_sig(7)) # (\text_gen|bcd~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(7),
	datab => \text_gen|bcd~24_combout\,
	datac => \text_gen|bcd~25_combout\,
	datad => \text_gen|bcd~26_combout\,
	combout => \text_gen|bcd~28_combout\);

-- Location: LCCOMB_X35_Y20_N24
\text_gen|bcd~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~29_combout\ = (score_sig(7) & (\text_gen|bcd~24_combout\)) # (!score_sig(7) & ((\text_gen|bcd~24_combout\ & (!\text_gen|bcd~25_combout\ & !\text_gen|bcd~26_combout\)) # (!\text_gen|bcd~24_combout\ & (\text_gen|bcd~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(7),
	datab => \text_gen|bcd~24_combout\,
	datac => \text_gen|bcd~25_combout\,
	datad => \text_gen|bcd~26_combout\,
	combout => \text_gen|bcd~29_combout\);

-- Location: LCCOMB_X35_Y20_N2
\text_gen|bcd~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~30_combout\ = (\text_gen|bcd~29_combout\ & (!score_sig(6) & ((\text_gen|bcd~28_combout\) # (\text_gen|bcd~27_combout\)))) # (!\text_gen|bcd~29_combout\ & (\text_gen|bcd~28_combout\ $ (((score_sig(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~29_combout\,
	datab => \text_gen|bcd~28_combout\,
	datac => \text_gen|bcd~27_combout\,
	datad => score_sig(6),
	combout => \text_gen|bcd~30_combout\);

-- Location: LCCOMB_X35_Y20_N4
\text_gen|bcd~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~31_combout\ = (\text_gen|bcd~29_combout\ & (((!\text_gen|bcd~27_combout\ & !score_sig(6))))) # (!\text_gen|bcd~29_combout\ & (\text_gen|bcd~28_combout\ & ((\text_gen|bcd~27_combout\) # (score_sig(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~29_combout\,
	datab => \text_gen|bcd~28_combout\,
	datac => \text_gen|bcd~27_combout\,
	datad => score_sig(6),
	combout => \text_gen|bcd~31_combout\);

-- Location: LCCOMB_X35_Y20_N6
\text_gen|bcd~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~32_combout\ = (\text_gen|bcd~28_combout\ & ((\text_gen|bcd~27_combout\ $ (!score_sig(6))))) # (!\text_gen|bcd~28_combout\ & (\text_gen|bcd~27_combout\ & ((score_sig(6)) # (!\text_gen|bcd~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~29_combout\,
	datab => \text_gen|bcd~28_combout\,
	datac => \text_gen|bcd~27_combout\,
	datad => score_sig(6),
	combout => \text_gen|bcd~32_combout\);

-- Location: LCCOMB_X35_Y20_N8
\text_gen|bcd~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~33_combout\ = (score_sig(5) & (((!\text_gen|bcd~31_combout\ & !\text_gen|bcd~32_combout\)))) # (!score_sig(5) & ((\text_gen|bcd~31_combout\) # ((\text_gen|bcd~30_combout\ & \text_gen|bcd~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(5),
	datab => \text_gen|bcd~30_combout\,
	datac => \text_gen|bcd~31_combout\,
	datad => \text_gen|bcd~32_combout\,
	combout => \text_gen|bcd~33_combout\);

-- Location: LCCOMB_X35_Y20_N18
\text_gen|bcd~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~34_combout\ = (\text_gen|bcd~32_combout\ & (!score_sig(5) & (!\text_gen|bcd~30_combout\))) # (!\text_gen|bcd~32_combout\ & (\text_gen|bcd~31_combout\ & ((score_sig(5)) # (\text_gen|bcd~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(5),
	datab => \text_gen|bcd~30_combout\,
	datac => \text_gen|bcd~31_combout\,
	datad => \text_gen|bcd~32_combout\,
	combout => \text_gen|bcd~34_combout\);

-- Location: LCCOMB_X35_Y20_N28
\text_gen|bcd~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~35_combout\ = (score_sig(5) & (\text_gen|bcd~30_combout\)) # (!score_sig(5) & ((\text_gen|bcd~30_combout\ & (!\text_gen|bcd~31_combout\ & !\text_gen|bcd~32_combout\)) # (!\text_gen|bcd~30_combout\ & (\text_gen|bcd~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(5),
	datab => \text_gen|bcd~30_combout\,
	datac => \text_gen|bcd~31_combout\,
	datad => \text_gen|bcd~32_combout\,
	combout => \text_gen|bcd~35_combout\);

-- Location: LCCOMB_X36_Y20_N0
\text_gen|bcd~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~36_combout\ = (\text_gen|bcd~34_combout\ & (((!score_sig(4))))) # (!\text_gen|bcd~34_combout\ & ((score_sig(4) & ((!\text_gen|bcd~35_combout\))) # (!score_sig(4) & (\text_gen|bcd~33_combout\ & \text_gen|bcd~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~33_combout\,
	datab => \text_gen|bcd~34_combout\,
	datac => score_sig(4),
	datad => \text_gen|bcd~35_combout\,
	combout => \text_gen|bcd~36_combout\);

-- Location: LCCOMB_X35_Y20_N30
\text_gen|bcd~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~37_combout\ = (\text_gen|bcd~35_combout\ & (!score_sig(4) & ((!\text_gen|bcd~33_combout\)))) # (!\text_gen|bcd~35_combout\ & (\text_gen|bcd~34_combout\ & ((score_sig(4)) # (\text_gen|bcd~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(4),
	datab => \text_gen|bcd~34_combout\,
	datac => \text_gen|bcd~33_combout\,
	datad => \text_gen|bcd~35_combout\,
	combout => \text_gen|bcd~37_combout\);

-- Location: LCCOMB_X35_Y20_N16
\text_gen|bcd~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~38_combout\ = (score_sig(4) & (((\text_gen|bcd~33_combout\)))) # (!score_sig(4) & ((\text_gen|bcd~34_combout\ & (!\text_gen|bcd~33_combout\)) # (!\text_gen|bcd~34_combout\ & (\text_gen|bcd~33_combout\ & !\text_gen|bcd~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(4),
	datab => \text_gen|bcd~34_combout\,
	datac => \text_gen|bcd~33_combout\,
	datad => \text_gen|bcd~35_combout\,
	combout => \text_gen|bcd~38_combout\);

-- Location: LCCOMB_X36_Y20_N26
\text_gen|bcd~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~39_combout\ = (score_sig(3) & (!\text_gen|bcd~38_combout\ & (!\text_gen|bcd~37_combout\))) # (!score_sig(3) & ((\text_gen|bcd~37_combout\) # ((\text_gen|bcd~38_combout\ & \text_gen|bcd~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(3),
	datab => \text_gen|bcd~38_combout\,
	datac => \text_gen|bcd~37_combout\,
	datad => \text_gen|bcd~36_combout\,
	combout => \text_gen|bcd~39_combout\);

-- Location: LCCOMB_X36_Y20_N20
\text_gen|bcd~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~40_combout\ = (\text_gen|bcd~38_combout\ & (!score_sig(3) & ((!\text_gen|bcd~36_combout\)))) # (!\text_gen|bcd~38_combout\ & (\text_gen|bcd~37_combout\ & ((score_sig(3)) # (\text_gen|bcd~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(3),
	datab => \text_gen|bcd~38_combout\,
	datac => \text_gen|bcd~37_combout\,
	datad => \text_gen|bcd~36_combout\,
	combout => \text_gen|bcd~40_combout\);

-- Location: LCCOMB_X36_Y20_N30
\text_gen|bcd~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~41_combout\ = (score_sig(3) & (((\text_gen|bcd~36_combout\)))) # (!score_sig(3) & ((\text_gen|bcd~37_combout\ & ((!\text_gen|bcd~36_combout\))) # (!\text_gen|bcd~37_combout\ & (!\text_gen|bcd~38_combout\ & \text_gen|bcd~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(3),
	datab => \text_gen|bcd~38_combout\,
	datac => \text_gen|bcd~37_combout\,
	datad => \text_gen|bcd~36_combout\,
	combout => \text_gen|bcd~41_combout\);

-- Location: LCCOMB_X36_Y20_N24
\text_gen|bcd~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~42_combout\ = (\text_gen|bcd~40_combout\) # ((\text_gen|bcd~41_combout\ & ((score_sig(2)) # (\text_gen|bcd~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(2),
	datab => \text_gen|bcd~39_combout\,
	datac => \text_gen|bcd~40_combout\,
	datad => \text_gen|bcd~41_combout\,
	combout => \text_gen|bcd~42_combout\);

-- Location: LCCOMB_X36_Y20_N2
\text_gen|Add30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Add30~0_combout\ = (score_sig(2) & (\text_gen|bcd~39_combout\ & ((score_sig(1)) # (!\text_gen|bcd~42_combout\)))) # (!score_sig(2) & ((\text_gen|bcd~42_combout\ & ((!\text_gen|bcd~39_combout\))) # (!\text_gen|bcd~42_combout\ & (score_sig(1) & 
-- \text_gen|bcd~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(2),
	datab => score_sig(1),
	datac => \text_gen|bcd~42_combout\,
	datad => \text_gen|bcd~39_combout\,
	combout => \text_gen|Add30~0_combout\);

-- Location: LCCOMB_X36_Y20_N12
\text_gen|bcd~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~43_combout\ = (\text_gen|bcd~41_combout\ & (!score_sig(2) & (!\text_gen|bcd~39_combout\))) # (!\text_gen|bcd~41_combout\ & (\text_gen|bcd~40_combout\ & ((score_sig(2)) # (\text_gen|bcd~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(2),
	datab => \text_gen|bcd~39_combout\,
	datac => \text_gen|bcd~40_combout\,
	datad => \text_gen|bcd~41_combout\,
	combout => \text_gen|bcd~43_combout\);

-- Location: LCCOMB_X36_Y20_N14
\text_gen|score_BCD_sig[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|score_BCD_sig[4]~0_combout\ = \text_gen|bcd~43_combout\ $ (!\text_gen|Add30~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~43_combout\,
	datad => \text_gen|Add30~0_combout\,
	combout => \text_gen|score_BCD_sig[4]~0_combout\);

-- Location: LCCOMB_X36_Y20_N16
\text_gen|bcd~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~44_combout\ = \text_gen|bcd~40_combout\ $ ((((!score_sig(2) & !\text_gen|bcd~39_combout\)) # (!\text_gen|bcd~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(2),
	datab => \text_gen|bcd~39_combout\,
	datac => \text_gen|bcd~40_combout\,
	datad => \text_gen|bcd~41_combout\,
	combout => \text_gen|bcd~44_combout\);

-- Location: LCCOMB_X33_Y20_N16
\text_gen|bcd~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~45_combout\ = \text_gen|bcd~16_combout\ $ ((((!score_sig(10) & !\text_gen|bcd~15_combout\)) # (!\text_gen|bcd~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(10),
	datab => \text_gen|bcd~17_combout\,
	datac => \text_gen|bcd~15_combout\,
	datad => \text_gen|bcd~16_combout\,
	combout => \text_gen|bcd~45_combout\);

-- Location: LCCOMB_X34_Y20_N24
\text_gen|bcd~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~46_combout\ = (\text_gen|bcd~116_combout\ & ((\text_gen|bcd~117_combout\ & ((\text_gen|bcd~115_combout\) # (!\text_gen|bcd~45_combout\))) # (!\text_gen|bcd~117_combout\ & ((\text_gen|bcd~45_combout\) # (!\text_gen|bcd~115_combout\))))) # 
-- (!\text_gen|bcd~116_combout\ & (\text_gen|bcd~45_combout\ $ (((!\text_gen|bcd~117_combout\ & \text_gen|bcd~115_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~116_combout\,
	datab => \text_gen|bcd~117_combout\,
	datac => \text_gen|bcd~115_combout\,
	datad => \text_gen|bcd~45_combout\,
	combout => \text_gen|bcd~46_combout\);

-- Location: LCCOMB_X34_Y20_N26
\text_gen|bcd~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~47_combout\ = (\text_gen|bcd~116_combout\ & (\text_gen|bcd~45_combout\ & (\text_gen|bcd~117_combout\ $ (!\text_gen|bcd~115_combout\)))) # (!\text_gen|bcd~116_combout\ & (!\text_gen|bcd~117_combout\ & (\text_gen|bcd~115_combout\ & 
-- !\text_gen|bcd~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~116_combout\,
	datab => \text_gen|bcd~117_combout\,
	datac => \text_gen|bcd~115_combout\,
	datad => \text_gen|bcd~45_combout\,
	combout => \text_gen|bcd~47_combout\);

-- Location: LCCOMB_X33_Y20_N18
\text_gen|bcd~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~48_combout\ = \text_gen|bcd~19_combout\ $ ((((!score_sig(9) & !\text_gen|bcd~18_combout\)) # (!\text_gen|bcd~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(9),
	datab => \text_gen|bcd~20_combout\,
	datac => \text_gen|bcd~19_combout\,
	datad => \text_gen|bcd~18_combout\,
	combout => \text_gen|bcd~48_combout\);

-- Location: LCCOMB_X34_Y20_N12
\text_gen|bcd~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~49_combout\ = (\text_gen|bcd~11_combout\ & (((\text_gen|bcd~46_combout\ & !\text_gen|bcd~47_combout\)) # (!\text_gen|bcd~48_combout\))) # (!\text_gen|bcd~11_combout\ & (\text_gen|bcd~48_combout\ $ (((\text_gen|bcd~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~11_combout\,
	datab => \text_gen|bcd~48_combout\,
	datac => \text_gen|bcd~46_combout\,
	datad => \text_gen|bcd~47_combout\,
	combout => \text_gen|bcd~49_combout\);

-- Location: LCCOMB_X34_Y20_N14
\text_gen|bcd~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~50_combout\ = (\text_gen|bcd~48_combout\ & ((\text_gen|bcd~46_combout\ & ((!\text_gen|bcd~47_combout\))) # (!\text_gen|bcd~46_combout\ & ((\text_gen|bcd~11_combout\) # (\text_gen|bcd~47_combout\))))) # (!\text_gen|bcd~48_combout\ & 
-- (((\text_gen|bcd~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~11_combout\,
	datab => \text_gen|bcd~48_combout\,
	datac => \text_gen|bcd~46_combout\,
	datad => \text_gen|bcd~47_combout\,
	combout => \text_gen|bcd~50_combout\);

-- Location: LCCOMB_X34_Y20_N16
\text_gen|bcd~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~51_combout\ = (\text_gen|bcd~11_combout\ & (\text_gen|bcd~48_combout\ & (\text_gen|bcd~46_combout\))) # (!\text_gen|bcd~11_combout\ & (\text_gen|bcd~47_combout\ & ((!\text_gen|bcd~46_combout\) # (!\text_gen|bcd~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~11_combout\,
	datab => \text_gen|bcd~48_combout\,
	datac => \text_gen|bcd~46_combout\,
	datad => \text_gen|bcd~47_combout\,
	combout => \text_gen|bcd~51_combout\);

-- Location: LCCOMB_X33_Y20_N28
\text_gen|bcd~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~52_combout\ = \text_gen|bcd~22_combout\ $ ((((!score_sig(8) & !\text_gen|bcd~21_combout\)) # (!\text_gen|bcd~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~22_combout\,
	datab => score_sig(8),
	datac => \text_gen|bcd~21_combout\,
	datad => \text_gen|bcd~23_combout\,
	combout => \text_gen|bcd~52_combout\);

-- Location: LCCOMB_X35_Y19_N0
\text_gen|bcd~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~53_combout\ = (\text_gen|bcd~52_combout\ & (!\text_gen|bcd~51_combout\ & ((\text_gen|bcd~50_combout\) # (\text_gen|bcd~49_combout\)))) # (!\text_gen|bcd~52_combout\ & ((\text_gen|bcd~51_combout\) # ((!\text_gen|bcd~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~52_combout\,
	datab => \text_gen|bcd~51_combout\,
	datac => \text_gen|bcd~50_combout\,
	datad => \text_gen|bcd~49_combout\,
	combout => \text_gen|bcd~53_combout\);

-- Location: LCCOMB_X35_Y19_N10
\text_gen|bcd~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~54_combout\ = (\text_gen|bcd~52_combout\ & ((\text_gen|bcd~51_combout\ & ((!\text_gen|bcd~49_combout\))) # (!\text_gen|bcd~51_combout\ & ((\text_gen|bcd~49_combout\) # (!\text_gen|bcd~50_combout\))))) # (!\text_gen|bcd~52_combout\ & 
-- (((\text_gen|bcd~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~52_combout\,
	datab => \text_gen|bcd~51_combout\,
	datac => \text_gen|bcd~50_combout\,
	datad => \text_gen|bcd~49_combout\,
	combout => \text_gen|bcd~54_combout\);

-- Location: LCCOMB_X35_Y19_N20
\text_gen|bcd~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~55_combout\ = (\text_gen|bcd~50_combout\ & (\text_gen|bcd~51_combout\ & ((!\text_gen|bcd~49_combout\) # (!\text_gen|bcd~52_combout\)))) # (!\text_gen|bcd~50_combout\ & (\text_gen|bcd~52_combout\ & ((\text_gen|bcd~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~52_combout\,
	datab => \text_gen|bcd~51_combout\,
	datac => \text_gen|bcd~50_combout\,
	datad => \text_gen|bcd~49_combout\,
	combout => \text_gen|bcd~55_combout\);

-- Location: LCCOMB_X35_Y20_N10
\text_gen|bcd~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~56_combout\ = \text_gen|bcd~25_combout\ $ ((((!score_sig(7) & !\text_gen|bcd~24_combout\)) # (!\text_gen|bcd~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(7),
	datab => \text_gen|bcd~24_combout\,
	datac => \text_gen|bcd~25_combout\,
	datad => \text_gen|bcd~26_combout\,
	combout => \text_gen|bcd~56_combout\);

-- Location: LCCOMB_X35_Y19_N6
\text_gen|bcd~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~57_combout\ = (\text_gen|bcd~54_combout\ & ((\text_gen|bcd~55_combout\ $ (\text_gen|bcd~56_combout\)))) # (!\text_gen|bcd~54_combout\ & (((\text_gen|bcd~53_combout\ & !\text_gen|bcd~55_combout\)) # (!\text_gen|bcd~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~54_combout\,
	datab => \text_gen|bcd~53_combout\,
	datac => \text_gen|bcd~55_combout\,
	datad => \text_gen|bcd~56_combout\,
	combout => \text_gen|bcd~57_combout\);

-- Location: LCCOMB_X35_Y19_N8
\text_gen|bcd~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~58_combout\ = (\text_gen|bcd~53_combout\ & (((!\text_gen|bcd~56_combout\) # (!\text_gen|bcd~55_combout\)))) # (!\text_gen|bcd~53_combout\ & (\text_gen|bcd~56_combout\ & ((\text_gen|bcd~55_combout\) # (!\text_gen|bcd~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~54_combout\,
	datab => \text_gen|bcd~53_combout\,
	datac => \text_gen|bcd~55_combout\,
	datad => \text_gen|bcd~56_combout\,
	combout => \text_gen|bcd~58_combout\);

-- Location: LCCOMB_X35_Y19_N26
\text_gen|bcd~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~59_combout\ = (\text_gen|bcd~54_combout\ & (\text_gen|bcd~55_combout\ & ((!\text_gen|bcd~56_combout\) # (!\text_gen|bcd~53_combout\)))) # (!\text_gen|bcd~54_combout\ & (\text_gen|bcd~53_combout\ & ((\text_gen|bcd~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~54_combout\,
	datab => \text_gen|bcd~53_combout\,
	datac => \text_gen|bcd~55_combout\,
	datad => \text_gen|bcd~56_combout\,
	combout => \text_gen|bcd~59_combout\);

-- Location: LCCOMB_X35_Y20_N12
\text_gen|bcd~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~60_combout\ = \text_gen|bcd~28_combout\ $ ((((!\text_gen|bcd~27_combout\ & !score_sig(6))) # (!\text_gen|bcd~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~29_combout\,
	datab => \text_gen|bcd~28_combout\,
	datac => \text_gen|bcd~27_combout\,
	datad => score_sig(6),
	combout => \text_gen|bcd~60_combout\);

-- Location: LCCOMB_X35_Y19_N12
\text_gen|bcd~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~61_combout\ = (\text_gen|bcd~60_combout\ & (!\text_gen|bcd~59_combout\ & ((\text_gen|bcd~57_combout\) # (\text_gen|bcd~58_combout\)))) # (!\text_gen|bcd~60_combout\ & (((\text_gen|bcd~59_combout\) # (!\text_gen|bcd~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~57_combout\,
	datab => \text_gen|bcd~60_combout\,
	datac => \text_gen|bcd~58_combout\,
	datad => \text_gen|bcd~59_combout\,
	combout => \text_gen|bcd~61_combout\);

-- Location: LCCOMB_X35_Y19_N14
\text_gen|bcd~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~62_combout\ = (\text_gen|bcd~57_combout\ & (((!\text_gen|bcd~60_combout\)) # (!\text_gen|bcd~59_combout\))) # (!\text_gen|bcd~57_combout\ & (\text_gen|bcd~60_combout\ & ((\text_gen|bcd~59_combout\) # (!\text_gen|bcd~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~57_combout\,
	datab => \text_gen|bcd~59_combout\,
	datac => \text_gen|bcd~58_combout\,
	datad => \text_gen|bcd~60_combout\,
	combout => \text_gen|bcd~62_combout\);

-- Location: LCCOMB_X35_Y19_N24
\text_gen|bcd~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~63_combout\ = (\text_gen|bcd~58_combout\ & (\text_gen|bcd~59_combout\ & ((!\text_gen|bcd~60_combout\) # (!\text_gen|bcd~57_combout\)))) # (!\text_gen|bcd~58_combout\ & (\text_gen|bcd~57_combout\ & (\text_gen|bcd~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~57_combout\,
	datab => \text_gen|bcd~60_combout\,
	datac => \text_gen|bcd~58_combout\,
	datad => \text_gen|bcd~59_combout\,
	combout => \text_gen|bcd~63_combout\);

-- Location: LCCOMB_X35_Y20_N14
\text_gen|bcd~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~64_combout\ = \text_gen|bcd~31_combout\ $ ((((!score_sig(5) & !\text_gen|bcd~30_combout\)) # (!\text_gen|bcd~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(5),
	datab => \text_gen|bcd~30_combout\,
	datac => \text_gen|bcd~31_combout\,
	datad => \text_gen|bcd~32_combout\,
	combout => \text_gen|bcd~64_combout\);

-- Location: LCCOMB_X36_Y19_N0
\text_gen|bcd~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~65_combout\ = (\text_gen|bcd~64_combout\ & (!\text_gen|bcd~63_combout\ & ((\text_gen|bcd~61_combout\) # (\text_gen|bcd~62_combout\)))) # (!\text_gen|bcd~64_combout\ & (((\text_gen|bcd~63_combout\) # (!\text_gen|bcd~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~61_combout\,
	datab => \text_gen|bcd~64_combout\,
	datac => \text_gen|bcd~63_combout\,
	datad => \text_gen|bcd~62_combout\,
	combout => \text_gen|bcd~65_combout\);

-- Location: LCCOMB_X36_Y19_N18
\text_gen|bcd~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~66_combout\ = (\text_gen|bcd~63_combout\ & ((\text_gen|bcd~61_combout\ $ (\text_gen|bcd~64_combout\)))) # (!\text_gen|bcd~63_combout\ & ((\text_gen|bcd~61_combout\) # ((!\text_gen|bcd~62_combout\ & \text_gen|bcd~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~62_combout\,
	datab => \text_gen|bcd~63_combout\,
	datac => \text_gen|bcd~61_combout\,
	datad => \text_gen|bcd~64_combout\,
	combout => \text_gen|bcd~66_combout\);

-- Location: LCCOMB_X36_Y19_N4
\text_gen|bcd~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~67_combout\ = (\text_gen|bcd~62_combout\ & (\text_gen|bcd~63_combout\ & ((!\text_gen|bcd~64_combout\) # (!\text_gen|bcd~61_combout\)))) # (!\text_gen|bcd~62_combout\ & (((\text_gen|bcd~61_combout\ & \text_gen|bcd~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~62_combout\,
	datab => \text_gen|bcd~63_combout\,
	datac => \text_gen|bcd~61_combout\,
	datad => \text_gen|bcd~64_combout\,
	combout => \text_gen|bcd~67_combout\);

-- Location: LCCOMB_X36_Y20_N18
\text_gen|bcd~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~68_combout\ = \text_gen|bcd~34_combout\ $ ((((!\text_gen|bcd~33_combout\ & !score_sig(4))) # (!\text_gen|bcd~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~33_combout\,
	datab => \text_gen|bcd~34_combout\,
	datac => score_sig(4),
	datad => \text_gen|bcd~35_combout\,
	combout => \text_gen|bcd~68_combout\);

-- Location: LCCOMB_X36_Y19_N14
\text_gen|bcd~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~69_combout\ = (\text_gen|bcd~68_combout\ & (!\text_gen|bcd~67_combout\ & ((\text_gen|bcd~66_combout\) # (\text_gen|bcd~65_combout\)))) # (!\text_gen|bcd~68_combout\ & (((\text_gen|bcd~67_combout\)) # (!\text_gen|bcd~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~68_combout\,
	datab => \text_gen|bcd~66_combout\,
	datac => \text_gen|bcd~67_combout\,
	datad => \text_gen|bcd~65_combout\,
	combout => \text_gen|bcd~69_combout\);

-- Location: LCCOMB_X36_Y19_N16
\text_gen|bcd~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~70_combout\ = (\text_gen|bcd~68_combout\ & ((\text_gen|bcd~67_combout\ & ((!\text_gen|bcd~65_combout\))) # (!\text_gen|bcd~67_combout\ & ((\text_gen|bcd~65_combout\) # (!\text_gen|bcd~66_combout\))))) # (!\text_gen|bcd~68_combout\ & 
-- (((\text_gen|bcd~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~68_combout\,
	datab => \text_gen|bcd~66_combout\,
	datac => \text_gen|bcd~67_combout\,
	datad => \text_gen|bcd~65_combout\,
	combout => \text_gen|bcd~70_combout\);

-- Location: LCCOMB_X36_Y19_N26
\text_gen|bcd~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~71_combout\ = (\text_gen|bcd~66_combout\ & (\text_gen|bcd~67_combout\ & ((!\text_gen|bcd~65_combout\) # (!\text_gen|bcd~68_combout\)))) # (!\text_gen|bcd~66_combout\ & (\text_gen|bcd~68_combout\ & ((\text_gen|bcd~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~68_combout\,
	datab => \text_gen|bcd~66_combout\,
	datac => \text_gen|bcd~67_combout\,
	datad => \text_gen|bcd~65_combout\,
	combout => \text_gen|bcd~71_combout\);

-- Location: LCCOMB_X36_Y20_N28
\text_gen|bcd~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~72_combout\ = \text_gen|bcd~37_combout\ $ ((((!score_sig(3) & !\text_gen|bcd~36_combout\)) # (!\text_gen|bcd~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(3),
	datab => \text_gen|bcd~38_combout\,
	datac => \text_gen|bcd~37_combout\,
	datad => \text_gen|bcd~36_combout\,
	combout => \text_gen|bcd~72_combout\);

-- Location: LCCOMB_X36_Y19_N28
\text_gen|bcd~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~73_combout\ = (\text_gen|bcd~72_combout\ & (!\text_gen|bcd~71_combout\ & ((\text_gen|bcd~69_combout\) # (\text_gen|bcd~70_combout\)))) # (!\text_gen|bcd~72_combout\ & (((\text_gen|bcd~71_combout\) # (!\text_gen|bcd~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~72_combout\,
	datab => \text_gen|bcd~69_combout\,
	datac => \text_gen|bcd~70_combout\,
	datad => \text_gen|bcd~71_combout\,
	combout => \text_gen|bcd~73_combout\);

-- Location: LCCOMB_X36_Y19_N6
\text_gen|bcd~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~74_combout\ = (\text_gen|bcd~72_combout\ & ((\text_gen|bcd~69_combout\ & ((!\text_gen|bcd~71_combout\))) # (!\text_gen|bcd~69_combout\ & ((\text_gen|bcd~71_combout\) # (!\text_gen|bcd~70_combout\))))) # (!\text_gen|bcd~72_combout\ & 
-- (\text_gen|bcd~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~72_combout\,
	datab => \text_gen|bcd~69_combout\,
	datac => \text_gen|bcd~70_combout\,
	datad => \text_gen|bcd~71_combout\,
	combout => \text_gen|bcd~74_combout\);

-- Location: LCCOMB_X36_Y19_N24
\text_gen|bcd~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~75_combout\ = (\text_gen|bcd~70_combout\ & (\text_gen|bcd~71_combout\ & ((!\text_gen|bcd~69_combout\) # (!\text_gen|bcd~72_combout\)))) # (!\text_gen|bcd~70_combout\ & (\text_gen|bcd~72_combout\ & (\text_gen|bcd~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~72_combout\,
	datab => \text_gen|bcd~69_combout\,
	datac => \text_gen|bcd~70_combout\,
	datad => \text_gen|bcd~71_combout\,
	combout => \text_gen|bcd~75_combout\);

-- Location: LCCOMB_X36_Y19_N2
\text_gen|score_BCD_sig[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|score_BCD_sig[8]~1_combout\ = \text_gen|bcd~75_combout\ $ (((\text_gen|bcd~74_combout\) # ((\text_gen|bcd~73_combout\ & \text_gen|bcd~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~75_combout\,
	datab => \text_gen|bcd~73_combout\,
	datac => \text_gen|bcd~44_combout\,
	datad => \text_gen|bcd~74_combout\,
	combout => \text_gen|score_BCD_sig[8]~1_combout\);

-- Location: LCCOMB_X36_Y19_N12
\text_gen|bcd~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~76_combout\ = \text_gen|bcd~71_combout\ $ (((\text_gen|bcd~70_combout\) # ((\text_gen|bcd~72_combout\ & \text_gen|bcd~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~72_combout\,
	datab => \text_gen|bcd~69_combout\,
	datac => \text_gen|bcd~70_combout\,
	datad => \text_gen|bcd~71_combout\,
	combout => \text_gen|bcd~76_combout\);

-- Location: LCCOMB_X34_Y19_N0
\text_gen|bcd~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~77_combout\ = \text_gen|bcd~51_combout\ $ (((\text_gen|bcd~50_combout\) # ((\text_gen|bcd~52_combout\ & \text_gen|bcd~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~51_combout\,
	datab => \text_gen|bcd~52_combout\,
	datac => \text_gen|bcd~50_combout\,
	datad => \text_gen|bcd~49_combout\,
	combout => \text_gen|bcd~77_combout\);

-- Location: LCCOMB_X34_Y19_N10
\text_gen|bcd~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~78_combout\ = (\text_gen|bcd~116_combout\ & ((\text_gen|bcd~45_combout\ & (!\text_gen|bcd~115_combout\ & \text_gen|bcd~117_combout\)) # (!\text_gen|bcd~45_combout\ & ((\text_gen|bcd~117_combout\) # (!\text_gen|bcd~115_combout\))))) # 
-- (!\text_gen|bcd~116_combout\ & (((\text_gen|bcd~115_combout\ & !\text_gen|bcd~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~116_combout\,
	datab => \text_gen|bcd~45_combout\,
	datac => \text_gen|bcd~115_combout\,
	datad => \text_gen|bcd~117_combout\,
	combout => \text_gen|bcd~78_combout\);

-- Location: LCCOMB_X34_Y19_N4
\text_gen|bcd~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~79_combout\ = \text_gen|bcd~47_combout\ $ ((((\text_gen|bcd~48_combout\ & \text_gen|bcd~46_combout\)) # (!\text_gen|bcd~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~11_combout\,
	datab => \text_gen|bcd~48_combout\,
	datac => \text_gen|bcd~46_combout\,
	datad => \text_gen|bcd~47_combout\,
	combout => \text_gen|bcd~79_combout\);

-- Location: LCCOMB_X34_Y20_N2
\text_gen|LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|LessThan11~0_combout\ = (!\text_gen|bcd~117_combout\ & ((\text_gen|bcd~116_combout\) # (!\text_gen|bcd~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \text_gen|bcd~116_combout\,
	datac => \text_gen|bcd~115_combout\,
	datad => \text_gen|bcd~117_combout\,
	combout => \text_gen|LessThan11~0_combout\);

-- Location: LCCOMB_X34_Y19_N14
\text_gen|bcd~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~80_combout\ = (\text_gen|bcd~78_combout\ & ((\text_gen|bcd~77_combout\ & ((\text_gen|bcd~79_combout\) # (\text_gen|LessThan11~0_combout\))) # (!\text_gen|bcd~77_combout\ & ((!\text_gen|LessThan11~0_combout\) # 
-- (!\text_gen|bcd~79_combout\))))) # (!\text_gen|bcd~78_combout\ & (\text_gen|bcd~77_combout\ $ (((\text_gen|bcd~79_combout\ & \text_gen|LessThan11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~78_combout\,
	datab => \text_gen|bcd~77_combout\,
	datac => \text_gen|bcd~79_combout\,
	datad => \text_gen|LessThan11~0_combout\,
	combout => \text_gen|bcd~80_combout\);

-- Location: LCCOMB_X34_Y19_N24
\text_gen|bcd~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~81_combout\ = (\text_gen|bcd~77_combout\ & (!\text_gen|bcd~78_combout\ & (\text_gen|bcd~79_combout\ $ (!\text_gen|LessThan11~0_combout\)))) # (!\text_gen|bcd~77_combout\ & (((!\text_gen|bcd~79_combout\ & !\text_gen|LessThan11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~78_combout\,
	datab => \text_gen|bcd~77_combout\,
	datac => \text_gen|bcd~79_combout\,
	datad => \text_gen|LessThan11~0_combout\,
	combout => \text_gen|bcd~81_combout\);

-- Location: LCCOMB_X34_Y19_N26
\text_gen|bcd~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~82_combout\ = (\text_gen|bcd~78_combout\ & (\text_gen|bcd~77_combout\ & (\text_gen|bcd~79_combout\ $ (\text_gen|LessThan11~0_combout\)))) # (!\text_gen|bcd~78_combout\ & (!\text_gen|bcd~77_combout\ & (\text_gen|bcd~79_combout\ & 
-- \text_gen|LessThan11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~78_combout\,
	datab => \text_gen|bcd~77_combout\,
	datac => \text_gen|bcd~79_combout\,
	datad => \text_gen|LessThan11~0_combout\,
	combout => \text_gen|bcd~82_combout\);

-- Location: LCCOMB_X35_Y19_N2
\text_gen|bcd~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~83_combout\ = \text_gen|bcd~55_combout\ $ (((\text_gen|bcd~54_combout\) # ((\text_gen|bcd~56_combout\ & \text_gen|bcd~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~54_combout\,
	datab => \text_gen|bcd~56_combout\,
	datac => \text_gen|bcd~55_combout\,
	datad => \text_gen|bcd~53_combout\,
	combout => \text_gen|bcd~83_combout\);

-- Location: LCCOMB_X34_Y19_N28
\text_gen|bcd~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~84_combout\ = (\text_gen|bcd~81_combout\ & (((!\text_gen|bcd~82_combout\ & \text_gen|bcd~80_combout\)) # (!\text_gen|bcd~83_combout\))) # (!\text_gen|bcd~81_combout\ & (\text_gen|bcd~82_combout\ $ (((\text_gen|bcd~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~81_combout\,
	datab => \text_gen|bcd~82_combout\,
	datac => \text_gen|bcd~80_combout\,
	datad => \text_gen|bcd~83_combout\,
	combout => \text_gen|bcd~84_combout\);

-- Location: LCCOMB_X34_Y19_N6
\text_gen|bcd~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~85_combout\ = (\text_gen|bcd~82_combout\ & ((\text_gen|bcd~80_combout\ $ (\text_gen|bcd~83_combout\)))) # (!\text_gen|bcd~82_combout\ & ((\text_gen|bcd~80_combout\) # ((\text_gen|bcd~81_combout\ & \text_gen|bcd~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~81_combout\,
	datab => \text_gen|bcd~82_combout\,
	datac => \text_gen|bcd~80_combout\,
	datad => \text_gen|bcd~83_combout\,
	combout => \text_gen|bcd~85_combout\);

-- Location: LCCOMB_X34_Y19_N16
\text_gen|bcd~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~86_combout\ = (\text_gen|bcd~81_combout\ & (((\text_gen|bcd~80_combout\ & \text_gen|bcd~83_combout\)))) # (!\text_gen|bcd~81_combout\ & (\text_gen|bcd~82_combout\ & ((!\text_gen|bcd~83_combout\) # (!\text_gen|bcd~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~81_combout\,
	datab => \text_gen|bcd~82_combout\,
	datac => \text_gen|bcd~80_combout\,
	datad => \text_gen|bcd~83_combout\,
	combout => \text_gen|bcd~86_combout\);

-- Location: LCCOMB_X35_Y19_N28
\text_gen|bcd~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~87_combout\ = \text_gen|bcd~59_combout\ $ (((\text_gen|bcd~58_combout\) # ((\text_gen|bcd~57_combout\ & \text_gen|bcd~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~57_combout\,
	datab => \text_gen|bcd~59_combout\,
	datac => \text_gen|bcd~58_combout\,
	datad => \text_gen|bcd~60_combout\,
	combout => \text_gen|bcd~87_combout\);

-- Location: LCCOMB_X39_Y19_N18
\text_gen|bcd~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~88_combout\ = (\text_gen|bcd~87_combout\ & (!\text_gen|bcd~86_combout\ & ((\text_gen|bcd~85_combout\) # (\text_gen|bcd~84_combout\)))) # (!\text_gen|bcd~87_combout\ & ((\text_gen|bcd~86_combout\) # ((!\text_gen|bcd~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~87_combout\,
	datab => \text_gen|bcd~86_combout\,
	datac => \text_gen|bcd~85_combout\,
	datad => \text_gen|bcd~84_combout\,
	combout => \text_gen|bcd~88_combout\);

-- Location: LCCOMB_X39_Y19_N12
\text_gen|bcd~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~89_combout\ = (\text_gen|bcd~87_combout\ & ((\text_gen|bcd~86_combout\ & ((!\text_gen|bcd~84_combout\))) # (!\text_gen|bcd~86_combout\ & ((\text_gen|bcd~84_combout\) # (!\text_gen|bcd~85_combout\))))) # (!\text_gen|bcd~87_combout\ & 
-- (((\text_gen|bcd~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~87_combout\,
	datab => \text_gen|bcd~86_combout\,
	datac => \text_gen|bcd~85_combout\,
	datad => \text_gen|bcd~84_combout\,
	combout => \text_gen|bcd~89_combout\);

-- Location: LCCOMB_X39_Y19_N22
\text_gen|bcd~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~90_combout\ = (\text_gen|bcd~85_combout\ & (\text_gen|bcd~86_combout\ & ((!\text_gen|bcd~84_combout\) # (!\text_gen|bcd~87_combout\)))) # (!\text_gen|bcd~85_combout\ & (\text_gen|bcd~87_combout\ & ((\text_gen|bcd~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~87_combout\,
	datab => \text_gen|bcd~86_combout\,
	datac => \text_gen|bcd~85_combout\,
	datad => \text_gen|bcd~84_combout\,
	combout => \text_gen|bcd~90_combout\);

-- Location: LCCOMB_X39_Y19_N16
\text_gen|bcd~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~91_combout\ = \text_gen|bcd~63_combout\ $ (((\text_gen|bcd~62_combout\) # ((\text_gen|bcd~61_combout\ & \text_gen|bcd~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~63_combout\,
	datab => \text_gen|bcd~61_combout\,
	datac => \text_gen|bcd~62_combout\,
	datad => \text_gen|bcd~64_combout\,
	combout => \text_gen|bcd~91_combout\);

-- Location: LCCOMB_X39_Y19_N2
\text_gen|bcd~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~92_combout\ = (\text_gen|bcd~89_combout\ & (\text_gen|bcd~90_combout\ $ ((\text_gen|bcd~91_combout\)))) # (!\text_gen|bcd~89_combout\ & (((!\text_gen|bcd~90_combout\ & \text_gen|bcd~88_combout\)) # (!\text_gen|bcd~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~89_combout\,
	datab => \text_gen|bcd~90_combout\,
	datac => \text_gen|bcd~91_combout\,
	datad => \text_gen|bcd~88_combout\,
	combout => \text_gen|bcd~92_combout\);

-- Location: LCCOMB_X39_Y19_N4
\text_gen|bcd~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~93_combout\ = (\text_gen|bcd~90_combout\ & ((\text_gen|bcd~91_combout\ $ (\text_gen|bcd~88_combout\)))) # (!\text_gen|bcd~90_combout\ & ((\text_gen|bcd~88_combout\) # ((!\text_gen|bcd~89_combout\ & \text_gen|bcd~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~89_combout\,
	datab => \text_gen|bcd~90_combout\,
	datac => \text_gen|bcd~91_combout\,
	datad => \text_gen|bcd~88_combout\,
	combout => \text_gen|bcd~93_combout\);

-- Location: LCCOMB_X39_Y19_N6
\text_gen|bcd~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~94_combout\ = (\text_gen|bcd~89_combout\ & (\text_gen|bcd~90_combout\ & ((!\text_gen|bcd~88_combout\) # (!\text_gen|bcd~91_combout\)))) # (!\text_gen|bcd~89_combout\ & (((\text_gen|bcd~91_combout\ & \text_gen|bcd~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~89_combout\,
	datab => \text_gen|bcd~90_combout\,
	datac => \text_gen|bcd~91_combout\,
	datad => \text_gen|bcd~88_combout\,
	combout => \text_gen|bcd~94_combout\);

-- Location: LCCOMB_X36_Y19_N22
\text_gen|bcd~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~95_combout\ = \text_gen|bcd~67_combout\ $ (((\text_gen|bcd~66_combout\) # ((\text_gen|bcd~68_combout\ & \text_gen|bcd~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~68_combout\,
	datab => \text_gen|bcd~66_combout\,
	datac => \text_gen|bcd~67_combout\,
	datad => \text_gen|bcd~65_combout\,
	combout => \text_gen|bcd~95_combout\);

-- Location: LCCOMB_X39_Y19_N8
\text_gen|bcd~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~96_combout\ = (\text_gen|bcd~95_combout\ & (!\text_gen|bcd~94_combout\ & ((\text_gen|bcd~92_combout\) # (\text_gen|bcd~93_combout\)))) # (!\text_gen|bcd~95_combout\ & (((\text_gen|bcd~94_combout\) # (!\text_gen|bcd~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~95_combout\,
	datab => \text_gen|bcd~92_combout\,
	datac => \text_gen|bcd~93_combout\,
	datad => \text_gen|bcd~94_combout\,
	combout => \text_gen|bcd~96_combout\);

-- Location: LCCOMB_X39_Y19_N10
\text_gen|bcd~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~97_combout\ = (\text_gen|bcd~95_combout\ & ((\text_gen|bcd~92_combout\ & ((!\text_gen|bcd~94_combout\))) # (!\text_gen|bcd~92_combout\ & ((\text_gen|bcd~94_combout\) # (!\text_gen|bcd~93_combout\))))) # (!\text_gen|bcd~95_combout\ & 
-- (\text_gen|bcd~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~95_combout\,
	datab => \text_gen|bcd~92_combout\,
	datac => \text_gen|bcd~93_combout\,
	datad => \text_gen|bcd~94_combout\,
	combout => \text_gen|bcd~97_combout\);

-- Location: LCCOMB_X39_Y19_N20
\text_gen|bcd~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~98_combout\ = (\text_gen|bcd~93_combout\ & (\text_gen|bcd~94_combout\ & ((!\text_gen|bcd~92_combout\) # (!\text_gen|bcd~95_combout\)))) # (!\text_gen|bcd~93_combout\ & (\text_gen|bcd~95_combout\ & (\text_gen|bcd~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~95_combout\,
	datab => \text_gen|bcd~92_combout\,
	datac => \text_gen|bcd~93_combout\,
	datad => \text_gen|bcd~94_combout\,
	combout => \text_gen|bcd~98_combout\);

-- Location: LCCOMB_X39_Y19_N14
\text_gen|score_BCD_sig[12]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|score_BCD_sig[12]~2_combout\ = \text_gen|bcd~98_combout\ $ (((\text_gen|bcd~97_combout\) # ((\text_gen|bcd~76_combout\ & \text_gen|bcd~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~76_combout\,
	datab => \text_gen|bcd~96_combout\,
	datac => \text_gen|bcd~98_combout\,
	datad => \text_gen|bcd~97_combout\,
	combout => \text_gen|score_BCD_sig[12]~2_combout\);

-- Location: LCCOMB_X40_Y19_N16
\text_gen|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~3_combout\ = (\vga1|COLUMN[5]~4_combout\ & (!\text_gen|Mux3~4_combout\)) # (!\vga1|COLUMN[5]~4_combout\ & ((\text_gen|Mux3~4_combout\ & ((!\text_gen|score_BCD_sig[12]~2_combout\))) # (!\text_gen|Mux3~4_combout\ & 
-- (!\text_gen|score_BCD_sig[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \text_gen|score_BCD_sig[8]~1_combout\,
	datad => \text_gen|score_BCD_sig[12]~2_combout\,
	combout => \text_gen|Mux6~3_combout\);

-- Location: LCCOMB_X40_Y19_N10
\text_gen|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~4_combout\ = (\vga1|COLUMN[5]~4_combout\ & ((\text_gen|Mux6~3_combout\ & (score_sig(0))) # (!\text_gen|Mux6~3_combout\ & ((!\text_gen|score_BCD_sig[4]~0_combout\))))) # (!\vga1|COLUMN[5]~4_combout\ & (((\text_gen|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => score_sig(0),
	datac => \text_gen|Mux6~3_combout\,
	datad => \text_gen|score_BCD_sig[4]~0_combout\,
	combout => \text_gen|Mux6~4_combout\);

-- Location: LCCOMB_X40_Y19_N12
\text_gen|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~5_combout\ = (\vga1|COLUMN[6]~3_combout\ & (((\text_gen|Mux6~4_combout\)))) # (!\vga1|COLUMN[6]~3_combout\ & (\vga1|COLUMN[5]~4_combout\ & (!\vga1|counterH|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \vga1|counterH|auto_generated|safe_q\(4),
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => \text_gen|Mux6~4_combout\,
	combout => \text_gen|Mux6~5_combout\);

-- Location: LCCOMB_X39_Y19_N24
\text_gen|bcd~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~99_combout\ = \text_gen|bcd~90_combout\ $ (((\text_gen|bcd~89_combout\) # ((\text_gen|bcd~91_combout\ & \text_gen|bcd~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~89_combout\,
	datab => \text_gen|bcd~90_combout\,
	datac => \text_gen|bcd~91_combout\,
	datad => \text_gen|bcd~88_combout\,
	combout => \text_gen|bcd~99_combout\);

-- Location: LCCOMB_X34_Y19_N2
\text_gen|bcd~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~100_combout\ = \text_gen|bcd~86_combout\ $ (((\text_gen|bcd~85_combout\) # ((\text_gen|bcd~84_combout\ & \text_gen|bcd~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~85_combout\,
	datab => \text_gen|bcd~84_combout\,
	datac => \text_gen|bcd~86_combout\,
	datad => \text_gen|bcd~87_combout\,
	combout => \text_gen|bcd~100_combout\);

-- Location: LCCOMB_X34_Y19_N12
\text_gen|bcd~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~101_combout\ = (\text_gen|bcd~78_combout\ & ((\text_gen|bcd~77_combout\ & (!\text_gen|bcd~79_combout\ & !\text_gen|LessThan11~0_combout\)) # (!\text_gen|bcd~77_combout\ & ((!\text_gen|LessThan11~0_combout\) # (!\text_gen|bcd~79_combout\))))) 
-- # (!\text_gen|bcd~78_combout\ & (((\text_gen|bcd~79_combout\ & \text_gen|LessThan11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~78_combout\,
	datab => \text_gen|bcd~77_combout\,
	datac => \text_gen|bcd~79_combout\,
	datad => \text_gen|LessThan11~0_combout\,
	combout => \text_gen|bcd~101_combout\);

-- Location: LCCOMB_X34_Y19_N22
\text_gen|bcd~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~102_combout\ = \text_gen|bcd~82_combout\ $ ((((\text_gen|bcd~80_combout\ & \text_gen|bcd~83_combout\)) # (!\text_gen|bcd~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~81_combout\,
	datab => \text_gen|bcd~82_combout\,
	datac => \text_gen|bcd~80_combout\,
	datad => \text_gen|bcd~83_combout\,
	combout => \text_gen|bcd~102_combout\);

-- Location: LCCOMB_X34_Y19_N8
\text_gen|bcd~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~103_combout\ = (\text_gen|bcd~101_combout\ & ((\text_gen|bcd~102_combout\ & ((\text_gen|bcd~100_combout\) # (!\text_gen|LessThan21~15_combout\))) # (!\text_gen|bcd~102_combout\ & ((\text_gen|LessThan21~15_combout\) # 
-- (!\text_gen|bcd~100_combout\))))) # (!\text_gen|bcd~101_combout\ & (\text_gen|bcd~100_combout\ $ (((\text_gen|bcd~102_combout\ & \text_gen|LessThan21~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~101_combout\,
	datab => \text_gen|bcd~102_combout\,
	datac => \text_gen|LessThan21~15_combout\,
	datad => \text_gen|bcd~100_combout\,
	combout => \text_gen|bcd~103_combout\);

-- Location: LCCOMB_X34_Y19_N18
\text_gen|bcd~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~104_combout\ = (\text_gen|bcd~102_combout\ & (\text_gen|LessThan21~15_combout\ & ((\text_gen|bcd~101_combout\) # (\text_gen|bcd~100_combout\)))) # (!\text_gen|bcd~102_combout\ & (!\text_gen|LessThan21~15_combout\ & 
-- ((!\text_gen|bcd~100_combout\) # (!\text_gen|bcd~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~101_combout\,
	datab => \text_gen|bcd~102_combout\,
	datac => \text_gen|LessThan21~15_combout\,
	datad => \text_gen|bcd~100_combout\,
	combout => \text_gen|bcd~104_combout\);

-- Location: LCCOMB_X34_Y19_N20
\text_gen|bcd~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~105_combout\ = (\text_gen|bcd~101_combout\ & (\text_gen|bcd~100_combout\ & (\text_gen|bcd~102_combout\ $ (\text_gen|LessThan21~15_combout\)))) # (!\text_gen|bcd~101_combout\ & (\text_gen|bcd~102_combout\ & (\text_gen|LessThan21~15_combout\ & 
-- !\text_gen|bcd~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~101_combout\,
	datab => \text_gen|bcd~102_combout\,
	datac => \text_gen|LessThan21~15_combout\,
	datad => \text_gen|bcd~100_combout\,
	combout => \text_gen|bcd~105_combout\);

-- Location: LCCOMB_X38_Y19_N0
\text_gen|bcd~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~106_combout\ = (\text_gen|bcd~104_combout\ & (\text_gen|bcd~103_combout\ & ((\text_gen|bcd~99_combout\)))) # (!\text_gen|bcd~104_combout\ & (\text_gen|bcd~105_combout\ & ((!\text_gen|bcd~99_combout\) # (!\text_gen|bcd~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~104_combout\,
	datab => \text_gen|bcd~103_combout\,
	datac => \text_gen|bcd~105_combout\,
	datad => \text_gen|bcd~99_combout\,
	combout => \text_gen|bcd~106_combout\);

-- Location: LCCOMB_X38_Y19_N10
\text_gen|bcd~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~107_combout\ = (\text_gen|bcd~103_combout\ & (((!\text_gen|bcd~99_combout\) # (!\text_gen|bcd~105_combout\)))) # (!\text_gen|bcd~103_combout\ & (\text_gen|bcd~99_combout\ & ((\text_gen|bcd~104_combout\) # (\text_gen|bcd~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~104_combout\,
	datab => \text_gen|bcd~103_combout\,
	datac => \text_gen|bcd~105_combout\,
	datad => \text_gen|bcd~99_combout\,
	combout => \text_gen|bcd~107_combout\);

-- Location: LCCOMB_X39_Y19_N26
\text_gen|bcd~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~108_combout\ = \text_gen|bcd~94_combout\ $ (((\text_gen|bcd~93_combout\) # ((\text_gen|bcd~95_combout\ & \text_gen|bcd~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~94_combout\,
	datab => \text_gen|bcd~93_combout\,
	datac => \text_gen|bcd~95_combout\,
	datad => \text_gen|bcd~92_combout\,
	combout => \text_gen|bcd~108_combout\);

-- Location: LCCOMB_X34_Y19_N30
\text_gen|bcd~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~109_combout\ = (\text_gen|bcd~105_combout\ & (((!\text_gen|bcd~99_combout\)))) # (!\text_gen|bcd~105_combout\ & ((\text_gen|bcd~104_combout\ & ((\text_gen|bcd~103_combout\) # (!\text_gen|bcd~99_combout\))) # (!\text_gen|bcd~104_combout\ & 
-- ((\text_gen|bcd~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~105_combout\,
	datab => \text_gen|bcd~104_combout\,
	datac => \text_gen|bcd~103_combout\,
	datad => \text_gen|bcd~99_combout\,
	combout => \text_gen|bcd~109_combout\);

-- Location: LCCOMB_X40_Y19_N30
\text_gen|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~6_combout\ = \text_gen|bcd~106_combout\ $ (((!\text_gen|bcd~107_combout\ & ((!\text_gen|bcd~108_combout\) # (!\text_gen|bcd~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~106_combout\,
	datab => \text_gen|bcd~107_combout\,
	datac => \text_gen|bcd~109_combout\,
	datad => \text_gen|bcd~108_combout\,
	combout => \text_gen|Mux6~6_combout\);

-- Location: LCCOMB_X40_Y19_N8
\text_gen|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~7_combout\ = (\vga1|COLUMN[5]~4_combout\ & ((\text_gen|Mux3~4_combout\ & (\vga1|COLUMN[6]~3_combout\)) # (!\text_gen|Mux3~4_combout\ & (!\vga1|COLUMN[6]~3_combout\ & \text_gen|Mux6~6_combout\)))) # (!\vga1|COLUMN[5]~4_combout\ & 
-- ((\text_gen|Mux3~4_combout\) # ((\vga1|COLUMN[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => \text_gen|Mux6~6_combout\,
	combout => \text_gen|Mux6~7_combout\);

-- Location: LCCOMB_X40_Y19_N26
\text_gen|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~8_combout\ = (\vga1|COLUMN[7]~5_combout\ & (((\text_gen|Mux6~5_combout\)) # (!\text_gen|char_code[5]~0_combout\))) # (!\vga1|COLUMN[7]~5_combout\ & (\text_gen|char_code[5]~0_combout\ & (\text_gen|Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[7]~5_combout\,
	datab => \text_gen|char_code[5]~0_combout\,
	datac => \text_gen|Mux6~7_combout\,
	datad => \text_gen|Mux6~5_combout\,
	combout => \text_gen|Mux6~8_combout\);

-- Location: LCCOMB_X40_Y19_N20
\text_gen|Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~9_combout\ = (\life~combout\(1) & (!\vga1|COLUMN[5]~4_combout\ & !\life~combout\(2))) # (!\life~combout\(1) & (\vga1|COLUMN[5]~4_combout\ & \life~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \life~combout\(1),
	datac => \vga1|COLUMN[5]~4_combout\,
	datad => \life~combout\(2),
	combout => \text_gen|Mux6~9_combout\);

-- Location: LCCOMB_X40_Y19_N14
\text_gen|Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~10_combout\ = (\text_gen|Mux6~9_combout\ & ((\life~combout\(0)) # ((\text_gen|Mux3~4_combout\)))) # (!\text_gen|Mux6~9_combout\ & (((\life~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \life~combout\(0),
	datab => \text_gen|Mux3~4_combout\,
	datac => \text_gen|Mux6~9_combout\,
	datad => \life~combout\(2),
	combout => \text_gen|Mux6~10_combout\);

-- Location: LCCOMB_X40_Y19_N24
\text_gen|Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~11_combout\ = (\life~combout\(1) & \life~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \life~combout\(1),
	datad => \life~combout\(2),
	combout => \text_gen|Mux6~11_combout\);

-- Location: LCCOMB_X40_Y19_N2
\text_gen|Mux6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~12_combout\ = (\text_gen|Mux6~11_combout\ & (!\vga1|COLUMN[5]~4_combout\ & ((\text_gen|Mux3~4_combout\) # (\life~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|Mux6~11_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \vga1|COLUMN[5]~4_combout\,
	datad => \life~combout\(0),
	combout => \text_gen|Mux6~12_combout\);

-- Location: LCCOMB_X40_Y19_N28
\text_gen|Mux6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~13_combout\ = (\vga1|COLUMN[6]~3_combout\ & (\text_gen|Mux6~10_combout\)) # (!\vga1|COLUMN[6]~3_combout\ & ((\text_gen|Mux6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|COLUMN[6]~3_combout\,
	datac => \text_gen|Mux6~10_combout\,
	datad => \text_gen|Mux6~12_combout\,
	combout => \text_gen|Mux6~13_combout\);

-- Location: LCCOMB_X40_Y19_N22
\text_gen|Mux6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~14_combout\ = (\text_gen|char_code[5]~0_combout\ & (((\text_gen|Mux6~8_combout\)))) # (!\text_gen|char_code[5]~0_combout\ & ((\text_gen|Mux6~8_combout\ & ((\text_gen|Mux6~13_combout\))) # (!\text_gen|Mux6~8_combout\ & 
-- (\text_gen|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|Mux6~2_combout\,
	datab => \text_gen|Mux6~13_combout\,
	datac => \text_gen|char_code[5]~0_combout\,
	datad => \text_gen|Mux6~8_combout\,
	combout => \text_gen|Mux6~14_combout\);

-- Location: LCCOMB_X36_Y21_N30
\text_gen|char_code[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[0]~1_combout\ = (!\vga1|COLUMN[9]~2_combout\ & (\text_gen|Equal0~0_combout\ & (!\vga1|BLANKING~3_combout\ & \vga1|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[9]~2_combout\,
	datab => \text_gen|Equal0~0_combout\,
	datac => \vga1|BLANKING~3_combout\,
	datad => \vga1|Add0~16_combout\,
	combout => \text_gen|char_code[0]~1_combout\);

-- Location: LCCOMB_X40_Y19_N0
\text_gen|char_code[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[0]~2_combout\ = (\text_gen|char_code[0]~1_combout\ & \text_gen|Mux6~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \text_gen|char_code[0]~1_combout\,
	datad => \text_gen|Mux6~14_combout\,
	combout => \text_gen|char_code[0]~2_combout\);

-- Location: LCCOMB_X36_Y19_N8
\text_gen|score_BCD_sig[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|score_BCD_sig[5]~3_combout\ = (\text_gen|bcd~75_combout\ & (((!\text_gen|bcd~44_combout\)))) # (!\text_gen|bcd~75_combout\ & ((\text_gen|bcd~44_combout\ & ((\text_gen|bcd~73_combout\) # (\text_gen|bcd~74_combout\))) # (!\text_gen|bcd~44_combout\ 
-- & ((!\text_gen|bcd~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~75_combout\,
	datab => \text_gen|bcd~73_combout\,
	datac => \text_gen|bcd~44_combout\,
	datad => \text_gen|bcd~74_combout\,
	combout => \text_gen|score_BCD_sig[5]~3_combout\);

-- Location: LCCOMB_X39_Y19_N28
\text_gen|score_BCD_sig[9]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|score_BCD_sig[9]~4_combout\ = (\text_gen|bcd~76_combout\ & (!\text_gen|bcd~98_combout\ & ((\text_gen|bcd~96_combout\) # (\text_gen|bcd~97_combout\)))) # (!\text_gen|bcd~76_combout\ & (((\text_gen|bcd~98_combout\) # 
-- (!\text_gen|bcd~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~76_combout\,
	datab => \text_gen|bcd~96_combout\,
	datac => \text_gen|bcd~98_combout\,
	datad => \text_gen|bcd~97_combout\,
	combout => \text_gen|score_BCD_sig[9]~4_combout\);

-- Location: LCCOMB_X38_Y19_N12
\text_gen|score_BCD_sig[13]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|score_BCD_sig[13]~5_combout\ = (\text_gen|bcd~107_combout\ & ((\text_gen|bcd~108_combout\ $ (\text_gen|bcd~106_combout\)))) # (!\text_gen|bcd~107_combout\ & (((\text_gen|bcd~109_combout\ & !\text_gen|bcd~106_combout\)) # 
-- (!\text_gen|bcd~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~107_combout\,
	datab => \text_gen|bcd~109_combout\,
	datac => \text_gen|bcd~108_combout\,
	datad => \text_gen|bcd~106_combout\,
	combout => \text_gen|score_BCD_sig[13]~5_combout\);

-- Location: LCCOMB_X38_Y19_N14
\text_gen|Mux6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~15_combout\ = (\vga1|COLUMN[5]~4_combout\ & (((!\text_gen|Mux3~4_combout\)))) # (!\vga1|COLUMN[5]~4_combout\ & ((\text_gen|Mux3~4_combout\ & ((!\text_gen|score_BCD_sig[13]~5_combout\))) # (!\text_gen|Mux3~4_combout\ & 
-- (!\text_gen|score_BCD_sig[9]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|score_BCD_sig[9]~4_combout\,
	datac => \text_gen|Mux3~4_combout\,
	datad => \text_gen|score_BCD_sig[13]~5_combout\,
	combout => \text_gen|Mux6~15_combout\);

-- Location: LCCOMB_X36_Y20_N22
\text_gen|bcd~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~110_combout\ = (score_sig(2) & (((!\text_gen|bcd~40_combout\ & !\text_gen|bcd~41_combout\)))) # (!score_sig(2) & ((\text_gen|bcd~40_combout\) # ((\text_gen|bcd~39_combout\ & \text_gen|bcd~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(2),
	datab => \text_gen|bcd~39_combout\,
	datac => \text_gen|bcd~40_combout\,
	datad => \text_gen|bcd~41_combout\,
	combout => \text_gen|bcd~110_combout\);

-- Location: LCCOMB_X36_Y20_N8
\text_gen|bcd~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~111_combout\ = (score_sig(2) & (\text_gen|bcd~39_combout\)) # (!score_sig(2) & ((\text_gen|bcd~39_combout\ & (!\text_gen|bcd~40_combout\ & !\text_gen|bcd~41_combout\)) # (!\text_gen|bcd~39_combout\ & (\text_gen|bcd~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(2),
	datab => \text_gen|bcd~39_combout\,
	datac => \text_gen|bcd~40_combout\,
	datad => \text_gen|bcd~41_combout\,
	combout => \text_gen|bcd~111_combout\);

-- Location: LCCOMB_X36_Y20_N10
\text_gen|score_BCD_sig[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|score_BCD_sig[1]~6_combout\ = (\text_gen|bcd~43_combout\ & (((!score_sig(1))))) # (!\text_gen|bcd~43_combout\ & ((\text_gen|bcd~111_combout\ & (\text_gen|bcd~110_combout\ & !score_sig(1))) # (!\text_gen|bcd~111_combout\ & ((score_sig(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~43_combout\,
	datab => \text_gen|bcd~111_combout\,
	datac => \text_gen|bcd~110_combout\,
	datad => score_sig(1),
	combout => \text_gen|score_BCD_sig[1]~6_combout\);

-- Location: LCCOMB_X38_Y19_N8
\text_gen|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux5~2_combout\ = (\vga1|COLUMN[5]~4_combout\ & ((\text_gen|Mux6~15_combout\ & (\text_gen|score_BCD_sig[1]~6_combout\)) # (!\text_gen|Mux6~15_combout\ & ((!\text_gen|score_BCD_sig[5]~3_combout\))))) # (!\vga1|COLUMN[5]~4_combout\ & 
-- (((\text_gen|Mux6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|score_BCD_sig[1]~6_combout\,
	datac => \text_gen|score_BCD_sig[5]~3_combout\,
	datad => \text_gen|Mux6~15_combout\,
	combout => \text_gen|Mux5~2_combout\);

-- Location: LCCOMB_X37_Y19_N24
\text_gen|bcd~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~112_combout\ = (\text_gen|bcd~101_combout\) # (!\text_gen|bcd~102_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \text_gen|bcd~102_combout\,
	datad => \text_gen|bcd~101_combout\,
	combout => \text_gen|bcd~112_combout\);

-- Location: LCCOMB_X37_Y19_N2
\text_gen|bcd~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~113_combout\ = \text_gen|bcd~105_combout\ $ ((((\text_gen|bcd~103_combout\ & \text_gen|bcd~99_combout\)) # (!\text_gen|bcd~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~103_combout\,
	datab => \text_gen|bcd~104_combout\,
	datac => \text_gen|bcd~99_combout\,
	datad => \text_gen|bcd~105_combout\,
	combout => \text_gen|bcd~113_combout\);

-- Location: LCCOMB_X37_Y19_N20
\text_gen|bcd~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~114_combout\ = (\text_gen|bcd~102_combout\ & ((\text_gen|bcd~101_combout\ & ((\text_gen|LessThan21~15_combout\) # (\text_gen|bcd~100_combout\))) # (!\text_gen|bcd~101_combout\ & (!\text_gen|LessThan21~15_combout\)))) # 
-- (!\text_gen|bcd~102_combout\ & (((\text_gen|LessThan21~15_combout\ & \text_gen|bcd~100_combout\)) # (!\text_gen|bcd~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~102_combout\,
	datab => \text_gen|bcd~101_combout\,
	datac => \text_gen|LessThan21~15_combout\,
	datad => \text_gen|bcd~100_combout\,
	combout => \text_gen|bcd~114_combout\);

-- Location: LCCOMB_X37_Y19_N22
\text_gen|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux5~3_combout\ = (\text_gen|LessThan21~15_combout\ & ((\text_gen|bcd~112_combout\ & (!\text_gen|bcd~114_combout\ & \text_gen|bcd~113_combout\)) # (!\text_gen|bcd~112_combout\ & ((!\text_gen|bcd~113_combout\))))) # 
-- (!\text_gen|LessThan21~15_combout\ & (((!\text_gen|bcd~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~114_combout\,
	datab => \text_gen|LessThan21~15_combout\,
	datac => \text_gen|bcd~112_combout\,
	datad => \text_gen|bcd~113_combout\,
	combout => \text_gen|Mux5~3_combout\);

-- Location: LCCOMB_X37_Y19_N8
\text_gen|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux5~4_combout\ = (\vga1|counterH|auto_generated|safe_q\(4)) # ((\vga1|counterH|auto_generated|safe_q\(5) & !\text_gen|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterH|auto_generated|safe_q\(4),
	datac => \vga1|counterH|auto_generated|safe_q\(5),
	datad => \text_gen|Mux5~3_combout\,
	combout => \text_gen|Mux5~4_combout\);

-- Location: LCCOMB_X38_Y19_N2
\text_gen|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux5~5_combout\ = (\vga1|Add1~0_combout\ & (\vga1|Add1~1_combout\)) # (!\vga1|Add1~0_combout\ & (!\vga1|Add1~1_combout\ & \text_gen|Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Add1~0_combout\,
	datac => \vga1|Add1~1_combout\,
	datad => \text_gen|Mux5~4_combout\,
	combout => \text_gen|Mux5~5_combout\);

-- Location: LCCOMB_X38_Y19_N4
\text_gen|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux5~6_combout\ = (\vga1|COLUMN~1_combout\) # ((\vga1|Add1~0_combout\ & (\text_gen|Mux5~5_combout\ & \text_gen|Mux5~2_combout\)) # (!\vga1|Add1~0_combout\ & (!\text_gen|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Add1~0_combout\,
	datab => \text_gen|Mux5~5_combout\,
	datac => \text_gen|Mux5~2_combout\,
	datad => \vga1|COLUMN~1_combout\,
	combout => \text_gen|Mux5~6_combout\);

-- Location: LCFF_X42_Y19_N27
\level_sig[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \level_sig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => level_sig(1));

-- Location: LCCOMB_X40_Y19_N18
\text_gen|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux5~7_combout\ = (!\vga1|COLUMN[5]~4_combout\ & (\text_gen|Mux3~4_combout\ & ((\vga1|COLUMN[6]~3_combout\) # (level_sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => level_sig(1),
	combout => \text_gen|Mux5~7_combout\);

-- Location: LCCOMB_X40_Y19_N4
\text_gen|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux5~8_combout\ = (\vga1|COLUMN[5]~4_combout\ & (!\text_gen|Mux3~4_combout\ & ((\vga1|COLUMN[6]~3_combout\) # (!\text_gen|LessThan35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => \text_gen|LessThan35~0_combout\,
	combout => \text_gen|Mux5~8_combout\);

-- Location: LCCOMB_X40_Y19_N6
\text_gen|Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux5~9_combout\ = (\vga1|COLUMN[7]~5_combout\ & (((\text_gen|Mux6~13_combout\)))) # (!\vga1|COLUMN[7]~5_combout\ & ((\text_gen|Mux5~7_combout\) # ((\text_gen|Mux5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[7]~5_combout\,
	datab => \text_gen|Mux5~7_combout\,
	datac => \text_gen|Mux5~8_combout\,
	datad => \text_gen|Mux6~13_combout\,
	combout => \text_gen|Mux5~9_combout\);

-- Location: LCCOMB_X38_Y19_N22
\text_gen|char_code[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[1]~3_combout\ = (\text_gen|char_code[0]~1_combout\ & ((\text_gen|char_code[5]~0_combout\ & (\text_gen|Mux5~6_combout\)) # (!\text_gen|char_code[5]~0_combout\ & ((\text_gen|Mux5~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|char_code[5]~0_combout\,
	datab => \text_gen|char_code[0]~1_combout\,
	datac => \text_gen|Mux5~6_combout\,
	datad => \text_gen|Mux5~9_combout\,
	combout => \text_gen|char_code[1]~3_combout\);

-- Location: LCFF_X42_Y19_N13
\level_sig[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \level_sig[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => level_sig(2));

-- Location: LCCOMB_X37_Y21_N12
\text_gen|char_code[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[2]~4_combout\ = (!\vga1|COLUMN[5]~4_combout\ & (\text_gen|Mux3~4_combout\ & (!\vga1|COLUMN[6]~3_combout\ & level_sig(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => level_sig(2),
	combout => \text_gen|char_code[2]~4_combout\);

-- Location: LCCOMB_X37_Y21_N22
\text_gen|char_code[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[2]~5_combout\ = (\text_gen|char_code[2]~4_combout\) # ((\vga1|COLUMN[6]~3_combout\ & ((\vga1|counterH|auto_generated|safe_q\(4)) # (!\vga1|COLUMN[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \vga1|counterH|auto_generated|safe_q\(4),
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => \text_gen|char_code[2]~4_combout\,
	combout => \text_gen|char_code[2]~5_combout\);

-- Location: LCCOMB_X37_Y21_N8
\text_gen|char_code[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[2]~6_combout\ = (\text_gen|char_code[0]~1_combout\ & (!\vga1|COLUMN[7]~5_combout\ & (!\text_gen|char_code[5]~0_combout\ & \text_gen|char_code[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|char_code[0]~1_combout\,
	datab => \vga1|COLUMN[7]~5_combout\,
	datac => \text_gen|char_code[5]~0_combout\,
	datad => \text_gen|char_code[2]~5_combout\,
	combout => \text_gen|char_code[2]~6_combout\);

-- Location: LCCOMB_X37_Y20_N0
\text_gen|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux4~0_combout\ = ((\vga1|Add1~0_combout\) # (\vga1|COLUMN~1_combout\)) # (!\vga1|counterH|auto_generated|safe_q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(4),
	datab => \vga1|Add1~0_combout\,
	datad => \vga1|COLUMN~1_combout\,
	combout => \text_gen|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y20_N4
\text_gen|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux4~1_combout\ = \text_gen|bcd~110_combout\ $ (((!score_sig(1) & ((\text_gen|bcd~43_combout\) # (\text_gen|Add30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~43_combout\,
	datab => score_sig(1),
	datac => \text_gen|bcd~110_combout\,
	datad => \text_gen|Add30~0_combout\,
	combout => \text_gen|Mux4~1_combout\);

-- Location: LCCOMB_X38_Y19_N16
\text_gen|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux4~2_combout\ = (\vga1|Add1~0_combout\ & (\text_gen|Mux4~1_combout\ & (!\vga1|counterH|auto_generated|safe_q\(4) & !\vga1|COLUMN~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Add1~0_combout\,
	datab => \text_gen|Mux4~1_combout\,
	datac => \vga1|counterH|auto_generated|safe_q\(4),
	datad => \vga1|COLUMN~1_combout\,
	combout => \text_gen|Mux4~2_combout\);

-- Location: LCCOMB_X36_Y19_N10
\text_gen|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux4~3_combout\ = (\text_gen|bcd~75_combout\ & (\text_gen|bcd~73_combout\ $ ((!\text_gen|bcd~44_combout\)))) # (!\text_gen|bcd~75_combout\ & (!\text_gen|bcd~73_combout\ & ((\text_gen|bcd~74_combout\) # (!\text_gen|bcd~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~75_combout\,
	datab => \text_gen|bcd~73_combout\,
	datac => \text_gen|bcd~44_combout\,
	datad => \text_gen|bcd~74_combout\,
	combout => \text_gen|Mux4~3_combout\);

-- Location: LCCOMB_X38_Y19_N18
\text_gen|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux4~4_combout\ = (\text_gen|Mux4~2_combout\) # ((\text_gen|Mux3~4_combout\ & ((\text_gen|Mux4~3_combout\) # (!\vga1|COLUMN[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|Mux4~2_combout\,
	datab => \text_gen|Mux4~3_combout\,
	datac => \text_gen|Mux3~4_combout\,
	datad => \vga1|COLUMN[7]~5_combout\,
	combout => \text_gen|Mux4~4_combout\);

-- Location: LCCOMB_X39_Y19_N30
\text_gen|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux4~5_combout\ = (\text_gen|bcd~76_combout\ & ((\text_gen|bcd~96_combout\ & (!\text_gen|bcd~98_combout\)) # (!\text_gen|bcd~96_combout\ & ((\text_gen|bcd~98_combout\) # (!\text_gen|bcd~97_combout\))))) # (!\text_gen|bcd~76_combout\ & 
-- (\text_gen|bcd~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~76_combout\,
	datab => \text_gen|bcd~96_combout\,
	datac => \text_gen|bcd~98_combout\,
	datad => \text_gen|bcd~97_combout\,
	combout => \text_gen|Mux4~5_combout\);

-- Location: LCCOMB_X38_Y19_N28
\text_gen|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux4~6_combout\ = (\text_gen|bcd~109_combout\ & (((!\text_gen|bcd~106_combout\) # (!\text_gen|bcd~108_combout\)))) # (!\text_gen|bcd~109_combout\ & (\text_gen|bcd~108_combout\ & ((\text_gen|bcd~106_combout\) # (!\text_gen|bcd~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~107_combout\,
	datab => \text_gen|bcd~109_combout\,
	datac => \text_gen|bcd~108_combout\,
	datad => \text_gen|bcd~106_combout\,
	combout => \text_gen|Mux4~6_combout\);

-- Location: LCCOMB_X38_Y19_N6
\text_gen|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux4~7_combout\ = (\vga1|COLUMN[7]~5_combout\ & ((\text_gen|Mux3~4_combout\ & (!\text_gen|Mux4~6_combout\)) # (!\text_gen|Mux3~4_combout\ & ((!\text_gen|Mux4~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[7]~5_combout\,
	datab => \text_gen|Mux4~6_combout\,
	datac => \text_gen|Mux3~4_combout\,
	datad => \text_gen|Mux4~5_combout\,
	combout => \text_gen|Mux4~7_combout\);

-- Location: LCCOMB_X38_Y19_N24
\text_gen|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux4~8_combout\ = (\vga1|COLUMN[6]~3_combout\ & ((\vga1|COLUMN[5]~4_combout\ & (\text_gen|Mux4~4_combout\)) # (!\vga1|COLUMN[5]~4_combout\ & ((\text_gen|Mux4~7_combout\))))) # (!\vga1|COLUMN[6]~3_combout\ & (((\vga1|COLUMN[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[6]~3_combout\,
	datab => \text_gen|Mux4~4_combout\,
	datac => \vga1|COLUMN[5]~4_combout\,
	datad => \text_gen|Mux4~7_combout\,
	combout => \text_gen|Mux4~8_combout\);

-- Location: LCCOMB_X37_Y19_N18
\text_gen|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux4~9_combout\ = (\vga1|COLUMN[7]~5_combout\) # ((!\text_gen|Mux5~10_combout\ & (!\text_gen|bcd~114_combout\ & !\text_gen|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|Mux5~10_combout\,
	datab => \vga1|COLUMN[7]~5_combout\,
	datac => \text_gen|bcd~114_combout\,
	datad => \text_gen|Mux3~4_combout\,
	combout => \text_gen|Mux4~9_combout\);

-- Location: LCCOMB_X38_Y19_N26
\text_gen|Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux4~10_combout\ = (\vga1|COLUMN[6]~3_combout\ & (((\text_gen|Mux4~8_combout\)))) # (!\vga1|COLUMN[6]~3_combout\ & ((\text_gen|Mux4~8_combout\ & (\text_gen|Mux4~9_combout\)) # (!\text_gen|Mux4~8_combout\ & ((!\text_gen|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[6]~3_combout\,
	datab => \text_gen|Mux4~9_combout\,
	datac => \text_gen|Mux4~8_combout\,
	datad => \text_gen|Mux4~0_combout\,
	combout => \text_gen|Mux4~10_combout\);

-- Location: LCCOMB_X38_Y19_N20
\text_gen|char_code[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[2]~7_combout\ = (\text_gen|char_code[2]~6_combout\) # ((\text_gen|char_code[5]~0_combout\ & (\text_gen|char_code[0]~1_combout\ & \text_gen|Mux4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|char_code[5]~0_combout\,
	datab => \text_gen|char_code[0]~1_combout\,
	datac => \text_gen|char_code[2]~6_combout\,
	datad => \text_gen|Mux4~10_combout\,
	combout => \text_gen|char_code[2]~7_combout\);

-- Location: LCCOMB_X38_Y19_N30
\text_gen|score_BCD_sig[15]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|score_BCD_sig[15]~7_combout\ = (\text_gen|bcd~107_combout\ & (\text_gen|bcd~106_combout\ & ((!\text_gen|bcd~108_combout\) # (!\text_gen|bcd~109_combout\)))) # (!\text_gen|bcd~107_combout\ & (\text_gen|bcd~109_combout\ & 
-- (\text_gen|bcd~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~107_combout\,
	datab => \text_gen|bcd~109_combout\,
	datac => \text_gen|bcd~108_combout\,
	datad => \text_gen|bcd~106_combout\,
	combout => \text_gen|score_BCD_sig[15]~7_combout\);

-- Location: LCCOMB_X37_Y19_N4
\text_gen|score_BCD_sig[11]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|score_BCD_sig[11]~8_combout\ = (\text_gen|bcd~97_combout\ & (\text_gen|bcd~98_combout\ & ((!\text_gen|bcd~96_combout\) # (!\text_gen|bcd~76_combout\)))) # (!\text_gen|bcd~97_combout\ & (\text_gen|bcd~76_combout\ & ((\text_gen|bcd~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~97_combout\,
	datab => \text_gen|bcd~76_combout\,
	datac => \text_gen|bcd~98_combout\,
	datad => \text_gen|bcd~96_combout\,
	combout => \text_gen|score_BCD_sig[11]~8_combout\);

-- Location: LCCOMB_X36_Y20_N6
\text_gen|score_BCD_sig[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|score_BCD_sig[3]~9_combout\ = (\text_gen|bcd~111_combout\ & (((!\text_gen|bcd~110_combout\ & !score_sig(1))))) # (!\text_gen|bcd~111_combout\ & (\text_gen|bcd~43_combout\ & ((\text_gen|bcd~110_combout\) # (score_sig(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~43_combout\,
	datab => \text_gen|bcd~111_combout\,
	datac => \text_gen|bcd~110_combout\,
	datad => score_sig(1),
	combout => \text_gen|score_BCD_sig[3]~9_combout\);

-- Location: LCCOMB_X37_Y19_N6
\text_gen|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux3~5_combout\ = (\vga1|COLUMN[5]~4_combout\ & ((\text_gen|score_BCD_sig[3]~9_combout\) # ((\text_gen|Mux3~4_combout\)))) # (!\vga1|COLUMN[5]~4_combout\ & (((\text_gen|score_BCD_sig[11]~8_combout\ & !\text_gen|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|score_BCD_sig[3]~9_combout\,
	datac => \text_gen|score_BCD_sig[11]~8_combout\,
	datad => \text_gen|Mux3~4_combout\,
	combout => \text_gen|Mux3~5_combout\);

-- Location: LCCOMB_X36_Y19_N20
\text_gen|score_BCD_sig[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|score_BCD_sig[7]~10_combout\ = (\text_gen|bcd~74_combout\ & (\text_gen|bcd~75_combout\ & ((!\text_gen|bcd~44_combout\) # (!\text_gen|bcd~73_combout\)))) # (!\text_gen|bcd~74_combout\ & (((\text_gen|bcd~73_combout\ & \text_gen|bcd~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~75_combout\,
	datab => \text_gen|bcd~73_combout\,
	datac => \text_gen|bcd~44_combout\,
	datad => \text_gen|bcd~74_combout\,
	combout => \text_gen|score_BCD_sig[7]~10_combout\);

-- Location: LCCOMB_X37_Y19_N0
\text_gen|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux3~6_combout\ = (\text_gen|char_code[5]~0_combout\ & ((\text_gen|Mux3~5_combout\ & (!\text_gen|Mux3~12_combout\)) # (!\text_gen|Mux3~5_combout\ & (\text_gen|Mux3~12_combout\ & \text_gen|score_BCD_sig[15]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|Mux3~5_combout\,
	datab => \text_gen|Mux3~12_combout\,
	datac => \text_gen|char_code[5]~0_combout\,
	datad => \text_gen|score_BCD_sig[15]~7_combout\,
	combout => \text_gen|Mux3~6_combout\);

-- Location: LCCOMB_X37_Y19_N26
\text_gen|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux3~7_combout\ = (\vga1|COLUMN[6]~3_combout\ & ((\vga1|COLUMN[7]~5_combout\ & ((\text_gen|Mux3~6_combout\))) # (!\vga1|COLUMN[7]~5_combout\ & (\text_gen|Mux3~11_combout\)))) # (!\vga1|COLUMN[6]~3_combout\ & (\vga1|COLUMN[7]~5_combout\ & 
-- (\text_gen|Mux3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[6]~3_combout\,
	datab => \vga1|COLUMN[7]~5_combout\,
	datac => \text_gen|Mux3~11_combout\,
	datad => \text_gen|Mux3~6_combout\,
	combout => \text_gen|Mux3~7_combout\);

-- Location: LCCOMB_X37_Y19_N12
\text_gen|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux3~8_combout\ = (\text_gen|bcd~114_combout\ & (\text_gen|LessThan21~15_combout\ & (\text_gen|bcd~112_combout\ & \text_gen|bcd~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~114_combout\,
	datab => \text_gen|LessThan21~15_combout\,
	datac => \text_gen|bcd~112_combout\,
	datad => \text_gen|bcd~113_combout\,
	combout => \text_gen|Mux3~8_combout\);

-- Location: LCCOMB_X37_Y21_N10
\text_gen|Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux3~9_combout\ = (\text_gen|char_code[5]~0_combout\ & ((\text_gen|Mux3~4_combout\) # (\vga1|COLUMN[6]~3_combout\ $ (\vga1|COLUMN[7]~5_combout\)))) # (!\text_gen|char_code[5]~0_combout\ & (\vga1|COLUMN[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[6]~3_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \text_gen|char_code[5]~0_combout\,
	datad => \vga1|COLUMN[7]~5_combout\,
	combout => \text_gen|Mux3~9_combout\);

-- Location: LCCOMB_X37_Y19_N14
\text_gen|Mux3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux3~10_combout\ = (\text_gen|Mux3~9_combout\ & (((!\text_gen|char_code[5]~0_combout\ & \vga1|COLUMN[5]~4_combout\)))) # (!\text_gen|Mux3~9_combout\ & (\text_gen|char_code[5]~0_combout\ & ((\text_gen|Mux3~8_combout\) # 
-- (!\vga1|COLUMN[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|Mux3~8_combout\,
	datab => \text_gen|Mux3~9_combout\,
	datac => \text_gen|char_code[5]~0_combout\,
	datad => \vga1|COLUMN[5]~4_combout\,
	combout => \text_gen|Mux3~10_combout\);

-- Location: LCCOMB_X37_Y19_N16
\text_gen|char_code[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[3]~8_combout\ = (\text_gen|char_code[0]~1_combout\ & ((\text_gen|Mux3~7_combout\) # ((\text_gen|Mux3~10_combout\ & !\vga1|COLUMN[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|char_code[0]~1_combout\,
	datab => \text_gen|Mux3~10_combout\,
	datac => \vga1|COLUMN[7]~5_combout\,
	datad => \text_gen|Mux3~7_combout\,
	combout => \text_gen|char_code[3]~8_combout\);

-- Location: LCCOMB_X37_Y21_N28
\text_gen|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux2~0_combout\ = (\vga1|COLUMN[7]~5_combout\) # ((\vga1|COLUMN[5]~4_combout\ & ((\text_gen|Mux3~4_combout\) # (!\vga1|COLUMN[6]~3_combout\))) # (!\vga1|COLUMN[5]~4_combout\ & (!\text_gen|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => \vga1|COLUMN[7]~5_combout\,
	combout => \text_gen|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y21_N14
\text_gen|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux2~1_combout\ = (\vga1|COLUMN[7]~5_combout\ & (((!\vga1|COLUMN[6]~3_combout\)))) # (!\vga1|COLUMN[7]~5_combout\ & (\text_gen|Mux3~4_combout\ $ (((!\vga1|COLUMN[5]~4_combout\ & \vga1|COLUMN[6]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => \vga1|COLUMN[7]~5_combout\,
	combout => \text_gen|Mux2~1_combout\);

-- Location: LCCOMB_X37_Y21_N16
\text_gen|char_code[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[4]~9_combout\ = (\text_gen|char_code[0]~1_combout\ & ((\text_gen|char_code[5]~0_combout\ & (!\text_gen|Mux2~1_combout\)) # (!\text_gen|char_code[5]~0_combout\ & ((!\text_gen|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|char_code[0]~1_combout\,
	datab => \text_gen|Mux2~1_combout\,
	datac => \text_gen|char_code[5]~0_combout\,
	datad => \text_gen|Mux2~0_combout\,
	combout => \text_gen|char_code[4]~9_combout\);

-- Location: LCCOMB_X37_Y20_N2
\text_gen|char_code[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[5]~10_combout\ = (\vga1|COLUMN[7]~5_combout\ & (((!\text_gen|Mux6~10_combout\)))) # (!\vga1|COLUMN[7]~5_combout\ & (\vga1|COLUMN[5]~4_combout\ & ((!\vga1|counterH|auto_generated|safe_q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \vga1|COLUMN[7]~5_combout\,
	datac => \text_gen|Mux6~10_combout\,
	datad => \vga1|counterH|auto_generated|safe_q\(4),
	combout => \text_gen|char_code[5]~10_combout\);

-- Location: LCCOMB_X37_Y20_N12
\text_gen|char_code[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[5]~11_combout\ = (\vga1|COLUMN[6]~3_combout\ & ((\text_gen|char_code[5]~0_combout\ & ((\vga1|Add1~0_combout\))) # (!\text_gen|char_code[5]~0_combout\ & (\text_gen|char_code[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|char_code[5]~0_combout\,
	datab => \text_gen|char_code[5]~10_combout\,
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => \vga1|Add1~0_combout\,
	combout => \text_gen|char_code[5]~11_combout\);

-- Location: LCCOMB_X37_Y20_N14
\text_gen|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux1~0_combout\ = (\vga1|counterH|auto_generated|safe_q\(4)) # ((\text_gen|LessThan35~0_combout\) # ((\vga1|COLUMN~1_combout\) # (!\vga1|counterH|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(4),
	datab => \text_gen|LessThan35~0_combout\,
	datac => \vga1|counterH|auto_generated|safe_q\(5),
	datad => \vga1|COLUMN~1_combout\,
	combout => \text_gen|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y20_N8
\text_gen|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux1~1_combout\ = (\vga1|COLUMN[5]~4_combout\ & (\vga1|COLUMN[7]~5_combout\ $ ((\text_gen|char_code[5]~0_combout\)))) # (!\vga1|COLUMN[5]~4_combout\ & ((\vga1|COLUMN[7]~5_combout\) # ((\text_gen|char_code[5]~0_combout\ & 
-- !\text_gen|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \vga1|COLUMN[7]~5_combout\,
	datac => \text_gen|char_code[5]~0_combout\,
	datad => \text_gen|Mux3~4_combout\,
	combout => \text_gen|Mux1~1_combout\);

-- Location: LCCOMB_X37_Y20_N18
\text_gen|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux1~2_combout\ = (\text_gen|char_code[5]~0_combout\ & (\text_gen|Mux1~1_combout\)) # (!\text_gen|char_code[5]~0_combout\ & ((\text_gen|Mux1~1_combout\ & ((!\text_gen|Mux6~12_combout\))) # (!\text_gen|Mux1~1_combout\ & 
-- (\text_gen|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|char_code[5]~0_combout\,
	datab => \text_gen|Mux1~1_combout\,
	datac => \text_gen|Mux1~0_combout\,
	datad => \text_gen|Mux6~12_combout\,
	combout => \text_gen|Mux1~2_combout\);

-- Location: LCCOMB_X37_Y20_N20
\text_gen|char_code[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[5]~12_combout\ = (\text_gen|char_code[5]~11_combout\) # (((\text_gen|Mux1~2_combout\ & !\vga1|COLUMN[6]~3_combout\)) # (!\text_gen|char_code[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|char_code[5]~11_combout\,
	datab => \text_gen|Mux1~2_combout\,
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => \text_gen|char_code[0]~1_combout\,
	combout => \text_gen|char_code[5]~12_combout\);

-- Location: LCCOMB_X37_Y21_N26
\text_gen|char_code[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[6]~13_combout\ = (\vga1|COLUMN[5]~4_combout\ & (\text_gen|char_code[5]~0_combout\ & (!\vga1|COLUMN[6]~3_combout\ & \vga1|COLUMN[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|char_code[5]~0_combout\,
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => \vga1|COLUMN[7]~5_combout\,
	combout => \text_gen|char_code[6]~13_combout\);

-- Location: LCCOMB_X37_Y21_N20
\text_gen|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux0~0_combout\ = (\vga1|COLUMN[6]~3_combout\ & (!\text_gen|Mux3~4_combout\ & (!\text_gen|char_code[5]~0_combout\ & \vga1|COLUMN[5]~4_combout\))) # (!\vga1|COLUMN[6]~3_combout\ & (((\vga1|COLUMN[5]~4_combout\) # 
-- (!\text_gen|char_code[5]~0_combout\)) # (!\text_gen|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[6]~3_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \text_gen|char_code[5]~0_combout\,
	datad => \vga1|COLUMN[5]~4_combout\,
	combout => \text_gen|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y21_N6
\text_gen|char_code[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[6]~14_combout\ = (\text_gen|char_code[0]~1_combout\ & ((\text_gen|char_code[6]~13_combout\) # ((!\text_gen|Mux0~0_combout\ & !\vga1|COLUMN[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|Mux0~0_combout\,
	datab => \vga1|COLUMN[7]~5_combout\,
	datac => \text_gen|char_code[0]~1_combout\,
	datad => \text_gen|char_code[6]~13_combout\,
	combout => \text_gen|char_code[6]~14_combout\);

-- Location: LCCOMB_X40_Y20_N0
\vga1|COLUMN[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|COLUMN[1]~6_combout\ = (\vga1|COLUMN~1_combout\) # (\vga1|counterH|auto_generated|safe_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|COLUMN~1_combout\,
	datac => \vga1|counterH|auto_generated|safe_q\(1),
	combout => \vga1|COLUMN[1]~6_combout\);

-- Location: LCCOMB_X40_Y20_N10
\vga1|COLUMN[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|COLUMN[2]~7_combout\ = (\vga1|counterH|auto_generated|safe_q\(2)) # (\vga1|COLUMN~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|counterH|auto_generated|safe_q\(2),
	datad => \vga1|COLUMN~1_combout\,
	combout => \vga1|COLUMN[2]~7_combout\);

-- Location: LCCOMB_X40_Y20_N20
\vga1|COLUMN[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|COLUMN[3]~8_combout\ = (\vga1|counterH|auto_generated|safe_q\(3)) # (\vga1|COLUMN~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|counterH|auto_generated|safe_q\(3),
	datad => \vga1|COLUMN~1_combout\,
	combout => \vga1|COLUMN[3]~8_combout\);

-- Location: LCCOMB_X40_Y18_N24
\vga1|ROW[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|ROW[1]~0_combout\ = (\vga1|Add0~0_combout\) # (\vga1|BLANKING~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Add0~0_combout\,
	datac => \vga1|BLANKING~3_combout\,
	combout => \vga1|ROW[1]~0_combout\);

-- Location: LCCOMB_X40_Y18_N18
\vga1|ROW[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|ROW[2]~1_combout\ = (\vga1|BLANKING~3_combout\) # (\vga1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|BLANKING~3_combout\,
	datad => \vga1|Add0~2_combout\,
	combout => \vga1|ROW[2]~1_combout\);

-- Location: LCCOMB_X40_Y18_N28
\vga1|ROW[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|ROW[3]~2_combout\ = (!\vga1|BLANKING~3_combout\ & \vga1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|BLANKING~3_combout\,
	datac => \vga1|Add0~4_combout\,
	combout => \vga1|ROW[3]~2_combout\);

-- Location: LCCOMB_X40_Y18_N30
\vga1|ROW[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|ROW[4]~3_combout\ = (\vga1|Add0~6_combout\) # (\vga1|BLANKING~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Add0~6_combout\,
	datac => \vga1|BLANKING~3_combout\,
	combout => \vga1|ROW[4]~3_combout\);

-- Location: LCCOMB_X43_Y19_N28
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\counterS|auto_generated|safe_q\(25) & (!\counterS|auto_generated|safe_q\(26) & (\counterS|auto_generated|safe_q\(23) & !\counterS|auto_generated|safe_q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(25),
	datab => \counterS|auto_generated|safe_q\(26),
	datac => \counterS|auto_generated|safe_q\(23),
	datad => \counterS|auto_generated|safe_q\(24),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X42_Y19_N22
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\counterS|auto_generated|safe_q\(21) & (\counterS|auto_generated|safe_q\(19) & (\counterS|auto_generated|safe_q\(20) & \counterS|auto_generated|safe_q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(21),
	datab => \counterS|auto_generated|safe_q\(19),
	datac => \counterS|auto_generated|safe_q\(20),
	datad => \counterS|auto_generated|safe_q\(22),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X43_Y19_N30
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\counterS|auto_generated|safe_q\(18) & (\counterS|auto_generated|safe_q\(17) & (\counterS|auto_generated|safe_q\(15) & !\counterS|auto_generated|safe_q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(18),
	datab => \counterS|auto_generated|safe_q\(17),
	datac => \counterS|auto_generated|safe_q\(15),
	datad => \counterS|auto_generated|safe_q\(16),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X42_Y19_N16
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\counterS|auto_generated|safe_q\(12) & (!\counterS|auto_generated|safe_q\(11) & (\counterS|auto_generated|safe_q\(13) & \counterS|auto_generated|safe_q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(12),
	datab => \counterS|auto_generated|safe_q\(11),
	datac => \counterS|auto_generated|safe_q\(13),
	datad => \counterS|auto_generated|safe_q\(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X42_Y19_N18
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X43_Y20_N0
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\counterS|auto_generated|safe_q\(9) & (!\counterS|auto_generated|safe_q\(10) & (\counterS|auto_generated|safe_q\(7) & !\counterS|auto_generated|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(9),
	datab => \counterS|auto_generated|safe_q\(10),
	datac => \counterS|auto_generated|safe_q\(7),
	datad => \counterS|auto_generated|safe_q\(8),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X43_Y20_N2
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\counterS|auto_generated|safe_q\(3) & (!\counterS|auto_generated|safe_q\(4) & (!\counterS|auto_generated|safe_q\(5) & !\counterS|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(3),
	datab => \counterS|auto_generated|safe_q\(4),
	datac => \counterS|auto_generated|safe_q\(5),
	datad => \counterS|auto_generated|safe_q\(6),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X43_Y20_N4
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\counterS|auto_generated|safe_q\(2) & (!\counterS|auto_generated|safe_q\(1) & !\counterS|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counterS|auto_generated|safe_q\(2),
	datac => \counterS|auto_generated|safe_q\(1),
	datad => \counterS|auto_generated|safe_q\(0),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X42_Y19_N28
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~6_combout\ & (\Equal0~4_combout\ & (\Equal0~5_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X42_Y19_N8
\score_sig[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \score_sig[0]~15_combout\ = score_sig(0) $ (\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => score_sig(0),
	datad => \Equal0~8_combout\,
	combout => \score_sig[0]~15_combout\);

-- Location: LCCOMB_X42_Y19_N26
\level_sig[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \level_sig[1]~0_combout\ = level_sig(1) $ (((score_sig(0) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(0),
	datac => level_sig(1),
	datad => \Equal0~8_combout\,
	combout => \level_sig[1]~0_combout\);

-- Location: LCCOMB_X42_Y19_N12
\level_sig[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \level_sig[2]~1_combout\ = level_sig(2) $ (((score_sig(0) & (level_sig(1) & \Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(0),
	datab => level_sig(1),
	datac => level_sig(2),
	datad => \Equal0~8_combout\,
	combout => \level_sig[2]~1_combout\);

-- Location: LCFF_X42_Y19_N29
counterReset_sig : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counterReset_sig~regout\);

-- Location: LCCOMB_X37_Y19_N10
\text_gen|Mux5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux5~10_combout\ = (\text_gen|LessThan21~15_combout\ & (\text_gen|bcd~113_combout\ & ((\text_gen|bcd~101_combout\) # (!\text_gen|bcd~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~102_combout\,
	datab => \text_gen|bcd~101_combout\,
	datac => \text_gen|LessThan21~15_combout\,
	datad => \text_gen|bcd~113_combout\,
	combout => \text_gen|Mux5~10_combout\);

-- Location: LCCOMB_X37_Y20_N22
\text_gen|Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux3~11_combout\ = (\text_gen|char_code[5]~0_combout\ & (!\vga1|COLUMN~1_combout\ & (!\vga1|counterH|auto_generated|safe_q\(5) & \vga1|counterH|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|char_code[5]~0_combout\,
	datab => \vga1|COLUMN~1_combout\,
	datac => \vga1|counterH|auto_generated|safe_q\(5),
	datad => \vga1|counterH|auto_generated|safe_q\(4),
	combout => \text_gen|Mux3~11_combout\);

-- Location: LCCOMB_X37_Y19_N28
\text_gen|Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux3~12_combout\ = (!\vga1|COLUMN~1_combout\ & (\vga1|counterH|auto_generated|safe_q\(4) & ((!\text_gen|Mux3~5_combout\) # (!\text_gen|score_BCD_sig[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN~1_combout\,
	datab => \vga1|counterH|auto_generated|safe_q\(4),
	datac => \text_gen|score_BCD_sig[7]~10_combout\,
	datad => \text_gen|Mux3~5_combout\,
	combout => \text_gen|Mux3~12_combout\);

-- Location: LCCOMB_X34_Y20_N4
\text_gen|bcd~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~115_combout\ = \text_gen|bcd~13_combout\ $ ((((!score_sig(11) & !\text_gen|bcd~12_combout\)) # (!\text_gen|bcd~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(11),
	datab => \text_gen|bcd~12_combout\,
	datac => \text_gen|bcd~13_combout\,
	datad => \text_gen|bcd~14_combout\,
	combout => \text_gen|bcd~115_combout\);

-- Location: LCCOMB_X34_Y20_N30
\text_gen|bcd~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~116_combout\ = (score_sig(15) & ((score_sig(13) & (score_sig(12) & score_sig(14))) # (!score_sig(13) & ((!score_sig(14)))))) # (!score_sig(15) & (score_sig(14) & ((score_sig(12)) # (score_sig(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(15),
	datab => score_sig(12),
	datac => score_sig(13),
	datad => score_sig(14),
	combout => \text_gen|bcd~116_combout\);

-- Location: LCCOMB_X34_Y20_N0
\text_gen|bcd~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~117_combout\ = ((!score_sig(13) & !score_sig(14))) # (!score_sig(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(15),
	datac => score_sig(13),
	datad => score_sig(14),
	combout => \text_gen|bcd~117_combout\);

-- Location: LCCOMB_X34_Y20_N10
\text_gen|LessThan21~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|LessThan21~15_combout\ = (score_sig(12) & (score_sig(14) & (score_sig(13) & \text_gen|LessThan21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(12),
	datab => score_sig(14),
	datac => score_sig(13),
	datad => \text_gen|LessThan21~3_combout\,
	combout => \text_gen|LessThan21~15_combout\);

-- Location: LCCOMB_X34_Y20_N28
\text_gen|LessThan21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|LessThan21~3_combout\ = (score_sig(15) & (score_sig(11) & ((score_sig(10)) # (score_sig(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(15),
	datab => score_sig(10),
	datac => score_sig(11),
	datad => score_sig(9),
	combout => \text_gen|LessThan21~3_combout\);

-- Location: LCCOMB_X34_Y20_N22
\text_gen|bcd~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~4_combout\ = (score_sig(12) & (score_sig(13) & ((score_sig(15)) # (!score_sig(14))))) # (!score_sig(12) & ((score_sig(13) & (score_sig(15) & !score_sig(14))) # (!score_sig(13) & ((score_sig(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(15),
	datab => score_sig(12),
	datac => score_sig(13),
	datad => score_sig(14),
	combout => \text_gen|bcd~4_combout\);

-- Location: LCCOMB_X34_Y20_N8
\text_gen|bcd~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~5_combout\ = (score_sig(13) & (((score_sig(15) & score_sig(12))) # (!score_sig(14)))) # (!score_sig(13) & (!score_sig(15) & (!score_sig(12) & score_sig(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(15),
	datab => score_sig(12),
	datac => score_sig(13),
	datad => score_sig(14),
	combout => \text_gen|bcd~5_combout\);

-- Location: LCCOMB_X34_Y20_N18
\text_gen|bcd~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~8_combout\ = (score_sig(13) & (score_sig(12) & (score_sig(15) $ (!score_sig(14))))) # (!score_sig(13) & ((score_sig(15) & ((!score_sig(14)))) # (!score_sig(15) & (!score_sig(12) & score_sig(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(15),
	datab => score_sig(12),
	datac => score_sig(13),
	datad => score_sig(14),
	combout => \text_gen|bcd~8_combout\);

-- Location: LCCOMB_X33_Y20_N14
\text_gen|bcd~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~9_combout\ = (score_sig(14) & ((score_sig(13) & (score_sig(12))) # (!score_sig(13) & (!score_sig(12) & !score_sig(15))))) # (!score_sig(14) & (score_sig(13) $ (((score_sig(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score_sig(13),
	datab => score_sig(12),
	datac => score_sig(15),
	datad => score_sig(14),
	combout => \text_gen|bcd~9_combout\);

-- Location: LCCOMB_X34_Y20_N20
\text_gen|bcd~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~10_combout\ = (score_sig(11) & ((\text_gen|bcd~9_combout\) # ((\text_gen|bcd~45_combout\)))) # (!score_sig(11) & (((\text_gen|bcd~8_combout\ & !\text_gen|bcd~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~9_combout\,
	datab => \text_gen|bcd~8_combout\,
	datac => score_sig(11),
	datad => \text_gen|bcd~45_combout\,
	combout => \text_gen|bcd~10_combout\);

-- Location: LCCOMB_X34_Y20_N6
\text_gen|bcd~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|bcd~11_combout\ = (\text_gen|bcd~10_combout\ & ((\text_gen|bcd~5_combout\) # ((!\text_gen|bcd~45_combout\)))) # (!\text_gen|bcd~10_combout\ & (((\text_gen|bcd~4_combout\ & \text_gen|bcd~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|bcd~5_combout\,
	datab => \text_gen|bcd~4_combout\,
	datac => \text_gen|bcd~10_combout\,
	datad => \text_gen|bcd~45_combout\,
	combout => \text_gen|bcd~11_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\life[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_life(2),
	combout => \life~combout\(2));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\life[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_life(0),
	combout => \life~combout\(0));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\life[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_life(1),
	combout => \life~combout\(1));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y20_N0
\vga1|counterH|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterH|auto_generated|counter_comb_bita0~combout\ = \vga1|counterH|auto_generated|safe_q\(0) $ (VCC)
-- \vga1|counterH|auto_generated|counter_comb_bita0~COUT\ = CARRY(\vga1|counterH|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterH|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \vga1|counterH|auto_generated|counter_comb_bita0~combout\,
	cout => \vga1|counterH|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X39_Y20_N22
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCCOMB_X39_Y20_N8
\vga1|counterH|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterH|auto_generated|counter_comb_bita4~combout\ = (\vga1|counterH|auto_generated|safe_q\(4) & (\vga1|counterH|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\vga1|counterH|auto_generated|safe_q\(4) & 
-- (!\vga1|counterH|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \vga1|counterH|auto_generated|counter_comb_bita4~COUT\ = CARRY((\vga1|counterH|auto_generated|safe_q\(4) & !\vga1|counterH|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterH|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \vga1|counterH|auto_generated|counter_comb_bita3~COUT\,
	combout => \vga1|counterH|auto_generated|counter_comb_bita4~combout\,
	cout => \vga1|counterH|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X39_Y20_N10
\vga1|counterH|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterH|auto_generated|counter_comb_bita5~combout\ = (\vga1|counterH|auto_generated|safe_q\(5) & (!\vga1|counterH|auto_generated|counter_comb_bita4~COUT\)) # (!\vga1|counterH|auto_generated|safe_q\(5) & 
-- ((\vga1|counterH|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \vga1|counterH|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\vga1|counterH|auto_generated|counter_comb_bita4~COUT\) # (!\vga1|counterH|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterH|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \vga1|counterH|auto_generated|counter_comb_bita4~COUT\,
	combout => \vga1|counterH|auto_generated|counter_comb_bita5~combout\,
	cout => \vga1|counterH|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCFF_X39_Y20_N11
\vga1|counterH|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterH|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterH|auto_generated|safe_q\(5));

-- Location: LCCOMB_X39_Y20_N12
\vga1|counterH|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterH|auto_generated|counter_comb_bita6~combout\ = (\vga1|counterH|auto_generated|safe_q\(6) & (\vga1|counterH|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\vga1|counterH|auto_generated|safe_q\(6) & 
-- (!\vga1|counterH|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \vga1|counterH|auto_generated|counter_comb_bita6~COUT\ = CARRY((\vga1|counterH|auto_generated|safe_q\(6) & !\vga1|counterH|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \vga1|counterH|auto_generated|counter_comb_bita5~COUT\,
	combout => \vga1|counterH|auto_generated|counter_comb_bita6~combout\,
	cout => \vga1|counterH|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X39_Y20_N14
\vga1|counterH|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterH|auto_generated|counter_comb_bita7~combout\ = (\vga1|counterH|auto_generated|safe_q\(7) & (!\vga1|counterH|auto_generated|counter_comb_bita6~COUT\)) # (!\vga1|counterH|auto_generated|safe_q\(7) & 
-- ((\vga1|counterH|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \vga1|counterH|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\vga1|counterH|auto_generated|counter_comb_bita6~COUT\) # (!\vga1|counterH|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \vga1|counterH|auto_generated|counter_comb_bita6~COUT\,
	combout => \vga1|counterH|auto_generated|counter_comb_bita7~combout\,
	cout => \vga1|counterH|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCFF_X39_Y20_N15
\vga1|counterH|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterH|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterH|auto_generated|safe_q\(7));

-- Location: LCFF_X39_Y20_N13
\vga1|counterH|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterH|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterH|auto_generated|safe_q\(6));

-- Location: LCCOMB_X39_Y20_N16
\vga1|counterH|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterH|auto_generated|counter_comb_bita8~combout\ = (\vga1|counterH|auto_generated|safe_q\(8) & (\vga1|counterH|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\vga1|counterH|auto_generated|safe_q\(8) & 
-- (!\vga1|counterH|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \vga1|counterH|auto_generated|counter_comb_bita8~COUT\ = CARRY((\vga1|counterH|auto_generated|safe_q\(8) & !\vga1|counterH|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \vga1|counterH|auto_generated|counter_comb_bita7~COUT\,
	combout => \vga1|counterH|auto_generated|counter_comb_bita8~combout\,
	cout => \vga1|counterH|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCCOMB_X39_Y20_N18
\vga1|counterH|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterH|auto_generated|counter_comb_bita9~combout\ = (\vga1|counterH|auto_generated|safe_q\(9) & (!\vga1|counterH|auto_generated|counter_comb_bita8~COUT\)) # (!\vga1|counterH|auto_generated|safe_q\(9) & 
-- ((\vga1|counterH|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \vga1|counterH|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\vga1|counterH|auto_generated|counter_comb_bita8~COUT\) # (!\vga1|counterH|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterH|auto_generated|safe_q\(9),
	datad => VCC,
	cin => \vga1|counterH|auto_generated|counter_comb_bita8~COUT\,
	combout => \vga1|counterH|auto_generated|counter_comb_bita9~combout\,
	cout => \vga1|counterH|auto_generated|counter_comb_bita9~COUT\);

-- Location: LCFF_X39_Y20_N19
\vga1|counterH|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterH|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterH|auto_generated|safe_q\(9));

-- Location: LCCOMB_X38_Y20_N0
\vga1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Equal0~0_combout\ = (!\vga1|counterH|auto_generated|safe_q\(8) & (!\vga1|counterH|auto_generated|safe_q\(7) & (!\vga1|counterH|auto_generated|safe_q\(6) & !\vga1|counterH|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(8),
	datab => \vga1|counterH|auto_generated|safe_q\(7),
	datac => \vga1|counterH|auto_generated|safe_q\(6),
	datad => \vga1|counterH|auto_generated|safe_q\(9),
	combout => \vga1|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y20_N28
\vga1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Equal0~1_combout\ = (!\vga1|counterH|auto_generated|safe_q\(3) & (!\vga1|counterH|auto_generated|safe_q\(0) & (!\vga1|counterH|auto_generated|safe_q\(2) & !\vga1|counterH|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(3),
	datab => \vga1|counterH|auto_generated|safe_q\(0),
	datac => \vga1|counterH|auto_generated|safe_q\(2),
	datad => \vga1|counterH|auto_generated|safe_q\(1),
	combout => \vga1|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y20_N16
\vga1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Equal0~3_combout\ = (\vga1|Equal0~2_combout\ & (\vga1|Equal0~0_combout\ & (!\vga1|counterH|auto_generated|safe_q\(5) & \vga1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal0~2_combout\,
	datab => \vga1|Equal0~0_combout\,
	datac => \vga1|counterH|auto_generated|safe_q\(5),
	datad => \vga1|Equal0~1_combout\,
	combout => \vga1|Equal0~3_combout\);

-- Location: LCFF_X39_Y20_N1
\vga1|counterH|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterH|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterH|auto_generated|safe_q\(0));

-- Location: LCCOMB_X39_Y20_N2
\vga1|counterH|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterH|auto_generated|counter_comb_bita1~combout\ = (\vga1|counterH|auto_generated|safe_q\(1) & (!\vga1|counterH|auto_generated|counter_comb_bita0~COUT\)) # (!\vga1|counterH|auto_generated|safe_q\(1) & 
-- ((\vga1|counterH|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \vga1|counterH|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\vga1|counterH|auto_generated|counter_comb_bita0~COUT\) # (!\vga1|counterH|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterH|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \vga1|counterH|auto_generated|counter_comb_bita0~COUT\,
	combout => \vga1|counterH|auto_generated|counter_comb_bita1~combout\,
	cout => \vga1|counterH|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X39_Y20_N3
\vga1|counterH|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterH|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterH|auto_generated|safe_q\(1));

-- Location: LCCOMB_X39_Y20_N4
\vga1|counterH|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterH|auto_generated|counter_comb_bita2~combout\ = (\vga1|counterH|auto_generated|safe_q\(2) & (\vga1|counterH|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\vga1|counterH|auto_generated|safe_q\(2) & 
-- (!\vga1|counterH|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \vga1|counterH|auto_generated|counter_comb_bita2~COUT\ = CARRY((\vga1|counterH|auto_generated|safe_q\(2) & !\vga1|counterH|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterH|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \vga1|counterH|auto_generated|counter_comb_bita1~COUT\,
	combout => \vga1|counterH|auto_generated|counter_comb_bita2~combout\,
	cout => \vga1|counterH|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X39_Y20_N5
\vga1|counterH|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterH|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterH|auto_generated|safe_q\(2));

-- Location: LCCOMB_X39_Y20_N6
\vga1|counterH|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterH|auto_generated|counter_comb_bita3~combout\ = (\vga1|counterH|auto_generated|safe_q\(3) & (!\vga1|counterH|auto_generated|counter_comb_bita2~COUT\)) # (!\vga1|counterH|auto_generated|safe_q\(3) & 
-- ((\vga1|counterH|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \vga1|counterH|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\vga1|counterH|auto_generated|counter_comb_bita2~COUT\) # (!\vga1|counterH|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \vga1|counterH|auto_generated|counter_comb_bita2~COUT\,
	combout => \vga1|counterH|auto_generated|counter_comb_bita3~combout\,
	cout => \vga1|counterH|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCFF_X39_Y20_N9
\vga1|counterH|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterH|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterH|auto_generated|safe_q\(4));

-- Location: LCCOMB_X39_Y20_N20
\vga1|counterH|auto_generated|counter_comb_bita10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterH|auto_generated|counter_comb_bita10~combout\ = \vga1|counterH|auto_generated|safe_q\(10) $ (!\vga1|counterH|auto_generated|counter_comb_bita9~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(10),
	cin => \vga1|counterH|auto_generated|counter_comb_bita9~COUT\,
	combout => \vga1|counterH|auto_generated|counter_comb_bita10~combout\);

-- Location: LCFF_X39_Y20_N21
\vga1|counterH|auto_generated|counter_reg_bit1a[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterH|auto_generated|counter_comb_bita10~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterH|auto_generated|safe_q\(10));

-- Location: LCCOMB_X38_Y20_N14
\vga1|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|LessThan2~0_combout\ = ((!\vga1|counterH|auto_generated|safe_q\(6) & ((!\vga1|counterH|auto_generated|safe_q\(5)) # (!\vga1|counterH|auto_generated|safe_q\(4))))) # (!\vga1|counterH|auto_generated|safe_q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(6),
	datab => \vga1|counterH|auto_generated|safe_q\(7),
	datac => \vga1|counterH|auto_generated|safe_q\(4),
	datad => \vga1|counterH|auto_generated|safe_q\(5),
	combout => \vga1|LessThan2~0_combout\);

-- Location: LCCOMB_X38_Y20_N8
\vga1|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|LessThan2~1_combout\ = (!\vga1|counterH|auto_generated|safe_q\(8) & (!\vga1|counterH|auto_generated|safe_q\(10) & (\vga1|LessThan2~0_combout\ & !\vga1|counterH|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(8),
	datab => \vga1|counterH|auto_generated|safe_q\(10),
	datac => \vga1|LessThan2~0_combout\,
	datad => \vga1|counterH|auto_generated|safe_q\(9),
	combout => \vga1|LessThan2~1_combout\);

-- Location: LCCOMB_X39_Y18_N6
\vga1|counterV|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterV|auto_generated|counter_comb_bita0~combout\ = \vga1|counterV|auto_generated|safe_q\(0) $ (VCC)
-- \vga1|counterV|auto_generated|counter_comb_bita0~COUT\ = CARRY(\vga1|counterV|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \vga1|counterV|auto_generated|counter_comb_bita0~combout\,
	cout => \vga1|counterV|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X39_Y18_N8
\vga1|counterV|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterV|auto_generated|counter_comb_bita1~combout\ = (\vga1|counterV|auto_generated|safe_q\(1) & (!\vga1|counterV|auto_generated|counter_comb_bita0~COUT\)) # (!\vga1|counterV|auto_generated|safe_q\(1) & 
-- ((\vga1|counterV|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \vga1|counterV|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\vga1|counterV|auto_generated|counter_comb_bita0~COUT\) # (!\vga1|counterV|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterV|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \vga1|counterV|auto_generated|counter_comb_bita0~COUT\,
	combout => \vga1|counterV|auto_generated|counter_comb_bita1~combout\,
	cout => \vga1|counterV|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X39_Y18_N12
\vga1|counterV|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterV|auto_generated|counter_comb_bita3~combout\ = (\vga1|counterV|auto_generated|safe_q\(3) & (!\vga1|counterV|auto_generated|counter_comb_bita2~COUT\)) # (!\vga1|counterV|auto_generated|safe_q\(3) & 
-- ((\vga1|counterV|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \vga1|counterV|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\vga1|counterV|auto_generated|counter_comb_bita2~COUT\) # (!\vga1|counterV|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \vga1|counterV|auto_generated|counter_comb_bita2~COUT\,
	combout => \vga1|counterV|auto_generated|counter_comb_bita3~combout\,
	cout => \vga1|counterV|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X39_Y18_N30
\vga1|counterV|auto_generated|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterV|auto_generated|_~0_combout\ = (\vga1|Equal0~3_combout\) # (\vga1|Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Equal0~3_combout\,
	datad => \vga1|Equal2~3_combout\,
	combout => \vga1|counterV|auto_generated|_~0_combout\);

-- Location: LCFF_X39_Y18_N13
\vga1|counterV|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterV|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal2~3_combout\,
	ena => \vga1|counterV|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterV|auto_generated|safe_q\(3));

-- Location: LCCOMB_X39_Y18_N4
\vga1|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Equal2~1_combout\ = (!\vga1|counterV|auto_generated|safe_q\(5) & (!\vga1|counterV|auto_generated|safe_q\(6) & (\vga1|counterV|auto_generated|safe_q\(4) & \vga1|counterV|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(5),
	datab => \vga1|counterV|auto_generated|safe_q\(6),
	datac => \vga1|counterV|auto_generated|safe_q\(4),
	datad => \vga1|counterV|auto_generated|safe_q\(3),
	combout => \vga1|Equal2~1_combout\);

-- Location: LCFF_X39_Y18_N7
\vga1|counterV|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterV|auto_generated|counter_comb_bita0~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal2~3_combout\,
	ena => \vga1|counterV|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterV|auto_generated|safe_q\(0));

-- Location: LCCOMB_X39_Y18_N28
\vga1|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Equal2~3_combout\ = (\vga1|Equal2~2_combout\ & (\vga1|Equal2~1_combout\ & (\vga1|counterV|auto_generated|safe_q\(1) & !\vga1|counterV|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Equal2~2_combout\,
	datab => \vga1|Equal2~1_combout\,
	datac => \vga1|counterV|auto_generated|safe_q\(1),
	datad => \vga1|counterV|auto_generated|safe_q\(0),
	combout => \vga1|Equal2~3_combout\);

-- Location: LCFF_X39_Y18_N9
\vga1|counterV|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterV|auto_generated|counter_comb_bita1~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal2~3_combout\,
	ena => \vga1|counterV|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterV|auto_generated|safe_q\(1));

-- Location: LCCOMB_X39_Y18_N10
\vga1|counterV|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterV|auto_generated|counter_comb_bita2~combout\ = (\vga1|counterV|auto_generated|safe_q\(2) & (\vga1|counterV|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\vga1|counterV|auto_generated|safe_q\(2) & 
-- (!\vga1|counterV|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \vga1|counterV|auto_generated|counter_comb_bita2~COUT\ = CARRY((\vga1|counterV|auto_generated|safe_q\(2) & !\vga1|counterV|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \vga1|counterV|auto_generated|counter_comb_bita1~COUT\,
	combout => \vga1|counterV|auto_generated|counter_comb_bita2~combout\,
	cout => \vga1|counterV|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X39_Y18_N14
\vga1|counterV|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterV|auto_generated|counter_comb_bita4~combout\ = (\vga1|counterV|auto_generated|safe_q\(4) & (\vga1|counterV|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\vga1|counterV|auto_generated|safe_q\(4) & 
-- (!\vga1|counterV|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \vga1|counterV|auto_generated|counter_comb_bita4~COUT\ = CARRY((\vga1|counterV|auto_generated|safe_q\(4) & !\vga1|counterV|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterV|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \vga1|counterV|auto_generated|counter_comb_bita3~COUT\,
	combout => \vga1|counterV|auto_generated|counter_comb_bita4~combout\,
	cout => \vga1|counterV|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X39_Y18_N15
\vga1|counterV|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterV|auto_generated|counter_comb_bita4~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal2~3_combout\,
	ena => \vga1|counterV|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterV|auto_generated|safe_q\(4));

-- Location: LCCOMB_X39_Y18_N16
\vga1|counterV|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterV|auto_generated|counter_comb_bita5~combout\ = (\vga1|counterV|auto_generated|safe_q\(5) & (!\vga1|counterV|auto_generated|counter_comb_bita4~COUT\)) # (!\vga1|counterV|auto_generated|safe_q\(5) & 
-- ((\vga1|counterV|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \vga1|counterV|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\vga1|counterV|auto_generated|counter_comb_bita4~COUT\) # (!\vga1|counterV|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \vga1|counterV|auto_generated|counter_comb_bita4~COUT\,
	combout => \vga1|counterV|auto_generated|counter_comb_bita5~combout\,
	cout => \vga1|counterV|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X39_Y18_N18
\vga1|counterV|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterV|auto_generated|counter_comb_bita6~combout\ = (\vga1|counterV|auto_generated|safe_q\(6) & (\vga1|counterV|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\vga1|counterV|auto_generated|safe_q\(6) & 
-- (!\vga1|counterV|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \vga1|counterV|auto_generated|counter_comb_bita6~COUT\ = CARRY((\vga1|counterV|auto_generated|safe_q\(6) & !\vga1|counterV|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterV|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \vga1|counterV|auto_generated|counter_comb_bita5~COUT\,
	combout => \vga1|counterV|auto_generated|counter_comb_bita6~combout\,
	cout => \vga1|counterV|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X39_Y18_N19
\vga1|counterV|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterV|auto_generated|counter_comb_bita6~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal2~3_combout\,
	ena => \vga1|counterV|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterV|auto_generated|safe_q\(6));

-- Location: LCCOMB_X39_Y18_N20
\vga1|counterV|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterV|auto_generated|counter_comb_bita7~combout\ = (\vga1|counterV|auto_generated|safe_q\(7) & (!\vga1|counterV|auto_generated|counter_comb_bita6~COUT\)) # (!\vga1|counterV|auto_generated|safe_q\(7) & 
-- ((\vga1|counterV|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \vga1|counterV|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\vga1|counterV|auto_generated|counter_comb_bita6~COUT\) # (!\vga1|counterV|auto_generated|safe_q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(7),
	datad => VCC,
	cin => \vga1|counterV|auto_generated|counter_comb_bita6~COUT\,
	combout => \vga1|counterV|auto_generated|counter_comb_bita7~combout\,
	cout => \vga1|counterV|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X39_Y18_N22
\vga1|counterV|auto_generated|counter_comb_bita8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterV|auto_generated|counter_comb_bita8~combout\ = (\vga1|counterV|auto_generated|safe_q\(8) & (\vga1|counterV|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\vga1|counterV|auto_generated|safe_q\(8) & 
-- (!\vga1|counterV|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \vga1|counterV|auto_generated|counter_comb_bita8~COUT\ = CARRY((\vga1|counterV|auto_generated|safe_q\(8) & !\vga1|counterV|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterV|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \vga1|counterV|auto_generated|counter_comb_bita7~COUT\,
	combout => \vga1|counterV|auto_generated|counter_comb_bita8~combout\,
	cout => \vga1|counterV|auto_generated|counter_comb_bita8~COUT\);

-- Location: LCFF_X39_Y18_N23
\vga1|counterV|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterV|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal2~3_combout\,
	ena => \vga1|counterV|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterV|auto_generated|safe_q\(8));

-- Location: LCFF_X39_Y18_N21
\vga1|counterV|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterV|auto_generated|counter_comb_bita7~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal2~3_combout\,
	ena => \vga1|counterV|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterV|auto_generated|safe_q\(7));

-- Location: LCFF_X39_Y18_N11
\vga1|counterV|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterV|auto_generated|counter_comb_bita2~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal2~3_combout\,
	ena => \vga1|counterV|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterV|auto_generated|safe_q\(2));

-- Location: LCCOMB_X39_Y18_N0
\vga1|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|LessThan7~0_combout\ = (\vga1|counterV|auto_generated|safe_q\(2)) # ((\vga1|counterV|auto_generated|safe_q\(0) & \vga1|counterV|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(0),
	datac => \vga1|counterV|auto_generated|safe_q\(1),
	datad => \vga1|counterV|auto_generated|safe_q\(2),
	combout => \vga1|LessThan7~0_combout\);

-- Location: LCCOMB_X40_Y20_N2
\vga1|BLANKING~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|BLANKING~2_combout\ = (\vga1|counterV|auto_generated|safe_q\(8)) # ((\vga1|counterV|auto_generated|safe_q\(7) & ((\vga1|BLANKING~1_combout\) # (\vga1|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|BLANKING~1_combout\,
	datab => \vga1|counterV|auto_generated|safe_q\(8),
	datac => \vga1|counterV|auto_generated|safe_q\(7),
	datad => \vga1|LessThan7~0_combout\,
	combout => \vga1|BLANKING~2_combout\);

-- Location: LCFF_X39_Y18_N17
\vga1|counterV|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterV|auto_generated|counter_comb_bita5~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal2~3_combout\,
	ena => \vga1|counterV|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterV|auto_generated|safe_q\(5));

-- Location: LCCOMB_X40_Y20_N8
\vga1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|LessThan0~0_combout\ = ((!\vga1|counterV|auto_generated|safe_q\(4) & ((!\vga1|LessThan7~0_combout\) # (!\vga1|counterV|auto_generated|safe_q\(3))))) # (!\vga1|counterV|auto_generated|safe_q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(3),
	datab => \vga1|LessThan7~0_combout\,
	datac => \vga1|counterV|auto_generated|safe_q\(5),
	datad => \vga1|counterV|auto_generated|safe_q\(4),
	combout => \vga1|LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y18_N24
\vga1|counterV|auto_generated|counter_comb_bita9\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|counterV|auto_generated|counter_comb_bita9~combout\ = \vga1|counterV|auto_generated|safe_q\(9) $ (\vga1|counterV|auto_generated|counter_comb_bita8~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(9),
	cin => \vga1|counterV|auto_generated|counter_comb_bita8~COUT\,
	combout => \vga1|counterV|auto_generated|counter_comb_bita9~combout\);

-- Location: LCFF_X39_Y18_N25
\vga1|counterV|auto_generated|counter_reg_bit1a[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterV|auto_generated|counter_comb_bita9~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal2~3_combout\,
	ena => \vga1|counterV|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterV|auto_generated|safe_q\(9));

-- Location: LCCOMB_X40_Y20_N28
\vga1|BLANKING~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|BLANKING~3_combout\ = (\vga1|BLANKING~0_combout\ & ((\vga1|LessThan0~0_combout\) # ((\vga1|BLANKING~2_combout\ & \vga1|counterV|auto_generated|safe_q\(9))))) # (!\vga1|BLANKING~0_combout\ & (\vga1|BLANKING~2_combout\ & 
-- ((\vga1|counterV|auto_generated|safe_q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|BLANKING~0_combout\,
	datab => \vga1|BLANKING~2_combout\,
	datac => \vga1|LessThan0~0_combout\,
	datad => \vga1|counterV|auto_generated|safe_q\(9),
	combout => \vga1|BLANKING~3_combout\);

-- Location: LCCOMB_X38_Y20_N28
\vga1|COLUMN~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|COLUMN~1_combout\ = (\vga1|LessThan2~1_combout\) # ((\vga1|BLANKING~3_combout\) # ((\vga1|COLUMN~0_combout\ & \vga1|counterH|auto_generated|safe_q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN~0_combout\,
	datab => \vga1|counterH|auto_generated|safe_q\(10),
	datac => \vga1|LessThan2~1_combout\,
	datad => \vga1|BLANKING~3_combout\,
	combout => \vga1|COLUMN~1_combout\);

-- Location: LCCOMB_X38_Y20_N24
\text_gen|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux3~4_combout\ = (\vga1|counterH|auto_generated|safe_q\(4) & !\vga1|COLUMN~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga1|counterH|auto_generated|safe_q\(4),
	datad => \vga1|COLUMN~1_combout\,
	combout => \text_gen|Mux3~4_combout\);

-- Location: LCFF_X39_Y20_N17
\vga1|counterH|auto_generated|counter_reg_bit1a[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterH|auto_generated|counter_comb_bita8~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterH|auto_generated|safe_q\(8));

-- Location: LCCOMB_X38_Y20_N18
\text_gen|char_code[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|char_code[5]~0_combout\ = (!\vga1|COLUMN~1_combout\ & (\vga1|LessThan2~0_combout\ $ (!\vga1|counterH|auto_generated|safe_q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|LessThan2~0_combout\,
	datac => \vga1|counterH|auto_generated|safe_q\(8),
	datad => \vga1|COLUMN~1_combout\,
	combout => \text_gen|char_code[5]~0_combout\);

-- Location: LCCOMB_X38_Y20_N20
\vga1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Add1~0_combout\ = \vga1|counterH|auto_generated|safe_q\(7) $ (((\vga1|counterH|auto_generated|safe_q\(6)) # ((\vga1|counterH|auto_generated|safe_q\(4) & \vga1|counterH|auto_generated|safe_q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(6),
	datab => \vga1|counterH|auto_generated|safe_q\(7),
	datac => \vga1|counterH|auto_generated|safe_q\(4),
	datad => \vga1|counterH|auto_generated|safe_q\(5),
	combout => \vga1|Add1~0_combout\);

-- Location: LCCOMB_X37_Y20_N28
\vga1|COLUMN[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|COLUMN[7]~5_combout\ = (\vga1|Add1~0_combout\ & !\vga1|COLUMN~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga1|Add1~0_combout\,
	datad => \vga1|COLUMN~1_combout\,
	combout => \vga1|COLUMN[7]~5_combout\);

-- Location: LCCOMB_X37_Y21_N24
\text_gen|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux7~0_combout\ = (\vga1|COLUMN[5]~4_combout\ & (\text_gen|Mux3~4_combout\ & ((!\vga1|COLUMN[7]~5_combout\)))) # (!\vga1|COLUMN[5]~4_combout\ & ((\text_gen|char_code[5]~0_combout\ & ((\vga1|COLUMN[7]~5_combout\))) # 
-- (!\text_gen|char_code[5]~0_combout\ & (!\text_gen|Mux3~4_combout\ & !\vga1|COLUMN[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \text_gen|char_code[5]~0_combout\,
	datad => \vga1|COLUMN[7]~5_combout\,
	combout => \text_gen|Mux7~0_combout\);

-- Location: LCCOMB_X38_Y20_N22
\vga1|COLUMN[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|COLUMN[9]~2_combout\ = (\vga1|COLUMN~1_combout\) # (\vga1|counterH|auto_generated|safe_q\(9) $ (((!\vga1|counterH|auto_generated|safe_q\(8) & \vga1|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(8),
	datab => \vga1|COLUMN~1_combout\,
	datac => \vga1|LessThan2~0_combout\,
	datad => \vga1|counterH|auto_generated|safe_q\(9),
	combout => \vga1|COLUMN[9]~2_combout\);

-- Location: LCCOMB_X40_Y18_N8
\vga1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Add0~8_combout\ = (\vga1|counterV|auto_generated|safe_q\(5) & (\vga1|Add0~7\ $ (GND))) # (!\vga1|counterV|auto_generated|safe_q\(5) & (!\vga1|Add0~7\ & VCC))
-- \vga1|Add0~9\ = CARRY((\vga1|counterV|auto_generated|safe_q\(5) & !\vga1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterV|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \vga1|Add0~7\,
	combout => \vga1|Add0~8_combout\,
	cout => \vga1|Add0~9\);

-- Location: LCCOMB_X40_Y18_N10
\vga1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Add0~10_combout\ = (\vga1|counterV|auto_generated|safe_q\(6) & (\vga1|Add0~9\ & VCC)) # (!\vga1|counterV|auto_generated|safe_q\(6) & (!\vga1|Add0~9\))
-- \vga1|Add0~11\ = CARRY((!\vga1|counterV|auto_generated|safe_q\(6) & !\vga1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterV|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \vga1|Add0~9\,
	combout => \vga1|Add0~10_combout\,
	cout => \vga1|Add0~11\);

-- Location: LCCOMB_X40_Y18_N14
\vga1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Add0~14_combout\ = (\vga1|counterV|auto_generated|safe_q\(8) & (\vga1|Add0~13\ & VCC)) # (!\vga1|counterV|auto_generated|safe_q\(8) & (!\vga1|Add0~13\))
-- \vga1|Add0~15\ = CARRY((!\vga1|counterV|auto_generated|safe_q\(8) & !\vga1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga1|counterV|auto_generated|safe_q\(8),
	datad => VCC,
	cin => \vga1|Add0~13\,
	combout => \vga1|Add0~14_combout\,
	cout => \vga1|Add0~15\);

-- Location: LCCOMB_X40_Y18_N22
\text_gen|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Equal0~0_combout\ = (!\vga1|Add0~12_combout\ & (!\vga1|Add0~14_combout\ & (\vga1|Add0~8_combout\ & !\vga1|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|Add0~12_combout\,
	datab => \vga1|Add0~14_combout\,
	datac => \vga1|Add0~8_combout\,
	datad => \vga1|Add0~10_combout\,
	combout => \text_gen|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y18_N16
\vga1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Add0~16_combout\ = \vga1|Add0~15\ $ (\vga1|counterV|auto_generated|safe_q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga1|counterV|auto_generated|safe_q\(9),
	cin => \vga1|Add0~15\,
	combout => \vga1|Add0~16_combout\);

-- Location: LCCOMB_X36_Y21_N24
\R~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \R~2_combout\ = (\R~0_combout\ & (\text_gen|Equal0~0_combout\ & (!\vga1|BLANKING~3_combout\ & \vga1|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~0_combout\,
	datab => \text_gen|Equal0~0_combout\,
	datac => \vga1|BLANKING~3_combout\,
	datad => \vga1|Add0~16_combout\,
	combout => \R~2_combout\);

-- Location: LCCOMB_X36_Y21_N26
\R~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \R~3_combout\ = (\R~2_combout\ & ((\vga1|COLUMN[6]~3_combout\) # ((\vga1|COLUMN[9]~2_combout\) # (!\text_gen|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[6]~3_combout\,
	datab => \text_gen|Mux7~0_combout\,
	datac => \vga1|COLUMN[9]~2_combout\,
	datad => \R~2_combout\,
	combout => \R~3_combout\);

-- Location: LCCOMB_X36_Y21_N14
\R~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \R~1_combout\ = (\R~0_combout\ & (((\vga1|BLANKING~3_combout\) # (!\vga1|Add0~16_combout\)) # (!\text_gen|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~0_combout\,
	datab => \text_gen|Equal0~0_combout\,
	datac => \vga1|BLANKING~3_combout\,
	datad => \vga1|Add0~16_combout\,
	combout => \R~1_combout\);

-- Location: LCCOMB_X36_Y21_N0
\R~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \R~4_combout\ = (\R~3_combout\) # (\R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R~3_combout\,
	datac => \R~1_combout\,
	combout => \R~4_combout\);

-- Location: LCFF_X36_Y21_N1
\R[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \R~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R[0]~reg0_regout\);

-- Location: LCCOMB_X36_Y21_N2
\R[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[1]~reg0feeder_combout\ = \R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~4_combout\,
	combout => \R[1]~reg0feeder_combout\);

-- Location: LCFF_X36_Y21_N3
\R[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \R[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R[1]~reg0_regout\);

-- Location: LCCOMB_X36_Y21_N20
\R[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[2]~reg0feeder_combout\ = \R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~4_combout\,
	combout => \R[2]~reg0feeder_combout\);

-- Location: LCFF_X36_Y21_N21
\R[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \R[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R[2]~reg0_regout\);

-- Location: LCCOMB_X36_Y21_N6
\R[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[3]~reg0feeder_combout\ = \R~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R~4_combout\,
	combout => \R[3]~reg0feeder_combout\);

-- Location: LCFF_X36_Y21_N7
\R[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \R[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \R[3]~reg0_regout\);

-- Location: LCCOMB_X37_Y21_N18
\text_gen|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux8~0_combout\ = (\vga1|COLUMN[5]~4_combout\ & (\text_gen|char_code[5]~0_combout\ & ((\vga1|COLUMN[7]~5_combout\) # (!\text_gen|Mux3~4_combout\)))) # (!\vga1|COLUMN[5]~4_combout\ & (\text_gen|Mux3~4_combout\ & 
-- (!\text_gen|char_code[5]~0_combout\ & !\vga1|COLUMN[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \text_gen|char_code[5]~0_combout\,
	datad => \vga1|COLUMN[7]~5_combout\,
	combout => \text_gen|Mux8~0_combout\);

-- Location: LCCOMB_X37_Y21_N4
\G~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \G~0_combout\ = (\vga1|COLUMN[6]~3_combout\ & (\vga1|COLUMN[7]~5_combout\ $ ((!\text_gen|char_code[5]~0_combout\)))) # (!\vga1|COLUMN[6]~3_combout\ & (((\text_gen|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[6]~3_combout\,
	datab => \vga1|COLUMN[7]~5_combout\,
	datac => \text_gen|char_code[5]~0_combout\,
	datad => \text_gen|Mux8~0_combout\,
	combout => \G~0_combout\);

-- Location: LCCOMB_X36_Y21_N4
\G~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \G~1_combout\ = (\R~2_combout\ & (!\vga1|COLUMN[9]~2_combout\ & \G~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~2_combout\,
	datac => \vga1|COLUMN[9]~2_combout\,
	datad => \G~0_combout\,
	combout => \G~1_combout\);

-- Location: LCCOMB_X34_Y24_N8
\G[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \G[0]~reg0feeder_combout\ = \G~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G~1_combout\,
	combout => \G[0]~reg0feeder_combout\);

-- Location: LCFF_X34_Y24_N9
\G[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G[0]~reg0_regout\);

-- Location: LCCOMB_X37_Y20_N16
\vga1|COLUMN[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|COLUMN[6]~3_combout\ = (\vga1|COLUMN~1_combout\) # (\vga1|counterH|auto_generated|safe_q\(6) $ (((\vga1|counterH|auto_generated|safe_q\(5) & \vga1|counterH|auto_generated|safe_q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(6),
	datab => \vga1|COLUMN~1_combout\,
	datac => \vga1|counterH|auto_generated|safe_q\(5),
	datad => \vga1|counterH|auto_generated|safe_q\(4),
	combout => \vga1|COLUMN[6]~3_combout\);

-- Location: LCCOMB_X37_Y21_N30
\text_gen|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux9~0_combout\ = (\vga1|COLUMN[6]~3_combout\ & (((\vga1|COLUMN[7]~5_combout\)))) # (!\vga1|COLUMN[6]~3_combout\ & (\vga1|COLUMN[5]~4_combout\ & ((\vga1|COLUMN[7]~5_combout\) # (!\text_gen|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => \vga1|COLUMN[7]~5_combout\,
	combout => \text_gen|Mux9~0_combout\);

-- Location: LCCOMB_X37_Y21_N0
\text_gen|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux9~1_combout\ = (!\vga1|COLUMN[6]~3_combout\ & (!\vga1|COLUMN[7]~5_combout\ & (\vga1|COLUMN[5]~4_combout\ $ (!\text_gen|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => \vga1|COLUMN[7]~5_combout\,
	combout => \text_gen|Mux9~1_combout\);

-- Location: LCCOMB_X36_Y21_N28
\G~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \G~2_combout\ = (\vga1|COLUMN[9]~2_combout\) # ((\text_gen|char_code[5]~0_combout\ & (\text_gen|Mux9~0_combout\)) # (!\text_gen|char_code[5]~0_combout\ & ((!\text_gen|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[9]~2_combout\,
	datab => \text_gen|Mux9~0_combout\,
	datac => \text_gen|Mux9~1_combout\,
	datad => \text_gen|char_code[5]~0_combout\,
	combout => \G~2_combout\);

-- Location: LCCOMB_X36_Y21_N16
\G~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \G~3_combout\ = (\R~1_combout\) # ((\R~2_combout\ & \G~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R~1_combout\,
	datac => \R~2_combout\,
	datad => \G~2_combout\,
	combout => \G~3_combout\);

-- Location: LCFF_X36_Y21_N17
\G[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G[1]~reg0_regout\);

-- Location: LCFF_X36_Y21_N11
\G[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \G~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G[2]~reg0_regout\);

-- Location: LCFF_X36_Y21_N5
\G[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \G~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \G[3]~reg0_regout\);

-- Location: LCCOMB_X37_Y20_N30
\vga1|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|Add1~1_combout\ = \vga1|counterH|auto_generated|safe_q\(6) $ (((\vga1|counterH|auto_generated|safe_q\(5) & \vga1|counterH|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(6),
	datac => \vga1|counterH|auto_generated|safe_q\(5),
	datad => \vga1|counterH|auto_generated|safe_q\(4),
	combout => \vga1|Add1~1_combout\);

-- Location: LCCOMB_X37_Y20_N24
\text_gen|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux6~0_combout\ = (!\vga1|counterH|auto_generated|safe_q\(6) & (!\vga1|COLUMN~1_combout\ & (\vga1|counterH|auto_generated|safe_q\(5) & !\vga1|counterH|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(6),
	datab => \vga1|COLUMN~1_combout\,
	datac => \vga1|counterH|auto_generated|safe_q\(5),
	datad => \vga1|counterH|auto_generated|safe_q\(4),
	combout => \text_gen|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y20_N26
\B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B~0_combout\ = (\vga1|COLUMN[7]~5_combout\ & (((\vga1|Add1~1_combout\)) # (!\text_gen|char_code[5]~0_combout\))) # (!\vga1|COLUMN[7]~5_combout\ & (((\text_gen|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \text_gen|char_code[5]~0_combout\,
	datab => \vga1|Add1~1_combout\,
	datac => \text_gen|Mux6~0_combout\,
	datad => \vga1|COLUMN[7]~5_combout\,
	combout => \B~0_combout\);

-- Location: LCCOMB_X36_Y21_N22
\B~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \B~1_combout\ = (\R~1_combout\) # ((\R~2_combout\ & ((\vga1|COLUMN[9]~2_combout\) # (\B~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[9]~2_combout\,
	datab => \R~1_combout\,
	datac => \B~0_combout\,
	datad => \R~2_combout\,
	combout => \B~1_combout\);

-- Location: LCFF_X36_Y21_N23
\B[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B[0]~reg0_regout\);

-- Location: LCCOMB_X36_Y21_N8
\B[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \B[1]~reg0feeder_combout\ = \B~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B~1_combout\,
	combout => \B[1]~reg0feeder_combout\);

-- Location: LCFF_X36_Y21_N9
\B[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \B[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B[1]~reg0_regout\);

-- Location: LCCOMB_X37_Y21_N2
\text_gen|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \text_gen|Mux11~0_combout\ = (\vga1|COLUMN[6]~3_combout\ & (((\vga1|COLUMN[7]~5_combout\)))) # (!\vga1|COLUMN[6]~3_combout\ & (\vga1|COLUMN[5]~4_combout\ & (!\text_gen|Mux3~4_combout\ & !\vga1|COLUMN[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|COLUMN[5]~4_combout\,
	datab => \text_gen|Mux3~4_combout\,
	datac => \vga1|COLUMN[6]~3_combout\,
	datad => \vga1|COLUMN[7]~5_combout\,
	combout => \text_gen|Mux11~0_combout\);

-- Location: LCCOMB_X36_Y21_N18
\B~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \B~2_combout\ = (\R~2_combout\ & (\text_gen|Mux11~0_combout\ & (!\vga1|COLUMN[9]~2_combout\ & \text_gen|char_code[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~2_combout\,
	datab => \text_gen|Mux11~0_combout\,
	datac => \vga1|COLUMN[9]~2_combout\,
	datad => \text_gen|char_code[5]~0_combout\,
	combout => \B~2_combout\);

-- Location: LCFF_X36_Y21_N19
\B[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B[2]~reg0_regout\);

-- Location: LCCOMB_X36_Y21_N12
\B[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \B[3]~reg0feeder_combout\ = \B~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B~1_combout\,
	combout => \B[3]~reg0feeder_combout\);

-- Location: LCFF_X36_Y21_N13
\B[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \B[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B[3]~reg0_regout\);

-- Location: LCCOMB_X40_Y18_N20
\vga1|VSYNC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|VSYNC~2_combout\ = (!\vga1|counterV|auto_generated|safe_q\(4) & (!\vga1|counterV|auto_generated|safe_q\(3) & ((!\vga1|counterV|auto_generated|safe_q\(2)) # (!\vga1|counterV|auto_generated|safe_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(1),
	datab => \vga1|counterV|auto_generated|safe_q\(4),
	datac => \vga1|counterV|auto_generated|safe_q\(3),
	datad => \vga1|counterV|auto_generated|safe_q\(2),
	combout => \vga1|VSYNC~2_combout\);

-- Location: LCCOMB_X40_Y20_N26
\vga1|VSYNC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|VSYNC~1_combout\ = (\vga1|counterV|auto_generated|safe_q\(9) & ((\vga1|counterV|auto_generated|safe_q\(8)) # ((\vga1|VSYNC~0_combout\ & \vga1|counterV|auto_generated|safe_q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|VSYNC~0_combout\,
	datab => \vga1|counterV|auto_generated|safe_q\(8),
	datac => \vga1|counterV|auto_generated|safe_q\(7),
	datad => \vga1|counterV|auto_generated|safe_q\(9),
	combout => \vga1|VSYNC~1_combout\);

-- Location: LCCOMB_X40_Y20_N12
\vga1|BLANKING~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|BLANKING~0_combout\ = (!\vga1|counterV|auto_generated|safe_q\(6) & (!\vga1|counterV|auto_generated|safe_q\(8) & (!\vga1|counterV|auto_generated|safe_q\(7) & !\vga1|counterV|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterV|auto_generated|safe_q\(6),
	datab => \vga1|counterV|auto_generated|safe_q\(8),
	datac => \vga1|counterV|auto_generated|safe_q\(7),
	datad => \vga1|counterV|auto_generated|safe_q\(9),
	combout => \vga1|BLANKING~0_combout\);

-- Location: LCCOMB_X40_Y20_N6
\vga1|VSYNC~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|VSYNC~3_combout\ = (\vga1|VSYNC~1_combout\) # ((\vga1|VSYNC~2_combout\ & (!\vga1|counterV|auto_generated|safe_q\(5) & \vga1|BLANKING~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|VSYNC~2_combout\,
	datab => \vga1|VSYNC~1_combout\,
	datac => \vga1|counterV|auto_generated|safe_q\(5),
	datad => \vga1|BLANKING~0_combout\,
	combout => \vga1|VSYNC~3_combout\);

-- Location: LCCOMB_X38_Y20_N26
\vga1|HSYNC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|HSYNC~0_combout\ = (!\vga1|counterH|auto_generated|safe_q\(8) & (!\vga1|counterH|auto_generated|safe_q\(10) & (!\vga1|counterH|auto_generated|safe_q\(7) & !\vga1|counterH|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(8),
	datab => \vga1|counterH|auto_generated|safe_q\(10),
	datac => \vga1|counterH|auto_generated|safe_q\(7),
	datad => \vga1|counterH|auto_generated|safe_q\(9),
	combout => \vga1|HSYNC~0_combout\);

-- Location: LCCOMB_X39_Y20_N30
\vga1|HSYNC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|HSYNC~1_combout\ = (\vga1|counterH|auto_generated|safe_q\(10) & (\vga1|counterH|auto_generated|safe_q\(0) & (\vga1|counterH|auto_generated|safe_q\(2) & \vga1|counterH|auto_generated|safe_q\(1)))) # (!\vga1|counterH|auto_generated|safe_q\(10) & 
-- ((\vga1|counterH|auto_generated|safe_q\(0)) # ((\vga1|counterH|auto_generated|safe_q\(2)) # (\vga1|counterH|auto_generated|safe_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|counterH|auto_generated|safe_q\(10),
	datab => \vga1|counterH|auto_generated|safe_q\(0),
	datac => \vga1|counterH|auto_generated|safe_q\(2),
	datad => \vga1|counterH|auto_generated|safe_q\(1),
	combout => \vga1|HSYNC~1_combout\);

-- Location: LCFF_X39_Y20_N7
\vga1|counterH|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \vga1|counterH|auto_generated|counter_comb_bita3~combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_rst~combout\,
	sload => \vga1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \vga1|counterH|auto_generated|safe_q\(3));

-- Location: LCCOMB_X39_Y20_N26
\vga1|HSYNC~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|HSYNC~3_combout\ = (\vga1|HSYNC~2_combout\ & ((\vga1|counterH|auto_generated|safe_q\(10)) # ((\vga1|HSYNC~1_combout\ & \vga1|counterH|auto_generated|safe_q\(3))))) # (!\vga1|HSYNC~2_combout\ & (\vga1|HSYNC~1_combout\ & 
-- (\vga1|counterH|auto_generated|safe_q\(10) & \vga1|counterH|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|HSYNC~2_combout\,
	datab => \vga1|HSYNC~1_combout\,
	datac => \vga1|counterH|auto_generated|safe_q\(10),
	datad => \vga1|counterH|auto_generated|safe_q\(3),
	combout => \vga1|HSYNC~3_combout\);

-- Location: LCCOMB_X38_Y20_N12
\vga1|HSYNC~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \vga1|HSYNC~4_combout\ = (\vga1|HSYNC~3_combout\ & (((\vga1|counterH|auto_generated|safe_q\(10))))) # (!\vga1|HSYNC~3_combout\ & ((\vga1|HSYNC~0_combout\) # ((!\vga1|Equal0~0_combout\ & \vga1|counterH|auto_generated|safe_q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga1|HSYNC~0_combout\,
	datab => \vga1|Equal0~0_combout\,
	datac => \vga1|HSYNC~3_combout\,
	datad => \vga1|counterH|auto_generated|safe_q\(10),
	combout => \vga1|HSYNC~4_combout\);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \R[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \R[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(1));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \R[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(2));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \R[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(3));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\G[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \G[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_G(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(1));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \B[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(3));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VSYNC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga1|ALT_INV_VSYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VSYNC);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HSYNC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \vga1|ALT_INV_HSYNC~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HSYNC);

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\level[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_level(0));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\level[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_level(1));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\level[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_level(2));
END structure;


