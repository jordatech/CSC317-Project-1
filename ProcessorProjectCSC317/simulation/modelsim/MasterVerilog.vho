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

-- DATE "10/26/2014 18:46:34"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MasterVerilog IS
    PORT (
	clk_27 : IN std_logic;
	clk_50 : IN std_logic;
	switch : IN std_logic_vector(17 DOWNTO 0);
	green : OUT std_logic_vector(8 DOWNTO 0);
	red : OUT std_logic_vector(17 DOWNTO 0);
	pushBut : IN std_logic_vector(3 DOWNTO 0);
	Hex0 : OUT std_logic_vector(6 DOWNTO 0);
	Hex1 : OUT std_logic_vector(6 DOWNTO 0);
	Hex2 : OUT std_logic_vector(6 DOWNTO 0);
	Hex3 : OUT std_logic_vector(6 DOWNTO 0);
	Hex4 : OUT std_logic_vector(6 DOWNTO 0);
	Hex5 : OUT std_logic_vector(6 DOWNTO 0);
	Hex6 : OUT std_logic_vector(6 DOWNTO 0);
	Hex7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END MasterVerilog;

-- Design Ports Information
-- clk_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- green[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- green[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- green[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- green[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- green[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- green[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- green[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- green[7]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- green[8]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- red[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- switch[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_27	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pushBut[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pushBut[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pushBut[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pushBut[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MasterVerilog IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_27 : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_switch : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_green : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_pushBut : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \debounceit0|PB_state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_27~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounceit2|PB_cnt[5]~26_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[14]~45\ : std_logic;
SIGNAL \debounceit2|PB_cnt[15]~46_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[3]~22_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[6]~28_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[8]~32_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[14]~45\ : std_logic;
SIGNAL \debounceit1|PB_cnt[15]~46_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[0]~16_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[0]~17\ : std_logic;
SIGNAL \debounceit0|PB_cnt[1]~18_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[1]~19\ : std_logic;
SIGNAL \debounceit0|PB_cnt[2]~20_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[2]~21\ : std_logic;
SIGNAL \debounceit0|PB_cnt[3]~22_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[3]~23\ : std_logic;
SIGNAL \debounceit0|PB_cnt[4]~24_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[4]~25\ : std_logic;
SIGNAL \debounceit0|PB_cnt[5]~26_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[5]~27\ : std_logic;
SIGNAL \debounceit0|PB_cnt[6]~28_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[6]~29\ : std_logic;
SIGNAL \debounceit0|PB_cnt[7]~30_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[7]~31\ : std_logic;
SIGNAL \debounceit0|PB_cnt[8]~32_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[8]~33\ : std_logic;
SIGNAL \debounceit0|PB_cnt[9]~34_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[9]~35\ : std_logic;
SIGNAL \debounceit0|PB_cnt[10]~36_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[10]~37\ : std_logic;
SIGNAL \debounceit0|PB_cnt[11]~38_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[11]~39\ : std_logic;
SIGNAL \debounceit0|PB_cnt[12]~40_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[12]~41\ : std_logic;
SIGNAL \debounceit0|PB_cnt[13]~42_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[13]~43\ : std_logic;
SIGNAL \debounceit0|PB_cnt[14]~44_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[14]~45\ : std_logic;
SIGNAL \debounceit0|PB_cnt[15]~46_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[3]~22_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[6]~28_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[8]~32_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[0]~123_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[0]~125_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux30~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux29~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~140_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~141_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[4]~145_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[4]~147_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~151_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~152_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~159_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux24~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~160_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux23~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux22~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~165_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux20~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~169_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~174_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux18~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~175_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~177_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux17~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~178_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[15]~180_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[15]~181_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux15~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux14~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux14~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux14~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux13~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux13~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux13~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux12~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux12~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux12~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux11~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux11~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux11~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux7~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux7~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux7~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux6~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux6~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux6~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux5~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux5~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux5~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux4~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux4~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux4~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux3~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux3~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux3~6_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~2_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~regout\ : std_logic;
SIGNAL \debounceit0|PB_sync_1~regout\ : std_logic;
SIGNAL \debounceit0|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~1_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~2_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~3_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~2_combout\ : std_logic;
SIGNAL \debounceit0|comb~0_combout\ : std_logic;
SIGNAL \debounceit0|PB_sync_0~regout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~194_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux14~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux13~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux12~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux11~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux7~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux6~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux5~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux4~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux3~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux14~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux13~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux12~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux11~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux7~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux6~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux5~9_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux4~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux3~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[30]~213_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[30]~214_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[29]~215_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[29]~216_combout\ : std_logic;
SIGNAL \debounceit0|PB_sync_0~0_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~clkctrl_outclk\ : std_logic;
SIGNAL \clk_27~combout\ : std_logic;
SIGNAL \clk_27~clkctrl_outclk\ : std_logic;
SIGNAL \debounceit2|PB_cnt[0]~16_combout\ : std_logic;
SIGNAL \debounceit2|PB_sync_0~0_combout\ : std_logic;
SIGNAL \debounceit2|PB_sync_0~regout\ : std_logic;
SIGNAL \debounceit2|PB_sync_1~regout\ : std_logic;
SIGNAL \debounceit2|comb~0_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[0]~17\ : std_logic;
SIGNAL \debounceit2|PB_cnt[1]~18_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[1]~19\ : std_logic;
SIGNAL \debounceit2|PB_cnt[2]~20_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[2]~21\ : std_logic;
SIGNAL \debounceit2|PB_cnt[3]~23\ : std_logic;
SIGNAL \debounceit2|PB_cnt[4]~24_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[4]~25\ : std_logic;
SIGNAL \debounceit2|PB_cnt[5]~27\ : std_logic;
SIGNAL \debounceit2|PB_cnt[6]~29\ : std_logic;
SIGNAL \debounceit2|PB_cnt[7]~30_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[7]~31\ : std_logic;
SIGNAL \debounceit2|PB_cnt[8]~33\ : std_logic;
SIGNAL \debounceit2|PB_cnt[9]~34_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[9]~35\ : std_logic;
SIGNAL \debounceit2|PB_cnt[10]~37\ : std_logic;
SIGNAL \debounceit2|PB_cnt[11]~38_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[11]~39\ : std_logic;
SIGNAL \debounceit2|PB_cnt[12]~41\ : std_logic;
SIGNAL \debounceit2|PB_cnt[13]~42_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[13]~43\ : std_logic;
SIGNAL \debounceit2|PB_cnt[14]~44_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[3]~22_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~1_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[12]~40_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[10]~36_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~3_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[8]~32_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[6]~28_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~2_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~regout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~0_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[0]~16_combout\ : std_logic;
SIGNAL \debounceit1|PB_sync_0~0_combout\ : std_logic;
SIGNAL \debounceit1|PB_sync_0~regout\ : std_logic;
SIGNAL \debounceit1|PB_sync_1~feeder_combout\ : std_logic;
SIGNAL \debounceit1|PB_sync_1~regout\ : std_logic;
SIGNAL \debounceit1|comb~0_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[0]~17\ : std_logic;
SIGNAL \debounceit1|PB_cnt[1]~18_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[1]~19\ : std_logic;
SIGNAL \debounceit1|PB_cnt[2]~20_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[2]~21\ : std_logic;
SIGNAL \debounceit1|PB_cnt[3]~23\ : std_logic;
SIGNAL \debounceit1|PB_cnt[4]~24_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[4]~25\ : std_logic;
SIGNAL \debounceit1|PB_cnt[5]~27\ : std_logic;
SIGNAL \debounceit1|PB_cnt[6]~29\ : std_logic;
SIGNAL \debounceit1|PB_cnt[7]~30_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[7]~31\ : std_logic;
SIGNAL \debounceit1|PB_cnt[8]~33\ : std_logic;
SIGNAL \debounceit1|PB_cnt[9]~34_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[9]~35\ : std_logic;
SIGNAL \debounceit1|PB_cnt[10]~37\ : std_logic;
SIGNAL \debounceit1|PB_cnt[11]~38_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[11]~39\ : std_logic;
SIGNAL \debounceit1|PB_cnt[12]~41\ : std_logic;
SIGNAL \debounceit1|PB_cnt[13]~42_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[13]~43\ : std_logic;
SIGNAL \debounceit1|PB_cnt[14]~44_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[5]~26_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~1_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[12]~40_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[10]~36_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~3_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~regout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~193_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[0]~32_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[0]~16_combout\ : std_logic;
SIGNAL \debounceit3|PB_sync_0~0_combout\ : std_logic;
SIGNAL \debounceit3|PB_sync_0~regout\ : std_logic;
SIGNAL \debounceit3|PB_sync_1~regout\ : std_logic;
SIGNAL \debounceit3|comb~0_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[0]~17\ : std_logic;
SIGNAL \debounceit3|PB_cnt[1]~18_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[1]~19\ : std_logic;
SIGNAL \debounceit3|PB_cnt[2]~20_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[2]~21\ : std_logic;
SIGNAL \debounceit3|PB_cnt[3]~23\ : std_logic;
SIGNAL \debounceit3|PB_cnt[4]~24_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[4]~25\ : std_logic;
SIGNAL \debounceit3|PB_cnt[5]~27\ : std_logic;
SIGNAL \debounceit3|PB_cnt[6]~29\ : std_logic;
SIGNAL \debounceit3|PB_cnt[7]~30_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[7]~31\ : std_logic;
SIGNAL \debounceit3|PB_cnt[8]~33\ : std_logic;
SIGNAL \debounceit3|PB_cnt[9]~34_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[9]~35\ : std_logic;
SIGNAL \debounceit3|PB_cnt[10]~37\ : std_logic;
SIGNAL \debounceit3|PB_cnt[11]~38_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[11]~39\ : std_logic;
SIGNAL \debounceit3|PB_cnt[12]~41\ : std_logic;
SIGNAL \debounceit3|PB_cnt[13]~42_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[13]~43\ : std_logic;
SIGNAL \debounceit3|PB_cnt[14]~44_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[14]~45\ : std_logic;
SIGNAL \debounceit3|PB_cnt[15]~46_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[5]~26_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~1_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[12]~40_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[10]~36_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~3_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~regout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[0]~33\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[1]~34_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~133_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~134_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[1]~35\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[2]~36_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[2]~37\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[3]~38_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[3]~39\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[4]~40_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[4]~41\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[5]~42_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~192_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~3_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~131_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~130_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~132_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~138_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~136_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~137_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux30~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~129_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~142_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~195_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[0]~124_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[0]~126_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[0]~127_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[16]~122_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\ : std_logic;
SIGNAL \uHEX0|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~155_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[5]~43\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[6]~44_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux25~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~156_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~157_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~149_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~161_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux26~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux19~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~153_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[4]~144_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[4]~146_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[4]~148_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\ : std_logic;
SIGNAL \uHEX1|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~166_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux15~0_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[6]~45\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[7]~46_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[7]~47\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[8]~49\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[9]~50_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[9]~51\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[10]~52_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux21~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~167_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~168_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~170_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[8]~48_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~162_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~163_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\ : std_logic;
SIGNAL \uHEX2|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~179_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[15]~182_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[10]~53\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[11]~54_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[11]~55\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[12]~56_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux19~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~171_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~172_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~173_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\ : std_logic;
SIGNAL \uHEX3|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux5~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[12]~57\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[13]~58_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[13]~59\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[14]~60_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[14]~61\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[15]~62_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[15]~63\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[16]~64_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[16]~65\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[17]~66_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[17]~67\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[18]~68_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[18]~69\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[19]~70_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux15~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux15~3_combout\ : std_logic;
SIGNAL \uHEX4|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[19]~71\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[20]~72_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[20]~73\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[21]~75\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[22]~76_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~219_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~220_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[22]~77\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[23]~78_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~217_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~218_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[21]~74_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[21]~221_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[21]~222_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\ : std_logic;
SIGNAL \uHEX5|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[23]~79\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[24]~81\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[25]~82_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[25]~83\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[26]~85\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[27]~86_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[26]~84_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[24]~80_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\ : std_logic;
SIGNAL \uHEX6|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[27]~87\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[28]~89\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[29]~90_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[29]~91\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[30]~92_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[30]~93\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[31]~94_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[31]~211_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[31]~212_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[28]~88_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\ : std_logic;
SIGNAL \uHEX7|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX7|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX7|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX7|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX7|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX7|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX7|WideOr0~0_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \debounceit2|PB_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \debounceit3|PB_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \aProcessor|displayAll|HexDisplay32Bits\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ROM1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aProcessor|InstAddGen|PC_temp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aProcessor|InstAddGen|PC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \debounceit0|PB_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \switch~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \pushBut~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uHEX7|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \uHEX6|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \uHEX5|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \uHEX4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \uHEX3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \uHEX2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \uHEX1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \uHEX0|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_clk_27 <= clk_27;
ww_clk_50 <= clk_50;
ww_switch <= switch;
green <= ww_green;
red <= ww_red;
ww_pushBut <= pushBut;
Hex0 <= ww_Hex0;
Hex1 <= ww_Hex1;
Hex2 <= ww_Hex2;
Hex3 <= ww_Hex3;
Hex4 <= ww_Hex4;
Hex5 <= ww_Hex5;
Hex6 <= ww_Hex6;
Hex7 <= ww_Hex7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\aProcessor|InstAddGen|PC\(5) & \aProcessor|InstAddGen|PC\(4) & \aProcessor|InstAddGen|PC\(3) & \aProcessor|InstAddGen|PC\(2) & \aProcessor|InstAddGen|PC\(1) & 
\aProcessor|InstAddGen|PC\(0));

\ROM1|altsyncram_component|auto_generated|q_a\(0) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ROM1|altsyncram_component|auto_generated|q_a\(1) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ROM1|altsyncram_component|auto_generated|q_a\(2) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ROM1|altsyncram_component|auto_generated|q_a\(3) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ROM1|altsyncram_component|auto_generated|q_a\(4) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ROM1|altsyncram_component|auto_generated|q_a\(5) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ROM1|altsyncram_component|auto_generated|q_a\(6) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ROM1|altsyncram_component|auto_generated|q_a\(7) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ROM1|altsyncram_component|auto_generated|q_a\(8) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\ROM1|altsyncram_component|auto_generated|q_a\(9) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\ROM1|altsyncram_component|auto_generated|q_a\(10) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\ROM1|altsyncram_component|auto_generated|q_a\(11) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\ROM1|altsyncram_component|auto_generated|q_a\(12) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\ROM1|altsyncram_component|auto_generated|q_a\(13) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\ROM1|altsyncram_component|auto_generated|q_a\(14) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\ROM1|altsyncram_component|auto_generated|q_a\(15) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\ROM1|altsyncram_component|auto_generated|q_a\(16) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\ROM1|altsyncram_component|auto_generated|q_a\(17) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\ROM1|altsyncram_component|auto_generated|q_a\(18) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\ROM1|altsyncram_component|auto_generated|q_a\(19) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\ROM1|altsyncram_component|auto_generated|q_a\(20) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\ROM1|altsyncram_component|auto_generated|q_a\(21) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\ROM1|altsyncram_component|auto_generated|q_a\(22) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\ROM1|altsyncram_component|auto_generated|q_a\(23) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\ROM1|altsyncram_component|auto_generated|q_a\(24) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\ROM1|altsyncram_component|auto_generated|q_a\(25) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\ROM1|altsyncram_component|auto_generated|q_a\(26) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\ROM1|altsyncram_component|auto_generated|q_a\(27) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\ROM1|altsyncram_component|auto_generated|q_a\(28) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\ROM1|altsyncram_component|auto_generated|q_a\(29) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\ROM1|altsyncram_component|auto_generated|q_a\(30) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\ROM1|altsyncram_component|auto_generated|q_a\(31) <= \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\debounceit0|PB_state~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \debounceit0|PB_state~regout\);

\clk_27~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_27~combout\);
\uHEX7|ALT_INV_WideOr0~0_combout\ <= NOT \uHEX7|WideOr0~0_combout\;
\uHEX6|ALT_INV_WideOr0~0_combout\ <= NOT \uHEX6|WideOr0~0_combout\;
\uHEX5|ALT_INV_WideOr0~0_combout\ <= NOT \uHEX5|WideOr0~0_combout\;
\uHEX4|ALT_INV_WideOr0~0_combout\ <= NOT \uHEX4|WideOr0~0_combout\;
\uHEX3|ALT_INV_WideOr0~0_combout\ <= NOT \uHEX3|WideOr0~0_combout\;
\uHEX2|ALT_INV_WideOr0~0_combout\ <= NOT \uHEX2|WideOr0~0_combout\;
\uHEX1|ALT_INV_WideOr0~0_combout\ <= NOT \uHEX1|WideOr0~0_combout\;
\uHEX0|ALT_INV_WideOr0~0_combout\ <= NOT \uHEX0|WideOr0~0_combout\;

-- Location: M4K_X26_Y13
\ROM1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00A9867000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000460000003C00000032000000280000001E000000140886004000440040",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitializationFile.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:ROM1|altsyncram:altsyncram_component|altsyncram_cp91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 32,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk_27~clkctrl_outclk\,
	ena0 => \switch~combout\(17),
	portaaddr => \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X37_Y14_N31
\debounceit2|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[15]~46_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(15));

-- Location: LCFF_X37_Y14_N11
\debounceit2|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[5]~26_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(5));

-- Location: LCFF_X54_Y8_N31
\debounceit1|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[15]~46_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(15));

-- Location: LCFF_X54_Y8_N7
\debounceit1|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[3]~22_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(3));

-- Location: LCFF_X54_Y8_N13
\debounceit1|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[6]~28_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(6));

-- Location: LCFF_X54_Y8_N17
\debounceit1|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[8]~32_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(8));

-- Location: LCCOMB_X37_Y14_N10
\debounceit2|PB_cnt[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[5]~26_combout\ = (\debounceit2|PB_cnt\(5) & (!\debounceit2|PB_cnt[4]~25\)) # (!\debounceit2|PB_cnt\(5) & ((\debounceit2|PB_cnt[4]~25\) # (GND)))
-- \debounceit2|PB_cnt[5]~27\ = CARRY((!\debounceit2|PB_cnt[4]~25\) # (!\debounceit2|PB_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(5),
	datad => VCC,
	cin => \debounceit2|PB_cnt[4]~25\,
	combout => \debounceit2|PB_cnt[5]~26_combout\,
	cout => \debounceit2|PB_cnt[5]~27\);

-- Location: LCCOMB_X37_Y14_N28
\debounceit2|PB_cnt[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[14]~44_combout\ = (\debounceit2|PB_cnt\(14) & (\debounceit2|PB_cnt[13]~43\ $ (GND))) # (!\debounceit2|PB_cnt\(14) & (!\debounceit2|PB_cnt[13]~43\ & VCC))
-- \debounceit2|PB_cnt[14]~45\ = CARRY((\debounceit2|PB_cnt\(14) & !\debounceit2|PB_cnt[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit2|PB_cnt\(14),
	datad => VCC,
	cin => \debounceit2|PB_cnt[13]~43\,
	combout => \debounceit2|PB_cnt[14]~44_combout\,
	cout => \debounceit2|PB_cnt[14]~45\);

-- Location: LCCOMB_X37_Y14_N30
\debounceit2|PB_cnt[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[15]~46_combout\ = \debounceit2|PB_cnt[14]~45\ $ (\debounceit2|PB_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debounceit2|PB_cnt\(15),
	cin => \debounceit2|PB_cnt[14]~45\,
	combout => \debounceit2|PB_cnt[15]~46_combout\);

-- Location: LCCOMB_X54_Y8_N6
\debounceit1|PB_cnt[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[3]~22_combout\ = (\debounceit1|PB_cnt\(3) & (!\debounceit1|PB_cnt[2]~21\)) # (!\debounceit1|PB_cnt\(3) & ((\debounceit1|PB_cnt[2]~21\) # (GND)))
-- \debounceit1|PB_cnt[3]~23\ = CARRY((!\debounceit1|PB_cnt[2]~21\) # (!\debounceit1|PB_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(3),
	datad => VCC,
	cin => \debounceit1|PB_cnt[2]~21\,
	combout => \debounceit1|PB_cnt[3]~22_combout\,
	cout => \debounceit1|PB_cnt[3]~23\);

-- Location: LCCOMB_X54_Y8_N12
\debounceit1|PB_cnt[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[6]~28_combout\ = (\debounceit1|PB_cnt\(6) & (\debounceit1|PB_cnt[5]~27\ $ (GND))) # (!\debounceit1|PB_cnt\(6) & (!\debounceit1|PB_cnt[5]~27\ & VCC))
-- \debounceit1|PB_cnt[6]~29\ = CARRY((\debounceit1|PB_cnt\(6) & !\debounceit1|PB_cnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(6),
	datad => VCC,
	cin => \debounceit1|PB_cnt[5]~27\,
	combout => \debounceit1|PB_cnt[6]~28_combout\,
	cout => \debounceit1|PB_cnt[6]~29\);

-- Location: LCCOMB_X54_Y8_N16
\debounceit1|PB_cnt[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[8]~32_combout\ = (\debounceit1|PB_cnt\(8) & (\debounceit1|PB_cnt[7]~31\ $ (GND))) # (!\debounceit1|PB_cnt\(8) & (!\debounceit1|PB_cnt[7]~31\ & VCC))
-- \debounceit1|PB_cnt[8]~33\ = CARRY((\debounceit1|PB_cnt\(8) & !\debounceit1|PB_cnt[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(8),
	datad => VCC,
	cin => \debounceit1|PB_cnt[7]~31\,
	combout => \debounceit1|PB_cnt[8]~32_combout\,
	cout => \debounceit1|PB_cnt[8]~33\);

-- Location: LCCOMB_X54_Y8_N28
\debounceit1|PB_cnt[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[14]~44_combout\ = (\debounceit1|PB_cnt\(14) & (\debounceit1|PB_cnt[13]~43\ $ (GND))) # (!\debounceit1|PB_cnt\(14) & (!\debounceit1|PB_cnt[13]~43\ & VCC))
-- \debounceit1|PB_cnt[14]~45\ = CARRY((\debounceit1|PB_cnt\(14) & !\debounceit1|PB_cnt[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit1|PB_cnt\(14),
	datad => VCC,
	cin => \debounceit1|PB_cnt[13]~43\,
	combout => \debounceit1|PB_cnt[14]~44_combout\,
	cout => \debounceit1|PB_cnt[14]~45\);

-- Location: LCCOMB_X54_Y8_N30
\debounceit1|PB_cnt[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[15]~46_combout\ = \debounceit1|PB_cnt[14]~45\ $ (\debounceit1|PB_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debounceit1|PB_cnt\(15),
	cin => \debounceit1|PB_cnt[14]~45\,
	combout => \debounceit1|PB_cnt[15]~46_combout\);

-- Location: LCFF_X63_Y19_N29
\debounceit0|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[14]~44_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(14));

-- Location: LCFF_X63_Y19_N31
\debounceit0|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[15]~46_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(15));

-- Location: LCFF_X63_Y19_N1
\debounceit0|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[0]~16_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(0));

-- Location: LCFF_X63_Y19_N3
\debounceit0|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[1]~18_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(1));

-- Location: LCFF_X63_Y19_N5
\debounceit0|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[2]~20_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(2));

-- Location: LCFF_X63_Y19_N7
\debounceit0|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[3]~22_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(3));

-- Location: LCFF_X63_Y19_N9
\debounceit0|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[4]~24_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(4));

-- Location: LCFF_X63_Y19_N11
\debounceit0|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[5]~26_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(5));

-- Location: LCFF_X63_Y19_N13
\debounceit0|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[6]~28_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(6));

-- Location: LCFF_X63_Y19_N15
\debounceit0|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[7]~30_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(7));

-- Location: LCFF_X63_Y19_N17
\debounceit0|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[8]~32_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(8));

-- Location: LCFF_X63_Y19_N19
\debounceit0|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[9]~34_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(9));

-- Location: LCFF_X63_Y19_N21
\debounceit0|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[10]~36_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(10));

-- Location: LCFF_X63_Y19_N23
\debounceit0|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[11]~38_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(11));

-- Location: LCFF_X63_Y19_N25
\debounceit0|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[12]~40_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(12));

-- Location: LCFF_X63_Y19_N27
\debounceit0|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[13]~42_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(13));

-- Location: LCFF_X29_Y12_N7
\debounceit3|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[3]~22_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(3));

-- Location: LCFF_X29_Y12_N13
\debounceit3|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[6]~28_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(6));

-- Location: LCFF_X29_Y12_N17
\debounceit3|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[8]~32_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(8));

-- Location: LCCOMB_X63_Y19_N0
\debounceit0|PB_cnt[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[0]~16_combout\ = \debounceit0|PB_cnt\(0) $ (VCC)
-- \debounceit0|PB_cnt[0]~17\ = CARRY(\debounceit0|PB_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceit0|PB_cnt\(0),
	datad => VCC,
	combout => \debounceit0|PB_cnt[0]~16_combout\,
	cout => \debounceit0|PB_cnt[0]~17\);

-- Location: LCCOMB_X63_Y19_N2
\debounceit0|PB_cnt[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[1]~18_combout\ = (\debounceit0|PB_cnt\(1) & (!\debounceit0|PB_cnt[0]~17\)) # (!\debounceit0|PB_cnt\(1) & ((\debounceit0|PB_cnt[0]~17\) # (GND)))
-- \debounceit0|PB_cnt[1]~19\ = CARRY((!\debounceit0|PB_cnt[0]~17\) # (!\debounceit0|PB_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit0|PB_cnt\(1),
	datad => VCC,
	cin => \debounceit0|PB_cnt[0]~17\,
	combout => \debounceit0|PB_cnt[1]~18_combout\,
	cout => \debounceit0|PB_cnt[1]~19\);

-- Location: LCCOMB_X63_Y19_N4
\debounceit0|PB_cnt[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[2]~20_combout\ = (\debounceit0|PB_cnt\(2) & (\debounceit0|PB_cnt[1]~19\ $ (GND))) # (!\debounceit0|PB_cnt\(2) & (!\debounceit0|PB_cnt[1]~19\ & VCC))
-- \debounceit0|PB_cnt[2]~21\ = CARRY((\debounceit0|PB_cnt\(2) & !\debounceit0|PB_cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit0|PB_cnt\(2),
	datad => VCC,
	cin => \debounceit0|PB_cnt[1]~19\,
	combout => \debounceit0|PB_cnt[2]~20_combout\,
	cout => \debounceit0|PB_cnt[2]~21\);

-- Location: LCCOMB_X63_Y19_N6
\debounceit0|PB_cnt[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[3]~22_combout\ = (\debounceit0|PB_cnt\(3) & (!\debounceit0|PB_cnt[2]~21\)) # (!\debounceit0|PB_cnt\(3) & ((\debounceit0|PB_cnt[2]~21\) # (GND)))
-- \debounceit0|PB_cnt[3]~23\ = CARRY((!\debounceit0|PB_cnt[2]~21\) # (!\debounceit0|PB_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(3),
	datad => VCC,
	cin => \debounceit0|PB_cnt[2]~21\,
	combout => \debounceit0|PB_cnt[3]~22_combout\,
	cout => \debounceit0|PB_cnt[3]~23\);

-- Location: LCCOMB_X63_Y19_N8
\debounceit0|PB_cnt[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[4]~24_combout\ = (\debounceit0|PB_cnt\(4) & (\debounceit0|PB_cnt[3]~23\ $ (GND))) # (!\debounceit0|PB_cnt\(4) & (!\debounceit0|PB_cnt[3]~23\ & VCC))
-- \debounceit0|PB_cnt[4]~25\ = CARRY((\debounceit0|PB_cnt\(4) & !\debounceit0|PB_cnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit0|PB_cnt\(4),
	datad => VCC,
	cin => \debounceit0|PB_cnt[3]~23\,
	combout => \debounceit0|PB_cnt[4]~24_combout\,
	cout => \debounceit0|PB_cnt[4]~25\);

-- Location: LCCOMB_X63_Y19_N10
\debounceit0|PB_cnt[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[5]~26_combout\ = (\debounceit0|PB_cnt\(5) & (!\debounceit0|PB_cnt[4]~25\)) # (!\debounceit0|PB_cnt\(5) & ((\debounceit0|PB_cnt[4]~25\) # (GND)))
-- \debounceit0|PB_cnt[5]~27\ = CARRY((!\debounceit0|PB_cnt[4]~25\) # (!\debounceit0|PB_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(5),
	datad => VCC,
	cin => \debounceit0|PB_cnt[4]~25\,
	combout => \debounceit0|PB_cnt[5]~26_combout\,
	cout => \debounceit0|PB_cnt[5]~27\);

-- Location: LCCOMB_X63_Y19_N12
\debounceit0|PB_cnt[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[6]~28_combout\ = (\debounceit0|PB_cnt\(6) & (\debounceit0|PB_cnt[5]~27\ $ (GND))) # (!\debounceit0|PB_cnt\(6) & (!\debounceit0|PB_cnt[5]~27\ & VCC))
-- \debounceit0|PB_cnt[6]~29\ = CARRY((\debounceit0|PB_cnt\(6) & !\debounceit0|PB_cnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(6),
	datad => VCC,
	cin => \debounceit0|PB_cnt[5]~27\,
	combout => \debounceit0|PB_cnt[6]~28_combout\,
	cout => \debounceit0|PB_cnt[6]~29\);

-- Location: LCCOMB_X63_Y19_N14
\debounceit0|PB_cnt[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[7]~30_combout\ = (\debounceit0|PB_cnt\(7) & (!\debounceit0|PB_cnt[6]~29\)) # (!\debounceit0|PB_cnt\(7) & ((\debounceit0|PB_cnt[6]~29\) # (GND)))
-- \debounceit0|PB_cnt[7]~31\ = CARRY((!\debounceit0|PB_cnt[6]~29\) # (!\debounceit0|PB_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit0|PB_cnt\(7),
	datad => VCC,
	cin => \debounceit0|PB_cnt[6]~29\,
	combout => \debounceit0|PB_cnt[7]~30_combout\,
	cout => \debounceit0|PB_cnt[7]~31\);

-- Location: LCCOMB_X63_Y19_N16
\debounceit0|PB_cnt[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[8]~32_combout\ = (\debounceit0|PB_cnt\(8) & (\debounceit0|PB_cnt[7]~31\ $ (GND))) # (!\debounceit0|PB_cnt\(8) & (!\debounceit0|PB_cnt[7]~31\ & VCC))
-- \debounceit0|PB_cnt[8]~33\ = CARRY((\debounceit0|PB_cnt\(8) & !\debounceit0|PB_cnt[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(8),
	datad => VCC,
	cin => \debounceit0|PB_cnt[7]~31\,
	combout => \debounceit0|PB_cnt[8]~32_combout\,
	cout => \debounceit0|PB_cnt[8]~33\);

-- Location: LCCOMB_X63_Y19_N18
\debounceit0|PB_cnt[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[9]~34_combout\ = (\debounceit0|PB_cnt\(9) & (!\debounceit0|PB_cnt[8]~33\)) # (!\debounceit0|PB_cnt\(9) & ((\debounceit0|PB_cnt[8]~33\) # (GND)))
-- \debounceit0|PB_cnt[9]~35\ = CARRY((!\debounceit0|PB_cnt[8]~33\) # (!\debounceit0|PB_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit0|PB_cnt\(9),
	datad => VCC,
	cin => \debounceit0|PB_cnt[8]~33\,
	combout => \debounceit0|PB_cnt[9]~34_combout\,
	cout => \debounceit0|PB_cnt[9]~35\);

-- Location: LCCOMB_X63_Y19_N20
\debounceit0|PB_cnt[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[10]~36_combout\ = (\debounceit0|PB_cnt\(10) & (\debounceit0|PB_cnt[9]~35\ $ (GND))) # (!\debounceit0|PB_cnt\(10) & (!\debounceit0|PB_cnt[9]~35\ & VCC))
-- \debounceit0|PB_cnt[10]~37\ = CARRY((\debounceit0|PB_cnt\(10) & !\debounceit0|PB_cnt[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(10),
	datad => VCC,
	cin => \debounceit0|PB_cnt[9]~35\,
	combout => \debounceit0|PB_cnt[10]~36_combout\,
	cout => \debounceit0|PB_cnt[10]~37\);

-- Location: LCCOMB_X63_Y19_N22
\debounceit0|PB_cnt[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[11]~38_combout\ = (\debounceit0|PB_cnt\(11) & (!\debounceit0|PB_cnt[10]~37\)) # (!\debounceit0|PB_cnt\(11) & ((\debounceit0|PB_cnt[10]~37\) # (GND)))
-- \debounceit0|PB_cnt[11]~39\ = CARRY((!\debounceit0|PB_cnt[10]~37\) # (!\debounceit0|PB_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit0|PB_cnt\(11),
	datad => VCC,
	cin => \debounceit0|PB_cnt[10]~37\,
	combout => \debounceit0|PB_cnt[11]~38_combout\,
	cout => \debounceit0|PB_cnt[11]~39\);

-- Location: LCCOMB_X63_Y19_N24
\debounceit0|PB_cnt[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[12]~40_combout\ = (\debounceit0|PB_cnt\(12) & (\debounceit0|PB_cnt[11]~39\ $ (GND))) # (!\debounceit0|PB_cnt\(12) & (!\debounceit0|PB_cnt[11]~39\ & VCC))
-- \debounceit0|PB_cnt[12]~41\ = CARRY((\debounceit0|PB_cnt\(12) & !\debounceit0|PB_cnt[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(12),
	datad => VCC,
	cin => \debounceit0|PB_cnt[11]~39\,
	combout => \debounceit0|PB_cnt[12]~40_combout\,
	cout => \debounceit0|PB_cnt[12]~41\);

-- Location: LCCOMB_X63_Y19_N26
\debounceit0|PB_cnt[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[13]~42_combout\ = (\debounceit0|PB_cnt\(13) & (!\debounceit0|PB_cnt[12]~41\)) # (!\debounceit0|PB_cnt\(13) & ((\debounceit0|PB_cnt[12]~41\) # (GND)))
-- \debounceit0|PB_cnt[13]~43\ = CARRY((!\debounceit0|PB_cnt[12]~41\) # (!\debounceit0|PB_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit0|PB_cnt\(13),
	datad => VCC,
	cin => \debounceit0|PB_cnt[12]~41\,
	combout => \debounceit0|PB_cnt[13]~42_combout\,
	cout => \debounceit0|PB_cnt[13]~43\);

-- Location: LCCOMB_X63_Y19_N28
\debounceit0|PB_cnt[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[14]~44_combout\ = (\debounceit0|PB_cnt\(14) & (\debounceit0|PB_cnt[13]~43\ $ (GND))) # (!\debounceit0|PB_cnt\(14) & (!\debounceit0|PB_cnt[13]~43\ & VCC))
-- \debounceit0|PB_cnt[14]~45\ = CARRY((\debounceit0|PB_cnt\(14) & !\debounceit0|PB_cnt[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit0|PB_cnt\(14),
	datad => VCC,
	cin => \debounceit0|PB_cnt[13]~43\,
	combout => \debounceit0|PB_cnt[14]~44_combout\,
	cout => \debounceit0|PB_cnt[14]~45\);

-- Location: LCCOMB_X63_Y19_N30
\debounceit0|PB_cnt[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_cnt[15]~46_combout\ = \debounceit0|PB_cnt[14]~45\ $ (\debounceit0|PB_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debounceit0|PB_cnt\(15),
	cin => \debounceit0|PB_cnt[14]~45\,
	combout => \debounceit0|PB_cnt[15]~46_combout\);

-- Location: LCCOMB_X29_Y12_N6
\debounceit3|PB_cnt[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[3]~22_combout\ = (\debounceit3|PB_cnt\(3) & (!\debounceit3|PB_cnt[2]~21\)) # (!\debounceit3|PB_cnt\(3) & ((\debounceit3|PB_cnt[2]~21\) # (GND)))
-- \debounceit3|PB_cnt[3]~23\ = CARRY((!\debounceit3|PB_cnt[2]~21\) # (!\debounceit3|PB_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(3),
	datad => VCC,
	cin => \debounceit3|PB_cnt[2]~21\,
	combout => \debounceit3|PB_cnt[3]~22_combout\,
	cout => \debounceit3|PB_cnt[3]~23\);

-- Location: LCCOMB_X29_Y12_N12
\debounceit3|PB_cnt[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[6]~28_combout\ = (\debounceit3|PB_cnt\(6) & (\debounceit3|PB_cnt[5]~27\ $ (GND))) # (!\debounceit3|PB_cnt\(6) & (!\debounceit3|PB_cnt[5]~27\ & VCC))
-- \debounceit3|PB_cnt[6]~29\ = CARRY((\debounceit3|PB_cnt\(6) & !\debounceit3|PB_cnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(6),
	datad => VCC,
	cin => \debounceit3|PB_cnt[5]~27\,
	combout => \debounceit3|PB_cnt[6]~28_combout\,
	cout => \debounceit3|PB_cnt[6]~29\);

-- Location: LCCOMB_X29_Y12_N16
\debounceit3|PB_cnt[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[8]~32_combout\ = (\debounceit3|PB_cnt\(8) & (\debounceit3|PB_cnt[7]~31\ $ (GND))) # (!\debounceit3|PB_cnt\(8) & (!\debounceit3|PB_cnt[7]~31\ & VCC))
-- \debounceit3|PB_cnt[8]~33\ = CARRY((\debounceit3|PB_cnt\(8) & !\debounceit3|PB_cnt[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(8),
	datad => VCC,
	cin => \debounceit3|PB_cnt[7]~31\,
	combout => \debounceit3|PB_cnt[8]~32_combout\,
	cout => \debounceit3|PB_cnt[8]~33\);

-- Location: LCCOMB_X28_Y14_N12
\aProcessor|displayAll|HexDisplay32Bits[0]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[0]~123_combout\ = (\switch~combout\(3) & (\switch~combout\(1) $ (((!\switch~combout\(0)))))) # (!\switch~combout\(3) & (\switch~combout\(0) & (\switch~combout\(1) $ (!\switch~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(1),
	datac => \switch~combout\(2),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[0]~123_combout\);

-- Location: LCFF_X27_Y14_N25
\aProcessor|InstAddGen|PC_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(0));

-- Location: LCCOMB_X27_Y14_N24
\aProcessor|displayAll|HexDisplay32Bits[0]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[0]~125_combout\ = (\switch~combout\(0) & ((\aProcessor|InstAddGen|PC_temp\(0)))) # (!\switch~combout\(0) & (\aProcessor|InstAddGen|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(0),
	datac => \aProcessor|InstAddGen|PC_temp\(0),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[0]~125_combout\);

-- Location: LCCOMB_X25_Y13_N16
\aProcessor|displayAll|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~1_combout\ = (\switch~combout\(2) & ((!\switch~combout\(3)))) # (!\switch~combout\(2) & (!\switch~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux28~1_combout\);

-- Location: LCCOMB_X29_Y13_N24
\aProcessor|displayAll|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux30~1_combout\ = (\switch~combout\(0) & \ROM1|altsyncram_component|auto_generated|q_a\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(18),
	combout => \aProcessor|displayAll|Mux30~1_combout\);

-- Location: LCCOMB_X29_Y13_N4
\aProcessor|displayAll|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux29~0_combout\ = (\switch~combout\(0) & \ROM1|altsyncram_component|auto_generated|q_a\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(19),
	combout => \aProcessor|displayAll|Mux29~0_combout\);

-- Location: LCCOMB_X29_Y13_N26
\aProcessor|displayAll|Mux28~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~5_combout\ = (\switch~combout\(0) & \ROM1|altsyncram_component|auto_generated|q_a\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(20),
	combout => \aProcessor|displayAll|Mux28~5_combout\);

-- Location: LCCOMB_X29_Y13_N0
\aProcessor|displayAll|HexDisplay32Bits[3]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~140_combout\ = (\aProcessor|displayAll|Mux28~4_combout\ & (\aProcessor|displayAll|Mux28~5_combout\ & ((\aProcessor|displayAll|Mux28~3_combout\)))) # (!\aProcessor|displayAll|Mux28~4_combout\ & 
-- (((\aProcessor|InstAddGen|PC\(3)) # (!\aProcessor|displayAll|Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~4_combout\,
	datab => \aProcessor|displayAll|Mux28~5_combout\,
	datac => \aProcessor|InstAddGen|PC\(3),
	datad => \aProcessor|displayAll|Mux28~3_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~140_combout\);

-- Location: LCCOMB_X28_Y13_N10
\aProcessor|displayAll|HexDisplay32Bits[3]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~141_combout\ = (\aProcessor|displayAll|Mux28~1_combout\ & ((\aProcessor|displayAll|Mux28~2_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[3]~140_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[1]~130_combout\)))) # (!\aProcessor|displayAll|Mux28~1_combout\ & (((!\aProcessor|displayAll|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~1_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~140_combout\,
	datac => \aProcessor|displayAll|Mux28~2_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~130_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~141_combout\);

-- Location: LCFF_X29_Y13_N19
\aProcessor|InstAddGen|PC_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(4));

-- Location: LCCOMB_X29_Y13_N18
\aProcessor|displayAll|HexDisplay32Bits[4]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[4]~145_combout\ = (\switch~combout\(3) & (((\aProcessor|InstAddGen|PC_temp\(4) & \switch~combout\(0))))) # (!\switch~combout\(3) & ((\aProcessor|InstAddGen|PC\(4)) # ((\switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|InstAddGen|PC\(4),
	datac => \aProcessor|InstAddGen|PC_temp\(4),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[4]~145_combout\);

-- Location: LCCOMB_X30_Y12_N6
\aProcessor|displayAll|HexDisplay32Bits[4]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[4]~147_combout\ = (\switch~combout\(1) & (\switch~combout\(0) & \switch~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[4]~147_combout\);

-- Location: LCCOMB_X30_Y12_N10
\aProcessor|displayAll|HexDisplay32Bits[5]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~151_combout\ = (\aProcessor|displayAll|Mux19~0_combout\ & (\switch~combout\(3) & \ROM1|altsyncram_component|auto_generated|q_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux19~0_combout\,
	datab => \switch~combout\(3),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(5),
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~151_combout\);

-- Location: LCFF_X30_Y12_N25
\aProcessor|InstAddGen|PC_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(5));

-- Location: LCCOMB_X30_Y12_N24
\aProcessor|displayAll|HexDisplay32Bits[5]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~152_combout\ = (!\switch~combout\(2) & ((\switch~combout\(1) & (!\switch~combout\(0))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC_temp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC_temp\(5),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~152_combout\);

-- Location: LCFF_X31_Y13_N31
\aProcessor|InstAddGen|PC_temp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(7));

-- Location: LCCOMB_X31_Y13_N30
\aProcessor|displayAll|HexDisplay32Bits[7]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~159_combout\ = (!\switch~combout\(2) & ((\switch~combout\(1) & (!\switch~combout\(0))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC_temp\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC_temp\(7),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~159_combout\);

-- Location: LCCOMB_X31_Y13_N12
\aProcessor|displayAll|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux24~0_combout\ = (!\switch~combout\(1) & (!\switch~combout\(2) & ((\switch~combout\(0)) # (\aProcessor|InstAddGen|PC\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(7),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux24~0_combout\);

-- Location: LCCOMB_X31_Y13_N14
\aProcessor|displayAll|HexDisplay32Bits[7]~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~160_combout\ = (!\aProcessor|displayAll|Mux19~0_combout\ & ((\switch~combout\(3) & ((\aProcessor|displayAll|HexDisplay32Bits[7]~159_combout\))) # (!\switch~combout\(3) & 
-- (\aProcessor|displayAll|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux24~0_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[7]~159_combout\,
	datac => \switch~combout\(3),
	datad => \aProcessor|displayAll|Mux19~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~160_combout\);

-- Location: LCCOMB_X27_Y14_N30
\aProcessor|displayAll|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux23~0_combout\ = (!\switch~combout\(2) & (!\switch~combout\(1) & ((\switch~combout\(0)) # (\aProcessor|InstAddGen|PC\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(0),
	datac => \aProcessor|InstAddGen|PC\(8),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux23~0_combout\);

-- Location: LCFF_X27_Y14_N15
\aProcessor|InstAddGen|PC_temp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(9));

-- Location: LCCOMB_X27_Y14_N20
\aProcessor|displayAll|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux22~0_combout\ = (!\switch~combout\(2) & (!\switch~combout\(1) & ((\switch~combout\(0)) # (\aProcessor|InstAddGen|PC\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(0),
	datac => \aProcessor|InstAddGen|PC\(9),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux22~0_combout\);

-- Location: LCCOMB_X28_Y14_N24
\aProcessor|displayAll|HexDisplay32Bits[9]~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~165_combout\ = (\switch~combout\(3) & (((\aProcessor|InstAddGen|PC_temp\(9) & \aProcessor|displayAll|Mux15~0_combout\)))) # (!\switch~combout\(3) & (\aProcessor|displayAll|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux22~0_combout\,
	datab => \aProcessor|InstAddGen|PC_temp\(9),
	datac => \switch~combout\(3),
	datad => \aProcessor|displayAll|Mux15~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~165_combout\);

-- Location: LCFF_X27_Y14_N5
\aProcessor|InstAddGen|PC_temp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(11));

-- Location: LCCOMB_X27_Y14_N22
\aProcessor|displayAll|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux20~0_combout\ = (!\switch~combout\(2) & (!\switch~combout\(1) & ((\switch~combout\(0)) # (\aProcessor|InstAddGen|PC\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(0),
	datac => \aProcessor|InstAddGen|PC\(11),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux20~0_combout\);

-- Location: LCCOMB_X28_Y14_N26
\aProcessor|displayAll|HexDisplay32Bits[11]~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~169_combout\ = (\switch~combout\(3) & (\aProcessor|displayAll|Mux15~0_combout\ & (\aProcessor|InstAddGen|PC_temp\(11)))) # (!\switch~combout\(3) & (((\aProcessor|displayAll|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux15~0_combout\,
	datab => \aProcessor|InstAddGen|PC_temp\(11),
	datac => \switch~combout\(3),
	datad => \aProcessor|displayAll|Mux20~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~169_combout\);

-- Location: LCFF_X31_Y13_N7
\aProcessor|InstAddGen|PC_temp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(13));

-- Location: LCCOMB_X31_Y13_N6
\aProcessor|displayAll|HexDisplay32Bits[13]~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~174_combout\ = (!\switch~combout\(2) & ((\switch~combout\(1) & (!\switch~combout\(0))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC_temp\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC_temp\(13),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~174_combout\);

-- Location: LCCOMB_X31_Y13_N8
\aProcessor|displayAll|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux18~0_combout\ = (!\switch~combout\(1) & (!\switch~combout\(2) & ((\switch~combout\(0)) # (\aProcessor|InstAddGen|PC\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(13),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux18~0_combout\);

-- Location: LCCOMB_X31_Y13_N10
\aProcessor|displayAll|HexDisplay32Bits[13]~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~175_combout\ = (!\aProcessor|displayAll|Mux19~0_combout\ & ((\switch~combout\(3) & (\aProcessor|displayAll|HexDisplay32Bits[13]~174_combout\)) # (!\switch~combout\(3) & 
-- ((\aProcessor|displayAll|Mux18~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[13]~174_combout\,
	datab => \aProcessor|displayAll|Mux18~0_combout\,
	datac => \switch~combout\(3),
	datad => \aProcessor|displayAll|Mux19~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~175_combout\);

-- Location: LCFF_X31_Y13_N21
\aProcessor|InstAddGen|PC_temp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(14));

-- Location: LCCOMB_X31_Y13_N20
\aProcessor|displayAll|HexDisplay32Bits[14]~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~177_combout\ = (!\switch~combout\(2) & ((\switch~combout\(1) & (!\switch~combout\(0))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC_temp\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC_temp\(14),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~177_combout\);

-- Location: LCCOMB_X31_Y13_N26
\aProcessor|displayAll|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux17~0_combout\ = (!\switch~combout\(1) & (!\switch~combout\(2) & ((\switch~combout\(0)) # (\aProcessor|InstAddGen|PC\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(14),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux17~0_combout\);

-- Location: LCCOMB_X31_Y13_N0
\aProcessor|displayAll|HexDisplay32Bits[14]~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~178_combout\ = (!\aProcessor|displayAll|Mux19~0_combout\ & ((\switch~combout\(3) & ((\aProcessor|displayAll|HexDisplay32Bits[14]~177_combout\))) # (!\switch~combout\(3) & 
-- (\aProcessor|displayAll|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|displayAll|Mux17~0_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[14]~177_combout\,
	datad => \aProcessor|displayAll|Mux19~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~178_combout\);

-- Location: LCFF_X31_Y13_N19
\aProcessor|InstAddGen|PC_temp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(15));

-- Location: LCCOMB_X31_Y13_N18
\aProcessor|displayAll|HexDisplay32Bits[15]~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[15]~180_combout\ = (!\switch~combout\(2) & ((\switch~combout\(1) & (!\switch~combout\(0))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC_temp\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC_temp\(15),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[15]~180_combout\);

-- Location: LCCOMB_X31_Y13_N4
\aProcessor|displayAll|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~0_combout\ = (!\switch~combout\(1) & (!\switch~combout\(2) & ((\switch~combout\(0)) # (\aProcessor|InstAddGen|PC\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(15),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux16~0_combout\);

-- Location: LCCOMB_X31_Y13_N2
\aProcessor|displayAll|HexDisplay32Bits[15]~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[15]~181_combout\ = (!\aProcessor|displayAll|Mux19~0_combout\ & ((\switch~combout\(3) & (\aProcessor|displayAll|HexDisplay32Bits[15]~180_combout\)) # (!\switch~combout\(3) & 
-- ((\aProcessor|displayAll|Mux16~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~180_combout\,
	datac => \aProcessor|displayAll|Mux16~0_combout\,
	datad => \aProcessor|displayAll|Mux19~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[15]~181_combout\);

-- Location: LCCOMB_X27_Y14_N0
\aProcessor|displayAll|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux15~1_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[4]~147_combout\ & ((\switch~combout\(3) & ((\ROM1|altsyncram_component|auto_generated|q_a\(16)))) # (!\switch~combout\(3) & 
-- (\ROM1|altsyncram_component|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|altsyncram_component|auto_generated|q_a\(22),
	datab => \ROM1|altsyncram_component|auto_generated|q_a\(16),
	datac => \switch~combout\(3),
	datad => \aProcessor|displayAll|HexDisplay32Bits[4]~147_combout\,
	combout => \aProcessor|displayAll|Mux15~1_combout\);

-- Location: LCCOMB_X25_Y12_N0
\aProcessor|displayAll|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux14~4_combout\ = (\aProcessor|displayAll|Mux28~2_combout\ & (\ROM1|altsyncram_component|auto_generated|q_a\(17) & \aProcessor|displayAll|Mux28~1_combout\)) # (!\aProcessor|displayAll|Mux28~2_combout\ & 
-- ((!\aProcessor|displayAll|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|altsyncram_component|auto_generated|q_a\(17),
	datab => \aProcessor|displayAll|Mux28~2_combout\,
	datac => \aProcessor|displayAll|Mux28~1_combout\,
	combout => \aProcessor|displayAll|Mux14~4_combout\);

-- Location: LCCOMB_X25_Y12_N10
\aProcessor|displayAll|Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux14~5_combout\ = (\aProcessor|displayAll|Mux14~4_combout\) # ((\aProcessor|displayAll|Mux14~7_combout\ & (\aProcessor|displayAll|Mux14~8_combout\ & !\aProcessor|displayAll|Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux14~7_combout\,
	datab => \aProcessor|displayAll|Mux14~4_combout\,
	datac => \aProcessor|displayAll|Mux14~8_combout\,
	datad => \aProcessor|displayAll|Mux28~2_combout\,
	combout => \aProcessor|displayAll|Mux14~5_combout\);

-- Location: LCCOMB_X25_Y14_N6
\aProcessor|displayAll|Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux14~6_combout\ = (\aProcessor|displayAll|Mux14~5_combout\ & ((\switch~combout\(3)) # ((\switch~combout\(2)) # (!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(1),
	datac => \aProcessor|displayAll|Mux14~5_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux14~6_combout\);

-- Location: LCCOMB_X25_Y13_N2
\aProcessor|displayAll|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux13~4_combout\ = (\aProcessor|displayAll|Mux28~1_combout\ & (\aProcessor|displayAll|Mux28~2_combout\ & \ROM1|altsyncram_component|auto_generated|q_a\(18))) # (!\aProcessor|displayAll|Mux28~1_combout\ & 
-- (!\aProcessor|displayAll|Mux28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~1_combout\,
	datab => \aProcessor|displayAll|Mux28~2_combout\,
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(18),
	combout => \aProcessor|displayAll|Mux13~4_combout\);

-- Location: LCCOMB_X25_Y14_N0
\aProcessor|displayAll|Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux13~5_combout\ = (\aProcessor|displayAll|Mux13~4_combout\) # ((\aProcessor|displayAll|Mux13~8_combout\ & (!\aProcessor|displayAll|Mux28~2_combout\ & \aProcessor|displayAll|Mux13~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux13~8_combout\,
	datab => \aProcessor|displayAll|Mux13~4_combout\,
	datac => \aProcessor|displayAll|Mux28~2_combout\,
	datad => \aProcessor|displayAll|Mux13~7_combout\,
	combout => \aProcessor|displayAll|Mux13~5_combout\);

-- Location: LCCOMB_X24_Y14_N22
\aProcessor|displayAll|Mux13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux13~6_combout\ = (\aProcessor|displayAll|Mux13~5_combout\ & ((\switch~combout\(3)) # ((\switch~combout\(2)) # (!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(1),
	datac => \aProcessor|displayAll|Mux13~5_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux13~6_combout\);

-- Location: LCCOMB_X25_Y13_N28
\aProcessor|displayAll|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux12~4_combout\ = (\aProcessor|displayAll|Mux28~1_combout\ & (\aProcessor|displayAll|Mux28~2_combout\ & \ROM1|altsyncram_component|auto_generated|q_a\(19))) # (!\aProcessor|displayAll|Mux28~1_combout\ & 
-- (!\aProcessor|displayAll|Mux28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~1_combout\,
	datab => \aProcessor|displayAll|Mux28~2_combout\,
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(19),
	combout => \aProcessor|displayAll|Mux12~4_combout\);

-- Location: LCCOMB_X25_Y13_N14
\aProcessor|displayAll|Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux12~5_combout\ = (\aProcessor|displayAll|Mux12~4_combout\) # ((\aProcessor|displayAll|Mux12~7_combout\ & (\aProcessor|displayAll|Mux12~8_combout\ & !\aProcessor|displayAll|Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux12~7_combout\,
	datab => \aProcessor|displayAll|Mux12~4_combout\,
	datac => \aProcessor|displayAll|Mux12~8_combout\,
	datad => \aProcessor|displayAll|Mux28~2_combout\,
	combout => \aProcessor|displayAll|Mux12~5_combout\);

-- Location: LCCOMB_X24_Y13_N8
\aProcessor|displayAll|Mux12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux12~6_combout\ = (\aProcessor|displayAll|Mux12~5_combout\ & ((\switch~combout\(3)) # ((\switch~combout\(2)) # (!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(1),
	datac => \aProcessor|displayAll|Mux12~5_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux12~6_combout\);

-- Location: LCCOMB_X28_Y14_N22
\aProcessor|displayAll|Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux11~4_combout\ = (\aProcessor|displayAll|Mux28~1_combout\ & (\ROM1|altsyncram_component|auto_generated|q_a\(20) & \aProcessor|displayAll|Mux28~2_combout\)) # (!\aProcessor|displayAll|Mux28~1_combout\ & 
-- ((!\aProcessor|displayAll|Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|displayAll|Mux28~1_combout\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(20),
	datad => \aProcessor|displayAll|Mux28~2_combout\,
	combout => \aProcessor|displayAll|Mux11~4_combout\);

-- Location: LCCOMB_X28_Y14_N8
\aProcessor|displayAll|Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux11~5_combout\ = (\aProcessor|displayAll|Mux11~4_combout\) # ((\aProcessor|displayAll|Mux11~8_combout\ & (!\aProcessor|displayAll|Mux28~2_combout\ & \aProcessor|displayAll|Mux11~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux11~8_combout\,
	datab => \aProcessor|displayAll|Mux28~2_combout\,
	datac => \aProcessor|displayAll|Mux11~7_combout\,
	datad => \aProcessor|displayAll|Mux11~4_combout\,
	combout => \aProcessor|displayAll|Mux11~5_combout\);

-- Location: LCCOMB_X24_Y14_N12
\aProcessor|displayAll|Mux11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux11~6_combout\ = (\aProcessor|displayAll|Mux11~5_combout\ & ((\switch~combout\(3)) # ((\switch~combout\(2)) # (!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(1),
	datac => \aProcessor|displayAll|Mux11~5_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux11~6_combout\);

-- Location: LCCOMB_X25_Y14_N30
\aProcessor|displayAll|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux7~4_combout\ = (\aProcessor|displayAll|Mux28~2_combout\ & (\ROM1|altsyncram_component|auto_generated|q_a\(24) & \aProcessor|displayAll|Mux28~1_combout\)) # (!\aProcessor|displayAll|Mux28~2_combout\ & 
-- ((!\aProcessor|displayAll|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~2_combout\,
	datab => \ROM1|altsyncram_component|auto_generated|q_a\(24),
	datac => \aProcessor|displayAll|Mux28~1_combout\,
	combout => \aProcessor|displayAll|Mux7~4_combout\);

-- Location: LCCOMB_X25_Y14_N4
\aProcessor|displayAll|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux7~5_combout\ = (\aProcessor|displayAll|Mux7~4_combout\) # ((\aProcessor|displayAll|Mux7~7_combout\ & (\aProcessor|displayAll|Mux7~8_combout\ & !\aProcessor|displayAll|Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux7~7_combout\,
	datab => \aProcessor|displayAll|Mux7~8_combout\,
	datac => \aProcessor|displayAll|Mux28~2_combout\,
	datad => \aProcessor|displayAll|Mux7~4_combout\,
	combout => \aProcessor|displayAll|Mux7~5_combout\);

-- Location: LCCOMB_X24_Y14_N20
\aProcessor|displayAll|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux7~6_combout\ = (\aProcessor|displayAll|Mux7~5_combout\ & (((\switch~combout\(3)) # (\switch~combout\(2))) # (!\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux7~5_combout\,
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux7~6_combout\);

-- Location: LCCOMB_X25_Y13_N4
\aProcessor|displayAll|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux6~4_combout\ = (\aProcessor|displayAll|Mux28~1_combout\ & (\aProcessor|displayAll|Mux28~2_combout\ & \ROM1|altsyncram_component|auto_generated|q_a\(25))) # (!\aProcessor|displayAll|Mux28~1_combout\ & 
-- (!\aProcessor|displayAll|Mux28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~1_combout\,
	datab => \aProcessor|displayAll|Mux28~2_combout\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(25),
	combout => \aProcessor|displayAll|Mux6~4_combout\);

-- Location: LCCOMB_X25_Y13_N6
\aProcessor|displayAll|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux6~5_combout\ = (\aProcessor|displayAll|Mux6~4_combout\) # ((\aProcessor|displayAll|Mux6~8_combout\ & (\aProcessor|displayAll|Mux6~7_combout\ & !\aProcessor|displayAll|Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux6~8_combout\,
	datab => \aProcessor|displayAll|Mux6~7_combout\,
	datac => \aProcessor|displayAll|Mux6~4_combout\,
	datad => \aProcessor|displayAll|Mux28~2_combout\,
	combout => \aProcessor|displayAll|Mux6~5_combout\);

-- Location: LCCOMB_X25_Y14_N2
\aProcessor|displayAll|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux6~6_combout\ = (\aProcessor|displayAll|Mux6~5_combout\ & (((\switch~combout\(3)) # (\switch~combout\(2))) # (!\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux6~5_combout\,
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux6~6_combout\);

-- Location: LCCOMB_X28_Y14_N14
\aProcessor|displayAll|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux5~5_combout\ = (\aProcessor|displayAll|Mux28~1_combout\ & (\ROM1|altsyncram_component|auto_generated|q_a\(26) & \aProcessor|displayAll|Mux28~2_combout\)) # (!\aProcessor|displayAll|Mux28~1_combout\ & 
-- ((!\aProcessor|displayAll|Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|displayAll|Mux28~1_combout\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(26),
	datad => \aProcessor|displayAll|Mux28~2_combout\,
	combout => \aProcessor|displayAll|Mux5~5_combout\);

-- Location: LCCOMB_X28_Y14_N16
\aProcessor|displayAll|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux5~6_combout\ = (\aProcessor|displayAll|Mux5~5_combout\) # ((\aProcessor|displayAll|Mux5~8_combout\ & (!\aProcessor|displayAll|Mux28~2_combout\ & \aProcessor|displayAll|Mux5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux5~8_combout\,
	datab => \aProcessor|displayAll|Mux28~2_combout\,
	datac => \aProcessor|displayAll|Mux5~5_combout\,
	datad => \aProcessor|displayAll|Mux5~9_combout\,
	combout => \aProcessor|displayAll|Mux5~6_combout\);

-- Location: LCCOMB_X24_Y14_N2
\aProcessor|displayAll|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux5~7_combout\ = (\aProcessor|displayAll|Mux5~6_combout\ & ((\switch~combout\(3)) # ((\switch~combout\(2)) # (!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(1),
	datac => \aProcessor|displayAll|Mux5~6_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux5~7_combout\);

-- Location: LCCOMB_X25_Y14_N8
\aProcessor|displayAll|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux4~4_combout\ = (\aProcessor|displayAll|Mux28~2_combout\ & (\ROM1|altsyncram_component|auto_generated|q_a\(27) & \aProcessor|displayAll|Mux28~1_combout\)) # (!\aProcessor|displayAll|Mux28~2_combout\ & 
-- ((!\aProcessor|displayAll|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~2_combout\,
	datab => \ROM1|altsyncram_component|auto_generated|q_a\(27),
	datac => \aProcessor|displayAll|Mux28~1_combout\,
	combout => \aProcessor|displayAll|Mux4~4_combout\);

-- Location: LCCOMB_X25_Y14_N10
\aProcessor|displayAll|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux4~5_combout\ = (\aProcessor|displayAll|Mux4~4_combout\) # ((\aProcessor|displayAll|Mux4~8_combout\ & (!\aProcessor|displayAll|Mux28~2_combout\ & \aProcessor|displayAll|Mux4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux4~8_combout\,
	datab => \aProcessor|displayAll|Mux4~4_combout\,
	datac => \aProcessor|displayAll|Mux28~2_combout\,
	datad => \aProcessor|displayAll|Mux4~7_combout\,
	combout => \aProcessor|displayAll|Mux4~5_combout\);

-- Location: LCCOMB_X24_Y14_N6
\aProcessor|displayAll|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux4~6_combout\ = (\aProcessor|displayAll|Mux4~5_combout\ & ((\switch~combout\(3)) # ((\switch~combout\(2)) # (!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(1),
	datac => \aProcessor|displayAll|Mux4~5_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux4~6_combout\);

-- Location: LCCOMB_X25_Y13_N8
\aProcessor|displayAll|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux3~4_combout\ = (\aProcessor|displayAll|Mux28~1_combout\ & (\aProcessor|displayAll|Mux28~2_combout\ & \ROM1|altsyncram_component|auto_generated|q_a\(28))) # (!\aProcessor|displayAll|Mux28~1_combout\ & 
-- (!\aProcessor|displayAll|Mux28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~1_combout\,
	datab => \aProcessor|displayAll|Mux28~2_combout\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(28),
	combout => \aProcessor|displayAll|Mux3~4_combout\);

-- Location: LCCOMB_X25_Y13_N18
\aProcessor|displayAll|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux3~5_combout\ = (\aProcessor|displayAll|Mux3~4_combout\) # ((\aProcessor|displayAll|Mux3~7_combout\ & (\aProcessor|displayAll|Mux3~8_combout\ & !\aProcessor|displayAll|Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux3~7_combout\,
	datab => \aProcessor|displayAll|Mux3~8_combout\,
	datac => \aProcessor|displayAll|Mux3~4_combout\,
	datad => \aProcessor|displayAll|Mux28~2_combout\,
	combout => \aProcessor|displayAll|Mux3~5_combout\);

-- Location: LCCOMB_X24_Y14_N10
\aProcessor|displayAll|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux3~6_combout\ = (\aProcessor|displayAll|Mux3~5_combout\ & ((\switch~combout\(3)) # ((\switch~combout\(2)) # (!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(1),
	datac => \aProcessor|displayAll|Mux3~5_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux3~6_combout\);

-- Location: LCFF_X28_Y14_N7
\aProcessor|InstAddGen|PC_temp[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(29));

-- Location: LCFF_X25_Y14_N29
\aProcessor|InstAddGen|PC_temp[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(30));

-- Location: LCCOMB_X38_Y14_N16
\debounceit2|PB_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~0_combout\ = (\debounceit2|PB_cnt\(1) & (\debounceit2|PB_cnt\(0) & (\debounceit2|PB_sync_1~regout\ $ (\debounceit2|PB_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(1),
	datab => \debounceit2|PB_sync_1~regout\,
	datac => \debounceit2|PB_cnt\(0),
	datad => \debounceit2|PB_state~regout\,
	combout => \debounceit2|PB_state~0_combout\);

-- Location: LCCOMB_X53_Y8_N20
\debounceit1|PB_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~2_combout\ = (\debounceit1|PB_cnt\(8) & (\debounceit1|PB_cnt\(7) & (\debounceit1|PB_cnt\(6) & \debounceit1|PB_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(8),
	datab => \debounceit1|PB_cnt\(7),
	datac => \debounceit1|PB_cnt\(6),
	datad => \debounceit1|PB_cnt\(9),
	combout => \debounceit1|PB_state~2_combout\);

-- Location: LCFF_X64_Y19_N15
\debounceit0|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_state~regout\);

-- Location: LCFF_X64_Y19_N19
\debounceit0|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	sdata => \debounceit0|PB_sync_0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_sync_1~regout\);

-- Location: LCCOMB_X64_Y19_N30
\debounceit0|PB_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~0_combout\ = (\debounceit0|PB_cnt\(0) & (\debounceit0|PB_cnt\(1) & (\debounceit0|PB_sync_1~regout\ $ (\debounceit0|PB_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(0),
	datab => \debounceit0|PB_sync_1~regout\,
	datac => \debounceit0|PB_state~regout\,
	datad => \debounceit0|PB_cnt\(1),
	combout => \debounceit0|PB_state~0_combout\);

-- Location: LCCOMB_X64_Y19_N24
\debounceit0|PB_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~1_combout\ = (\debounceit0|PB_cnt\(5) & (\debounceit0|PB_cnt\(3) & (\debounceit0|PB_cnt\(2) & \debounceit0|PB_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(5),
	datab => \debounceit0|PB_cnt\(3),
	datac => \debounceit0|PB_cnt\(2),
	datad => \debounceit0|PB_cnt\(4),
	combout => \debounceit0|PB_state~1_combout\);

-- Location: LCCOMB_X64_Y19_N20
\debounceit0|PB_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~2_combout\ = (\debounceit0|PB_cnt\(7) & (\debounceit0|PB_cnt\(8) & (\debounceit0|PB_cnt\(9) & \debounceit0|PB_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(7),
	datab => \debounceit0|PB_cnt\(8),
	datac => \debounceit0|PB_cnt\(9),
	datad => \debounceit0|PB_cnt\(6),
	combout => \debounceit0|PB_state~2_combout\);

-- Location: LCCOMB_X64_Y19_N26
\debounceit0|PB_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~3_combout\ = (\debounceit0|PB_cnt\(11) & (\debounceit0|PB_cnt\(12) & (\debounceit0|PB_cnt\(10) & \debounceit0|PB_cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(11),
	datab => \debounceit0|PB_cnt\(12),
	datac => \debounceit0|PB_cnt\(10),
	datad => \debounceit0|PB_cnt\(13),
	combout => \debounceit0|PB_state~3_combout\);

-- Location: LCCOMB_X64_Y19_N22
\debounceit0|PB_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~4_combout\ = (\debounceit0|PB_state~1_combout\ & (\debounceit0|PB_state~0_combout\ & (\debounceit0|PB_state~2_combout\ & \debounceit0|PB_state~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_state~1_combout\,
	datab => \debounceit0|PB_state~0_combout\,
	datac => \debounceit0|PB_state~2_combout\,
	datad => \debounceit0|PB_state~3_combout\,
	combout => \debounceit0|PB_state~4_combout\);

-- Location: LCCOMB_X64_Y19_N14
\debounceit0|PB_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~5_combout\ = \debounceit0|PB_state~regout\ $ (((\debounceit0|PB_cnt\(15) & (\debounceit0|PB_cnt\(14) & \debounceit0|PB_state~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(15),
	datab => \debounceit0|PB_cnt\(14),
	datac => \debounceit0|PB_state~regout\,
	datad => \debounceit0|PB_state~4_combout\,
	combout => \debounceit0|PB_state~5_combout\);

-- Location: LCCOMB_X28_Y12_N24
\debounceit3|PB_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_state~2_combout\ = (\debounceit3|PB_cnt\(8) & (\debounceit3|PB_cnt\(7) & (\debounceit3|PB_cnt\(6) & \debounceit3|PB_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(8),
	datab => \debounceit3|PB_cnt\(7),
	datac => \debounceit3|PB_cnt\(6),
	datad => \debounceit3|PB_cnt\(9),
	combout => \debounceit3|PB_state~2_combout\);

-- Location: LCCOMB_X64_Y19_N16
\debounceit0|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|comb~0_combout\ = \debounceit0|PB_state~regout\ $ (!\debounceit0|PB_sync_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceit0|PB_state~regout\,
	datad => \debounceit0|PB_sync_1~regout\,
	combout => \debounceit0|comb~0_combout\);

-- Location: LCFF_X64_Y19_N17
\debounceit0|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	sdata => \debounceit0|PB_sync_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_sync_0~regout\);

-- Location: LCCOMB_X28_Y13_N24
\aProcessor|displayAll|HexDisplay32Bits[2]~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~194_combout\ = (\aProcessor|displayAll|Mux28~0_combout\ & (\debounceit1|PB_state~regout\ & (\ROM1|altsyncram_component|auto_generated|q_a\(2) & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~0_combout\,
	datab => \debounceit1|PB_state~regout\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(2),
	datad => \switch~combout\(4),
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~194_combout\);

-- Location: LCCOMB_X25_Y13_N30
\aProcessor|displayAll|Mux14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux14~7_combout\ = ((\switch~combout\(1) & \ROM1|altsyncram_component|auto_generated|q_a\(23))) # (!\switch~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(23),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux14~7_combout\);

-- Location: LCCOMB_X25_Y14_N26
\aProcessor|displayAll|Mux13~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux13~7_combout\ = ((\switch~combout\(1) & \ROM1|altsyncram_component|auto_generated|q_a\(24))) # (!\switch~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(24),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux13~7_combout\);

-- Location: LCCOMB_X25_Y13_N12
\aProcessor|displayAll|Mux12~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux12~7_combout\ = ((\switch~combout\(1) & \ROM1|altsyncram_component|auto_generated|q_a\(25))) # (!\switch~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(25),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux12~7_combout\);

-- Location: LCCOMB_X28_Y14_N4
\aProcessor|displayAll|Mux11~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux11~7_combout\ = ((\switch~combout\(1) & \ROM1|altsyncram_component|auto_generated|q_a\(26))) # (!\switch~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(1),
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(26),
	combout => \aProcessor|displayAll|Mux11~7_combout\);

-- Location: LCCOMB_X25_Y14_N20
\aProcessor|displayAll|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux7~7_combout\ = ((\switch~combout\(1) & \ROM1|altsyncram_component|auto_generated|q_a\(27))) # (!\switch~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(27),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux7~7_combout\);

-- Location: LCCOMB_X25_Y13_N22
\aProcessor|displayAll|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux6~7_combout\ = ((\switch~combout\(1) & \ROM1|altsyncram_component|auto_generated|q_a\(28))) # (!\switch~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(28),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux6~7_combout\);

-- Location: LCCOMB_X28_Y14_N10
\aProcessor|displayAll|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux5~8_combout\ = ((\switch~combout\(1) & \ROM1|altsyncram_component|auto_generated|q_a\(29))) # (!\switch~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(1),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(29),
	combout => \aProcessor|displayAll|Mux5~8_combout\);

-- Location: LCCOMB_X25_Y14_N18
\aProcessor|displayAll|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux4~7_combout\ = ((\switch~combout\(1) & \ROM1|altsyncram_component|auto_generated|q_a\(30))) # (!\switch~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(30),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux4~7_combout\);

-- Location: LCCOMB_X25_Y13_N20
\aProcessor|displayAll|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux3~7_combout\ = ((\switch~combout\(1) & \ROM1|altsyncram_component|auto_generated|q_a\(31))) # (!\switch~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(31),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux3~7_combout\);

-- Location: LCCOMB_X25_Y13_N10
\aProcessor|displayAll|Mux14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux14~8_combout\ = (\switch~combout\(2) & (\switch~combout\(0) $ ((!\switch~combout\(1))))) # (!\switch~combout\(2) & (!\switch~combout\(0) & ((\aProcessor|InstAddGen|PC\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(17),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux14~8_combout\);

-- Location: LCCOMB_X25_Y14_N24
\aProcessor|displayAll|Mux13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux13~8_combout\ = (\switch~combout\(2) & (\switch~combout\(0) $ ((!\switch~combout\(1))))) # (!\switch~combout\(2) & (!\switch~combout\(0) & ((\aProcessor|InstAddGen|PC\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(18),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux13~8_combout\);

-- Location: LCCOMB_X24_Y13_N20
\aProcessor|displayAll|Mux12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux12~8_combout\ = (\switch~combout\(2) & (\switch~combout\(0) $ ((!\switch~combout\(1))))) # (!\switch~combout\(2) & (!\switch~combout\(0) & ((\aProcessor|InstAddGen|PC\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(19),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux12~8_combout\);

-- Location: LCCOMB_X27_Y14_N2
\aProcessor|displayAll|Mux11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux11~8_combout\ = (\switch~combout\(2) & (\switch~combout\(0) $ (((!\switch~combout\(1)))))) # (!\switch~combout\(2) & (!\switch~combout\(0) & (\aProcessor|InstAddGen|PC\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(0),
	datac => \aProcessor|InstAddGen|PC\(20),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux11~8_combout\);

-- Location: LCCOMB_X25_Y14_N22
\aProcessor|displayAll|Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux7~8_combout\ = (\switch~combout\(2) & (\switch~combout\(0) $ ((!\switch~combout\(1))))) # (!\switch~combout\(2) & (!\switch~combout\(0) & ((\aProcessor|InstAddGen|PC\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(24),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux7~8_combout\);

-- Location: LCCOMB_X24_Y13_N14
\aProcessor|displayAll|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux6~8_combout\ = (\switch~combout\(2) & (\switch~combout\(0) $ ((!\switch~combout\(1))))) # (!\switch~combout\(2) & (!\switch~combout\(0) & ((\aProcessor|InstAddGen|PC\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(25),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux6~8_combout\);

-- Location: LCCOMB_X28_Y14_N0
\aProcessor|displayAll|Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux5~9_combout\ = (\switch~combout\(2) & (\switch~combout\(0) $ ((!\switch~combout\(1))))) # (!\switch~combout\(2) & (!\switch~combout\(0) & ((\aProcessor|InstAddGen|PC\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \switch~combout\(2),
	datad => \aProcessor|InstAddGen|PC\(26),
	combout => \aProcessor|displayAll|Mux5~9_combout\);

-- Location: LCCOMB_X25_Y14_N12
\aProcessor|displayAll|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux4~8_combout\ = (\switch~combout\(2) & (\switch~combout\(0) $ ((!\switch~combout\(1))))) # (!\switch~combout\(2) & (!\switch~combout\(0) & ((\aProcessor|InstAddGen|PC\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(27),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux4~8_combout\);

-- Location: LCCOMB_X25_Y13_N0
\aProcessor|displayAll|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux3~8_combout\ = (\switch~combout\(2) & (\switch~combout\(0) $ ((!\switch~combout\(1))))) # (!\switch~combout\(2) & (!\switch~combout\(0) & ((\aProcessor|InstAddGen|PC\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(28),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux3~8_combout\);

-- Location: LCCOMB_X25_Y14_N14
\aProcessor|displayAll|HexDisplay32Bits[30]~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[30]~213_combout\ = (\switch~combout\(3) & (((\ROM1|altsyncram_component|auto_generated|q_a\(30)) # (\switch~combout\(0))))) # (!\switch~combout\(3) & (\aProcessor|InstAddGen|PC\(30) & ((!\switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|InstAddGen|PC\(30),
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(30),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[30]~213_combout\);

-- Location: LCCOMB_X25_Y14_N28
\aProcessor|displayAll|HexDisplay32Bits[30]~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[30]~214_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[30]~213_combout\ & (!\switch~combout\(2) & ((\aProcessor|InstAddGen|PC_temp\(30)) # (!\switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|displayAll|HexDisplay32Bits[30]~213_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(30),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[30]~214_combout\);

-- Location: LCCOMB_X28_Y14_N18
\aProcessor|displayAll|HexDisplay32Bits[29]~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[29]~215_combout\ = (\switch~combout\(0) & (((\switch~combout\(3))))) # (!\switch~combout\(0) & ((\switch~combout\(3) & ((\ROM1|altsyncram_component|auto_generated|q_a\(29)))) # (!\switch~combout\(3) & 
-- (\aProcessor|InstAddGen|PC\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|InstAddGen|PC\(29),
	datac => \switch~combout\(3),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(29),
	combout => \aProcessor|displayAll|HexDisplay32Bits[29]~215_combout\);

-- Location: LCCOMB_X28_Y14_N6
\aProcessor|displayAll|HexDisplay32Bits[29]~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[29]~216_combout\ = (!\switch~combout\(2) & (\aProcessor|displayAll|HexDisplay32Bits[29]~215_combout\ & ((\aProcessor|InstAddGen|PC_temp\(29)) # (!\switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \aProcessor|displayAll|HexDisplay32Bits[29]~215_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(29),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[29]~216_combout\);

-- Location: LCCOMB_X64_Y19_N18
\debounceit0|PB_sync_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_sync_0~0_combout\ = !\pushBut~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pushBut~combout\(0),
	combout => \debounceit0|PB_sync_0~0_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pushBut[0]~I\ : cycloneii_io
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
	padio => ww_pushBut(0),
	combout => \pushBut~combout\(0));

-- Location: CLKCTRL_G7
\debounceit0|PB_state~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \debounceit0|PB_state~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \debounceit0|PB_state~clkctrl_outclk\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_27~I\ : cycloneii_io
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
	padio => ww_clk_27,
	combout => \clk_27~combout\);

-- Location: CLKCTRL_G11
\clk_27~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_27~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_27~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y14_N0
\debounceit2|PB_cnt[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[0]~16_combout\ = \debounceit2|PB_cnt\(0) $ (VCC)
-- \debounceit2|PB_cnt[0]~17\ = CARRY(\debounceit2|PB_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceit2|PB_cnt\(0),
	datad => VCC,
	combout => \debounceit2|PB_cnt[0]~16_combout\,
	cout => \debounceit2|PB_cnt[0]~17\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pushBut[2]~I\ : cycloneii_io
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
	padio => ww_pushBut(2),
	combout => \pushBut~combout\(2));

-- Location: LCCOMB_X38_Y14_N18
\debounceit2|PB_sync_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_sync_0~0_combout\ = !\pushBut~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pushBut~combout\(2),
	combout => \debounceit2|PB_sync_0~0_combout\);

-- Location: LCFF_X38_Y14_N31
\debounceit2|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	sdata => \debounceit2|PB_sync_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_sync_0~regout\);

-- Location: LCFF_X38_Y14_N19
\debounceit2|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	sdata => \debounceit2|PB_sync_0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_sync_1~regout\);

-- Location: LCCOMB_X38_Y14_N30
\debounceit2|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|comb~0_combout\ = \debounceit2|PB_sync_1~regout\ $ (!\debounceit2|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceit2|PB_sync_1~regout\,
	datad => \debounceit2|PB_state~regout\,
	combout => \debounceit2|comb~0_combout\);

-- Location: LCFF_X37_Y14_N1
\debounceit2|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[0]~16_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(0));

-- Location: LCCOMB_X37_Y14_N2
\debounceit2|PB_cnt[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[1]~18_combout\ = (\debounceit2|PB_cnt\(1) & (!\debounceit2|PB_cnt[0]~17\)) # (!\debounceit2|PB_cnt\(1) & ((\debounceit2|PB_cnt[0]~17\) # (GND)))
-- \debounceit2|PB_cnt[1]~19\ = CARRY((!\debounceit2|PB_cnt[0]~17\) # (!\debounceit2|PB_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit2|PB_cnt\(1),
	datad => VCC,
	cin => \debounceit2|PB_cnt[0]~17\,
	combout => \debounceit2|PB_cnt[1]~18_combout\,
	cout => \debounceit2|PB_cnt[1]~19\);

-- Location: LCFF_X37_Y14_N3
\debounceit2|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[1]~18_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(1));

-- Location: LCCOMB_X37_Y14_N4
\debounceit2|PB_cnt[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[2]~20_combout\ = (\debounceit2|PB_cnt\(2) & (\debounceit2|PB_cnt[1]~19\ $ (GND))) # (!\debounceit2|PB_cnt\(2) & (!\debounceit2|PB_cnt[1]~19\ & VCC))
-- \debounceit2|PB_cnt[2]~21\ = CARRY((\debounceit2|PB_cnt\(2) & !\debounceit2|PB_cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit2|PB_cnt\(2),
	datad => VCC,
	cin => \debounceit2|PB_cnt[1]~19\,
	combout => \debounceit2|PB_cnt[2]~20_combout\,
	cout => \debounceit2|PB_cnt[2]~21\);

-- Location: LCFF_X37_Y14_N5
\debounceit2|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[2]~20_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(2));

-- Location: LCCOMB_X37_Y14_N6
\debounceit2|PB_cnt[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[3]~22_combout\ = (\debounceit2|PB_cnt\(3) & (!\debounceit2|PB_cnt[2]~21\)) # (!\debounceit2|PB_cnt\(3) & ((\debounceit2|PB_cnt[2]~21\) # (GND)))
-- \debounceit2|PB_cnt[3]~23\ = CARRY((!\debounceit2|PB_cnt[2]~21\) # (!\debounceit2|PB_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(3),
	datad => VCC,
	cin => \debounceit2|PB_cnt[2]~21\,
	combout => \debounceit2|PB_cnt[3]~22_combout\,
	cout => \debounceit2|PB_cnt[3]~23\);

-- Location: LCCOMB_X37_Y14_N8
\debounceit2|PB_cnt[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[4]~24_combout\ = (\debounceit2|PB_cnt\(4) & (\debounceit2|PB_cnt[3]~23\ $ (GND))) # (!\debounceit2|PB_cnt\(4) & (!\debounceit2|PB_cnt[3]~23\ & VCC))
-- \debounceit2|PB_cnt[4]~25\ = CARRY((\debounceit2|PB_cnt\(4) & !\debounceit2|PB_cnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit2|PB_cnt\(4),
	datad => VCC,
	cin => \debounceit2|PB_cnt[3]~23\,
	combout => \debounceit2|PB_cnt[4]~24_combout\,
	cout => \debounceit2|PB_cnt[4]~25\);

-- Location: LCFF_X37_Y14_N9
\debounceit2|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[4]~24_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(4));

-- Location: LCCOMB_X37_Y14_N12
\debounceit2|PB_cnt[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[6]~28_combout\ = (\debounceit2|PB_cnt\(6) & (\debounceit2|PB_cnt[5]~27\ $ (GND))) # (!\debounceit2|PB_cnt\(6) & (!\debounceit2|PB_cnt[5]~27\ & VCC))
-- \debounceit2|PB_cnt[6]~29\ = CARRY((\debounceit2|PB_cnt\(6) & !\debounceit2|PB_cnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(6),
	datad => VCC,
	cin => \debounceit2|PB_cnt[5]~27\,
	combout => \debounceit2|PB_cnt[6]~28_combout\,
	cout => \debounceit2|PB_cnt[6]~29\);

-- Location: LCCOMB_X37_Y14_N14
\debounceit2|PB_cnt[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[7]~30_combout\ = (\debounceit2|PB_cnt\(7) & (!\debounceit2|PB_cnt[6]~29\)) # (!\debounceit2|PB_cnt\(7) & ((\debounceit2|PB_cnt[6]~29\) # (GND)))
-- \debounceit2|PB_cnt[7]~31\ = CARRY((!\debounceit2|PB_cnt[6]~29\) # (!\debounceit2|PB_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit2|PB_cnt\(7),
	datad => VCC,
	cin => \debounceit2|PB_cnt[6]~29\,
	combout => \debounceit2|PB_cnt[7]~30_combout\,
	cout => \debounceit2|PB_cnt[7]~31\);

-- Location: LCFF_X37_Y14_N15
\debounceit2|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[7]~30_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(7));

-- Location: LCCOMB_X37_Y14_N16
\debounceit2|PB_cnt[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[8]~32_combout\ = (\debounceit2|PB_cnt\(8) & (\debounceit2|PB_cnt[7]~31\ $ (GND))) # (!\debounceit2|PB_cnt\(8) & (!\debounceit2|PB_cnt[7]~31\ & VCC))
-- \debounceit2|PB_cnt[8]~33\ = CARRY((\debounceit2|PB_cnt\(8) & !\debounceit2|PB_cnt[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(8),
	datad => VCC,
	cin => \debounceit2|PB_cnt[7]~31\,
	combout => \debounceit2|PB_cnt[8]~32_combout\,
	cout => \debounceit2|PB_cnt[8]~33\);

-- Location: LCCOMB_X37_Y14_N18
\debounceit2|PB_cnt[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[9]~34_combout\ = (\debounceit2|PB_cnt\(9) & (!\debounceit2|PB_cnt[8]~33\)) # (!\debounceit2|PB_cnt\(9) & ((\debounceit2|PB_cnt[8]~33\) # (GND)))
-- \debounceit2|PB_cnt[9]~35\ = CARRY((!\debounceit2|PB_cnt[8]~33\) # (!\debounceit2|PB_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit2|PB_cnt\(9),
	datad => VCC,
	cin => \debounceit2|PB_cnt[8]~33\,
	combout => \debounceit2|PB_cnt[9]~34_combout\,
	cout => \debounceit2|PB_cnt[9]~35\);

-- Location: LCFF_X37_Y14_N19
\debounceit2|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[9]~34_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(9));

-- Location: LCCOMB_X37_Y14_N20
\debounceit2|PB_cnt[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[10]~36_combout\ = (\debounceit2|PB_cnt\(10) & (\debounceit2|PB_cnt[9]~35\ $ (GND))) # (!\debounceit2|PB_cnt\(10) & (!\debounceit2|PB_cnt[9]~35\ & VCC))
-- \debounceit2|PB_cnt[10]~37\ = CARRY((\debounceit2|PB_cnt\(10) & !\debounceit2|PB_cnt[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(10),
	datad => VCC,
	cin => \debounceit2|PB_cnt[9]~35\,
	combout => \debounceit2|PB_cnt[10]~36_combout\,
	cout => \debounceit2|PB_cnt[10]~37\);

-- Location: LCCOMB_X37_Y14_N22
\debounceit2|PB_cnt[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[11]~38_combout\ = (\debounceit2|PB_cnt\(11) & (!\debounceit2|PB_cnt[10]~37\)) # (!\debounceit2|PB_cnt\(11) & ((\debounceit2|PB_cnt[10]~37\) # (GND)))
-- \debounceit2|PB_cnt[11]~39\ = CARRY((!\debounceit2|PB_cnt[10]~37\) # (!\debounceit2|PB_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit2|PB_cnt\(11),
	datad => VCC,
	cin => \debounceit2|PB_cnt[10]~37\,
	combout => \debounceit2|PB_cnt[11]~38_combout\,
	cout => \debounceit2|PB_cnt[11]~39\);

-- Location: LCFF_X37_Y14_N23
\debounceit2|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[11]~38_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(11));

-- Location: LCCOMB_X37_Y14_N24
\debounceit2|PB_cnt[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[12]~40_combout\ = (\debounceit2|PB_cnt\(12) & (\debounceit2|PB_cnt[11]~39\ $ (GND))) # (!\debounceit2|PB_cnt\(12) & (!\debounceit2|PB_cnt[11]~39\ & VCC))
-- \debounceit2|PB_cnt[12]~41\ = CARRY((\debounceit2|PB_cnt\(12) & !\debounceit2|PB_cnt[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(12),
	datad => VCC,
	cin => \debounceit2|PB_cnt[11]~39\,
	combout => \debounceit2|PB_cnt[12]~40_combout\,
	cout => \debounceit2|PB_cnt[12]~41\);

-- Location: LCCOMB_X37_Y14_N26
\debounceit2|PB_cnt[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_cnt[13]~42_combout\ = (\debounceit2|PB_cnt\(13) & (!\debounceit2|PB_cnt[12]~41\)) # (!\debounceit2|PB_cnt\(13) & ((\debounceit2|PB_cnt[12]~41\) # (GND)))
-- \debounceit2|PB_cnt[13]~43\ = CARRY((!\debounceit2|PB_cnt[12]~41\) # (!\debounceit2|PB_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit2|PB_cnt\(13),
	datad => VCC,
	cin => \debounceit2|PB_cnt[12]~41\,
	combout => \debounceit2|PB_cnt[13]~42_combout\,
	cout => \debounceit2|PB_cnt[13]~43\);

-- Location: LCFF_X37_Y14_N27
\debounceit2|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[13]~42_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(13));

-- Location: LCFF_X37_Y14_N29
\debounceit2|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[14]~44_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(14));

-- Location: LCFF_X37_Y14_N7
\debounceit2|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[3]~22_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(3));

-- Location: LCCOMB_X38_Y14_N22
\debounceit2|PB_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~1_combout\ = (\debounceit2|PB_cnt\(5) & (\debounceit2|PB_cnt\(3) & (\debounceit2|PB_cnt\(2) & \debounceit2|PB_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(5),
	datab => \debounceit2|PB_cnt\(3),
	datac => \debounceit2|PB_cnt\(2),
	datad => \debounceit2|PB_cnt\(4),
	combout => \debounceit2|PB_state~1_combout\);

-- Location: LCFF_X37_Y14_N25
\debounceit2|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[12]~40_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(12));

-- Location: LCFF_X37_Y14_N21
\debounceit2|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[10]~36_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(10));

-- Location: LCCOMB_X38_Y14_N14
\debounceit2|PB_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~3_combout\ = (\debounceit2|PB_cnt\(11) & (\debounceit2|PB_cnt\(12) & (\debounceit2|PB_cnt\(10) & \debounceit2|PB_cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(11),
	datab => \debounceit2|PB_cnt\(12),
	datac => \debounceit2|PB_cnt\(10),
	datad => \debounceit2|PB_cnt\(13),
	combout => \debounceit2|PB_state~3_combout\);

-- Location: LCFF_X37_Y14_N17
\debounceit2|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[8]~32_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(8));

-- Location: LCFF_X37_Y14_N13
\debounceit2|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[6]~28_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(6));

-- Location: LCCOMB_X38_Y14_N12
\debounceit2|PB_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~2_combout\ = (\debounceit2|PB_cnt\(7) & (\debounceit2|PB_cnt\(8) & (\debounceit2|PB_cnt\(9) & \debounceit2|PB_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(7),
	datab => \debounceit2|PB_cnt\(8),
	datac => \debounceit2|PB_cnt\(9),
	datad => \debounceit2|PB_cnt\(6),
	combout => \debounceit2|PB_state~2_combout\);

-- Location: LCCOMB_X38_Y14_N0
\debounceit2|PB_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~4_combout\ = (\debounceit2|PB_state~0_combout\ & (\debounceit2|PB_state~1_combout\ & (\debounceit2|PB_state~3_combout\ & \debounceit2|PB_state~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_state~0_combout\,
	datab => \debounceit2|PB_state~1_combout\,
	datac => \debounceit2|PB_state~3_combout\,
	datad => \debounceit2|PB_state~2_combout\,
	combout => \debounceit2|PB_state~4_combout\);

-- Location: LCCOMB_X38_Y14_N28
\debounceit2|PB_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~5_combout\ = \debounceit2|PB_state~regout\ $ (((\debounceit2|PB_cnt\(15) & (\debounceit2|PB_cnt\(14) & \debounceit2|PB_state~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(15),
	datab => \debounceit2|PB_cnt\(14),
	datac => \debounceit2|PB_state~regout\,
	datad => \debounceit2|PB_state~4_combout\,
	combout => \debounceit2|PB_state~5_combout\);

-- Location: LCFF_X38_Y14_N29
\debounceit2|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_state~regout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[1]~I\ : cycloneii_io
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
	padio => ww_switch(1),
	combout => \switch~combout\(1));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[0]~I\ : cycloneii_io
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
	padio => ww_switch(0),
	combout => \switch~combout\(0));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[2]~I\ : cycloneii_io
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
	padio => ww_switch(2),
	combout => \switch~combout\(2));

-- Location: LCCOMB_X29_Y13_N16
\aProcessor|displayAll|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~0_combout\ = (\switch~combout\(3) & ((\switch~combout\(1) & (\switch~combout\(0) & \switch~combout\(2))) # (!\switch~combout\(1) & (!\switch~combout\(0) & !\switch~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux28~0_combout\);

-- Location: LCCOMB_X54_Y8_N0
\debounceit1|PB_cnt[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[0]~16_combout\ = \debounceit1|PB_cnt\(0) $ (VCC)
-- \debounceit1|PB_cnt[0]~17\ = CARRY(\debounceit1|PB_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceit1|PB_cnt\(0),
	datad => VCC,
	combout => \debounceit1|PB_cnt[0]~16_combout\,
	cout => \debounceit1|PB_cnt[0]~17\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pushBut[1]~I\ : cycloneii_io
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
	padio => ww_pushBut(1),
	combout => \pushBut~combout\(1));

-- Location: LCCOMB_X57_Y8_N8
\debounceit1|PB_sync_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_sync_0~0_combout\ = !\pushBut~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pushBut~combout\(1),
	combout => \debounceit1|PB_sync_0~0_combout\);

-- Location: LCFF_X57_Y8_N9
\debounceit1|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_sync_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_sync_0~regout\);

-- Location: LCCOMB_X53_Y8_N18
\debounceit1|PB_sync_1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_sync_1~feeder_combout\ = \debounceit1|PB_sync_0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debounceit1|PB_sync_0~regout\,
	combout => \debounceit1|PB_sync_1~feeder_combout\);

-- Location: LCFF_X53_Y8_N19
\debounceit1|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_sync_1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_sync_1~regout\);

-- Location: LCCOMB_X53_Y8_N2
\debounceit1|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|comb~0_combout\ = \debounceit1|PB_sync_1~regout\ $ (!\debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceit1|PB_sync_1~regout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \debounceit1|comb~0_combout\);

-- Location: LCFF_X54_Y8_N1
\debounceit1|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[0]~16_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(0));

-- Location: LCCOMB_X54_Y8_N2
\debounceit1|PB_cnt[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[1]~18_combout\ = (\debounceit1|PB_cnt\(1) & (!\debounceit1|PB_cnt[0]~17\)) # (!\debounceit1|PB_cnt\(1) & ((\debounceit1|PB_cnt[0]~17\) # (GND)))
-- \debounceit1|PB_cnt[1]~19\ = CARRY((!\debounceit1|PB_cnt[0]~17\) # (!\debounceit1|PB_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit1|PB_cnt\(1),
	datad => VCC,
	cin => \debounceit1|PB_cnt[0]~17\,
	combout => \debounceit1|PB_cnt[1]~18_combout\,
	cout => \debounceit1|PB_cnt[1]~19\);

-- Location: LCFF_X54_Y8_N3
\debounceit1|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[1]~18_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(1));

-- Location: LCCOMB_X54_Y8_N4
\debounceit1|PB_cnt[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[2]~20_combout\ = (\debounceit1|PB_cnt\(2) & (\debounceit1|PB_cnt[1]~19\ $ (GND))) # (!\debounceit1|PB_cnt\(2) & (!\debounceit1|PB_cnt[1]~19\ & VCC))
-- \debounceit1|PB_cnt[2]~21\ = CARRY((\debounceit1|PB_cnt\(2) & !\debounceit1|PB_cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit1|PB_cnt\(2),
	datad => VCC,
	cin => \debounceit1|PB_cnt[1]~19\,
	combout => \debounceit1|PB_cnt[2]~20_combout\,
	cout => \debounceit1|PB_cnt[2]~21\);

-- Location: LCFF_X54_Y8_N5
\debounceit1|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[2]~20_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(2));

-- Location: LCCOMB_X54_Y8_N8
\debounceit1|PB_cnt[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[4]~24_combout\ = (\debounceit1|PB_cnt\(4) & (\debounceit1|PB_cnt[3]~23\ $ (GND))) # (!\debounceit1|PB_cnt\(4) & (!\debounceit1|PB_cnt[3]~23\ & VCC))
-- \debounceit1|PB_cnt[4]~25\ = CARRY((\debounceit1|PB_cnt\(4) & !\debounceit1|PB_cnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit1|PB_cnt\(4),
	datad => VCC,
	cin => \debounceit1|PB_cnt[3]~23\,
	combout => \debounceit1|PB_cnt[4]~24_combout\,
	cout => \debounceit1|PB_cnt[4]~25\);

-- Location: LCFF_X54_Y8_N9
\debounceit1|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[4]~24_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(4));

-- Location: LCCOMB_X54_Y8_N10
\debounceit1|PB_cnt[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[5]~26_combout\ = (\debounceit1|PB_cnt\(5) & (!\debounceit1|PB_cnt[4]~25\)) # (!\debounceit1|PB_cnt\(5) & ((\debounceit1|PB_cnt[4]~25\) # (GND)))
-- \debounceit1|PB_cnt[5]~27\ = CARRY((!\debounceit1|PB_cnt[4]~25\) # (!\debounceit1|PB_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(5),
	datad => VCC,
	cin => \debounceit1|PB_cnt[4]~25\,
	combout => \debounceit1|PB_cnt[5]~26_combout\,
	cout => \debounceit1|PB_cnt[5]~27\);

-- Location: LCCOMB_X54_Y8_N14
\debounceit1|PB_cnt[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[7]~30_combout\ = (\debounceit1|PB_cnt\(7) & (!\debounceit1|PB_cnt[6]~29\)) # (!\debounceit1|PB_cnt\(7) & ((\debounceit1|PB_cnt[6]~29\) # (GND)))
-- \debounceit1|PB_cnt[7]~31\ = CARRY((!\debounceit1|PB_cnt[6]~29\) # (!\debounceit1|PB_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit1|PB_cnt\(7),
	datad => VCC,
	cin => \debounceit1|PB_cnt[6]~29\,
	combout => \debounceit1|PB_cnt[7]~30_combout\,
	cout => \debounceit1|PB_cnt[7]~31\);

-- Location: LCFF_X54_Y8_N15
\debounceit1|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[7]~30_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(7));

-- Location: LCCOMB_X54_Y8_N18
\debounceit1|PB_cnt[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[9]~34_combout\ = (\debounceit1|PB_cnt\(9) & (!\debounceit1|PB_cnt[8]~33\)) # (!\debounceit1|PB_cnt\(9) & ((\debounceit1|PB_cnt[8]~33\) # (GND)))
-- \debounceit1|PB_cnt[9]~35\ = CARRY((!\debounceit1|PB_cnt[8]~33\) # (!\debounceit1|PB_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit1|PB_cnt\(9),
	datad => VCC,
	cin => \debounceit1|PB_cnt[8]~33\,
	combout => \debounceit1|PB_cnt[9]~34_combout\,
	cout => \debounceit1|PB_cnt[9]~35\);

-- Location: LCFF_X54_Y8_N19
\debounceit1|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[9]~34_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(9));

-- Location: LCCOMB_X54_Y8_N20
\debounceit1|PB_cnt[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[10]~36_combout\ = (\debounceit1|PB_cnt\(10) & (\debounceit1|PB_cnt[9]~35\ $ (GND))) # (!\debounceit1|PB_cnt\(10) & (!\debounceit1|PB_cnt[9]~35\ & VCC))
-- \debounceit1|PB_cnt[10]~37\ = CARRY((\debounceit1|PB_cnt\(10) & !\debounceit1|PB_cnt[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(10),
	datad => VCC,
	cin => \debounceit1|PB_cnt[9]~35\,
	combout => \debounceit1|PB_cnt[10]~36_combout\,
	cout => \debounceit1|PB_cnt[10]~37\);

-- Location: LCCOMB_X54_Y8_N22
\debounceit1|PB_cnt[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[11]~38_combout\ = (\debounceit1|PB_cnt\(11) & (!\debounceit1|PB_cnt[10]~37\)) # (!\debounceit1|PB_cnt\(11) & ((\debounceit1|PB_cnt[10]~37\) # (GND)))
-- \debounceit1|PB_cnt[11]~39\ = CARRY((!\debounceit1|PB_cnt[10]~37\) # (!\debounceit1|PB_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit1|PB_cnt\(11),
	datad => VCC,
	cin => \debounceit1|PB_cnt[10]~37\,
	combout => \debounceit1|PB_cnt[11]~38_combout\,
	cout => \debounceit1|PB_cnt[11]~39\);

-- Location: LCFF_X54_Y8_N23
\debounceit1|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[11]~38_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(11));

-- Location: LCCOMB_X54_Y8_N24
\debounceit1|PB_cnt[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[12]~40_combout\ = (\debounceit1|PB_cnt\(12) & (\debounceit1|PB_cnt[11]~39\ $ (GND))) # (!\debounceit1|PB_cnt\(12) & (!\debounceit1|PB_cnt[11]~39\ & VCC))
-- \debounceit1|PB_cnt[12]~41\ = CARRY((\debounceit1|PB_cnt\(12) & !\debounceit1|PB_cnt[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(12),
	datad => VCC,
	cin => \debounceit1|PB_cnt[11]~39\,
	combout => \debounceit1|PB_cnt[12]~40_combout\,
	cout => \debounceit1|PB_cnt[12]~41\);

-- Location: LCCOMB_X54_Y8_N26
\debounceit1|PB_cnt[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_cnt[13]~42_combout\ = (\debounceit1|PB_cnt\(13) & (!\debounceit1|PB_cnt[12]~41\)) # (!\debounceit1|PB_cnt\(13) & ((\debounceit1|PB_cnt[12]~41\) # (GND)))
-- \debounceit1|PB_cnt[13]~43\ = CARRY((!\debounceit1|PB_cnt[12]~41\) # (!\debounceit1|PB_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit1|PB_cnt\(13),
	datad => VCC,
	cin => \debounceit1|PB_cnt[12]~41\,
	combout => \debounceit1|PB_cnt[13]~42_combout\,
	cout => \debounceit1|PB_cnt[13]~43\);

-- Location: LCFF_X54_Y8_N27
\debounceit1|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[13]~42_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(13));

-- Location: LCFF_X54_Y8_N29
\debounceit1|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[14]~44_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(14));

-- Location: LCFF_X54_Y8_N11
\debounceit1|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[5]~26_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(5));

-- Location: LCCOMB_X53_Y8_N30
\debounceit1|PB_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~1_combout\ = (\debounceit1|PB_cnt\(3) & (\debounceit1|PB_cnt\(4) & (\debounceit1|PB_cnt\(5) & \debounceit1|PB_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(3),
	datab => \debounceit1|PB_cnt\(4),
	datac => \debounceit1|PB_cnt\(5),
	datad => \debounceit1|PB_cnt\(2),
	combout => \debounceit1|PB_state~1_combout\);

-- Location: LCCOMB_X53_Y8_N24
\debounceit1|PB_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~0_combout\ = (\debounceit1|PB_cnt\(0) & (\debounceit1|PB_cnt\(1) & (\debounceit1|PB_state~regout\ $ (\debounceit1|PB_sync_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \debounceit1|PB_sync_1~regout\,
	datac => \debounceit1|PB_cnt\(0),
	datad => \debounceit1|PB_cnt\(1),
	combout => \debounceit1|PB_state~0_combout\);

-- Location: LCFF_X54_Y8_N25
\debounceit1|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[12]~40_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(12));

-- Location: LCFF_X54_Y8_N21
\debounceit1|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[10]~36_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(10));

-- Location: LCCOMB_X53_Y8_N6
\debounceit1|PB_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~3_combout\ = (\debounceit1|PB_cnt\(13) & (\debounceit1|PB_cnt\(12) & (\debounceit1|PB_cnt\(10) & \debounceit1|PB_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(13),
	datab => \debounceit1|PB_cnt\(12),
	datac => \debounceit1|PB_cnt\(10),
	datad => \debounceit1|PB_cnt\(11),
	combout => \debounceit1|PB_state~3_combout\);

-- Location: LCCOMB_X53_Y8_N0
\debounceit1|PB_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~4_combout\ = (\debounceit1|PB_state~2_combout\ & (\debounceit1|PB_state~1_combout\ & (\debounceit1|PB_state~0_combout\ & \debounceit1|PB_state~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~2_combout\,
	datab => \debounceit1|PB_state~1_combout\,
	datac => \debounceit1|PB_state~0_combout\,
	datad => \debounceit1|PB_state~3_combout\,
	combout => \debounceit1|PB_state~4_combout\);

-- Location: LCCOMB_X53_Y8_N12
\debounceit1|PB_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~5_combout\ = \debounceit1|PB_state~regout\ $ (((\debounceit1|PB_cnt\(15) & (\debounceit1|PB_cnt\(14) & \debounceit1|PB_state~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(15),
	datab => \debounceit1|PB_cnt\(14),
	datac => \debounceit1|PB_state~regout\,
	datad => \debounceit1|PB_state~4_combout\,
	combout => \debounceit1|PB_state~5_combout\);

-- Location: LCFF_X53_Y8_N13
\debounceit1|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_state~regout\);

-- Location: LCCOMB_X28_Y13_N30
\aProcessor|displayAll|HexDisplay32Bits[1]~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~193_combout\ = (!\switch~combout\(4) & (!\aProcessor|displayAll|Mux28~0_combout\ & \debounceit1|PB_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datac => \aProcessor|displayAll|Mux28~0_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~193_combout\);

-- Location: LCCOMB_X27_Y13_N0
\aProcessor|InstAddGen|PC[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[0]~32_combout\ = \aProcessor|InstAddGen|PC\(0) $ (VCC)
-- \aProcessor|InstAddGen|PC[0]~33\ = CARRY(\aProcessor|InstAddGen|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(0),
	datad => VCC,
	combout => \aProcessor|InstAddGen|PC[0]~32_combout\,
	cout => \aProcessor|InstAddGen|PC[0]~33\);

-- Location: LCCOMB_X29_Y12_N0
\debounceit3|PB_cnt[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[0]~16_combout\ = \debounceit3|PB_cnt\(0) $ (VCC)
-- \debounceit3|PB_cnt[0]~17\ = CARRY(\debounceit3|PB_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceit3|PB_cnt\(0),
	datad => VCC,
	combout => \debounceit3|PB_cnt[0]~16_combout\,
	cout => \debounceit3|PB_cnt[0]~17\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pushBut[3]~I\ : cycloneii_io
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
	padio => ww_pushBut(3),
	combout => \pushBut~combout\(3));

-- Location: LCCOMB_X28_Y12_N16
\debounceit3|PB_sync_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_sync_0~0_combout\ = !\pushBut~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pushBut~combout\(3),
	combout => \debounceit3|PB_sync_0~0_combout\);

-- Location: LCFF_X28_Y12_N17
\debounceit3|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_sync_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_sync_0~regout\);

-- Location: LCFF_X28_Y12_N15
\debounceit3|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	sdata => \debounceit3|PB_sync_0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_sync_1~regout\);

-- Location: LCCOMB_X28_Y12_N30
\debounceit3|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|comb~0_combout\ = \debounceit3|PB_sync_1~regout\ $ (!\debounceit3|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceit3|PB_sync_1~regout\,
	datad => \debounceit3|PB_state~regout\,
	combout => \debounceit3|comb~0_combout\);

-- Location: LCFF_X29_Y12_N1
\debounceit3|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[0]~16_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(0));

-- Location: LCCOMB_X29_Y12_N2
\debounceit3|PB_cnt[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[1]~18_combout\ = (\debounceit3|PB_cnt\(1) & (!\debounceit3|PB_cnt[0]~17\)) # (!\debounceit3|PB_cnt\(1) & ((\debounceit3|PB_cnt[0]~17\) # (GND)))
-- \debounceit3|PB_cnt[1]~19\ = CARRY((!\debounceit3|PB_cnt[0]~17\) # (!\debounceit3|PB_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit3|PB_cnt\(1),
	datad => VCC,
	cin => \debounceit3|PB_cnt[0]~17\,
	combout => \debounceit3|PB_cnt[1]~18_combout\,
	cout => \debounceit3|PB_cnt[1]~19\);

-- Location: LCFF_X29_Y12_N3
\debounceit3|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[1]~18_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(1));

-- Location: LCCOMB_X29_Y12_N4
\debounceit3|PB_cnt[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[2]~20_combout\ = (\debounceit3|PB_cnt\(2) & (\debounceit3|PB_cnt[1]~19\ $ (GND))) # (!\debounceit3|PB_cnt\(2) & (!\debounceit3|PB_cnt[1]~19\ & VCC))
-- \debounceit3|PB_cnt[2]~21\ = CARRY((\debounceit3|PB_cnt\(2) & !\debounceit3|PB_cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit3|PB_cnt\(2),
	datad => VCC,
	cin => \debounceit3|PB_cnt[1]~19\,
	combout => \debounceit3|PB_cnt[2]~20_combout\,
	cout => \debounceit3|PB_cnt[2]~21\);

-- Location: LCFF_X29_Y12_N5
\debounceit3|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[2]~20_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(2));

-- Location: LCCOMB_X29_Y12_N8
\debounceit3|PB_cnt[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[4]~24_combout\ = (\debounceit3|PB_cnt\(4) & (\debounceit3|PB_cnt[3]~23\ $ (GND))) # (!\debounceit3|PB_cnt\(4) & (!\debounceit3|PB_cnt[3]~23\ & VCC))
-- \debounceit3|PB_cnt[4]~25\ = CARRY((\debounceit3|PB_cnt\(4) & !\debounceit3|PB_cnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit3|PB_cnt\(4),
	datad => VCC,
	cin => \debounceit3|PB_cnt[3]~23\,
	combout => \debounceit3|PB_cnt[4]~24_combout\,
	cout => \debounceit3|PB_cnt[4]~25\);

-- Location: LCFF_X29_Y12_N9
\debounceit3|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[4]~24_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(4));

-- Location: LCCOMB_X29_Y12_N10
\debounceit3|PB_cnt[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[5]~26_combout\ = (\debounceit3|PB_cnt\(5) & (!\debounceit3|PB_cnt[4]~25\)) # (!\debounceit3|PB_cnt\(5) & ((\debounceit3|PB_cnt[4]~25\) # (GND)))
-- \debounceit3|PB_cnt[5]~27\ = CARRY((!\debounceit3|PB_cnt[4]~25\) # (!\debounceit3|PB_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(5),
	datad => VCC,
	cin => \debounceit3|PB_cnt[4]~25\,
	combout => \debounceit3|PB_cnt[5]~26_combout\,
	cout => \debounceit3|PB_cnt[5]~27\);

-- Location: LCCOMB_X29_Y12_N14
\debounceit3|PB_cnt[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[7]~30_combout\ = (\debounceit3|PB_cnt\(7) & (!\debounceit3|PB_cnt[6]~29\)) # (!\debounceit3|PB_cnt\(7) & ((\debounceit3|PB_cnt[6]~29\) # (GND)))
-- \debounceit3|PB_cnt[7]~31\ = CARRY((!\debounceit3|PB_cnt[6]~29\) # (!\debounceit3|PB_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit3|PB_cnt\(7),
	datad => VCC,
	cin => \debounceit3|PB_cnt[6]~29\,
	combout => \debounceit3|PB_cnt[7]~30_combout\,
	cout => \debounceit3|PB_cnt[7]~31\);

-- Location: LCFF_X29_Y12_N15
\debounceit3|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[7]~30_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(7));

-- Location: LCCOMB_X29_Y12_N18
\debounceit3|PB_cnt[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[9]~34_combout\ = (\debounceit3|PB_cnt\(9) & (!\debounceit3|PB_cnt[8]~33\)) # (!\debounceit3|PB_cnt\(9) & ((\debounceit3|PB_cnt[8]~33\) # (GND)))
-- \debounceit3|PB_cnt[9]~35\ = CARRY((!\debounceit3|PB_cnt[8]~33\) # (!\debounceit3|PB_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit3|PB_cnt\(9),
	datad => VCC,
	cin => \debounceit3|PB_cnt[8]~33\,
	combout => \debounceit3|PB_cnt[9]~34_combout\,
	cout => \debounceit3|PB_cnt[9]~35\);

-- Location: LCFF_X29_Y12_N19
\debounceit3|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[9]~34_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(9));

-- Location: LCCOMB_X29_Y12_N20
\debounceit3|PB_cnt[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[10]~36_combout\ = (\debounceit3|PB_cnt\(10) & (\debounceit3|PB_cnt[9]~35\ $ (GND))) # (!\debounceit3|PB_cnt\(10) & (!\debounceit3|PB_cnt[9]~35\ & VCC))
-- \debounceit3|PB_cnt[10]~37\ = CARRY((\debounceit3|PB_cnt\(10) & !\debounceit3|PB_cnt[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(10),
	datad => VCC,
	cin => \debounceit3|PB_cnt[9]~35\,
	combout => \debounceit3|PB_cnt[10]~36_combout\,
	cout => \debounceit3|PB_cnt[10]~37\);

-- Location: LCCOMB_X29_Y12_N22
\debounceit3|PB_cnt[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[11]~38_combout\ = (\debounceit3|PB_cnt\(11) & (!\debounceit3|PB_cnt[10]~37\)) # (!\debounceit3|PB_cnt\(11) & ((\debounceit3|PB_cnt[10]~37\) # (GND)))
-- \debounceit3|PB_cnt[11]~39\ = CARRY((!\debounceit3|PB_cnt[10]~37\) # (!\debounceit3|PB_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit3|PB_cnt\(11),
	datad => VCC,
	cin => \debounceit3|PB_cnt[10]~37\,
	combout => \debounceit3|PB_cnt[11]~38_combout\,
	cout => \debounceit3|PB_cnt[11]~39\);

-- Location: LCFF_X29_Y12_N23
\debounceit3|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[11]~38_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(11));

-- Location: LCCOMB_X29_Y12_N24
\debounceit3|PB_cnt[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[12]~40_combout\ = (\debounceit3|PB_cnt\(12) & (\debounceit3|PB_cnt[11]~39\ $ (GND))) # (!\debounceit3|PB_cnt\(12) & (!\debounceit3|PB_cnt[11]~39\ & VCC))
-- \debounceit3|PB_cnt[12]~41\ = CARRY((\debounceit3|PB_cnt\(12) & !\debounceit3|PB_cnt[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(12),
	datad => VCC,
	cin => \debounceit3|PB_cnt[11]~39\,
	combout => \debounceit3|PB_cnt[12]~40_combout\,
	cout => \debounceit3|PB_cnt[12]~41\);

-- Location: LCCOMB_X29_Y12_N26
\debounceit3|PB_cnt[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[13]~42_combout\ = (\debounceit3|PB_cnt\(13) & (!\debounceit3|PB_cnt[12]~41\)) # (!\debounceit3|PB_cnt\(13) & ((\debounceit3|PB_cnt[12]~41\) # (GND)))
-- \debounceit3|PB_cnt[13]~43\ = CARRY((!\debounceit3|PB_cnt[12]~41\) # (!\debounceit3|PB_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit3|PB_cnt\(13),
	datad => VCC,
	cin => \debounceit3|PB_cnt[12]~41\,
	combout => \debounceit3|PB_cnt[13]~42_combout\,
	cout => \debounceit3|PB_cnt[13]~43\);

-- Location: LCFF_X29_Y12_N27
\debounceit3|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[13]~42_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(13));

-- Location: LCCOMB_X29_Y12_N28
\debounceit3|PB_cnt[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[14]~44_combout\ = (\debounceit3|PB_cnt\(14) & (\debounceit3|PB_cnt[13]~43\ $ (GND))) # (!\debounceit3|PB_cnt\(14) & (!\debounceit3|PB_cnt[13]~43\ & VCC))
-- \debounceit3|PB_cnt[14]~45\ = CARRY((\debounceit3|PB_cnt\(14) & !\debounceit3|PB_cnt[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounceit3|PB_cnt\(14),
	datad => VCC,
	cin => \debounceit3|PB_cnt[13]~43\,
	combout => \debounceit3|PB_cnt[14]~44_combout\,
	cout => \debounceit3|PB_cnt[14]~45\);

-- Location: LCFF_X29_Y12_N29
\debounceit3|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[14]~44_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(14));

-- Location: LCCOMB_X29_Y12_N30
\debounceit3|PB_cnt[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_cnt[15]~46_combout\ = \debounceit3|PB_cnt[14]~45\ $ (\debounceit3|PB_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debounceit3|PB_cnt\(15),
	cin => \debounceit3|PB_cnt[14]~45\,
	combout => \debounceit3|PB_cnt[15]~46_combout\);

-- Location: LCFF_X29_Y12_N31
\debounceit3|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[15]~46_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(15));

-- Location: LCFF_X29_Y12_N11
\debounceit3|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[5]~26_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(5));

-- Location: LCCOMB_X28_Y12_N22
\debounceit3|PB_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_state~1_combout\ = (\debounceit3|PB_cnt\(3) & (\debounceit3|PB_cnt\(4) & (\debounceit3|PB_cnt\(5) & \debounceit3|PB_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(3),
	datab => \debounceit3|PB_cnt\(4),
	datac => \debounceit3|PB_cnt\(5),
	datad => \debounceit3|PB_cnt\(2),
	combout => \debounceit3|PB_state~1_combout\);

-- Location: LCCOMB_X28_Y12_N20
\debounceit3|PB_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_state~0_combout\ = (\debounceit3|PB_cnt\(0) & (\debounceit3|PB_cnt\(1) & (\debounceit3|PB_state~regout\ $ (\debounceit3|PB_sync_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_state~regout\,
	datab => \debounceit3|PB_sync_1~regout\,
	datac => \debounceit3|PB_cnt\(0),
	datad => \debounceit3|PB_cnt\(1),
	combout => \debounceit3|PB_state~0_combout\);

-- Location: LCFF_X29_Y12_N25
\debounceit3|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[12]~40_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(12));

-- Location: LCFF_X29_Y12_N21
\debounceit3|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[10]~36_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(10));

-- Location: LCCOMB_X28_Y12_N18
\debounceit3|PB_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_state~3_combout\ = (\debounceit3|PB_cnt\(13) & (\debounceit3|PB_cnt\(12) & (\debounceit3|PB_cnt\(10) & \debounceit3|PB_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(13),
	datab => \debounceit3|PB_cnt\(12),
	datac => \debounceit3|PB_cnt\(10),
	datad => \debounceit3|PB_cnt\(11),
	combout => \debounceit3|PB_state~3_combout\);

-- Location: LCCOMB_X28_Y12_N12
\debounceit3|PB_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_state~4_combout\ = (\debounceit3|PB_state~2_combout\ & (\debounceit3|PB_state~1_combout\ & (\debounceit3|PB_state~0_combout\ & \debounceit3|PB_state~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_state~2_combout\,
	datab => \debounceit3|PB_state~1_combout\,
	datac => \debounceit3|PB_state~0_combout\,
	datad => \debounceit3|PB_state~3_combout\,
	combout => \debounceit3|PB_state~4_combout\);

-- Location: LCCOMB_X28_Y12_N0
\debounceit3|PB_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_state~5_combout\ = \debounceit3|PB_state~regout\ $ (((\debounceit3|PB_cnt\(14) & (\debounceit3|PB_cnt\(15) & \debounceit3|PB_state~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(14),
	datab => \debounceit3|PB_cnt\(15),
	datac => \debounceit3|PB_state~regout\,
	datad => \debounceit3|PB_state~4_combout\,
	combout => \debounceit3|PB_state~5_combout\);

-- Location: LCFF_X28_Y12_N1
\debounceit3|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_state~regout\);

-- Location: LCFF_X27_Y13_N1
\aProcessor|InstAddGen|PC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[0]~32_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(0));

-- Location: LCCOMB_X27_Y13_N2
\aProcessor|InstAddGen|PC[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[1]~34_combout\ = (\aProcessor|InstAddGen|PC\(1) & (!\aProcessor|InstAddGen|PC[0]~33\)) # (!\aProcessor|InstAddGen|PC\(1) & ((\aProcessor|InstAddGen|PC[0]~33\) # (GND)))
-- \aProcessor|InstAddGen|PC[1]~35\ = CARRY((!\aProcessor|InstAddGen|PC[0]~33\) # (!\aProcessor|InstAddGen|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(1),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[0]~33\,
	combout => \aProcessor|InstAddGen|PC[1]~34_combout\,
	cout => \aProcessor|InstAddGen|PC[1]~35\);

-- Location: LCFF_X27_Y13_N3
\aProcessor|InstAddGen|PC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[1]~34_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(1));

-- Location: LCFF_X28_Y13_N27
\aProcessor|InstAddGen|PC_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(1));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[3]~I\ : cycloneii_io
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
	padio => ww_switch(3),
	combout => \switch~combout\(3));

-- Location: LCCOMB_X29_Y13_N2
\aProcessor|displayAll|HexDisplay32Bits[1]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~133_combout\ = (\switch~combout\(1) & (!\switch~combout\(3) & !\switch~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~133_combout\);

-- Location: LCCOMB_X28_Y13_N26
\aProcessor|displayAll|HexDisplay32Bits[1]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~134_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~193_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[1]~133_combout\ & ((\aProcessor|InstAddGen|PC_temp\(1)) # 
-- (!\aProcessor|displayAll|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~2_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~193_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(1),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~133_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~134_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[17]~I\ : cycloneii_io
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
	padio => ww_switch(17),
	combout => \switch~combout\(17));

-- Location: LCCOMB_X27_Y13_N4
\aProcessor|InstAddGen|PC[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[2]~36_combout\ = (\aProcessor|InstAddGen|PC\(2) & (\aProcessor|InstAddGen|PC[1]~35\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(2) & (!\aProcessor|InstAddGen|PC[1]~35\ & VCC))
-- \aProcessor|InstAddGen|PC[2]~37\ = CARRY((\aProcessor|InstAddGen|PC\(2) & !\aProcessor|InstAddGen|PC[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(2),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[1]~35\,
	combout => \aProcessor|InstAddGen|PC[2]~36_combout\,
	cout => \aProcessor|InstAddGen|PC[2]~37\);

-- Location: LCFF_X27_Y13_N5
\aProcessor|InstAddGen|PC[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[2]~36_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(2));

-- Location: LCCOMB_X27_Y13_N6
\aProcessor|InstAddGen|PC[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[3]~38_combout\ = (\aProcessor|InstAddGen|PC\(3) & (!\aProcessor|InstAddGen|PC[2]~37\)) # (!\aProcessor|InstAddGen|PC\(3) & ((\aProcessor|InstAddGen|PC[2]~37\) # (GND)))
-- \aProcessor|InstAddGen|PC[3]~39\ = CARRY((!\aProcessor|InstAddGen|PC[2]~37\) # (!\aProcessor|InstAddGen|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(3),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[2]~37\,
	combout => \aProcessor|InstAddGen|PC[3]~38_combout\,
	cout => \aProcessor|InstAddGen|PC[3]~39\);

-- Location: LCFF_X27_Y13_N7
\aProcessor|InstAddGen|PC[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[3]~38_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(3));

-- Location: LCCOMB_X27_Y13_N8
\aProcessor|InstAddGen|PC[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[4]~40_combout\ = (\aProcessor|InstAddGen|PC\(4) & (\aProcessor|InstAddGen|PC[3]~39\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(4) & (!\aProcessor|InstAddGen|PC[3]~39\ & VCC))
-- \aProcessor|InstAddGen|PC[4]~41\ = CARRY((\aProcessor|InstAddGen|PC\(4) & !\aProcessor|InstAddGen|PC[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(4),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[3]~39\,
	combout => \aProcessor|InstAddGen|PC[4]~40_combout\,
	cout => \aProcessor|InstAddGen|PC[4]~41\);

-- Location: LCFF_X27_Y13_N9
\aProcessor|InstAddGen|PC[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[4]~40_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(4));

-- Location: LCCOMB_X27_Y13_N10
\aProcessor|InstAddGen|PC[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[5]~42_combout\ = (\aProcessor|InstAddGen|PC\(5) & (!\aProcessor|InstAddGen|PC[4]~41\)) # (!\aProcessor|InstAddGen|PC\(5) & ((\aProcessor|InstAddGen|PC[4]~41\) # (GND)))
-- \aProcessor|InstAddGen|PC[5]~43\ = CARRY((!\aProcessor|InstAddGen|PC[4]~41\) # (!\aProcessor|InstAddGen|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(5),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[4]~41\,
	combout => \aProcessor|InstAddGen|PC[5]~42_combout\,
	cout => \aProcessor|InstAddGen|PC[5]~43\);

-- Location: LCFF_X27_Y13_N11
\aProcessor|InstAddGen|PC[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[5]~42_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(5));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[4]~I\ : cycloneii_io
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
	padio => ww_switch(4),
	combout => \switch~combout\(4));

-- Location: LCCOMB_X28_Y13_N4
\aProcessor|displayAll|HexDisplay32Bits[1]~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~192_combout\ = (\aProcessor|displayAll|Mux28~0_combout\ & (\debounceit1|PB_state~regout\ & (\ROM1|altsyncram_component|auto_generated|q_a\(1) & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~0_combout\,
	datab => \debounceit1|PB_state~regout\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(1),
	datad => \switch~combout\(4),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~192_combout\);

-- Location: LCCOMB_X29_Y13_N12
\aProcessor|displayAll|Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~4_combout\ = (\switch~combout\(2) & ((\switch~combout\(1)) # (\switch~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux28~4_combout\);

-- Location: LCCOMB_X29_Y13_N30
\aProcessor|displayAll|Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~3_combout\ = (\switch~combout\(2) & (\switch~combout\(1))) # (!\switch~combout\(2) & ((!\switch~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux28~3_combout\);

-- Location: LCCOMB_X28_Y13_N22
\aProcessor|displayAll|HexDisplay32Bits[1]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~131_combout\ = (\aProcessor|displayAll|Mux28~4_combout\ & (\aProcessor|displayAll|Mux30~1_combout\ & ((\aProcessor|displayAll|Mux28~3_combout\)))) # (!\aProcessor|displayAll|Mux28~4_combout\ & 
-- (((\aProcessor|InstAddGen|PC\(1)) # (!\aProcessor|displayAll|Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux30~1_combout\,
	datab => \aProcessor|InstAddGen|PC\(1),
	datac => \aProcessor|displayAll|Mux28~4_combout\,
	datad => \aProcessor|displayAll|Mux28~3_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~131_combout\);

-- Location: LCCOMB_X25_Y14_N16
\aProcessor|displayAll|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~2_combout\ = (\switch~combout\(3)) # ((\switch~combout\(0) & (\switch~combout\(1) & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux28~2_combout\);

-- Location: LCCOMB_X29_Y13_N6
\aProcessor|displayAll|HexDisplay32Bits[1]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~130_combout\ = (\switch~combout\(1) & ((\switch~combout\(3)) # (\switch~combout\(2)))) # (!\switch~combout\(1) & ((!\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~130_combout\);

-- Location: LCCOMB_X28_Y13_N0
\aProcessor|displayAll|HexDisplay32Bits[1]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~132_combout\ = (\aProcessor|displayAll|Mux28~1_combout\ & ((\aProcessor|displayAll|Mux28~2_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[1]~131_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[1]~130_combout\)))) # (!\aProcessor|displayAll|Mux28~1_combout\ & (((!\aProcessor|displayAll|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~1_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~131_combout\,
	datac => \aProcessor|displayAll|Mux28~2_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~130_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~132_combout\);

-- Location: LCCOMB_X28_Y13_N16
\aProcessor|displayAll|HexDisplay32Bits[1]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~129_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[1]~192_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[1]~134_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[1]~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~129_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~134_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~192_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~132_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\);

-- Location: LCFF_X28_Y13_N3
\aProcessor|InstAddGen|PC_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(2));

-- Location: LCCOMB_X28_Y13_N2
\aProcessor|displayAll|HexDisplay32Bits[2]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~138_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~193_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[1]~133_combout\ & ((\aProcessor|InstAddGen|PC_temp\(2)) # 
-- (!\aProcessor|displayAll|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~2_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~193_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(2),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~133_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~138_combout\);

-- Location: LCCOMB_X28_Y13_N18
\aProcessor|displayAll|HexDisplay32Bits[2]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~136_combout\ = (\aProcessor|displayAll|Mux28~4_combout\ & (\aProcessor|displayAll|Mux29~0_combout\ & ((\aProcessor|displayAll|Mux28~3_combout\)))) # (!\aProcessor|displayAll|Mux28~4_combout\ & 
-- (((\aProcessor|InstAddGen|PC\(2)) # (!\aProcessor|displayAll|Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux29~0_combout\,
	datab => \aProcessor|displayAll|Mux28~4_combout\,
	datac => \aProcessor|InstAddGen|PC\(2),
	datad => \aProcessor|displayAll|Mux28~3_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~136_combout\);

-- Location: LCCOMB_X28_Y13_N20
\aProcessor|displayAll|HexDisplay32Bits[2]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~137_combout\ = (\aProcessor|displayAll|Mux28~1_combout\ & ((\aProcessor|displayAll|Mux28~2_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[2]~136_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[1]~130_combout\)))) # (!\aProcessor|displayAll|Mux28~1_combout\ & (((!\aProcessor|displayAll|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~1_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[2]~136_combout\,
	datac => \aProcessor|displayAll|Mux28~2_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~130_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~137_combout\);

-- Location: LCCOMB_X30_Y12_N20
\aProcessor|displayAll|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux30~0_combout\ = (\switch~combout\(0)) # ((\switch~combout\(1)) # ((\switch~combout\(3)) # (\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux30~0_combout\);

-- Location: LCCOMB_X28_Y13_N12
\aProcessor|displayAll|HexDisplay32Bits[1]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~129_combout\ = (\switch~combout\(4) & (\aProcessor|displayAll|Mux30~0_combout\ & \debounceit1|PB_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datac => \aProcessor|displayAll|Mux30~0_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~129_combout\);

-- Location: LCCOMB_X28_Y13_N28
\aProcessor|displayAll|HexDisplay32Bits[2]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[2]~194_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[1]~129_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[2]~138_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[2]~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[2]~194_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[2]~138_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[2]~137_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~129_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\);

-- Location: LCFF_X28_Y13_N9
\aProcessor|InstAddGen|PC_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(3));

-- Location: LCCOMB_X28_Y13_N8
\aProcessor|displayAll|HexDisplay32Bits[3]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~142_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~193_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[1]~133_combout\ & ((\aProcessor|InstAddGen|PC_temp\(3)) # 
-- (!\aProcessor|displayAll|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~2_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~193_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(3),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~133_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~142_combout\);

-- Location: LCCOMB_X28_Y13_N14
\aProcessor|displayAll|HexDisplay32Bits[3]~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~195_combout\ = (\aProcessor|displayAll|Mux28~0_combout\ & (\debounceit1|PB_state~regout\ & (\ROM1|altsyncram_component|auto_generated|q_a\(3) & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~0_combout\,
	datab => \debounceit1|PB_state~regout\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(3),
	datad => \switch~combout\(4),
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~195_combout\);

-- Location: LCCOMB_X28_Y13_N6
\aProcessor|displayAll|HexDisplay32Bits[3]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[3]~195_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[1]~129_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[3]~141_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[3]~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[3]~141_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~142_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~195_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~129_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\);

-- Location: LCCOMB_X28_Y14_N30
\aProcessor|displayAll|HexDisplay32Bits[0]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[0]~124_combout\ = (\switch~combout\(3) & ((\switch~combout\(2) & ((\switch~combout\(1)) # (\switch~combout\(0)))) # (!\switch~combout\(2) & ((!\switch~combout\(0)))))) # (!\switch~combout\(3) & 
-- ((\switch~combout\(1)) # ((\switch~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(1),
	datac => \switch~combout\(2),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[0]~124_combout\);

-- Location: LCCOMB_X27_Y14_N6
\aProcessor|displayAll|HexDisplay32Bits[0]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[0]~126_combout\ = (\switch~combout\(3) & (\ROM1|altsyncram_component|auto_generated|q_a\(0))) # (!\switch~combout\(3) & ((\ROM1|altsyncram_component|auto_generated|q_a\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|altsyncram_component|auto_generated|q_a\(0),
	datab => \ROM1|altsyncram_component|auto_generated|q_a\(17),
	datac => \switch~combout\(3),
	combout => \aProcessor|displayAll|HexDisplay32Bits[0]~126_combout\);

-- Location: LCCOMB_X27_Y14_N4
\aProcessor|displayAll|HexDisplay32Bits[0]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[0]~127_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[0]~124_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[0]~126_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[0]~124_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[0]~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[0]~125_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[0]~124_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[0]~126_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[0]~127_combout\);

-- Location: LCCOMB_X32_Y13_N0
\aProcessor|displayAll|HexDisplay32Bits[16]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[16]~122_combout\ = (!\switch~combout\(4) & \debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datac => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[16]~122_combout\);

-- Location: LCCOMB_X28_Y14_N20
\aProcessor|displayAll|HexDisplay32Bits[0]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[16]~122_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[0]~123_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[0]~127_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[0]~124_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[0]~123_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[0]~127_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[0]~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[0]~123_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[0]~127_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[16]~122_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[0]~124_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\);

-- Location: LCCOMB_X28_Y4_N0
\uHEX0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\,
	combout => \uHEX0|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y4_N2
\uHEX0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\,
	combout => \uHEX0|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y4_N12
\uHEX0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\,
	combout => \uHEX0|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y4_N10
\uHEX0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ $ ((!\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\ & \aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\,
	combout => \uHEX0|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y4_N24
\uHEX0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\ & \aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\,
	combout => \uHEX0|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y4_N26
\uHEX0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\,
	combout => \uHEX0|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y4_N8
\uHEX0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~135_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[2]~139_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~143_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[0]~128_combout\,
	combout => \uHEX0|WideOr0~0_combout\);

-- Location: LCCOMB_X32_Y13_N26
\aProcessor|displayAll|HexDisplay32Bits[6]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~155_combout\ = (\ROM1|altsyncram_component|auto_generated|q_a\(6) & \aProcessor|displayAll|Mux28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(6),
	datad => \aProcessor|displayAll|Mux28~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~155_combout\);

-- Location: LCCOMB_X27_Y13_N12
\aProcessor|InstAddGen|PC[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[6]~44_combout\ = (\aProcessor|InstAddGen|PC\(6) & (\aProcessor|InstAddGen|PC[5]~43\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(6) & (!\aProcessor|InstAddGen|PC[5]~43\ & VCC))
-- \aProcessor|InstAddGen|PC[6]~45\ = CARRY((\aProcessor|InstAddGen|PC\(6) & !\aProcessor|InstAddGen|PC[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(6),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[5]~43\,
	combout => \aProcessor|InstAddGen|PC[6]~44_combout\,
	cout => \aProcessor|InstAddGen|PC[6]~45\);

-- Location: LCFF_X27_Y13_N13
\aProcessor|InstAddGen|PC[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[6]~44_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(6));

-- Location: LCCOMB_X30_Y12_N2
\aProcessor|displayAll|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux25~0_combout\ = (!\switch~combout\(1) & (!\switch~combout\(2) & ((\switch~combout\(0)) # (\aProcessor|InstAddGen|PC\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(6),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux25~0_combout\);

-- Location: LCFF_X30_Y12_N13
\aProcessor|InstAddGen|PC_temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(6));

-- Location: LCCOMB_X30_Y12_N12
\aProcessor|displayAll|HexDisplay32Bits[6]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~156_combout\ = (!\switch~combout\(2) & ((\switch~combout\(1) & (!\switch~combout\(0))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC_temp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC_temp\(6),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~156_combout\);

-- Location: LCCOMB_X30_Y12_N4
\aProcessor|displayAll|HexDisplay32Bits[6]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~157_combout\ = (!\aProcessor|displayAll|Mux19~0_combout\ & ((\switch~combout\(3) & ((\aProcessor|displayAll|HexDisplay32Bits[6]~156_combout\))) # (!\switch~combout\(3) & 
-- (\aProcessor|displayAll|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux19~0_combout\,
	datab => \aProcessor|displayAll|Mux25~0_combout\,
	datac => \switch~combout\(3),
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~156_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~157_combout\);

-- Location: LCCOMB_X36_Y9_N12
\aProcessor|displayAll|HexDisplay32Bits[11]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~149_combout\ = (\debounceit1|PB_state~regout\ & ((!\aProcessor|displayAll|Mux30~0_combout\) # (!\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|Mux30~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~149_combout\);

-- Location: LCCOMB_X36_Y9_N24
\aProcessor|displayAll|HexDisplay32Bits[6]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ = ((!\switch~combout\(4) & ((\aProcessor|displayAll|HexDisplay32Bits[6]~155_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[6]~157_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[11]~149_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|HexDisplay32Bits[6]~155_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[6]~157_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[11]~149_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\);

-- Location: LCCOMB_X32_Y13_N24
\aProcessor|displayAll|HexDisplay32Bits[7]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~161_combout\ = (!\switch~combout\(4) & ((\aProcessor|displayAll|HexDisplay32Bits[7]~160_combout\) # ((\aProcessor|displayAll|Mux28~0_combout\ & \ROM1|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[7]~160_combout\,
	datab => \aProcessor|displayAll|Mux28~0_combout\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(7),
	datad => \switch~combout\(4),
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~161_combout\);

-- Location: LCCOMB_X36_Y9_N8
\aProcessor|displayAll|HexDisplay32Bits[7]~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\ = ((\aProcessor|displayAll|HexDisplay32Bits[7]~161_combout\) # ((\aProcessor|displayAll|Mux30~0_combout\ & \switch~combout\(4)))) # (!\debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|Mux30~0_combout\,
	datac => \switch~combout\(4),
	datad => \aProcessor|displayAll|HexDisplay32Bits[7]~161_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\);

-- Location: LCCOMB_X30_Y12_N30
\aProcessor|displayAll|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux26~0_combout\ = (!\switch~combout\(1) & (!\switch~combout\(2) & ((\switch~combout\(0)) # (\aProcessor|InstAddGen|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(5),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux26~0_combout\);

-- Location: LCCOMB_X31_Y13_N28
\aProcessor|displayAll|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux19~0_combout\ = (\switch~combout\(0) & (\switch~combout\(2) & (\switch~combout\(1) $ (!\switch~combout\(3))))) # (!\switch~combout\(0) & (!\switch~combout\(1) & (\switch~combout\(3) & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux19~0_combout\);

-- Location: LCCOMB_X30_Y12_N28
\aProcessor|displayAll|HexDisplay32Bits[5]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~153_combout\ = (!\aProcessor|displayAll|Mux19~0_combout\ & ((\switch~combout\(3) & (\aProcessor|displayAll|HexDisplay32Bits[5]~152_combout\)) # (!\switch~combout\(3) & 
-- ((\aProcessor|displayAll|Mux26~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[5]~152_combout\,
	datab => \aProcessor|displayAll|Mux26~0_combout\,
	datac => \switch~combout\(3),
	datad => \aProcessor|displayAll|Mux19~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~153_combout\);

-- Location: LCCOMB_X30_Y12_N22
\aProcessor|displayAll|HexDisplay32Bits[5]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\ = ((!\switch~combout\(4) & ((\aProcessor|displayAll|HexDisplay32Bits[5]~151_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[5]~153_combout\)))) # (!\debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[5]~151_combout\,
	datab => \switch~combout\(4),
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[5]~153_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\);

-- Location: LCCOMB_X30_Y12_N14
\aProcessor|displayAll|HexDisplay32Bits[4]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[4]~144_combout\ = (!\switch~combout\(0) & (\switch~combout\(3) & ((\ROM1|altsyncram_component|auto_generated|q_a\(4)) # (\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(3),
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(4),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[4]~144_combout\);

-- Location: LCCOMB_X30_Y12_N16
\aProcessor|displayAll|HexDisplay32Bits[4]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[4]~146_combout\ = (!\switch~combout\(2) & ((\aProcessor|displayAll|HexDisplay32Bits[4]~144_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[4]~145_combout\ & !\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[4]~145_combout\,
	datab => \switch~combout\(1),
	datac => \aProcessor|displayAll|HexDisplay32Bits[4]~144_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[4]~146_combout\);

-- Location: LCCOMB_X30_Y12_N8
\aProcessor|displayAll|HexDisplay32Bits[4]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[4]~148_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[4]~147_combout\ & ((\switch~combout\(3) & (\ROM1|altsyncram_component|auto_generated|q_a\(4))) # (!\switch~combout\(3) & 
-- ((\ROM1|altsyncram_component|auto_generated|q_a\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[4]~147_combout\,
	datab => \switch~combout\(3),
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(4),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(21),
	combout => \aProcessor|displayAll|HexDisplay32Bits[4]~148_combout\);

-- Location: LCCOMB_X36_Y9_N18
\aProcessor|displayAll|HexDisplay32Bits[4]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\ = ((!\switch~combout\(4) & ((\aProcessor|displayAll|HexDisplay32Bits[4]~146_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[4]~148_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[11]~149_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|HexDisplay32Bits[4]~146_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[4]~148_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[11]~149_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\);

-- Location: LCCOMB_X36_Y9_N26
\uHEX1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\,
	combout => \uHEX1|WideOr6~0_combout\);

-- Location: LCCOMB_X36_Y9_N0
\uHEX1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\,
	combout => \uHEX1|WideOr5~0_combout\);

-- Location: LCCOMB_X36_Y9_N22
\uHEX1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\,
	combout => \uHEX1|WideOr4~0_combout\);

-- Location: LCCOMB_X36_Y9_N16
\uHEX1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\ & \aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\,
	combout => \uHEX1|WideOr3~0_combout\);

-- Location: LCCOMB_X36_Y9_N10
\uHEX1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\ & \aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\,
	combout => \uHEX1|WideOr2~0_combout\);

-- Location: LCCOMB_X36_Y9_N20
\uHEX1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\) # 
-- (\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\,
	combout => \uHEX1|WideOr1~0_combout\);

-- Location: LCCOMB_X36_Y9_N6
\uHEX1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[6]~158_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[7]~196_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~154_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[4]~150_combout\,
	combout => \uHEX1|WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y13_N10
\aProcessor|displayAll|HexDisplay32Bits[9]~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~166_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~165_combout\ & (((\ROM1|altsyncram_component|auto_generated|q_a\(9) & \aProcessor|displayAll|Mux28~0_combout\)) # 
-- (!\aProcessor|displayAll|Mux19~0_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[9]~165_combout\ & (\ROM1|altsyncram_component|auto_generated|q_a\(9) & (\aProcessor|displayAll|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~165_combout\,
	datab => \ROM1|altsyncram_component|auto_generated|q_a\(9),
	datac => \aProcessor|displayAll|Mux28~0_combout\,
	datad => \aProcessor|displayAll|Mux19~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~166_combout\);

-- Location: LCCOMB_X36_Y10_N12
\aProcessor|displayAll|HexDisplay32Bits[9]~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ = ((\switch~combout\(4) & (\aProcessor|displayAll|Mux30~0_combout\)) # (!\switch~combout\(4) & ((\aProcessor|displayAll|HexDisplay32Bits[9]~166_combout\)))) # (!\debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux30~0_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[9]~166_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\);

-- Location: LCCOMB_X27_Y14_N14
\aProcessor|displayAll|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux15~0_combout\ = (!\switch~combout\(2) & !\switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux15~0_combout\);

-- Location: LCCOMB_X27_Y13_N14
\aProcessor|InstAddGen|PC[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[7]~46_combout\ = (\aProcessor|InstAddGen|PC\(7) & (!\aProcessor|InstAddGen|PC[6]~45\)) # (!\aProcessor|InstAddGen|PC\(7) & ((\aProcessor|InstAddGen|PC[6]~45\) # (GND)))
-- \aProcessor|InstAddGen|PC[7]~47\ = CARRY((!\aProcessor|InstAddGen|PC[6]~45\) # (!\aProcessor|InstAddGen|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(7),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[6]~45\,
	combout => \aProcessor|InstAddGen|PC[7]~46_combout\,
	cout => \aProcessor|InstAddGen|PC[7]~47\);

-- Location: LCFF_X27_Y13_N15
\aProcessor|InstAddGen|PC[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[7]~46_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(7));

-- Location: LCCOMB_X27_Y13_N16
\aProcessor|InstAddGen|PC[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[8]~48_combout\ = (\aProcessor|InstAddGen|PC\(8) & (\aProcessor|InstAddGen|PC[7]~47\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(8) & (!\aProcessor|InstAddGen|PC[7]~47\ & VCC))
-- \aProcessor|InstAddGen|PC[8]~49\ = CARRY((\aProcessor|InstAddGen|PC\(8) & !\aProcessor|InstAddGen|PC[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(8),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[7]~47\,
	combout => \aProcessor|InstAddGen|PC[8]~48_combout\,
	cout => \aProcessor|InstAddGen|PC[8]~49\);

-- Location: LCCOMB_X27_Y13_N18
\aProcessor|InstAddGen|PC[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[9]~50_combout\ = (\aProcessor|InstAddGen|PC\(9) & (!\aProcessor|InstAddGen|PC[8]~49\)) # (!\aProcessor|InstAddGen|PC\(9) & ((\aProcessor|InstAddGen|PC[8]~49\) # (GND)))
-- \aProcessor|InstAddGen|PC[9]~51\ = CARRY((!\aProcessor|InstAddGen|PC[8]~49\) # (!\aProcessor|InstAddGen|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(9),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[8]~49\,
	combout => \aProcessor|InstAddGen|PC[9]~50_combout\,
	cout => \aProcessor|InstAddGen|PC[9]~51\);

-- Location: LCFF_X27_Y13_N19
\aProcessor|InstAddGen|PC[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[9]~50_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(9));

-- Location: LCCOMB_X27_Y13_N20
\aProcessor|InstAddGen|PC[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[10]~52_combout\ = (\aProcessor|InstAddGen|PC\(10) & (\aProcessor|InstAddGen|PC[9]~51\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(10) & (!\aProcessor|InstAddGen|PC[9]~51\ & VCC))
-- \aProcessor|InstAddGen|PC[10]~53\ = CARRY((\aProcessor|InstAddGen|PC\(10) & !\aProcessor|InstAddGen|PC[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(10),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[9]~51\,
	combout => \aProcessor|InstAddGen|PC[10]~52_combout\,
	cout => \aProcessor|InstAddGen|PC[10]~53\);

-- Location: LCFF_X27_Y13_N21
\aProcessor|InstAddGen|PC[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[10]~52_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(10));

-- Location: LCFF_X27_Y14_N11
\aProcessor|InstAddGen|PC_temp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(10));

-- Location: LCCOMB_X27_Y14_N12
\aProcessor|displayAll|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux21~0_combout\ = (!\switch~combout\(2) & (!\switch~combout\(1) & ((\switch~combout\(0)) # (\aProcessor|InstAddGen|PC\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(0),
	datac => \aProcessor|InstAddGen|PC\(10),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux21~0_combout\);

-- Location: LCCOMB_X27_Y14_N10
\aProcessor|displayAll|HexDisplay32Bits[10]~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~167_combout\ = (\switch~combout\(3) & (\aProcessor|displayAll|Mux15~0_combout\ & (\aProcessor|InstAddGen|PC_temp\(10)))) # (!\switch~combout\(3) & (((\aProcessor|displayAll|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|displayAll|Mux15~0_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(10),
	datad => \aProcessor|displayAll|Mux21~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~167_combout\);

-- Location: LCCOMB_X29_Y13_N28
\aProcessor|displayAll|HexDisplay32Bits[10]~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~168_combout\ = (\aProcessor|displayAll|Mux28~0_combout\ & ((\ROM1|altsyncram_component|auto_generated|q_a\(10)) # ((\aProcessor|displayAll|HexDisplay32Bits[10]~167_combout\ & 
-- !\aProcessor|displayAll|Mux19~0_combout\)))) # (!\aProcessor|displayAll|Mux28~0_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[10]~167_combout\ & !\aProcessor|displayAll|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~0_combout\,
	datab => \ROM1|altsyncram_component|auto_generated|q_a\(10),
	datac => \aProcessor|displayAll|HexDisplay32Bits[10]~167_combout\,
	datad => \aProcessor|displayAll|Mux19~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~168_combout\);

-- Location: LCCOMB_X36_Y10_N26
\aProcessor|displayAll|HexDisplay32Bits[10]~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\ = ((\switch~combout\(4) & (\aProcessor|displayAll|Mux30~0_combout\)) # (!\switch~combout\(4) & ((\aProcessor|displayAll|HexDisplay32Bits[10]~168_combout\)))) # (!\debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux30~0_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[10]~168_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\);

-- Location: LCCOMB_X29_Y13_N22
\aProcessor|displayAll|HexDisplay32Bits[11]~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~170_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[11]~169_combout\ & (((\ROM1|altsyncram_component|auto_generated|q_a\(11) & \aProcessor|displayAll|Mux28~0_combout\)) # 
-- (!\aProcessor|displayAll|Mux19~0_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[11]~169_combout\ & (\ROM1|altsyncram_component|auto_generated|q_a\(11) & (\aProcessor|displayAll|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[11]~169_combout\,
	datab => \ROM1|altsyncram_component|auto_generated|q_a\(11),
	datac => \aProcessor|displayAll|Mux28~0_combout\,
	datad => \aProcessor|displayAll|Mux19~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~170_combout\);

-- Location: LCCOMB_X36_Y10_N24
\aProcessor|displayAll|HexDisplay32Bits[11]~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\ = ((\switch~combout\(4) & (\aProcessor|displayAll|Mux30~0_combout\)) # (!\switch~combout\(4) & ((\aProcessor|displayAll|HexDisplay32Bits[11]~170_combout\)))) # (!\debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux30~0_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~170_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\);

-- Location: LCFF_X27_Y13_N17
\aProcessor|InstAddGen|PC[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[8]~48_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(8));

-- Location: LCFF_X27_Y14_N17
\aProcessor|InstAddGen|PC_temp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(8));

-- Location: LCCOMB_X28_Y14_N2
\aProcessor|displayAll|HexDisplay32Bits[8]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~162_combout\ = (\switch~combout\(3) & (((\aProcessor|InstAddGen|PC_temp\(8) & \aProcessor|displayAll|Mux15~0_combout\)))) # (!\switch~combout\(3) & (\aProcessor|displayAll|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux23~0_combout\,
	datab => \aProcessor|InstAddGen|PC_temp\(8),
	datac => \switch~combout\(3),
	datad => \aProcessor|displayAll|Mux15~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~162_combout\);

-- Location: LCCOMB_X29_Y13_N20
\aProcessor|displayAll|HexDisplay32Bits[8]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~163_combout\ = (\aProcessor|displayAll|Mux28~0_combout\ & ((\ROM1|altsyncram_component|auto_generated|q_a\(8)) # ((\aProcessor|displayAll|HexDisplay32Bits[8]~162_combout\ & 
-- !\aProcessor|displayAll|Mux19~0_combout\)))) # (!\aProcessor|displayAll|Mux28~0_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~162_combout\ & ((!\aProcessor|displayAll|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~0_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[8]~162_combout\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(8),
	datad => \aProcessor|displayAll|Mux19~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~163_combout\);

-- Location: LCCOMB_X36_Y10_N0
\aProcessor|displayAll|HexDisplay32Bits[8]~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\ = ((!\switch~combout\(4) & \aProcessor|displayAll|HexDisplay32Bits[8]~163_combout\)) # (!\debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~163_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\);

-- Location: LCCOMB_X36_Y10_N14
\uHEX2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\,
	combout => \uHEX2|WideOr6~0_combout\);

-- Location: LCCOMB_X36_Y10_N20
\uHEX2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\,
	combout => \uHEX2|WideOr5~0_combout\);

-- Location: LCCOMB_X36_Y10_N22
\uHEX2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\,
	combout => \uHEX2|WideOr4~0_combout\);

-- Location: LCCOMB_X36_Y10_N16
\uHEX2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ $ ((!\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\ & \aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\,
	combout => \uHEX2|WideOr3~0_combout\);

-- Location: LCCOMB_X36_Y10_N2
\uHEX2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\ & \aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\,
	combout => \uHEX2|WideOr2~0_combout\);

-- Location: LCCOMB_X36_Y10_N4
\uHEX2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\,
	combout => \uHEX2|WideOr1~0_combout\);

-- Location: LCCOMB_X36_Y10_N10
\uHEX2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~197_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~199_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~164_combout\,
	combout => \uHEX2|WideOr0~0_combout\);

-- Location: LCCOMB_X32_Y13_N10
\aProcessor|displayAll|HexDisplay32Bits[14]~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~179_combout\ = (!\switch~combout\(4) & ((\aProcessor|displayAll|HexDisplay32Bits[14]~178_combout\) # ((\aProcessor|displayAll|Mux28~0_combout\ & \ROM1|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[14]~178_combout\,
	datab => \aProcessor|displayAll|Mux28~0_combout\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(14),
	datad => \switch~combout\(4),
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~179_combout\);

-- Location: LCCOMB_X36_Y9_N28
\aProcessor|displayAll|HexDisplay32Bits[14]~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ = (\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[14]~179_combout\) # ((\switch~combout\(4) & \aProcessor|displayAll|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|HexDisplay32Bits[14]~179_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|Mux30~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\);

-- Location: LCCOMB_X32_Y13_N12
\aProcessor|displayAll|HexDisplay32Bits[15]~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[15]~182_combout\ = (!\switch~combout\(4) & ((\aProcessor|displayAll|HexDisplay32Bits[15]~181_combout\) # ((\aProcessor|displayAll|Mux28~0_combout\ & \ROM1|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[15]~181_combout\,
	datab => \aProcessor|displayAll|Mux28~0_combout\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(15),
	datad => \switch~combout\(4),
	combout => \aProcessor|displayAll|HexDisplay32Bits[15]~182_combout\);

-- Location: LCCOMB_X36_Y9_N2
\aProcessor|displayAll|HexDisplay32Bits[15]~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\ = (\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[15]~182_combout\) # ((\aProcessor|displayAll|Mux30~0_combout\ & \switch~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|Mux30~0_combout\,
	datac => \switch~combout\(4),
	datad => \aProcessor|displayAll|HexDisplay32Bits[15]~182_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\);

-- Location: LCCOMB_X32_Y13_N4
\aProcessor|displayAll|HexDisplay32Bits[13]~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[16]~122_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~175_combout\) # ((\aProcessor|displayAll|Mux28~0_combout\ & 
-- \ROM1|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[13]~175_combout\,
	datab => \aProcessor|displayAll|Mux28~0_combout\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(13),
	datad => \aProcessor|displayAll|HexDisplay32Bits[16]~122_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\);

-- Location: LCCOMB_X27_Y13_N22
\aProcessor|InstAddGen|PC[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[11]~54_combout\ = (\aProcessor|InstAddGen|PC\(11) & (!\aProcessor|InstAddGen|PC[10]~53\)) # (!\aProcessor|InstAddGen|PC\(11) & ((\aProcessor|InstAddGen|PC[10]~53\) # (GND)))
-- \aProcessor|InstAddGen|PC[11]~55\ = CARRY((!\aProcessor|InstAddGen|PC[10]~53\) # (!\aProcessor|InstAddGen|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(11),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[10]~53\,
	combout => \aProcessor|InstAddGen|PC[11]~54_combout\,
	cout => \aProcessor|InstAddGen|PC[11]~55\);

-- Location: LCFF_X27_Y13_N23
\aProcessor|InstAddGen|PC[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[11]~54_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(11));

-- Location: LCCOMB_X27_Y13_N24
\aProcessor|InstAddGen|PC[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[12]~56_combout\ = (\aProcessor|InstAddGen|PC\(12) & (\aProcessor|InstAddGen|PC[11]~55\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(12) & (!\aProcessor|InstAddGen|PC[11]~55\ & VCC))
-- \aProcessor|InstAddGen|PC[12]~57\ = CARRY((\aProcessor|InstAddGen|PC\(12) & !\aProcessor|InstAddGen|PC[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(12),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[11]~55\,
	combout => \aProcessor|InstAddGen|PC[12]~56_combout\,
	cout => \aProcessor|InstAddGen|PC[12]~57\);

-- Location: LCFF_X27_Y13_N25
\aProcessor|InstAddGen|PC[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[12]~56_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(12));

-- Location: LCCOMB_X31_Y13_N22
\aProcessor|displayAll|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux19~1_combout\ = (!\switch~combout\(1) & (!\switch~combout\(2) & ((\switch~combout\(0)) # (\aProcessor|InstAddGen|PC\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(12),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux19~1_combout\);

-- Location: LCFF_X31_Y13_N25
\aProcessor|InstAddGen|PC_temp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(12));

-- Location: LCCOMB_X31_Y13_N24
\aProcessor|displayAll|HexDisplay32Bits[12]~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~171_combout\ = (!\switch~combout\(2) & ((\switch~combout\(1) & (!\switch~combout\(0))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC_temp\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC_temp\(12),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~171_combout\);

-- Location: LCCOMB_X31_Y13_N16
\aProcessor|displayAll|HexDisplay32Bits[12]~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~172_combout\ = (!\aProcessor|displayAll|Mux19~0_combout\ & ((\switch~combout\(3) & ((\aProcessor|displayAll|HexDisplay32Bits[12]~171_combout\))) # (!\switch~combout\(3) & 
-- (\aProcessor|displayAll|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|displayAll|Mux19~1_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~171_combout\,
	datad => \aProcessor|displayAll|Mux19~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~172_combout\);

-- Location: LCCOMB_X32_Y13_N2
\aProcessor|displayAll|HexDisplay32Bits[12]~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~173_combout\ = (!\switch~combout\(4) & ((\aProcessor|displayAll|HexDisplay32Bits[12]~172_combout\) # ((\aProcessor|displayAll|Mux28~0_combout\ & \ROM1|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux28~0_combout\,
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(12),
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~172_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~173_combout\);

-- Location: LCCOMB_X36_Y9_N14
\aProcessor|displayAll|HexDisplay32Bits[12]~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\ = (\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~173_combout\) # ((\aProcessor|displayAll|Mux30~0_combout\ & \switch~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|Mux30~0_combout\,
	datac => \switch~combout\(4),
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~173_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\);

-- Location: LCCOMB_X64_Y9_N12
\uHEX3|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\,
	combout => \uHEX3|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y9_N22
\uHEX3|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\,
	combout => \uHEX3|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y9_N24
\uHEX3|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\,
	combout => \uHEX3|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y9_N26
\uHEX3|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\ & \aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\,
	combout => \uHEX3|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y9_N4
\uHEX3|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\ & \aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\,
	combout => \uHEX3|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y9_N14
\uHEX3|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\) # 
-- (\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\,
	combout => \uHEX3|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y9_N0
\uHEX3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[14]~201_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~202_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~176_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~200_combout\,
	combout => \uHEX3|WideOr0~0_combout\);

-- Location: LCCOMB_X27_Y14_N16
\aProcessor|displayAll|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux5~4_combout\ = (\switch~combout\(3) & \switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux5~4_combout\);

-- Location: LCCOMB_X27_Y14_N26
\aProcessor|displayAll|HexDisplay32Bits[17]~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\ = (!\switch~combout\(4) & (\debounceit1|PB_state~regout\ & ((!\aProcessor|displayAll|Mux5~4_combout\) # (!\aProcessor|displayAll|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux15~0_combout\,
	datac => \aProcessor|displayAll|Mux5~4_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\);

-- Location: LCCOMB_X27_Y13_N26
\aProcessor|InstAddGen|PC[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[13]~58_combout\ = (\aProcessor|InstAddGen|PC\(13) & (!\aProcessor|InstAddGen|PC[12]~57\)) # (!\aProcessor|InstAddGen|PC\(13) & ((\aProcessor|InstAddGen|PC[12]~57\) # (GND)))
-- \aProcessor|InstAddGen|PC[13]~59\ = CARRY((!\aProcessor|InstAddGen|PC[12]~57\) # (!\aProcessor|InstAddGen|PC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(13),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[12]~57\,
	combout => \aProcessor|InstAddGen|PC[13]~58_combout\,
	cout => \aProcessor|InstAddGen|PC[13]~59\);

-- Location: LCFF_X27_Y13_N27
\aProcessor|InstAddGen|PC[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[13]~58_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(13));

-- Location: LCCOMB_X27_Y13_N28
\aProcessor|InstAddGen|PC[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[14]~60_combout\ = (\aProcessor|InstAddGen|PC\(14) & (\aProcessor|InstAddGen|PC[13]~59\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(14) & (!\aProcessor|InstAddGen|PC[13]~59\ & VCC))
-- \aProcessor|InstAddGen|PC[14]~61\ = CARRY((\aProcessor|InstAddGen|PC\(14) & !\aProcessor|InstAddGen|PC[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(14),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[13]~59\,
	combout => \aProcessor|InstAddGen|PC[14]~60_combout\,
	cout => \aProcessor|InstAddGen|PC[14]~61\);

-- Location: LCFF_X27_Y13_N29
\aProcessor|InstAddGen|PC[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[14]~60_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(14));

-- Location: LCCOMB_X27_Y13_N30
\aProcessor|InstAddGen|PC[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[15]~62_combout\ = (\aProcessor|InstAddGen|PC\(15) & (!\aProcessor|InstAddGen|PC[14]~61\)) # (!\aProcessor|InstAddGen|PC\(15) & ((\aProcessor|InstAddGen|PC[14]~61\) # (GND)))
-- \aProcessor|InstAddGen|PC[15]~63\ = CARRY((!\aProcessor|InstAddGen|PC[14]~61\) # (!\aProcessor|InstAddGen|PC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(15),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[14]~61\,
	combout => \aProcessor|InstAddGen|PC[15]~62_combout\,
	cout => \aProcessor|InstAddGen|PC[15]~63\);

-- Location: LCFF_X27_Y13_N31
\aProcessor|InstAddGen|PC[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[15]~62_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(15));

-- Location: LCCOMB_X27_Y12_N0
\aProcessor|InstAddGen|PC[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[16]~64_combout\ = (\aProcessor|InstAddGen|PC\(16) & (\aProcessor|InstAddGen|PC[15]~63\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(16) & (!\aProcessor|InstAddGen|PC[15]~63\ & VCC))
-- \aProcessor|InstAddGen|PC[16]~65\ = CARRY((\aProcessor|InstAddGen|PC\(16) & !\aProcessor|InstAddGen|PC[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(16),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[15]~63\,
	combout => \aProcessor|InstAddGen|PC[16]~64_combout\,
	cout => \aProcessor|InstAddGen|PC[16]~65\);

-- Location: LCFF_X27_Y12_N1
\aProcessor|InstAddGen|PC[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[16]~64_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(16));

-- Location: LCCOMB_X27_Y12_N2
\aProcessor|InstAddGen|PC[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[17]~66_combout\ = (\aProcessor|InstAddGen|PC\(17) & (!\aProcessor|InstAddGen|PC[16]~65\)) # (!\aProcessor|InstAddGen|PC\(17) & ((\aProcessor|InstAddGen|PC[16]~65\) # (GND)))
-- \aProcessor|InstAddGen|PC[17]~67\ = CARRY((!\aProcessor|InstAddGen|PC[16]~65\) # (!\aProcessor|InstAddGen|PC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(17),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[16]~65\,
	combout => \aProcessor|InstAddGen|PC[17]~66_combout\,
	cout => \aProcessor|InstAddGen|PC[17]~67\);

-- Location: LCFF_X27_Y12_N3
\aProcessor|InstAddGen|PC[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[17]~66_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(17));

-- Location: LCFF_X24_Y14_N5
\aProcessor|InstAddGen|PC_temp[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(17));

-- Location: LCCOMB_X27_Y14_N28
\aProcessor|displayAll|HexDisplay32Bits[17]~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\ = (!\switch~combout\(4) & (\aProcessor|displayAll|Mux15~0_combout\ & (\aProcessor|displayAll|Mux5~4_combout\ & \debounceit1|PB_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux15~0_combout\,
	datac => \aProcessor|displayAll|Mux5~4_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\);

-- Location: LCCOMB_X24_Y14_N4
\aProcessor|displayAll|HexDisplay32Bits[17]~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ = (\aProcessor|displayAll|Mux14~6_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\) # ((\aProcessor|InstAddGen|PC_temp\(17) & 
-- \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\)))) # (!\aProcessor|displayAll|Mux14~6_combout\ & (((\aProcessor|InstAddGen|PC_temp\(17) & \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux14~6_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(17),
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\);

-- Location: LCCOMB_X27_Y12_N4
\aProcessor|InstAddGen|PC[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[18]~68_combout\ = (\aProcessor|InstAddGen|PC\(18) & (\aProcessor|InstAddGen|PC[17]~67\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(18) & (!\aProcessor|InstAddGen|PC[17]~67\ & VCC))
-- \aProcessor|InstAddGen|PC[18]~69\ = CARRY((\aProcessor|InstAddGen|PC\(18) & !\aProcessor|InstAddGen|PC[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(18),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[17]~67\,
	combout => \aProcessor|InstAddGen|PC[18]~68_combout\,
	cout => \aProcessor|InstAddGen|PC[18]~69\);

-- Location: LCFF_X27_Y12_N5
\aProcessor|InstAddGen|PC[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[18]~68_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(18));

-- Location: LCCOMB_X27_Y12_N6
\aProcessor|InstAddGen|PC[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[19]~70_combout\ = (\aProcessor|InstAddGen|PC\(19) & (!\aProcessor|InstAddGen|PC[18]~69\)) # (!\aProcessor|InstAddGen|PC\(19) & ((\aProcessor|InstAddGen|PC[18]~69\) # (GND)))
-- \aProcessor|InstAddGen|PC[19]~71\ = CARRY((!\aProcessor|InstAddGen|PC[18]~69\) # (!\aProcessor|InstAddGen|PC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(19),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[18]~69\,
	combout => \aProcessor|InstAddGen|PC[19]~70_combout\,
	cout => \aProcessor|InstAddGen|PC[19]~71\);

-- Location: LCFF_X27_Y12_N7
\aProcessor|InstAddGen|PC[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[19]~70_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(19));

-- Location: LCFF_X24_Y14_N19
\aProcessor|InstAddGen|PC_temp[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(19));

-- Location: LCCOMB_X24_Y14_N18
\aProcessor|displayAll|HexDisplay32Bits[19]~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\ = (\aProcessor|displayAll|Mux12~6_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\) # ((\aProcessor|InstAddGen|PC_temp\(19) & 
-- \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\)))) # (!\aProcessor|displayAll|Mux12~6_combout\ & (((\aProcessor|InstAddGen|PC_temp\(19) & \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux12~6_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(19),
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\);

-- Location: LCFF_X24_Y14_N1
\aProcessor|InstAddGen|PC_temp[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(18));

-- Location: LCCOMB_X24_Y14_N0
\aProcessor|displayAll|HexDisplay32Bits[18]~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\ = (\aProcessor|displayAll|Mux13~6_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\) # ((\aProcessor|InstAddGen|PC_temp\(18) & 
-- \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\)))) # (!\aProcessor|displayAll|Mux13~6_combout\ & (((\aProcessor|InstAddGen|PC_temp\(18) & \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux13~6_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(18),
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\);

-- Location: LCFF_X27_Y14_N19
\aProcessor|InstAddGen|PC_temp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(16));

-- Location: LCCOMB_X27_Y14_N18
\aProcessor|displayAll|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux15~2_combout\ = (\switch~combout\(3) & ((\switch~combout\(0) & ((\aProcessor|InstAddGen|PC_temp\(16)))) # (!\switch~combout\(0) & (\ROM1|altsyncram_component|auto_generated|q_a\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \ROM1|altsyncram_component|auto_generated|q_a\(16),
	datac => \aProcessor|InstAddGen|PC_temp\(16),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux15~2_combout\);

-- Location: LCCOMB_X27_Y14_N8
\aProcessor|displayAll|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux15~3_combout\ = (\aProcessor|displayAll|Mux15~2_combout\) # ((!\switch~combout\(3) & (!\switch~combout\(0) & \aProcessor|InstAddGen|PC\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(0),
	datac => \aProcessor|InstAddGen|PC\(16),
	datad => \aProcessor|displayAll|Mux15~2_combout\,
	combout => \aProcessor|displayAll|Mux15~3_combout\);

-- Location: LCCOMB_X28_Y14_N28
\aProcessor|displayAll|HexDisplay32Bits[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits\(16) = (\aProcessor|displayAll|HexDisplay32Bits[16]~122_combout\ & ((\aProcessor|displayAll|Mux15~1_combout\) # ((\aProcessor|displayAll|Mux15~3_combout\ & \aProcessor|displayAll|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux15~1_combout\,
	datab => \aProcessor|displayAll|Mux15~3_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[16]~122_combout\,
	datad => \aProcessor|displayAll|Mux15~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits\(16));

-- Location: LCCOMB_X1_Y14_N28
\uHEX4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\ & (\aProcessor|displayAll|HexDisplay32Bits\(16) & (\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits\(16),
	combout => \uHEX4|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y14_N22
\uHEX4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits\(16) & (\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits\(16) & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits\(16),
	combout => \uHEX4|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y14_N16
\uHEX4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits\(16))))) # (!\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits\(16),
	combout => \uHEX4|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y14_N30
\uHEX4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits\(16) & (\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits\(16) & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ & 
-- (!\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\ & \aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits\(16),
	combout => \uHEX4|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y14_N12
\uHEX4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits\(16))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits\(16),
	combout => \uHEX4|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y14_N14
\uHEX4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits\(16)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ & (\aProcessor|displayAll|HexDisplay32Bits\(16) & (\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits\(16),
	combout => \uHEX4|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y14_N0
\uHEX4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits\(16) & ((\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits\(16) & ((\aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[19]~185_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[18]~184_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits\(16),
	combout => \uHEX4|WideOr0~0_combout\);

-- Location: LCCOMB_X27_Y12_N8
\aProcessor|InstAddGen|PC[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[20]~72_combout\ = (\aProcessor|InstAddGen|PC\(20) & (\aProcessor|InstAddGen|PC[19]~71\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(20) & (!\aProcessor|InstAddGen|PC[19]~71\ & VCC))
-- \aProcessor|InstAddGen|PC[20]~73\ = CARRY((\aProcessor|InstAddGen|PC\(20) & !\aProcessor|InstAddGen|PC[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(20),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[19]~71\,
	combout => \aProcessor|InstAddGen|PC[20]~72_combout\,
	cout => \aProcessor|InstAddGen|PC[20]~73\);

-- Location: LCFF_X27_Y12_N9
\aProcessor|InstAddGen|PC[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[20]~72_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(20));

-- Location: LCFF_X24_Y14_N15
\aProcessor|InstAddGen|PC_temp[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(20));

-- Location: LCCOMB_X24_Y14_N14
\aProcessor|displayAll|HexDisplay32Bits[20]~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ = (\aProcessor|displayAll|Mux11~6_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\) # ((\aProcessor|InstAddGen|PC_temp\(20) & 
-- \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\)))) # (!\aProcessor|displayAll|Mux11~6_combout\ & (((\aProcessor|InstAddGen|PC_temp\(20) & \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux11~6_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(20),
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\);

-- Location: LCCOMB_X27_Y12_N10
\aProcessor|InstAddGen|PC[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[21]~74_combout\ = (\aProcessor|InstAddGen|PC\(21) & (!\aProcessor|InstAddGen|PC[20]~73\)) # (!\aProcessor|InstAddGen|PC\(21) & ((\aProcessor|InstAddGen|PC[20]~73\) # (GND)))
-- \aProcessor|InstAddGen|PC[21]~75\ = CARRY((!\aProcessor|InstAddGen|PC[20]~73\) # (!\aProcessor|InstAddGen|PC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(21),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[20]~73\,
	combout => \aProcessor|InstAddGen|PC[21]~74_combout\,
	cout => \aProcessor|InstAddGen|PC[21]~75\);

-- Location: LCCOMB_X27_Y12_N12
\aProcessor|InstAddGen|PC[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[22]~76_combout\ = (\aProcessor|InstAddGen|PC\(22) & (\aProcessor|InstAddGen|PC[21]~75\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(22) & (!\aProcessor|InstAddGen|PC[21]~75\ & VCC))
-- \aProcessor|InstAddGen|PC[22]~77\ = CARRY((\aProcessor|InstAddGen|PC\(22) & !\aProcessor|InstAddGen|PC[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(22),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[21]~75\,
	combout => \aProcessor|InstAddGen|PC[22]~76_combout\,
	cout => \aProcessor|InstAddGen|PC[22]~77\);

-- Location: LCFF_X27_Y12_N13
\aProcessor|InstAddGen|PC[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[22]~76_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(22));

-- Location: LCCOMB_X24_Y13_N22
\aProcessor|displayAll|HexDisplay32Bits[22]~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~219_combout\ = (\switch~combout\(3) & (((\ROM1|altsyncram_component|auto_generated|q_a\(22)) # (\switch~combout\(0))))) # (!\switch~combout\(3) & (\aProcessor|InstAddGen|PC\(22) & ((!\switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|InstAddGen|PC\(22),
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(22),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~219_combout\);

-- Location: LCFF_X24_Y13_N27
\aProcessor|InstAddGen|PC_temp[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(22));

-- Location: LCCOMB_X24_Y13_N26
\aProcessor|displayAll|HexDisplay32Bits[22]~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~220_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~219_combout\ & (!\switch~combout\(2) & ((\aProcessor|InstAddGen|PC_temp\(22)) # (!\switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|displayAll|HexDisplay32Bits[22]~219_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(22),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~220_combout\);

-- Location: LCCOMB_X24_Y13_N30
\aProcessor|displayAll|HexDisplay32Bits[22]~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ = (\debounceit1|PB_state~regout\ & (\aProcessor|displayAll|HexDisplay32Bits[22]~220_combout\ & (!\switch~combout\(4) & !\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[22]~220_combout\,
	datac => \switch~combout\(4),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\);

-- Location: LCCOMB_X27_Y12_N14
\aProcessor|InstAddGen|PC[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[23]~78_combout\ = (\aProcessor|InstAddGen|PC\(23) & (!\aProcessor|InstAddGen|PC[22]~77\)) # (!\aProcessor|InstAddGen|PC\(23) & ((\aProcessor|InstAddGen|PC[22]~77\) # (GND)))
-- \aProcessor|InstAddGen|PC[23]~79\ = CARRY((!\aProcessor|InstAddGen|PC[22]~77\) # (!\aProcessor|InstAddGen|PC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(23),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[22]~77\,
	combout => \aProcessor|InstAddGen|PC[23]~78_combout\,
	cout => \aProcessor|InstAddGen|PC[23]~79\);

-- Location: LCFF_X27_Y12_N15
\aProcessor|InstAddGen|PC[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[23]~78_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(23));

-- Location: LCCOMB_X24_Y13_N0
\aProcessor|displayAll|HexDisplay32Bits[23]~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~217_combout\ = (\switch~combout\(3) & (((\ROM1|altsyncram_component|auto_generated|q_a\(23)) # (\switch~combout\(0))))) # (!\switch~combout\(3) & (\aProcessor|InstAddGen|PC\(23) & ((!\switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|InstAddGen|PC\(23),
	datac => \ROM1|altsyncram_component|auto_generated|q_a\(23),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~217_combout\);

-- Location: LCFF_X24_Y13_N29
\aProcessor|InstAddGen|PC_temp[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(23));

-- Location: LCCOMB_X24_Y13_N28
\aProcessor|displayAll|HexDisplay32Bits[23]~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~218_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~217_combout\ & (!\switch~combout\(2) & ((\aProcessor|InstAddGen|PC_temp\(23)) # (!\switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~217_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(23),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~218_combout\);

-- Location: LCCOMB_X24_Y13_N24
\aProcessor|displayAll|HexDisplay32Bits[23]~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\ = (\debounceit1|PB_state~regout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~218_combout\ & (!\switch~combout\(4) & !\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~218_combout\,
	datac => \switch~combout\(4),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\);

-- Location: LCFF_X27_Y12_N11
\aProcessor|InstAddGen|PC[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[21]~74_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(21));

-- Location: LCCOMB_X30_Y12_N18
\aProcessor|displayAll|HexDisplay32Bits[21]~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[21]~221_combout\ = (\switch~combout\(0) & (((\switch~combout\(3))))) # (!\switch~combout\(0) & ((\switch~combout\(3) & ((\ROM1|altsyncram_component|auto_generated|q_a\(21)))) # (!\switch~combout\(3) & 
-- (\aProcessor|InstAddGen|PC\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|InstAddGen|PC\(21),
	datac => \switch~combout\(3),
	datad => \ROM1|altsyncram_component|auto_generated|q_a\(21),
	combout => \aProcessor|displayAll|HexDisplay32Bits[21]~221_combout\);

-- Location: LCFF_X30_Y12_N27
\aProcessor|InstAddGen|PC_temp[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(21));

-- Location: LCCOMB_X30_Y12_N26
\aProcessor|displayAll|HexDisplay32Bits[21]~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[21]~222_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[21]~221_combout\ & (!\switch~combout\(2) & ((\aProcessor|InstAddGen|PC_temp\(21)) # (!\switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|displayAll|HexDisplay32Bits[21]~221_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(21),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[21]~222_combout\);

-- Location: LCCOMB_X30_Y12_N0
\aProcessor|displayAll|HexDisplay32Bits[21]~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\ = (\debounceit1|PB_state~regout\ & (\aProcessor|displayAll|HexDisplay32Bits[21]~222_combout\ & (!\switch~combout\(4) & !\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[21]~222_combout\,
	datac => \switch~combout\(4),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\);

-- Location: LCCOMB_X24_Y13_N6
\uHEX5|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\,
	combout => \uHEX5|WideOr6~0_combout\);

-- Location: LCCOMB_X24_Y13_N16
\uHEX5|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\,
	combout => \uHEX5|WideOr5~0_combout\);

-- Location: LCCOMB_X24_Y13_N10
\uHEX5|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\,
	combout => \uHEX5|WideOr4~0_combout\);

-- Location: LCCOMB_X24_Y13_N4
\uHEX5|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\ & \aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\,
	combout => \uHEX5|WideOr3~0_combout\);

-- Location: LCCOMB_X24_Y13_N2
\uHEX5|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\,
	combout => \uHEX5|WideOr2~0_combout\);

-- Location: LCCOMB_X24_Y13_N12
\uHEX5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\ $ (((\aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\,
	combout => \uHEX5|WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y13_N18
\uHEX5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[20]~186_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[22]~206_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[23]~207_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~205_combout\,
	combout => \uHEX5|WideOr0~0_combout\);

-- Location: LCCOMB_X27_Y12_N16
\aProcessor|InstAddGen|PC[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[24]~80_combout\ = (\aProcessor|InstAddGen|PC\(24) & (\aProcessor|InstAddGen|PC[23]~79\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(24) & (!\aProcessor|InstAddGen|PC[23]~79\ & VCC))
-- \aProcessor|InstAddGen|PC[24]~81\ = CARRY((\aProcessor|InstAddGen|PC\(24) & !\aProcessor|InstAddGen|PC[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(24),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[23]~79\,
	combout => \aProcessor|InstAddGen|PC[24]~80_combout\,
	cout => \aProcessor|InstAddGen|PC[24]~81\);

-- Location: LCCOMB_X27_Y12_N18
\aProcessor|InstAddGen|PC[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[25]~82_combout\ = (\aProcessor|InstAddGen|PC\(25) & (!\aProcessor|InstAddGen|PC[24]~81\)) # (!\aProcessor|InstAddGen|PC\(25) & ((\aProcessor|InstAddGen|PC[24]~81\) # (GND)))
-- \aProcessor|InstAddGen|PC[25]~83\ = CARRY((!\aProcessor|InstAddGen|PC[24]~81\) # (!\aProcessor|InstAddGen|PC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(25),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[24]~81\,
	combout => \aProcessor|InstAddGen|PC[25]~82_combout\,
	cout => \aProcessor|InstAddGen|PC[25]~83\);

-- Location: LCFF_X27_Y12_N19
\aProcessor|InstAddGen|PC[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[25]~82_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(25));

-- Location: LCFF_X24_Y14_N17
\aProcessor|InstAddGen|PC_temp[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(25));

-- Location: LCCOMB_X24_Y14_N16
\aProcessor|displayAll|HexDisplay32Bits[25]~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ = (\aProcessor|displayAll|Mux6~6_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\) # ((\aProcessor|InstAddGen|PC_temp\(25) & 
-- \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\)))) # (!\aProcessor|displayAll|Mux6~6_combout\ & (((\aProcessor|InstAddGen|PC_temp\(25) & \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux6~6_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(25),
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\);

-- Location: LCCOMB_X27_Y12_N20
\aProcessor|InstAddGen|PC[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[26]~84_combout\ = (\aProcessor|InstAddGen|PC\(26) & (\aProcessor|InstAddGen|PC[25]~83\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(26) & (!\aProcessor|InstAddGen|PC[25]~83\ & VCC))
-- \aProcessor|InstAddGen|PC[26]~85\ = CARRY((\aProcessor|InstAddGen|PC\(26) & !\aProcessor|InstAddGen|PC[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(26),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[25]~83\,
	combout => \aProcessor|InstAddGen|PC[26]~84_combout\,
	cout => \aProcessor|InstAddGen|PC[26]~85\);

-- Location: LCCOMB_X27_Y12_N22
\aProcessor|InstAddGen|PC[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[27]~86_combout\ = (\aProcessor|InstAddGen|PC\(27) & (!\aProcessor|InstAddGen|PC[26]~85\)) # (!\aProcessor|InstAddGen|PC\(27) & ((\aProcessor|InstAddGen|PC[26]~85\) # (GND)))
-- \aProcessor|InstAddGen|PC[27]~87\ = CARRY((!\aProcessor|InstAddGen|PC[26]~85\) # (!\aProcessor|InstAddGen|PC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(27),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[26]~85\,
	combout => \aProcessor|InstAddGen|PC[27]~86_combout\,
	cout => \aProcessor|InstAddGen|PC[27]~87\);

-- Location: LCFF_X27_Y12_N23
\aProcessor|InstAddGen|PC[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[27]~86_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(27));

-- Location: LCFF_X24_Y14_N29
\aProcessor|InstAddGen|PC_temp[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(27));

-- Location: LCCOMB_X24_Y14_N28
\aProcessor|displayAll|HexDisplay32Bits[27]~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\ = (\aProcessor|displayAll|Mux4~6_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\) # ((\aProcessor|InstAddGen|PC_temp\(27) & 
-- \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\)))) # (!\aProcessor|displayAll|Mux4~6_combout\ & (((\aProcessor|InstAddGen|PC_temp\(27) & \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux4~6_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(27),
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\);

-- Location: LCFF_X27_Y12_N21
\aProcessor|InstAddGen|PC[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[26]~84_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(26));

-- Location: LCFF_X24_Y14_N9
\aProcessor|InstAddGen|PC_temp[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(26));

-- Location: LCCOMB_X24_Y14_N8
\aProcessor|displayAll|HexDisplay32Bits[26]~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\ = (\aProcessor|displayAll|Mux5~7_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\) # ((\aProcessor|InstAddGen|PC_temp\(26) & 
-- \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\)))) # (!\aProcessor|displayAll|Mux5~7_combout\ & (((\aProcessor|InstAddGen|PC_temp\(26) & \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux5~7_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(26),
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\);

-- Location: LCFF_X27_Y12_N17
\aProcessor|InstAddGen|PC[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[24]~80_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(24));

-- Location: LCFF_X24_Y14_N31
\aProcessor|InstAddGen|PC_temp[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(24));

-- Location: LCCOMB_X24_Y14_N30
\aProcessor|displayAll|HexDisplay32Bits[24]~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\ = (\aProcessor|displayAll|Mux7~6_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\) # ((\aProcessor|InstAddGen|PC_temp\(24) & 
-- \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\)))) # (!\aProcessor|displayAll|Mux7~6_combout\ & (((\aProcessor|InstAddGen|PC_temp\(24) & \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux7~6_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(24),
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\);

-- Location: LCCOMB_X1_Y17_N12
\uHEX6|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\,
	combout => \uHEX6|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y17_N14
\uHEX6|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\,
	combout => \uHEX6|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y17_N28
\uHEX6|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\,
	combout => \uHEX6|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y17_N6
\uHEX6|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\ & \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\,
	combout => \uHEX6|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y17_N4
\uHEX6|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\,
	combout => \uHEX6|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y17_N10
\uHEX6|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\,
	combout => \uHEX6|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y17_N24
\uHEX6|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[27]~190_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[24]~187_combout\,
	combout => \uHEX6|WideOr0~0_combout\);

-- Location: LCCOMB_X27_Y12_N24
\aProcessor|InstAddGen|PC[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[28]~88_combout\ = (\aProcessor|InstAddGen|PC\(28) & (\aProcessor|InstAddGen|PC[27]~87\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(28) & (!\aProcessor|InstAddGen|PC[27]~87\ & VCC))
-- \aProcessor|InstAddGen|PC[28]~89\ = CARRY((\aProcessor|InstAddGen|PC\(28) & !\aProcessor|InstAddGen|PC[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(28),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[27]~87\,
	combout => \aProcessor|InstAddGen|PC[28]~88_combout\,
	cout => \aProcessor|InstAddGen|PC[28]~89\);

-- Location: LCCOMB_X27_Y12_N26
\aProcessor|InstAddGen|PC[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[29]~90_combout\ = (\aProcessor|InstAddGen|PC\(29) & (!\aProcessor|InstAddGen|PC[28]~89\)) # (!\aProcessor|InstAddGen|PC\(29) & ((\aProcessor|InstAddGen|PC[28]~89\) # (GND)))
-- \aProcessor|InstAddGen|PC[29]~91\ = CARRY((!\aProcessor|InstAddGen|PC[28]~89\) # (!\aProcessor|InstAddGen|PC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(29),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[28]~89\,
	combout => \aProcessor|InstAddGen|PC[29]~90_combout\,
	cout => \aProcessor|InstAddGen|PC[29]~91\);

-- Location: LCFF_X27_Y12_N27
\aProcessor|InstAddGen|PC[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[29]~90_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(29));

-- Location: LCCOMB_X27_Y12_N28
\aProcessor|InstAddGen|PC[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[30]~92_combout\ = (\aProcessor|InstAddGen|PC\(30) & (\aProcessor|InstAddGen|PC[29]~91\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(30) & (!\aProcessor|InstAddGen|PC[29]~91\ & VCC))
-- \aProcessor|InstAddGen|PC[30]~93\ = CARRY((\aProcessor|InstAddGen|PC\(30) & !\aProcessor|InstAddGen|PC[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(30),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[29]~91\,
	combout => \aProcessor|InstAddGen|PC[30]~92_combout\,
	cout => \aProcessor|InstAddGen|PC[30]~93\);

-- Location: LCFF_X27_Y12_N29
\aProcessor|InstAddGen|PC[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[30]~92_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(30));

-- Location: LCCOMB_X27_Y12_N30
\aProcessor|InstAddGen|PC[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[31]~94_combout\ = \aProcessor|InstAddGen|PC[30]~93\ $ (\aProcessor|InstAddGen|PC\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|InstAddGen|PC\(31),
	cin => \aProcessor|InstAddGen|PC[30]~93\,
	combout => \aProcessor|InstAddGen|PC[31]~94_combout\);

-- Location: LCFF_X27_Y12_N31
\aProcessor|InstAddGen|PC[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[31]~94_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(31));

-- Location: LCCOMB_X25_Y13_N26
\aProcessor|displayAll|HexDisplay32Bits[31]~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[31]~211_combout\ = (\switch~combout\(3) & ((\ROM1|altsyncram_component|auto_generated|q_a\(31)) # ((\switch~combout\(0))))) # (!\switch~combout\(3) & (((\aProcessor|InstAddGen|PC\(31) & !\switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|altsyncram_component|auto_generated|q_a\(31),
	datab => \aProcessor|InstAddGen|PC\(31),
	datac => \switch~combout\(3),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[31]~211_combout\);

-- Location: LCFF_X25_Y13_N25
\aProcessor|InstAddGen|PC_temp[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(31));

-- Location: LCCOMB_X25_Y13_N24
\aProcessor|displayAll|HexDisplay32Bits[31]~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[31]~212_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[31]~211_combout\ & (!\switch~combout\(2) & ((\aProcessor|InstAddGen|PC_temp\(31)) # (!\switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|displayAll|HexDisplay32Bits[31]~211_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(31),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[31]~212_combout\);

-- Location: LCCOMB_X24_Y17_N10
\aProcessor|displayAll|HexDisplay32Bits[31]~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ = (\debounceit1|PB_state~regout\ & (!\switch~combout\(4) & (!\switch~combout\(1) & \aProcessor|displayAll|HexDisplay32Bits[31]~212_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \switch~combout\(4),
	datac => \switch~combout\(1),
	datad => \aProcessor|displayAll|HexDisplay32Bits[31]~212_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\);

-- Location: LCFF_X27_Y12_N25
\aProcessor|InstAddGen|PC[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[28]~88_combout\,
	sclr => \debounceit3|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(28));

-- Location: LCFF_X24_Y14_N25
\aProcessor|InstAddGen|PC_temp[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(28));

-- Location: LCCOMB_X24_Y14_N24
\aProcessor|displayAll|HexDisplay32Bits[28]~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ = (\aProcessor|displayAll|Mux3~6_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\) # ((\aProcessor|InstAddGen|PC_temp\(28) & 
-- \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\)))) # (!\aProcessor|displayAll|Mux3~6_combout\ & (((\aProcessor|InstAddGen|PC_temp\(28) & \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux3~6_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~203_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(28),
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~204_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\);

-- Location: LCCOMB_X24_Y17_N8
\aProcessor|displayAll|HexDisplay32Bits[30]~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[30]~214_combout\ & (!\switch~combout\(4) & (!\switch~combout\(1) & \debounceit1|PB_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[30]~214_combout\,
	datab => \switch~combout\(4),
	datac => \switch~combout\(1),
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\);

-- Location: LCCOMB_X24_Y17_N18
\aProcessor|displayAll|HexDisplay32Bits[29]~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[29]~216_combout\ & (!\switch~combout\(4) & (!\switch~combout\(1) & \debounceit1|PB_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[29]~216_combout\,
	datab => \switch~combout\(4),
	datac => \switch~combout\(1),
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\);

-- Location: LCCOMB_X24_Y17_N24
\uHEX7|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\,
	combout => \uHEX7|WideOr6~0_combout\);

-- Location: LCCOMB_X24_Y17_N22
\uHEX7|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\,
	combout => \uHEX7|WideOr5~0_combout\);

-- Location: LCCOMB_X24_Y17_N0
\uHEX7|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\,
	combout => \uHEX7|WideOr4~0_combout\);

-- Location: LCCOMB_X24_Y17_N26
\uHEX7|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\ $ (!\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\ & \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\,
	combout => \uHEX7|WideOr3~0_combout\);

-- Location: LCCOMB_X24_Y17_N12
\uHEX7|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\,
	combout => \uHEX7|WideOr2~0_combout\);

-- Location: LCCOMB_X24_Y17_N2
\uHEX7|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ $ (((\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\,
	combout => \uHEX7|WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y17_N20
\uHEX7|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~210_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[28]~191_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~209_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\,
	combout => \uHEX7|WideOr0~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_50~I\ : cycloneii_io
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
	padio => ww_clk_50);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[5]~I\ : cycloneii_io
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
	padio => ww_switch(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[6]~I\ : cycloneii_io
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
	padio => ww_switch(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[7]~I\ : cycloneii_io
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
	padio => ww_switch(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[8]~I\ : cycloneii_io
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
	padio => ww_switch(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[9]~I\ : cycloneii_io
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
	padio => ww_switch(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[10]~I\ : cycloneii_io
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
	padio => ww_switch(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[11]~I\ : cycloneii_io
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
	padio => ww_switch(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[12]~I\ : cycloneii_io
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
	padio => ww_switch(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[13]~I\ : cycloneii_io
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
	padio => ww_switch(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[14]~I\ : cycloneii_io
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
	padio => ww_switch(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[15]~I\ : cycloneii_io
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
	padio => ww_switch(15));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[16]~I\ : cycloneii_io
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
	padio => ww_switch(16));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\green[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_green(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\green[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_green(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\green[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_green(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\green[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_green(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\green[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_green(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\green[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_green(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\green[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_green(6));

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\green[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_green(7));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\green[8]~I\ : cycloneii_io
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
	datain => \debounceit2|PB_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_green(8));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[8]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[9]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[10]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[11]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[12]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[13]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[14]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[15]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[16]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\red[17]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_red(17));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[0]~I\ : cycloneii_io
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
	datain => \uHEX0|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[1]~I\ : cycloneii_io
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
	datain => \uHEX0|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[2]~I\ : cycloneii_io
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
	datain => \uHEX0|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[3]~I\ : cycloneii_io
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
	datain => \uHEX0|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[4]~I\ : cycloneii_io
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
	datain => \uHEX0|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[5]~I\ : cycloneii_io
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
	datain => \uHEX0|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[6]~I\ : cycloneii_io
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
	datain => \uHEX0|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[0]~I\ : cycloneii_io
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
	datain => \uHEX1|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[1]~I\ : cycloneii_io
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
	datain => \uHEX1|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[2]~I\ : cycloneii_io
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
	datain => \uHEX1|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[3]~I\ : cycloneii_io
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
	datain => \uHEX1|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[4]~I\ : cycloneii_io
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
	datain => \uHEX1|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[5]~I\ : cycloneii_io
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
	datain => \uHEX1|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[6]~I\ : cycloneii_io
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
	datain => \uHEX1|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[0]~I\ : cycloneii_io
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
	datain => \uHEX2|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[1]~I\ : cycloneii_io
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
	datain => \uHEX2|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[2]~I\ : cycloneii_io
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
	datain => \uHEX2|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[3]~I\ : cycloneii_io
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
	datain => \uHEX2|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[4]~I\ : cycloneii_io
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
	datain => \uHEX2|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[5]~I\ : cycloneii_io
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
	datain => \uHEX2|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[6]~I\ : cycloneii_io
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
	datain => \uHEX2|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[0]~I\ : cycloneii_io
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
	datain => \uHEX3|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[1]~I\ : cycloneii_io
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
	datain => \uHEX3|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[2]~I\ : cycloneii_io
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
	datain => \uHEX3|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[3]~I\ : cycloneii_io
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
	datain => \uHEX3|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[4]~I\ : cycloneii_io
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
	datain => \uHEX3|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[5]~I\ : cycloneii_io
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
	datain => \uHEX3|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[6]~I\ : cycloneii_io
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
	datain => \uHEX3|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[0]~I\ : cycloneii_io
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
	datain => \uHEX4|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[1]~I\ : cycloneii_io
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
	datain => \uHEX4|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[2]~I\ : cycloneii_io
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
	datain => \uHEX4|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[3]~I\ : cycloneii_io
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
	datain => \uHEX4|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[4]~I\ : cycloneii_io
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
	datain => \uHEX4|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[5]~I\ : cycloneii_io
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
	datain => \uHEX4|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[6]~I\ : cycloneii_io
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
	datain => \uHEX4|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[0]~I\ : cycloneii_io
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
	datain => \uHEX5|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[1]~I\ : cycloneii_io
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
	datain => \uHEX5|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[2]~I\ : cycloneii_io
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
	datain => \uHEX5|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[3]~I\ : cycloneii_io
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
	datain => \uHEX5|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[4]~I\ : cycloneii_io
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
	datain => \uHEX5|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[5]~I\ : cycloneii_io
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
	datain => \uHEX5|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[6]~I\ : cycloneii_io
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
	datain => \uHEX5|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[0]~I\ : cycloneii_io
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
	datain => \uHEX6|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[1]~I\ : cycloneii_io
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
	datain => \uHEX6|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[2]~I\ : cycloneii_io
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
	datain => \uHEX6|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[3]~I\ : cycloneii_io
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
	datain => \uHEX6|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[4]~I\ : cycloneii_io
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
	datain => \uHEX6|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[5]~I\ : cycloneii_io
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
	datain => \uHEX6|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[6]~I\ : cycloneii_io
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
	datain => \uHEX6|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[0]~I\ : cycloneii_io
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
	datain => \uHEX7|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[1]~I\ : cycloneii_io
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
	datain => \uHEX7|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[2]~I\ : cycloneii_io
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
	datain => \uHEX7|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[3]~I\ : cycloneii_io
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
	datain => \uHEX7|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[4]~I\ : cycloneii_io
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
	datain => \uHEX7|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[5]~I\ : cycloneii_io
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
	datain => \uHEX7|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[6]~I\ : cycloneii_io
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
	datain => \uHEX7|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(6));
END structure;


