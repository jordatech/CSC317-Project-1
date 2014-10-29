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

-- DATE "10/28/2014 21:04:59"

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
-- switch[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- switch[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_27	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pushBut[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pushBut[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \InstructionROM|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \InstructionROM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounceit0|PB_state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_27~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aProcessor|InstAddGen|PC[8]~49_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[6]~28_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[8]~32_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[10]~36_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[14]~45\ : std_logic;
SIGNAL \debounceit1|PB_cnt[15]~46_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[6]~28_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[8]~32_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[10]~36_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[14]~45\ : std_logic;
SIGNAL \debounceit2|PB_cnt[15]~46_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[6]~28_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[8]~32_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[10]~36_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[14]~45\ : std_logic;
SIGNAL \debounceit0|PB_cnt[15]~46_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[8]~32_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[10]~36_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[12]~40_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[14]~45\ : std_logic;
SIGNAL \debounceit3|PB_cnt[15]~46_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[0]~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux31~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux31~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~10_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux30~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~12_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux29~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux29~3_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux29~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~17_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~18_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~19_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~20_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[4]~23_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[4]~24_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[4]~25_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~27_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~28_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~33_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux25~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~39_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux24~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux24~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux23~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux23~3_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~54_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~55_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux17~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux17~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~63_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux15~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~77_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~79_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~89_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[21]~96_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux9~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~109_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~121_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~122_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[28]~127_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[28]~129_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux2~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[29]~133_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~2_combout\ : std_logic;
SIGNAL \aProcessor|CountClk|ClockCount~0_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~2_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~2_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~3_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~139_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[16]~142_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[0]~16_combout\ : std_logic;
SIGNAL \debounceit0|PB_sync_0~0_combout\ : std_logic;
SIGNAL \debounceit0|PB_sync_0~regout\ : std_logic;
SIGNAL \debounceit0|PB_sync_1~regout\ : std_logic;
SIGNAL \debounceit0|comb~0_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[0]~17\ : std_logic;
SIGNAL \debounceit0|PB_cnt[1]~18_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[1]~19\ : std_logic;
SIGNAL \debounceit0|PB_cnt[2]~20_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[2]~21\ : std_logic;
SIGNAL \debounceit0|PB_cnt[3]~23\ : std_logic;
SIGNAL \debounceit0|PB_cnt[4]~24_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[4]~25\ : std_logic;
SIGNAL \debounceit0|PB_cnt[5]~27\ : std_logic;
SIGNAL \debounceit0|PB_cnt[6]~29\ : std_logic;
SIGNAL \debounceit0|PB_cnt[7]~30_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[7]~31\ : std_logic;
SIGNAL \debounceit0|PB_cnt[8]~33\ : std_logic;
SIGNAL \debounceit0|PB_cnt[9]~34_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[9]~35\ : std_logic;
SIGNAL \debounceit0|PB_cnt[10]~37\ : std_logic;
SIGNAL \debounceit0|PB_cnt[11]~38_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[11]~39\ : std_logic;
SIGNAL \debounceit0|PB_cnt[12]~41\ : std_logic;
SIGNAL \debounceit0|PB_cnt[13]~42_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[13]~43\ : std_logic;
SIGNAL \debounceit0|PB_cnt[14]~44_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[12]~40_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~3_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[3]~22_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[5]~26_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~1_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~regout\ : std_logic;
SIGNAL \debounceit0|PB_state~clkctrl_outclk\ : std_logic;
SIGNAL \debounceit2|PB_cnt[0]~16_combout\ : std_logic;
SIGNAL \debounceit2|PB_sync_0~0_combout\ : std_logic;
SIGNAL \debounceit2|PB_sync_0~regout\ : std_logic;
SIGNAL \debounceit2|PB_sync_1~feeder_combout\ : std_logic;
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
SIGNAL \debounceit2|PB_cnt[5]~26_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~1_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[12]~40_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~3_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~regout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[0]~16_combout\ : std_logic;
SIGNAL \debounceit1|PB_sync_0~0_combout\ : std_logic;
SIGNAL \debounceit1|PB_sync_0~regout\ : std_logic;
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
SIGNAL \debounceit1|PB_cnt[3]~22_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[5]~26_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~1_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[12]~40_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~3_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~regout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~140_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ : std_logic;
SIGNAL \clk_27~combout\ : std_logic;
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
SIGNAL \debounceit3|PB_cnt[5]~26_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[3]~22_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~1_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[6]~28_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~2_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~regout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC~34_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[0]~33\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[1]~35_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[1]~36\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[2]~37_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[2]~38\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[3]~39_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[3]~40\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[4]~41_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[4]~42\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[5]~43_combout\ : std_logic;
SIGNAL \clk_27~clkctrl_outclk\ : std_logic;
SIGNAL \aProcessor|DecodeInst|InstructionFormat[0]~0_combout\ : std_logic;
SIGNAL \aProcessor|DecodeInst|InstructionFormat[0]~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[0]~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux29~0_combout\ : std_logic;
SIGNAL \aProcessor|CountClk|ClockCount[1]~2_combout\ : std_logic;
SIGNAL \aProcessor|CountClk|ClockCount~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux29~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux31~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[0]~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux23~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~15_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~16_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\ : std_logic;
SIGNAL \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux30~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux30~3_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux30~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux30~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\ : std_logic;
SIGNAL \uHEX0|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~34_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~3_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~40_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[4]~22_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~29_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~30_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~31_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~1_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[5]~44\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[6]~45_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux25~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~36_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\ : std_logic;
SIGNAL \uHEX1|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[6]~46\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[7]~47_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[7]~48\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[8]~50\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[9]~51_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux22~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux22~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~46_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~45_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[9]~52\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[10]~53_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux21~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux21~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~49_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~48_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~51_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[10]~54\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[11]~55_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux20~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux20~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~52_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux23~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux23~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~42_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~43_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\ : std_logic;
SIGNAL \uHEX2|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~60_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[11]~56\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[12]~58\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[13]~59_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux18~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux18~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~59_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[15]~65_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~141_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[13]~60\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[14]~61_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[14]~62\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[15]~63_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[15]~66_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~62_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[12]~57_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux19~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux19~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~56_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\ : std_logic;
SIGNAL \uHEX3|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux12~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[16]~57_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[15]~64\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[16]~65_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[16]~66\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[17]~67_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[17]~68\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[18]~69_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux12~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~80_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~78_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~81_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux15~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux15~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux12~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~73_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~74_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~71_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~72_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~75_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[18]~70\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[19]~71_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~3_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~83_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~84_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~85_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~86_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~87_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\ : std_logic;
SIGNAL \uHEX4|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~99_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[19]~72\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[20]~73_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[20]~74\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[21]~76\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[22]~77_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[22]~78\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[23]~79_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux8~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~101_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~91_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~92_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~90_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~93_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[21]~75_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[21]~95_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\ : std_logic;
SIGNAL \uHEX5|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[23]~80\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[24]~82\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[25]~83_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~110_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~111_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~112_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~113_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[25]~84\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[26]~85_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~117_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~118_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~115_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~116_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~119_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[24]~81_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[24]~105_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[24]~106_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[24]~103_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[24]~104_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[24]~107_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[26]~86\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[27]~87_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~123_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~124_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~125_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\ : std_logic;
SIGNAL \uHEX6|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[27]~88\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[28]~90\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[29]~91_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~98_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[29]~92\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[30]~93_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[30]~94\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[31]~95_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux0~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[31]~137_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux1~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[30]~135_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[28]~89_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[28]~130_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[28]~128_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[28]~131_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\ : std_logic;
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
SIGNAL \aProcessor|RAND|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aProcessor|DecodeInst|Rdst\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \InstructionROM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \debounceit0|PB_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \switch~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \aProcessor|InstAddGen|PC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aProcessor|InstAddGen|PC_temp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aProcessor|CountClk|ClockCount\ : std_logic_vector(2 DOWNTO 0);
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

\InstructionROM|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\aProcessor|InstAddGen|PC\(5) & \aProcessor|InstAddGen|PC\(4) & \aProcessor|InstAddGen|PC\(3) & \aProcessor|InstAddGen|PC\(2) & \aProcessor|InstAddGen|PC\(1) & 
\aProcessor|InstAddGen|PC\(0));

\InstructionROM|altsyncram_component|auto_generated|q_a\(2) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\InstructionROM|altsyncram_component|auto_generated|q_a\(3) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);
\InstructionROM|altsyncram_component|auto_generated|q_a\(4) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(2);
\InstructionROM|altsyncram_component|auto_generated|q_a\(5) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(3);

\InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\aProcessor|InstAddGen|PC\(5) & \aProcessor|InstAddGen|PC\(4) & \aProcessor|InstAddGen|PC\(3) & \aProcessor|InstAddGen|PC\(2) & \aProcessor|InstAddGen|PC\(1) & 
\aProcessor|InstAddGen|PC\(0));

\InstructionROM|altsyncram_component|auto_generated|q_a\(0) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\InstructionROM|altsyncram_component|auto_generated|q_a\(1) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\InstructionROM|altsyncram_component|auto_generated|q_a\(6) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\InstructionROM|altsyncram_component|auto_generated|q_a\(7) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\InstructionROM|altsyncram_component|auto_generated|q_a\(8) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\InstructionROM|altsyncram_component|auto_generated|q_a\(9) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\InstructionROM|altsyncram_component|auto_generated|q_a\(10) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\InstructionROM|altsyncram_component|auto_generated|q_a\(11) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\InstructionROM|altsyncram_component|auto_generated|q_a\(12) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\InstructionROM|altsyncram_component|auto_generated|q_a\(13) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\InstructionROM|altsyncram_component|auto_generated|q_a\(14) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\InstructionROM|altsyncram_component|auto_generated|q_a\(15) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\InstructionROM|altsyncram_component|auto_generated|q_a\(16) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\InstructionROM|altsyncram_component|auto_generated|q_a\(17) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\InstructionROM|altsyncram_component|auto_generated|q_a\(18) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\InstructionROM|altsyncram_component|auto_generated|q_a\(19) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\InstructionROM|altsyncram_component|auto_generated|q_a\(20) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\InstructionROM|altsyncram_component|auto_generated|q_a\(21) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\InstructionROM|altsyncram_component|auto_generated|q_a\(22) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\InstructionROM|altsyncram_component|auto_generated|q_a\(23) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\InstructionROM|altsyncram_component|auto_generated|q_a\(24) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\InstructionROM|altsyncram_component|auto_generated|q_a\(25) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\InstructionROM|altsyncram_component|auto_generated|q_a\(26) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\InstructionROM|altsyncram_component|auto_generated|q_a\(27) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\InstructionROM|altsyncram_component|auto_generated|q_a\(28) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\InstructionROM|altsyncram_component|auto_generated|q_a\(29) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\InstructionROM|altsyncram_component|auto_generated|q_a\(30) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\InstructionROM|altsyncram_component|auto_generated|q_a\(31) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);

\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \aProcessor|DecodeInst|InstructionFormat[0]~1_combout\);

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

-- Location: M4K_X52_Y7
\InstructionROM|altsyncram_component|auto_generated|ram_block1a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"C00000000000000000000000000000000000000000000000000000001FCA7008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitializationFile.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:InstructionROM|altsyncram:altsyncram_component|altsyncram_cp91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk_27~combout\,
	portaaddr => \InstructionROM|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \InstructionROM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y8
\InstructionROM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00A9864000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000060000000000000200000000000002088600400440040248F9E",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitializationFile.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:InstructionROM|altsyncram:altsyncram_component|altsyncram_cp91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 28,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 28,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk_27~clkctrl_outclk\,
	portaaddr => \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X53_Y8_N17
\aProcessor|InstAddGen|PC[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[8]~49_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(8));

-- Location: LCFF_X57_Y19_N31
\debounceit1|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[15]~46_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(15));

-- Location: LCFF_X57_Y19_N13
\debounceit1|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[6]~28_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(6));

-- Location: LCFF_X57_Y19_N17
\debounceit1|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[8]~32_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(8));

-- Location: LCFF_X57_Y19_N21
\debounceit1|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[10]~36_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(10));

-- Location: LCCOMB_X53_Y8_N16
\aProcessor|InstAddGen|PC[8]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[8]~49_combout\ = (\aProcessor|InstAddGen|PC\(8) & (\aProcessor|InstAddGen|PC[7]~48\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(8) & (!\aProcessor|InstAddGen|PC[7]~48\ & VCC))
-- \aProcessor|InstAddGen|PC[8]~50\ = CARRY((\aProcessor|InstAddGen|PC\(8) & !\aProcessor|InstAddGen|PC[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(8),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[7]~48\,
	combout => \aProcessor|InstAddGen|PC[8]~49_combout\,
	cout => \aProcessor|InstAddGen|PC[8]~50\);

-- Location: LCFF_X37_Y15_N31
\debounceit2|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[15]~46_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(15));

-- Location: LCFF_X37_Y15_N13
\debounceit2|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[6]~28_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(6));

-- Location: LCFF_X37_Y15_N17
\debounceit2|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[8]~32_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(8));

-- Location: LCFF_X37_Y15_N21
\debounceit2|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[10]~36_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(10));

-- Location: LCFF_X63_Y16_N31
\debounceit0|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[15]~46_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(15));

-- Location: LCFF_X63_Y16_N13
\debounceit0|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[6]~28_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(6));

-- Location: LCFF_X63_Y16_N17
\debounceit0|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[8]~32_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(8));

-- Location: LCFF_X63_Y16_N21
\debounceit0|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[10]~36_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(10));

-- Location: LCCOMB_X57_Y19_N12
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

-- Location: LCCOMB_X57_Y19_N16
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

-- Location: LCCOMB_X57_Y19_N20
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

-- Location: LCCOMB_X57_Y19_N28
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

-- Location: LCCOMB_X57_Y19_N30
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

-- Location: LCFF_X55_Y8_N31
\debounceit3|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[15]~46_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(15));

-- Location: LCFF_X55_Y8_N17
\debounceit3|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[8]~32_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(8));

-- Location: LCFF_X55_Y8_N21
\debounceit3|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[10]~36_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(10));

-- Location: LCFF_X55_Y8_N25
\debounceit3|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[12]~40_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(12));

-- Location: LCCOMB_X37_Y15_N12
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

-- Location: LCCOMB_X37_Y15_N16
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

-- Location: LCCOMB_X37_Y15_N20
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

-- Location: LCCOMB_X37_Y15_N28
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

-- Location: LCCOMB_X37_Y15_N30
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

-- Location: LCCOMB_X63_Y16_N12
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

-- Location: LCCOMB_X63_Y16_N16
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

-- Location: LCCOMB_X63_Y16_N20
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

-- Location: LCCOMB_X63_Y16_N28
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

-- Location: LCCOMB_X63_Y16_N30
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

-- Location: LCCOMB_X55_Y8_N16
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

-- Location: LCCOMB_X55_Y8_N20
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

-- Location: LCCOMB_X55_Y8_N24
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

-- Location: LCCOMB_X55_Y8_N28
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

-- Location: LCCOMB_X55_Y8_N30
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

-- Location: LCFF_X54_Y8_N17
\aProcessor|CountClk|ClockCount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|CountClk|ClockCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|CountClk|ClockCount\(0));

-- Location: LCCOMB_X51_Y7_N20
\aProcessor|displayAll|HexDisplay32Bits[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[0]~6_combout\ = (!\switch~combout\(1) & ((\switch~combout\(0) & ((\aProcessor|CountClk|ClockCount\(0)))) # (!\switch~combout\(0) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(0),
	datab => \aProcessor|CountClk|ClockCount\(0),
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[0]~6_combout\);

-- Location: LCCOMB_X50_Y7_N16
\aProcessor|displayAll|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~0_combout\ = (!\switch~combout\(3) & !\switch~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux27~0_combout\);

-- Location: LCCOMB_X50_Y7_N18
\aProcessor|displayAll|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux31~0_combout\ = (\switch~combout\(0) & ((\aProcessor|DecodeInst|Rdst\(0)) # ((!\switch~combout\(2))))) # (!\switch~combout\(0) & (((\aProcessor|InstAddGen|PC\(0) & !\switch~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|DecodeInst|Rdst\(0),
	datac => \aProcessor|InstAddGen|PC\(0),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux31~0_combout\);

-- Location: LCCOMB_X50_Y7_N12
\aProcessor|displayAll|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux31~1_combout\ = (\switch~combout\(3) & (\switch~combout\(2))) # (!\switch~combout\(3) & (\aProcessor|displayAll|Mux31~0_combout\ & (\switch~combout\(2) $ (!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(3),
	datac => \switch~combout\(1),
	datad => \aProcessor|displayAll|Mux31~0_combout\,
	combout => \aProcessor|displayAll|Mux31~1_combout\);

-- Location: LCCOMB_X50_Y8_N28
\aProcessor|displayAll|HexDisplay32Bits[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~10_combout\ = (\switch~combout\(1) & (((\switch~combout\(0))))) # (!\switch~combout\(1) & ((\switch~combout\(0) & ((\aProcessor|CountClk|ClockCount\(1)))) # (!\switch~combout\(0) & 
-- (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(1),
	datab => \aProcessor|CountClk|ClockCount\(1),
	datac => \switch~combout\(1),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~10_combout\);

-- Location: LCCOMB_X51_Y7_N12
\aProcessor|displayAll|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux30~2_combout\ = (\switch~combout\(0) & ((\switch~combout\(1) & (!\switch~combout\(3) & \switch~combout\(2))) # (!\switch~combout\(1) & ((!\switch~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(0),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux30~2_combout\);

-- Location: LCCOMB_X50_Y8_N14
\aProcessor|displayAll|HexDisplay32Bits[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~12_combout\ = (\switch~combout\(0) & ((\aProcessor|CountClk|ClockCount\(2)) # ((\switch~combout\(1))))) # (!\switch~combout\(0) & (((!\switch~combout\(1) & \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|CountClk|ClockCount\(2),
	datac => \switch~combout\(1),
	datad => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~12_combout\);

-- Location: LCFF_X51_Y7_N25
\aProcessor|InstAddGen|PC_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(2));

-- Location: LCCOMB_X51_Y7_N24
\aProcessor|displayAll|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux29~2_combout\ = (\switch~combout\(2) & (\aProcessor|DecodeInst|Rdst\(2))) # (!\switch~combout\(2) & ((\aProcessor|InstAddGen|PC_temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|DecodeInst|Rdst\(2),
	datac => \aProcessor|InstAddGen|PC_temp\(2),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux29~2_combout\);

-- Location: LCCOMB_X51_Y7_N2
\aProcessor|displayAll|Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux29~3_combout\ = (\switch~combout\(3) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(2)))) # (!\switch~combout\(3) & (\aProcessor|InstAddGen|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(2),
	datac => \switch~combout\(3),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(2),
	combout => \aProcessor|displayAll|Mux29~3_combout\);

-- Location: LCCOMB_X51_Y7_N26
\aProcessor|displayAll|Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux29~4_combout\ = (\aProcessor|displayAll|Mux30~3_combout\ & (((\aProcessor|displayAll|Mux29~2_combout\ & \aProcessor|displayAll|Mux30~2_combout\)))) # (!\aProcessor|displayAll|Mux30~3_combout\ & 
-- ((\aProcessor|displayAll|Mux29~3_combout\) # ((\aProcessor|displayAll|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux30~3_combout\,
	datab => \aProcessor|displayAll|Mux29~3_combout\,
	datac => \aProcessor|displayAll|Mux29~2_combout\,
	datad => \aProcessor|displayAll|Mux30~2_combout\,
	combout => \aProcessor|displayAll|Mux29~4_combout\);

-- Location: LCCOMB_X53_Y9_N10
\aProcessor|displayAll|HexDisplay32Bits[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~17_combout\ = (\switch~combout\(0) & ((\switch~combout\(3) $ (\switch~combout\(2))) # (!\switch~combout\(1)))) # (!\switch~combout\(0) & ((\switch~combout\(2)) # (\switch~combout\(1) $ (!\switch~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~17_combout\);

-- Location: LCFF_X53_Y9_N21
\aProcessor|InstAddGen|PC_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(3));

-- Location: LCCOMB_X53_Y9_N20
\aProcessor|displayAll|HexDisplay32Bits[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~18_combout\ = (!\switch~combout\(1) & (\switch~combout\(3) & (\aProcessor|InstAddGen|PC_temp\(3) & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(3),
	datac => \aProcessor|InstAddGen|PC_temp\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~18_combout\);

-- Location: LCCOMB_X53_Y9_N18
\aProcessor|displayAll|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~0_combout\ = (\aProcessor|DecodeInst|Rdst\(3) & \switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|Rdst\(3),
	datac => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux28~0_combout\);

-- Location: LCCOMB_X53_Y9_N24
\aProcessor|displayAll|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~2_combout\ = (\switch~combout\(2) & (\switch~combout\(1))) # (!\switch~combout\(2) & ((!\switch~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux27~2_combout\);

-- Location: LCCOMB_X53_Y9_N22
\aProcessor|displayAll|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~1_combout\ = (\aProcessor|displayAll|Mux27~2_combout\ & ((\aProcessor|displayAll|Mux27~3_combout\ & ((\aProcessor|displayAll|Mux28~0_combout\))) # (!\aProcessor|displayAll|Mux27~3_combout\ & (\aProcessor|InstAddGen|PC\(3))))) 
-- # (!\aProcessor|displayAll|Mux27~2_combout\ & (((!\aProcessor|displayAll|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~2_combout\,
	datab => \aProcessor|InstAddGen|PC\(3),
	datac => \aProcessor|displayAll|Mux27~3_combout\,
	datad => \aProcessor|displayAll|Mux28~0_combout\,
	combout => \aProcessor|displayAll|Mux28~1_combout\);

-- Location: LCCOMB_X53_Y9_N0
\aProcessor|displayAll|HexDisplay32Bits[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~19_combout\ = (!\switch~combout\(3) & ((\switch~combout\(1) & ((\switch~combout\(2)) # (!\switch~combout\(0)))) # (!\switch~combout\(1) & ((!\switch~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~19_combout\);

-- Location: LCCOMB_X53_Y9_N26
\aProcessor|displayAll|HexDisplay32Bits[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~20_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[3]~17_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[3]~18_combout\) # ((\aProcessor|displayAll|Mux28~1_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[3]~17_combout\,
	datab => \aProcessor|displayAll|Mux28~1_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~18_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~19_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~20_combout\);

-- Location: LCFF_X53_Y9_N13
\aProcessor|InstAddGen|PC_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(4));

-- Location: LCCOMB_X53_Y9_N12
\aProcessor|displayAll|HexDisplay32Bits[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[4]~23_combout\ = (!\switch~combout\(2) & ((\switch~combout\(1) & (!\switch~combout\(0))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC_temp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC_temp\(4),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[4]~23_combout\);

-- Location: LCCOMB_X54_Y9_N2
\aProcessor|displayAll|Mux27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~5_combout\ = (\aProcessor|DecodeInst|Rdst\(4) & \switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aProcessor|DecodeInst|Rdst\(4),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux27~5_combout\);

-- Location: LCCOMB_X53_Y9_N2
\aProcessor|displayAll|Mux27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~6_combout\ = (\aProcessor|displayAll|Mux27~2_combout\ & ((\aProcessor|displayAll|Mux27~3_combout\ & ((\aProcessor|displayAll|Mux27~5_combout\))) # (!\aProcessor|displayAll|Mux27~3_combout\ & (\aProcessor|InstAddGen|PC\(4))))) 
-- # (!\aProcessor|displayAll|Mux27~2_combout\ & (((!\aProcessor|displayAll|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(4),
	datab => \aProcessor|displayAll|Mux27~2_combout\,
	datac => \aProcessor|displayAll|Mux27~3_combout\,
	datad => \aProcessor|displayAll|Mux27~5_combout\,
	combout => \aProcessor|displayAll|Mux27~6_combout\);

-- Location: LCCOMB_X53_Y9_N8
\aProcessor|displayAll|HexDisplay32Bits[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[4]~24_combout\ = (\aProcessor|displayAll|Mux27~7_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[4]~23_combout\)) # (!\aProcessor|displayAll|Mux27~7_combout\ & (((\aProcessor|displayAll|Mux27~6_combout\ & 
-- \aProcessor|displayAll|Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[4]~23_combout\,
	datab => \aProcessor|displayAll|Mux27~6_combout\,
	datac => \aProcessor|displayAll|Mux27~7_combout\,
	datad => \aProcessor|displayAll|Mux27~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[4]~24_combout\);

-- Location: LCCOMB_X53_Y9_N14
\aProcessor|displayAll|HexDisplay32Bits[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[4]~25_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[3]~17_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[4]~24_combout\) # ((\InstructionROM|altsyncram_component|auto_generated|q_a\(4) & 
-- \aProcessor|displayAll|Mux27~1_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[3]~17_combout\ & (((\InstructionROM|altsyncram_component|auto_generated|q_a\(4) & \aProcessor|displayAll|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[3]~17_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[4]~24_combout\,
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(4),
	datad => \aProcessor|displayAll|Mux27~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[4]~25_combout\);

-- Location: LCCOMB_X54_Y9_N26
\aProcessor|displayAll|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~0_combout\ = (\switch~combout\(3) & (\switch~combout\(0) & (\switch~combout\(2) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(0),
	datac => \switch~combout\(2),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux16~0_combout\);

-- Location: LCCOMB_X54_Y9_N12
\aProcessor|displayAll|HexDisplay32Bits[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~27_combout\ = ((!\switch~combout\(4) & (\aProcessor|displayAll|Mux16~0_combout\ & \InstructionROM|altsyncram_component|auto_generated|q_a\(5)))) # (!\debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux16~0_combout\,
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(5),
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~27_combout\);

-- Location: LCCOMB_X54_Y9_N10
\aProcessor|displayAll|HexDisplay32Bits[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~28_combout\ = (\switch~combout\(3) & (!\switch~combout\(0) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(5)) # (\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(0),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(5),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~28_combout\);

-- Location: LCCOMB_X54_Y7_N14
\aProcessor|displayAll|HexDisplay32Bits[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~33_combout\ = (\switch~combout\(4) & (((\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(6) & \aProcessor|displayAll|Mux23~0_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\,
	datac => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(6),
	datad => \aProcessor|displayAll|Mux23~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~33_combout\);

-- Location: LCFF_X56_Y8_N25
\aProcessor|InstAddGen|PC_temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(6));

-- Location: LCCOMB_X56_Y8_N24
\aProcessor|displayAll|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux25~0_combout\ = (\switch~combout\(1) & ((!\switch~combout\(0)))) # (!\switch~combout\(1) & (\aProcessor|InstAddGen|PC_temp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC_temp\(6),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux25~0_combout\);

-- Location: LCCOMB_X54_Y7_N2
\aProcessor|displayAll|HexDisplay32Bits[7]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~39_combout\ = (\switch~combout\(4) & (((\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(7) & \aProcessor|displayAll|Mux23~0_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\,
	datac => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(7),
	datad => \aProcessor|displayAll|Mux23~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~39_combout\);

-- Location: LCFF_X56_Y8_N7
\aProcessor|InstAddGen|PC_temp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(7));

-- Location: LCCOMB_X56_Y8_N6
\aProcessor|displayAll|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux24~0_combout\ = (\switch~combout\(1) & ((!\switch~combout\(0)))) # (!\switch~combout\(1) & (\aProcessor|InstAddGen|PC_temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC_temp\(7),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux24~0_combout\);

-- Location: LCCOMB_X56_Y8_N20
\aProcessor|displayAll|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux24~1_combout\ = (\aProcessor|displayAll|Mux16~1_combout\ & ((\aProcessor|displayAll|Mux16~2_combout\ & (\aProcessor|displayAll|Mux24~0_combout\)) # (!\aProcessor|displayAll|Mux16~2_combout\ & ((\aProcessor|InstAddGen|PC\(7)))))) 
-- # (!\aProcessor|displayAll|Mux16~1_combout\ & (((!\aProcessor|displayAll|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux24~0_combout\,
	datab => \aProcessor|displayAll|Mux16~1_combout\,
	datac => \aProcessor|InstAddGen|PC\(7),
	datad => \aProcessor|displayAll|Mux16~2_combout\,
	combout => \aProcessor|displayAll|Mux24~1_combout\);

-- Location: LCFF_X56_Y8_N23
\aProcessor|InstAddGen|PC_temp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(8));

-- Location: LCCOMB_X56_Y8_N22
\aProcessor|displayAll|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux23~2_combout\ = (!\switch~combout\(1) & \aProcessor|InstAddGen|PC_temp\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC_temp\(8),
	combout => \aProcessor|displayAll|Mux23~2_combout\);

-- Location: LCCOMB_X56_Y8_N0
\aProcessor|displayAll|Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux23~3_combout\ = (\aProcessor|displayAll|Mux16~2_combout\ & (\aProcessor|displayAll|Mux23~2_combout\ & ((\aProcessor|displayAll|Mux16~1_combout\)))) # (!\aProcessor|displayAll|Mux16~2_combout\ & (((\aProcessor|InstAddGen|PC\(8)) # 
-- (!\aProcessor|displayAll|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~2_combout\,
	datab => \aProcessor|displayAll|Mux23~2_combout\,
	datac => \aProcessor|InstAddGen|PC\(8),
	datad => \aProcessor|displayAll|Mux16~1_combout\,
	combout => \aProcessor|displayAll|Mux23~3_combout\);

-- Location: LCCOMB_X54_Y7_N12
\aProcessor|displayAll|HexDisplay32Bits[12]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~54_combout\ = (\switch~combout\(4) & \debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~54_combout\);

-- Location: LCCOMB_X54_Y7_N30
\aProcessor|displayAll|HexDisplay32Bits[12]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~55_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~54_combout\ & (((\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(12) & \aProcessor|displayAll|Mux23~0_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~54_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\,
	datac => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(12),
	datad => \aProcessor|displayAll|Mux23~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~55_combout\);

-- Location: LCFF_X57_Y8_N21
\aProcessor|InstAddGen|PC_temp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(14));

-- Location: LCCOMB_X57_Y8_N20
\aProcessor|displayAll|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux17~0_combout\ = (\switch~combout\(1) & (!\switch~combout\(0))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC_temp\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datac => \aProcessor|InstAddGen|PC_temp\(14),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux17~0_combout\);

-- Location: LCCOMB_X57_Y8_N22
\aProcessor|displayAll|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux17~1_combout\ = (\aProcessor|displayAll|Mux16~1_combout\ & ((\aProcessor|displayAll|Mux16~2_combout\ & ((\aProcessor|displayAll|Mux17~0_combout\))) # (!\aProcessor|displayAll|Mux16~2_combout\ & (\aProcessor|InstAddGen|PC\(14))))) 
-- # (!\aProcessor|displayAll|Mux16~1_combout\ & (((!\aProcessor|displayAll|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(14),
	datab => \aProcessor|displayAll|Mux16~1_combout\,
	datac => \aProcessor|displayAll|Mux17~0_combout\,
	datad => \aProcessor|displayAll|Mux16~2_combout\,
	combout => \aProcessor|displayAll|Mux17~1_combout\);

-- Location: LCCOMB_X56_Y8_N4
\aProcessor|displayAll|HexDisplay32Bits[14]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~63_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & ((\aProcessor|displayAll|Mux17~1_combout\) # ((\InstructionROM|altsyncram_component|auto_generated|q_a\(14) & 
-- \aProcessor|displayAll|Mux16~5_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & (\InstructionROM|altsyncram_component|auto_generated|q_a\(14) & (\aProcessor|displayAll|Mux16~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(14),
	datac => \aProcessor|displayAll|Mux16~5_combout\,
	datad => \aProcessor|displayAll|Mux17~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~63_combout\);

-- Location: LCFF_X51_Y7_N9
\aProcessor|InstAddGen|PC_temp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(16));

-- Location: LCCOMB_X51_Y7_N8
\aProcessor|displayAll|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux15~0_combout\ = (\switch~combout\(0) & ((\switch~combout\(1) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(16))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC_temp\(16)))))) # (!\switch~combout\(0) & 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(16) & ((!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(16),
	datab => \switch~combout\(0),
	datac => \aProcessor|InstAddGen|PC_temp\(16),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux15~0_combout\);

-- Location: LCCOMB_X50_Y8_N24
\aProcessor|displayAll|HexDisplay32Bits[17]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[16]~57_combout\ & ((\switch~combout\(1)) # ((\switch~combout\(2)) # (!\aProcessor|displayAll|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \aProcessor|displayAll|Mux12~0_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[16]~57_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\);

-- Location: LCCOMB_X51_Y10_N16
\aProcessor|displayAll|HexDisplay32Bits[18]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~77_combout\ = (\aProcessor|displayAll|Mux27~7_combout\ & (((!\InstructionROM|altsyncram_component|auto_generated|q_a\(18))))) # (!\aProcessor|displayAll|Mux27~7_combout\ & 
-- (\aProcessor|displayAll|Mux27~3_combout\ & ((!\InstructionROM|altsyncram_component|auto_generated|q_a\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~3_combout\,
	datab => \aProcessor|displayAll|Mux27~7_combout\,
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(18),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(24),
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~77_combout\);

-- Location: LCCOMB_X53_Y10_N14
\aProcessor|displayAll|HexDisplay32Bits[18]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~79_combout\ = (\aProcessor|displayAll|Mux12~2_combout\ & ((\aProcessor|displayAll|Mux27~3_combout\) # ((\aProcessor|InstAddGen|PC\(18) & !\switch~combout\(0))))) # (!\aProcessor|displayAll|Mux12~2_combout\ & 
-- (((!\aProcessor|displayAll|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux12~2_combout\,
	datab => \aProcessor|InstAddGen|PC\(18),
	datac => \switch~combout\(0),
	datad => \aProcessor|displayAll|Mux27~3_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~79_combout\);

-- Location: LCCOMB_X51_Y10_N12
\aProcessor|displayAll|HexDisplay32Bits[20]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~89_combout\ = (\aProcessor|displayAll|Mux27~7_combout\ & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(20))) # (!\aProcessor|displayAll|Mux27~7_combout\ & 
-- (((!\InstructionROM|altsyncram_component|auto_generated|q_a\(26) & \aProcessor|displayAll|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(20),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(26),
	datac => \aProcessor|displayAll|Mux27~7_combout\,
	datad => \aProcessor|displayAll|Mux27~3_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~89_combout\);

-- Location: LCCOMB_X50_Y8_N16
\aProcessor|displayAll|HexDisplay32Bits[21]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[21]~96_combout\ = (!\switch~combout\(0) & ((\switch~combout\(3) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(21))) # (!\switch~combout\(3) & ((\aProcessor|InstAddGen|PC\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(21),
	datab => \switch~combout\(3),
	datac => \aProcessor|InstAddGen|PC\(21),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[21]~96_combout\);

-- Location: LCCOMB_X49_Y8_N12
\aProcessor|displayAll|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux9~0_combout\ = (!\switch~combout\(0) & (!\switch~combout\(1) & (\aProcessor|InstAddGen|PC\(22) & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(22),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux9~0_combout\);

-- Location: LCCOMB_X51_Y10_N20
\aProcessor|displayAll|HexDisplay32Bits[25]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~109_combout\ = (\aProcessor|displayAll|Mux27~7_combout\ & (((!\InstructionROM|altsyncram_component|auto_generated|q_a\(25))))) # (!\aProcessor|displayAll|Mux27~7_combout\ & 
-- (\aProcessor|displayAll|Mux27~3_combout\ & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~3_combout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(28),
	datac => \aProcessor|displayAll|Mux27~7_combout\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(25),
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~109_combout\);

-- Location: LCCOMB_X51_Y10_N4
\aProcessor|displayAll|HexDisplay32Bits[27]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~121_combout\ = (\aProcessor|displayAll|Mux27~7_combout\ & (((!\InstructionROM|altsyncram_component|auto_generated|q_a\(27))))) # (!\aProcessor|displayAll|Mux27~7_combout\ & 
-- (\aProcessor|displayAll|Mux27~3_combout\ & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~3_combout\,
	datab => \aProcessor|displayAll|Mux27~7_combout\,
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(30),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(27),
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~121_combout\);

-- Location: LCCOMB_X51_Y10_N2
\aProcessor|displayAll|HexDisplay32Bits[27]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~122_combout\ = (!\aProcessor|displayAll|HexDisplay32Bits[27]~121_combout\ & ((\switch~combout\(2)) # ((\switch~combout\(3)) # (!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \aProcessor|displayAll|HexDisplay32Bits[27]~121_combout\,
	datac => \switch~combout\(3),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~122_combout\);

-- Location: LCCOMB_X51_Y10_N24
\aProcessor|displayAll|HexDisplay32Bits[28]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[28]~127_combout\ = (\aProcessor|displayAll|Mux27~7_combout\ & (((!\InstructionROM|altsyncram_component|auto_generated|q_a\(28))))) # (!\aProcessor|displayAll|Mux27~7_combout\ & 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(31) & ((\aProcessor|displayAll|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(31),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(28),
	datac => \aProcessor|displayAll|Mux27~7_combout\,
	datad => \aProcessor|displayAll|Mux27~3_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[28]~127_combout\);

-- Location: LCCOMB_X53_Y10_N30
\aProcessor|displayAll|HexDisplay32Bits[28]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[28]~129_combout\ = (\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|displayAll|Mux12~2_combout\)))) # (!\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|InstAddGen|PC\(28) & !\switch~combout\(0))) # 
-- (!\aProcessor|displayAll|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(28),
	datab => \aProcessor|displayAll|Mux27~3_combout\,
	datac => \switch~combout\(0),
	datad => \aProcessor|displayAll|Mux12~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[28]~129_combout\);

-- Location: LCCOMB_X49_Y8_N30
\aProcessor|displayAll|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux2~0_combout\ = (!\switch~combout\(0) & (!\switch~combout\(1) & (\aProcessor|InstAddGen|PC\(29) & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(29),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y8_N24
\aProcessor|displayAll|HexDisplay32Bits[29]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[29]~133_combout\ = (!\aProcessor|displayAll|Mux0~0_combout\ & ((\switch~combout\(3) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(29)))) # (!\switch~combout\(3) & 
-- (\aProcessor|displayAll|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|displayAll|Mux2~0_combout\,
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(29),
	datad => \aProcessor|displayAll|Mux0~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[29]~133_combout\);

-- Location: LCCOMB_X58_Y19_N20
\debounceit1|PB_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~2_combout\ = (\debounceit1|PB_cnt\(7) & (\debounceit1|PB_cnt\(8) & (\debounceit1|PB_cnt\(6) & \debounceit1|PB_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(7),
	datab => \debounceit1|PB_cnt\(8),
	datac => \debounceit1|PB_cnt\(6),
	datad => \debounceit1|PB_cnt\(9),
	combout => \debounceit1|PB_state~2_combout\);

-- Location: LCCOMB_X54_Y8_N16
\aProcessor|CountClk|ClockCount~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|CountClk|ClockCount~0_combout\ = (!\aProcessor|CountClk|ClockCount\(0) & ((\aProcessor|CountClk|ClockCount\(1)) # (!\aProcessor|CountClk|ClockCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CountClk|ClockCount\(1),
	datac => \aProcessor|CountClk|ClockCount\(0),
	datad => \aProcessor|CountClk|ClockCount\(2),
	combout => \aProcessor|CountClk|ClockCount~0_combout\);

-- Location: LCCOMB_X38_Y15_N12
\debounceit2|PB_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~2_combout\ = (\debounceit2|PB_cnt\(7) & (\debounceit2|PB_cnt\(6) & (\debounceit2|PB_cnt\(8) & \debounceit2|PB_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(7),
	datab => \debounceit2|PB_cnt\(6),
	datac => \debounceit2|PB_cnt\(8),
	datad => \debounceit2|PB_cnt\(9),
	combout => \debounceit2|PB_state~2_combout\);

-- Location: LCCOMB_X64_Y16_N6
\debounceit0|PB_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~2_combout\ = (\debounceit0|PB_cnt\(7) & (\debounceit0|PB_cnt\(8) & (\debounceit0|PB_cnt\(6) & \debounceit0|PB_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(7),
	datab => \debounceit0|PB_cnt\(8),
	datac => \debounceit0|PB_cnt\(6),
	datad => \debounceit0|PB_cnt\(9),
	combout => \debounceit0|PB_state~2_combout\);

-- Location: LCCOMB_X54_Y8_N10
\debounceit3|PB_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_state~3_combout\ = (\debounceit3|PB_cnt\(13) & (\debounceit3|PB_cnt\(10) & (\debounceit3|PB_cnt\(11) & \debounceit3|PB_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(13),
	datab => \debounceit3|PB_cnt\(10),
	datac => \debounceit3|PB_cnt\(11),
	datad => \debounceit3|PB_cnt\(12),
	combout => \debounceit3|PB_state~3_combout\);

-- Location: LCCOMB_X50_Y7_N14
\aProcessor|displayAll|HexDisplay32Bits[1]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~139_combout\ = (\switch~combout\(4) & ((\aProcessor|displayAll|HexDisplay32Bits[1]~10_combout\) # ((\switch~combout\(3)) # (\switch~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~10_combout\,
	datab => \switch~combout\(3),
	datac => \switch~combout\(4),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~139_combout\);

-- Location: LCCOMB_X51_Y7_N16
\aProcessor|displayAll|HexDisplay32Bits[16]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[16]~142_combout\ = (\aProcessor|displayAll|Mux15~0_combout\ & ((\switch~combout\(1) & (\aProcessor|DecodeInst|InstructionFormat[0]~1_combout\ & \switch~combout\(2))) # (!\switch~combout\(1) & 
-- ((!\switch~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \aProcessor|displayAll|Mux15~0_combout\,
	datac => \aProcessor|DecodeInst|InstructionFormat[0]~1_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[16]~142_combout\);

-- Location: LCCOMB_X51_Y8_N24
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(0) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(0))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(0),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(6),
	datad => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(0));

-- Location: LCCOMB_X50_Y8_N18
\aProcessor|DecodeInst|Rdst[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|Rdst\(0) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(17)))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- (\aProcessor|DecodeInst|Rdst\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|Rdst\(0),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(17),
	datad => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	combout => \aProcessor|DecodeInst|Rdst\(0));

-- Location: LCCOMB_X51_Y8_N2
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(1) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(1))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(1),
	datac => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(7),
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(1));

-- Location: LCCOMB_X51_Y8_N18
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(2) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(2))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(2),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(8),
	datad => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(2));

-- Location: LCCOMB_X51_Y9_N20
\aProcessor|DecodeInst|Rdst[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|Rdst\(2) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(19)))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- (\aProcessor|DecodeInst|Rdst\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|DecodeInst|Rdst\(2),
	datac => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(19),
	combout => \aProcessor|DecodeInst|Rdst\(2));

-- Location: LCCOMB_X51_Y8_N20
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(3) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(3))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(3),
	datac => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(9),
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(3));

-- Location: LCCOMB_X53_Y9_N4
\aProcessor|DecodeInst|Rdst[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|Rdst\(3) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(20)))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- (\aProcessor|DecodeInst|Rdst\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|Rdst\(3),
	datac => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(20),
	combout => \aProcessor|DecodeInst|Rdst\(3));

-- Location: LCCOMB_X54_Y8_N20
\aProcessor|DecodeInst|Rdst[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|Rdst\(4) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(21)))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- (\aProcessor|DecodeInst|Rdst\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|DecodeInst|Rdst\(4),
	datac => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(21),
	combout => \aProcessor|DecodeInst|Rdst\(4));

-- Location: LCCOMB_X51_Y8_N22
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(6) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(6))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(6),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(12),
	datad => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(6));

-- Location: LCCOMB_X51_Y8_N8
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(7) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(7))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(7),
	datac => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(13),
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(7));

-- Location: LCCOMB_X51_Y8_N0
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(12) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(12))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(12),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(18),
	datad => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(12));

-- Location: LCCOMB_X63_Y16_N0
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

-- Location: LCCOMB_X64_Y19_N28
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

-- Location: LCFF_X64_Y19_N29
\debounceit0|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_sync_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_sync_0~regout\);

-- Location: LCFF_X64_Y16_N1
\debounceit0|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	sdata => \debounceit0|PB_sync_0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_sync_1~regout\);

-- Location: LCCOMB_X64_Y16_N30
\debounceit0|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|comb~0_combout\ = \debounceit0|PB_state~regout\ $ (!\debounceit0|PB_sync_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceit0|PB_state~regout\,
	datad => \debounceit0|PB_sync_1~regout\,
	combout => \debounceit0|comb~0_combout\);

-- Location: LCFF_X63_Y16_N1
\debounceit0|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[0]~16_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(0));

-- Location: LCCOMB_X63_Y16_N2
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

-- Location: LCFF_X63_Y16_N3
\debounceit0|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[1]~18_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(1));

-- Location: LCCOMB_X63_Y16_N4
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

-- Location: LCFF_X63_Y16_N5
\debounceit0|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[2]~20_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(2));

-- Location: LCCOMB_X63_Y16_N6
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

-- Location: LCCOMB_X63_Y16_N8
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

-- Location: LCFF_X63_Y16_N9
\debounceit0|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[4]~24_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(4));

-- Location: LCCOMB_X63_Y16_N10
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

-- Location: LCCOMB_X63_Y16_N14
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

-- Location: LCFF_X63_Y16_N15
\debounceit0|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[7]~30_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(7));

-- Location: LCCOMB_X63_Y16_N18
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

-- Location: LCFF_X63_Y16_N19
\debounceit0|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[9]~34_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(9));

-- Location: LCCOMB_X63_Y16_N22
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

-- Location: LCFF_X63_Y16_N23
\debounceit0|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[11]~38_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(11));

-- Location: LCCOMB_X63_Y16_N24
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

-- Location: LCCOMB_X63_Y16_N26
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

-- Location: LCFF_X63_Y16_N27
\debounceit0|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[13]~42_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(13));

-- Location: LCFF_X63_Y16_N29
\debounceit0|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[14]~44_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(14));

-- Location: LCFF_X63_Y16_N25
\debounceit0|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[12]~40_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(12));

-- Location: LCCOMB_X64_Y16_N18
\debounceit0|PB_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~3_combout\ = (\debounceit0|PB_cnt\(10) & (\debounceit0|PB_cnt\(12) & (\debounceit0|PB_cnt\(13) & \debounceit0|PB_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(10),
	datab => \debounceit0|PB_cnt\(12),
	datac => \debounceit0|PB_cnt\(13),
	datad => \debounceit0|PB_cnt\(11),
	combout => \debounceit0|PB_state~3_combout\);

-- Location: LCCOMB_X64_Y16_N14
\debounceit0|PB_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~0_combout\ = (\debounceit0|PB_cnt\(0) & (\debounceit0|PB_cnt\(1) & (\debounceit0|PB_state~regout\ $ (\debounceit0|PB_sync_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_state~regout\,
	datab => \debounceit0|PB_sync_1~regout\,
	datac => \debounceit0|PB_cnt\(0),
	datad => \debounceit0|PB_cnt\(1),
	combout => \debounceit0|PB_state~0_combout\);

-- Location: LCFF_X63_Y16_N7
\debounceit0|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[3]~22_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(3));

-- Location: LCFF_X63_Y16_N11
\debounceit0|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[5]~26_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(5));

-- Location: LCCOMB_X64_Y16_N26
\debounceit0|PB_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~1_combout\ = (\debounceit0|PB_cnt\(4) & (\debounceit0|PB_cnt\(2) & (\debounceit0|PB_cnt\(3) & \debounceit0|PB_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(4),
	datab => \debounceit0|PB_cnt\(2),
	datac => \debounceit0|PB_cnt\(3),
	datad => \debounceit0|PB_cnt\(5),
	combout => \debounceit0|PB_state~1_combout\);

-- Location: LCCOMB_X64_Y16_N22
\debounceit0|PB_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~4_combout\ = (\debounceit0|PB_state~2_combout\ & (\debounceit0|PB_state~3_combout\ & (\debounceit0|PB_state~0_combout\ & \debounceit0|PB_state~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_state~2_combout\,
	datab => \debounceit0|PB_state~3_combout\,
	datac => \debounceit0|PB_state~0_combout\,
	datad => \debounceit0|PB_state~1_combout\,
	combout => \debounceit0|PB_state~4_combout\);

-- Location: LCCOMB_X64_Y16_N24
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

-- Location: LCFF_X64_Y16_N25
\debounceit0|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_state~regout\);

-- Location: CLKCTRL_G5
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

-- Location: LCCOMB_X37_Y15_N0
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

-- Location: LCCOMB_X38_Y15_N20
\debounceit2|PB_sync_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_sync_0~0_combout\ = !\pushBut~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pushBut~combout\(2),
	combout => \debounceit2|PB_sync_0~0_combout\);

-- Location: LCFF_X38_Y15_N21
\debounceit2|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_sync_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_sync_0~regout\);

-- Location: LCCOMB_X38_Y15_N16
\debounceit2|PB_sync_1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_sync_1~feeder_combout\ = \debounceit2|PB_sync_0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debounceit2|PB_sync_0~regout\,
	combout => \debounceit2|PB_sync_1~feeder_combout\);

-- Location: LCFF_X38_Y15_N17
\debounceit2|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_sync_1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_sync_1~regout\);

-- Location: LCCOMB_X38_Y15_N30
\debounceit2|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|comb~0_combout\ = \debounceit2|PB_state~regout\ $ (!\debounceit2|PB_sync_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceit2|PB_state~regout\,
	datac => \debounceit2|PB_sync_1~regout\,
	combout => \debounceit2|comb~0_combout\);

-- Location: LCFF_X37_Y15_N1
\debounceit2|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[0]~16_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(0));

-- Location: LCCOMB_X37_Y15_N2
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

-- Location: LCFF_X37_Y15_N3
\debounceit2|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[1]~18_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(1));

-- Location: LCCOMB_X37_Y15_N4
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

-- Location: LCFF_X37_Y15_N5
\debounceit2|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[2]~20_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(2));

-- Location: LCCOMB_X37_Y15_N6
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

-- Location: LCCOMB_X37_Y15_N8
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

-- Location: LCFF_X37_Y15_N9
\debounceit2|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[4]~24_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(4));

-- Location: LCCOMB_X37_Y15_N10
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

-- Location: LCCOMB_X37_Y15_N14
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

-- Location: LCFF_X37_Y15_N15
\debounceit2|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[7]~30_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(7));

-- Location: LCCOMB_X37_Y15_N18
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

-- Location: LCFF_X37_Y15_N19
\debounceit2|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[9]~34_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(9));

-- Location: LCCOMB_X37_Y15_N22
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

-- Location: LCFF_X37_Y15_N23
\debounceit2|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[11]~38_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(11));

-- Location: LCCOMB_X37_Y15_N24
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

-- Location: LCCOMB_X37_Y15_N26
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

-- Location: LCFF_X37_Y15_N27
\debounceit2|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[13]~42_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(13));

-- Location: LCFF_X37_Y15_N29
\debounceit2|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[14]~44_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(14));

-- Location: LCFF_X37_Y15_N7
\debounceit2|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[3]~22_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(3));

-- Location: LCFF_X37_Y15_N11
\debounceit2|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[5]~26_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(5));

-- Location: LCCOMB_X38_Y15_N22
\debounceit2|PB_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~1_combout\ = (\debounceit2|PB_cnt\(4) & (\debounceit2|PB_cnt\(2) & (\debounceit2|PB_cnt\(3) & \debounceit2|PB_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(4),
	datab => \debounceit2|PB_cnt\(2),
	datac => \debounceit2|PB_cnt\(3),
	datad => \debounceit2|PB_cnt\(5),
	combout => \debounceit2|PB_state~1_combout\);

-- Location: LCCOMB_X38_Y15_N24
\debounceit2|PB_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~0_combout\ = (\debounceit2|PB_cnt\(0) & (\debounceit2|PB_cnt\(1) & (\debounceit2|PB_sync_1~regout\ $ (\debounceit2|PB_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(0),
	datab => \debounceit2|PB_sync_1~regout\,
	datac => \debounceit2|PB_state~regout\,
	datad => \debounceit2|PB_cnt\(1),
	combout => \debounceit2|PB_state~0_combout\);

-- Location: LCFF_X37_Y15_N25
\debounceit2|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[12]~40_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(12));

-- Location: LCCOMB_X38_Y15_N26
\debounceit2|PB_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~3_combout\ = (\debounceit2|PB_cnt\(10) & (\debounceit2|PB_cnt\(13) & (\debounceit2|PB_cnt\(11) & \debounceit2|PB_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(10),
	datab => \debounceit2|PB_cnt\(13),
	datac => \debounceit2|PB_cnt\(11),
	datad => \debounceit2|PB_cnt\(12),
	combout => \debounceit2|PB_state~3_combout\);

-- Location: LCCOMB_X38_Y15_N28
\debounceit2|PB_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~4_combout\ = (\debounceit2|PB_state~2_combout\ & (\debounceit2|PB_state~1_combout\ & (\debounceit2|PB_state~0_combout\ & \debounceit2|PB_state~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_state~2_combout\,
	datab => \debounceit2|PB_state~1_combout\,
	datac => \debounceit2|PB_state~0_combout\,
	datad => \debounceit2|PB_state~3_combout\,
	combout => \debounceit2|PB_state~4_combout\);

-- Location: LCCOMB_X38_Y15_N14
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

-- Location: LCFF_X38_Y15_N15
\debounceit2|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_state~regout\);

-- Location: LCFF_X38_Y15_N25
\aProcessor|RAND|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \debounceit2|PB_state~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RAND|Q\(0));

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

-- Location: LCCOMB_X57_Y19_N0
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

-- Location: LCCOMB_X58_Y19_N2
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

-- Location: LCFF_X58_Y19_N15
\debounceit1|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	sdata => \debounceit1|PB_sync_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_sync_0~regout\);

-- Location: LCFF_X58_Y19_N3
\debounceit1|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	sdata => \debounceit1|PB_sync_0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_sync_1~regout\);

-- Location: LCCOMB_X58_Y19_N14
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

-- Location: LCFF_X57_Y19_N1
\debounceit1|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[0]~16_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(0));

-- Location: LCCOMB_X57_Y19_N2
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

-- Location: LCFF_X57_Y19_N3
\debounceit1|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[1]~18_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(1));

-- Location: LCCOMB_X57_Y19_N4
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

-- Location: LCFF_X57_Y19_N5
\debounceit1|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[2]~20_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(2));

-- Location: LCCOMB_X57_Y19_N6
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

-- Location: LCCOMB_X57_Y19_N8
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

-- Location: LCFF_X57_Y19_N9
\debounceit1|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[4]~24_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(4));

-- Location: LCCOMB_X57_Y19_N10
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

-- Location: LCCOMB_X57_Y19_N14
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

-- Location: LCFF_X57_Y19_N15
\debounceit1|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[7]~30_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(7));

-- Location: LCCOMB_X57_Y19_N18
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

-- Location: LCFF_X57_Y19_N19
\debounceit1|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[9]~34_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(9));

-- Location: LCCOMB_X57_Y19_N22
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

-- Location: LCFF_X57_Y19_N23
\debounceit1|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[11]~38_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(11));

-- Location: LCCOMB_X57_Y19_N24
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

-- Location: LCCOMB_X57_Y19_N26
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

-- Location: LCFF_X57_Y19_N27
\debounceit1|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[13]~42_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(13));

-- Location: LCFF_X57_Y19_N29
\debounceit1|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[14]~44_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(14));

-- Location: LCFF_X57_Y19_N7
\debounceit1|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[3]~22_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(3));

-- Location: LCFF_X57_Y19_N11
\debounceit1|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[5]~26_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(5));

-- Location: LCCOMB_X58_Y19_N22
\debounceit1|PB_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~1_combout\ = (\debounceit1|PB_cnt\(4) & (\debounceit1|PB_cnt\(2) & (\debounceit1|PB_cnt\(3) & \debounceit1|PB_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(4),
	datab => \debounceit1|PB_cnt\(2),
	datac => \debounceit1|PB_cnt\(3),
	datad => \debounceit1|PB_cnt\(5),
	combout => \debounceit1|PB_state~1_combout\);

-- Location: LCCOMB_X58_Y19_N24
\debounceit1|PB_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~0_combout\ = (\debounceit1|PB_cnt\(1) & (\debounceit1|PB_cnt\(0) & (\debounceit1|PB_sync_1~regout\ $ (\debounceit1|PB_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(1),
	datab => \debounceit1|PB_sync_1~regout\,
	datac => \debounceit1|PB_cnt\(0),
	datad => \debounceit1|PB_state~regout\,
	combout => \debounceit1|PB_state~0_combout\);

-- Location: LCFF_X57_Y19_N25
\debounceit1|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[12]~40_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(12));

-- Location: LCCOMB_X58_Y19_N6
\debounceit1|PB_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~3_combout\ = (\debounceit1|PB_cnt\(10) & (\debounceit1|PB_cnt\(12) & (\debounceit1|PB_cnt\(11) & \debounceit1|PB_cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(10),
	datab => \debounceit1|PB_cnt\(12),
	datac => \debounceit1|PB_cnt\(11),
	datad => \debounceit1|PB_cnt\(13),
	combout => \debounceit1|PB_state~3_combout\);

-- Location: LCCOMB_X58_Y19_N0
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

-- Location: LCCOMB_X58_Y19_N12
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

-- Location: LCFF_X58_Y19_N13
\debounceit1|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_state~regout\);

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

-- Location: LCCOMB_X50_Y7_N28
\aProcessor|displayAll|HexDisplay32Bits[2]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~140_combout\ = (\switch~combout\(4) & ((\aProcessor|displayAll|HexDisplay32Bits[2]~12_combout\) # ((\switch~combout\(3)) # (\switch~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[2]~12_combout\,
	datab => \switch~combout\(3),
	datac => \switch~combout\(4),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~140_combout\);

-- Location: LCCOMB_X50_Y7_N4
\aProcessor|displayAll|HexDisplay32Bits[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ = (\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[2]~140_combout\) # ((\aProcessor|displayAll|Mux29~4_combout\ & !\switch~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux29~4_combout\,
	datab => \switch~combout\(4),
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[2]~140_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\);

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

-- Location: LCCOMB_X53_Y8_N0
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

-- Location: LCCOMB_X55_Y8_N0
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

-- Location: LCCOMB_X58_Y8_N6
\debounceit3|PB_sync_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_sync_0~0_combout\ = !\pushBut~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pushBut~combout\(3),
	combout => \debounceit3|PB_sync_0~0_combout\);

-- Location: LCFF_X58_Y8_N7
\debounceit3|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_sync_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_sync_0~regout\);

-- Location: LCFF_X54_Y8_N27
\debounceit3|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	sdata => \debounceit3|PB_sync_0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_sync_1~regout\);

-- Location: LCCOMB_X54_Y8_N30
\debounceit3|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|comb~0_combout\ = \debounceit3|PB_state~regout\ $ (!\debounceit3|PB_sync_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceit3|PB_state~regout\,
	datad => \debounceit3|PB_sync_1~regout\,
	combout => \debounceit3|comb~0_combout\);

-- Location: LCFF_X55_Y8_N1
\debounceit3|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[0]~16_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(0));

-- Location: LCCOMB_X55_Y8_N2
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

-- Location: LCFF_X55_Y8_N3
\debounceit3|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[1]~18_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(1));

-- Location: LCCOMB_X55_Y8_N4
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

-- Location: LCFF_X55_Y8_N5
\debounceit3|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[2]~20_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(2));

-- Location: LCCOMB_X55_Y8_N6
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

-- Location: LCCOMB_X55_Y8_N8
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

-- Location: LCFF_X55_Y8_N9
\debounceit3|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[4]~24_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(4));

-- Location: LCCOMB_X55_Y8_N10
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

-- Location: LCCOMB_X55_Y8_N12
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

-- Location: LCCOMB_X55_Y8_N14
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

-- Location: LCFF_X55_Y8_N15
\debounceit3|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[7]~30_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(7));

-- Location: LCCOMB_X55_Y8_N18
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

-- Location: LCFF_X55_Y8_N19
\debounceit3|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[9]~34_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(9));

-- Location: LCCOMB_X55_Y8_N22
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

-- Location: LCFF_X55_Y8_N23
\debounceit3|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[11]~38_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(11));

-- Location: LCCOMB_X55_Y8_N26
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

-- Location: LCFF_X55_Y8_N27
\debounceit3|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[13]~42_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(13));

-- Location: LCFF_X55_Y8_N29
\debounceit3|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[14]~44_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(14));

-- Location: LCFF_X55_Y8_N11
\debounceit3|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[5]~26_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(5));

-- Location: LCFF_X55_Y8_N7
\debounceit3|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[3]~22_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(3));

-- Location: LCCOMB_X54_Y8_N22
\debounceit3|PB_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_state~1_combout\ = (\debounceit3|PB_cnt\(2) & (\debounceit3|PB_cnt\(4) & (\debounceit3|PB_cnt\(5) & \debounceit3|PB_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(2),
	datab => \debounceit3|PB_cnt\(4),
	datac => \debounceit3|PB_cnt\(5),
	datad => \debounceit3|PB_cnt\(3),
	combout => \debounceit3|PB_state~1_combout\);

-- Location: LCCOMB_X54_Y8_N4
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

-- Location: LCFF_X55_Y8_N13
\debounceit3|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[6]~28_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(6));

-- Location: LCCOMB_X54_Y8_N12
\debounceit3|PB_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_state~2_combout\ = (\debounceit3|PB_cnt\(8) & (\debounceit3|PB_cnt\(6) & (\debounceit3|PB_cnt\(7) & \debounceit3|PB_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(8),
	datab => \debounceit3|PB_cnt\(6),
	datac => \debounceit3|PB_cnt\(7),
	datad => \debounceit3|PB_cnt\(9),
	combout => \debounceit3|PB_state~2_combout\);

-- Location: LCCOMB_X54_Y8_N28
\debounceit3|PB_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_state~4_combout\ = (\debounceit3|PB_state~3_combout\ & (\debounceit3|PB_state~1_combout\ & (\debounceit3|PB_state~0_combout\ & \debounceit3|PB_state~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_state~3_combout\,
	datab => \debounceit3|PB_state~1_combout\,
	datac => \debounceit3|PB_state~0_combout\,
	datad => \debounceit3|PB_state~2_combout\,
	combout => \debounceit3|PB_state~4_combout\);

-- Location: LCCOMB_X54_Y8_N0
\debounceit3|PB_state~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_state~5_combout\ = \debounceit3|PB_state~regout\ $ (((\debounceit3|PB_cnt\(15) & (\debounceit3|PB_cnt\(14) & \debounceit3|PB_state~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(15),
	datab => \debounceit3|PB_cnt\(14),
	datac => \debounceit3|PB_state~regout\,
	datad => \debounceit3|PB_state~4_combout\,
	combout => \debounceit3|PB_state~5_combout\);

-- Location: LCFF_X54_Y8_N1
\debounceit3|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_state~regout\);

-- Location: LCCOMB_X54_Y8_N18
\aProcessor|InstAddGen|PC~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC~34_combout\ = (\aProcessor|CountClk|ClockCount\(2)) # (\debounceit3|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CountClk|ClockCount\(2),
	datad => \debounceit3|PB_state~regout\,
	combout => \aProcessor|InstAddGen|PC~34_combout\);

-- Location: LCFF_X53_Y8_N1
\aProcessor|InstAddGen|PC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[0]~32_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(0));

-- Location: LCCOMB_X53_Y8_N2
\aProcessor|InstAddGen|PC[1]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[1]~35_combout\ = (\aProcessor|InstAddGen|PC\(1) & (!\aProcessor|InstAddGen|PC[0]~33\)) # (!\aProcessor|InstAddGen|PC\(1) & ((\aProcessor|InstAddGen|PC[0]~33\) # (GND)))
-- \aProcessor|InstAddGen|PC[1]~36\ = CARRY((!\aProcessor|InstAddGen|PC[0]~33\) # (!\aProcessor|InstAddGen|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(1),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[0]~33\,
	combout => \aProcessor|InstAddGen|PC[1]~35_combout\,
	cout => \aProcessor|InstAddGen|PC[1]~36\);

-- Location: LCFF_X53_Y8_N3
\aProcessor|InstAddGen|PC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[1]~35_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(1));

-- Location: LCCOMB_X53_Y8_N4
\aProcessor|InstAddGen|PC[2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[2]~37_combout\ = (\aProcessor|InstAddGen|PC\(2) & (\aProcessor|InstAddGen|PC[1]~36\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(2) & (!\aProcessor|InstAddGen|PC[1]~36\ & VCC))
-- \aProcessor|InstAddGen|PC[2]~38\ = CARRY((\aProcessor|InstAddGen|PC\(2) & !\aProcessor|InstAddGen|PC[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(2),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[1]~36\,
	combout => \aProcessor|InstAddGen|PC[2]~37_combout\,
	cout => \aProcessor|InstAddGen|PC[2]~38\);

-- Location: LCFF_X53_Y8_N5
\aProcessor|InstAddGen|PC[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[2]~37_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(2));

-- Location: LCCOMB_X53_Y8_N6
\aProcessor|InstAddGen|PC[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[3]~39_combout\ = (\aProcessor|InstAddGen|PC\(3) & (!\aProcessor|InstAddGen|PC[2]~38\)) # (!\aProcessor|InstAddGen|PC\(3) & ((\aProcessor|InstAddGen|PC[2]~38\) # (GND)))
-- \aProcessor|InstAddGen|PC[3]~40\ = CARRY((!\aProcessor|InstAddGen|PC[2]~38\) # (!\aProcessor|InstAddGen|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(3),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[2]~38\,
	combout => \aProcessor|InstAddGen|PC[3]~39_combout\,
	cout => \aProcessor|InstAddGen|PC[3]~40\);

-- Location: LCFF_X53_Y8_N7
\aProcessor|InstAddGen|PC[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[3]~39_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(3));

-- Location: LCCOMB_X53_Y8_N8
\aProcessor|InstAddGen|PC[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[4]~41_combout\ = (\aProcessor|InstAddGen|PC\(4) & (\aProcessor|InstAddGen|PC[3]~40\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(4) & (!\aProcessor|InstAddGen|PC[3]~40\ & VCC))
-- \aProcessor|InstAddGen|PC[4]~42\ = CARRY((\aProcessor|InstAddGen|PC\(4) & !\aProcessor|InstAddGen|PC[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(4),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[3]~40\,
	combout => \aProcessor|InstAddGen|PC[4]~41_combout\,
	cout => \aProcessor|InstAddGen|PC[4]~42\);

-- Location: LCFF_X53_Y8_N9
\aProcessor|InstAddGen|PC[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[4]~41_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(4));

-- Location: LCCOMB_X53_Y8_N10
\aProcessor|InstAddGen|PC[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[5]~43_combout\ = (\aProcessor|InstAddGen|PC\(5) & (!\aProcessor|InstAddGen|PC[4]~42\)) # (!\aProcessor|InstAddGen|PC\(5) & ((\aProcessor|InstAddGen|PC[4]~42\) # (GND)))
-- \aProcessor|InstAddGen|PC[5]~44\ = CARRY((!\aProcessor|InstAddGen|PC[4]~42\) # (!\aProcessor|InstAddGen|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(5),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[4]~42\,
	combout => \aProcessor|InstAddGen|PC[5]~43_combout\,
	cout => \aProcessor|InstAddGen|PC[5]~44\);

-- Location: LCFF_X53_Y8_N11
\aProcessor|InstAddGen|PC[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[5]~43_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(5));

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

-- Location: LCCOMB_X51_Y7_N28
\aProcessor|DecodeInst|InstructionFormat[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|InstructionFormat[0]~0_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(2)) # ((\InstructionROM|altsyncram_component|auto_generated|q_a\(3)) # ((\InstructionROM|altsyncram_component|auto_generated|q_a\(4)) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(2),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(3),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(4),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(1),
	combout => \aProcessor|DecodeInst|InstructionFormat[0]~0_combout\);

-- Location: LCCOMB_X51_Y7_N14
\aProcessor|DecodeInst|InstructionFormat[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|InstructionFormat[0]~1_combout\ = (\aProcessor|DecodeInst|InstructionFormat[0]~0_combout\) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(5),
	datad => \aProcessor|DecodeInst|InstructionFormat[0]~0_combout\,
	combout => \aProcessor|DecodeInst|InstructionFormat[0]~1_combout\);

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

-- Location: LCCOMB_X51_Y7_N10
\aProcessor|displayAll|HexDisplay32Bits[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[0]~7_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[0]~6_combout\) # ((!\aProcessor|DecodeInst|InstructionFormat[0]~1_combout\ & (!\switch~combout\(0) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[0]~6_combout\,
	datab => \aProcessor|DecodeInst|InstructionFormat[0]~1_combout\,
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[0]~7_combout\);

-- Location: LCFF_X50_Y8_N1
\aProcessor|InstAddGen|PC_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(0));

-- Location: LCCOMB_X50_Y8_N0
\aProcessor|displayAll|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux29~0_combout\ = (\switch~combout\(1) & (((\switch~combout\(0))))) # (!\switch~combout\(1) & ((\switch~combout\(0) & ((\aProcessor|InstAddGen|PC_temp\(0)))) # (!\switch~combout\(0) & 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(0),
	datac => \aProcessor|InstAddGen|PC_temp\(0),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux29~0_combout\);

-- Location: LCCOMB_X54_Y8_N24
\aProcessor|CountClk|ClockCount[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|CountClk|ClockCount[1]~2_combout\ = \aProcessor|CountClk|ClockCount\(0) $ (\aProcessor|CountClk|ClockCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CountClk|ClockCount\(0),
	datac => \aProcessor|CountClk|ClockCount\(1),
	combout => \aProcessor|CountClk|ClockCount[1]~2_combout\);

-- Location: LCFF_X54_Y8_N25
\aProcessor|CountClk|ClockCount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|CountClk|ClockCount[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|CountClk|ClockCount\(1));

-- Location: LCCOMB_X54_Y8_N6
\aProcessor|CountClk|ClockCount~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|CountClk|ClockCount~1_combout\ = (\aProcessor|CountClk|ClockCount\(0) & (\aProcessor|CountClk|ClockCount\(2) $ (\aProcessor|CountClk|ClockCount\(1)))) # (!\aProcessor|CountClk|ClockCount\(0) & (\aProcessor|CountClk|ClockCount\(2) & 
-- \aProcessor|CountClk|ClockCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CountClk|ClockCount\(0),
	datac => \aProcessor|CountClk|ClockCount\(2),
	datad => \aProcessor|CountClk|ClockCount\(1),
	combout => \aProcessor|CountClk|ClockCount~1_combout\);

-- Location: LCFF_X54_Y8_N7
\aProcessor|CountClk|ClockCount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|CountClk|ClockCount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|CountClk|ClockCount\(2));

-- Location: LCCOMB_X50_Y8_N10
\aProcessor|displayAll|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux29~1_combout\ = (\switch~combout\(0) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(0) & (\switch~combout\(1)))) # (!\switch~combout\(0) & (((!\switch~combout\(1) & \aProcessor|CountClk|ClockCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(0),
	datac => \switch~combout\(1),
	datad => \aProcessor|CountClk|ClockCount\(2),
	combout => \aProcessor|displayAll|Mux29~1_combout\);

-- Location: LCCOMB_X50_Y7_N6
\aProcessor|displayAll|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux31~2_combout\ = (\aProcessor|displayAll|Mux31~1_combout\ & (((\aProcessor|displayAll|Mux29~1_combout\)) # (!\switch~combout\(3)))) # (!\aProcessor|displayAll|Mux31~1_combout\ & (\switch~combout\(3) & 
-- (\aProcessor|displayAll|Mux29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux31~1_combout\,
	datab => \switch~combout\(3),
	datac => \aProcessor|displayAll|Mux29~0_combout\,
	datad => \aProcessor|displayAll|Mux29~1_combout\,
	combout => \aProcessor|displayAll|Mux31~2_combout\);

-- Location: LCCOMB_X50_Y7_N24
\aProcessor|displayAll|HexDisplay32Bits[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[0]~8_combout\ = (\switch~combout\(4) & (\aProcessor|displayAll|Mux27~0_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[0]~7_combout\))) # (!\switch~combout\(4) & (((\aProcessor|displayAll|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~0_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[0]~7_combout\,
	datac => \switch~combout\(4),
	datad => \aProcessor|displayAll|Mux31~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[0]~8_combout\);

-- Location: LCCOMB_X49_Y7_N0
\aProcessor|displayAll|HexDisplay32Bits[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[0]~8_combout\ & \debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|displayAll|HexDisplay32Bits[0]~8_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\);

-- Location: LCCOMB_X54_Y7_N0
\aProcessor|displayAll|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux23~0_combout\ = (!\switch~combout\(0) & !\switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux23~0_combout\);

-- Location: LCCOMB_X50_Y7_N10
\aProcessor|displayAll|HexDisplay32Bits[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\ = (!\switch~combout\(3) & (!\switch~combout\(2) & ((!\switch~combout\(1)) # (!\switch~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(3),
	datac => \switch~combout\(1),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\);

-- Location: LCCOMB_X50_Y7_N8
\aProcessor|displayAll|HexDisplay32Bits[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~15_combout\ = (\switch~combout\(4) & (((\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(3) & \aProcessor|displayAll|Mux23~0_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(3),
	datab => \switch~combout\(4),
	datac => \aProcessor|displayAll|Mux23~0_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~15_combout\);

-- Location: LCCOMB_X53_Y9_N28
\aProcessor|displayAll|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~1_combout\ = (\switch~combout\(3) & ((\switch~combout\(1) & (\switch~combout\(0) & \switch~combout\(2))) # (!\switch~combout\(1) & (!\switch~combout\(0) & !\switch~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux27~1_combout\);

-- Location: LCCOMB_X49_Y7_N22
\aProcessor|displayAll|HexDisplay32Bits[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~16_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[3]~15_combout\) # ((\InstructionROM|altsyncram_component|auto_generated|q_a\(3) & (!\switch~combout\(4) & \aProcessor|displayAll|Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(3),
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~15_combout\,
	datac => \switch~combout\(4),
	datad => \aProcessor|displayAll|Mux27~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~16_combout\);

-- Location: LCCOMB_X49_Y7_N20
\aProcessor|displayAll|HexDisplay32Bits[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\ = (\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[3]~16_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[3]~20_combout\ & !\switch~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[3]~20_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~16_combout\,
	datac => \switch~combout\(4),
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\);

-- Location: CLKCTRL_G12
\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\);

-- Location: LCCOMB_X51_Y8_N28
\aProcessor|DecodeInst|Rdst[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|Rdst\(1) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(18)))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- (\aProcessor|DecodeInst|Rdst\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|Rdst\(1),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(18),
	datad => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	combout => \aProcessor|DecodeInst|Rdst\(1));

-- Location: LCFF_X51_Y7_N31
\aProcessor|InstAddGen|PC_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(1));

-- Location: LCCOMB_X51_Y7_N30
\aProcessor|displayAll|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux30~0_combout\ = (\switch~combout\(2) & (\aProcessor|DecodeInst|Rdst\(1))) # (!\switch~combout\(2) & ((\aProcessor|InstAddGen|PC_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|Rdst\(1),
	datac => \aProcessor|InstAddGen|PC_temp\(1),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux30~0_combout\);

-- Location: LCCOMB_X51_Y7_N6
\aProcessor|displayAll|Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux30~3_combout\ = (\switch~combout\(1) & (((!\switch~combout\(2)) # (!\switch~combout\(3))) # (!\switch~combout\(0)))) # (!\switch~combout\(1) & ((\switch~combout\(2)) # ((\switch~combout\(0) & \switch~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(0),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux30~3_combout\);

-- Location: LCCOMB_X51_Y7_N22
\aProcessor|displayAll|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux30~1_combout\ = (\switch~combout\(3) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(1)))) # (!\switch~combout\(3) & (\aProcessor|InstAddGen|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datac => \aProcessor|InstAddGen|PC\(1),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(1),
	combout => \aProcessor|displayAll|Mux30~1_combout\);

-- Location: LCCOMB_X51_Y7_N18
\aProcessor|displayAll|Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux30~4_combout\ = (\aProcessor|displayAll|Mux30~2_combout\ & ((\aProcessor|displayAll|Mux30~0_combout\) # ((!\aProcessor|displayAll|Mux30~3_combout\)))) # (!\aProcessor|displayAll|Mux30~2_combout\ & 
-- (((!\aProcessor|displayAll|Mux30~3_combout\ & \aProcessor|displayAll|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux30~2_combout\,
	datab => \aProcessor|displayAll|Mux30~0_combout\,
	datac => \aProcessor|displayAll|Mux30~3_combout\,
	datad => \aProcessor|displayAll|Mux30~1_combout\,
	combout => \aProcessor|displayAll|Mux30~4_combout\);

-- Location: LCCOMB_X50_Y7_N30
\aProcessor|displayAll|HexDisplay32Bits[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\ = (\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~139_combout\) # ((!\switch~combout\(4) & \aProcessor|displayAll|Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~139_combout\,
	datab => \switch~combout\(4),
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|Mux30~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\);

-- Location: LCCOMB_X49_Y7_N18
\uHEX0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\,
	combout => \uHEX0|WideOr6~0_combout\);

-- Location: LCCOMB_X49_Y7_N24
\uHEX0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\,
	combout => \uHEX0|WideOr5~0_combout\);

-- Location: LCCOMB_X49_Y7_N10
\uHEX0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\,
	combout => \uHEX0|WideOr4~0_combout\);

-- Location: LCCOMB_X49_Y7_N12
\uHEX0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\ & \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\,
	combout => \uHEX0|WideOr3~0_combout\);

-- Location: LCCOMB_X49_Y7_N26
\uHEX0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\,
	combout => \uHEX0|WideOr2~0_combout\);

-- Location: LCCOMB_X49_Y7_N8
\uHEX0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\) # 
-- (\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\,
	combout => \uHEX0|WideOr1~0_combout\);

-- Location: LCCOMB_X49_Y7_N2
\uHEX0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[2]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[0]~9_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~21_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\,
	combout => \uHEX0|WideOr0~0_combout\);

-- Location: LCCOMB_X56_Y8_N14
\aProcessor|displayAll|Mux16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~5_combout\ = (\aProcessor|displayAll|Mux16~4_combout\) # ((\switch~combout\(0) & \switch~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~4_combout\,
	datab => \switch~combout\(0),
	datac => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux16~5_combout\);

-- Location: LCCOMB_X56_Y8_N8
\aProcessor|displayAll|HexDisplay32Bits[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~34_combout\ = (!\switch~combout\(2)) # (!\switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datac => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~34_combout\);

-- Location: LCCOMB_X51_Y7_N4
\aProcessor|displayAll|Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~3_combout\ = (!\switch~combout\(1) & (!\switch~combout\(0) & (\switch~combout\(3) & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(0),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux16~3_combout\);

-- Location: LCCOMB_X51_Y7_N0
\aProcessor|displayAll|Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~4_combout\ = (\aProcessor|displayAll|Mux16~3_combout\) # ((\aProcessor|displayAll|Mux16~0_combout\ & ((\aProcessor|DecodeInst|InstructionFormat[0]~0_combout\) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~0_combout\,
	datab => \aProcessor|displayAll|Mux16~3_combout\,
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(5),
	datad => \aProcessor|DecodeInst|InstructionFormat[0]~0_combout\,
	combout => \aProcessor|displayAll|Mux16~4_combout\);

-- Location: LCCOMB_X56_Y8_N10
\aProcessor|displayAll|HexDisplay32Bits[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~34_combout\ & (!\aProcessor|displayAll|Mux16~4_combout\ & ((\switch~combout\(3)) # (!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|displayAll|HexDisplay32Bits[8]~34_combout\,
	datac => \switch~combout\(1),
	datad => \aProcessor|displayAll|Mux16~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\);

-- Location: LCCOMB_X56_Y8_N30
\aProcessor|displayAll|HexDisplay32Bits[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~40_combout\ = (\aProcessor|displayAll|Mux24~1_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\) # ((\InstructionROM|altsyncram_component|auto_generated|q_a\(7) & 
-- \aProcessor|displayAll|Mux16~5_combout\)))) # (!\aProcessor|displayAll|Mux24~1_combout\ & (\InstructionROM|altsyncram_component|auto_generated|q_a\(7) & (\aProcessor|displayAll|Mux16~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux24~1_combout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(7),
	datac => \aProcessor|displayAll|Mux16~5_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~40_combout\);

-- Location: LCCOMB_X54_Y7_N16
\aProcessor|displayAll|HexDisplay32Bits[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\ = (!\switch~combout\(4) & ((\aProcessor|displayAll|Mux16~4_combout\) # (!\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datac => \aProcessor|displayAll|Mux16~4_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\);

-- Location: LCCOMB_X55_Y7_N2
\aProcessor|displayAll|HexDisplay32Bits[7]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[7]~39_combout\) # (((\aProcessor|displayAll|HexDisplay32Bits[7]~40_combout\ & \aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\)) # 
-- (!\debounceit1|PB_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[7]~39_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[7]~40_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\);

-- Location: LCCOMB_X51_Y8_N14
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(4) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(4))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(4),
	datac => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(10),
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(4));

-- Location: LCCOMB_X54_Y9_N28
\aProcessor|displayAll|HexDisplay32Bits[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[4]~22_combout\ = (\switch~combout\(4) & (((\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(4) & \aProcessor|displayAll|Mux23~0_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\,
	datac => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(4),
	datad => \aProcessor|displayAll|Mux23~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[4]~22_combout\);

-- Location: LCCOMB_X54_Y9_N0
\aProcessor|displayAll|HexDisplay32Bits[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[4]~22_combout\) # (((\aProcessor|displayAll|HexDisplay32Bits[4]~25_combout\ & !\switch~combout\(4))) # (!\debounceit1|PB_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[4]~25_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[4]~22_combout\,
	datac => \switch~combout\(4),
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\);

-- Location: LCFF_X53_Y9_N17
\aProcessor|InstAddGen|PC_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(5));

-- Location: LCCOMB_X53_Y9_N16
\aProcessor|displayAll|HexDisplay32Bits[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~29_combout\ = (\switch~combout\(0) & (((\aProcessor|InstAddGen|PC_temp\(5)) # (!\switch~combout\(3))))) # (!\switch~combout\(0) & (\aProcessor|InstAddGen|PC\(5) & ((!\switch~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|InstAddGen|PC\(5),
	datac => \aProcessor|InstAddGen|PC_temp\(5),
	datad => \switch~combout\(3),
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~29_combout\);

-- Location: LCCOMB_X54_Y9_N4
\aProcessor|displayAll|HexDisplay32Bits[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~30_combout\ = (!\switch~combout\(4) & ((\aProcessor|displayAll|HexDisplay32Bits[5]~28_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[5]~29_combout\ & !\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[5]~28_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[5]~29_combout\,
	datac => \switch~combout\(4),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~30_combout\);

-- Location: LCCOMB_X51_Y8_N4
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(5) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(5))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(5),
	datac => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(11),
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(5));

-- Location: LCCOMB_X54_Y9_N6
\aProcessor|displayAll|HexDisplay32Bits[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~31_combout\ = (!\switch~combout\(3) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(5) & (\switch~combout\(4) & \aProcessor|displayAll|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(5),
	datac => \switch~combout\(4),
	datad => \aProcessor|displayAll|Mux23~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~31_combout\);

-- Location: LCCOMB_X54_Y9_N8
\aProcessor|displayAll|HexDisplay32Bits[5]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[5]~27_combout\) # ((!\switch~combout\(2) & ((\aProcessor|displayAll|HexDisplay32Bits[5]~30_combout\) # 
-- (\aProcessor|displayAll|HexDisplay32Bits[5]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[5]~27_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[5]~30_combout\,
	datac => \switch~combout\(2),
	datad => \aProcessor|displayAll|HexDisplay32Bits[5]~31_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\);

-- Location: LCCOMB_X53_Y9_N6
\aProcessor|displayAll|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~1_combout\ = (\switch~combout\(3)) # ((!\switch~combout\(0) & !\switch~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux16~1_combout\);

-- Location: LCCOMB_X53_Y8_N12
\aProcessor|InstAddGen|PC[6]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[6]~45_combout\ = (\aProcessor|InstAddGen|PC\(6) & (\aProcessor|InstAddGen|PC[5]~44\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(6) & (!\aProcessor|InstAddGen|PC[5]~44\ & VCC))
-- \aProcessor|InstAddGen|PC[6]~46\ = CARRY((\aProcessor|InstAddGen|PC\(6) & !\aProcessor|InstAddGen|PC[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(6),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[5]~44\,
	combout => \aProcessor|InstAddGen|PC[6]~45_combout\,
	cout => \aProcessor|InstAddGen|PC[6]~46\);

-- Location: LCFF_X53_Y8_N13
\aProcessor|InstAddGen|PC[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[6]~45_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(6));

-- Location: LCCOMB_X56_Y8_N2
\aProcessor|displayAll|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~2_combout\ = (\switch~combout\(3)) # ((\switch~combout\(1) & \switch~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datac => \switch~combout\(1),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux16~2_combout\);

-- Location: LCCOMB_X56_Y8_N28
\aProcessor|displayAll|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux25~1_combout\ = (\aProcessor|displayAll|Mux16~1_combout\ & ((\aProcessor|displayAll|Mux16~2_combout\ & (\aProcessor|displayAll|Mux25~0_combout\)) # (!\aProcessor|displayAll|Mux16~2_combout\ & ((\aProcessor|InstAddGen|PC\(6)))))) 
-- # (!\aProcessor|displayAll|Mux16~1_combout\ & (((!\aProcessor|displayAll|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux25~0_combout\,
	datab => \aProcessor|displayAll|Mux16~1_combout\,
	datac => \aProcessor|InstAddGen|PC\(6),
	datad => \aProcessor|displayAll|Mux16~2_combout\,
	combout => \aProcessor|displayAll|Mux25~1_combout\);

-- Location: LCCOMB_X56_Y8_N12
\aProcessor|displayAll|HexDisplay32Bits[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~36_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & ((\aProcessor|displayAll|Mux25~1_combout\) # ((\aProcessor|displayAll|Mux16~5_combout\ & 
-- \InstructionROM|altsyncram_component|auto_generated|q_a\(6))))) # (!\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & (((\aProcessor|displayAll|Mux16~5_combout\ & \InstructionROM|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\,
	datab => \aProcessor|displayAll|Mux25~1_combout\,
	datac => \aProcessor|displayAll|Mux16~5_combout\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(6),
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~36_combout\);

-- Location: LCCOMB_X55_Y7_N12
\aProcessor|displayAll|HexDisplay32Bits[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[6]~33_combout\) # (((\aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\ & \aProcessor|displayAll|HexDisplay32Bits[6]~36_combout\)) # 
-- (!\debounceit1|PB_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[6]~33_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~36_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\);

-- Location: LCCOMB_X54_Y9_N18
\uHEX1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\,
	combout => \uHEX1|WideOr6~0_combout\);

-- Location: LCCOMB_X54_Y9_N16
\uHEX1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\,
	combout => \uHEX1|WideOr5~0_combout\);

-- Location: LCCOMB_X54_Y9_N22
\uHEX1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\,
	combout => \uHEX1|WideOr4~0_combout\);

-- Location: LCCOMB_X54_Y9_N20
\uHEX1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\ $ (!\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\ & \aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\,
	combout => \uHEX1|WideOr3~0_combout\);

-- Location: LCCOMB_X54_Y9_N14
\uHEX1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\,
	combout => \uHEX1|WideOr2~0_combout\);

-- Location: LCCOMB_X54_Y9_N24
\uHEX1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ $ (((\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\,
	combout => \uHEX1|WideOr1~0_combout\);

-- Location: LCCOMB_X54_Y9_N30
\uHEX1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[7]~41_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[4]~26_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~32_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~38_combout\,
	combout => \uHEX1|WideOr0~0_combout\);

-- Location: LCCOMB_X53_Y8_N14
\aProcessor|InstAddGen|PC[7]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[7]~47_combout\ = (\aProcessor|InstAddGen|PC\(7) & (!\aProcessor|InstAddGen|PC[6]~46\)) # (!\aProcessor|InstAddGen|PC\(7) & ((\aProcessor|InstAddGen|PC[6]~46\) # (GND)))
-- \aProcessor|InstAddGen|PC[7]~48\ = CARRY((!\aProcessor|InstAddGen|PC[6]~46\) # (!\aProcessor|InstAddGen|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(7),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[6]~46\,
	combout => \aProcessor|InstAddGen|PC[7]~47_combout\,
	cout => \aProcessor|InstAddGen|PC[7]~48\);

-- Location: LCFF_X53_Y8_N15
\aProcessor|InstAddGen|PC[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[7]~47_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(7));

-- Location: LCCOMB_X53_Y8_N18
\aProcessor|InstAddGen|PC[9]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[9]~51_combout\ = (\aProcessor|InstAddGen|PC\(9) & (!\aProcessor|InstAddGen|PC[8]~50\)) # (!\aProcessor|InstAddGen|PC\(9) & ((\aProcessor|InstAddGen|PC[8]~50\) # (GND)))
-- \aProcessor|InstAddGen|PC[9]~52\ = CARRY((!\aProcessor|InstAddGen|PC[8]~50\) # (!\aProcessor|InstAddGen|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(9),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[8]~50\,
	combout => \aProcessor|InstAddGen|PC[9]~51_combout\,
	cout => \aProcessor|InstAddGen|PC[9]~52\);

-- Location: LCFF_X53_Y8_N19
\aProcessor|InstAddGen|PC[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[9]~51_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(9));

-- Location: LCFF_X57_Y8_N27
\aProcessor|InstAddGen|PC_temp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(9));

-- Location: LCCOMB_X57_Y8_N26
\aProcessor|displayAll|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux22~0_combout\ = (\aProcessor|InstAddGen|PC_temp\(9) & !\switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aProcessor|InstAddGen|PC_temp\(9),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux22~0_combout\);

-- Location: LCCOMB_X57_Y8_N8
\aProcessor|displayAll|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux22~1_combout\ = (\aProcessor|displayAll|Mux16~2_combout\ & (\aProcessor|displayAll|Mux16~1_combout\ & ((\aProcessor|displayAll|Mux22~0_combout\)))) # (!\aProcessor|displayAll|Mux16~2_combout\ & (((\aProcessor|InstAddGen|PC\(9))) 
-- # (!\aProcessor|displayAll|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~2_combout\,
	datab => \aProcessor|displayAll|Mux16~1_combout\,
	datac => \aProcessor|InstAddGen|PC\(9),
	datad => \aProcessor|displayAll|Mux22~0_combout\,
	combout => \aProcessor|displayAll|Mux22~1_combout\);

-- Location: LCCOMB_X58_Y8_N30
\aProcessor|displayAll|HexDisplay32Bits[9]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~46_combout\ = (\aProcessor|displayAll|Mux16~5_combout\ & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(9)) # ((\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & 
-- \aProcessor|displayAll|Mux22~1_combout\)))) # (!\aProcessor|displayAll|Mux16~5_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & ((\aProcessor|displayAll|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~5_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\,
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(9),
	datad => \aProcessor|displayAll|Mux22~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~46_combout\);

-- Location: LCCOMB_X51_Y8_N30
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(9) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(9))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(9),
	datac => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(15),
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(9));

-- Location: LCCOMB_X50_Y8_N26
\aProcessor|displayAll|HexDisplay32Bits[9]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~45_combout\ = (\switch~combout\(4) & (((\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(9) & \aProcessor|displayAll|Mux23~0_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(9),
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\,
	datad => \aProcessor|displayAll|Mux23~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~45_combout\);

-- Location: LCCOMB_X58_Y8_N24
\aProcessor|displayAll|HexDisplay32Bits[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~45_combout\) # (((\aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\ & \aProcessor|displayAll|HexDisplay32Bits[9]~46_combout\)) # 
-- (!\debounceit1|PB_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[9]~46_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[9]~45_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\);

-- Location: LCCOMB_X53_Y8_N20
\aProcessor|InstAddGen|PC[10]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[10]~53_combout\ = (\aProcessor|InstAddGen|PC\(10) & (\aProcessor|InstAddGen|PC[9]~52\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(10) & (!\aProcessor|InstAddGen|PC[9]~52\ & VCC))
-- \aProcessor|InstAddGen|PC[10]~54\ = CARRY((\aProcessor|InstAddGen|PC\(10) & !\aProcessor|InstAddGen|PC[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(10),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[9]~52\,
	combout => \aProcessor|InstAddGen|PC[10]~53_combout\,
	cout => \aProcessor|InstAddGen|PC[10]~54\);

-- Location: LCFF_X53_Y8_N21
\aProcessor|InstAddGen|PC[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[10]~53_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(10));

-- Location: LCFF_X57_Y8_N3
\aProcessor|InstAddGen|PC_temp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(10));

-- Location: LCCOMB_X57_Y8_N2
\aProcessor|displayAll|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux21~0_combout\ = (\aProcessor|InstAddGen|PC_temp\(10) & !\switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aProcessor|InstAddGen|PC_temp\(10),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux21~0_combout\);

-- Location: LCCOMB_X57_Y8_N16
\aProcessor|displayAll|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux21~1_combout\ = (\aProcessor|displayAll|Mux16~2_combout\ & (\aProcessor|displayAll|Mux16~1_combout\ & ((\aProcessor|displayAll|Mux21~0_combout\)))) # (!\aProcessor|displayAll|Mux16~2_combout\ & (((\aProcessor|InstAddGen|PC\(10))) 
-- # (!\aProcessor|displayAll|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~2_combout\,
	datab => \aProcessor|displayAll|Mux16~1_combout\,
	datac => \aProcessor|InstAddGen|PC\(10),
	datad => \aProcessor|displayAll|Mux21~0_combout\,
	combout => \aProcessor|displayAll|Mux21~1_combout\);

-- Location: LCCOMB_X58_Y8_N22
\aProcessor|displayAll|HexDisplay32Bits[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~49_combout\ = (\aProcessor|displayAll|Mux16~5_combout\ & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(10)) # ((\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & 
-- \aProcessor|displayAll|Mux21~1_combout\)))) # (!\aProcessor|displayAll|Mux16~5_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & ((\aProcessor|displayAll|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~5_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\,
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(10),
	datad => \aProcessor|displayAll|Mux21~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~49_combout\);

-- Location: LCCOMB_X51_Y8_N16
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(10) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(10))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(10),
	datac => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(16),
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(10));

-- Location: LCCOMB_X50_Y8_N20
\aProcessor|displayAll|HexDisplay32Bits[10]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~48_combout\ = (\switch~combout\(4) & (((\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(10) & \aProcessor|displayAll|Mux23~0_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\,
	datac => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(10),
	datad => \aProcessor|displayAll|Mux23~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~48_combout\);

-- Location: LCCOMB_X58_Y8_N8
\aProcessor|displayAll|HexDisplay32Bits[10]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[10]~48_combout\) # (((\aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\ & \aProcessor|displayAll|HexDisplay32Bits[10]~49_combout\)) # 
-- (!\debounceit1|PB_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~49_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[10]~48_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\);

-- Location: LCCOMB_X51_Y8_N10
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(11) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(11))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(11),
	datac => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(17),
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(11));

-- Location: LCCOMB_X54_Y8_N8
\aProcessor|displayAll|HexDisplay32Bits[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~51_combout\ = (\switch~combout\(4) & (((\aProcessor|displayAll|Mux23~0_combout\ & \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(11))) # (!\aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux23~0_combout\,
	datac => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(11),
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~51_combout\);

-- Location: LCCOMB_X53_Y8_N22
\aProcessor|InstAddGen|PC[11]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[11]~55_combout\ = (\aProcessor|InstAddGen|PC\(11) & (!\aProcessor|InstAddGen|PC[10]~54\)) # (!\aProcessor|InstAddGen|PC\(11) & ((\aProcessor|InstAddGen|PC[10]~54\) # (GND)))
-- \aProcessor|InstAddGen|PC[11]~56\ = CARRY((!\aProcessor|InstAddGen|PC[10]~54\) # (!\aProcessor|InstAddGen|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(11),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[10]~54\,
	combout => \aProcessor|InstAddGen|PC[11]~55_combout\,
	cout => \aProcessor|InstAddGen|PC[11]~56\);

-- Location: LCFF_X53_Y8_N23
\aProcessor|InstAddGen|PC[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[11]~55_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(11));

-- Location: LCFF_X57_Y8_N11
\aProcessor|InstAddGen|PC_temp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(11));

-- Location: LCCOMB_X57_Y8_N10
\aProcessor|displayAll|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux20~0_combout\ = (\aProcessor|InstAddGen|PC_temp\(11) & !\switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aProcessor|InstAddGen|PC_temp\(11),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux20~0_combout\);

-- Location: LCCOMB_X57_Y8_N0
\aProcessor|displayAll|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux20~1_combout\ = (\aProcessor|displayAll|Mux16~2_combout\ & (\aProcessor|displayAll|Mux16~1_combout\ & ((\aProcessor|displayAll|Mux20~0_combout\)))) # (!\aProcessor|displayAll|Mux16~2_combout\ & (((\aProcessor|InstAddGen|PC\(11))) 
-- # (!\aProcessor|displayAll|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~2_combout\,
	datab => \aProcessor|displayAll|Mux16~1_combout\,
	datac => \aProcessor|InstAddGen|PC\(11),
	datad => \aProcessor|displayAll|Mux20~0_combout\,
	combout => \aProcessor|displayAll|Mux20~1_combout\);

-- Location: LCCOMB_X57_Y8_N18
\aProcessor|displayAll|HexDisplay32Bits[11]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~52_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & ((\aProcessor|displayAll|Mux20~1_combout\) # ((\InstructionROM|altsyncram_component|auto_generated|q_a\(11) & 
-- \aProcessor|displayAll|Mux16~5_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & (\InstructionROM|altsyncram_component|auto_generated|q_a\(11) & (\aProcessor|displayAll|Mux16~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(11),
	datac => \aProcessor|displayAll|Mux16~5_combout\,
	datad => \aProcessor|displayAll|Mux20~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~52_combout\);

-- Location: LCCOMB_X58_Y8_N14
\aProcessor|displayAll|HexDisplay32Bits[11]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\ = ((\aProcessor|displayAll|HexDisplay32Bits[11]~51_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\ & \aProcessor|displayAll|HexDisplay32Bits[11]~52_combout\))) # 
-- (!\debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[11]~51_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[11]~52_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\);

-- Location: LCCOMB_X54_Y8_N14
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(8) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(8))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(8),
	datac => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(14),
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(8));

-- Location: LCCOMB_X54_Y8_N26
\aProcessor|displayAll|Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux23~4_combout\ = (\switch~combout\(4) & \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(8),
	combout => \aProcessor|displayAll|Mux23~4_combout\);

-- Location: LCCOMB_X50_Y7_N26
\aProcessor|displayAll|Mux16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~6_combout\ = (\aProcessor|displayAll|Mux16~4_combout\) # (((!\switch~combout\(3) & !\switch~combout\(1))) # (!\switch~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~4_combout\,
	datab => \switch~combout\(3),
	datac => \switch~combout\(1),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux16~6_combout\);

-- Location: LCCOMB_X50_Y7_N0
\aProcessor|displayAll|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux23~1_combout\ = (\switch~combout\(4) & (\aProcessor|displayAll|Mux27~0_combout\ & (\aProcessor|displayAll|Mux23~0_combout\))) # (!\switch~combout\(4) & (((\aProcessor|displayAll|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~0_combout\,
	datab => \switch~combout\(4),
	datac => \aProcessor|displayAll|Mux23~0_combout\,
	datad => \aProcessor|displayAll|Mux16~6_combout\,
	combout => \aProcessor|displayAll|Mux23~1_combout\);

-- Location: LCCOMB_X56_Y8_N16
\aProcessor|displayAll|HexDisplay32Bits[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~42_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(8) & ((\aProcessor|displayAll|Mux16~4_combout\) # ((\switch~combout\(0) & \switch~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~4_combout\,
	datab => \switch~combout\(0),
	datac => \switch~combout\(2),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(8),
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~42_combout\);

-- Location: LCCOMB_X57_Y8_N24
\aProcessor|displayAll|HexDisplay32Bits[8]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~43_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[8]~42_combout\) # ((\aProcessor|displayAll|Mux23~3_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux23~3_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[8]~42_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~43_combout\);

-- Location: LCCOMB_X58_Y8_N12
\aProcessor|displayAll|HexDisplay32Bits[8]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\ = ((\aProcessor|displayAll|Mux23~1_combout\ & ((\aProcessor|displayAll|Mux23~4_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[8]~43_combout\)))) # (!\debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|Mux23~4_combout\,
	datac => \aProcessor|displayAll|Mux23~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~43_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\);

-- Location: LCCOMB_X58_Y8_N0
\uHEX2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\,
	combout => \uHEX2|WideOr6~0_combout\);

-- Location: LCCOMB_X58_Y8_N10
\uHEX2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\,
	combout => \uHEX2|WideOr5~0_combout\);

-- Location: LCCOMB_X58_Y8_N28
\uHEX2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\,
	combout => \uHEX2|WideOr4~0_combout\);

-- Location: LCCOMB_X58_Y8_N2
\uHEX2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ $ ((!\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\ & \aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\,
	combout => \uHEX2|WideOr3~0_combout\);

-- Location: LCCOMB_X58_Y8_N16
\uHEX2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\ & \aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\,
	combout => \uHEX2|WideOr2~0_combout\);

-- Location: LCCOMB_X58_Y8_N18
\uHEX2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\,
	combout => \uHEX2|WideOr1~0_combout\);

-- Location: LCCOMB_X58_Y8_N20
\uHEX2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~47_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~50_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~53_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~44_combout\,
	combout => \uHEX2|WideOr0~0_combout\);

-- Location: LCCOMB_X51_Y8_N26
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(13) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(13))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(13),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(19),
	datad => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(13));

-- Location: LCCOMB_X54_Y8_N2
\aProcessor|displayAll|HexDisplay32Bits[13]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~60_combout\ = (\switch~combout\(4) & (((\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(13))))) # (!\switch~combout\(4) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(13) & 
-- ((\aProcessor|displayAll|Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(13),
	datab => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(13),
	datac => \switch~combout\(4),
	datad => \aProcessor|displayAll|Mux16~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~60_combout\);

-- Location: LCCOMB_X53_Y8_N24
\aProcessor|InstAddGen|PC[12]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[12]~57_combout\ = (\aProcessor|InstAddGen|PC\(12) & (\aProcessor|InstAddGen|PC[11]~56\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(12) & (!\aProcessor|InstAddGen|PC[11]~56\ & VCC))
-- \aProcessor|InstAddGen|PC[12]~58\ = CARRY((\aProcessor|InstAddGen|PC\(12) & !\aProcessor|InstAddGen|PC[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(12),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[11]~56\,
	combout => \aProcessor|InstAddGen|PC[12]~57_combout\,
	cout => \aProcessor|InstAddGen|PC[12]~58\);

-- Location: LCCOMB_X53_Y8_N26
\aProcessor|InstAddGen|PC[13]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[13]~59_combout\ = (\aProcessor|InstAddGen|PC\(13) & (!\aProcessor|InstAddGen|PC[12]~58\)) # (!\aProcessor|InstAddGen|PC\(13) & ((\aProcessor|InstAddGen|PC[12]~58\) # (GND)))
-- \aProcessor|InstAddGen|PC[13]~60\ = CARRY((!\aProcessor|InstAddGen|PC[12]~58\) # (!\aProcessor|InstAddGen|PC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(13),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[12]~58\,
	combout => \aProcessor|InstAddGen|PC[13]~59_combout\,
	cout => \aProcessor|InstAddGen|PC[13]~60\);

-- Location: LCFF_X53_Y8_N27
\aProcessor|InstAddGen|PC[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[13]~59_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(13));

-- Location: LCFF_X57_Y8_N13
\aProcessor|InstAddGen|PC_temp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(13));

-- Location: LCCOMB_X57_Y8_N12
\aProcessor|displayAll|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux18~0_combout\ = (\switch~combout\(1) & (!\switch~combout\(0))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC_temp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datac => \aProcessor|InstAddGen|PC_temp\(13),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux18~0_combout\);

-- Location: LCCOMB_X57_Y8_N14
\aProcessor|displayAll|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux18~1_combout\ = (\aProcessor|displayAll|Mux16~2_combout\ & (\aProcessor|displayAll|Mux16~1_combout\ & ((\aProcessor|displayAll|Mux18~0_combout\)))) # (!\aProcessor|displayAll|Mux16~2_combout\ & (((\aProcessor|InstAddGen|PC\(13))) 
-- # (!\aProcessor|displayAll|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~2_combout\,
	datab => \aProcessor|displayAll|Mux16~1_combout\,
	datac => \aProcessor|InstAddGen|PC\(13),
	datad => \aProcessor|displayAll|Mux18~0_combout\,
	combout => \aProcessor|displayAll|Mux18~1_combout\);

-- Location: LCCOMB_X58_Y8_N26
\aProcessor|displayAll|HexDisplay32Bits[13]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~59_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\ & \aProcessor|displayAll|Mux18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~37_combout\,
	datad => \aProcessor|displayAll|Mux18~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~59_combout\);

-- Location: LCCOMB_X58_Y8_N4
\aProcessor|displayAll|HexDisplay32Bits[13]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ = (\debounceit1|PB_state~regout\ & (\aProcessor|displayAll|Mux23~1_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~60_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[13]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[13]~60_combout\,
	datac => \aProcessor|displayAll|Mux23~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[13]~59_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\);

-- Location: LCCOMB_X51_Y8_N6
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(15) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(15))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(15),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(21),
	datad => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(15));

-- Location: LCCOMB_X54_Y7_N26
\aProcessor|displayAll|HexDisplay32Bits[15]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[15]~65_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~54_combout\ & (((\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(15) & \aProcessor|displayAll|Mux23~0_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~54_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\,
	datac => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(15),
	datad => \aProcessor|displayAll|Mux23~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[15]~65_combout\);

-- Location: LCCOMB_X54_Y7_N4
\aProcessor|displayAll|HexDisplay32Bits[12]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~141_combout\ = (!\switch~combout\(4) & (\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|Mux16~4_combout\) # (!\switch~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \debounceit1|PB_state~regout\,
	datac => \aProcessor|displayAll|Mux16~4_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~141_combout\);

-- Location: LCCOMB_X53_Y8_N28
\aProcessor|InstAddGen|PC[14]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[14]~61_combout\ = (\aProcessor|InstAddGen|PC\(14) & (\aProcessor|InstAddGen|PC[13]~60\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(14) & (!\aProcessor|InstAddGen|PC[13]~60\ & VCC))
-- \aProcessor|InstAddGen|PC[14]~62\ = CARRY((\aProcessor|InstAddGen|PC\(14) & !\aProcessor|InstAddGen|PC[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(14),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[13]~60\,
	combout => \aProcessor|InstAddGen|PC[14]~61_combout\,
	cout => \aProcessor|InstAddGen|PC[14]~62\);

-- Location: LCFF_X53_Y8_N29
\aProcessor|InstAddGen|PC[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[14]~61_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(14));

-- Location: LCCOMB_X53_Y8_N30
\aProcessor|InstAddGen|PC[15]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[15]~63_combout\ = (\aProcessor|InstAddGen|PC\(15) & (!\aProcessor|InstAddGen|PC[14]~62\)) # (!\aProcessor|InstAddGen|PC\(15) & ((\aProcessor|InstAddGen|PC[14]~62\) # (GND)))
-- \aProcessor|InstAddGen|PC[15]~64\ = CARRY((!\aProcessor|InstAddGen|PC[14]~62\) # (!\aProcessor|InstAddGen|PC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(15),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[14]~62\,
	combout => \aProcessor|InstAddGen|PC[15]~63_combout\,
	cout => \aProcessor|InstAddGen|PC[15]~64\);

-- Location: LCFF_X53_Y8_N31
\aProcessor|InstAddGen|PC[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[15]~63_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(15));

-- Location: LCFF_X57_Y8_N5
\aProcessor|InstAddGen|PC_temp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(15));

-- Location: LCCOMB_X57_Y8_N4
\aProcessor|displayAll|Mux16~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~7_combout\ = (\switch~combout\(1) & (!\switch~combout\(0))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC_temp\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datac => \aProcessor|InstAddGen|PC_temp\(15),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux16~7_combout\);

-- Location: LCCOMB_X57_Y8_N6
\aProcessor|displayAll|Mux16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~8_combout\ = (\aProcessor|displayAll|Mux16~1_combout\ & ((\aProcessor|displayAll|Mux16~2_combout\ & ((\aProcessor|displayAll|Mux16~7_combout\))) # (!\aProcessor|displayAll|Mux16~2_combout\ & (\aProcessor|InstAddGen|PC\(15))))) 
-- # (!\aProcessor|displayAll|Mux16~1_combout\ & (((!\aProcessor|displayAll|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(15),
	datab => \aProcessor|displayAll|Mux16~1_combout\,
	datac => \aProcessor|displayAll|Mux16~7_combout\,
	datad => \aProcessor|displayAll|Mux16~2_combout\,
	combout => \aProcessor|displayAll|Mux16~8_combout\);

-- Location: LCCOMB_X56_Y8_N18
\aProcessor|displayAll|HexDisplay32Bits[15]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[15]~66_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & ((\aProcessor|displayAll|Mux16~8_combout\) # ((\InstructionROM|altsyncram_component|auto_generated|q_a\(15) & 
-- \aProcessor|displayAll|Mux16~5_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & (\InstructionROM|altsyncram_component|auto_generated|q_a\(15) & (\aProcessor|displayAll|Mux16~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(15),
	datac => \aProcessor|displayAll|Mux16~5_combout\,
	datad => \aProcessor|displayAll|Mux16~8_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[15]~66_combout\);

-- Location: LCCOMB_X55_Y7_N0
\aProcessor|displayAll|HexDisplay32Bits[15]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[15]~65_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[12]~141_combout\ & \aProcessor|displayAll|HexDisplay32Bits[15]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~65_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~141_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[15]~66_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\);

-- Location: LCCOMB_X51_Y8_N12
\aProcessor|DecodeInst|IMMEDIATE_OPPERAND[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(14) = (GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & (\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(14))) # (!GLOBAL(\aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(14),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(20),
	datad => \aProcessor|DecodeInst|InstructionFormat[0]~1clkctrl_outclk\,
	combout => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(14));

-- Location: LCCOMB_X54_Y7_N24
\aProcessor|displayAll|HexDisplay32Bits[14]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~62_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~54_combout\ & (((\aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(14) & \aProcessor|displayAll|Mux23~0_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~54_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~14_combout\,
	datac => \aProcessor|DecodeInst|IMMEDIATE_OPPERAND\(14),
	datad => \aProcessor|displayAll|Mux23~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~62_combout\);

-- Location: LCCOMB_X55_Y7_N26
\aProcessor|displayAll|HexDisplay32Bits[14]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[14]~62_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[14]~63_combout\ & \aProcessor|displayAll|HexDisplay32Bits[12]~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[14]~63_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[14]~62_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~141_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\);

-- Location: LCFF_X53_Y8_N25
\aProcessor|InstAddGen|PC[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[12]~57_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(12));

-- Location: LCFF_X57_Y8_N29
\aProcessor|InstAddGen|PC_temp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(12));

-- Location: LCCOMB_X57_Y8_N28
\aProcessor|displayAll|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux19~0_combout\ = (\switch~combout\(1) & (!\switch~combout\(0))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC_temp\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datac => \aProcessor|InstAddGen|PC_temp\(12),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux19~0_combout\);

-- Location: LCCOMB_X57_Y8_N30
\aProcessor|displayAll|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux19~1_combout\ = (\aProcessor|displayAll|Mux16~2_combout\ & (\aProcessor|displayAll|Mux16~1_combout\ & ((\aProcessor|displayAll|Mux19~0_combout\)))) # (!\aProcessor|displayAll|Mux16~2_combout\ & (((\aProcessor|InstAddGen|PC\(12))) 
-- # (!\aProcessor|displayAll|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~2_combout\,
	datab => \aProcessor|displayAll|Mux16~1_combout\,
	datac => \aProcessor|InstAddGen|PC\(12),
	datad => \aProcessor|displayAll|Mux19~0_combout\,
	combout => \aProcessor|displayAll|Mux19~1_combout\);

-- Location: LCCOMB_X56_Y8_N26
\aProcessor|displayAll|HexDisplay32Bits[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~56_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & ((\aProcessor|displayAll|Mux19~1_combout\) # ((\aProcessor|displayAll|Mux16~5_combout\ & 
-- \InstructionROM|altsyncram_component|auto_generated|q_a\(12))))) # (!\aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\ & (\aProcessor|displayAll|Mux16~5_combout\ & (\InstructionROM|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~35_combout\,
	datab => \aProcessor|displayAll|Mux16~5_combout\,
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(12),
	datad => \aProcessor|displayAll|Mux19~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~56_combout\);

-- Location: LCCOMB_X55_Y7_N16
\aProcessor|displayAll|HexDisplay32Bits[12]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~55_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[12]~141_combout\ & \aProcessor|displayAll|HexDisplay32Bits[12]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~55_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~141_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~56_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\);

-- Location: LCCOMB_X64_Y8_N12
\uHEX3|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\,
	combout => \uHEX3|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y8_N14
\uHEX3|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\,
	combout => \uHEX3|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y8_N16
\uHEX3|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\,
	combout => \uHEX3|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\uHEX3|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\ & \aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\,
	combout => \uHEX3|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y8_N28
\uHEX3|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\,
	combout => \uHEX3|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y8_N22
\uHEX3|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\,
	combout => \uHEX3|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y8_N0
\uHEX3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[13]~61_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[15]~67_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[14]~64_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~58_combout\,
	combout => \uHEX3|WideOr0~0_combout\);

-- Location: LCCOMB_X50_Y8_N30
\aProcessor|displayAll|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux12~0_combout\ = (\switch~combout\(3) & \switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch~combout\(3),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux12~0_combout\);

-- Location: LCCOMB_X50_Y7_N2
\aProcessor|displayAll|HexDisplay32Bits[16]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[16]~57_combout\ = (\debounceit1|PB_state~regout\ & !\switch~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceit1|PB_state~regout\,
	datac => \switch~combout\(4),
	combout => \aProcessor|displayAll|HexDisplay32Bits[16]~57_combout\);

-- Location: LCCOMB_X50_Y8_N6
\aProcessor|displayAll|HexDisplay32Bits[17]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ = (!\switch~combout\(1) & (\aProcessor|displayAll|Mux12~0_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[16]~57_combout\ & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \aProcessor|displayAll|Mux12~0_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[16]~57_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\);

-- Location: LCCOMB_X53_Y7_N0
\aProcessor|InstAddGen|PC[16]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[16]~65_combout\ = (\aProcessor|InstAddGen|PC\(16) & (\aProcessor|InstAddGen|PC[15]~64\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(16) & (!\aProcessor|InstAddGen|PC[15]~64\ & VCC))
-- \aProcessor|InstAddGen|PC[16]~66\ = CARRY((\aProcessor|InstAddGen|PC\(16) & !\aProcessor|InstAddGen|PC[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(16),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[15]~64\,
	combout => \aProcessor|InstAddGen|PC[16]~65_combout\,
	cout => \aProcessor|InstAddGen|PC[16]~66\);

-- Location: LCFF_X53_Y7_N1
\aProcessor|InstAddGen|PC[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[16]~65_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(16));

-- Location: LCCOMB_X53_Y7_N2
\aProcessor|InstAddGen|PC[17]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[17]~67_combout\ = (\aProcessor|InstAddGen|PC\(17) & (!\aProcessor|InstAddGen|PC[16]~66\)) # (!\aProcessor|InstAddGen|PC\(17) & ((\aProcessor|InstAddGen|PC[16]~66\) # (GND)))
-- \aProcessor|InstAddGen|PC[17]~68\ = CARRY((!\aProcessor|InstAddGen|PC[16]~66\) # (!\aProcessor|InstAddGen|PC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(17),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[16]~66\,
	combout => \aProcessor|InstAddGen|PC[17]~67_combout\,
	cout => \aProcessor|InstAddGen|PC[17]~68\);

-- Location: LCFF_X53_Y7_N3
\aProcessor|InstAddGen|PC[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[17]~67_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(17));

-- Location: LCCOMB_X53_Y7_N4
\aProcessor|InstAddGen|PC[18]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[18]~69_combout\ = (\aProcessor|InstAddGen|PC\(18) & (\aProcessor|InstAddGen|PC[17]~68\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(18) & (!\aProcessor|InstAddGen|PC[17]~68\ & VCC))
-- \aProcessor|InstAddGen|PC[18]~70\ = CARRY((\aProcessor|InstAddGen|PC\(18) & !\aProcessor|InstAddGen|PC[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(18),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[17]~68\,
	combout => \aProcessor|InstAddGen|PC[18]~69_combout\,
	cout => \aProcessor|InstAddGen|PC[18]~70\);

-- Location: LCFF_X53_Y7_N5
\aProcessor|InstAddGen|PC[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[18]~69_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(18));

-- Location: LCFF_X53_Y10_N5
\aProcessor|InstAddGen|PC_temp[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(18));

-- Location: LCCOMB_X50_Y8_N12
\aProcessor|displayAll|Mux27~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~7_combout\ = (\switch~combout\(3)) # ((\switch~combout\(0) & (\switch~combout\(1) & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(3),
	datac => \switch~combout\(1),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux27~7_combout\);

-- Location: LCCOMB_X54_Y10_N20
\aProcessor|displayAll|Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~4_combout\ = (\switch~combout\(1)) # (!\switch~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux27~4_combout\);

-- Location: LCCOMB_X54_Y10_N12
\aProcessor|displayAll|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux12~1_combout\ = (\switch~combout\(2) & (!\switch~combout\(3))) # (!\switch~combout\(2) & ((!\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(3),
	datac => \switch~combout\(2),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux12~1_combout\);

-- Location: LCCOMB_X54_Y10_N22
\aProcessor|displayAll|HexDisplay32Bits[18]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~80_combout\ = (\aProcessor|displayAll|Mux27~7_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[18]~79_combout\ & (\aProcessor|displayAll|Mux27~4_combout\ & \aProcessor|displayAll|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[18]~79_combout\,
	datab => \aProcessor|displayAll|Mux27~7_combout\,
	datac => \aProcessor|displayAll|Mux27~4_combout\,
	datad => \aProcessor|displayAll|Mux12~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~80_combout\);

-- Location: LCCOMB_X51_Y10_N30
\aProcessor|displayAll|HexDisplay32Bits[18]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~78_combout\ = (!\aProcessor|displayAll|HexDisplay32Bits[18]~77_combout\ & (((\switch~combout\(3)) # (\switch~combout\(2))) # (!\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[18]~77_combout\,
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~78_combout\);

-- Location: LCCOMB_X54_Y10_N24
\aProcessor|displayAll|HexDisplay32Bits[18]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~81_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[18]~80_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[18]~78_combout\ & \aProcessor|displayAll|Mux12~1_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[18]~80_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\ & ((!\aProcessor|displayAll|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[18]~80_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[18]~78_combout\,
	datad => \aProcessor|displayAll|Mux12~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~81_combout\);

-- Location: LCCOMB_X53_Y10_N4
\aProcessor|displayAll|HexDisplay32Bits[18]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[18]~81_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & 
-- \aProcessor|InstAddGen|PC_temp\(18))))) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & (\aProcessor|InstAddGen|PC_temp\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(18),
	datad => \aProcessor|displayAll|HexDisplay32Bits[18]~81_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\);

-- Location: LCCOMB_X54_Y7_N20
\aProcessor|displayAll|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux15~1_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(22) & (\switch~combout\(2) & (\switch~combout\(0) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(22),
	datab => \switch~combout\(2),
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux15~1_combout\);

-- Location: LCCOMB_X50_Y7_N20
\aProcessor|displayAll|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux15~2_combout\ = (\aProcessor|displayAll|Mux15~1_combout\) # ((\aProcessor|InstAddGen|PC\(16) & (\aProcessor|displayAll|Mux23~0_combout\ & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(16),
	datab => \aProcessor|displayAll|Mux15~1_combout\,
	datac => \aProcessor|displayAll|Mux23~0_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux15~2_combout\);

-- Location: LCCOMB_X50_Y7_N22
\aProcessor|displayAll|HexDisplay32Bits[16]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[16]~57_combout\ & ((\switch~combout\(3) & (\aProcessor|displayAll|HexDisplay32Bits[16]~142_combout\)) # (!\switch~combout\(3) & 
-- ((\aProcessor|displayAll|Mux15~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[16]~142_combout\,
	datab => \switch~combout\(3),
	datac => \aProcessor|displayAll|Mux15~2_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[16]~57_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\);

-- Location: LCFF_X50_Y10_N17
\aProcessor|InstAddGen|PC_temp[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(17));

-- Location: LCCOMB_X53_Y10_N6
\aProcessor|displayAll|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux12~2_combout\ = ((\switch~combout\(1) & \switch~combout\(0))) # (!\switch~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux12~2_combout\);

-- Location: LCCOMB_X50_Y10_N22
\aProcessor|displayAll|HexDisplay32Bits[17]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~73_combout\ = (\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|displayAll|Mux12~2_combout\)))) # (!\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|InstAddGen|PC\(17) & !\switch~combout\(0))) # 
-- (!\aProcessor|displayAll|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~3_combout\,
	datab => \aProcessor|InstAddGen|PC\(17),
	datac => \switch~combout\(0),
	datad => \aProcessor|displayAll|Mux12~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~73_combout\);

-- Location: LCCOMB_X50_Y10_N0
\aProcessor|displayAll|HexDisplay32Bits[17]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~74_combout\ = (\aProcessor|displayAll|Mux27~7_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[17]~73_combout\ & (\aProcessor|displayAll|Mux12~1_combout\ & \aProcessor|displayAll|Mux27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~7_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~73_combout\,
	datac => \aProcessor|displayAll|Mux12~1_combout\,
	datad => \aProcessor|displayAll|Mux27~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~74_combout\);

-- Location: LCCOMB_X50_Y8_N8
\aProcessor|displayAll|HexDisplay32Bits[17]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~71_combout\ = (\aProcessor|displayAll|Mux27~7_combout\ & (((!\InstructionROM|altsyncram_component|auto_generated|q_a\(17))))) # (!\aProcessor|displayAll|Mux27~7_combout\ & 
-- (\aProcessor|displayAll|Mux27~3_combout\ & ((!\InstructionROM|altsyncram_component|auto_generated|q_a\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~3_combout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(17),
	datac => \aProcessor|displayAll|Mux27~7_combout\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(23),
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~71_combout\);

-- Location: LCCOMB_X50_Y8_N2
\aProcessor|displayAll|HexDisplay32Bits[17]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~72_combout\ = (!\aProcessor|displayAll|HexDisplay32Bits[17]~71_combout\ & (((\switch~combout\(3)) # (\switch~combout\(2))) # (!\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~71_combout\,
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~72_combout\);

-- Location: LCCOMB_X50_Y10_N6
\aProcessor|displayAll|HexDisplay32Bits[17]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~75_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~74_combout\ & (((\aProcessor|displayAll|Mux12~1_combout\ & \aProcessor|displayAll|HexDisplay32Bits[17]~72_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[17]~74_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\ & (!\aProcessor|displayAll|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~74_combout\,
	datac => \aProcessor|displayAll|Mux12~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~72_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~75_combout\);

-- Location: LCCOMB_X50_Y10_N16
\aProcessor|displayAll|HexDisplay32Bits[17]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~75_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & 
-- \aProcessor|InstAddGen|PC_temp\(17))))) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & (\aProcessor|InstAddGen|PC_temp\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(17),
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~75_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\);

-- Location: LCCOMB_X53_Y7_N6
\aProcessor|InstAddGen|PC[19]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[19]~71_combout\ = (\aProcessor|InstAddGen|PC\(19) & (!\aProcessor|InstAddGen|PC[18]~70\)) # (!\aProcessor|InstAddGen|PC\(19) & ((\aProcessor|InstAddGen|PC[18]~70\) # (GND)))
-- \aProcessor|InstAddGen|PC[19]~72\ = CARRY((!\aProcessor|InstAddGen|PC[18]~70\) # (!\aProcessor|InstAddGen|PC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(19),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[18]~70\,
	combout => \aProcessor|InstAddGen|PC[19]~71_combout\,
	cout => \aProcessor|InstAddGen|PC[19]~72\);

-- Location: LCFF_X53_Y7_N7
\aProcessor|InstAddGen|PC[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[19]~71_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(19));

-- Location: LCFF_X50_Y10_N21
\aProcessor|InstAddGen|PC_temp[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(19));

-- Location: LCCOMB_X53_Y10_N16
\aProcessor|displayAll|Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~3_combout\ = (\switch~combout\(2) & ((\switch~combout\(1)) # (\switch~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux27~3_combout\);

-- Location: LCCOMB_X51_Y10_N0
\aProcessor|displayAll|HexDisplay32Bits[19]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~83_combout\ = (\aProcessor|displayAll|Mux27~7_combout\ & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(19))) # (!\aProcessor|displayAll|Mux27~7_combout\ & (((\aProcessor|displayAll|Mux27~3_combout\ 
-- & !\InstructionROM|altsyncram_component|auto_generated|q_a\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(19),
	datab => \aProcessor|displayAll|Mux27~7_combout\,
	datac => \aProcessor|displayAll|Mux27~3_combout\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(25),
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~83_combout\);

-- Location: LCCOMB_X51_Y10_N10
\aProcessor|displayAll|HexDisplay32Bits[19]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~84_combout\ = (!\aProcessor|displayAll|HexDisplay32Bits[19]~83_combout\ & ((\switch~combout\(2)) # ((\switch~combout\(3)) # (!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \aProcessor|displayAll|HexDisplay32Bits[19]~83_combout\,
	datac => \switch~combout\(3),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~84_combout\);

-- Location: LCCOMB_X50_Y10_N14
\aProcessor|displayAll|HexDisplay32Bits[19]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~85_combout\ = (\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|displayAll|Mux12~2_combout\)))) # (!\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|InstAddGen|PC\(19) & !\switch~combout\(0))) # 
-- (!\aProcessor|displayAll|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~3_combout\,
	datab => \aProcessor|InstAddGen|PC\(19),
	datac => \switch~combout\(0),
	datad => \aProcessor|displayAll|Mux12~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~85_combout\);

-- Location: LCCOMB_X50_Y10_N12
\aProcessor|displayAll|HexDisplay32Bits[19]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~86_combout\ = (\aProcessor|displayAll|Mux27~7_combout\) # ((\aProcessor|displayAll|Mux12~1_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[19]~85_combout\ & \aProcessor|displayAll|Mux27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~7_combout\,
	datab => \aProcessor|displayAll|Mux12~1_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[19]~85_combout\,
	datad => \aProcessor|displayAll|Mux27~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~86_combout\);

-- Location: LCCOMB_X50_Y10_N26
\aProcessor|displayAll|HexDisplay32Bits[19]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~87_combout\ = (\aProcessor|displayAll|Mux12~1_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[19]~84_combout\ & \aProcessor|displayAll|HexDisplay32Bits[19]~86_combout\)))) # 
-- (!\aProcessor|displayAll|Mux12~1_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[19]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[19]~84_combout\,
	datac => \aProcessor|displayAll|Mux12~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[19]~86_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~87_combout\);

-- Location: LCCOMB_X50_Y10_N20
\aProcessor|displayAll|HexDisplay32Bits[19]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[19]~87_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & 
-- \aProcessor|InstAddGen|PC_temp\(19))))) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & (\aProcessor|InstAddGen|PC_temp\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(19),
	datad => \aProcessor|displayAll|HexDisplay32Bits[19]~87_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\);

-- Location: LCCOMB_X1_Y14_N12
\uHEX4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\,
	combout => \uHEX4|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y14_N22
\uHEX4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\,
	combout => \uHEX4|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y14_N16
\uHEX4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\,
	combout => \uHEX4|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y14_N30
\uHEX4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ $ ((!\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\ & \aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\,
	combout => \uHEX4|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y14_N28
\uHEX4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\,
	combout => \uHEX4|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y14_N14
\uHEX4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\) # 
-- (\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\,
	combout => \uHEX4|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y14_N0
\uHEX4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[18]~82_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~143_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~76_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[19]~88_combout\,
	combout => \uHEX4|WideOr0~0_combout\);

-- Location: LCCOMB_X49_Y8_N2
\aProcessor|displayAll|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux0~0_combout\ = (\switch~combout\(0) & ((\switch~combout\(3)) # ((\switch~combout\(2) & !\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(2),
	datac => \switch~combout\(3),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y8_N4
\aProcessor|displayAll|HexDisplay32Bits[22]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~99_combout\ = (!\aProcessor|displayAll|Mux0~0_combout\ & ((\switch~combout\(3) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(22)))) # (!\switch~combout\(3) & 
-- (\aProcessor|displayAll|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux9~0_combout\,
	datab => \aProcessor|displayAll|Mux0~0_combout\,
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(22),
	datad => \switch~combout\(3),
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~99_combout\);

-- Location: LCCOMB_X53_Y7_N8
\aProcessor|InstAddGen|PC[20]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[20]~73_combout\ = (\aProcessor|InstAddGen|PC\(20) & (\aProcessor|InstAddGen|PC[19]~72\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(20) & (!\aProcessor|InstAddGen|PC[19]~72\ & VCC))
-- \aProcessor|InstAddGen|PC[20]~74\ = CARRY((\aProcessor|InstAddGen|PC\(20) & !\aProcessor|InstAddGen|PC[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(20),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[19]~72\,
	combout => \aProcessor|InstAddGen|PC[20]~73_combout\,
	cout => \aProcessor|InstAddGen|PC[20]~74\);

-- Location: LCFF_X53_Y7_N9
\aProcessor|InstAddGen|PC[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[20]~73_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(20));

-- Location: LCCOMB_X53_Y7_N10
\aProcessor|InstAddGen|PC[21]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[21]~75_combout\ = (\aProcessor|InstAddGen|PC\(21) & (!\aProcessor|InstAddGen|PC[20]~74\)) # (!\aProcessor|InstAddGen|PC\(21) & ((\aProcessor|InstAddGen|PC[20]~74\) # (GND)))
-- \aProcessor|InstAddGen|PC[21]~76\ = CARRY((!\aProcessor|InstAddGen|PC[20]~74\) # (!\aProcessor|InstAddGen|PC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(21),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[20]~74\,
	combout => \aProcessor|InstAddGen|PC[21]~75_combout\,
	cout => \aProcessor|InstAddGen|PC[21]~76\);

-- Location: LCCOMB_X53_Y7_N12
\aProcessor|InstAddGen|PC[22]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[22]~77_combout\ = (\aProcessor|InstAddGen|PC\(22) & (\aProcessor|InstAddGen|PC[21]~76\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(22) & (!\aProcessor|InstAddGen|PC[21]~76\ & VCC))
-- \aProcessor|InstAddGen|PC[22]~78\ = CARRY((\aProcessor|InstAddGen|PC\(22) & !\aProcessor|InstAddGen|PC[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(22),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[21]~76\,
	combout => \aProcessor|InstAddGen|PC[22]~77_combout\,
	cout => \aProcessor|InstAddGen|PC[22]~78\);

-- Location: LCFF_X53_Y7_N13
\aProcessor|InstAddGen|PC[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[22]~77_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(22));

-- Location: LCFF_X49_Y8_N7
\aProcessor|InstAddGen|PC_temp[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(22));

-- Location: LCCOMB_X49_Y8_N6
\aProcessor|displayAll|HexDisplay32Bits[22]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~98_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[22]~99_combout\) # ((\aProcessor|InstAddGen|PC_temp\(22) & 
-- \aProcessor|displayAll|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~98_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[22]~99_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(22),
	datad => \aProcessor|displayAll|Mux12~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\);

-- Location: LCCOMB_X53_Y7_N14
\aProcessor|InstAddGen|PC[23]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[23]~79_combout\ = (\aProcessor|InstAddGen|PC\(23) & (!\aProcessor|InstAddGen|PC[22]~78\)) # (!\aProcessor|InstAddGen|PC\(23) & ((\aProcessor|InstAddGen|PC[22]~78\) # (GND)))
-- \aProcessor|InstAddGen|PC[23]~80\ = CARRY((!\aProcessor|InstAddGen|PC[22]~78\) # (!\aProcessor|InstAddGen|PC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(23),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[22]~78\,
	combout => \aProcessor|InstAddGen|PC[23]~79_combout\,
	cout => \aProcessor|InstAddGen|PC[23]~80\);

-- Location: LCFF_X53_Y7_N15
\aProcessor|InstAddGen|PC[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[23]~79_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(23));

-- Location: LCCOMB_X49_Y8_N28
\aProcessor|displayAll|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux8~0_combout\ = (!\switch~combout\(0) & (!\switch~combout\(1) & (\aProcessor|InstAddGen|PC\(23) & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(23),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux8~0_combout\);

-- Location: LCCOMB_X49_Y8_N18
\aProcessor|displayAll|HexDisplay32Bits[23]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~101_combout\ = (!\aProcessor|displayAll|Mux0~0_combout\ & ((\switch~combout\(3) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(23))) # (!\switch~combout\(3) & 
-- ((\aProcessor|displayAll|Mux8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|displayAll|Mux0~0_combout\,
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(23),
	datad => \aProcessor|displayAll|Mux8~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~101_combout\);

-- Location: LCFF_X49_Y8_N9
\aProcessor|InstAddGen|PC_temp[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(23));

-- Location: LCCOMB_X49_Y8_N8
\aProcessor|displayAll|HexDisplay32Bits[23]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~98_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[23]~101_combout\) # ((\aProcessor|InstAddGen|PC_temp\(23) & 
-- \aProcessor|displayAll|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~98_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~101_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(23),
	datad => \aProcessor|displayAll|Mux12~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\);

-- Location: LCFF_X53_Y10_N1
\aProcessor|InstAddGen|PC_temp[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(20));

-- Location: LCCOMB_X53_Y10_N22
\aProcessor|displayAll|HexDisplay32Bits[20]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~91_combout\ = (\aProcessor|displayAll|Mux12~2_combout\ & ((\aProcessor|displayAll|Mux27~3_combout\) # ((\aProcessor|InstAddGen|PC\(20) & !\switch~combout\(0))))) # (!\aProcessor|displayAll|Mux12~2_combout\ & 
-- (((!\aProcessor|displayAll|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux12~2_combout\,
	datab => \aProcessor|InstAddGen|PC\(20),
	datac => \switch~combout\(0),
	datad => \aProcessor|displayAll|Mux27~3_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~91_combout\);

-- Location: LCCOMB_X50_Y10_N8
\aProcessor|displayAll|HexDisplay32Bits[20]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~92_combout\ = (\aProcessor|displayAll|Mux27~7_combout\) # ((\aProcessor|displayAll|Mux12~1_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[20]~91_combout\ & \aProcessor|displayAll|Mux27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~7_combout\,
	datab => \aProcessor|displayAll|Mux12~1_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[20]~91_combout\,
	datad => \aProcessor|displayAll|Mux27~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~92_combout\);

-- Location: LCCOMB_X51_Y10_N22
\aProcessor|displayAll|HexDisplay32Bits[20]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~90_combout\ = (!\aProcessor|displayAll|HexDisplay32Bits[20]~89_combout\ & (((\switch~combout\(3)) # (\switch~combout\(2))) # (!\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[20]~89_combout\,
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~90_combout\);

-- Location: LCCOMB_X50_Y10_N18
\aProcessor|displayAll|HexDisplay32Bits[20]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~93_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[20]~92_combout\ & (((\aProcessor|displayAll|Mux12~1_combout\ & \aProcessor|displayAll|HexDisplay32Bits[20]~90_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~92_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\ & (!\aProcessor|displayAll|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[20]~92_combout\,
	datac => \aProcessor|displayAll|Mux12~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[20]~90_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~93_combout\);

-- Location: LCCOMB_X53_Y10_N0
\aProcessor|displayAll|HexDisplay32Bits[20]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[20]~93_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & 
-- \aProcessor|InstAddGen|PC_temp\(20))))) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & (\aProcessor|InstAddGen|PC_temp\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(20),
	datad => \aProcessor|displayAll|HexDisplay32Bits[20]~93_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\);

-- Location: LCFF_X53_Y7_N11
\aProcessor|InstAddGen|PC[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[21]~75_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(21));

-- Location: LCFF_X50_Y8_N23
\aProcessor|InstAddGen|PC_temp[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(21));

-- Location: LCCOMB_X54_Y7_N22
\aProcessor|displayAll|HexDisplay32Bits[21]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[21]~95_combout\ = (!\switch~combout\(4) & (!\switch~combout\(2) & (!\switch~combout\(1) & \debounceit1|PB_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \switch~combout\(2),
	datac => \switch~combout\(1),
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[21]~95_combout\);

-- Location: LCCOMB_X50_Y8_N22
\aProcessor|displayAll|HexDisplay32Bits[21]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[21]~95_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[21]~96_combout\) # ((\aProcessor|displayAll|Mux12~0_combout\ & 
-- \aProcessor|InstAddGen|PC_temp\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[21]~96_combout\,
	datab => \aProcessor|displayAll|Mux12~0_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(21),
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~95_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\);

-- Location: LCCOMB_X1_Y15_N12
\uHEX5|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\,
	combout => \uHEX5|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y15_N30
\uHEX5|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\,
	combout => \uHEX5|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y15_N28
\uHEX5|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\,
	combout => \uHEX5|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y15_N2
\uHEX5|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\ & \aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\,
	combout => \uHEX5|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y15_N0
\uHEX5|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\ & \aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\,
	combout => \uHEX5|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y15_N22
\uHEX5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\) # 
-- (\aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\,
	combout => \uHEX5|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y15_N8
\uHEX5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~100_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~102_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[20]~94_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[21]~97_combout\,
	combout => \uHEX5|WideOr0~0_combout\);

-- Location: LCCOMB_X53_Y7_N16
\aProcessor|InstAddGen|PC[24]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[24]~81_combout\ = (\aProcessor|InstAddGen|PC\(24) & (\aProcessor|InstAddGen|PC[23]~80\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(24) & (!\aProcessor|InstAddGen|PC[23]~80\ & VCC))
-- \aProcessor|InstAddGen|PC[24]~82\ = CARRY((\aProcessor|InstAddGen|PC\(24) & !\aProcessor|InstAddGen|PC[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(24),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[23]~80\,
	combout => \aProcessor|InstAddGen|PC[24]~81_combout\,
	cout => \aProcessor|InstAddGen|PC[24]~82\);

-- Location: LCCOMB_X53_Y7_N18
\aProcessor|InstAddGen|PC[25]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[25]~83_combout\ = (\aProcessor|InstAddGen|PC\(25) & (!\aProcessor|InstAddGen|PC[24]~82\)) # (!\aProcessor|InstAddGen|PC\(25) & ((\aProcessor|InstAddGen|PC[24]~82\) # (GND)))
-- \aProcessor|InstAddGen|PC[25]~84\ = CARRY((!\aProcessor|InstAddGen|PC[24]~82\) # (!\aProcessor|InstAddGen|PC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(25),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[24]~82\,
	combout => \aProcessor|InstAddGen|PC[25]~83_combout\,
	cout => \aProcessor|InstAddGen|PC[25]~84\);

-- Location: LCFF_X53_Y7_N19
\aProcessor|InstAddGen|PC[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[25]~83_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(25));

-- Location: LCFF_X53_Y10_N9
\aProcessor|InstAddGen|PC_temp[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(25));

-- Location: LCCOMB_X51_Y10_N14
\aProcessor|displayAll|HexDisplay32Bits[25]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~110_combout\ = (!\aProcessor|displayAll|HexDisplay32Bits[25]~109_combout\ & (((\switch~combout\(3)) # (\switch~combout\(2))) # (!\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~109_combout\,
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~110_combout\);

-- Location: LCCOMB_X53_Y10_N10
\aProcessor|displayAll|HexDisplay32Bits[25]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~111_combout\ = (\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|displayAll|Mux12~2_combout\)))) # (!\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|InstAddGen|PC\(25) & !\switch~combout\(0))) # 
-- (!\aProcessor|displayAll|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(25),
	datab => \aProcessor|displayAll|Mux27~3_combout\,
	datac => \switch~combout\(0),
	datad => \aProcessor|displayAll|Mux12~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~111_combout\);

-- Location: LCCOMB_X50_Y10_N28
\aProcessor|displayAll|HexDisplay32Bits[25]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~112_combout\ = (\aProcessor|displayAll|Mux27~7_combout\) # ((\aProcessor|displayAll|Mux12~1_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[25]~111_combout\ & \aProcessor|displayAll|Mux27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~7_combout\,
	datab => \aProcessor|displayAll|Mux12~1_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[25]~111_combout\,
	datad => \aProcessor|displayAll|Mux27~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~112_combout\);

-- Location: LCCOMB_X50_Y10_N10
\aProcessor|displayAll|HexDisplay32Bits[25]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~113_combout\ = (\aProcessor|displayAll|Mux12~1_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[25]~110_combout\ & \aProcessor|displayAll|HexDisplay32Bits[25]~112_combout\)))) # 
-- (!\aProcessor|displayAll|Mux12~1_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[25]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[25]~110_combout\,
	datac => \aProcessor|displayAll|Mux12~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[25]~112_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~113_combout\);

-- Location: LCCOMB_X53_Y10_N8
\aProcessor|displayAll|HexDisplay32Bits[25]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[25]~113_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & 
-- \aProcessor|InstAddGen|PC_temp\(25))))) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & (\aProcessor|InstAddGen|PC_temp\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(25),
	datad => \aProcessor|displayAll|HexDisplay32Bits[25]~113_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\);

-- Location: LCCOMB_X53_Y7_N20
\aProcessor|InstAddGen|PC[26]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[26]~85_combout\ = (\aProcessor|InstAddGen|PC\(26) & (\aProcessor|InstAddGen|PC[25]~84\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(26) & (!\aProcessor|InstAddGen|PC[25]~84\ & VCC))
-- \aProcessor|InstAddGen|PC[26]~86\ = CARRY((\aProcessor|InstAddGen|PC\(26) & !\aProcessor|InstAddGen|PC[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(26),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[25]~84\,
	combout => \aProcessor|InstAddGen|PC[26]~85_combout\,
	cout => \aProcessor|InstAddGen|PC[26]~86\);

-- Location: LCFF_X53_Y7_N21
\aProcessor|InstAddGen|PC[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[26]~85_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(26));

-- Location: LCFF_X53_Y10_N21
\aProcessor|InstAddGen|PC_temp[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(26));

-- Location: LCCOMB_X53_Y10_N2
\aProcessor|displayAll|HexDisplay32Bits[26]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~117_combout\ = (\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|displayAll|Mux12~2_combout\)))) # (!\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|InstAddGen|PC\(26) & !\switch~combout\(0))) # 
-- (!\aProcessor|displayAll|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(26),
	datab => \aProcessor|displayAll|Mux27~3_combout\,
	datac => \switch~combout\(0),
	datad => \aProcessor|displayAll|Mux12~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~117_combout\);

-- Location: LCCOMB_X54_Y10_N2
\aProcessor|displayAll|HexDisplay32Bits[26]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~118_combout\ = (\aProcessor|displayAll|Mux27~7_combout\) # ((\aProcessor|displayAll|Mux12~1_combout\ & (\aProcessor|displayAll|Mux27~4_combout\ & \aProcessor|displayAll|HexDisplay32Bits[26]~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux12~1_combout\,
	datab => \aProcessor|displayAll|Mux27~7_combout\,
	datac => \aProcessor|displayAll|Mux27~4_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[26]~117_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~118_combout\);

-- Location: LCCOMB_X51_Y10_N8
\aProcessor|displayAll|HexDisplay32Bits[26]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~115_combout\ = (\aProcessor|displayAll|Mux27~7_combout\ & (((!\InstructionROM|altsyncram_component|auto_generated|q_a\(26))))) # (!\aProcessor|displayAll|Mux27~7_combout\ & 
-- (\aProcessor|displayAll|Mux27~3_combout\ & ((!\InstructionROM|altsyncram_component|auto_generated|q_a\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~3_combout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(26),
	datac => \aProcessor|displayAll|Mux27~7_combout\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(29),
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~115_combout\);

-- Location: LCCOMB_X51_Y10_N26
\aProcessor|displayAll|HexDisplay32Bits[26]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~116_combout\ = (!\aProcessor|displayAll|HexDisplay32Bits[26]~115_combout\ & ((\switch~combout\(2)) # ((\switch~combout\(3)) # (!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~115_combout\,
	datac => \switch~combout\(3),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~116_combout\);

-- Location: LCCOMB_X54_Y10_N0
\aProcessor|displayAll|HexDisplay32Bits[26]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~119_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[26]~118_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[26]~116_combout\ & \aProcessor|displayAll|Mux12~1_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[26]~118_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\ & ((!\aProcessor|displayAll|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~118_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[26]~116_combout\,
	datad => \aProcessor|displayAll|Mux12~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~119_combout\);

-- Location: LCCOMB_X53_Y10_N20
\aProcessor|displayAll|HexDisplay32Bits[26]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[26]~119_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & 
-- \aProcessor|InstAddGen|PC_temp\(26))))) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & (\aProcessor|InstAddGen|PC_temp\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(26),
	datad => \aProcessor|displayAll|HexDisplay32Bits[26]~119_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\);

-- Location: LCFF_X53_Y7_N17
\aProcessor|InstAddGen|PC[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[24]~81_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(24));

-- Location: LCFF_X53_Y10_N13
\aProcessor|InstAddGen|PC_temp[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(24));

-- Location: LCCOMB_X53_Y10_N26
\aProcessor|displayAll|HexDisplay32Bits[24]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[24]~105_combout\ = (\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|displayAll|Mux12~2_combout\)))) # (!\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|InstAddGen|PC\(24) & !\switch~combout\(0))) # 
-- (!\aProcessor|displayAll|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(24),
	datab => \aProcessor|displayAll|Mux27~3_combout\,
	datac => \switch~combout\(0),
	datad => \aProcessor|displayAll|Mux12~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[24]~105_combout\);

-- Location: LCCOMB_X54_Y10_N18
\aProcessor|displayAll|HexDisplay32Bits[24]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[24]~106_combout\ = (\aProcessor|displayAll|Mux27~7_combout\) # ((\aProcessor|displayAll|Mux12~1_combout\ & (\aProcessor|displayAll|Mux27~4_combout\ & \aProcessor|displayAll|HexDisplay32Bits[24]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux12~1_combout\,
	datab => \aProcessor|displayAll|Mux27~7_combout\,
	datac => \aProcessor|displayAll|Mux27~4_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[24]~105_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[24]~106_combout\);

-- Location: LCCOMB_X51_Y10_N28
\aProcessor|displayAll|HexDisplay32Bits[24]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[24]~103_combout\ = (\aProcessor|displayAll|Mux27~7_combout\ & (((!\InstructionROM|altsyncram_component|auto_generated|q_a\(24))))) # (!\aProcessor|displayAll|Mux27~7_combout\ & 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(27) & (\aProcessor|displayAll|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(27),
	datab => \aProcessor|displayAll|Mux27~7_combout\,
	datac => \aProcessor|displayAll|Mux27~3_combout\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(24),
	combout => \aProcessor|displayAll|HexDisplay32Bits[24]~103_combout\);

-- Location: LCCOMB_X51_Y10_N6
\aProcessor|displayAll|HexDisplay32Bits[24]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[24]~104_combout\ = (!\aProcessor|displayAll|HexDisplay32Bits[24]~103_combout\ & ((\switch~combout\(2)) # ((\switch~combout\(3)) # (!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \aProcessor|displayAll|HexDisplay32Bits[24]~103_combout\,
	datac => \switch~combout\(3),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[24]~104_combout\);

-- Location: LCCOMB_X54_Y10_N4
\aProcessor|displayAll|HexDisplay32Bits[24]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[24]~107_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[24]~106_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[24]~104_combout\ & \aProcessor|displayAll|Mux12~1_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[24]~106_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\ & ((!\aProcessor|displayAll|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[24]~106_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[24]~104_combout\,
	datad => \aProcessor|displayAll|Mux12~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[24]~107_combout\);

-- Location: LCCOMB_X53_Y10_N12
\aProcessor|displayAll|HexDisplay32Bits[24]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[24]~107_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & 
-- \aProcessor|InstAddGen|PC_temp\(24))))) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & (\aProcessor|InstAddGen|PC_temp\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(24),
	datad => \aProcessor|displayAll|HexDisplay32Bits[24]~107_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\);

-- Location: LCCOMB_X53_Y7_N22
\aProcessor|InstAddGen|PC[27]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[27]~87_combout\ = (\aProcessor|InstAddGen|PC\(27) & (!\aProcessor|InstAddGen|PC[26]~86\)) # (!\aProcessor|InstAddGen|PC\(27) & ((\aProcessor|InstAddGen|PC[26]~86\) # (GND)))
-- \aProcessor|InstAddGen|PC[27]~88\ = CARRY((!\aProcessor|InstAddGen|PC[26]~86\) # (!\aProcessor|InstAddGen|PC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(27),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[26]~86\,
	combout => \aProcessor|InstAddGen|PC[27]~87_combout\,
	cout => \aProcessor|InstAddGen|PC[27]~88\);

-- Location: LCFF_X53_Y7_N23
\aProcessor|InstAddGen|PC[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[27]~87_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(27));

-- Location: LCFF_X50_Y10_N25
\aProcessor|InstAddGen|PC_temp[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(27));

-- Location: LCCOMB_X50_Y10_N30
\aProcessor|displayAll|HexDisplay32Bits[27]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~123_combout\ = (\aProcessor|displayAll|Mux27~3_combout\ & (\aProcessor|displayAll|Mux12~2_combout\)) # (!\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|InstAddGen|PC\(27) & !\switch~combout\(0))) # 
-- (!\aProcessor|displayAll|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~3_combout\,
	datab => \aProcessor|displayAll|Mux12~2_combout\,
	datac => \aProcessor|InstAddGen|PC\(27),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~123_combout\);

-- Location: LCCOMB_X50_Y10_N4
\aProcessor|displayAll|HexDisplay32Bits[27]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~124_combout\ = (\aProcessor|displayAll|Mux27~7_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[27]~123_combout\ & (\aProcessor|displayAll|Mux12~1_combout\ & \aProcessor|displayAll|Mux27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~7_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[27]~123_combout\,
	datac => \aProcessor|displayAll|Mux12~1_combout\,
	datad => \aProcessor|displayAll|Mux27~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~124_combout\);

-- Location: LCCOMB_X54_Y10_N6
\aProcessor|displayAll|HexDisplay32Bits[17]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\ = (\switch~combout\(3)) # ((\switch~combout\(2)) # (!\switch~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(3),
	datac => \switch~combout\(2),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\);

-- Location: LCCOMB_X50_Y10_N2
\aProcessor|displayAll|HexDisplay32Bits[27]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~125_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[27]~124_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[27]~122_combout\ & (\aProcessor|displayAll|Mux12~1_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[27]~124_combout\ & (((!\aProcessor|displayAll|Mux12~1_combout\ & \aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[27]~122_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[27]~124_combout\,
	datac => \aProcessor|displayAll|Mux12~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~125_combout\);

-- Location: LCCOMB_X50_Y10_N24
\aProcessor|displayAll|HexDisplay32Bits[27]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[27]~125_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & 
-- \aProcessor|InstAddGen|PC_temp\(27))))) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & (\aProcessor|InstAddGen|PC_temp\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(27),
	datad => \aProcessor|displayAll|HexDisplay32Bits[27]~125_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\);

-- Location: LCCOMB_X1_Y17_N28
\uHEX6|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\,
	combout => \uHEX6|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y17_N14
\uHEX6|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\,
	combout => \uHEX6|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y17_N20
\uHEX6|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\,
	combout => \uHEX6|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y17_N6
\uHEX6|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ $ ((!\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\ & \aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\,
	combout => \uHEX6|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y17_N12
\uHEX6|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\,
	combout => \uHEX6|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y17_N10
\uHEX6|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\,
	combout => \uHEX6|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y17_N8
\uHEX6|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~114_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~120_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[24]~108_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[27]~126_combout\,
	combout => \uHEX6|WideOr0~0_combout\);

-- Location: LCCOMB_X53_Y7_N24
\aProcessor|InstAddGen|PC[28]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[28]~89_combout\ = (\aProcessor|InstAddGen|PC\(28) & (\aProcessor|InstAddGen|PC[27]~88\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(28) & (!\aProcessor|InstAddGen|PC[27]~88\ & VCC))
-- \aProcessor|InstAddGen|PC[28]~90\ = CARRY((\aProcessor|InstAddGen|PC\(28) & !\aProcessor|InstAddGen|PC[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(28),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[27]~88\,
	combout => \aProcessor|InstAddGen|PC[28]~89_combout\,
	cout => \aProcessor|InstAddGen|PC[28]~90\);

-- Location: LCCOMB_X53_Y7_N26
\aProcessor|InstAddGen|PC[29]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[29]~91_combout\ = (\aProcessor|InstAddGen|PC\(29) & (!\aProcessor|InstAddGen|PC[28]~90\)) # (!\aProcessor|InstAddGen|PC\(29) & ((\aProcessor|InstAddGen|PC[28]~90\) # (GND)))
-- \aProcessor|InstAddGen|PC[29]~92\ = CARRY((!\aProcessor|InstAddGen|PC[28]~90\) # (!\aProcessor|InstAddGen|PC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(29),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[28]~90\,
	combout => \aProcessor|InstAddGen|PC[29]~91_combout\,
	cout => \aProcessor|InstAddGen|PC[29]~92\);

-- Location: LCFF_X53_Y7_N27
\aProcessor|InstAddGen|PC[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[29]~91_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(29));

-- Location: LCFF_X49_Y8_N11
\aProcessor|InstAddGen|PC_temp[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(29));

-- Location: LCCOMB_X50_Y8_N4
\aProcessor|displayAll|HexDisplay32Bits[22]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~98_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[16]~57_combout\ & (((!\switch~combout\(1) & !\switch~combout\(2))) # (!\switch~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~57_combout\,
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~98_combout\);

-- Location: LCCOMB_X49_Y8_N10
\aProcessor|displayAll|HexDisplay32Bits[29]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~98_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[29]~133_combout\) # ((\aProcessor|displayAll|Mux12~0_combout\ & 
-- \aProcessor|InstAddGen|PC_temp\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[29]~133_combout\,
	datab => \aProcessor|displayAll|Mux12~0_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(29),
	datad => \aProcessor|displayAll|HexDisplay32Bits[22]~98_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\);

-- Location: LCCOMB_X53_Y7_N28
\aProcessor|InstAddGen|PC[30]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[30]~93_combout\ = (\aProcessor|InstAddGen|PC\(30) & (\aProcessor|InstAddGen|PC[29]~92\ $ (GND))) # (!\aProcessor|InstAddGen|PC\(30) & (!\aProcessor|InstAddGen|PC[29]~92\ & VCC))
-- \aProcessor|InstAddGen|PC[30]~94\ = CARRY((\aProcessor|InstAddGen|PC\(30) & !\aProcessor|InstAddGen|PC[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(30),
	datad => VCC,
	cin => \aProcessor|InstAddGen|PC[29]~92\,
	combout => \aProcessor|InstAddGen|PC[30]~93_combout\,
	cout => \aProcessor|InstAddGen|PC[30]~94\);

-- Location: LCFF_X53_Y7_N29
\aProcessor|InstAddGen|PC[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[30]~93_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(30));

-- Location: LCCOMB_X53_Y7_N30
\aProcessor|InstAddGen|PC[31]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC[31]~95_combout\ = \aProcessor|InstAddGen|PC[30]~94\ $ (\aProcessor|InstAddGen|PC\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|InstAddGen|PC\(31),
	cin => \aProcessor|InstAddGen|PC[30]~94\,
	combout => \aProcessor|InstAddGen|PC[31]~95_combout\);

-- Location: LCFF_X53_Y7_N31
\aProcessor|InstAddGen|PC[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[31]~95_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(31));

-- Location: LCCOMB_X49_Y8_N14
\aProcessor|displayAll|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux0~1_combout\ = (!\switch~combout\(0) & (!\switch~combout\(1) & (\aProcessor|InstAddGen|PC\(31) & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(31),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux0~1_combout\);

-- Location: LCCOMB_X49_Y8_N0
\aProcessor|displayAll|HexDisplay32Bits[31]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[31]~137_combout\ = (!\aProcessor|displayAll|Mux0~0_combout\ & ((\switch~combout\(3) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(31)))) # (!\switch~combout\(3) & 
-- (\aProcessor|displayAll|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|displayAll|Mux0~0_combout\,
	datac => \aProcessor|displayAll|Mux0~1_combout\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(31),
	combout => \aProcessor|displayAll|HexDisplay32Bits[31]~137_combout\);

-- Location: LCFF_X49_Y8_N23
\aProcessor|InstAddGen|PC_temp[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(31));

-- Location: LCCOMB_X49_Y8_N22
\aProcessor|displayAll|HexDisplay32Bits[31]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~98_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[31]~137_combout\) # ((\aProcessor|InstAddGen|PC_temp\(31) & 
-- \aProcessor|displayAll|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~98_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[31]~137_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(31),
	datad => \aProcessor|displayAll|Mux12~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\);

-- Location: LCCOMB_X49_Y8_N20
\aProcessor|displayAll|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux1~0_combout\ = (!\switch~combout\(0) & (!\switch~combout\(1) & (\aProcessor|InstAddGen|PC\(30) & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|InstAddGen|PC\(30),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y8_N26
\aProcessor|displayAll|HexDisplay32Bits[30]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[30]~135_combout\ = (!\aProcessor|displayAll|Mux0~0_combout\ & ((\switch~combout\(3) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(30)))) # (!\switch~combout\(3) & 
-- (\aProcessor|displayAll|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \aProcessor|displayAll|Mux0~0_combout\,
	datac => \aProcessor|displayAll|Mux1~0_combout\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(30),
	combout => \aProcessor|displayAll|HexDisplay32Bits[30]~135_combout\);

-- Location: LCFF_X49_Y8_N17
\aProcessor|InstAddGen|PC_temp[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(30));

-- Location: LCCOMB_X49_Y8_N16
\aProcessor|displayAll|HexDisplay32Bits[30]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~98_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[30]~135_combout\) # ((\aProcessor|InstAddGen|PC_temp\(30) & 
-- \aProcessor|displayAll|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~98_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[30]~135_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(30),
	datad => \aProcessor|displayAll|Mux12~0_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\);

-- Location: LCFF_X53_Y7_N25
\aProcessor|InstAddGen|PC[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[28]~89_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(28));

-- Location: LCFF_X53_Y10_N29
\aProcessor|InstAddGen|PC_temp[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|InstAddGen|PC\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC_temp\(28));

-- Location: LCCOMB_X54_Y10_N26
\aProcessor|displayAll|HexDisplay32Bits[28]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[28]~130_combout\ = (\aProcessor|displayAll|Mux27~7_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[28]~129_combout\ & (\aProcessor|displayAll|Mux27~4_combout\ & \aProcessor|displayAll|Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[28]~129_combout\,
	datab => \aProcessor|displayAll|Mux27~7_combout\,
	datac => \aProcessor|displayAll|Mux27~4_combout\,
	datad => \aProcessor|displayAll|Mux12~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[28]~130_combout\);

-- Location: LCCOMB_X51_Y10_N18
\aProcessor|displayAll|HexDisplay32Bits[28]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[28]~128_combout\ = (!\aProcessor|displayAll|HexDisplay32Bits[28]~127_combout\ & (((\switch~combout\(3)) # (\switch~combout\(2))) # (!\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[28]~127_combout\,
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[28]~128_combout\);

-- Location: LCCOMB_X54_Y10_N28
\aProcessor|displayAll|HexDisplay32Bits[28]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[28]~131_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[28]~130_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[28]~128_combout\ & \aProcessor|displayAll|Mux12~1_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[28]~130_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\ & ((!\aProcessor|displayAll|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~70_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[28]~130_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[28]~128_combout\,
	datad => \aProcessor|displayAll|Mux12~1_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[28]~131_combout\);

-- Location: LCCOMB_X53_Y10_N28
\aProcessor|displayAll|HexDisplay32Bits[28]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[28]~131_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & 
-- \aProcessor|InstAddGen|PC_temp\(28))))) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\ & (\aProcessor|InstAddGen|PC_temp\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~68_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~69_combout\,
	datac => \aProcessor|InstAddGen|PC_temp\(28),
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~131_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\);

-- Location: LCCOMB_X1_Y24_N12
\uHEX7|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\,
	combout => \uHEX7|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y24_N14
\uHEX7|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\,
	combout => \uHEX7|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y24_N20
\uHEX7|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\,
	combout => \uHEX7|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y24_N30
\uHEX7|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\ & \aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\,
	combout => \uHEX7|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\uHEX7|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\,
	combout => \uHEX7|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y24_N10
\uHEX7|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\,
	combout => \uHEX7|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y24_N0
\uHEX7|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[29]~134_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[31]~138_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~136_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~132_combout\,
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
	padio => ww_switch(17));

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
	datain => \aProcessor|RAND|Q\(0),
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


