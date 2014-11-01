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

-- DATE "11/01/2014 18:08:12"

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
-- pushBut[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- switch[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_27	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \debounceit0|PB_state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_27~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aProcessor|RZ|Q[1]~31_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[6]~45_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[8]~49_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[15]~59_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[19]~71_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[22]~77_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[24]~81_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[26]~85_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[28]~89_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[5]~26_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[6]~28_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[8]~32_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[10]~36_combout\ : std_logic;
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
SIGNAL \debounceit3|PB_cnt[5]~26_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[8]~32_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[14]~45\ : std_logic;
SIGNAL \debounceit3|PB_cnt[15]~46_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~15_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~10_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~12_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~18_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~19_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~20_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~21_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~33_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~38_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~16_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~55_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~57_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~58_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~59_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~60_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~63_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~75_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~81_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~83_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~84_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~85_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~90_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~105_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~106_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~114_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~115_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~122_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~130_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~135_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~140_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~141_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~142_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~143_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~144_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~154_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~155_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~156_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux10~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux10~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux10~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~168_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~169_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~170_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~171_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~176_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~177_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~178_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~179_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~27_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~28_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~29_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux10~11_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~184_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~185_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~186_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~190_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~199_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~32_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~33_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~34_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux10~13_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[29]~207_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~0_regout\ : std_logic;
SIGNAL \debounceit1|PB_state~2_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1028_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1035_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~15_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1057_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1060_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1065_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1075_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~25_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~31_regout\ : std_logic;
SIGNAL \debounceit0|PB_sync_1~regout\ : std_logic;
SIGNAL \debounceit0|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~1_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~2_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~3_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~1_combout\ : std_logic;
SIGNAL \debounceit0|comb~0_combout\ : std_logic;
SIGNAL \debounceit0|PB_sync_0~regout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~228_combout\ : std_logic;
SIGNAL \debounceit0|PB_sync_0~0_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~clkctrl_outclk\ : std_logic;
SIGNAL \aProcessor|RY|Q[1]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[31]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~0feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1feeder_combout\ : std_logic;
SIGNAL \aProcessor|RM|Q[2]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~15feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~25feeder_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux10~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~23_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[0]~32_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[0]~16_combout\ : std_logic;
SIGNAL \debounceit3|PB_sync_0~0_combout\ : std_logic;
SIGNAL \debounceit3|PB_sync_0~regout\ : std_logic;
SIGNAL \debounceit3|PB_sync_1~feeder_combout\ : std_logic;
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
SIGNAL \debounceit3|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[12]~40_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[10]~36_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~3_combout\ : std_logic;
SIGNAL \debounceit3|PB_cnt[6]~28_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~2_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit3|PB_state~regout\ : std_logic;
SIGNAL \aProcessor|CSG|StageGenerator|ClockCount~1_combout\ : std_logic;
SIGNAL \aProcessor|CSG|StageGenerator|ClockCount~2_combout\ : std_logic;
SIGNAL \aProcessor|CSG|StageGenerator|ClockCount~0_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC~34_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[0]~33\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[1]~35_combout\ : std_logic;
SIGNAL \clk_27~combout\ : std_logic;
SIGNAL \clk_27~clkctrl_outclk\ : std_logic;
SIGNAL \aProcessor|CSG|EnableSignals|Decoder0~0_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[1]~36\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[2]~37_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[2]~38\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[3]~39_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[3]~40\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[4]~41_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[4]~42\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[5]~43_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~17_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~24_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~8_combout\ : std_logic;
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
SIGNAL \debounceit1|PB_cnt[3]~22_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~1_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[12]~40_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~3_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~regout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~22_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ : std_logic;
SIGNAL \aProcessor|IR|Q[28]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1024_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1025_combout\ : std_logic;
SIGNAL \aProcessor|CSG|EnableSignals|Decoder0~3_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[0]~93_combout\ : std_logic;
SIGNAL \aProcessor|CSG|EnableSignals|Decoder0~2_combout\ : std_logic;
SIGNAL \aProcessor|CSG|EnableSignals|Decoder0~1_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1026_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1027_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~35_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~10_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~36_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~12_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~13_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux31~3_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux31~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux31~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux31~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux31~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux31~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~34_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~2feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~2_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1031_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1029_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[1]~32\ : std_logic;
SIGNAL \aProcessor|RZ|Q[2]~33_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~26_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~29_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1030_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~30_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~31_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~32_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~35_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1033_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[2]~34\ : std_logic;
SIGNAL \aProcessor|RZ|Q[3]~35_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~3feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~3_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1032_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~39_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~40_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~41_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~42_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~11_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~37_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~44_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\ : std_logic;
SIGNAL \uHEX0|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[3]~36\ : std_logic;
SIGNAL \aProcessor|RZ|Q[4]~37_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[4]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~4feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~4_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1034_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[4]~38\ : std_logic;
SIGNAL \aProcessor|RZ|Q[5]~39_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[5]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~5feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~5_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1036_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1037_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~49_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~50_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~51_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~52_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~53_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~48_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~9_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~17_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~18_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~3_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~19_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux27~6_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~64_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[7]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~7feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~7_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1041_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[5]~40\ : std_logic;
SIGNAL \aProcessor|RZ|Q[6]~41_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[6]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~6feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~6_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1039_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[6]~42\ : std_logic;
SIGNAL \aProcessor|RZ|Q[7]~43_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1040_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[5]~44\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[6]~46\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[7]~47_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~65_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~66_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~67_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~68_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~69_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\ : std_logic;
SIGNAL \aProcessor|IR|Q[12]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~21_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~56_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1038_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~61_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\ : std_logic;
SIGNAL \uHEX1|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~71_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[7]~44\ : std_logic;
SIGNAL \aProcessor|RZ|Q[8]~45_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[8]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~8feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~8_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1042_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~76_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~77_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1043_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~78_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~79_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~229_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~89_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[8]~46\ : std_logic;
SIGNAL \aProcessor|RZ|Q[9]~47_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[9]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~9feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~9_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1045_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[9]~48\ : std_logic;
SIGNAL \aProcessor|RZ|Q[10]~49_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[10]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~10_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1047_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[7]~48\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[8]~50\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[9]~51_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[9]~52\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[10]~53_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~91_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~92_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1046_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~93_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~94_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~95_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1044_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~86_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~87_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~82_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[10]~54\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[11]~55_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~99_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~100_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1049_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[10]~50\ : std_logic;
SIGNAL \aProcessor|RZ|Q[11]~51_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~11_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1048_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~101_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~102_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~103_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~97_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~98_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\ : std_logic;
SIGNAL \uHEX2|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[11]~56\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[12]~58\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[13]~59_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[13]~60\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[14]~61_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[14]~62\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[15]~63_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~3_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~20_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~4_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux16~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~111_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1051_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[11]~52\ : std_logic;
SIGNAL \aProcessor|RZ|Q[12]~53_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~12_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1050_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[12]~57_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~107_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~108_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~109_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~110_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~112_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~13_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1053_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[12]~54\ : std_logic;
SIGNAL \aProcessor|RZ|Q[13]~55_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1052_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~116_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~117_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~118_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~119_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~45_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[13]~56\ : std_logic;
SIGNAL \aProcessor|RZ|Q[14]~57_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[14]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~14feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~14_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1054_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1055_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~123_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~124_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~125_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~126_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~24_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~121_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~127_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\ : std_logic;
SIGNAL \uHEX3|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1056_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[14]~58\ : std_logic;
SIGNAL \aProcessor|RZ|Q[15]~60\ : std_logic;
SIGNAL \aProcessor|RZ|Q[16]~62\ : std_logic;
SIGNAL \aProcessor|RZ|Q[17]~63_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[17]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~17feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~17_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1061_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[17]~64\ : std_logic;
SIGNAL \aProcessor|RZ|Q[18]~65_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[18]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~18feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~18_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1063_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[18]~66\ : std_logic;
SIGNAL \aProcessor|RZ|Q[19]~67_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[19]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~19feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~19_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1064_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~157_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux10~15_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~158_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~139_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~159_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[15]~64\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[16]~65_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~22_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[16]~61_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~16feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~16_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1058_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1059_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[16]~131_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[16]~132_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~25_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[16]~133_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[16]~134_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[16]~136_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[16]~137_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~23_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[16]~66\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[17]~67_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~145_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1062_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~147_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~148_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~149_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~150_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~151_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~152_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\ : std_logic;
SIGNAL \uHEX4|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1068_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[19]~68\ : std_logic;
SIGNAL \aProcessor|RZ|Q[20]~70\ : std_logic;
SIGNAL \aProcessor|RZ|Q[21]~71_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~21feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~21_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1069_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux10~9_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[17]~68\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[18]~69_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[18]~70\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[19]~72\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[20]~73_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[20]~74\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[21]~75_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux10~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux10~10_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1073_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[21]~72\ : std_logic;
SIGNAL \aProcessor|RZ|Q[22]~73_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[22]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~22feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~22_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1071_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[22]~74\ : std_logic;
SIGNAL \aProcessor|RZ|Q[23]~75_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[23]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~23feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~23_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1072_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~180_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~181_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~174_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1070_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~172_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~173_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[16]~129_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[20]~69_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[20]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~20feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~20_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1067_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~161_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~162_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1066_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~163_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~164_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~165_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~166_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\ : std_logic;
SIGNAL \uHEX5|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX5|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[23]~76\ : std_logic;
SIGNAL \aProcessor|RZ|Q[24]~77_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~24feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~24_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1074_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~26_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~37_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~30_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux10~12_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1079_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1077_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[24]~78\ : std_logic;
SIGNAL \aProcessor|RZ|Q[25]~80\ : std_logic;
SIGNAL \aProcessor|RZ|Q[26]~81_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~26feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~26_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1078_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~192_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~193_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~194_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~195_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~196_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~197_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1081_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[26]~82\ : std_logic;
SIGNAL \aProcessor|RZ|Q[27]~83_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[27]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~27feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~27_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1080_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~200_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~201_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~202_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~203_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~204_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[25]~79_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[25]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1076_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~187_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\ : std_logic;
SIGNAL \uHEX6|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX6|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[21]~76\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[22]~78\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[23]~79_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[23]~80\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[24]~82\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[25]~83_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[25]~84\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[26]~86\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[27]~87_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[27]~88\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[28]~90\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[29]~91_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[29]~92\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[30]~93_combout\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[30]~94\ : std_logic;
SIGNAL \aProcessor|InstAddGen|PC[31]~95_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[31]~221_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1089_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[31]~222_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1088_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[27]~84\ : std_logic;
SIGNAL \aProcessor|RZ|Q[28]~85_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~28_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1083_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[28]~86\ : std_logic;
SIGNAL \aProcessor|RZ|Q[29]~87_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~29_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1085_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[29]~88\ : std_logic;
SIGNAL \aProcessor|RZ|Q[30]~89_combout\ : std_logic;
SIGNAL \aProcessor|RY|Q[30]~feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~30feeder_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~30_regout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1087_combout\ : std_logic;
SIGNAL \aProcessor|RZ|Q[30]~90\ : std_logic;
SIGNAL \aProcessor|RZ|Q[31]~91_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[31]~223_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[31]~224_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[31]~225_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[31]~226_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[30]~214_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[30]~215_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[30]~216_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[30]~217_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1086_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[30]~218_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[30]~219_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1084_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[29]~209_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[29]~210_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[29]~211_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[29]~212_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\ : std_logic;
SIGNAL \aProcessor|RegFile|R~1082_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~31_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~38_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux28~14_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|Mux10~14_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\ : std_logic;
SIGNAL \uHEX7|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX7|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX7|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX7|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX7|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX7|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX7|WideOr0~0_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \debounceit3|PB_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \aProcessor|RA|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aProcessor|RB|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aProcessor|RZ|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aProcessor|RM|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aProcessor|RY|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aProcessor|InstAddGen|PC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \aProcessor|CSG|StageGenerator|ClockCount\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \switch~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \debounceit0|PB_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Memory|ROM1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \pushBut~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aProcessor|IR|Q\ : std_logic_vector(31 DOWNTO 0);
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

\Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\aProcessor|InstAddGen|PC\(5) & \aProcessor|InstAddGen|PC\(4) & \aProcessor|InstAddGen|PC\(3) & \aProcessor|InstAddGen|PC\(2) & \aProcessor|InstAddGen|PC\(1) & 
\aProcessor|InstAddGen|PC\(0));

\Memory|ROM1|altsyncram_component|auto_generated|q_a\(0) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(1) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(2) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(3) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(4) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(5) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(6) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(7) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(8) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(9) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(10) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(11) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(12) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(13) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(14) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(15) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(16) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(17) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(18) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(19) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(20) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(21) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(22) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(23) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(24) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(25) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(26) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(27) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(28) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(29) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(30) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\Memory|ROM1|altsyncram_component|auto_generated|q_a\(31) <= \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

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

-- Location: M4K_X52_Y15
\Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00A9867000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008860040004400400248F9E20000001E000000140000000A000000010000005A000000500000000A2108004021080040210800402108004000000001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitializationFile.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MemoryInterface:Memory|ROM:ROM1|altsyncram:altsyncram_component|altsyncram_cp91:auto_generated|ALTSYNCRAM",
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
	ena0 => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	portaaddr => \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Memory|ROM1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X48_Y17_N3
\aProcessor|RZ|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[1]~31_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(1));

-- Location: LCFF_X54_Y15_N13
\aProcessor|InstAddGen|PC[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[6]~45_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(6));

-- Location: LCFF_X54_Y15_N17
\aProcessor|InstAddGen|PC[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[8]~49_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(8));

-- Location: LCFF_X48_Y17_N31
\aProcessor|RZ|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[15]~59_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(15));

-- Location: LCFF_X54_Y14_N7
\aProcessor|InstAddGen|PC[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[19]~71_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(19));

-- Location: LCFF_X54_Y14_N13
\aProcessor|InstAddGen|PC[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[22]~77_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(22));

-- Location: LCFF_X54_Y14_N17
\aProcessor|InstAddGen|PC[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[24]~81_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(24));

-- Location: LCFF_X54_Y14_N21
\aProcessor|InstAddGen|PC[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[26]~85_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(26));

-- Location: LCFF_X54_Y14_N25
\aProcessor|InstAddGen|PC[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[28]~89_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(28));

-- Location: LCFF_X47_Y21_N31
\debounceit1|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[15]~46_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(15));

-- Location: LCFF_X47_Y21_N11
\debounceit1|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[5]~26_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(5));

-- Location: LCFF_X47_Y21_N13
\debounceit1|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[6]~28_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(6));

-- Location: LCFF_X47_Y21_N17
\debounceit1|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[8]~32_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(8));

-- Location: LCFF_X47_Y21_N21
\debounceit1|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[10]~36_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(10));

-- Location: LCCOMB_X48_Y17_N2
\aProcessor|RZ|Q[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[1]~31_combout\ = (\aProcessor|RA|Q\(0) & (\aProcessor|RA|Q\(1) $ (VCC))) # (!\aProcessor|RA|Q\(0) & (\aProcessor|RA|Q\(1) & VCC))
-- \aProcessor|RZ|Q[1]~32\ = CARRY((\aProcessor|RA|Q\(0) & \aProcessor|RA|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RA|Q\(0),
	datab => \aProcessor|RA|Q\(1),
	datad => VCC,
	combout => \aProcessor|RZ|Q[1]~31_combout\,
	cout => \aProcessor|RZ|Q[1]~32\);

-- Location: LCCOMB_X54_Y15_N12
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

-- Location: LCCOMB_X54_Y15_N16
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

-- Location: LCCOMB_X48_Y17_N30
\aProcessor|RZ|Q[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[15]~59_combout\ = (\aProcessor|RA|Q\(15) & (\aProcessor|RZ|Q[14]~58\ $ (GND))) # (!\aProcessor|RA|Q\(15) & (!\aProcessor|RZ|Q[14]~58\ & VCC))
-- \aProcessor|RZ|Q[15]~60\ = CARRY((\aProcessor|RA|Q\(15) & !\aProcessor|RZ|Q[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(15),
	datad => VCC,
	cin => \aProcessor|RZ|Q[14]~58\,
	combout => \aProcessor|RZ|Q[15]~59_combout\,
	cout => \aProcessor|RZ|Q[15]~60\);

-- Location: LCCOMB_X54_Y14_N6
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

-- Location: LCCOMB_X54_Y14_N12
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

-- Location: LCCOMB_X54_Y14_N16
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

-- Location: LCCOMB_X54_Y14_N20
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

-- Location: LCCOMB_X54_Y14_N24
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

-- Location: LCFF_X37_Y19_N29
\debounceit0|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[14]~44_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(14));

-- Location: LCFF_X37_Y19_N31
\debounceit0|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[15]~46_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(15));

-- Location: LCFF_X37_Y19_N1
\debounceit0|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[0]~16_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(0));

-- Location: LCFF_X37_Y19_N3
\debounceit0|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[1]~18_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(1));

-- Location: LCFF_X37_Y19_N5
\debounceit0|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[2]~20_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(2));

-- Location: LCFF_X37_Y19_N7
\debounceit0|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[3]~22_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(3));

-- Location: LCFF_X37_Y19_N9
\debounceit0|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[4]~24_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(4));

-- Location: LCFF_X37_Y19_N11
\debounceit0|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[5]~26_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(5));

-- Location: LCFF_X37_Y19_N13
\debounceit0|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[6]~28_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(6));

-- Location: LCFF_X37_Y19_N15
\debounceit0|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[7]~30_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(7));

-- Location: LCFF_X37_Y19_N17
\debounceit0|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[8]~32_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(8));

-- Location: LCFF_X37_Y19_N19
\debounceit0|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[9]~34_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(9));

-- Location: LCFF_X37_Y19_N21
\debounceit0|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[10]~36_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(10));

-- Location: LCFF_X37_Y19_N23
\debounceit0|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[11]~38_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(11));

-- Location: LCFF_X37_Y19_N25
\debounceit0|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[12]~40_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(12));

-- Location: LCFF_X37_Y19_N27
\debounceit0|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[13]~42_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(13));

-- Location: LCFF_X56_Y15_N31
\debounceit3|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[15]~46_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(15));

-- Location: LCFF_X56_Y15_N7
\debounceit3|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[3]~22_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(3));

-- Location: LCFF_X56_Y15_N11
\debounceit3|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[5]~26_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(5));

-- Location: LCFF_X56_Y15_N17
\debounceit3|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[8]~32_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(8));

-- Location: LCCOMB_X47_Y21_N10
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

-- Location: LCCOMB_X47_Y21_N12
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

-- Location: LCCOMB_X47_Y21_N16
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

-- Location: LCCOMB_X47_Y21_N20
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

-- Location: LCCOMB_X47_Y21_N28
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

-- Location: LCCOMB_X47_Y21_N30
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

-- Location: LCCOMB_X37_Y19_N0
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

-- Location: LCCOMB_X37_Y19_N2
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

-- Location: LCCOMB_X37_Y19_N4
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

-- Location: LCCOMB_X37_Y19_N6
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

-- Location: LCCOMB_X37_Y19_N8
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

-- Location: LCCOMB_X37_Y19_N10
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

-- Location: LCCOMB_X37_Y19_N12
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

-- Location: LCCOMB_X37_Y19_N14
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

-- Location: LCCOMB_X37_Y19_N16
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

-- Location: LCCOMB_X37_Y19_N18
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

-- Location: LCCOMB_X37_Y19_N20
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

-- Location: LCCOMB_X37_Y19_N22
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

-- Location: LCCOMB_X37_Y19_N24
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

-- Location: LCCOMB_X37_Y19_N26
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

-- Location: LCCOMB_X37_Y19_N28
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

-- Location: LCCOMB_X37_Y19_N30
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

-- Location: LCCOMB_X56_Y15_N6
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

-- Location: LCCOMB_X56_Y15_N10
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

-- Location: LCCOMB_X56_Y15_N16
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

-- Location: LCCOMB_X56_Y15_N28
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

-- Location: LCCOMB_X56_Y15_N30
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

-- Location: LCFF_X53_Y14_N13
\aProcessor|IR|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(6));

-- Location: LCCOMB_X50_Y15_N12
\aProcessor|displayAll|Mux28~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~15_combout\ = (\aProcessor|displayAll|Mux28~14_combout\) # ((\switch~combout\(0) & !\switch~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|displayAll|Mux28~14_combout\,
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~15_combout\);

-- Location: LCFF_X47_Y17_N13
\aProcessor|RB|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1028_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(1));

-- Location: LCCOMB_X51_Y16_N8
\aProcessor|displayAll|HexDisplay32Bits[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~10_combout\ = (\switch~combout\(0) & (\aProcessor|RA|Q\(1) & \switch~combout\(2))) # (!\switch~combout\(0) & ((!\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datac => \aProcessor|RA|Q\(1),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~10_combout\);

-- Location: LCCOMB_X51_Y16_N14
\aProcessor|displayAll|HexDisplay32Bits[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\ = (\switch~combout\(0) & (!\switch~combout\(1) & ((\aProcessor|displayAll|HexDisplay32Bits[1]~10_combout\)))) # (!\switch~combout\(0) & ((\aProcessor|displayAll|HexDisplay32Bits[1]~10_combout\ & 
-- ((\aProcessor|IR|Q\(1)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~10_combout\ & (\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|IR|Q\(1),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~10_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\);

-- Location: LCCOMB_X51_Y13_N22
\aProcessor|displayAll|HexDisplay32Bits[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~12_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\ & (((\aProcessor|RB|Q\(1)) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\ & (\aProcessor|RZ|Q\(1) & ((\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~11_combout\,
	datab => \aProcessor|RZ|Q\(1),
	datac => \aProcessor|RB|Q\(1),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~12_combout\);

-- Location: LCFF_X51_Y13_N5
\aProcessor|RM|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(1),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(1));

-- Location: LCCOMB_X51_Y13_N4
\aProcessor|displayAll|HexDisplay32Bits[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~18_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~17_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\) # ((\aProcessor|RM|Q\(1))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~17_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\) # (\aProcessor|RM|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~17_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datac => \aProcessor|RM|Q\(1),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~18_combout\);

-- Location: LCFF_X46_Y16_N1
\aProcessor|RY|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[1]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(1));

-- Location: LCCOMB_X50_Y13_N24
\aProcessor|displayAll|HexDisplay32Bits[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~19_combout\ = (\aProcessor|RY|Q\(1) & (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[1]~17_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RY|Q\(1),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~17_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~19_combout\);

-- Location: LCCOMB_X50_Y13_N14
\aProcessor|displayAll|HexDisplay32Bits[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~20_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~18_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~19_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~18_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~19_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\) # 
-- (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~18_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~19_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~20_combout\);

-- Location: LCCOMB_X51_Y13_N20
\aProcessor|displayAll|HexDisplay32Bits[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~21_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~12_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~20_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~18_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~12_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~20_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~12_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~18_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~21_combout\);

-- Location: LCFF_X51_Y14_N19
\aProcessor|IR|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(7));

-- Location: LCFF_X51_Y17_N7
\aProcessor|RM|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RM|Q[2]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(2));

-- Location: LCCOMB_X51_Y13_N10
\aProcessor|displayAll|HexDisplay32Bits[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~33_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~8_combout\ & ((\aProcessor|InstAddGen|PC\(2)) # ((\aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~8_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\ & \aProcessor|CSG|StageGenerator|ClockCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~8_combout\,
	datab => \aProcessor|InstAddGen|PC\(2),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\,
	datad => \aProcessor|CSG|StageGenerator|ClockCount\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~33_combout\);

-- Location: LCCOMB_X50_Y17_N12
\aProcessor|displayAll|HexDisplay32Bits[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~38_combout\ = (\aProcessor|InstAddGen|PC\(3) & \switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(3),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~38_combout\);

-- Location: LCFF_X51_Y16_N25
\aProcessor|RM|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(4),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(4));

-- Location: LCCOMB_X51_Y16_N24
\aProcessor|displayAll|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~0_combout\ = (!\switch~combout\(1) & ((\switch~combout\(0) & (\aProcessor|RY|Q\(4))) # (!\switch~combout\(0) & ((\aProcessor|RM|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RY|Q\(4),
	datab => \switch~combout\(1),
	datac => \aProcessor|RM|Q\(4),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux27~0_combout\);

-- Location: LCCOMB_X53_Y15_N0
\aProcessor|displayAll|Mux28~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~16_combout\ = (!\aProcessor|CSG|StageGenerator|ClockCount\(1) & (!\aProcessor|CSG|StageGenerator|ClockCount\(0) & (\aProcessor|displayAll|Mux28~11_combout\ & !\aProcessor|CSG|StageGenerator|ClockCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CSG|StageGenerator|ClockCount\(1),
	datab => \aProcessor|CSG|StageGenerator|ClockCount\(0),
	datac => \aProcessor|displayAll|Mux28~11_combout\,
	datad => \aProcessor|CSG|StageGenerator|ClockCount\(2),
	combout => \aProcessor|displayAll|Mux28~16_combout\);

-- Location: LCFF_X47_Y17_N31
\aProcessor|RB|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1035_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(4));

-- Location: LCCOMB_X51_Y16_N12
\aProcessor|displayAll|Mux27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~5_combout\ = (\switch~combout\(4) & (((\aProcessor|IR|Q\(10) & \aProcessor|displayAll|Mux28~11_combout\)) # (!\aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|IR|Q\(10),
	datac => \aProcessor|displayAll|Mux10~4_combout\,
	datad => \aProcessor|displayAll|Mux28~11_combout\,
	combout => \aProcessor|displayAll|Mux27~5_combout\);

-- Location: LCCOMB_X53_Y14_N12
\aProcessor|displayAll|HexDisplay32Bits[6]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~55_combout\ = (\debounceit1|PB_state~regout\) # ((!\switch~combout\(4) & (\aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\ & \aProcessor|IR|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\,
	datac => \aProcessor|IR|Q\(6),
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~55_combout\);

-- Location: LCCOMB_X50_Y17_N16
\aProcessor|displayAll|HexDisplay32Bits[6]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~57_combout\ = (\aProcessor|InstAddGen|PC\(6) & \switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(6),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~57_combout\);

-- Location: LCCOMB_X50_Y17_N6
\aProcessor|displayAll|HexDisplay32Bits[6]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~58_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & \aProcessor|RA|Q\(6))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[6]~57_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[6]~57_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	datad => \aProcessor|RA|Q\(6),
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~58_combout\);

-- Location: LCCOMB_X46_Y16_N2
\aProcessor|displayAll|HexDisplay32Bits[6]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~59_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[6]~58_combout\ & (\aProcessor|RB|Q\(6))) # (!\aProcessor|displayAll|HexDisplay32Bits[6]~58_combout\ 
-- & ((\aProcessor|RZ|Q\(6)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[6]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datab => \aProcessor|RB|Q\(6),
	datac => \aProcessor|displayAll|HexDisplay32Bits[6]~58_combout\,
	datad => \aProcessor|RZ|Q\(6),
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~59_combout\);

-- Location: LCCOMB_X46_Y16_N12
\aProcessor|displayAll|HexDisplay32Bits[6]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~60_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (((\Memory|ROM1|altsyncram_component|auto_generated|q_a\(6) & \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[6]~59_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[6]~59_combout\,
	datac => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(6),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~60_combout\);

-- Location: LCCOMB_X51_Y14_N18
\aProcessor|displayAll|HexDisplay32Bits[7]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~63_combout\ = (\debounceit1|PB_state~regout\) # ((!\switch~combout\(4) & (\aProcessor|IR|Q\(7) & \aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \switch~combout\(4),
	datac => \aProcessor|IR|Q\(7),
	datad => \aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~63_combout\);

-- Location: LCFF_X51_Y15_N9
\aProcessor|IR|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(13));

-- Location: LCCOMB_X51_Y15_N20
\aProcessor|displayAll|HexDisplay32Bits[12]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\ = (\switch~combout\(2)) # ((\switch~combout\(0) & \switch~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(2),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\);

-- Location: LCCOMB_X53_Y15_N30
\aProcessor|displayAll|HexDisplay32Bits[8]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~75_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\ & ((\aProcessor|displayAll|Mux28~16_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(8))))) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\,
	datac => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(8),
	datad => \aProcessor|displayAll|Mux28~16_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~75_combout\);

-- Location: LCCOMB_X53_Y14_N16
\aProcessor|displayAll|HexDisplay32Bits[9]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~81_combout\ = (\debounceit1|PB_state~regout\) # ((\aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\ & (!\switch~combout\(4) & \aProcessor|IR|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\,
	datac => \switch~combout\(4),
	datad => \aProcessor|IR|Q\(9),
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~81_combout\);

-- Location: LCCOMB_X50_Y14_N28
\aProcessor|displayAll|HexDisplay32Bits[9]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~83_combout\ = (\aProcessor|InstAddGen|PC\(9) & \switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aProcessor|InstAddGen|PC\(9),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~83_combout\);

-- Location: LCCOMB_X47_Y14_N4
\aProcessor|displayAll|HexDisplay32Bits[9]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~84_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (((\aProcessor|RA|Q\(9) & \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~83_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~83_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	datac => \aProcessor|RA|Q\(9),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~84_combout\);

-- Location: LCCOMB_X49_Y14_N26
\aProcessor|displayAll|HexDisplay32Bits[9]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~85_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~84_combout\ & (\aProcessor|RB|Q\(9))) # (!\aProcessor|displayAll|HexDisplay32Bits[9]~84_combout\ 
-- & ((\aProcessor|RZ|Q\(9)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[9]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RB|Q\(9),
	datab => \aProcessor|RZ|Q\(9),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[9]~84_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~85_combout\);

-- Location: LCFF_X53_Y15_N21
\aProcessor|IR|Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(16),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(16));

-- Location: LCCOMB_X53_Y13_N10
\aProcessor|displayAll|HexDisplay32Bits[10]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~90_combout\ = (\switch~combout\(4) & (((\aProcessor|displayAll|Mux28~22_combout\ & \switch~combout\(1))) # (!\aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux28~22_combout\,
	datac => \switch~combout\(1),
	datad => \aProcessor|displayAll|Mux10~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~90_combout\);

-- Location: LCFF_X47_Y15_N7
\aProcessor|RM|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(12),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(12));

-- Location: LCCOMB_X53_Y15_N24
\aProcessor|displayAll|HexDisplay32Bits[12]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~105_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\ & (((\aProcessor|displayAll|Mux28~16_combout\) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(12) & (\aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(12),
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\,
	datad => \aProcessor|displayAll|Mux28~16_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~105_combout\);

-- Location: LCCOMB_X47_Y15_N6
\aProcessor|displayAll|HexDisplay32Bits[12]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~106_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~105_combout\ & (\aProcessor|RY|Q\(12))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~105_combout\ & ((\aProcessor|RM|Q\(12)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[12]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\,
	datab => \aProcessor|RY|Q\(12),
	datac => \aProcessor|RM|Q\(12),
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~105_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~106_combout\);

-- Location: LCFF_X51_Y15_N21
\aProcessor|IR|Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(19),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(19));

-- Location: LCCOMB_X48_Y14_N16
\aProcessor|displayAll|HexDisplay32Bits[13]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~114_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\ & ((\switch~combout\(4) & (\aProcessor|IR|Q\(19))) # (!\switch~combout\(4) & ((\aProcessor|IR|Q\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(19),
	datab => \aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\,
	datac => \aProcessor|IR|Q\(13),
	datad => \switch~combout\(4),
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~114_combout\);

-- Location: LCCOMB_X47_Y15_N2
\aProcessor|displayAll|HexDisplay32Bits[13]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~115_combout\ = (\switch~combout\(0) & \aProcessor|InstAddGen|PC\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datad => \aProcessor|InstAddGen|PC\(13),
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~115_combout\);

-- Location: LCCOMB_X50_Y16_N16
\aProcessor|displayAll|HexDisplay32Bits[14]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~122_combout\ = (\switch~combout\(0) & \aProcessor|InstAddGen|PC\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datad => \aProcessor|InstAddGen|PC\(14),
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~122_combout\);

-- Location: LCFF_X51_Y15_N3
\aProcessor|IR|Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(21),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(21));

-- Location: LCCOMB_X51_Y17_N16
\aProcessor|displayAll|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~1_combout\ = (\switch~combout\(0) & ((\switch~combout\(1) & ((\aProcessor|RZ|Q\(15)))) # (!\switch~combout\(1) & (\aProcessor|RA|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|RA|Q\(15),
	datac => \aProcessor|RZ|Q\(15),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux16~1_combout\);

-- Location: LCFF_X49_Y17_N29
\aProcessor|RB|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1057_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(15));

-- Location: LCCOMB_X51_Y14_N10
\aProcessor|displayAll|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~2_combout\ = (\switch~combout\(2) & ((\aProcessor|displayAll|Mux16~1_combout\) # ((\aProcessor|RB|Q\(15) & \aProcessor|displayAll|Mux28~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \aProcessor|RB|Q\(15),
	datac => \aProcessor|displayAll|Mux28~11_combout\,
	datad => \aProcessor|displayAll|Mux16~1_combout\,
	combout => \aProcessor|displayAll|Mux16~2_combout\);

-- Location: LCFF_X51_Y17_N17
\aProcessor|RY|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RZ|Q\(15),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(15));

-- Location: LCFF_X51_Y14_N21
\aProcessor|RM|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(15),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(15));

-- Location: LCCOMB_X51_Y14_N20
\aProcessor|displayAll|Mux16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~6_combout\ = (!\switch~combout\(1) & ((\switch~combout\(0) & (\aProcessor|RY|Q\(15))) # (!\switch~combout\(0) & ((\aProcessor|RM|Q\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RY|Q\(15),
	datab => \switch~combout\(1),
	datac => \aProcessor|RM|Q\(15),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux16~6_combout\);

-- Location: LCCOMB_X51_Y16_N16
\aProcessor|displayAll|HexDisplay32Bits[20]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~130_combout\ = (!\switch~combout\(3) & (!\switch~combout\(2) & ((\switch~combout\(0)) # (\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~130_combout\);

-- Location: LCCOMB_X48_Y15_N12
\aProcessor|displayAll|HexDisplay32Bits[20]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~135_combout\ = (\switch~combout\(3)) # ((!\switch~combout\(2) & \switch~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datac => \switch~combout\(2),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~135_combout\);

-- Location: LCFF_X50_Y14_N5
\aProcessor|RM|Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(17),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(17));

-- Location: LCFF_X49_Y16_N27
\aProcessor|RB|Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1060_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(17));

-- Location: LCCOMB_X49_Y18_N8
\aProcessor|displayAll|HexDisplay32Bits[17]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~140_combout\ = (\switch~combout\(0) & (((\aProcessor|RA|Q\(17)) # (\switch~combout\(1))))) # (!\switch~combout\(0) & (\aProcessor|IR|Q\(23) & ((!\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|IR|Q\(23),
	datac => \aProcessor|RA|Q\(17),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~140_combout\);

-- Location: LCCOMB_X49_Y18_N10
\aProcessor|displayAll|HexDisplay32Bits[17]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~141_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~140_combout\ & ((\aProcessor|RZ|Q\(17)) # ((!\switch~combout\(1))))) # (!\aProcessor|displayAll|HexDisplay32Bits[17]~140_combout\ & 
-- (((\aProcessor|RB|Q\(17) & \switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RZ|Q\(17),
	datab => \aProcessor|RB|Q\(17),
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~140_combout\,
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~141_combout\);

-- Location: LCCOMB_X50_Y14_N6
\aProcessor|displayAll|HexDisplay32Bits[17]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~142_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(17) & (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[17]~141_combout\) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(17),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~141_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~142_combout\);

-- Location: LCCOMB_X50_Y14_N4
\aProcessor|displayAll|HexDisplay32Bits[17]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~143_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~142_combout\ & (((\aProcessor|RM|Q\(17)) # (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[17]~142_combout\ & (\aProcessor|RY|Q\(17) & ((!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~142_combout\,
	datab => \aProcessor|RY|Q\(17),
	datac => \aProcessor|RM|Q\(17),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~143_combout\);

-- Location: LCCOMB_X50_Y14_N16
\aProcessor|displayAll|HexDisplay32Bits[17]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~144_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & (((\aProcessor|displayAll|Mux10~15_combout\) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~143_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[17]~143_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\,
	datad => \aProcessor|displayAll|Mux10~15_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~144_combout\);

-- Location: LCFF_X47_Y16_N31
\aProcessor|RA|Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1065_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(19));

-- Location: LCCOMB_X47_Y15_N8
\aProcessor|displayAll|HexDisplay32Bits[19]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~154_combout\ = (\switch~combout\(1) & (((\switch~combout\(0))))) # (!\switch~combout\(1) & ((\switch~combout\(0) & (\aProcessor|RA|Q\(19))) # (!\switch~combout\(0) & ((\aProcessor|IR|Q\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RA|Q\(19),
	datab => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \aProcessor|IR|Q\(25),
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~154_combout\);

-- Location: LCCOMB_X47_Y15_N10
\aProcessor|displayAll|HexDisplay32Bits[19]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~155_combout\ = (\switch~combout\(1) & ((\aProcessor|displayAll|HexDisplay32Bits[19]~154_combout\ & ((\aProcessor|RZ|Q\(19)))) # (!\aProcessor|displayAll|HexDisplay32Bits[19]~154_combout\ & 
-- (\aProcessor|RB|Q\(19))))) # (!\switch~combout\(1) & (((\aProcessor|displayAll|HexDisplay32Bits[19]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RB|Q\(19),
	datab => \switch~combout\(1),
	datac => \aProcessor|displayAll|HexDisplay32Bits[19]~154_combout\,
	datad => \aProcessor|RZ|Q\(19),
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~155_combout\);

-- Location: LCCOMB_X46_Y15_N12
\aProcessor|displayAll|HexDisplay32Bits[19]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~156_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\Memory|ROM1|altsyncram_component|auto_generated|q_a\(19)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[19]~155_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[19]~155_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datad => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(19),
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~156_combout\);

-- Location: LCFF_X51_Y15_N17
\aProcessor|RM|Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(21),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(21));

-- Location: LCCOMB_X51_Y15_N16
\aProcessor|displayAll|Mux10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux10~5_combout\ = (!\switch~combout\(1) & ((\switch~combout\(0) & (\aProcessor|RY|Q\(21))) # (!\switch~combout\(0) & ((\aProcessor|RM|Q\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|RY|Q\(21),
	datac => \aProcessor|RM|Q\(21),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux10~5_combout\);

-- Location: LCCOMB_X51_Y15_N2
\aProcessor|displayAll|Mux10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux10~6_combout\ = (\aProcessor|displayAll|Mux16~5_combout\ & ((\aProcessor|displayAll|Mux10~5_combout\) # ((\Memory|ROM1|altsyncram_component|auto_generated|q_a\(21) & \aProcessor|displayAll|Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux10~5_combout\,
	datab => \aProcessor|displayAll|Mux16~5_combout\,
	datac => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(21),
	datad => \aProcessor|displayAll|Mux28~9_combout\,
	combout => \aProcessor|displayAll|Mux10~6_combout\);

-- Location: LCCOMB_X51_Y16_N6
\aProcessor|displayAll|Mux10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux10~8_combout\ = (\switch~combout\(0) & ((\switch~combout\(1) & (\aProcessor|RZ|Q\(21))) # (!\switch~combout\(1) & ((\aProcessor|RA|Q\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RZ|Q\(21),
	datab => \switch~combout\(1),
	datac => \aProcessor|RA|Q\(21),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux10~8_combout\);

-- Location: LCCOMB_X46_Y14_N16
\aProcessor|displayAll|HexDisplay32Bits[22]~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~168_combout\ = (\aProcessor|InstAddGen|PC\(22) & \switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aProcessor|InstAddGen|PC\(22),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~168_combout\);

-- Location: LCCOMB_X46_Y16_N22
\aProcessor|displayAll|HexDisplay32Bits[22]~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~169_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (\aProcessor|RA|Q\(22))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[22]~168_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	datab => \aProcessor|RA|Q\(22),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[22]~168_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~169_combout\);

-- Location: LCCOMB_X46_Y16_N20
\aProcessor|displayAll|HexDisplay32Bits[22]~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~170_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[22]~169_combout\ & (\aProcessor|RB|Q\(22))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[22]~169_combout\ & ((\aProcessor|RZ|Q\(22)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[22]~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[22]~169_combout\,
	datac => \aProcessor|RB|Q\(22),
	datad => \aProcessor|RZ|Q\(22),
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~170_combout\);

-- Location: LCCOMB_X46_Y16_N6
\aProcessor|displayAll|HexDisplay32Bits[22]~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~171_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(22)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[22]~170_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datac => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(22),
	datad => \aProcessor|displayAll|HexDisplay32Bits[22]~170_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~171_combout\);

-- Location: LCCOMB_X50_Y16_N24
\aProcessor|displayAll|HexDisplay32Bits[23]~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~176_combout\ = (\aProcessor|InstAddGen|PC\(23) & \switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(23),
	datac => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~176_combout\);

-- Location: LCCOMB_X49_Y16_N22
\aProcessor|displayAll|HexDisplay32Bits[23]~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~177_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|RA|Q\(23)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~176_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~176_combout\,
	datac => \aProcessor|RA|Q\(23),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~177_combout\);

-- Location: LCCOMB_X49_Y16_N20
\aProcessor|displayAll|HexDisplay32Bits[23]~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~178_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[23]~177_combout\ & ((\aProcessor|RB|Q\(23)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[23]~177_combout\ & (\aProcessor|RZ|Q\(23))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[23]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RZ|Q\(23),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datac => \aProcessor|RB|Q\(23),
	datad => \aProcessor|displayAll|HexDisplay32Bits[23]~177_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~178_combout\);

-- Location: LCCOMB_X49_Y16_N10
\aProcessor|displayAll|HexDisplay32Bits[23]~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~179_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\Memory|ROM1|altsyncram_component|auto_generated|q_a\(23)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~178_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[23]~178_combout\,
	datad => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(23),
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~179_combout\);

-- Location: LCFF_X49_Y15_N11
\aProcessor|RA|Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1075_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(24));

-- Location: LCCOMB_X49_Y15_N6
\aProcessor|displayAll|Mux28~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~27_combout\ = (\switch~combout\(1) & (((\switch~combout\(0))))) # (!\switch~combout\(1) & ((\switch~combout\(0) & ((\aProcessor|RA|Q\(24)))) # (!\switch~combout\(0) & (\aProcessor|IR|Q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(27),
	datab => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \aProcessor|RA|Q\(24),
	combout => \aProcessor|displayAll|Mux28~27_combout\);

-- Location: LCCOMB_X50_Y15_N18
\aProcessor|displayAll|Mux28~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~28_combout\ = (\aProcessor|displayAll|Mux28~27_combout\ & (((\aProcessor|RZ|Q\(24)) # (!\switch~combout\(1))))) # (!\aProcessor|displayAll|Mux28~27_combout\ & (\aProcessor|RB|Q\(24) & ((\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~27_combout\,
	datab => \aProcessor|RB|Q\(24),
	datac => \aProcessor|RZ|Q\(24),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~28_combout\);

-- Location: LCCOMB_X51_Y15_N10
\aProcessor|displayAll|Mux28~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~29_combout\ = (\switch~combout\(0) & (((\aProcessor|InstAddGen|PC\(24) & !\switch~combout\(1))))) # (!\switch~combout\(0) & (\aProcessor|IR|Q\(24) & ((\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|IR|Q\(24),
	datac => \aProcessor|InstAddGen|PC\(24),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~29_combout\);

-- Location: LCCOMB_X50_Y15_N6
\aProcessor|displayAll|Mux10~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux10~11_combout\ = (\switch~combout\(2) & ((\switch~combout\(3)) # ((\aProcessor|displayAll|Mux28~28_combout\)))) # (!\switch~combout\(2) & (!\switch~combout\(3) & (\aProcessor|displayAll|Mux28~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(3),
	datac => \aProcessor|displayAll|Mux28~29_combout\,
	datad => \aProcessor|displayAll|Mux28~28_combout\,
	combout => \aProcessor|displayAll|Mux10~11_combout\);

-- Location: LCCOMB_X49_Y15_N2
\aProcessor|displayAll|HexDisplay32Bits[25]~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~184_combout\ = (\switch~combout\(0) & ((\switch~combout\(1)) # ((\aProcessor|RA|Q\(25))))) # (!\switch~combout\(0) & (!\switch~combout\(1) & ((\aProcessor|IR|Q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \aProcessor|RA|Q\(25),
	datad => \aProcessor|IR|Q\(28),
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~184_combout\);

-- Location: LCCOMB_X49_Y15_N26
\aProcessor|displayAll|HexDisplay32Bits[25]~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~185_combout\ = (\switch~combout\(1) & ((\aProcessor|displayAll|HexDisplay32Bits[25]~184_combout\ & ((\aProcessor|RZ|Q\(25)))) # (!\aProcessor|displayAll|HexDisplay32Bits[25]~184_combout\ & 
-- (\aProcessor|RB|Q\(25))))) # (!\switch~combout\(1) & (((\aProcessor|displayAll|HexDisplay32Bits[25]~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RB|Q\(25),
	datab => \aProcessor|RZ|Q\(25),
	datac => \switch~combout\(1),
	datad => \aProcessor|displayAll|HexDisplay32Bits[25]~184_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~185_combout\);

-- Location: LCCOMB_X50_Y14_N12
\aProcessor|displayAll|HexDisplay32Bits[25]~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~186_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(25))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[25]~185_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(25),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[25]~185_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~186_combout\);

-- Location: LCCOMB_X46_Y17_N12
\aProcessor|displayAll|HexDisplay32Bits[25]~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~190_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\ & (((!\switch~combout\(0)) # (!\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\)) # (!\aProcessor|InstAddGen|PC\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(25),
	datab => \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\,
	datac => \switch~combout\(0),
	datad => \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~190_combout\);

-- Location: LCCOMB_X49_Y15_N22
\aProcessor|displayAll|HexDisplay32Bits[27]~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~199_combout\ = (\switch~combout\(0) & ((\aProcessor|RA|Q\(27)) # ((\switch~combout\(1))))) # (!\switch~combout\(0) & (((\aProcessor|IR|Q\(30) & !\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|RA|Q\(27),
	datac => \aProcessor|IR|Q\(30),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~199_combout\);

-- Location: LCCOMB_X49_Y15_N18
\aProcessor|displayAll|Mux28~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~32_combout\ = (\switch~combout\(0) & ((\aProcessor|RA|Q\(28)) # ((\switch~combout\(1))))) # (!\switch~combout\(0) & (((!\switch~combout\(1) & \aProcessor|IR|Q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|RA|Q\(28),
	datac => \switch~combout\(1),
	datad => \aProcessor|IR|Q\(31),
	combout => \aProcessor|displayAll|Mux28~32_combout\);

-- Location: LCCOMB_X50_Y15_N14
\aProcessor|displayAll|Mux28~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~33_combout\ = (\aProcessor|displayAll|Mux28~32_combout\ & (((\aProcessor|RZ|Q\(28)) # (!\switch~combout\(1))))) # (!\aProcessor|displayAll|Mux28~32_combout\ & (\aProcessor|RB|Q\(28) & ((\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RB|Q\(28),
	datab => \aProcessor|displayAll|Mux28~32_combout\,
	datac => \aProcessor|RZ|Q\(28),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~33_combout\);

-- Location: LCCOMB_X50_Y15_N30
\aProcessor|displayAll|Mux28~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~34_combout\ = (\switch~combout\(0) & (((\aProcessor|InstAddGen|PC\(28) & !\switch~combout\(1))))) # (!\switch~combout\(0) & (\aProcessor|IR|Q\(28) & ((\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|IR|Q\(28),
	datac => \aProcessor|InstAddGen|PC\(28),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~34_combout\);

-- Location: LCCOMB_X50_Y15_N16
\aProcessor|displayAll|Mux10~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux10~13_combout\ = (\switch~combout\(2) & (((\switch~combout\(3)) # (\aProcessor|displayAll|Mux28~33_combout\)))) # (!\switch~combout\(2) & (\aProcessor|displayAll|Mux28~34_combout\ & (!\switch~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \aProcessor|displayAll|Mux28~34_combout\,
	datac => \switch~combout\(3),
	datad => \aProcessor|displayAll|Mux28~33_combout\,
	combout => \aProcessor|displayAll|Mux10~13_combout\);

-- Location: LCCOMB_X47_Y14_N16
\aProcessor|displayAll|HexDisplay32Bits[29]~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[29]~207_combout\ = (\aProcessor|InstAddGen|PC\(29) & \switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aProcessor|InstAddGen|PC\(29),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[29]~207_combout\);

-- Location: LCFF_X46_Y16_N17
\aProcessor|RY|Q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[31]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(31));

-- Location: LCFF_X38_Y19_N19
\debounceit0|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_state~regout\);

-- Location: LCFF_X49_Y17_N25
\aProcessor|RegFile|R~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~0_regout\);

-- Location: LCCOMB_X48_Y21_N24
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

-- Location: LCFF_X47_Y17_N15
\aProcessor|RegFile|R~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~1_regout\);

-- Location: LCCOMB_X47_Y17_N12
\aProcessor|RegFile|R~1028\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1028_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~1_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(26),
	datab => \aProcessor|RegFile|R~1_regout\,
	datac => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1028_combout\);

-- Location: LCCOMB_X47_Y17_N30
\aProcessor|RegFile|R~1035\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1035_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~4_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(26),
	datab => \aProcessor|RegFile|R~4_regout\,
	datac => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1035_combout\);

-- Location: LCFF_X49_Y17_N7
\aProcessor|RegFile|R~15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~15feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~15_regout\);

-- Location: LCCOMB_X49_Y17_N28
\aProcessor|RegFile|R~1057\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1057_combout\ = (!\aProcessor|IR|Q\(26) & (!\aProcessor|RegFile|R~1026_combout\ & \aProcessor|RegFile|R~15_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|IR|Q\(26),
	datac => \aProcessor|RegFile|R~1026_combout\,
	datad => \aProcessor|RegFile|R~15_regout\,
	combout => \aProcessor|RegFile|R~1057_combout\);

-- Location: LCCOMB_X49_Y16_N26
\aProcessor|RegFile|R~1060\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1060_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~17_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|IR|Q\(26),
	datac => \aProcessor|RegFile|R~17_regout\,
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1060_combout\);

-- Location: LCCOMB_X47_Y16_N30
\aProcessor|RegFile|R~1065\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1065_combout\ = (\aProcessor|RegFile|R~19_regout\ & (!\aProcessor|RegFile|R~1024_combout\ & !\aProcessor|IR|Q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~19_regout\,
	datac => \aProcessor|RegFile|R~1024_combout\,
	datad => \aProcessor|IR|Q\(31),
	combout => \aProcessor|RegFile|R~1065_combout\);

-- Location: LCCOMB_X49_Y15_N10
\aProcessor|RegFile|R~1075\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1075_combout\ = (!\aProcessor|IR|Q\(31) & (!\aProcessor|RegFile|R~1024_combout\ & \aProcessor|RegFile|R~24_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(31),
	datab => \aProcessor|RegFile|R~1024_combout\,
	datac => \aProcessor|RegFile|R~24_regout\,
	combout => \aProcessor|RegFile|R~1075_combout\);

-- Location: LCFF_X49_Y18_N1
\aProcessor|RegFile|R~25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~25feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~25_regout\);

-- Location: LCFF_X46_Y15_N11
\aProcessor|RegFile|R~31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RY|Q\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~31_regout\);

-- Location: LCFF_X38_Y19_N29
\debounceit0|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	sdata => \debounceit0|PB_sync_0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_sync_1~regout\);

-- Location: LCCOMB_X38_Y19_N16
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

-- Location: LCCOMB_X38_Y19_N20
\debounceit0|PB_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~1_combout\ = (\debounceit0|PB_cnt\(5) & (\debounceit0|PB_cnt\(2) & (\debounceit0|PB_cnt\(3) & \debounceit0|PB_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(5),
	datab => \debounceit0|PB_cnt\(2),
	datac => \debounceit0|PB_cnt\(3),
	datad => \debounceit0|PB_cnt\(4),
	combout => \debounceit0|PB_state~1_combout\);

-- Location: LCCOMB_X38_Y19_N26
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

-- Location: LCCOMB_X38_Y19_N22
\debounceit0|PB_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~3_combout\ = (\debounceit0|PB_cnt\(11) & (\debounceit0|PB_cnt\(13) & (\debounceit0|PB_cnt\(10) & \debounceit0|PB_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_cnt\(11),
	datab => \debounceit0|PB_cnt\(13),
	datac => \debounceit0|PB_cnt\(10),
	datad => \debounceit0|PB_cnt\(12),
	combout => \debounceit0|PB_state~3_combout\);

-- Location: LCCOMB_X38_Y19_N30
\debounceit0|PB_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~4_combout\ = (\debounceit0|PB_state~1_combout\ & (\debounceit0|PB_state~2_combout\ & (\debounceit0|PB_state~0_combout\ & \debounceit0|PB_state~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_state~1_combout\,
	datab => \debounceit0|PB_state~2_combout\,
	datac => \debounceit0|PB_state~0_combout\,
	datad => \debounceit0|PB_state~3_combout\,
	combout => \debounceit0|PB_state~4_combout\);

-- Location: LCCOMB_X38_Y19_N18
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

-- Location: LCCOMB_X55_Y15_N24
\debounceit3|PB_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_state~1_combout\ = (\debounceit3|PB_cnt\(2) & (\debounceit3|PB_cnt\(5) & (\debounceit3|PB_cnt\(4) & \debounceit3|PB_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_cnt\(2),
	datab => \debounceit3|PB_cnt\(5),
	datac => \debounceit3|PB_cnt\(4),
	datad => \debounceit3|PB_cnt\(3),
	combout => \debounceit3|PB_state~1_combout\);

-- Location: LCCOMB_X38_Y19_N24
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

-- Location: LCFF_X38_Y19_N25
\debounceit0|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	sdata => \debounceit0|PB_sync_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_sync_0~regout\);

-- Location: LCCOMB_X51_Y15_N14
\aProcessor|displayAll|HexDisplay32Bits[8]~228\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~228_combout\ = (!\switch~combout\(3) & (!\switch~combout\(2) & (\aProcessor|IR|Q\(14) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(2),
	datac => \aProcessor|IR|Q\(14),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~228_combout\);

-- Location: LCCOMB_X38_Y19_N28
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

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X46_Y16_N0
\aProcessor|RY|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[1]~feeder_combout\ = \aProcessor|RZ|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(1),
	combout => \aProcessor|RY|Q[1]~feeder_combout\);

-- Location: LCCOMB_X46_Y16_N16
\aProcessor|RY|Q[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[31]~feeder_combout\ = \aProcessor|RZ|Q\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(31),
	combout => \aProcessor|RY|Q[31]~feeder_combout\);

-- Location: LCCOMB_X49_Y17_N24
\aProcessor|RegFile|R~0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~0feeder_combout\ = \aProcessor|RY|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(0),
	combout => \aProcessor|RegFile|R~0feeder_combout\);

-- Location: LCCOMB_X47_Y17_N14
\aProcessor|RegFile|R~1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1feeder_combout\ = \aProcessor|RY|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(1),
	combout => \aProcessor|RegFile|R~1feeder_combout\);

-- Location: LCCOMB_X51_Y17_N6
\aProcessor|RM|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RM|Q[2]~feeder_combout\ = \aProcessor|RB|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RB|Q\(2),
	combout => \aProcessor|RM|Q[2]~feeder_combout\);

-- Location: LCCOMB_X49_Y17_N6
\aProcessor|RegFile|R~15feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~15feeder_combout\ = \aProcessor|RY|Q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(15),
	combout => \aProcessor|RegFile|R~15feeder_combout\);

-- Location: LCCOMB_X49_Y18_N0
\aProcessor|RegFile|R~25feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~25feeder_combout\ = \aProcessor|RY|Q\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(25),
	combout => \aProcessor|RegFile|R~25feeder_combout\);

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

-- Location: LCCOMB_X48_Y15_N20
\aProcessor|displayAll|Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux10~4_combout\ = (!\switch~combout\(2) & !\switch~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datad => \switch~combout\(3),
	combout => \aProcessor|displayAll|Mux10~4_combout\);

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

-- Location: LCCOMB_X51_Y13_N28
\aProcessor|displayAll|HexDisplay32Bits[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~23_combout\ = ((\aProcessor|IR|Q\(7) & (\switch~combout\(1) & !\switch~combout\(0)))) # (!\aProcessor|displayAll|Mux10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(7),
	datab => \aProcessor|displayAll|Mux10~4_combout\,
	datac => \switch~combout\(1),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~23_combout\);

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

-- Location: LCCOMB_X51_Y14_N16
\aProcessor|displayAll|HexDisplay32Bits[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\ = (\switch~combout\(2)) # ((\switch~combout\(1)) # ((\switch~combout\(3)) # (\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(1),
	datac => \switch~combout\(3),
	datad => \switch~combout\(4),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\);

-- Location: LCCOMB_X54_Y15_N0
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

-- Location: LCCOMB_X56_Y15_N0
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

-- Location: LCCOMB_X55_Y15_N26
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

-- Location: LCFF_X55_Y15_N27
\debounceit3|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_sync_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_sync_0~regout\);

-- Location: LCCOMB_X55_Y15_N28
\debounceit3|PB_sync_1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_sync_1~feeder_combout\ = \debounceit3|PB_sync_0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debounceit3|PB_sync_0~regout\,
	combout => \debounceit3|PB_sync_1~feeder_combout\);

-- Location: LCFF_X55_Y15_N29
\debounceit3|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_sync_1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_sync_1~regout\);

-- Location: LCCOMB_X55_Y15_N16
\debounceit3|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|comb~0_combout\ = \debounceit3|PB_state~regout\ $ (!\debounceit3|PB_sync_1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_state~regout\,
	datad => \debounceit3|PB_sync_1~regout\,
	combout => \debounceit3|comb~0_combout\);

-- Location: LCFF_X56_Y15_N1
\debounceit3|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[0]~16_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(0));

-- Location: LCCOMB_X56_Y15_N2
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

-- Location: LCFF_X56_Y15_N3
\debounceit3|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[1]~18_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(1));

-- Location: LCCOMB_X56_Y15_N4
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

-- Location: LCFF_X56_Y15_N5
\debounceit3|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[2]~20_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(2));

-- Location: LCCOMB_X56_Y15_N8
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

-- Location: LCFF_X56_Y15_N9
\debounceit3|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[4]~24_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(4));

-- Location: LCCOMB_X56_Y15_N12
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

-- Location: LCCOMB_X56_Y15_N14
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

-- Location: LCFF_X56_Y15_N15
\debounceit3|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[7]~30_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(7));

-- Location: LCCOMB_X56_Y15_N18
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

-- Location: LCFF_X56_Y15_N19
\debounceit3|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[9]~34_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(9));

-- Location: LCCOMB_X56_Y15_N20
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

-- Location: LCCOMB_X56_Y15_N22
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

-- Location: LCFF_X56_Y15_N23
\debounceit3|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[11]~38_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(11));

-- Location: LCCOMB_X56_Y15_N24
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

-- Location: LCCOMB_X56_Y15_N26
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

-- Location: LCFF_X56_Y15_N27
\debounceit3|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[13]~42_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(13));

-- Location: LCFF_X56_Y15_N29
\debounceit3|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[14]~44_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(14));

-- Location: LCCOMB_X55_Y15_N18
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

-- Location: LCFF_X56_Y15_N25
\debounceit3|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[12]~40_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(12));

-- Location: LCFF_X56_Y15_N21
\debounceit3|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[10]~36_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(10));

-- Location: LCCOMB_X55_Y15_N4
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

-- Location: LCFF_X56_Y15_N13
\debounceit3|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_cnt[6]~28_combout\,
	sclr => \debounceit3|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_cnt\(6));

-- Location: LCCOMB_X55_Y15_N30
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

-- Location: LCCOMB_X55_Y15_N2
\debounceit3|PB_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit3|PB_state~4_combout\ = (\debounceit3|PB_state~1_combout\ & (\debounceit3|PB_state~0_combout\ & (\debounceit3|PB_state~3_combout\ & \debounceit3|PB_state~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit3|PB_state~1_combout\,
	datab => \debounceit3|PB_state~0_combout\,
	datac => \debounceit3|PB_state~3_combout\,
	datad => \debounceit3|PB_state~2_combout\,
	combout => \debounceit3|PB_state~4_combout\);

-- Location: LCCOMB_X55_Y15_N12
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

-- Location: LCFF_X55_Y15_N13
\debounceit3|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit3|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit3|PB_state~regout\);

-- Location: LCCOMB_X53_Y15_N14
\aProcessor|CSG|StageGenerator|ClockCount~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|CSG|StageGenerator|ClockCount~1_combout\ = (\aProcessor|CSG|StageGenerator|ClockCount\(0) & ((\aProcessor|CSG|StageGenerator|ClockCount\(2)))) # (!\aProcessor|CSG|StageGenerator|ClockCount\(0) & (\aProcessor|CSG|StageGenerator|ClockCount\(1) & 
-- !\aProcessor|CSG|StageGenerator|ClockCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CSG|StageGenerator|ClockCount\(0),
	datab => \aProcessor|CSG|StageGenerator|ClockCount\(1),
	datac => \aProcessor|CSG|StageGenerator|ClockCount\(2),
	combout => \aProcessor|CSG|StageGenerator|ClockCount~1_combout\);

-- Location: LCFF_X53_Y15_N15
\aProcessor|CSG|StageGenerator|ClockCount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|CSG|StageGenerator|ClockCount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|CSG|StageGenerator|ClockCount\(2));

-- Location: LCCOMB_X53_Y15_N12
\aProcessor|CSG|StageGenerator|ClockCount~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|CSG|StageGenerator|ClockCount~2_combout\ = (\aProcessor|CSG|StageGenerator|ClockCount\(0) & (\aProcessor|CSG|StageGenerator|ClockCount\(1))) # (!\aProcessor|CSG|StageGenerator|ClockCount\(0) & (!\aProcessor|CSG|StageGenerator|ClockCount\(1) & 
-- !\aProcessor|CSG|StageGenerator|ClockCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CSG|StageGenerator|ClockCount\(0),
	datac => \aProcessor|CSG|StageGenerator|ClockCount\(1),
	datad => \aProcessor|CSG|StageGenerator|ClockCount\(2),
	combout => \aProcessor|CSG|StageGenerator|ClockCount~2_combout\);

-- Location: LCFF_X53_Y15_N13
\aProcessor|CSG|StageGenerator|ClockCount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|CSG|StageGenerator|ClockCount~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|CSG|StageGenerator|ClockCount\(1));

-- Location: LCCOMB_X53_Y15_N28
\aProcessor|CSG|StageGenerator|ClockCount~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|CSG|StageGenerator|ClockCount~0_combout\ = (!\aProcessor|CSG|StageGenerator|ClockCount\(0) & ((\aProcessor|CSG|StageGenerator|ClockCount\(1)) # (!\aProcessor|CSG|StageGenerator|ClockCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|CSG|StageGenerator|ClockCount\(1),
	datac => \aProcessor|CSG|StageGenerator|ClockCount\(0),
	datad => \aProcessor|CSG|StageGenerator|ClockCount\(2),
	combout => \aProcessor|CSG|StageGenerator|ClockCount~0_combout\);

-- Location: LCFF_X53_Y15_N29
\aProcessor|CSG|StageGenerator|ClockCount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|CSG|StageGenerator|ClockCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|CSG|StageGenerator|ClockCount\(0));

-- Location: LCCOMB_X55_Y15_N6
\aProcessor|InstAddGen|PC~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|InstAddGen|PC~34_combout\ = (\debounceit3|PB_state~regout\) # ((!\aProcessor|CSG|StageGenerator|ClockCount\(2) & (!\aProcessor|CSG|StageGenerator|ClockCount\(1) & !\aProcessor|CSG|StageGenerator|ClockCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CSG|StageGenerator|ClockCount\(2),
	datab => \aProcessor|CSG|StageGenerator|ClockCount\(1),
	datac => \aProcessor|CSG|StageGenerator|ClockCount\(0),
	datad => \debounceit3|PB_state~regout\,
	combout => \aProcessor|InstAddGen|PC~34_combout\);

-- Location: LCFF_X54_Y15_N1
\aProcessor|InstAddGen|PC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[0]~32_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(0));

-- Location: LCCOMB_X54_Y15_N2
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

-- Location: LCFF_X54_Y15_N3
\aProcessor|InstAddGen|PC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[1]~35_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(1));

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

-- Location: LCCOMB_X53_Y15_N2
\aProcessor|CSG|EnableSignals|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|CSG|EnableSignals|Decoder0~0_combout\ = (!\aProcessor|CSG|StageGenerator|ClockCount\(1) & (\aProcessor|CSG|StageGenerator|ClockCount\(2) & !\aProcessor|CSG|StageGenerator|ClockCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CSG|StageGenerator|ClockCount\(1),
	datab => \aProcessor|CSG|StageGenerator|ClockCount\(2),
	datad => \aProcessor|CSG|StageGenerator|ClockCount\(0),
	combout => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\);

-- Location: LCCOMB_X54_Y15_N4
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

-- Location: LCFF_X54_Y15_N5
\aProcessor|InstAddGen|PC[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[2]~37_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(2));

-- Location: LCCOMB_X54_Y15_N6
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

-- Location: LCFF_X54_Y15_N7
\aProcessor|InstAddGen|PC[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[3]~39_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(3));

-- Location: LCCOMB_X54_Y15_N8
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

-- Location: LCFF_X54_Y15_N9
\aProcessor|InstAddGen|PC[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[4]~41_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(4));

-- Location: LCCOMB_X54_Y15_N10
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

-- Location: LCFF_X54_Y15_N11
\aProcessor|InstAddGen|PC[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[5]~43_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(5));

-- Location: LCCOMB_X51_Y13_N6
\aProcessor|displayAll|HexDisplay32Bits[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~17_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\Memory|ROM1|altsyncram_component|auto_generated|q_a\(1))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\ & (((\aProcessor|InstAddGen|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datab => \aProcessor|InstAddGen|PC\(1),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\,
	datad => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~17_combout\);

-- Location: LCCOMB_X51_Y13_N18
\aProcessor|displayAll|HexDisplay32Bits[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~24_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~8_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~23_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~17_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~8_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~23_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~17_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~24_combout\);

-- Location: LCCOMB_X51_Y13_N24
\aProcessor|displayAll|HexDisplay32Bits[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~8_combout\ = (\switch~combout\(4)) # ((\aProcessor|displayAll|Mux10~4_combout\ & (!\switch~combout\(1) & \switch~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux10~4_combout\,
	datac => \switch~combout\(1),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~8_combout\);

-- Location: LCCOMB_X47_Y21_N0
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

-- Location: LCCOMB_X49_Y21_N24
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

-- Location: LCFF_X49_Y21_N25
\debounceit1|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_sync_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_sync_0~regout\);

-- Location: LCCOMB_X48_Y21_N14
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

-- Location: LCFF_X48_Y21_N15
\debounceit1|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_sync_1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_sync_1~regout\);

-- Location: LCCOMB_X48_Y21_N30
\debounceit1|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|comb~0_combout\ = \debounceit1|PB_sync_1~regout\ $ (!\debounceit1|PB_state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceit1|PB_sync_1~regout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \debounceit1|comb~0_combout\);

-- Location: LCFF_X47_Y21_N1
\debounceit1|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[0]~16_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(0));

-- Location: LCCOMB_X47_Y21_N2
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

-- Location: LCFF_X47_Y21_N3
\debounceit1|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[1]~18_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(1));

-- Location: LCCOMB_X47_Y21_N4
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

-- Location: LCFF_X47_Y21_N5
\debounceit1|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[2]~20_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(2));

-- Location: LCCOMB_X47_Y21_N6
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

-- Location: LCCOMB_X47_Y21_N8
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

-- Location: LCFF_X47_Y21_N9
\debounceit1|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[4]~24_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(4));

-- Location: LCCOMB_X47_Y21_N14
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

-- Location: LCFF_X47_Y21_N15
\debounceit1|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[7]~30_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(7));

-- Location: LCCOMB_X47_Y21_N18
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

-- Location: LCFF_X47_Y21_N19
\debounceit1|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[9]~34_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(9));

-- Location: LCCOMB_X47_Y21_N22
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

-- Location: LCFF_X47_Y21_N23
\debounceit1|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[11]~38_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(11));

-- Location: LCCOMB_X47_Y21_N24
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

-- Location: LCCOMB_X47_Y21_N26
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

-- Location: LCFF_X47_Y21_N27
\debounceit1|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[13]~42_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(13));

-- Location: LCFF_X47_Y21_N29
\debounceit1|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[14]~44_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(14));

-- Location: LCFF_X47_Y21_N7
\debounceit1|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[3]~22_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(3));

-- Location: LCCOMB_X48_Y21_N2
\debounceit1|PB_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~1_combout\ = (\debounceit1|PB_cnt\(5) & (\debounceit1|PB_cnt\(2) & (\debounceit1|PB_cnt\(3) & \debounceit1|PB_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(5),
	datab => \debounceit1|PB_cnt\(2),
	datac => \debounceit1|PB_cnt\(3),
	datad => \debounceit1|PB_cnt\(4),
	combout => \debounceit1|PB_state~1_combout\);

-- Location: LCCOMB_X48_Y21_N20
\debounceit1|PB_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~0_combout\ = (\debounceit1|PB_cnt\(0) & (\debounceit1|PB_cnt\(1) & (\debounceit1|PB_state~regout\ $ (\debounceit1|PB_sync_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(0),
	datab => \debounceit1|PB_state~regout\,
	datac => \debounceit1|PB_sync_1~regout\,
	datad => \debounceit1|PB_cnt\(1),
	combout => \debounceit1|PB_state~0_combout\);

-- Location: LCFF_X47_Y21_N25
\debounceit1|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[12]~40_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(12));

-- Location: LCCOMB_X48_Y21_N18
\debounceit1|PB_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~3_combout\ = (\debounceit1|PB_cnt\(10) & (\debounceit1|PB_cnt\(12) & (\debounceit1|PB_cnt\(13) & \debounceit1|PB_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(10),
	datab => \debounceit1|PB_cnt\(12),
	datac => \debounceit1|PB_cnt\(13),
	datad => \debounceit1|PB_cnt\(11),
	combout => \debounceit1|PB_state~3_combout\);

-- Location: LCCOMB_X48_Y21_N12
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

-- Location: LCCOMB_X48_Y21_N0
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

-- Location: LCFF_X48_Y21_N1
\debounceit1|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_state~regout\);

-- Location: LCCOMB_X51_Y13_N30
\aProcessor|displayAll|HexDisplay32Bits[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~22_combout\ = (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~8_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\) # 
-- (\aProcessor|CSG|StageGenerator|ClockCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~8_combout\,
	datab => \debounceit1|PB_state~regout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\,
	datad => \aProcessor|CSG|StageGenerator|ClockCount\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~22_combout\);

-- Location: LCCOMB_X51_Y13_N16
\aProcessor|displayAll|HexDisplay32Bits[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~22_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~24_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[1]~21_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~21_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~24_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~8_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~22_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\);

-- Location: LCFF_X51_Y15_N19
\aProcessor|IR|Q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(31),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(31));

-- Location: LCCOMB_X49_Y15_N8
\aProcessor|IR|Q[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|IR|Q[28]~feeder_combout\ = \Memory|ROM1|altsyncram_component|auto_generated|q_a\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(28),
	combout => \aProcessor|IR|Q[28]~feeder_combout\);

-- Location: LCFF_X49_Y15_N9
\aProcessor|IR|Q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|IR|Q[28]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(28));

-- Location: LCFF_X49_Y15_N25
\aProcessor|IR|Q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(27),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(27));

-- Location: LCFF_X49_Y15_N21
\aProcessor|IR|Q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(29),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(29));

-- Location: LCCOMB_X49_Y15_N24
\aProcessor|RegFile|R~1024\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1024_combout\ = (\aProcessor|IR|Q\(30)) # ((\aProcessor|IR|Q\(28)) # ((\aProcessor|IR|Q\(27)) # (\aProcessor|IR|Q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(30),
	datab => \aProcessor|IR|Q\(28),
	datac => \aProcessor|IR|Q\(27),
	datad => \aProcessor|IR|Q\(29),
	combout => \aProcessor|RegFile|R~1024_combout\);

-- Location: LCCOMB_X49_Y17_N4
\aProcessor|RegFile|R~1025\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1025_combout\ = (\aProcessor|RegFile|R~0_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~0_regout\,
	datac => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1025_combout\);

-- Location: LCCOMB_X53_Y15_N8
\aProcessor|CSG|EnableSignals|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|CSG|EnableSignals|Decoder0~3_combout\ = (!\aProcessor|CSG|StageGenerator|ClockCount\(1) & (!\aProcessor|CSG|StageGenerator|ClockCount\(0) & !\aProcessor|CSG|StageGenerator|ClockCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CSG|StageGenerator|ClockCount\(1),
	datab => \aProcessor|CSG|StageGenerator|ClockCount\(0),
	datad => \aProcessor|CSG|StageGenerator|ClockCount\(2),
	combout => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\);

-- Location: LCFF_X49_Y17_N5
\aProcessor|RA|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1025_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(0));

-- Location: LCCOMB_X51_Y17_N14
\aProcessor|RZ|Q[0]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[0]~93_combout\ = !\aProcessor|RA|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RA|Q\(0),
	combout => \aProcessor|RZ|Q[0]~93_combout\);

-- Location: LCCOMB_X53_Y15_N22
\aProcessor|CSG|EnableSignals|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|CSG|EnableSignals|Decoder0~2_combout\ = (\aProcessor|CSG|StageGenerator|ClockCount\(1) & (\aProcessor|CSG|StageGenerator|ClockCount\(0) & !\aProcessor|CSG|StageGenerator|ClockCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CSG|StageGenerator|ClockCount\(1),
	datab => \aProcessor|CSG|StageGenerator|ClockCount\(0),
	datad => \aProcessor|CSG|StageGenerator|ClockCount\(2),
	combout => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\);

-- Location: LCFF_X51_Y17_N15
\aProcessor|RZ|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[0]~93_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(0));

-- Location: LCCOMB_X53_Y15_N20
\aProcessor|CSG|EnableSignals|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|CSG|EnableSignals|Decoder0~1_combout\ = (\aProcessor|CSG|StageGenerator|ClockCount\(1) & (!\aProcessor|CSG|StageGenerator|ClockCount\(2) & !\aProcessor|CSG|StageGenerator|ClockCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CSG|StageGenerator|ClockCount\(1),
	datab => \aProcessor|CSG|StageGenerator|ClockCount\(2),
	datad => \aProcessor|CSG|StageGenerator|ClockCount\(0),
	combout => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\);

-- Location: LCFF_X51_Y17_N25
\aProcessor|RY|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RZ|Q\(0),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(0));

-- Location: LCFF_X48_Y15_N21
\aProcessor|IR|Q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(26),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(26));

-- Location: LCFF_X48_Y15_N23
\aProcessor|IR|Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(22),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(22));

-- Location: LCFF_X48_Y15_N9
\aProcessor|IR|Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(25),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(25));

-- Location: LCFF_X53_Y15_N11
\aProcessor|IR|Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(23),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(23));

-- Location: LCCOMB_X48_Y15_N10
\aProcessor|RegFile|R~1026\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1026_combout\ = (\aProcessor|IR|Q\(24)) # ((\aProcessor|IR|Q\(22)) # ((\aProcessor|IR|Q\(25)) # (\aProcessor|IR|Q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(24),
	datab => \aProcessor|IR|Q\(22),
	datac => \aProcessor|IR|Q\(25),
	datad => \aProcessor|IR|Q\(23),
	combout => \aProcessor|RegFile|R~1026_combout\);

-- Location: LCCOMB_X49_Y17_N26
\aProcessor|RegFile|R~1027\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1027_combout\ = (\aProcessor|RegFile|R~0_regout\ & (!\aProcessor|IR|Q\(26) & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~0_regout\,
	datab => \aProcessor|IR|Q\(26),
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1027_combout\);

-- Location: LCFF_X49_Y17_N27
\aProcessor|RB|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1027_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(0));

-- Location: LCFF_X50_Y15_N25
\aProcessor|RM|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(0),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(0));

-- Location: LCCOMB_X50_Y15_N24
\aProcessor|displayAll|Mux28~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~8_combout\ = (!\switch~combout\(1) & ((\switch~combout\(0) & (\aProcessor|RY|Q\(0))) # (!\switch~combout\(0) & ((\aProcessor|RM|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|RY|Q\(0),
	datac => \aProcessor|RM|Q\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~8_combout\);

-- Location: LCCOMB_X51_Y15_N12
\aProcessor|displayAll|Mux28~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~35_combout\ = (\aProcessor|displayAll|Mux28~8_combout\) # ((\switch~combout\(0) & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(0) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|displayAll|Mux28~8_combout\,
	datac => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~35_combout\);

-- Location: LCCOMB_X51_Y17_N12
\aProcessor|displayAll|Mux28~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~10_combout\ = (\switch~combout\(0) & ((\switch~combout\(1) & ((\aProcessor|RZ|Q\(0)))) # (!\switch~combout\(1) & (\aProcessor|RA|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RA|Q\(0),
	datab => \aProcessor|RZ|Q\(0),
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~10_combout\);

-- Location: LCCOMB_X50_Y15_N28
\aProcessor|displayAll|Mux28~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~36_combout\ = (\aProcessor|displayAll|Mux28~10_combout\) # ((\aProcessor|RB|Q\(0) & (!\switch~combout\(0) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RB|Q\(0),
	datab => \aProcessor|displayAll|Mux28~10_combout\,
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~36_combout\);

-- Location: LCFF_X51_Y15_N5
\aProcessor|IR|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(0));

-- Location: LCCOMB_X51_Y15_N4
\aProcessor|displayAll|Mux28~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~12_combout\ = (!\switch~combout\(0) & ((\switch~combout\(1) & ((\aProcessor|IR|Q\(0)))) # (!\switch~combout\(1) & (!\aProcessor|CSG|StageGenerator|ClockCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|CSG|StageGenerator|ClockCount\(0),
	datac => \aProcessor|IR|Q\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~12_combout\);

-- Location: LCCOMB_X51_Y15_N6
\aProcessor|displayAll|Mux28~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~13_combout\ = (\aProcessor|displayAll|Mux28~12_combout\) # ((\switch~combout\(0) & (\aProcessor|InstAddGen|PC\(0) & !\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|displayAll|Mux28~12_combout\,
	datac => \aProcessor|InstAddGen|PC\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~13_combout\);

-- Location: LCCOMB_X50_Y15_N2
\aProcessor|displayAll|Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux31~3_combout\ = (\switch~combout\(2) & ((\aProcessor|displayAll|Mux28~36_combout\) # ((\switch~combout\(3))))) # (!\switch~combout\(2) & (((!\switch~combout\(3) & \aProcessor|displayAll|Mux28~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \aProcessor|displayAll|Mux28~36_combout\,
	datac => \switch~combout\(3),
	datad => \aProcessor|displayAll|Mux28~13_combout\,
	combout => \aProcessor|displayAll|Mux31~3_combout\);

-- Location: LCCOMB_X50_Y15_N22
\aProcessor|displayAll|Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux31~4_combout\ = (\switch~combout\(3) & ((\aProcessor|displayAll|Mux31~3_combout\ & (\aProcessor|displayAll|Mux28~15_combout\)) # (!\aProcessor|displayAll|Mux31~3_combout\ & ((\aProcessor|displayAll|Mux28~35_combout\))))) # 
-- (!\switch~combout\(3) & (((\aProcessor|displayAll|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~15_combout\,
	datab => \switch~combout\(3),
	datac => \aProcessor|displayAll|Mux28~35_combout\,
	datad => \aProcessor|displayAll|Mux31~3_combout\,
	combout => \aProcessor|displayAll|Mux31~4_combout\);

-- Location: LCFF_X51_Y16_N5
\aProcessor|IR|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(1));

-- Location: LCFF_X51_Y15_N1
\aProcessor|IR|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(4));

-- Location: LCFF_X51_Y16_N19
\aProcessor|IR|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(2));

-- Location: LCCOMB_X51_Y16_N30
\aProcessor|displayAll|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux31~0_combout\ = (!\aProcessor|IR|Q\(3) & (\aProcessor|IR|Q\(1) & (!\aProcessor|IR|Q\(4) & !\aProcessor|IR|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(3),
	datab => \aProcessor|IR|Q\(1),
	datac => \aProcessor|IR|Q\(4),
	datad => \aProcessor|IR|Q\(2),
	combout => \aProcessor|displayAll|Mux31~0_combout\);

-- Location: LCFF_X53_Y14_N31
\aProcessor|IR|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(5));

-- Location: LCCOMB_X53_Y14_N30
\aProcessor|displayAll|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux31~1_combout\ = (\switch~combout\(0) & (((\aProcessor|displayAll|Mux31~0_combout\ & \aProcessor|IR|Q\(5))))) # (!\switch~combout\(0) & (\aProcessor|IR|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(6),
	datab => \aProcessor|displayAll|Mux31~0_combout\,
	datac => \aProcessor|IR|Q\(5),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux31~1_combout\);

-- Location: LCCOMB_X53_Y14_N20
\aProcessor|displayAll|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux31~2_combout\ = (\switch~combout\(4) & (\aProcessor|displayAll|Mux31~1_combout\ & (\switch~combout\(1) & \aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux31~1_combout\,
	datac => \switch~combout\(1),
	datad => \aProcessor|displayAll|Mux10~4_combout\,
	combout => \aProcessor|displayAll|Mux31~2_combout\);

-- Location: LCCOMB_X53_Y14_N8
\aProcessor|displayAll|Mux31~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux31~5_combout\ = (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|Mux31~2_combout\) # ((!\switch~combout\(4) & \aProcessor|displayAll|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux31~4_combout\,
	datac => \aProcessor|displayAll|Mux31~2_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|Mux31~5_combout\);

-- Location: LCCOMB_X51_Y13_N8
\aProcessor|displayAll|HexDisplay32Bits[2]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~34_combout\ = ((\aProcessor|IR|Q\(8) & (\switch~combout\(1) & !\switch~combout\(0)))) # (!\aProcessor|displayAll|Mux10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(8),
	datab => \aProcessor|displayAll|Mux10~4_combout\,
	datac => \switch~combout\(1),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~34_combout\);

-- Location: LCCOMB_X47_Y17_N4
\aProcessor|RegFile|R~2feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~2feeder_combout\ = \aProcessor|RY|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(2),
	combout => \aProcessor|RegFile|R~2feeder_combout\);

-- Location: LCFF_X47_Y17_N5
\aProcessor|RegFile|R~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~2feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~2_regout\);

-- Location: LCCOMB_X47_Y17_N24
\aProcessor|RegFile|R~1031\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1031_combout\ = (\aProcessor|RegFile|R~2_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~2_regout\,
	datac => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1031_combout\);

-- Location: LCFF_X47_Y17_N25
\aProcessor|RA|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1031_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(2));

-- Location: LCCOMB_X48_Y17_N0
\aProcessor|RegFile|R~1029\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1029_combout\ = (\aProcessor|RegFile|R~1_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~1_regout\,
	datac => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1029_combout\);

-- Location: LCFF_X48_Y17_N1
\aProcessor|RA|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1029_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(1));

-- Location: LCCOMB_X48_Y17_N4
\aProcessor|RZ|Q[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[2]~33_combout\ = (\aProcessor|RA|Q\(2) & (!\aProcessor|RZ|Q[1]~32\)) # (!\aProcessor|RA|Q\(2) & ((\aProcessor|RZ|Q[1]~32\) # (GND)))
-- \aProcessor|RZ|Q[2]~34\ = CARRY((!\aProcessor|RZ|Q[1]~32\) # (!\aProcessor|RA|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(2),
	datad => VCC,
	cin => \aProcessor|RZ|Q[1]~32\,
	combout => \aProcessor|RZ|Q[2]~33_combout\,
	cout => \aProcessor|RZ|Q[2]~34\);

-- Location: LCFF_X48_Y17_N5
\aProcessor|RZ|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[2]~33_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(2));

-- Location: LCFF_X49_Y14_N9
\aProcessor|RY|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RZ|Q\(2),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(2));

-- Location: LCCOMB_X47_Y15_N20
\aProcessor|displayAll|HexDisplay32Bits[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ = (\switch~combout\(2) & \switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\);

-- Location: LCCOMB_X51_Y17_N0
\aProcessor|displayAll|HexDisplay32Bits[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~26_combout\ = (!\switch~combout\(0) & \aProcessor|IR|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch~combout\(0),
	datad => \aProcessor|IR|Q\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~26_combout\);

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

-- Location: LCCOMB_X51_Y17_N26
\aProcessor|displayAll|HexDisplay32Bits[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ = ((!\switch~combout\(1) & \switch~combout\(0))) # (!\switch~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\);

-- Location: LCCOMB_X51_Y17_N4
\aProcessor|displayAll|HexDisplay32Bits[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~29_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (((\aProcessor|RA|Q\(2) & \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[2]~26_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[2]~26_combout\,
	datac => \aProcessor|RA|Q\(2),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~29_combout\);

-- Location: LCCOMB_X47_Y17_N10
\aProcessor|RegFile|R~1030\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1030_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~2_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(26),
	datab => \aProcessor|RegFile|R~2_regout\,
	datac => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1030_combout\);

-- Location: LCFF_X47_Y17_N11
\aProcessor|RB|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1030_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(2));

-- Location: LCCOMB_X51_Y17_N10
\aProcessor|displayAll|HexDisplay32Bits[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~30_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[2]~29_combout\ & ((\aProcessor|RB|Q\(2)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[2]~29_combout\ & (\aProcessor|RZ|Q\(2))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[2]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RZ|Q\(2),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[2]~29_combout\,
	datad => \aProcessor|RB|Q\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~30_combout\);

-- Location: LCCOMB_X48_Y15_N6
\aProcessor|displayAll|HexDisplay32Bits[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ = (\switch~combout\(3) & ((\switch~combout\(0)) # ((\switch~combout\(2)) # (\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(0),
	datac => \switch~combout\(2),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\);

-- Location: LCCOMB_X51_Y13_N14
\aProcessor|displayAll|HexDisplay32Bits[2]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~31_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(2))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[2]~30_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datab => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(2),
	datac => \aProcessor|displayAll|HexDisplay32Bits[2]~30_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~31_combout\);

-- Location: LCCOMB_X47_Y15_N30
\aProcessor|displayAll|HexDisplay32Bits[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ = (\switch~combout\(1)) # ((\switch~combout\(2)) # (!\switch~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(1),
	datac => \switch~combout\(2),
	datad => \switch~combout\(3),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\);

-- Location: LCCOMB_X51_Y13_N12
\aProcessor|displayAll|HexDisplay32Bits[2]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~32_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[2]~31_combout\ & ((\aProcessor|RM|Q\(2)) # ((\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[2]~31_combout\ & (((\aProcessor|RY|Q\(2) & !\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RM|Q\(2),
	datab => \aProcessor|RY|Q\(2),
	datac => \aProcessor|displayAll|HexDisplay32Bits[2]~31_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~32_combout\);

-- Location: LCCOMB_X51_Y13_N2
\aProcessor|displayAll|HexDisplay32Bits[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~35_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[2]~33_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[2]~34_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[2]~33_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\ & \aProcessor|displayAll|HexDisplay32Bits[2]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[2]~33_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[2]~34_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~15_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[2]~32_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~35_combout\);

-- Location: LCCOMB_X51_Y13_N0
\aProcessor|displayAll|HexDisplay32Bits[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\ = (!\debounceit1|PB_state~regout\ & \aProcessor|displayAll|HexDisplay32Bits[2]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[2]~35_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\);

-- Location: LCFF_X51_Y16_N1
\aProcessor|IR|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(3));

-- Location: LCCOMB_X53_Y14_N18
\aProcessor|displayAll|HexDisplay32Bits[12]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ = (\switch~combout\(4)) # ((\switch~combout\(1) & (!\switch~combout\(3) & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(3),
	datac => \switch~combout\(2),
	datad => \switch~combout\(4),
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\);

-- Location: LCCOMB_X47_Y17_N22
\aProcessor|RegFile|R~1033\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1033_combout\ = (\aProcessor|RegFile|R~3_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~3_regout\,
	datab => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1033_combout\);

-- Location: LCFF_X47_Y17_N23
\aProcessor|RA|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1033_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(3));

-- Location: LCCOMB_X48_Y17_N6
\aProcessor|RZ|Q[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[3]~35_combout\ = (\aProcessor|RA|Q\(3) & (\aProcessor|RZ|Q[2]~34\ $ (GND))) # (!\aProcessor|RA|Q\(3) & (!\aProcessor|RZ|Q[2]~34\ & VCC))
-- \aProcessor|RZ|Q[3]~36\ = CARRY((\aProcessor|RA|Q\(3) & !\aProcessor|RZ|Q[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(3),
	datad => VCC,
	cin => \aProcessor|RZ|Q[2]~34\,
	combout => \aProcessor|RZ|Q[3]~35_combout\,
	cout => \aProcessor|RZ|Q[3]~36\);

-- Location: LCFF_X48_Y17_N7
\aProcessor|RZ|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[3]~35_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(3));

-- Location: LCFF_X50_Y16_N29
\aProcessor|RY|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RZ|Q\(3),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(3));

-- Location: LCCOMB_X47_Y16_N28
\aProcessor|RegFile|R~3feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~3feeder_combout\ = \aProcessor|RY|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(3),
	combout => \aProcessor|RegFile|R~3feeder_combout\);

-- Location: LCFF_X47_Y16_N29
\aProcessor|RegFile|R~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~3feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~3_regout\);

-- Location: LCCOMB_X47_Y16_N20
\aProcessor|RegFile|R~1032\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1032_combout\ = (\aProcessor|RegFile|R~3_regout\ & (!\aProcessor|IR|Q\(26) & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~3_regout\,
	datac => \aProcessor|IR|Q\(26),
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1032_combout\);

-- Location: LCFF_X47_Y16_N21
\aProcessor|RB|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1032_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(3));

-- Location: LCFF_X50_Y16_N19
\aProcessor|RM|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(3),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(3));

-- Location: LCCOMB_X47_Y15_N12
\aProcessor|displayAll|HexDisplay32Bits[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ = ((!\switch~combout\(2) & (\switch~combout\(1) & \switch~combout\(0)))) # (!\switch~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \switch~combout\(3),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\);

-- Location: LCCOMB_X51_Y15_N8
\aProcessor|displayAll|HexDisplay32Bits[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ = (\switch~combout\(2) & ((\switch~combout\(0)) # (!\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(2),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\);

-- Location: LCCOMB_X50_Y17_N14
\aProcessor|displayAll|HexDisplay32Bits[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~39_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & \aProcessor|RA|Q\(3))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[3]~38_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[3]~38_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	datad => \aProcessor|RA|Q\(3),
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~39_combout\);

-- Location: LCCOMB_X50_Y16_N8
\aProcessor|displayAll|HexDisplay32Bits[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~40_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[3]~39_combout\ & (\aProcessor|RB|Q\(3))) # (!\aProcessor|displayAll|HexDisplay32Bits[3]~39_combout\ 
-- & ((\aProcessor|RZ|Q\(3)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[3]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RB|Q\(3),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datac => \aProcessor|RZ|Q\(3),
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~39_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~40_combout\);

-- Location: LCCOMB_X50_Y16_N10
\aProcessor|displayAll|HexDisplay32Bits[3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~41_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\Memory|ROM1|altsyncram_component|auto_generated|q_a\(3))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[3]~40_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~40_combout\,
	datad => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(3),
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~41_combout\);

-- Location: LCCOMB_X50_Y16_N18
\aProcessor|displayAll|HexDisplay32Bits[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~42_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[3]~41_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[3]~41_combout\ & ((\aProcessor|RM|Q\(3)))) # (!\aProcessor|displayAll|HexDisplay32Bits[3]~41_combout\ & (\aProcessor|RY|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datab => \aProcessor|RY|Q\(3),
	datac => \aProcessor|RM|Q\(3),
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~41_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~42_combout\);

-- Location: LCCOMB_X53_Y14_N6
\aProcessor|displayAll|Mux28~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~11_combout\ = (!\switch~combout\(0) & \switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~11_combout\);

-- Location: LCFF_X53_Y15_N3
\aProcessor|IR|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(9));

-- Location: LCCOMB_X53_Y16_N0
\aProcessor|displayAll|HexDisplay32Bits[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~37_combout\ = (\switch~combout\(4) & (((\aProcessor|displayAll|Mux28~11_combout\ & \aProcessor|IR|Q\(9))) # (!\aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux10~4_combout\,
	datac => \aProcessor|displayAll|Mux28~11_combout\,
	datad => \aProcessor|IR|Q\(9),
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~37_combout\);

-- Location: LCCOMB_X53_Y16_N10
\aProcessor|displayAll|HexDisplay32Bits[3]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~44_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[3]~37_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & \aProcessor|displayAll|HexDisplay32Bits[3]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[3]~42_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~37_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~44_combout\);

-- Location: LCCOMB_X53_Y16_N22
\aProcessor|displayAll|HexDisplay32Bits[3]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\ = (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[3]~44_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[10]~45_combout\ & \aProcessor|IR|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[10]~45_combout\,
	datab => \aProcessor|IR|Q\(3),
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~44_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\);

-- Location: LCCOMB_X53_Y8_N28
\uHEX0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ & (\aProcessor|displayAll|Mux31~5_combout\ $ (!\aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\ & (\aProcessor|displayAll|Mux31~5_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ $ (!\aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\,
	datab => \aProcessor|displayAll|Mux31~5_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\,
	combout => \uHEX0|WideOr6~0_combout\);

-- Location: LCCOMB_X53_Y8_N14
\uHEX0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ & ((\aProcessor|displayAll|Mux31~5_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\))) # (!\aProcessor|displayAll|Mux31~5_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\ & (\aProcessor|displayAll|Mux31~5_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\,
	datab => \aProcessor|displayAll|Mux31~5_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\,
	combout => \uHEX0|WideOr5~0_combout\);

-- Location: LCCOMB_X53_Y8_N8
\uHEX0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\) # (!\aProcessor|displayAll|Mux31~5_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ & (!\aProcessor|displayAll|Mux31~5_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\,
	datab => \aProcessor|displayAll|Mux31~5_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\,
	combout => \uHEX0|WideOr4~0_combout\);

-- Location: LCCOMB_X53_Y8_N10
\uHEX0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr3~0_combout\ = (\aProcessor|displayAll|Mux31~5_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ $ ((!\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\)))) # (!\aProcessor|displayAll|Mux31~5_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\ & \aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\,
	datab => \aProcessor|displayAll|Mux31~5_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\,
	combout => \uHEX0|WideOr3~0_combout\);

-- Location: LCCOMB_X53_Y8_N16
\uHEX0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ & (\aProcessor|displayAll|Mux31~5_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\ & (\aProcessor|displayAll|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\,
	datab => \aProcessor|displayAll|Mux31~5_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\,
	combout => \uHEX0|WideOr2~0_combout\);

-- Location: LCCOMB_X53_Y8_N30
\uHEX0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\ & ((\aProcessor|displayAll|Mux31~5_combout\) # (!\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ & (\aProcessor|displayAll|Mux31~5_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\ $ (!\aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\,
	datab => \aProcessor|displayAll|Mux31~5_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\,
	combout => \uHEX0|WideOr1~0_combout\);

-- Location: LCCOMB_X53_Y8_N12
\uHEX0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr0~0_combout\ = (\aProcessor|displayAll|Mux31~5_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\)))) # 
-- (!\aProcessor|displayAll|Mux31~5_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~25_combout\,
	datab => \aProcessor|displayAll|Mux31~5_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[2]~36_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[3]~46_combout\,
	combout => \uHEX0|WideOr0~0_combout\);

-- Location: LCCOMB_X48_Y17_N8
\aProcessor|RZ|Q[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[4]~37_combout\ = (\aProcessor|RA|Q\(4) & (!\aProcessor|RZ|Q[3]~36\)) # (!\aProcessor|RA|Q\(4) & ((\aProcessor|RZ|Q[3]~36\) # (GND)))
-- \aProcessor|RZ|Q[4]~38\ = CARRY((!\aProcessor|RZ|Q[3]~36\) # (!\aProcessor|RA|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(4),
	datad => VCC,
	cin => \aProcessor|RZ|Q[3]~36\,
	combout => \aProcessor|RZ|Q[4]~37_combout\,
	cout => \aProcessor|RZ|Q[4]~38\);

-- Location: LCFF_X48_Y17_N9
\aProcessor|RZ|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[4]~37_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(4));

-- Location: LCCOMB_X51_Y17_N28
\aProcessor|RY|Q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[4]~feeder_combout\ = \aProcessor|RZ|Q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(4),
	combout => \aProcessor|RY|Q[4]~feeder_combout\);

-- Location: LCFF_X51_Y17_N29
\aProcessor|RY|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[4]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(4));

-- Location: LCCOMB_X47_Y17_N2
\aProcessor|RegFile|R~4feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~4feeder_combout\ = \aProcessor|RY|Q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(4),
	combout => \aProcessor|RegFile|R~4feeder_combout\);

-- Location: LCFF_X47_Y17_N3
\aProcessor|RegFile|R~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~4feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~4_regout\);

-- Location: LCCOMB_X47_Y17_N16
\aProcessor|RegFile|R~1034\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1034_combout\ = (\aProcessor|RegFile|R~4_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~4_regout\,
	datac => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1034_combout\);

-- Location: LCFF_X47_Y17_N17
\aProcessor|RA|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1034_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(4));

-- Location: LCCOMB_X48_Y17_N10
\aProcessor|RZ|Q[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[5]~39_combout\ = (\aProcessor|RA|Q\(5) & (\aProcessor|RZ|Q[4]~38\ $ (GND))) # (!\aProcessor|RA|Q\(5) & (!\aProcessor|RZ|Q[4]~38\ & VCC))
-- \aProcessor|RZ|Q[5]~40\ = CARRY((\aProcessor|RA|Q\(5) & !\aProcessor|RZ|Q[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RA|Q\(5),
	datad => VCC,
	cin => \aProcessor|RZ|Q[4]~38\,
	combout => \aProcessor|RZ|Q[5]~39_combout\,
	cout => \aProcessor|RZ|Q[5]~40\);

-- Location: LCFF_X48_Y17_N11
\aProcessor|RZ|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[5]~39_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(5));

-- Location: LCCOMB_X50_Y16_N0
\aProcessor|RY|Q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[5]~feeder_combout\ = \aProcessor|RZ|Q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(5),
	combout => \aProcessor|RY|Q[5]~feeder_combout\);

-- Location: LCFF_X50_Y16_N1
\aProcessor|RY|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[5]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(5));

-- Location: LCCOMB_X47_Y16_N2
\aProcessor|RegFile|R~5feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~5feeder_combout\ = \aProcessor|RY|Q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(5),
	combout => \aProcessor|RegFile|R~5feeder_combout\);

-- Location: LCFF_X47_Y16_N3
\aProcessor|RegFile|R~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~5feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~5_regout\);

-- Location: LCCOMB_X47_Y16_N6
\aProcessor|RegFile|R~1036\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1036_combout\ = (\aProcessor|RegFile|R~5_regout\ & (!\aProcessor|IR|Q\(26) & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~5_regout\,
	datac => \aProcessor|IR|Q\(26),
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1036_combout\);

-- Location: LCFF_X47_Y16_N7
\aProcessor|RB|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1036_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(5));

-- Location: LCFF_X50_Y16_N27
\aProcessor|RM|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(5),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(5));

-- Location: LCCOMB_X47_Y17_N8
\aProcessor|RegFile|R~1037\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1037_combout\ = (\aProcessor|RegFile|R~5_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~5_regout\,
	datac => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1037_combout\);

-- Location: LCFF_X47_Y17_N9
\aProcessor|RA|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1037_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(5));

-- Location: LCCOMB_X51_Y17_N20
\aProcessor|displayAll|HexDisplay32Bits[5]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~49_combout\ = (\switch~combout\(0) & \aProcessor|InstAddGen|PC\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datad => \aProcessor|InstAddGen|PC\(5),
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~49_combout\);

-- Location: LCCOMB_X51_Y17_N2
\aProcessor|displayAll|HexDisplay32Bits[5]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~50_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (\aProcessor|RA|Q\(5) & ((\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[5]~49_combout\) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	datab => \aProcessor|RA|Q\(5),
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~49_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~50_combout\);

-- Location: LCCOMB_X50_Y16_N4
\aProcessor|displayAll|HexDisplay32Bits[5]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~51_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[5]~50_combout\ & ((\aProcessor|RB|Q\(5)) # ((!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[5]~50_combout\ & (((\aProcessor|RZ|Q\(5) & \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RB|Q\(5),
	datab => \aProcessor|RZ|Q\(5),
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~50_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~51_combout\);

-- Location: LCCOMB_X50_Y16_N6
\aProcessor|displayAll|HexDisplay32Bits[5]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~52_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\Memory|ROM1|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[5]~51_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[5]~51_combout\,
	datad => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(5),
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~52_combout\);

-- Location: LCCOMB_X50_Y16_N26
\aProcessor|displayAll|HexDisplay32Bits[5]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~53_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[5]~52_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[5]~52_combout\ & ((\aProcessor|RM|Q\(5)))) # (!\aProcessor|displayAll|HexDisplay32Bits[5]~52_combout\ & (\aProcessor|RY|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datab => \aProcessor|RY|Q\(5),
	datac => \aProcessor|RM|Q\(5),
	datad => \aProcessor|displayAll|HexDisplay32Bits[5]~52_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~53_combout\);

-- Location: LCCOMB_X53_Y14_N28
\aProcessor|displayAll|HexDisplay32Bits[5]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\ = (\switch~combout\(1) & (!\switch~combout\(3) & (!\switch~combout\(2) & !\switch~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(3),
	datac => \switch~combout\(2),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\);

-- Location: LCFF_X53_Y14_N27
\aProcessor|IR|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(11));

-- Location: LCCOMB_X53_Y14_N26
\aProcessor|displayAll|HexDisplay32Bits[5]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~48_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\ & ((\switch~combout\(4) & ((\aProcessor|IR|Q\(11)))) # (!\switch~combout\(4) & (\aProcessor|IR|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(5),
	datab => \aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\,
	datac => \aProcessor|IR|Q\(11),
	datad => \switch~combout\(4),
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~48_combout\);

-- Location: LCCOMB_X53_Y16_N20
\aProcessor|displayAll|HexDisplay32Bits[5]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ = (\debounceit1|PB_state~regout\) # ((\aProcessor|displayAll|HexDisplay32Bits[5]~48_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[5]~53_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[5]~53_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[5]~48_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\);

-- Location: LCCOMB_X51_Y15_N18
\aProcessor|displayAll|Mux28~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~9_combout\ = (\switch~combout\(0) & \switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~9_combout\);

-- Location: LCCOMB_X51_Y16_N2
\aProcessor|displayAll|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~1_combout\ = (!\switch~combout\(2) & ((\aProcessor|displayAll|Mux27~0_combout\) # ((\aProcessor|displayAll|Mux28~9_combout\ & \Memory|ROM1|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~0_combout\,
	datab => \aProcessor|displayAll|Mux28~9_combout\,
	datac => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(4),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux27~1_combout\);

-- Location: LCCOMB_X51_Y16_N20
\aProcessor|displayAll|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~2_combout\ = (\switch~combout\(3) & ((\aProcessor|displayAll|Mux27~1_combout\) # ((\aProcessor|displayAll|Mux28~16_combout\ & \switch~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~16_combout\,
	datab => \aProcessor|displayAll|Mux27~1_combout\,
	datac => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux27~2_combout\);

-- Location: LCCOMB_X51_Y17_N22
\aProcessor|displayAll|Mux28~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~17_combout\ = (\switch~combout\(0) & ((\switch~combout\(1) & (\aProcessor|RZ|Q\(4))) # (!\switch~combout\(1) & ((\aProcessor|RA|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RZ|Q\(4),
	datab => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \aProcessor|RA|Q\(4),
	combout => \aProcessor|displayAll|Mux28~17_combout\);

-- Location: LCCOMB_X51_Y16_N26
\aProcessor|displayAll|Mux28~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~18_combout\ = (\switch~combout\(2) & ((\aProcessor|displayAll|Mux28~17_combout\) # ((\aProcessor|RB|Q\(4) & \aProcessor|displayAll|Mux28~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RB|Q\(4),
	datab => \aProcessor|displayAll|Mux28~11_combout\,
	datac => \aProcessor|displayAll|Mux28~17_combout\,
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux28~18_combout\);

-- Location: LCCOMB_X51_Y14_N0
\aProcessor|displayAll|Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~3_combout\ = (!\switch~combout\(3) & !\switch~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(3),
	datad => \switch~combout\(4),
	combout => \aProcessor|displayAll|Mux27~3_combout\);

-- Location: LCCOMB_X51_Y16_N28
\aProcessor|displayAll|Mux28~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~19_combout\ = (\switch~combout\(1) & ((\aProcessor|IR|Q\(4)))) # (!\switch~combout\(1) & (\aProcessor|InstAddGen|PC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(4),
	datab => \switch~combout\(1),
	datad => \aProcessor|IR|Q\(4),
	combout => \aProcessor|displayAll|Mux28~19_combout\);

-- Location: LCCOMB_X51_Y16_N22
\aProcessor|displayAll|Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~4_combout\ = (\aProcessor|displayAll|Mux27~3_combout\ & ((\aProcessor|displayAll|Mux28~18_combout\) # ((\aProcessor|displayAll|Mux28~20_combout\ & \aProcessor|displayAll|Mux28~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~20_combout\,
	datab => \aProcessor|displayAll|Mux28~18_combout\,
	datac => \aProcessor|displayAll|Mux27~3_combout\,
	datad => \aProcessor|displayAll|Mux28~19_combout\,
	combout => \aProcessor|displayAll|Mux27~4_combout\);

-- Location: LCCOMB_X51_Y16_N10
\aProcessor|displayAll|Mux27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux27~6_combout\ = (\aProcessor|displayAll|Mux27~5_combout\) # ((\debounceit1|PB_state~regout\) # ((\aProcessor|displayAll|Mux27~2_combout\) # (\aProcessor|displayAll|Mux27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux27~5_combout\,
	datab => \debounceit1|PB_state~regout\,
	datac => \aProcessor|displayAll|Mux27~2_combout\,
	datad => \aProcessor|displayAll|Mux27~4_combout\,
	combout => \aProcessor|displayAll|Mux27~6_combout\);

-- Location: LCCOMB_X51_Y14_N26
\aProcessor|displayAll|HexDisplay32Bits[7]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~64_combout\ = (\switch~combout\(4) & (((\aProcessor|IR|Q\(13) & \aProcessor|displayAll|Mux28~11_combout\)) # (!\aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(13),
	datab => \switch~combout\(4),
	datac => \aProcessor|displayAll|Mux28~11_combout\,
	datad => \aProcessor|displayAll|Mux10~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~64_combout\);

-- Location: LCCOMB_X49_Y14_N30
\aProcessor|RY|Q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[7]~feeder_combout\ = \aProcessor|RZ|Q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(7),
	combout => \aProcessor|RY|Q[7]~feeder_combout\);

-- Location: LCFF_X49_Y14_N31
\aProcessor|RY|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[7]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(7));

-- Location: LCCOMB_X49_Y14_N2
\aProcessor|RegFile|R~7feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~7feeder_combout\ = \aProcessor|RY|Q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(7),
	combout => \aProcessor|RegFile|R~7feeder_combout\);

-- Location: LCFF_X49_Y14_N3
\aProcessor|RegFile|R~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~7feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~7_regout\);

-- Location: LCCOMB_X49_Y17_N18
\aProcessor|RegFile|R~1041\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1041_combout\ = (\aProcessor|RegFile|R~7_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~7_regout\,
	datac => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1041_combout\);

-- Location: LCFF_X49_Y17_N19
\aProcessor|RA|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1041_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(7));

-- Location: LCCOMB_X48_Y17_N12
\aProcessor|RZ|Q[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[6]~41_combout\ = (\aProcessor|RA|Q\(6) & (!\aProcessor|RZ|Q[5]~40\)) # (!\aProcessor|RA|Q\(6) & ((\aProcessor|RZ|Q[5]~40\) # (GND)))
-- \aProcessor|RZ|Q[6]~42\ = CARRY((!\aProcessor|RZ|Q[5]~40\) # (!\aProcessor|RA|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(6),
	datad => VCC,
	cin => \aProcessor|RZ|Q[5]~40\,
	combout => \aProcessor|RZ|Q[6]~41_combout\,
	cout => \aProcessor|RZ|Q[6]~42\);

-- Location: LCFF_X48_Y17_N13
\aProcessor|RZ|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[6]~41_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(6));

-- Location: LCCOMB_X46_Y16_N26
\aProcessor|RY|Q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[6]~feeder_combout\ = \aProcessor|RZ|Q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(6),
	combout => \aProcessor|RY|Q[6]~feeder_combout\);

-- Location: LCFF_X46_Y16_N27
\aProcessor|RY|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[6]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(6));

-- Location: LCCOMB_X47_Y16_N0
\aProcessor|RegFile|R~6feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~6feeder_combout\ = \aProcessor|RY|Q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(6),
	combout => \aProcessor|RegFile|R~6feeder_combout\);

-- Location: LCFF_X47_Y16_N1
\aProcessor|RegFile|R~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~6feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~6_regout\);

-- Location: LCCOMB_X47_Y17_N6
\aProcessor|RegFile|R~1039\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1039_combout\ = (\aProcessor|RegFile|R~6_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~6_regout\,
	datac => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1039_combout\);

-- Location: LCFF_X47_Y17_N7
\aProcessor|RA|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1039_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(6));

-- Location: LCCOMB_X48_Y17_N14
\aProcessor|RZ|Q[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[7]~43_combout\ = (\aProcessor|RA|Q\(7) & (\aProcessor|RZ|Q[6]~42\ $ (GND))) # (!\aProcessor|RA|Q\(7) & (!\aProcessor|RZ|Q[6]~42\ & VCC))
-- \aProcessor|RZ|Q[7]~44\ = CARRY((\aProcessor|RA|Q\(7) & !\aProcessor|RZ|Q[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(7),
	datad => VCC,
	cin => \aProcessor|RZ|Q[6]~42\,
	combout => \aProcessor|RZ|Q[7]~43_combout\,
	cout => \aProcessor|RZ|Q[7]~44\);

-- Location: LCFF_X48_Y17_N15
\aProcessor|RZ|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[7]~43_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(7));

-- Location: LCCOMB_X49_Y17_N8
\aProcessor|RegFile|R~1040\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1040_combout\ = (\aProcessor|RegFile|R~7_regout\ & (!\aProcessor|RegFile|R~1026_combout\ & !\aProcessor|IR|Q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~7_regout\,
	datac => \aProcessor|RegFile|R~1026_combout\,
	datad => \aProcessor|IR|Q\(26),
	combout => \aProcessor|RegFile|R~1040_combout\);

-- Location: LCFF_X49_Y17_N9
\aProcessor|RB|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1040_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(7));

-- Location: LCCOMB_X54_Y15_N14
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

-- Location: LCFF_X54_Y15_N15
\aProcessor|InstAddGen|PC[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[7]~47_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(7));

-- Location: LCCOMB_X47_Y14_N28
\aProcessor|displayAll|HexDisplay32Bits[7]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~65_combout\ = (\aProcessor|InstAddGen|PC\(7) & \switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aProcessor|InstAddGen|PC\(7),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~65_combout\);

-- Location: LCCOMB_X47_Y14_N26
\aProcessor|displayAll|HexDisplay32Bits[7]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~66_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (\aProcessor|RA|Q\(7) & ((\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[7]~65_combout\) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RA|Q\(7),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~65_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~66_combout\);

-- Location: LCCOMB_X48_Y14_N2
\aProcessor|displayAll|HexDisplay32Bits[7]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~67_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[7]~66_combout\ & ((\aProcessor|RB|Q\(7)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[7]~66_combout\ & (\aProcessor|RZ|Q\(7))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[7]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datab => \aProcessor|RZ|Q\(7),
	datac => \aProcessor|RB|Q\(7),
	datad => \aProcessor|displayAll|HexDisplay32Bits[7]~66_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~67_combout\);

-- Location: LCCOMB_X48_Y14_N28
\aProcessor|displayAll|HexDisplay32Bits[7]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~68_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\Memory|ROM1|altsyncram_component|auto_generated|q_a\(7)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~67_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[7]~67_combout\,
	datac => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(7),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~68_combout\);

-- Location: LCFF_X48_Y14_N1
\aProcessor|RM|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(7),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(7));

-- Location: LCCOMB_X48_Y14_N0
\aProcessor|displayAll|HexDisplay32Bits[7]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~69_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~68_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[7]~68_combout\ & (\aProcessor|RM|Q\(7))) # (!\aProcessor|displayAll|HexDisplay32Bits[7]~68_combout\ & ((\aProcessor|RY|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[7]~68_combout\,
	datac => \aProcessor|RM|Q\(7),
	datad => \aProcessor|RY|Q\(7),
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~69_combout\);

-- Location: LCCOMB_X48_Y14_N18
\aProcessor|displayAll|HexDisplay32Bits[7]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[7]~63_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[7]~64_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[7]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[7]~63_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[7]~64_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[7]~69_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\);

-- Location: LCCOMB_X45_Y15_N16
\aProcessor|IR|Q[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|IR|Q[12]~feeder_combout\ = \Memory|ROM1|altsyncram_component|auto_generated|q_a\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(12),
	combout => \aProcessor|IR|Q[12]~feeder_combout\);

-- Location: LCFF_X45_Y15_N17
\aProcessor|IR|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|IR|Q[12]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(12));

-- Location: LCCOMB_X53_Y14_N24
\aProcessor|displayAll|Mux28~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~21_combout\ = (\aProcessor|IR|Q\(12) & !\switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \aProcessor|IR|Q\(12),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux28~21_combout\);

-- Location: LCCOMB_X53_Y14_N22
\aProcessor|displayAll|HexDisplay32Bits[6]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~56_combout\ = (\switch~combout\(4) & (((\aProcessor|displayAll|Mux28~21_combout\ & \switch~combout\(1))) # (!\aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux10~4_combout\,
	datac => \aProcessor|displayAll|Mux28~21_combout\,
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~56_combout\);

-- Location: LCCOMB_X47_Y16_N8
\aProcessor|RegFile|R~1038\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1038_combout\ = (\aProcessor|RegFile|R~6_regout\ & (!\aProcessor|IR|Q\(26) & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~6_regout\,
	datac => \aProcessor|IR|Q\(26),
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1038_combout\);

-- Location: LCFF_X47_Y16_N9
\aProcessor|RB|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1038_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(6));

-- Location: LCFF_X46_Y16_N9
\aProcessor|RM|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(6),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(6));

-- Location: LCCOMB_X46_Y16_N8
\aProcessor|displayAll|HexDisplay32Bits[6]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~61_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[6]~60_combout\ & (((\aProcessor|RM|Q\(6)) # (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[6]~60_combout\ & (\aProcessor|RY|Q\(6) & ((!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[6]~60_combout\,
	datab => \aProcessor|RY|Q\(6),
	datac => \aProcessor|RM|Q\(6),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~61_combout\);

-- Location: LCCOMB_X54_Y16_N0
\aProcessor|displayAll|HexDisplay32Bits[6]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[6]~55_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[6]~56_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[6]~61_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[6]~55_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[6]~56_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[6]~61_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\);

-- Location: LCCOMB_X57_Y12_N16
\uHEX1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\ & (\aProcessor|displayAll|Mux27~6_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ & (\aProcessor|displayAll|Mux27~6_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\,
	datab => \aProcessor|displayAll|Mux27~6_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\,
	combout => \uHEX1|WideOr6~0_combout\);

-- Location: LCCOMB_X57_Y12_N22
\uHEX1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ & ((\aProcessor|displayAll|Mux27~6_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\)) # (!\aProcessor|displayAll|Mux27~6_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\ & (\aProcessor|displayAll|Mux27~6_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\,
	datab => \aProcessor|displayAll|Mux27~6_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\,
	combout => \uHEX1|WideOr5~0_combout\);

-- Location: LCCOMB_X57_Y12_N24
\uHEX1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\) # (!\aProcessor|displayAll|Mux27~6_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ & (!\aProcessor|displayAll|Mux27~6_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\,
	datab => \aProcessor|displayAll|Mux27~6_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\,
	combout => \uHEX1|WideOr4~0_combout\);

-- Location: LCCOMB_X57_Y12_N26
\uHEX1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr3~0_combout\ = (\aProcessor|displayAll|Mux27~6_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\))))) # (!\aProcessor|displayAll|Mux27~6_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ & 
-- (!\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\ & \aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\,
	datab => \aProcessor|displayAll|Mux27~6_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\,
	combout => \uHEX1|WideOr3~0_combout\);

-- Location: LCCOMB_X57_Y12_N12
\uHEX1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ & (\aProcessor|displayAll|Mux27~6_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\ & (\aProcessor|displayAll|Mux27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\,
	datab => \aProcessor|displayAll|Mux27~6_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\,
	combout => \uHEX1|WideOr2~0_combout\);

-- Location: LCCOMB_X57_Y12_N18
\uHEX1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\ & ((\aProcessor|displayAll|Mux27~6_combout\) # (!\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ & (\aProcessor|displayAll|Mux27~6_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\ $ (!\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\,
	datab => \aProcessor|displayAll|Mux27~6_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\,
	combout => \uHEX1|WideOr1~0_combout\);

-- Location: LCCOMB_X57_Y12_N0
\uHEX1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr0~0_combout\ = (\aProcessor|displayAll|Mux27~6_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\)))) # 
-- (!\aProcessor|displayAll|Mux27~6_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[5]~54_combout\,
	datab => \aProcessor|displayAll|Mux27~6_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~70_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[6]~62_combout\,
	combout => \uHEX1|WideOr0~0_combout\);

-- Location: LCFF_X53_Y15_N9
\aProcessor|IR|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(8));

-- Location: LCCOMB_X53_Y14_N4
\aProcessor|displayAll|HexDisplay32Bits[8]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~71_combout\ = (!\switch~combout\(0) & ((\aProcessor|displayAll|Mux27~3_combout\ & ((\aProcessor|IR|Q\(8)))) # (!\aProcessor|displayAll|Mux27~3_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[8]~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~228_combout\,
	datab => \aProcessor|IR|Q\(8),
	datac => \aProcessor|displayAll|Mux27~3_combout\,
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~71_combout\);

-- Location: LCCOMB_X48_Y15_N8
\aProcessor|displayAll|HexDisplay32Bits[12]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\ = (!\switch~combout\(2) & !\switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\);

-- Location: LCCOMB_X48_Y17_N16
\aProcessor|RZ|Q[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[8]~45_combout\ = (\aProcessor|RA|Q\(8) & (!\aProcessor|RZ|Q[7]~44\)) # (!\aProcessor|RA|Q\(8) & ((\aProcessor|RZ|Q[7]~44\) # (GND)))
-- \aProcessor|RZ|Q[8]~46\ = CARRY((!\aProcessor|RZ|Q[7]~44\) # (!\aProcessor|RA|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RA|Q\(8),
	datad => VCC,
	cin => \aProcessor|RZ|Q[7]~44\,
	combout => \aProcessor|RZ|Q[8]~45_combout\,
	cout => \aProcessor|RZ|Q[8]~46\);

-- Location: LCFF_X48_Y17_N17
\aProcessor|RZ|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[8]~45_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(8));

-- Location: LCCOMB_X51_Y17_N8
\aProcessor|RY|Q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[8]~feeder_combout\ = \aProcessor|RZ|Q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(8),
	combout => \aProcessor|RY|Q[8]~feeder_combout\);

-- Location: LCFF_X51_Y17_N9
\aProcessor|RY|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[8]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(8));

-- Location: LCCOMB_X47_Y17_N0
\aProcessor|RegFile|R~8feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~8feeder_combout\ = \aProcessor|RY|Q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(8),
	combout => \aProcessor|RegFile|R~8feeder_combout\);

-- Location: LCFF_X47_Y17_N1
\aProcessor|RegFile|R~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~8feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~8_regout\);

-- Location: LCCOMB_X50_Y17_N4
\aProcessor|RegFile|R~1042\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1042_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~8_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(26),
	datac => \aProcessor|RegFile|R~8_regout\,
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1042_combout\);

-- Location: LCFF_X50_Y17_N5
\aProcessor|RB|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1042_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(8));

-- Location: LCFF_X50_Y15_N5
\aProcessor|RM|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(8),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(8));

-- Location: LCCOMB_X50_Y15_N4
\aProcessor|displayAll|HexDisplay32Bits[8]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~76_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~75_combout\ & (((\aProcessor|RY|Q\(8))) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~75_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\ & (\aProcessor|RM|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~75_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\,
	datac => \aProcessor|RM|Q\(8),
	datad => \aProcessor|RY|Q\(8),
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~76_combout\);

-- Location: LCCOMB_X50_Y17_N2
\aProcessor|displayAll|HexDisplay32Bits[8]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~77_combout\ = (\aProcessor|InstAddGen|PC\(8) & \switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(8),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~77_combout\);

-- Location: LCCOMB_X47_Y17_N20
\aProcessor|RegFile|R~1043\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1043_combout\ = (\aProcessor|RegFile|R~8_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~8_regout\,
	datac => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1043_combout\);

-- Location: LCFF_X47_Y17_N21
\aProcessor|RA|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1043_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(8));

-- Location: LCCOMB_X50_Y17_N8
\aProcessor|displayAll|HexDisplay32Bits[8]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~78_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|RA|Q\(8)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~77_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[8]~77_combout\,
	datac => \aProcessor|RA|Q\(8),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~78_combout\);

-- Location: LCCOMB_X50_Y17_N10
\aProcessor|displayAll|HexDisplay32Bits[8]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~79_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[8]~78_combout\ & (\aProcessor|RB|Q\(8))) # (!\aProcessor|displayAll|HexDisplay32Bits[8]~78_combout\ 
-- & ((\aProcessor|RZ|Q\(8)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[8]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datab => \aProcessor|RB|Q\(8),
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~78_combout\,
	datad => \aProcessor|RZ|Q\(8),
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~79_combout\);

-- Location: LCCOMB_X53_Y14_N14
\aProcessor|displayAll|HexDisplay32Bits[8]~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~229_combout\ = (\switch~combout\(4) & (((\aProcessor|displayAll|HexDisplay32Bits[8]~76_combout\)))) # (!\switch~combout\(4) & ((\switch~combout\(3) & (\aProcessor|displayAll|HexDisplay32Bits[8]~76_combout\)) # 
-- (!\switch~combout\(3) & ((\aProcessor|displayAll|HexDisplay32Bits[8]~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \switch~combout\(3),
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~76_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[8]~79_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~229_combout\);

-- Location: LCCOMB_X53_Y14_N2
\aProcessor|displayAll|HexDisplay32Bits[8]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ = (\debounceit1|PB_state~regout\) # ((\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~71_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[8]~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[8]~71_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~229_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\);

-- Location: LCFF_X51_Y16_N29
\aProcessor|IR|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(10));

-- Location: LCCOMB_X51_Y14_N30
\aProcessor|displayAll|HexDisplay32Bits[10]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~89_combout\ = (\debounceit1|PB_state~regout\) # ((!\switch~combout\(4) & (\aProcessor|IR|Q\(10) & \aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \switch~combout\(4),
	datac => \aProcessor|IR|Q\(10),
	datad => \aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~89_combout\);

-- Location: LCCOMB_X48_Y17_N18
\aProcessor|RZ|Q[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[9]~47_combout\ = (\aProcessor|RA|Q\(9) & (\aProcessor|RZ|Q[8]~46\ $ (GND))) # (!\aProcessor|RA|Q\(9) & (!\aProcessor|RZ|Q[8]~46\ & VCC))
-- \aProcessor|RZ|Q[9]~48\ = CARRY((\aProcessor|RA|Q\(9) & !\aProcessor|RZ|Q[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(9),
	datad => VCC,
	cin => \aProcessor|RZ|Q[8]~46\,
	combout => \aProcessor|RZ|Q[9]~47_combout\,
	cout => \aProcessor|RZ|Q[9]~48\);

-- Location: LCFF_X48_Y17_N19
\aProcessor|RZ|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[9]~47_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(9));

-- Location: LCCOMB_X49_Y14_N0
\aProcessor|RY|Q[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[9]~feeder_combout\ = \aProcessor|RZ|Q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(9),
	combout => \aProcessor|RY|Q[9]~feeder_combout\);

-- Location: LCFF_X49_Y14_N1
\aProcessor|RY|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[9]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(9));

-- Location: LCCOMB_X49_Y14_N24
\aProcessor|RegFile|R~9feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~9feeder_combout\ = \aProcessor|RY|Q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(9),
	combout => \aProcessor|RegFile|R~9feeder_combout\);

-- Location: LCFF_X49_Y14_N25
\aProcessor|RegFile|R~9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~9feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~9_regout\);

-- Location: LCCOMB_X49_Y17_N22
\aProcessor|RegFile|R~1045\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1045_combout\ = (!\aProcessor|IR|Q\(31) & (\aProcessor|RegFile|R~9_regout\ & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|IR|Q\(31),
	datac => \aProcessor|RegFile|R~9_regout\,
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1045_combout\);

-- Location: LCFF_X49_Y17_N23
\aProcessor|RA|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1045_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(9));

-- Location: LCCOMB_X48_Y17_N20
\aProcessor|RZ|Q[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[10]~49_combout\ = (\aProcessor|RA|Q\(10) & (!\aProcessor|RZ|Q[9]~48\)) # (!\aProcessor|RA|Q\(10) & ((\aProcessor|RZ|Q[9]~48\) # (GND)))
-- \aProcessor|RZ|Q[10]~50\ = CARRY((!\aProcessor|RZ|Q[9]~48\) # (!\aProcessor|RA|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(10),
	datad => VCC,
	cin => \aProcessor|RZ|Q[9]~48\,
	combout => \aProcessor|RZ|Q[10]~49_combout\,
	cout => \aProcessor|RZ|Q[10]~50\);

-- Location: LCFF_X48_Y17_N21
\aProcessor|RZ|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[10]~49_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(10));

-- Location: LCCOMB_X51_Y17_N30
\aProcessor|RY|Q[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[10]~feeder_combout\ = \aProcessor|RZ|Q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(10),
	combout => \aProcessor|RY|Q[10]~feeder_combout\);

-- Location: LCFF_X51_Y17_N31
\aProcessor|RY|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[10]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(10));

-- Location: LCFF_X50_Y17_N17
\aProcessor|RegFile|R~10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RY|Q\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~10_regout\);

-- Location: LCCOMB_X49_Y17_N0
\aProcessor|RegFile|R~1047\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1047_combout\ = (!\aProcessor|IR|Q\(31) & (\aProcessor|RegFile|R~10_regout\ & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|IR|Q\(31),
	datac => \aProcessor|RegFile|R~10_regout\,
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1047_combout\);

-- Location: LCFF_X49_Y17_N1
\aProcessor|RA|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1047_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(10));

-- Location: LCCOMB_X54_Y15_N18
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

-- Location: LCFF_X54_Y15_N19
\aProcessor|InstAddGen|PC[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[9]~51_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(9));

-- Location: LCCOMB_X54_Y15_N20
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

-- Location: LCFF_X54_Y15_N21
\aProcessor|InstAddGen|PC[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[10]~53_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(10));

-- Location: LCCOMB_X51_Y17_N24
\aProcessor|displayAll|HexDisplay32Bits[10]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~91_combout\ = (\switch~combout\(0) & \aProcessor|InstAddGen|PC\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|InstAddGen|PC\(10),
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~91_combout\);

-- Location: LCCOMB_X50_Y17_N22
\aProcessor|displayAll|HexDisplay32Bits[10]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~92_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (\aProcessor|RA|Q\(10))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[10]~91_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	datac => \aProcessor|RA|Q\(10),
	datad => \aProcessor|displayAll|HexDisplay32Bits[10]~91_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~92_combout\);

-- Location: LCCOMB_X50_Y17_N28
\aProcessor|RegFile|R~1046\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1046_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~10_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(26),
	datab => \aProcessor|RegFile|R~10_regout\,
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1046_combout\);

-- Location: LCFF_X50_Y17_N29
\aProcessor|RB|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1046_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(10));

-- Location: LCCOMB_X50_Y17_N20
\aProcessor|displayAll|HexDisplay32Bits[10]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~93_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[10]~92_combout\ & ((\aProcessor|RB|Q\(10)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[10]~92_combout\ & (\aProcessor|RZ|Q\(10))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~92_combout\,
	datac => \aProcessor|RZ|Q\(10),
	datad => \aProcessor|RB|Q\(10),
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~93_combout\);

-- Location: LCCOMB_X50_Y13_N26
\aProcessor|displayAll|HexDisplay32Bits[10]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~94_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(10) & ((\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[10]~93_combout\) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(10),
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~93_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~94_combout\);

-- Location: LCFF_X50_Y13_N9
\aProcessor|RM|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(10),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(10));

-- Location: LCCOMB_X50_Y13_N8
\aProcessor|displayAll|HexDisplay32Bits[10]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~95_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~94_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[10]~94_combout\ & (\aProcessor|RM|Q\(10))) # (!\aProcessor|displayAll|HexDisplay32Bits[10]~94_combout\ & ((\aProcessor|RY|Q\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~94_combout\,
	datac => \aProcessor|RM|Q\(10),
	datad => \aProcessor|RY|Q\(10),
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~95_combout\);

-- Location: LCCOMB_X53_Y13_N24
\aProcessor|displayAll|HexDisplay32Bits[10]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[10]~90_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[10]~89_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[10]~95_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[10]~90_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~89_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[10]~95_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\);

-- Location: LCCOMB_X49_Y17_N12
\aProcessor|RegFile|R~1044\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1044_combout\ = (\aProcessor|RegFile|R~9_regout\ & (!\aProcessor|IR|Q\(26) & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~9_regout\,
	datab => \aProcessor|IR|Q\(26),
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1044_combout\);

-- Location: LCFF_X49_Y17_N13
\aProcessor|RB|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1044_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(9));

-- Location: LCFF_X50_Y13_N29
\aProcessor|RM|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(9),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(9));

-- Location: LCCOMB_X50_Y13_N2
\aProcessor|displayAll|HexDisplay32Bits[9]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~86_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (((\Memory|ROM1|altsyncram_component|auto_generated|q_a\(9) & \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~85_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~85_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datac => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(9),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~86_combout\);

-- Location: LCCOMB_X50_Y13_N28
\aProcessor|displayAll|HexDisplay32Bits[9]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~87_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[9]~86_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[9]~86_combout\ & ((\aProcessor|RM|Q\(9)))) # (!\aProcessor|displayAll|HexDisplay32Bits[9]~86_combout\ & (\aProcessor|RY|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datab => \aProcessor|RY|Q\(9),
	datac => \aProcessor|RM|Q\(9),
	datad => \aProcessor|displayAll|HexDisplay32Bits[9]~86_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~87_combout\);

-- Location: LCFF_X51_Y14_N29
\aProcessor|IR|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(15),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(15));

-- Location: LCCOMB_X51_Y14_N28
\aProcessor|displayAll|HexDisplay32Bits[9]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~82_combout\ = (\switch~combout\(4) & (((\aProcessor|displayAll|Mux28~11_combout\ & \aProcessor|IR|Q\(15))) # (!\aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~11_combout\,
	datab => \switch~combout\(4),
	datac => \aProcessor|IR|Q\(15),
	datad => \aProcessor|displayAll|Mux10~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~82_combout\);

-- Location: LCCOMB_X53_Y13_N20
\aProcessor|displayAll|HexDisplay32Bits[9]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~81_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[9]~82_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[9]~87_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~81_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[9]~87_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[9]~82_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\);

-- Location: LCCOMB_X54_Y15_N22
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

-- Location: LCFF_X54_Y15_N23
\aProcessor|InstAddGen|PC[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[11]~55_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(11));

-- Location: LCCOMB_X50_Y17_N0
\aProcessor|displayAll|HexDisplay32Bits[11]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~99_combout\ = (\aProcessor|InstAddGen|PC\(11) & \switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(11),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~99_combout\);

-- Location: LCCOMB_X50_Y17_N30
\aProcessor|displayAll|HexDisplay32Bits[11]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~100_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (\aProcessor|RA|Q\(11))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[11]~99_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RA|Q\(11),
	datab => \aProcessor|displayAll|HexDisplay32Bits[11]~99_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~100_combout\);

-- Location: LCCOMB_X49_Y17_N14
\aProcessor|RegFile|R~1049\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1049_combout\ = (!\aProcessor|RegFile|R~1024_combout\ & (!\aProcessor|IR|Q\(31) & \aProcessor|RegFile|R~11_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~1024_combout\,
	datac => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~11_regout\,
	combout => \aProcessor|RegFile|R~1049_combout\);

-- Location: LCFF_X49_Y17_N15
\aProcessor|RA|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1049_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(11));

-- Location: LCCOMB_X48_Y17_N22
\aProcessor|RZ|Q[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[11]~51_combout\ = (\aProcessor|RA|Q\(11) & (\aProcessor|RZ|Q[10]~50\ $ (GND))) # (!\aProcessor|RA|Q\(11) & (!\aProcessor|RZ|Q[10]~50\ & VCC))
-- \aProcessor|RZ|Q[11]~52\ = CARRY((\aProcessor|RA|Q\(11) & !\aProcessor|RZ|Q[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(11),
	datad => VCC,
	cin => \aProcessor|RZ|Q[10]~50\,
	combout => \aProcessor|RZ|Q[11]~51_combout\,
	cout => \aProcessor|RZ|Q[11]~52\);

-- Location: LCFF_X48_Y17_N23
\aProcessor|RZ|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[11]~51_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(11));

-- Location: LCFF_X50_Y16_N17
\aProcessor|RY|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RZ|Q\(11),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(11));

-- Location: LCFF_X50_Y17_N3
\aProcessor|RegFile|R~11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RY|Q\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~11_regout\);

-- Location: LCCOMB_X50_Y17_N18
\aProcessor|RegFile|R~1048\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1048_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~11_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(26),
	datac => \aProcessor|RegFile|R~11_regout\,
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1048_combout\);

-- Location: LCFF_X50_Y17_N19
\aProcessor|RB|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1048_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(11));

-- Location: LCCOMB_X50_Y17_N24
\aProcessor|displayAll|HexDisplay32Bits[11]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~101_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[11]~100_combout\ & (\aProcessor|RB|Q\(11))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[11]~100_combout\ & ((\aProcessor|RZ|Q\(11)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[11]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[11]~100_combout\,
	datac => \aProcessor|RB|Q\(11),
	datad => \aProcessor|RZ|Q\(11),
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~101_combout\);

-- Location: LCCOMB_X50_Y13_N22
\aProcessor|displayAll|HexDisplay32Bits[11]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~102_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(11))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[11]~101_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(11),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[11]~101_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~102_combout\);

-- Location: LCFF_X50_Y13_N1
\aProcessor|RM|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(11),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(11));

-- Location: LCCOMB_X50_Y13_N0
\aProcessor|displayAll|HexDisplay32Bits[11]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~103_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[11]~102_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[11]~102_combout\ & (\aProcessor|RM|Q\(11))) # (!\aProcessor|displayAll|HexDisplay32Bits[11]~102_combout\ & ((\aProcessor|RY|Q\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[11]~102_combout\,
	datac => \aProcessor|RM|Q\(11),
	datad => \aProcessor|RY|Q\(11),
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~103_combout\);

-- Location: LCCOMB_X53_Y14_N10
\aProcessor|displayAll|HexDisplay32Bits[11]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~97_combout\ = (\debounceit1|PB_state~regout\) # ((\aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\ & (!\switch~combout\(4) & \aProcessor|IR|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\,
	datac => \switch~combout\(4),
	datad => \aProcessor|IR|Q\(11),
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~97_combout\);

-- Location: LCCOMB_X53_Y13_N2
\aProcessor|displayAll|HexDisplay32Bits[11]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~98_combout\ = (\switch~combout\(4) & (((\aProcessor|displayAll|Mux28~23_combout\ & \switch~combout\(1))) # (!\aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~23_combout\,
	datab => \aProcessor|displayAll|Mux10~4_combout\,
	datac => \switch~combout\(4),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~98_combout\);

-- Location: LCCOMB_X53_Y13_N12
\aProcessor|displayAll|HexDisplay32Bits[11]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[11]~97_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[11]~98_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[11]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[11]~103_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[11]~97_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[11]~98_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\);

-- Location: LCCOMB_X64_Y7_N8
\uHEX2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\,
	combout => \uHEX2|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y7_N18
\uHEX2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\,
	combout => \uHEX2|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y7_N16
\uHEX2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\,
	combout => \uHEX2|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y7_N10
\uHEX2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ $ ((!\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\ & \aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\,
	combout => \uHEX2|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y7_N12
\uHEX2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\,
	combout => \uHEX2|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y7_N14
\uHEX2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\ $ (((\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\,
	combout => \uHEX2|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y7_N0
\uHEX2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[8]~80_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[10]~96_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[9]~88_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[11]~104_combout\,
	combout => \uHEX2|WideOr0~0_combout\);

-- Location: LCCOMB_X54_Y15_N24
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

-- Location: LCCOMB_X54_Y15_N26
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

-- Location: LCFF_X54_Y15_N27
\aProcessor|InstAddGen|PC[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[13]~59_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(13));

-- Location: LCCOMB_X54_Y15_N28
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

-- Location: LCFF_X54_Y15_N29
\aProcessor|InstAddGen|PC[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[14]~61_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(14));

-- Location: LCCOMB_X54_Y15_N30
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

-- Location: LCFF_X54_Y15_N31
\aProcessor|InstAddGen|PC[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[15]~63_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(15));

-- Location: LCCOMB_X51_Y14_N24
\aProcessor|displayAll|Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~3_combout\ = (\switch~combout\(1) & ((\aProcessor|IR|Q\(15)))) # (!\switch~combout\(1) & (\aProcessor|InstAddGen|PC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|InstAddGen|PC\(15),
	datac => \switch~combout\(1),
	datad => \aProcessor|IR|Q\(15),
	combout => \aProcessor|displayAll|Mux16~3_combout\);

-- Location: LCCOMB_X51_Y16_N18
\aProcessor|displayAll|Mux28~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~20_combout\ = (!\switch~combout\(2) & (\switch~combout\(0) $ (\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|Mux28~20_combout\);

-- Location: LCCOMB_X51_Y14_N2
\aProcessor|displayAll|Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~4_combout\ = (\aProcessor|displayAll|Mux27~3_combout\ & ((\aProcessor|displayAll|Mux16~2_combout\) # ((\aProcessor|displayAll|Mux16~3_combout\ & \aProcessor|displayAll|Mux28~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~2_combout\,
	datab => \aProcessor|displayAll|Mux27~3_combout\,
	datac => \aProcessor|displayAll|Mux16~3_combout\,
	datad => \aProcessor|displayAll|Mux28~20_combout\,
	combout => \aProcessor|displayAll|Mux16~4_combout\);

-- Location: LCCOMB_X51_Y15_N0
\aProcessor|displayAll|Mux16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~5_combout\ = (!\switch~combout\(2) & \switch~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(2),
	datad => \switch~combout\(3),
	combout => \aProcessor|displayAll|Mux16~5_combout\);

-- Location: LCCOMB_X51_Y14_N14
\aProcessor|displayAll|Mux16~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~7_combout\ = (\aProcessor|displayAll|Mux16~5_combout\ & ((\aProcessor|displayAll|Mux16~6_combout\) # ((\Memory|ROM1|altsyncram_component|auto_generated|q_a\(15) & \aProcessor|displayAll|Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~6_combout\,
	datab => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(15),
	datac => \aProcessor|displayAll|Mux16~5_combout\,
	datad => \aProcessor|displayAll|Mux28~9_combout\,
	combout => \aProcessor|displayAll|Mux16~7_combout\);

-- Location: LCCOMB_X51_Y14_N12
\aProcessor|displayAll|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~0_combout\ = (\switch~combout\(4) & (((\aProcessor|IR|Q\(21) & \aProcessor|displayAll|Mux28~11_combout\)) # (!\aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(21),
	datab => \switch~combout\(4),
	datac => \aProcessor|displayAll|Mux28~11_combout\,
	datad => \aProcessor|displayAll|Mux10~4_combout\,
	combout => \aProcessor|displayAll|Mux16~0_combout\);

-- Location: LCCOMB_X51_Y14_N4
\aProcessor|displayAll|Mux16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux16~8_combout\ = (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|Mux16~4_combout\) # ((\aProcessor|displayAll|Mux16~7_combout\) # (\aProcessor|displayAll|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|Mux16~4_combout\,
	datac => \aProcessor|displayAll|Mux16~7_combout\,
	datad => \aProcessor|displayAll|Mux16~0_combout\,
	combout => \aProcessor|displayAll|Mux16~8_combout\);

-- Location: LCFF_X51_Y15_N27
\aProcessor|IR|Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(18),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(18));

-- Location: LCCOMB_X51_Y15_N26
\aProcessor|displayAll|HexDisplay32Bits[12]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~111_combout\ = ((!\switch~combout\(0) & (\aProcessor|IR|Q\(18) & \switch~combout\(1)))) # (!\aProcessor|displayAll|Mux10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|displayAll|Mux10~4_combout\,
	datac => \aProcessor|IR|Q\(18),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~111_combout\);

-- Location: LCCOMB_X47_Y17_N26
\aProcessor|RegFile|R~1051\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1051_combout\ = (\aProcessor|RegFile|R~12_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~12_regout\,
	datac => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1051_combout\);

-- Location: LCFF_X47_Y17_N27
\aProcessor|RA|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1051_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(12));

-- Location: LCCOMB_X48_Y17_N24
\aProcessor|RZ|Q[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[12]~53_combout\ = (\aProcessor|RA|Q\(12) & (!\aProcessor|RZ|Q[11]~52\)) # (!\aProcessor|RA|Q\(12) & ((\aProcessor|RZ|Q[11]~52\) # (GND)))
-- \aProcessor|RZ|Q[12]~54\ = CARRY((!\aProcessor|RZ|Q[11]~52\) # (!\aProcessor|RA|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(12),
	datad => VCC,
	cin => \aProcessor|RZ|Q[11]~52\,
	combout => \aProcessor|RZ|Q[12]~53_combout\,
	cout => \aProcessor|RZ|Q[12]~54\);

-- Location: LCFF_X48_Y17_N25
\aProcessor|RZ|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[12]~53_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(12));

-- Location: LCFF_X47_Y15_N17
\aProcessor|RY|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RZ|Q\(12),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(12));

-- Location: LCFF_X46_Y15_N9
\aProcessor|RegFile|R~12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RY|Q\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~12_regout\);

-- Location: LCCOMB_X46_Y15_N4
\aProcessor|RegFile|R~1050\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1050_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~12_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(26),
	datac => \aProcessor|RegFile|R~12_regout\,
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1050_combout\);

-- Location: LCFF_X46_Y15_N5
\aProcessor|RB|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1050_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(12));

-- Location: LCFF_X54_Y15_N25
\aProcessor|InstAddGen|PC[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[12]~57_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(12));

-- Location: LCCOMB_X47_Y14_N14
\aProcessor|displayAll|HexDisplay32Bits[12]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~107_combout\ = (\switch~combout\(0) & \aProcessor|InstAddGen|PC\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datad => \aProcessor|InstAddGen|PC\(12),
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~107_combout\);

-- Location: LCCOMB_X47_Y14_N8
\aProcessor|displayAll|HexDisplay32Bits[12]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~108_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (\aProcessor|RA|Q\(12) & ((\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[12]~107_combout\) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RA|Q\(12),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~107_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~108_combout\);

-- Location: LCCOMB_X47_Y15_N16
\aProcessor|displayAll|HexDisplay32Bits[12]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~109_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~108_combout\ & (\aProcessor|RB|Q\(12))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~108_combout\ & ((\aProcessor|RZ|Q\(12)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[12]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datab => \aProcessor|RB|Q\(12),
	datac => \aProcessor|RZ|Q\(12),
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~108_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~109_combout\);

-- Location: LCCOMB_X53_Y14_N0
\aProcessor|displayAll|HexDisplay32Bits[12]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~110_combout\ = (\aProcessor|displayAll|Mux27~3_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & (\aProcessor|displayAll|Mux28~21_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~109_combout\))))) # (!\aProcessor|displayAll|Mux27~3_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux28~21_combout\,
	datab => \aProcessor|displayAll|Mux27~3_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~109_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~110_combout\);

-- Location: LCCOMB_X51_Y15_N24
\aProcessor|displayAll|HexDisplay32Bits[12]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~112_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~110_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[12]~111_combout\) # (\aProcessor|displayAll|Mux27~3_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~110_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~106_combout\ & ((!\aProcessor|displayAll|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~106_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~111_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~110_combout\,
	datad => \aProcessor|displayAll|Mux27~3_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~112_combout\);

-- Location: LCCOMB_X51_Y13_N26
\aProcessor|displayAll|HexDisplay32Bits[12]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ = (!\debounceit1|PB_state~regout\ & \aProcessor|displayAll|HexDisplay32Bits[12]~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounceit1|PB_state~regout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~112_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\);

-- Location: LCFF_X48_Y14_N15
\aProcessor|RegFile|R~13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RY|Q\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~13_regout\);

-- Location: LCCOMB_X47_Y17_N28
\aProcessor|RegFile|R~1053\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1053_combout\ = (\aProcessor|RegFile|R~13_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~13_regout\,
	datac => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1053_combout\);

-- Location: LCFF_X47_Y17_N29
\aProcessor|RA|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1053_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(13));

-- Location: LCCOMB_X48_Y17_N26
\aProcessor|RZ|Q[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[13]~55_combout\ = (\aProcessor|RA|Q\(13) & (\aProcessor|RZ|Q[12]~54\ $ (GND))) # (!\aProcessor|RA|Q\(13) & (!\aProcessor|RZ|Q[12]~54\ & VCC))
-- \aProcessor|RZ|Q[13]~56\ = CARRY((\aProcessor|RA|Q\(13) & !\aProcessor|RZ|Q[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(13),
	datad => VCC,
	cin => \aProcessor|RZ|Q[12]~54\,
	combout => \aProcessor|RZ|Q[13]~55_combout\,
	cout => \aProcessor|RZ|Q[13]~56\);

-- Location: LCFF_X48_Y17_N27
\aProcessor|RZ|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[13]~55_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(13));

-- Location: LCFF_X49_Y14_N13
\aProcessor|RY|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RZ|Q\(13),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(13));

-- Location: LCCOMB_X47_Y14_N30
\aProcessor|RegFile|R~1052\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1052_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~13_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(26),
	datac => \aProcessor|RegFile|R~13_regout\,
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1052_combout\);

-- Location: LCFF_X47_Y14_N31
\aProcessor|RB|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1052_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(13));

-- Location: LCFF_X48_Y14_N23
\aProcessor|RM|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(13),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(13));

-- Location: LCCOMB_X47_Y14_N12
\aProcessor|displayAll|HexDisplay32Bits[13]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~116_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|RA|Q\(13)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[13]~115_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[13]~115_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	datac => \aProcessor|RA|Q\(13),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~116_combout\);

-- Location: LCCOMB_X48_Y14_N20
\aProcessor|displayAll|HexDisplay32Bits[13]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~117_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~116_combout\ & ((\aProcessor|RB|Q\(13)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[13]~116_combout\ & (\aProcessor|RZ|Q\(13))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[13]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datab => \aProcessor|RZ|Q\(13),
	datac => \aProcessor|RB|Q\(13),
	datad => \aProcessor|displayAll|HexDisplay32Bits[13]~116_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~117_combout\);

-- Location: LCCOMB_X48_Y14_N26
\aProcessor|displayAll|HexDisplay32Bits[13]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~118_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(13))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~117_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datab => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(13),
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~117_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~118_combout\);

-- Location: LCCOMB_X48_Y14_N22
\aProcessor|displayAll|HexDisplay32Bits[13]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~119_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[13]~118_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[13]~118_combout\ & ((\aProcessor|RM|Q\(13)))) # (!\aProcessor|displayAll|HexDisplay32Bits[13]~118_combout\ & (\aProcessor|RY|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datab => \aProcessor|RY|Q\(13),
	datac => \aProcessor|RM|Q\(13),
	datad => \aProcessor|displayAll|HexDisplay32Bits[13]~118_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~119_combout\);

-- Location: LCCOMB_X48_Y14_N8
\aProcessor|displayAll|HexDisplay32Bits[13]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\ = (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~114_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[13]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[13]~114_combout\,
	datab => \debounceit1|PB_state~regout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[13]~119_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\);

-- Location: LCFF_X51_Y15_N15
\aProcessor|IR|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(14),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(14));

-- Location: LCCOMB_X53_Y16_N24
\aProcessor|displayAll|HexDisplay32Bits[10]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~45_combout\ = (!\switch~combout\(4) & (!\switch~combout\(0) & (\switch~combout\(1) & \aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \switch~combout\(0),
	datac => \switch~combout\(1),
	datad => \aProcessor|displayAll|Mux10~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~45_combout\);

-- Location: LCCOMB_X48_Y17_N28
\aProcessor|RZ|Q[14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[14]~57_combout\ = (\aProcessor|RA|Q\(14) & (!\aProcessor|RZ|Q[13]~56\)) # (!\aProcessor|RA|Q\(14) & ((\aProcessor|RZ|Q[13]~56\) # (GND)))
-- \aProcessor|RZ|Q[14]~58\ = CARRY((!\aProcessor|RZ|Q[13]~56\) # (!\aProcessor|RA|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RA|Q\(14),
	datad => VCC,
	cin => \aProcessor|RZ|Q[13]~56\,
	combout => \aProcessor|RZ|Q[14]~57_combout\,
	cout => \aProcessor|RZ|Q[14]~58\);

-- Location: LCFF_X48_Y17_N29
\aProcessor|RZ|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[14]~57_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(14));

-- Location: LCCOMB_X49_Y14_N22
\aProcessor|RY|Q[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[14]~feeder_combout\ = \aProcessor|RZ|Q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(14),
	combout => \aProcessor|RY|Q[14]~feeder_combout\);

-- Location: LCFF_X49_Y14_N23
\aProcessor|RY|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[14]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(14));

-- Location: LCCOMB_X49_Y14_N18
\aProcessor|RegFile|R~14feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~14feeder_combout\ = \aProcessor|RY|Q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(14),
	combout => \aProcessor|RegFile|R~14feeder_combout\);

-- Location: LCFF_X49_Y14_N19
\aProcessor|RegFile|R~14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~14feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~14_regout\);

-- Location: LCCOMB_X49_Y16_N8
\aProcessor|RegFile|R~1054\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1054_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~14_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|IR|Q\(26),
	datac => \aProcessor|RegFile|R~14_regout\,
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1054_combout\);

-- Location: LCFF_X49_Y16_N9
\aProcessor|RB|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1054_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(14));

-- Location: LCFF_X49_Y16_N31
\aProcessor|RM|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(14),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(14));

-- Location: LCCOMB_X49_Y17_N16
\aProcessor|RegFile|R~1055\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1055_combout\ = (!\aProcessor|IR|Q\(31) & (\aProcessor|RegFile|R~14_regout\ & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|IR|Q\(31),
	datac => \aProcessor|RegFile|R~14_regout\,
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1055_combout\);

-- Location: LCFF_X49_Y17_N17
\aProcessor|RA|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1055_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(14));

-- Location: LCCOMB_X49_Y16_N0
\aProcessor|displayAll|HexDisplay32Bits[14]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~123_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (((\aProcessor|RA|Q\(14) & \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[14]~122_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[14]~122_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	datac => \aProcessor|RA|Q\(14),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~123_combout\);

-- Location: LCCOMB_X49_Y16_N28
\aProcessor|displayAll|HexDisplay32Bits[14]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~124_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[14]~123_combout\ & (\aProcessor|RB|Q\(14))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[14]~123_combout\ & ((\aProcessor|RZ|Q\(14)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[14]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RB|Q\(14),
	datab => \aProcessor|RZ|Q\(14),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[14]~123_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~124_combout\);

-- Location: LCCOMB_X49_Y16_N12
\aProcessor|displayAll|HexDisplay32Bits[14]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~125_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(14))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[14]~124_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datab => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(14),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[14]~124_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~125_combout\);

-- Location: LCCOMB_X49_Y16_N30
\aProcessor|displayAll|HexDisplay32Bits[14]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~126_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[14]~125_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[14]~125_combout\ & ((\aProcessor|RM|Q\(14)))) # (!\aProcessor|displayAll|HexDisplay32Bits[14]~125_combout\ & (\aProcessor|RY|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RY|Q\(14),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datac => \aProcessor|RM|Q\(14),
	datad => \aProcessor|displayAll|HexDisplay32Bits[14]~125_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~126_combout\);

-- Location: LCFF_X53_Y15_N23
\aProcessor|IR|Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(20),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(20));

-- Location: LCCOMB_X53_Y16_N14
\aProcessor|displayAll|Mux28~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~24_combout\ = (!\switch~combout\(0) & \aProcessor|IR|Q\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch~combout\(0),
	datad => \aProcessor|IR|Q\(20),
	combout => \aProcessor|displayAll|Mux28~24_combout\);

-- Location: LCCOMB_X53_Y16_N28
\aProcessor|displayAll|HexDisplay32Bits[14]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~121_combout\ = (\switch~combout\(4) & (((\aProcessor|displayAll|Mux28~24_combout\ & \switch~combout\(1))) # (!\aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux28~24_combout\,
	datac => \switch~combout\(1),
	datad => \aProcessor|displayAll|Mux10~4_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~121_combout\);

-- Location: LCCOMB_X53_Y16_N18
\aProcessor|displayAll|HexDisplay32Bits[14]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~127_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[14]~121_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & \aProcessor|displayAll|HexDisplay32Bits[14]~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[14]~126_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[14]~121_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~127_combout\);

-- Location: LCCOMB_X53_Y16_N8
\aProcessor|displayAll|HexDisplay32Bits[14]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\ = (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[14]~127_combout\) # ((\aProcessor|IR|Q\(14) & \aProcessor|displayAll|HexDisplay32Bits[10]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|IR|Q\(14),
	datac => \aProcessor|displayAll|HexDisplay32Bits[10]~45_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[14]~127_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\);

-- Location: LCCOMB_X53_Y8_N18
\uHEX3|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr6~0_combout\ = (\aProcessor|displayAll|Mux16~8_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\)))) # 
-- (!\aProcessor|displayAll|Mux16~8_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\,
	combout => \uHEX3|WideOr6~0_combout\);

-- Location: LCCOMB_X53_Y8_N4
\uHEX3|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr5~0_combout\ = (\aProcessor|displayAll|Mux16~8_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\))))) # (!\aProcessor|displayAll|Mux16~8_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\,
	combout => \uHEX3|WideOr5~0_combout\);

-- Location: LCCOMB_X53_Y8_N2
\uHEX3|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr4~0_combout\ = (\aProcessor|displayAll|Mux16~8_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\)))) 
-- # (!\aProcessor|displayAll|Mux16~8_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\,
	combout => \uHEX3|WideOr4~0_combout\);

-- Location: LCCOMB_X53_Y8_N20
\uHEX3|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\ $ (!\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ & ((\aProcessor|displayAll|Mux16~8_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\)) # 
-- (!\aProcessor|displayAll|Mux16~8_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\ & \aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\,
	combout => \uHEX3|WideOr3~0_combout\);

-- Location: LCCOMB_X53_Y8_N26
\uHEX3|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\ & (!\aProcessor|displayAll|Mux16~8_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\ & (!\aProcessor|displayAll|Mux16~8_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\,
	combout => \uHEX3|WideOr2~0_combout\);

-- Location: LCCOMB_X53_Y8_N24
\uHEX3|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ & (\aProcessor|displayAll|Mux16~8_combout\ $ (((\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ & (!\aProcessor|displayAll|Mux16~8_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\,
	combout => \uHEX3|WideOr1~0_combout\);

-- Location: LCCOMB_X53_Y8_N22
\uHEX3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ & ((\aProcessor|displayAll|Mux16~8_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\)))) 
-- # (!\aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\) # (\aProcessor|displayAll|Mux16~8_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux16~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~113_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~120_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[14]~128_combout\,
	combout => \uHEX3|WideOr0~0_combout\);

-- Location: LCCOMB_X51_Y16_N0
\aProcessor|displayAll|HexDisplay32Bits[18]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\ = (\switch~combout\(4)) # ((\switch~combout\(3)) # (\switch~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \switch~combout\(3),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\);

-- Location: LCCOMB_X49_Y17_N30
\aProcessor|RegFile|R~1056\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1056_combout\ = (\aProcessor|RegFile|R~15_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~15_regout\,
	datac => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1056_combout\);

-- Location: LCFF_X49_Y17_N31
\aProcessor|RA|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1056_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(15));

-- Location: LCCOMB_X48_Y16_N0
\aProcessor|RZ|Q[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[16]~61_combout\ = (\aProcessor|RA|Q\(16) & (!\aProcessor|RZ|Q[15]~60\)) # (!\aProcessor|RA|Q\(16) & ((\aProcessor|RZ|Q[15]~60\) # (GND)))
-- \aProcessor|RZ|Q[16]~62\ = CARRY((!\aProcessor|RZ|Q[15]~60\) # (!\aProcessor|RA|Q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RA|Q\(16),
	datad => VCC,
	cin => \aProcessor|RZ|Q[15]~60\,
	combout => \aProcessor|RZ|Q[16]~61_combout\,
	cout => \aProcessor|RZ|Q[16]~62\);

-- Location: LCCOMB_X48_Y16_N2
\aProcessor|RZ|Q[17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[17]~63_combout\ = (\aProcessor|RA|Q\(17) & (\aProcessor|RZ|Q[16]~62\ $ (GND))) # (!\aProcessor|RA|Q\(17) & (!\aProcessor|RZ|Q[16]~62\ & VCC))
-- \aProcessor|RZ|Q[17]~64\ = CARRY((\aProcessor|RA|Q\(17) & !\aProcessor|RZ|Q[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(17),
	datad => VCC,
	cin => \aProcessor|RZ|Q[16]~62\,
	combout => \aProcessor|RZ|Q[17]~63_combout\,
	cout => \aProcessor|RZ|Q[17]~64\);

-- Location: LCFF_X48_Y16_N3
\aProcessor|RZ|Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[17]~63_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(17));

-- Location: LCCOMB_X49_Y14_N28
\aProcessor|RY|Q[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[17]~feeder_combout\ = \aProcessor|RZ|Q\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(17),
	combout => \aProcessor|RY|Q[17]~feeder_combout\);

-- Location: LCFF_X49_Y14_N29
\aProcessor|RY|Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[17]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(17));

-- Location: LCCOMB_X49_Y14_N16
\aProcessor|RegFile|R~17feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~17feeder_combout\ = \aProcessor|RY|Q\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(17),
	combout => \aProcessor|RegFile|R~17feeder_combout\);

-- Location: LCFF_X49_Y14_N17
\aProcessor|RegFile|R~17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~17feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~17_regout\);

-- Location: LCCOMB_X49_Y16_N18
\aProcessor|RegFile|R~1061\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1061_combout\ = (!\aProcessor|RegFile|R~1024_combout\ & (\aProcessor|RegFile|R~17_regout\ & !\aProcessor|IR|Q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~1024_combout\,
	datac => \aProcessor|RegFile|R~17_regout\,
	datad => \aProcessor|IR|Q\(31),
	combout => \aProcessor|RegFile|R~1061_combout\);

-- Location: LCFF_X49_Y16_N19
\aProcessor|RA|Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1061_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(17));

-- Location: LCCOMB_X48_Y16_N4
\aProcessor|RZ|Q[18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[18]~65_combout\ = (\aProcessor|RA|Q\(18) & (!\aProcessor|RZ|Q[17]~64\)) # (!\aProcessor|RA|Q\(18) & ((\aProcessor|RZ|Q[17]~64\) # (GND)))
-- \aProcessor|RZ|Q[18]~66\ = CARRY((!\aProcessor|RZ|Q[17]~64\) # (!\aProcessor|RA|Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(18),
	datad => VCC,
	cin => \aProcessor|RZ|Q[17]~64\,
	combout => \aProcessor|RZ|Q[18]~65_combout\,
	cout => \aProcessor|RZ|Q[18]~66\);

-- Location: LCFF_X48_Y16_N5
\aProcessor|RZ|Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[18]~65_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(18));

-- Location: LCCOMB_X47_Y15_N28
\aProcessor|RY|Q[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[18]~feeder_combout\ = \aProcessor|RZ|Q\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(18),
	combout => \aProcessor|RY|Q[18]~feeder_combout\);

-- Location: LCFF_X47_Y15_N29
\aProcessor|RY|Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[18]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(18));

-- Location: LCCOMB_X46_Y15_N0
\aProcessor|RegFile|R~18feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~18feeder_combout\ = \aProcessor|RY|Q\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(18),
	combout => \aProcessor|RegFile|R~18feeder_combout\);

-- Location: LCFF_X46_Y15_N1
\aProcessor|RegFile|R~18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~18feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~18_regout\);

-- Location: LCCOMB_X47_Y16_N4
\aProcessor|RegFile|R~1063\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1063_combout\ = (\aProcessor|RegFile|R~18_regout\ & (!\aProcessor|RegFile|R~1024_combout\ & !\aProcessor|IR|Q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~18_regout\,
	datac => \aProcessor|RegFile|R~1024_combout\,
	datad => \aProcessor|IR|Q\(31),
	combout => \aProcessor|RegFile|R~1063_combout\);

-- Location: LCFF_X47_Y16_N5
\aProcessor|RA|Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1063_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(18));

-- Location: LCCOMB_X48_Y16_N6
\aProcessor|RZ|Q[19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[19]~67_combout\ = (\aProcessor|RA|Q\(19) & (\aProcessor|RZ|Q[18]~66\ $ (GND))) # (!\aProcessor|RA|Q\(19) & (!\aProcessor|RZ|Q[18]~66\ & VCC))
-- \aProcessor|RZ|Q[19]~68\ = CARRY((\aProcessor|RA|Q\(19) & !\aProcessor|RZ|Q[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RA|Q\(19),
	datad => VCC,
	cin => \aProcessor|RZ|Q[18]~66\,
	combout => \aProcessor|RZ|Q[19]~67_combout\,
	cout => \aProcessor|RZ|Q[19]~68\);

-- Location: LCFF_X48_Y16_N7
\aProcessor|RZ|Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[19]~67_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(19));

-- Location: LCCOMB_X47_Y15_N4
\aProcessor|RY|Q[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[19]~feeder_combout\ = \aProcessor|RZ|Q\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(19),
	combout => \aProcessor|RY|Q[19]~feeder_combout\);

-- Location: LCFF_X47_Y15_N5
\aProcessor|RY|Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[19]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(19));

-- Location: LCCOMB_X46_Y15_N26
\aProcessor|RegFile|R~19feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~19feeder_combout\ = \aProcessor|RY|Q\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(19),
	combout => \aProcessor|RegFile|R~19feeder_combout\);

-- Location: LCFF_X46_Y15_N27
\aProcessor|RegFile|R~19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~19feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~19_regout\);

-- Location: LCCOMB_X46_Y15_N30
\aProcessor|RegFile|R~1064\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1064_combout\ = (\aProcessor|RegFile|R~19_regout\ & (!\aProcessor|IR|Q\(26) & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~19_regout\,
	datac => \aProcessor|IR|Q\(26),
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1064_combout\);

-- Location: LCFF_X46_Y15_N31
\aProcessor|RB|Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1064_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(19));

-- Location: LCFF_X47_Y15_N27
\aProcessor|RM|Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(19),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(19));

-- Location: LCCOMB_X47_Y15_N26
\aProcessor|displayAll|HexDisplay32Bits[19]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~157_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[19]~156_combout\ & (((\aProcessor|RM|Q\(19)) # (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[19]~156_combout\ & (\aProcessor|RY|Q\(19) & ((!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[19]~156_combout\,
	datab => \aProcessor|RY|Q\(19),
	datac => \aProcessor|RM|Q\(19),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~157_combout\);

-- Location: LCCOMB_X53_Y16_N16
\aProcessor|displayAll|Mux10~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux10~15_combout\ = (\aProcessor|IR|Q\(21) & (\switch~combout\(1) & (!\switch~combout\(0) & \aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(21),
	datab => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \aProcessor|displayAll|Mux10~4_combout\,
	combout => \aProcessor|displayAll|Mux10~15_combout\);

-- Location: LCCOMB_X48_Y14_N12
\aProcessor|displayAll|HexDisplay32Bits[19]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~158_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & (((\aProcessor|displayAll|Mux10~15_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[19]~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[19]~157_combout\,
	datad => \aProcessor|displayAll|Mux10~15_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~158_combout\);

-- Location: LCCOMB_X50_Y14_N18
\aProcessor|displayAll|HexDisplay32Bits[18]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~139_combout\ = (!\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\) # (\switch~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~139_combout\);

-- Location: LCCOMB_X50_Y14_N22
\aProcessor|displayAll|HexDisplay32Bits[19]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~159_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[18]~139_combout\ & (((\switch~combout\(0)) # (!\aProcessor|displayAll|HexDisplay32Bits[19]~158_combout\)) # (!\aProcessor|IR|Q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(19),
	datab => \aProcessor|displayAll|HexDisplay32Bits[18]~139_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[19]~158_combout\,
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~159_combout\);

-- Location: LCCOMB_X50_Y14_N24
\aProcessor|displayAll|HexDisplay32Bits[19]~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ = (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[19]~158_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[19]~159_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[19]~158_combout\ & (\aProcessor|InstAddGen|PC\(19) & \aProcessor|displayAll|HexDisplay32Bits[19]~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(19),
	datab => \aProcessor|displayAll|HexDisplay32Bits[19]~158_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[19]~159_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\);

-- Location: LCCOMB_X54_Y14_N0
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

-- Location: LCFF_X54_Y14_N1
\aProcessor|InstAddGen|PC[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[16]~65_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(16));

-- Location: LCCOMB_X53_Y15_N10
\aProcessor|displayAll|Mux28~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~22_combout\ = (\aProcessor|IR|Q\(16) & !\switch~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(16),
	datab => \switch~combout\(0),
	combout => \aProcessor|displayAll|Mux28~22_combout\);

-- Location: LCFF_X48_Y16_N1
\aProcessor|RZ|Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[16]~61_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(16));

-- Location: LCFF_X47_Y15_N3
\aProcessor|RY|Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RZ|Q\(16),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(16));

-- Location: LCCOMB_X46_Y15_N22
\aProcessor|RegFile|R~16feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~16feeder_combout\ = \aProcessor|RY|Q\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(16),
	combout => \aProcessor|RegFile|R~16feeder_combout\);

-- Location: LCFF_X46_Y15_N23
\aProcessor|RegFile|R~16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~16feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~16_regout\);

-- Location: LCCOMB_X46_Y15_N6
\aProcessor|RegFile|R~1058\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1058_combout\ = (\aProcessor|RegFile|R~16_regout\ & (!\aProcessor|IR|Q\(26) & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~16_regout\,
	datac => \aProcessor|IR|Q\(26),
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1058_combout\);

-- Location: LCFF_X46_Y15_N7
\aProcessor|RB|Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1058_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(16));

-- Location: LCCOMB_X47_Y16_N14
\aProcessor|RegFile|R~1059\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1059_combout\ = (\aProcessor|RegFile|R~16_regout\ & (!\aProcessor|RegFile|R~1024_combout\ & !\aProcessor|IR|Q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~16_regout\,
	datac => \aProcessor|RegFile|R~1024_combout\,
	datad => \aProcessor|IR|Q\(31),
	combout => \aProcessor|RegFile|R~1059_combout\);

-- Location: LCFF_X47_Y16_N15
\aProcessor|RA|Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1059_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(16));

-- Location: LCCOMB_X48_Y15_N22
\aProcessor|displayAll|HexDisplay32Bits[16]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[16]~131_combout\ = (\switch~combout\(1) & (((\switch~combout\(0))))) # (!\switch~combout\(1) & ((\switch~combout\(0) & (\aProcessor|RA|Q\(16))) # (!\switch~combout\(0) & ((\aProcessor|IR|Q\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \aProcessor|RA|Q\(16),
	datac => \aProcessor|IR|Q\(22),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[16]~131_combout\);

-- Location: LCCOMB_X47_Y15_N24
\aProcessor|displayAll|HexDisplay32Bits[16]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[16]~132_combout\ = (\switch~combout\(1) & ((\aProcessor|displayAll|HexDisplay32Bits[16]~131_combout\ & ((\aProcessor|RZ|Q\(16)))) # (!\aProcessor|displayAll|HexDisplay32Bits[16]~131_combout\ & 
-- (\aProcessor|RB|Q\(16))))) # (!\switch~combout\(1) & (((\aProcessor|displayAll|HexDisplay32Bits[16]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \aProcessor|RB|Q\(16),
	datac => \aProcessor|RZ|Q\(16),
	datad => \aProcessor|displayAll|HexDisplay32Bits[16]~131_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[16]~132_combout\);

-- Location: LCCOMB_X51_Y15_N22
\aProcessor|displayAll|HexDisplay32Bits[12]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\ = (\switch~combout\(2)) # ((\switch~combout\(0) & !\switch~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(2),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\);

-- Location: LCCOMB_X53_Y15_N4
\aProcessor|displayAll|Mux28~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~25_combout\ = (\aProcessor|CSG|StageGenerator|ClockCount\(1) & (\aProcessor|CSG|StageGenerator|ClockCount\(0) & (\aProcessor|displayAll|Mux28~11_combout\ & !\aProcessor|CSG|StageGenerator|ClockCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CSG|StageGenerator|ClockCount\(1),
	datab => \aProcessor|CSG|StageGenerator|ClockCount\(0),
	datac => \aProcessor|displayAll|Mux28~11_combout\,
	datad => \aProcessor|CSG|StageGenerator|ClockCount\(2),
	combout => \aProcessor|displayAll|Mux28~25_combout\);

-- Location: LCCOMB_X53_Y15_N6
\aProcessor|displayAll|HexDisplay32Bits[16]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[16]~133_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\ & (\aProcessor|displayAll|Mux28~25_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\ & ((\Memory|ROM1|altsyncram_component|auto_generated|q_a\(16)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\,
	datac => \aProcessor|displayAll|Mux28~25_combout\,
	datad => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(16),
	combout => \aProcessor|displayAll|HexDisplay32Bits[16]~133_combout\);

-- Location: LCFF_X47_Y15_N15
\aProcessor|RM|Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(16),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(16));

-- Location: LCCOMB_X47_Y15_N14
\aProcessor|displayAll|HexDisplay32Bits[16]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[16]~134_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[16]~133_combout\ & ((\aProcessor|RY|Q\(16)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[16]~133_combout\ & (\aProcessor|RM|Q\(16))))) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[16]~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~133_combout\,
	datac => \aProcessor|RM|Q\(16),
	datad => \aProcessor|RY|Q\(16),
	combout => \aProcessor|displayAll|HexDisplay32Bits[16]~134_combout\);

-- Location: LCCOMB_X48_Y15_N14
\aProcessor|displayAll|HexDisplay32Bits[16]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[16]~136_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[20]~135_combout\ & (((\aProcessor|displayAll|Mux10~4_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[16]~134_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~135_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[16]~132_combout\ & (!\aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[20]~135_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~132_combout\,
	datac => \aProcessor|displayAll|Mux10~4_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[16]~134_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[16]~136_combout\);

-- Location: LCCOMB_X53_Y16_N30
\aProcessor|displayAll|HexDisplay32Bits[16]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[16]~137_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[20]~130_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[16]~136_combout\ & ((\aProcessor|displayAll|Mux28~22_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[16]~136_combout\ & (\aProcessor|InstAddGen|PC\(16))))) # (!\aProcessor|displayAll|HexDisplay32Bits[20]~130_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[16]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[20]~130_combout\,
	datab => \aProcessor|InstAddGen|PC\(16),
	datac => \aProcessor|displayAll|Mux28~22_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[16]~136_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[16]~137_combout\);

-- Location: LCCOMB_X48_Y14_N4
\aProcessor|displayAll|HexDisplay32Bits[16]~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ = (!\debounceit1|PB_state~regout\ & ((\switch~combout\(4) & ((\aProcessor|displayAll|Mux10~15_combout\))) # (!\switch~combout\(4) & (\aProcessor|displayAll|HexDisplay32Bits[16]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~137_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|Mux10~15_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\);

-- Location: LCFF_X51_Y15_N23
\aProcessor|IR|Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(17),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(17));

-- Location: LCCOMB_X51_Y15_N28
\aProcessor|displayAll|Mux28~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~23_combout\ = (!\switch~combout\(0) & \aProcessor|IR|Q\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datad => \aProcessor|IR|Q\(17),
	combout => \aProcessor|displayAll|Mux28~23_combout\);

-- Location: LCCOMB_X54_Y14_N2
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

-- Location: LCFF_X54_Y14_N3
\aProcessor|InstAddGen|PC[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[17]~67_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(17));

-- Location: LCCOMB_X50_Y14_N14
\aProcessor|displayAll|HexDisplay32Bits[17]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~145_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~144_combout\ & ((\aProcessor|displayAll|Mux28~23_combout\) # ((!\aProcessor|displayAll|HexDisplay32Bits[18]~139_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[17]~144_combout\ & (((\aProcessor|InstAddGen|PC\(17) & \aProcessor|displayAll|HexDisplay32Bits[18]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[17]~144_combout\,
	datab => \aProcessor|displayAll|Mux28~23_combout\,
	datac => \aProcessor|InstAddGen|PC\(17),
	datad => \aProcessor|displayAll|HexDisplay32Bits[18]~139_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~145_combout\);

-- Location: LCCOMB_X48_Y14_N6
\aProcessor|displayAll|HexDisplay32Bits[17]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\ = (!\debounceit1|PB_state~regout\ & \aProcessor|displayAll|HexDisplay32Bits[17]~145_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[17]~145_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\);

-- Location: LCCOMB_X46_Y15_N20
\aProcessor|RegFile|R~1062\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1062_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~18_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(26),
	datac => \aProcessor|RegFile|R~18_regout\,
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1062_combout\);

-- Location: LCFF_X46_Y15_N21
\aProcessor|RB|Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1062_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(18));

-- Location: LCFF_X47_Y15_N19
\aProcessor|RM|Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(18),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(18));

-- Location: LCFF_X51_Y15_N29
\aProcessor|IR|Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(24),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(24));

-- Location: LCCOMB_X48_Y15_N24
\aProcessor|displayAll|HexDisplay32Bits[18]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~147_combout\ = (\switch~combout\(1) & (((\switch~combout\(0))))) # (!\switch~combout\(1) & ((\switch~combout\(0) & (\aProcessor|RA|Q\(18))) # (!\switch~combout\(0) & ((\aProcessor|IR|Q\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \aProcessor|RA|Q\(18),
	datac => \aProcessor|IR|Q\(24),
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~147_combout\);

-- Location: LCCOMB_X47_Y15_N0
\aProcessor|displayAll|HexDisplay32Bits[18]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~148_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[18]~147_combout\ & (((\aProcessor|RZ|Q\(18)) # (!\switch~combout\(1))))) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~147_combout\ & 
-- (\aProcessor|RB|Q\(18) & (\switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RB|Q\(18),
	datab => \aProcessor|displayAll|HexDisplay32Bits[18]~147_combout\,
	datac => \switch~combout\(1),
	datad => \aProcessor|RZ|Q\(18),
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~148_combout\);

-- Location: LCCOMB_X47_Y15_N22
\aProcessor|displayAll|HexDisplay32Bits[18]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~149_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(18) & (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[18]~148_combout\) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datab => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(18),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[18]~148_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~149_combout\);

-- Location: LCCOMB_X47_Y15_N18
\aProcessor|displayAll|HexDisplay32Bits[18]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~150_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[18]~149_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[18]~149_combout\ & ((\aProcessor|RM|Q\(18)))) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~149_combout\ & (\aProcessor|RY|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RY|Q\(18),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datac => \aProcessor|RM|Q\(18),
	datad => \aProcessor|displayAll|HexDisplay32Bits[18]~149_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~150_combout\);

-- Location: LCCOMB_X50_Y14_N8
\aProcessor|displayAll|HexDisplay32Bits[18]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~151_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & (((\aProcessor|displayAll|Mux10~15_combout\) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[18]~150_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[18]~150_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\,
	datad => \aProcessor|displayAll|Mux10~15_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~151_combout\);

-- Location: LCCOMB_X50_Y14_N10
\aProcessor|displayAll|HexDisplay32Bits[18]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~152_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[18]~139_combout\ & (((\switch~combout\(0)) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~151_combout\)) # (!\aProcessor|IR|Q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(18),
	datab => \aProcessor|displayAll|HexDisplay32Bits[18]~139_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[18]~151_combout\,
	datad => \switch~combout\(0),
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~152_combout\);

-- Location: LCCOMB_X50_Y14_N20
\aProcessor|displayAll|HexDisplay32Bits[18]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\ = (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[18]~151_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[18]~152_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[18]~151_combout\ & (\aProcessor|InstAddGen|PC\(18) & \aProcessor|displayAll|HexDisplay32Bits[18]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(18),
	datab => \aProcessor|displayAll|HexDisplay32Bits[18]~151_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[18]~152_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\);

-- Location: LCCOMB_X4_Y14_N16
\uHEX4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\,
	combout => \uHEX4|WideOr6~0_combout\);

-- Location: LCCOMB_X4_Y14_N22
\uHEX4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\,
	combout => \uHEX4|WideOr5~0_combout\);

-- Location: LCCOMB_X4_Y14_N12
\uHEX4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\,
	combout => \uHEX4|WideOr4~0_combout\);

-- Location: LCCOMB_X4_Y14_N10
\uHEX4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\ $ (!\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\ & \aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\,
	combout => \uHEX4|WideOr3~0_combout\);

-- Location: LCCOMB_X4_Y14_N24
\uHEX4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\,
	combout => \uHEX4|WideOr2~0_combout\);

-- Location: LCCOMB_X4_Y14_N26
\uHEX4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ $ (((\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\,
	combout => \uHEX4|WideOr1~0_combout\);

-- Location: LCCOMB_X4_Y14_N0
\uHEX4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[19]~160_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[16]~230_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[17]~146_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[18]~153_combout\,
	combout => \uHEX4|WideOr0~0_combout\);

-- Location: LCCOMB_X47_Y16_N16
\aProcessor|RegFile|R~1068\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1068_combout\ = (!\aProcessor|RegFile|R~1024_combout\ & (\aProcessor|RegFile|R~21_regout\ & !\aProcessor|IR|Q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~1024_combout\,
	datac => \aProcessor|RegFile|R~21_regout\,
	datad => \aProcessor|IR|Q\(31),
	combout => \aProcessor|RegFile|R~1068_combout\);

-- Location: LCFF_X47_Y16_N17
\aProcessor|RA|Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1068_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(21));

-- Location: LCCOMB_X48_Y16_N8
\aProcessor|RZ|Q[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[20]~69_combout\ = (\aProcessor|RA|Q\(20) & (!\aProcessor|RZ|Q[19]~68\)) # (!\aProcessor|RA|Q\(20) & ((\aProcessor|RZ|Q[19]~68\) # (GND)))
-- \aProcessor|RZ|Q[20]~70\ = CARRY((!\aProcessor|RZ|Q[19]~68\) # (!\aProcessor|RA|Q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RA|Q\(20),
	datad => VCC,
	cin => \aProcessor|RZ|Q[19]~68\,
	combout => \aProcessor|RZ|Q[20]~69_combout\,
	cout => \aProcessor|RZ|Q[20]~70\);

-- Location: LCCOMB_X48_Y16_N10
\aProcessor|RZ|Q[21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[21]~71_combout\ = (\aProcessor|RA|Q\(21) & (\aProcessor|RZ|Q[20]~70\ $ (GND))) # (!\aProcessor|RA|Q\(21) & (!\aProcessor|RZ|Q[20]~70\ & VCC))
-- \aProcessor|RZ|Q[21]~72\ = CARRY((\aProcessor|RA|Q\(21) & !\aProcessor|RZ|Q[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(21),
	datad => VCC,
	cin => \aProcessor|RZ|Q[20]~70\,
	combout => \aProcessor|RZ|Q[21]~71_combout\,
	cout => \aProcessor|RZ|Q[21]~72\);

-- Location: LCFF_X48_Y16_N11
\aProcessor|RZ|Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[21]~71_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(21));

-- Location: LCFF_X47_Y15_N21
\aProcessor|RY|Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RZ|Q\(21),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(21));

-- Location: LCCOMB_X46_Y15_N24
\aProcessor|RegFile|R~21feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~21feeder_combout\ = \aProcessor|RY|Q\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(21),
	combout => \aProcessor|RegFile|R~21feeder_combout\);

-- Location: LCFF_X46_Y15_N25
\aProcessor|RegFile|R~21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~21feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~21_regout\);

-- Location: LCCOMB_X46_Y15_N18
\aProcessor|RegFile|R~1069\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1069_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~21_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(26),
	datac => \aProcessor|RegFile|R~21_regout\,
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1069_combout\);

-- Location: LCFF_X46_Y15_N19
\aProcessor|RB|Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1069_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(21));

-- Location: LCCOMB_X51_Y14_N8
\aProcessor|displayAll|Mux10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux10~9_combout\ = (\switch~combout\(2) & ((\aProcessor|displayAll|Mux10~8_combout\) # ((\aProcessor|displayAll|Mux28~11_combout\ & \aProcessor|RB|Q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux10~8_combout\,
	datab => \aProcessor|displayAll|Mux28~11_combout\,
	datac => \switch~combout\(2),
	datad => \aProcessor|RB|Q\(21),
	combout => \aProcessor|displayAll|Mux10~9_combout\);

-- Location: LCCOMB_X54_Y14_N4
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

-- Location: LCFF_X54_Y14_N5
\aProcessor|InstAddGen|PC[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[18]~69_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(18));

-- Location: LCCOMB_X54_Y14_N8
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

-- Location: LCFF_X54_Y14_N9
\aProcessor|InstAddGen|PC[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[20]~73_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(20));

-- Location: LCCOMB_X54_Y14_N10
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

-- Location: LCFF_X54_Y14_N11
\aProcessor|InstAddGen|PC[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[21]~75_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(21));

-- Location: LCCOMB_X51_Y14_N22
\aProcessor|displayAll|Mux10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux10~7_combout\ = (\aProcessor|displayAll|Mux28~20_combout\ & ((\switch~combout\(1) & (\aProcessor|IR|Q\(21))) # (!\switch~combout\(1) & ((\aProcessor|InstAddGen|PC\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(21),
	datab => \aProcessor|displayAll|Mux28~20_combout\,
	datac => \switch~combout\(1),
	datad => \aProcessor|InstAddGen|PC\(21),
	combout => \aProcessor|displayAll|Mux10~7_combout\);

-- Location: LCCOMB_X51_Y14_N6
\aProcessor|displayAll|Mux10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux10~10_combout\ = (\aProcessor|displayAll|Mux10~6_combout\) # ((!\switch~combout\(3) & ((\aProcessor|displayAll|Mux10~9_combout\) # (\aProcessor|displayAll|Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux10~6_combout\,
	datab => \aProcessor|displayAll|Mux10~9_combout\,
	datac => \switch~combout\(3),
	datad => \aProcessor|displayAll|Mux10~7_combout\,
	combout => \aProcessor|displayAll|Mux10~10_combout\);

-- Location: LCCOMB_X48_Y14_N30
\aProcessor|displayAll|HexDisplay32Bits[21]~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ = (!\debounceit1|PB_state~regout\ & ((\switch~combout\(4) & ((\aProcessor|displayAll|Mux10~15_combout\))) # (!\switch~combout\(4) & (\aProcessor|displayAll|Mux10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux10~10_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|Mux10~15_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\);

-- Location: LCCOMB_X49_Y16_N14
\aProcessor|RegFile|R~1073\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1073_combout\ = (!\aProcessor|RegFile|R~1024_combout\ & (\aProcessor|RegFile|R~23_regout\ & !\aProcessor|IR|Q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~1024_combout\,
	datac => \aProcessor|RegFile|R~23_regout\,
	datad => \aProcessor|IR|Q\(31),
	combout => \aProcessor|RegFile|R~1073_combout\);

-- Location: LCFF_X49_Y16_N15
\aProcessor|RA|Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1073_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(23));

-- Location: LCCOMB_X48_Y16_N12
\aProcessor|RZ|Q[22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[22]~73_combout\ = (\aProcessor|RA|Q\(22) & (!\aProcessor|RZ|Q[21]~72\)) # (!\aProcessor|RA|Q\(22) & ((\aProcessor|RZ|Q[21]~72\) # (GND)))
-- \aProcessor|RZ|Q[22]~74\ = CARRY((!\aProcessor|RZ|Q[21]~72\) # (!\aProcessor|RA|Q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(22),
	datad => VCC,
	cin => \aProcessor|RZ|Q[21]~72\,
	combout => \aProcessor|RZ|Q[22]~73_combout\,
	cout => \aProcessor|RZ|Q[22]~74\);

-- Location: LCFF_X48_Y16_N13
\aProcessor|RZ|Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[22]~73_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(22));

-- Location: LCCOMB_X46_Y16_N14
\aProcessor|RY|Q[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[22]~feeder_combout\ = \aProcessor|RZ|Q\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(22),
	combout => \aProcessor|RY|Q[22]~feeder_combout\);

-- Location: LCFF_X46_Y16_N15
\aProcessor|RY|Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[22]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(22));

-- Location: LCCOMB_X47_Y16_N22
\aProcessor|RegFile|R~22feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~22feeder_combout\ = \aProcessor|RY|Q\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(22),
	combout => \aProcessor|RegFile|R~22feeder_combout\);

-- Location: LCFF_X47_Y16_N23
\aProcessor|RegFile|R~22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~22feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~22_regout\);

-- Location: LCCOMB_X47_Y16_N24
\aProcessor|RegFile|R~1071\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1071_combout\ = (\aProcessor|RegFile|R~22_regout\ & (!\aProcessor|RegFile|R~1024_combout\ & !\aProcessor|IR|Q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~22_regout\,
	datac => \aProcessor|RegFile|R~1024_combout\,
	datad => \aProcessor|IR|Q\(31),
	combout => \aProcessor|RegFile|R~1071_combout\);

-- Location: LCFF_X47_Y16_N25
\aProcessor|RA|Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1071_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(22));

-- Location: LCCOMB_X48_Y16_N14
\aProcessor|RZ|Q[23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[23]~75_combout\ = (\aProcessor|RA|Q\(23) & (\aProcessor|RZ|Q[22]~74\ $ (GND))) # (!\aProcessor|RA|Q\(23) & (!\aProcessor|RZ|Q[22]~74\ & VCC))
-- \aProcessor|RZ|Q[23]~76\ = CARRY((\aProcessor|RA|Q\(23) & !\aProcessor|RZ|Q[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(23),
	datad => VCC,
	cin => \aProcessor|RZ|Q[22]~74\,
	combout => \aProcessor|RZ|Q[23]~75_combout\,
	cout => \aProcessor|RZ|Q[23]~76\);

-- Location: LCFF_X48_Y16_N15
\aProcessor|RZ|Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[23]~75_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(23));

-- Location: LCCOMB_X50_Y16_N14
\aProcessor|RY|Q[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[23]~feeder_combout\ = \aProcessor|RZ|Q\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(23),
	combout => \aProcessor|RY|Q[23]~feeder_combout\);

-- Location: LCFF_X50_Y16_N15
\aProcessor|RY|Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[23]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(23));

-- Location: LCCOMB_X47_Y16_N12
\aProcessor|RegFile|R~23feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~23feeder_combout\ = \aProcessor|RY|Q\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(23),
	combout => \aProcessor|RegFile|R~23feeder_combout\);

-- Location: LCFF_X47_Y16_N13
\aProcessor|RegFile|R~23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~23feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~23_regout\);

-- Location: LCCOMB_X49_Y16_N16
\aProcessor|RegFile|R~1072\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1072_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~23_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|IR|Q\(26),
	datac => \aProcessor|RegFile|R~23_regout\,
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1072_combout\);

-- Location: LCFF_X49_Y16_N17
\aProcessor|RB|Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1072_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(23));

-- Location: LCFF_X49_Y16_N7
\aProcessor|RM|Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(23),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(23));

-- Location: LCCOMB_X49_Y16_N6
\aProcessor|displayAll|HexDisplay32Bits[23]~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~180_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~179_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\) # ((\aProcessor|RM|Q\(23))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[23]~179_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & ((\aProcessor|RY|Q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[23]~179_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datac => \aProcessor|RM|Q\(23),
	datad => \aProcessor|RY|Q\(23),
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~180_combout\);

-- Location: LCCOMB_X53_Y16_N6
\aProcessor|displayAll|HexDisplay32Bits[23]~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~181_combout\ = (!\debounceit1|PB_state~regout\ & (!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & \aProcessor|displayAll|HexDisplay32Bits[23]~180_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[23]~180_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~181_combout\);

-- Location: LCCOMB_X48_Y14_N24
\aProcessor|displayAll|HexDisplay32Bits[22]~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~174_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\ & (!\debounceit1|PB_state~regout\ & !\switch~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|displayAll|HexDisplay32Bits[5]~47_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \switch~combout\(4),
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~174_combout\);

-- Location: LCCOMB_X45_Y16_N24
\aProcessor|displayAll|HexDisplay32Bits[23]~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[16]~129_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[23]~181_combout\) # ((\aProcessor|IR|Q\(23) & 
-- \aProcessor|displayAll|HexDisplay32Bits[22]~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[16]~129_combout\,
	datab => \aProcessor|IR|Q\(23),
	datac => \aProcessor|displayAll|HexDisplay32Bits[23]~181_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[22]~174_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\);

-- Location: LCCOMB_X47_Y16_N18
\aProcessor|RegFile|R~1070\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1070_combout\ = (\aProcessor|RegFile|R~22_regout\ & (!\aProcessor|IR|Q\(26) & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~22_regout\,
	datac => \aProcessor|IR|Q\(26),
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1070_combout\);

-- Location: LCFF_X47_Y16_N19
\aProcessor|RB|Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1070_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(22));

-- Location: LCFF_X46_Y16_N25
\aProcessor|RM|Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(22),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(22));

-- Location: LCCOMB_X46_Y16_N24
\aProcessor|displayAll|HexDisplay32Bits[22]~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~172_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~171_combout\ & (((\aProcessor|RM|Q\(22)) # (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[22]~171_combout\ & (\aProcessor|RY|Q\(22) & ((!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~171_combout\,
	datab => \aProcessor|RY|Q\(22),
	datac => \aProcessor|RM|Q\(22),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~172_combout\);

-- Location: LCCOMB_X45_Y16_N8
\aProcessor|displayAll|HexDisplay32Bits[22]~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~173_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~172_combout\ & (!\debounceit1|PB_state~regout\ & !\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|displayAll|HexDisplay32Bits[22]~172_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~173_combout\);

-- Location: LCCOMB_X51_Y16_N4
\aProcessor|displayAll|HexDisplay32Bits[16]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[16]~129_combout\ = (\switch~combout\(4) & (!\debounceit1|PB_state~regout\ & \aProcessor|displayAll|Mux10~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|Mux10~15_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[16]~129_combout\);

-- Location: LCCOMB_X45_Y16_N6
\aProcessor|displayAll|HexDisplay32Bits[22]~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[22]~173_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[16]~129_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[22]~174_combout\ & 
-- \aProcessor|IR|Q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~174_combout\,
	datab => \aProcessor|IR|Q\(22),
	datac => \aProcessor|displayAll|HexDisplay32Bits[22]~173_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[16]~129_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\);

-- Location: LCFF_X48_Y16_N9
\aProcessor|RZ|Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[20]~69_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(20));

-- Location: LCCOMB_X49_Y18_N28
\aProcessor|RY|Q[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[20]~feeder_combout\ = \aProcessor|RZ|Q\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(20),
	combout => \aProcessor|RY|Q[20]~feeder_combout\);

-- Location: LCFF_X49_Y18_N29
\aProcessor|RY|Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[20]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(20));

-- Location: LCCOMB_X49_Y18_N16
\aProcessor|RegFile|R~20feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~20feeder_combout\ = \aProcessor|RY|Q\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(20),
	combout => \aProcessor|RegFile|R~20feeder_combout\);

-- Location: LCFF_X49_Y18_N17
\aProcessor|RegFile|R~20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~20feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~20_regout\);

-- Location: LCCOMB_X49_Y16_N2
\aProcessor|RegFile|R~1067\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1067_combout\ = (\aProcessor|RegFile|R~20_regout\ & (!\aProcessor|RegFile|R~1024_combout\ & !\aProcessor|IR|Q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~20_regout\,
	datac => \aProcessor|RegFile|R~1024_combout\,
	datad => \aProcessor|IR|Q\(31),
	combout => \aProcessor|RegFile|R~1067_combout\);

-- Location: LCFF_X49_Y16_N3
\aProcessor|RA|Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1067_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(20));

-- Location: LCCOMB_X48_Y15_N18
\aProcessor|displayAll|HexDisplay32Bits[20]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~161_combout\ = (\switch~combout\(1) & (\switch~combout\(0))) # (!\switch~combout\(1) & ((\switch~combout\(0) & (\aProcessor|RA|Q\(20))) # (!\switch~combout\(0) & ((\aProcessor|IR|Q\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(0),
	datac => \aProcessor|RA|Q\(20),
	datad => \aProcessor|IR|Q\(26),
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~161_combout\);

-- Location: LCCOMB_X48_Y15_N0
\aProcessor|displayAll|HexDisplay32Bits[20]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~162_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[20]~161_combout\ & (((\aProcessor|RZ|Q\(20)) # (!\switch~combout\(1))))) # (!\aProcessor|displayAll|HexDisplay32Bits[20]~161_combout\ & 
-- (\aProcessor|RB|Q\(20) & ((\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RB|Q\(20),
	datab => \aProcessor|displayAll|HexDisplay32Bits[20]~161_combout\,
	datac => \aProcessor|RZ|Q\(20),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~162_combout\);

-- Location: LCCOMB_X49_Y17_N2
\aProcessor|RegFile|R~1066\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1066_combout\ = (\aProcessor|RegFile|R~20_regout\ & (!\aProcessor|RegFile|R~1026_combout\ & !\aProcessor|IR|Q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~20_regout\,
	datac => \aProcessor|RegFile|R~1026_combout\,
	datad => \aProcessor|IR|Q\(26),
	combout => \aProcessor|RegFile|R~1066_combout\);

-- Location: LCFF_X49_Y17_N3
\aProcessor|RB|Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1066_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(20));

-- Location: LCFF_X48_Y15_N27
\aProcessor|RM|Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(20),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(20));

-- Location: LCCOMB_X53_Y15_N16
\aProcessor|displayAll|HexDisplay32Bits[20]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~163_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\ & ((\aProcessor|displayAll|Mux28~25_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(20))))) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~73_combout\,
	datab => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(20),
	datac => \aProcessor|displayAll|Mux28~25_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~74_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~163_combout\);

-- Location: LCCOMB_X48_Y15_N26
\aProcessor|displayAll|HexDisplay32Bits[20]~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~164_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[20]~163_combout\ & (\aProcessor|RY|Q\(20))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~163_combout\ & ((\aProcessor|RM|Q\(20)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[20]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~72_combout\,
	datab => \aProcessor|RY|Q\(20),
	datac => \aProcessor|RM|Q\(20),
	datad => \aProcessor|displayAll|HexDisplay32Bits[20]~163_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~164_combout\);

-- Location: LCCOMB_X48_Y15_N16
\aProcessor|displayAll|HexDisplay32Bits[20]~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~165_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[20]~135_combout\ & (((\aProcessor|displayAll|Mux10~4_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[20]~164_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~135_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[20]~162_combout\ & (!\aProcessor|displayAll|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[20]~135_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[20]~162_combout\,
	datac => \aProcessor|displayAll|Mux10~4_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[20]~164_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~165_combout\);

-- Location: LCCOMB_X53_Y16_N4
\aProcessor|displayAll|HexDisplay32Bits[20]~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~166_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[20]~130_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[20]~165_combout\ & (\aProcessor|displayAll|Mux28~24_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~165_combout\ & ((\aProcessor|InstAddGen|PC\(20)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[20]~130_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[20]~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[20]~130_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[20]~165_combout\,
	datac => \aProcessor|displayAll|Mux28~24_combout\,
	datad => \aProcessor|InstAddGen|PC\(20),
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~166_combout\);

-- Location: LCCOMB_X53_Y16_N2
\aProcessor|displayAll|HexDisplay32Bits[20]~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\ = (!\debounceit1|PB_state~regout\ & ((\switch~combout\(4) & ((\aProcessor|displayAll|Mux10~15_combout\))) # (!\switch~combout\(4) & (\aProcessor|displayAll|HexDisplay32Bits[20]~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|HexDisplay32Bits[20]~166_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|Mux10~15_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\);

-- Location: LCCOMB_X1_Y16_N16
\uHEX5|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\,
	combout => \uHEX5|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y16_N10
\uHEX5|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\,
	combout => \uHEX5|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y16_N20
\uHEX5|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\,
	combout => \uHEX5|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y16_N30
\uHEX5|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\ & \aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\,
	combout => \uHEX5|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y16_N12
\uHEX5|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\,
	combout => \uHEX5|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y16_N14
\uHEX5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\,
	combout => \uHEX5|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y16_N0
\uHEX5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[21]~167_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[23]~182_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[22]~175_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[20]~231_combout\,
	combout => \uHEX5|WideOr0~0_combout\);

-- Location: LCCOMB_X48_Y16_N16
\aProcessor|RZ|Q[24]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[24]~77_combout\ = (\aProcessor|RA|Q\(24) & (!\aProcessor|RZ|Q[23]~76\)) # (!\aProcessor|RA|Q\(24) & ((\aProcessor|RZ|Q[23]~76\) # (GND)))
-- \aProcessor|RZ|Q[24]~78\ = CARRY((!\aProcessor|RZ|Q[23]~76\) # (!\aProcessor|RA|Q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RA|Q\(24),
	datad => VCC,
	cin => \aProcessor|RZ|Q[23]~76\,
	combout => \aProcessor|RZ|Q[24]~77_combout\,
	cout => \aProcessor|RZ|Q[24]~78\);

-- Location: LCFF_X48_Y16_N17
\aProcessor|RZ|Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[24]~77_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(24));

-- Location: LCFF_X50_Y15_N19
\aProcessor|RY|Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RZ|Q\(24),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(24));

-- Location: LCCOMB_X49_Y18_N22
\aProcessor|RegFile|R~24feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~24feeder_combout\ = \aProcessor|RY|Q\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(24),
	combout => \aProcessor|RegFile|R~24feeder_combout\);

-- Location: LCFF_X49_Y18_N23
\aProcessor|RegFile|R~24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~24feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~24_regout\);

-- Location: LCCOMB_X49_Y15_N4
\aProcessor|RegFile|R~1074\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1074_combout\ = (!\aProcessor|RegFile|R~1026_combout\ & (\aProcessor|RegFile|R~24_regout\ & !\aProcessor|IR|Q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~1026_combout\,
	datab => \aProcessor|RegFile|R~24_regout\,
	datad => \aProcessor|IR|Q\(26),
	combout => \aProcessor|RegFile|R~1074_combout\);

-- Location: LCFF_X49_Y15_N5
\aProcessor|RB|Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1074_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(24));

-- Location: LCFF_X50_Y15_N1
\aProcessor|RM|Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(24),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(24));

-- Location: LCCOMB_X50_Y15_N0
\aProcessor|displayAll|Mux28~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~26_combout\ = (!\switch~combout\(1) & ((\switch~combout\(0) & (\aProcessor|RY|Q\(24))) # (!\switch~combout\(0) & ((\aProcessor|RM|Q\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|RY|Q\(24),
	datac => \aProcessor|RM|Q\(24),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~26_combout\);

-- Location: LCCOMB_X51_Y15_N30
\aProcessor|displayAll|Mux28~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~37_combout\ = (\aProcessor|displayAll|Mux28~26_combout\) # ((\switch~combout\(0) & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(24) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(24),
	datac => \aProcessor|displayAll|Mux28~26_combout\,
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~37_combout\);

-- Location: LCCOMB_X53_Y15_N18
\aProcessor|displayAll|Mux28~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~30_combout\ = (\aProcessor|CSG|StageGenerator|ClockCount\(1) & (!\aProcessor|CSG|StageGenerator|ClockCount\(0) & (\aProcessor|displayAll|Mux28~11_combout\ & !\aProcessor|CSG|StageGenerator|ClockCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CSG|StageGenerator|ClockCount\(1),
	datab => \aProcessor|CSG|StageGenerator|ClockCount\(0),
	datac => \aProcessor|displayAll|Mux28~11_combout\,
	datad => \aProcessor|CSG|StageGenerator|ClockCount\(2),
	combout => \aProcessor|displayAll|Mux28~30_combout\);

-- Location: LCCOMB_X50_Y15_N20
\aProcessor|displayAll|Mux10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux10~12_combout\ = (\aProcessor|displayAll|Mux10~11_combout\ & (((\aProcessor|displayAll|Mux28~30_combout\) # (!\switch~combout\(3))))) # (!\aProcessor|displayAll|Mux10~11_combout\ & (\aProcessor|displayAll|Mux28~37_combout\ & 
-- (\switch~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux10~11_combout\,
	datab => \aProcessor|displayAll|Mux28~37_combout\,
	datac => \switch~combout\(3),
	datad => \aProcessor|displayAll|Mux28~30_combout\,
	combout => \aProcessor|displayAll|Mux10~12_combout\);

-- Location: LCCOMB_X46_Y15_N16
\aProcessor|displayAll|HexDisplay32Bits[24]~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ = (!\debounceit1|PB_state~regout\ & ((\switch~combout\(4) & ((\aProcessor|displayAll|Mux10~15_combout\))) # (!\switch~combout\(4) & (\aProcessor|displayAll|Mux10~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \switch~combout\(4),
	datac => \aProcessor|displayAll|Mux10~12_combout\,
	datad => \aProcessor|displayAll|Mux10~15_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\);

-- Location: LCCOMB_X46_Y17_N22
\aProcessor|displayAll|HexDisplay32Bits[26]~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\ = (!\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\ & ((!\switch~combout\(0)) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datac => \switch~combout\(0),
	datad => \aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\);

-- Location: LCCOMB_X49_Y17_N10
\aProcessor|RegFile|R~1079\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1079_combout\ = (\aProcessor|RegFile|R~26_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~26_regout\,
	datac => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1079_combout\);

-- Location: LCFF_X49_Y17_N11
\aProcessor|RA|Q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1079_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(26));

-- Location: LCCOMB_X49_Y15_N20
\aProcessor|RegFile|R~1077\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1077_combout\ = (\aProcessor|RegFile|R~25_regout\ & (!\aProcessor|RegFile|R~1024_combout\ & !\aProcessor|IR|Q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~25_regout\,
	datab => \aProcessor|RegFile|R~1024_combout\,
	datad => \aProcessor|IR|Q\(31),
	combout => \aProcessor|RegFile|R~1077_combout\);

-- Location: LCFF_X49_Y15_N3
\aProcessor|RA|Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RegFile|R~1077_combout\,
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(25));

-- Location: LCCOMB_X48_Y16_N18
\aProcessor|RZ|Q[25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[25]~79_combout\ = (\aProcessor|RA|Q\(25) & (\aProcessor|RZ|Q[24]~78\ $ (GND))) # (!\aProcessor|RA|Q\(25) & (!\aProcessor|RZ|Q[24]~78\ & VCC))
-- \aProcessor|RZ|Q[25]~80\ = CARRY((\aProcessor|RA|Q\(25) & !\aProcessor|RZ|Q[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(25),
	datad => VCC,
	cin => \aProcessor|RZ|Q[24]~78\,
	combout => \aProcessor|RZ|Q[25]~79_combout\,
	cout => \aProcessor|RZ|Q[25]~80\);

-- Location: LCCOMB_X48_Y16_N20
\aProcessor|RZ|Q[26]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[26]~81_combout\ = (\aProcessor|RA|Q\(26) & (!\aProcessor|RZ|Q[25]~80\)) # (!\aProcessor|RA|Q\(26) & ((\aProcessor|RZ|Q[25]~80\) # (GND)))
-- \aProcessor|RZ|Q[26]~82\ = CARRY((!\aProcessor|RZ|Q[25]~80\) # (!\aProcessor|RA|Q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(26),
	datad => VCC,
	cin => \aProcessor|RZ|Q[25]~80\,
	combout => \aProcessor|RZ|Q[26]~81_combout\,
	cout => \aProcessor|RZ|Q[26]~82\);

-- Location: LCFF_X48_Y16_N21
\aProcessor|RZ|Q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[26]~81_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(26));

-- Location: LCFF_X49_Y18_N13
\aProcessor|RY|Q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RZ|Q\(26),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(26));

-- Location: LCCOMB_X49_Y18_N26
\aProcessor|RegFile|R~26feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~26feeder_combout\ = \aProcessor|RY|Q\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(26),
	combout => \aProcessor|RegFile|R~26feeder_combout\);

-- Location: LCFF_X49_Y18_N27
\aProcessor|RegFile|R~26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~26feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~26_regout\);

-- Location: LCCOMB_X49_Y17_N20
\aProcessor|RegFile|R~1078\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1078_combout\ = (!\aProcessor|IR|Q\(26) & (!\aProcessor|RegFile|R~1026_combout\ & \aProcessor|RegFile|R~26_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|IR|Q\(26),
	datac => \aProcessor|RegFile|R~1026_combout\,
	datad => \aProcessor|RegFile|R~26_regout\,
	combout => \aProcessor|RegFile|R~1078_combout\);

-- Location: LCFF_X49_Y17_N21
\aProcessor|RB|Q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1078_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(26));

-- Location: LCFF_X48_Y15_N31
\aProcessor|RM|Q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(26),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(26));

-- Location: LCCOMB_X48_Y15_N4
\aProcessor|displayAll|HexDisplay32Bits[26]~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~192_combout\ = (\switch~combout\(1) & (((\switch~combout\(0))))) # (!\switch~combout\(1) & ((\switch~combout\(0) & ((\aProcessor|RA|Q\(26)))) # (!\switch~combout\(0) & (\aProcessor|IR|Q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \aProcessor|IR|Q\(29),
	datac => \switch~combout\(0),
	datad => \aProcessor|RA|Q\(26),
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~192_combout\);

-- Location: LCCOMB_X48_Y15_N2
\aProcessor|displayAll|HexDisplay32Bits[26]~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~193_combout\ = (\switch~combout\(1) & ((\aProcessor|displayAll|HexDisplay32Bits[26]~192_combout\ & ((\aProcessor|RZ|Q\(26)))) # (!\aProcessor|displayAll|HexDisplay32Bits[26]~192_combout\ & 
-- (\aProcessor|RB|Q\(26))))) # (!\switch~combout\(1) & (\aProcessor|displayAll|HexDisplay32Bits[26]~192_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~192_combout\,
	datac => \aProcessor|RB|Q\(26),
	datad => \aProcessor|RZ|Q\(26),
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~193_combout\);

-- Location: LCCOMB_X48_Y15_N28
\aProcessor|displayAll|HexDisplay32Bits[26]~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~194_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(26))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[26]~193_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datac => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(26),
	datad => \aProcessor|displayAll|HexDisplay32Bits[26]~193_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~194_combout\);

-- Location: LCCOMB_X48_Y15_N30
\aProcessor|displayAll|HexDisplay32Bits[26]~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~195_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[26]~194_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[26]~194_combout\ & ((\aProcessor|RM|Q\(26)))) # (!\aProcessor|displayAll|HexDisplay32Bits[26]~194_combout\ & (\aProcessor|RY|Q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datab => \aProcessor|RY|Q\(26),
	datac => \aProcessor|RM|Q\(26),
	datad => \aProcessor|displayAll|HexDisplay32Bits[26]~194_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~195_combout\);

-- Location: LCCOMB_X46_Y15_N2
\aProcessor|displayAll|HexDisplay32Bits[26]~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~196_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\ & ((\aProcessor|displayAll|Mux10~15_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[26]~195_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[26]~195_combout\,
	datad => \aProcessor|displayAll|Mux10~15_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~196_combout\);

-- Location: LCCOMB_X46_Y17_N24
\aProcessor|displayAll|HexDisplay32Bits[26]~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~197_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[26]~196_combout\) # (!\switch~combout\(0))) # (!\aProcessor|InstAddGen|PC\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(26),
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\,
	datac => \switch~combout\(0),
	datad => \aProcessor|displayAll|HexDisplay32Bits[26]~196_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~197_combout\);

-- Location: LCCOMB_X46_Y17_N26
\aProcessor|displayAll|HexDisplay32Bits[26]~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ = (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[26]~197_combout\ & (\aProcessor|IR|Q\(26) & !\aProcessor|displayAll|HexDisplay32Bits[26]~196_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[26]~197_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[26]~196_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|IR|Q\(26),
	datac => \aProcessor|displayAll|HexDisplay32Bits[26]~197_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[26]~196_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\);

-- Location: LCCOMB_X49_Y15_N28
\aProcessor|RegFile|R~1081\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1081_combout\ = (!\aProcessor|IR|Q\(31) & (!\aProcessor|RegFile|R~1024_combout\ & \aProcessor|RegFile|R~27_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(31),
	datab => \aProcessor|RegFile|R~1024_combout\,
	datac => \aProcessor|RegFile|R~27_regout\,
	combout => \aProcessor|RegFile|R~1081_combout\);

-- Location: LCFF_X49_Y15_N29
\aProcessor|RA|Q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1081_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(27));

-- Location: LCCOMB_X48_Y16_N22
\aProcessor|RZ|Q[27]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[27]~83_combout\ = (\aProcessor|RA|Q\(27) & (\aProcessor|RZ|Q[26]~82\ $ (GND))) # (!\aProcessor|RA|Q\(27) & (!\aProcessor|RZ|Q[26]~82\ & VCC))
-- \aProcessor|RZ|Q[27]~84\ = CARRY((\aProcessor|RA|Q\(27) & !\aProcessor|RZ|Q[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(27),
	datad => VCC,
	cin => \aProcessor|RZ|Q[26]~82\,
	combout => \aProcessor|RZ|Q[27]~83_combout\,
	cout => \aProcessor|RZ|Q[27]~84\);

-- Location: LCFF_X48_Y16_N23
\aProcessor|RZ|Q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[27]~83_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(27));

-- Location: LCCOMB_X49_Y18_N14
\aProcessor|RY|Q[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[27]~feeder_combout\ = \aProcessor|RZ|Q\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(27),
	combout => \aProcessor|RY|Q[27]~feeder_combout\);

-- Location: LCFF_X49_Y18_N15
\aProcessor|RY|Q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[27]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(27));

-- Location: LCCOMB_X50_Y14_N30
\aProcessor|RegFile|R~27feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~27feeder_combout\ = \aProcessor|RY|Q\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(27),
	combout => \aProcessor|RegFile|R~27feeder_combout\);

-- Location: LCFF_X50_Y14_N31
\aProcessor|RegFile|R~27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~27feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~27_regout\);

-- Location: LCCOMB_X49_Y15_N14
\aProcessor|RegFile|R~1080\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1080_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~27_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|IR|Q\(26),
	datac => \aProcessor|RegFile|R~27_regout\,
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1080_combout\);

-- Location: LCFF_X49_Y15_N15
\aProcessor|RB|Q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1080_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(27));

-- Location: LCCOMB_X49_Y15_N12
\aProcessor|displayAll|HexDisplay32Bits[27]~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~200_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[27]~199_combout\ & (((\aProcessor|RZ|Q\(27))) # (!\switch~combout\(1)))) # (!\aProcessor|displayAll|HexDisplay32Bits[27]~199_combout\ & 
-- (\switch~combout\(1) & (\aProcessor|RB|Q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[27]~199_combout\,
	datab => \switch~combout\(1),
	datac => \aProcessor|RB|Q\(27),
	datad => \aProcessor|RZ|Q\(27),
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~200_combout\);

-- Location: LCCOMB_X50_Y14_N0
\aProcessor|displayAll|HexDisplay32Bits[27]~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~201_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(27) & (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[27]~200_combout\) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(27),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[27]~200_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~201_combout\);

-- Location: LCFF_X50_Y14_N27
\aProcessor|RM|Q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(27),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(27));

-- Location: LCCOMB_X50_Y14_N26
\aProcessor|displayAll|HexDisplay32Bits[27]~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~202_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[27]~201_combout\ & (((\aProcessor|RM|Q\(27)) # (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[27]~201_combout\ & (\aProcessor|RY|Q\(27) & ((!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RY|Q\(27),
	datab => \aProcessor|displayAll|HexDisplay32Bits[27]~201_combout\,
	datac => \aProcessor|RM|Q\(27),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~202_combout\);

-- Location: LCCOMB_X46_Y17_N28
\aProcessor|displayAll|HexDisplay32Bits[27]~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~203_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & (\aProcessor|displayAll|Mux10~15_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[27]~202_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux10~15_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[27]~202_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~203_combout\);

-- Location: LCCOMB_X46_Y17_N14
\aProcessor|displayAll|HexDisplay32Bits[27]~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~204_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[27]~203_combout\) # (!\switch~combout\(0))) # (!\aProcessor|InstAddGen|PC\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|InstAddGen|PC\(27),
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~189_combout\,
	datac => \switch~combout\(0),
	datad => \aProcessor|displayAll|HexDisplay32Bits[27]~203_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~204_combout\);

-- Location: LCCOMB_X46_Y17_N8
\aProcessor|displayAll|HexDisplay32Bits[27]~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\ = (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[27]~203_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[27]~204_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[27]~203_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[27]~204_combout\ & \aProcessor|IR|Q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[27]~203_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[27]~204_combout\,
	datad => \aProcessor|IR|Q\(27),
	combout => \aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\);

-- Location: LCFF_X48_Y16_N19
\aProcessor|RZ|Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[25]~79_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(25));

-- Location: LCCOMB_X49_Y18_N18
\aProcessor|RY|Q[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[25]~feeder_combout\ = \aProcessor|RZ|Q\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(25),
	combout => \aProcessor|RY|Q[25]~feeder_combout\);

-- Location: LCFF_X49_Y18_N19
\aProcessor|RY|Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[25]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(25));

-- Location: LCCOMB_X49_Y15_N16
\aProcessor|RegFile|R~1076\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1076_combout\ = (\aProcessor|RegFile|R~25_regout\ & (!\aProcessor|IR|Q\(26) & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~25_regout\,
	datab => \aProcessor|IR|Q\(26),
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1076_combout\);

-- Location: LCFF_X49_Y15_N17
\aProcessor|RB|Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1076_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(25));

-- Location: LCFF_X50_Y14_N3
\aProcessor|RM|Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(25),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(25));

-- Location: LCCOMB_X50_Y14_N2
\aProcessor|displayAll|HexDisplay32Bits[25]~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~187_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[25]~186_combout\ & (((\aProcessor|RM|Q\(25)) # (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[25]~186_combout\ & (\aProcessor|RY|Q\(25) & ((!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~186_combout\,
	datab => \aProcessor|RY|Q\(25),
	datac => \aProcessor|RM|Q\(25),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~187_combout\);

-- Location: LCCOMB_X46_Y17_N4
\aProcessor|displayAll|HexDisplay32Bits[25]~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & (\aProcessor|displayAll|Mux10~15_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[25]~187_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux10~15_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[18]~138_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[25]~187_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\);

-- Location: LCCOMB_X46_Y17_N18
\aProcessor|displayAll|HexDisplay32Bits[25]~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\ = (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[25]~190_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\ & \aProcessor|IR|Q\(25))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[25]~190_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[25]~190_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[25]~188_combout\,
	datac => \aProcessor|IR|Q\(25),
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\);

-- Location: LCCOMB_X46_Y17_N10
\uHEX6|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\,
	combout => \uHEX6|WideOr6~0_combout\);

-- Location: LCCOMB_X46_Y17_N16
\uHEX6|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\,
	combout => \uHEX6|WideOr5~0_combout\);

-- Location: LCCOMB_X46_Y17_N30
\uHEX6|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\,
	combout => \uHEX6|WideOr4~0_combout\);

-- Location: LCCOMB_X46_Y17_N0
\uHEX6|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\ & \aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\,
	combout => \uHEX6|WideOr3~0_combout\);

-- Location: LCCOMB_X46_Y17_N6
\uHEX6|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\,
	combout => \uHEX6|WideOr2~0_combout\);

-- Location: LCCOMB_X46_Y17_N20
\uHEX6|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\ $ (((\aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\,
	combout => \uHEX6|WideOr1~0_combout\);

-- Location: LCCOMB_X46_Y17_N2
\uHEX6|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[24]~183_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[26]~198_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[27]~205_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[25]~191_combout\,
	combout => \uHEX6|WideOr0~0_combout\);

-- Location: LCCOMB_X54_Y14_N14
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

-- Location: LCFF_X54_Y14_N15
\aProcessor|InstAddGen|PC[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[23]~79_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(23));

-- Location: LCCOMB_X54_Y14_N18
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

-- Location: LCFF_X54_Y14_N19
\aProcessor|InstAddGen|PC[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[25]~83_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(25));

-- Location: LCCOMB_X54_Y14_N22
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

-- Location: LCFF_X54_Y14_N23
\aProcessor|InstAddGen|PC[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[27]~87_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(27));

-- Location: LCCOMB_X54_Y14_N26
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

-- Location: LCFF_X54_Y14_N27
\aProcessor|InstAddGen|PC[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[29]~91_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(29));

-- Location: LCCOMB_X54_Y14_N28
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

-- Location: LCFF_X54_Y14_N29
\aProcessor|InstAddGen|PC[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[30]~93_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(30));

-- Location: LCCOMB_X54_Y14_N30
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

-- Location: LCFF_X54_Y14_N31
\aProcessor|InstAddGen|PC[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|InstAddGen|PC[31]~95_combout\,
	sclr => \debounceit3|PB_state~regout\,
	ena => \aProcessor|InstAddGen|PC~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|InstAddGen|PC\(31));

-- Location: LCCOMB_X53_Y16_N26
\aProcessor|displayAll|HexDisplay32Bits[31]~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[31]~221_combout\ = (\switch~combout\(0) & \aProcessor|InstAddGen|PC\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datac => \aProcessor|InstAddGen|PC\(31),
	combout => \aProcessor|displayAll|HexDisplay32Bits[31]~221_combout\);

-- Location: LCCOMB_X46_Y15_N14
\aProcessor|RegFile|R~1089\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1089_combout\ = (\aProcessor|RegFile|R~31_regout\ & (!\aProcessor|IR|Q\(31) & !\aProcessor|RegFile|R~1024_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~31_regout\,
	datab => \aProcessor|IR|Q\(31),
	datad => \aProcessor|RegFile|R~1024_combout\,
	combout => \aProcessor|RegFile|R~1089_combout\);

-- Location: LCFF_X46_Y15_N15
\aProcessor|RA|Q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1089_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(31));

-- Location: LCCOMB_X46_Y16_N4
\aProcessor|displayAll|HexDisplay32Bits[31]~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[31]~222_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|RA|Q\(31)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[31]~221_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[31]~221_combout\,
	datad => \aProcessor|RA|Q\(31),
	combout => \aProcessor|displayAll|HexDisplay32Bits[31]~222_combout\);

-- Location: LCCOMB_X46_Y15_N28
\aProcessor|RegFile|R~1088\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1088_combout\ = (\aProcessor|RegFile|R~31_regout\ & (!\aProcessor|IR|Q\(26) & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RegFile|R~31_regout\,
	datac => \aProcessor|IR|Q\(26),
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1088_combout\);

-- Location: LCFF_X46_Y15_N29
\aProcessor|RB|Q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1088_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(31));

-- Location: LCCOMB_X48_Y16_N24
\aProcessor|RZ|Q[28]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[28]~85_combout\ = (\aProcessor|RA|Q\(28) & (!\aProcessor|RZ|Q[27]~84\)) # (!\aProcessor|RA|Q\(28) & ((\aProcessor|RZ|Q[27]~84\) # (GND)))
-- \aProcessor|RZ|Q[28]~86\ = CARRY((!\aProcessor|RZ|Q[27]~84\) # (!\aProcessor|RA|Q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(28),
	datad => VCC,
	cin => \aProcessor|RZ|Q[27]~84\,
	combout => \aProcessor|RZ|Q[28]~85_combout\,
	cout => \aProcessor|RZ|Q[28]~86\);

-- Location: LCFF_X48_Y16_N25
\aProcessor|RZ|Q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[28]~85_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(28));

-- Location: LCFF_X50_Y15_N15
\aProcessor|RY|Q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RZ|Q\(28),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(28));

-- Location: LCFF_X50_Y17_N27
\aProcessor|RegFile|R~28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RY|Q\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~28_regout\);

-- Location: LCCOMB_X49_Y15_N0
\aProcessor|RegFile|R~1083\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1083_combout\ = (!\aProcessor|RegFile|R~1024_combout\ & (\aProcessor|RegFile|R~28_regout\ & !\aProcessor|IR|Q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~1024_combout\,
	datac => \aProcessor|RegFile|R~28_regout\,
	datad => \aProcessor|IR|Q\(31),
	combout => \aProcessor|RegFile|R~1083_combout\);

-- Location: LCFF_X49_Y15_N1
\aProcessor|RA|Q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1083_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(28));

-- Location: LCCOMB_X48_Y16_N26
\aProcessor|RZ|Q[29]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[29]~87_combout\ = (\aProcessor|RA|Q\(29) & (\aProcessor|RZ|Q[28]~86\ $ (GND))) # (!\aProcessor|RA|Q\(29) & (!\aProcessor|RZ|Q[28]~86\ & VCC))
-- \aProcessor|RZ|Q[29]~88\ = CARRY((\aProcessor|RA|Q\(29) & !\aProcessor|RZ|Q[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(29),
	datad => VCC,
	cin => \aProcessor|RZ|Q[28]~86\,
	combout => \aProcessor|RZ|Q[29]~87_combout\,
	cout => \aProcessor|RZ|Q[29]~88\);

-- Location: LCFF_X48_Y16_N27
\aProcessor|RZ|Q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[29]~87_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(29));

-- Location: LCFF_X46_Y14_N15
\aProcessor|RY|Q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RZ|Q\(29),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(29));

-- Location: LCFF_X46_Y14_N9
\aProcessor|RegFile|R~29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RY|Q\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~29_regout\);

-- Location: LCCOMB_X47_Y14_N2
\aProcessor|RegFile|R~1085\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1085_combout\ = (!\aProcessor|IR|Q\(31) & (!\aProcessor|RegFile|R~1024_combout\ & \aProcessor|RegFile|R~29_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|IR|Q\(31),
	datac => \aProcessor|RegFile|R~1024_combout\,
	datad => \aProcessor|RegFile|R~29_regout\,
	combout => \aProcessor|RegFile|R~1085_combout\);

-- Location: LCFF_X47_Y14_N3
\aProcessor|RA|Q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1085_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(29));

-- Location: LCCOMB_X48_Y16_N28
\aProcessor|RZ|Q[30]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[30]~89_combout\ = (\aProcessor|RA|Q\(30) & (!\aProcessor|RZ|Q[29]~88\)) # (!\aProcessor|RA|Q\(30) & ((\aProcessor|RZ|Q[29]~88\) # (GND)))
-- \aProcessor|RZ|Q[30]~90\ = CARRY((!\aProcessor|RZ|Q[29]~88\) # (!\aProcessor|RA|Q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RA|Q\(30),
	datad => VCC,
	cin => \aProcessor|RZ|Q[29]~88\,
	combout => \aProcessor|RZ|Q[30]~89_combout\,
	cout => \aProcessor|RZ|Q[30]~90\);

-- Location: LCFF_X48_Y16_N29
\aProcessor|RZ|Q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[30]~89_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(30));

-- Location: LCCOMB_X50_Y16_N22
\aProcessor|RY|Q[30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RY|Q[30]~feeder_combout\ = \aProcessor|RZ|Q\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RZ|Q\(30),
	combout => \aProcessor|RY|Q[30]~feeder_combout\);

-- Location: LCFF_X50_Y16_N23
\aProcessor|RY|Q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RY|Q[30]~feeder_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RY|Q\(30));

-- Location: LCCOMB_X47_Y16_N26
\aProcessor|RegFile|R~30feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~30feeder_combout\ = \aProcessor|RY|Q\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RY|Q\(30),
	combout => \aProcessor|RegFile|R~30feeder_combout\);

-- Location: LCFF_X47_Y16_N27
\aProcessor|RegFile|R~30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~30feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RegFile|R~30_regout\);

-- Location: LCCOMB_X49_Y16_N24
\aProcessor|RegFile|R~1087\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1087_combout\ = (!\aProcessor|RegFile|R~1024_combout\ & (\aProcessor|RegFile|R~30_regout\ & !\aProcessor|IR|Q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~1024_combout\,
	datac => \aProcessor|RegFile|R~30_regout\,
	datad => \aProcessor|IR|Q\(31),
	combout => \aProcessor|RegFile|R~1087_combout\);

-- Location: LCFF_X49_Y16_N25
\aProcessor|RA|Q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1087_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RA|Q\(30));

-- Location: LCCOMB_X48_Y16_N30
\aProcessor|RZ|Q[31]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RZ|Q[31]~91_combout\ = \aProcessor|RZ|Q[30]~90\ $ (!\aProcessor|RA|Q\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \aProcessor|RA|Q\(31),
	cin => \aProcessor|RZ|Q[30]~90\,
	combout => \aProcessor|RZ|Q[31]~91_combout\);

-- Location: LCFF_X48_Y16_N31
\aProcessor|RZ|Q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RZ|Q[31]~91_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RZ|Q\(31));

-- Location: LCCOMB_X46_Y16_N18
\aProcessor|displayAll|HexDisplay32Bits[31]~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[31]~223_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[31]~222_combout\ & (\aProcessor|RB|Q\(31))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[31]~222_combout\ & ((\aProcessor|RZ|Q\(31)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[31]~222_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[31]~222_combout\,
	datac => \aProcessor|RB|Q\(31),
	datad => \aProcessor|RZ|Q\(31),
	combout => \aProcessor|displayAll|HexDisplay32Bits[31]~223_combout\);

-- Location: LCCOMB_X46_Y16_N28
\aProcessor|displayAll|HexDisplay32Bits[31]~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[31]~224_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(31)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[31]~223_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datac => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(31),
	datad => \aProcessor|displayAll|HexDisplay32Bits[31]~223_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[31]~224_combout\);

-- Location: LCFF_X46_Y16_N31
\aProcessor|RM|Q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(31),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(31));

-- Location: LCCOMB_X46_Y16_N30
\aProcessor|displayAll|HexDisplay32Bits[31]~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[31]~225_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[31]~224_combout\ & (((\aProcessor|RM|Q\(31)) # (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[31]~224_combout\ & (\aProcessor|RY|Q\(31) & ((!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RY|Q\(31),
	datab => \aProcessor|displayAll|HexDisplay32Bits[31]~224_combout\,
	datac => \aProcessor|RM|Q\(31),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[31]~225_combout\);

-- Location: LCCOMB_X45_Y16_N14
\aProcessor|displayAll|HexDisplay32Bits[31]~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[31]~226_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[31]~225_combout\ & (!\debounceit1|PB_state~regout\ & !\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|displayAll|HexDisplay32Bits[31]~225_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[31]~226_combout\);

-- Location: LCCOMB_X45_Y16_N12
\aProcessor|displayAll|HexDisplay32Bits[31]~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[31]~226_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[16]~129_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[22]~174_combout\ & 
-- \aProcessor|IR|Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~174_combout\,
	datab => \aProcessor|IR|Q\(31),
	datac => \aProcessor|displayAll|HexDisplay32Bits[31]~226_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[16]~129_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\);

-- Location: LCCOMB_X50_Y16_N30
\aProcessor|displayAll|HexDisplay32Bits[30]~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[30]~214_combout\ = (\switch~combout\(0) & \aProcessor|InstAddGen|PC\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\(0),
	datac => \aProcessor|InstAddGen|PC\(30),
	combout => \aProcessor|displayAll|HexDisplay32Bits[30]~214_combout\);

-- Location: LCCOMB_X49_Y16_N4
\aProcessor|displayAll|HexDisplay32Bits[30]~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[30]~215_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|RA|Q\(30)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~214_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[30]~214_combout\,
	datac => \aProcessor|RA|Q\(30),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[30]~215_combout\);

-- Location: LCCOMB_X50_Y16_N12
\aProcessor|displayAll|HexDisplay32Bits[30]~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[30]~216_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[30]~215_combout\ & (\aProcessor|RB|Q\(30))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[30]~215_combout\ & ((\aProcessor|RZ|Q\(30)))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[30]~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RB|Q\(30),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~215_combout\,
	datad => \aProcessor|RZ|Q\(30),
	combout => \aProcessor|displayAll|HexDisplay32Bits[30]~216_combout\);

-- Location: LCCOMB_X50_Y16_N2
\aProcessor|displayAll|HexDisplay32Bits[30]~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[30]~217_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\Memory|ROM1|altsyncram_component|auto_generated|q_a\(30))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[30]~216_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[30]~216_combout\,
	datad => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(30),
	combout => \aProcessor|displayAll|HexDisplay32Bits[30]~217_combout\);

-- Location: LCCOMB_X47_Y16_N10
\aProcessor|RegFile|R~1086\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1086_combout\ = (\aProcessor|RegFile|R~30_regout\ & (!\aProcessor|IR|Q\(26) & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|RegFile|R~30_regout\,
	datac => \aProcessor|IR|Q\(26),
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1086_combout\);

-- Location: LCFF_X47_Y16_N11
\aProcessor|RB|Q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1086_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(30));

-- Location: LCFF_X50_Y16_N21
\aProcessor|RM|Q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(30),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(30));

-- Location: LCCOMB_X50_Y16_N20
\aProcessor|displayAll|HexDisplay32Bits[30]~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[30]~218_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~217_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[30]~217_combout\ & (\aProcessor|RM|Q\(30))) # (!\aProcessor|displayAll|HexDisplay32Bits[30]~217_combout\ & ((\aProcessor|RY|Q\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[30]~217_combout\,
	datac => \aProcessor|RM|Q\(30),
	datad => \aProcessor|RY|Q\(30),
	combout => \aProcessor|displayAll|HexDisplay32Bits[30]~218_combout\);

-- Location: LCCOMB_X45_Y16_N26
\aProcessor|displayAll|HexDisplay32Bits[30]~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[30]~219_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[30]~218_combout\ & (!\debounceit1|PB_state~regout\ & !\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|displayAll|HexDisplay32Bits[30]~218_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[30]~219_combout\);

-- Location: LCFF_X49_Y15_N23
\aProcessor|IR|Q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(30),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|IR|Q\(30));

-- Location: LCCOMB_X45_Y16_N28
\aProcessor|displayAll|HexDisplay32Bits[30]~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[30]~219_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[16]~129_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[22]~174_combout\ & 
-- \aProcessor|IR|Q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[22]~174_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[30]~219_combout\,
	datac => \aProcessor|IR|Q\(30),
	datad => \aProcessor|displayAll|HexDisplay32Bits[16]~129_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\);

-- Location: LCCOMB_X47_Y14_N20
\aProcessor|RegFile|R~1084\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1084_combout\ = (!\aProcessor|IR|Q\(26) & (!\aProcessor|RegFile|R~1026_combout\ & \aProcessor|RegFile|R~29_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(26),
	datab => \aProcessor|RegFile|R~1026_combout\,
	datad => \aProcessor|RegFile|R~29_regout\,
	combout => \aProcessor|RegFile|R~1084_combout\);

-- Location: LCFF_X47_Y14_N21
\aProcessor|RB|Q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1084_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(29));

-- Location: LCFF_X47_Y14_N7
\aProcessor|RM|Q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(29),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(29));

-- Location: LCCOMB_X47_Y14_N10
\aProcessor|displayAll|HexDisplay32Bits[29]~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & ((\aProcessor|RA|Q\(29)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[29]~207_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[29]~207_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~27_combout\,
	datac => \aProcessor|RA|Q\(29),
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~28_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\);

-- Location: LCCOMB_X47_Y14_N24
\aProcessor|displayAll|HexDisplay32Bits[29]~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[29]~209_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\ & ((\aProcessor|RB|Q\(29)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\ & (\aProcessor|RZ|Q\(29))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~9_combout\,
	datab => \aProcessor|RZ|Q\(29),
	datac => \aProcessor|RB|Q\(29),
	datad => \aProcessor|displayAll|HexDisplay32Bits[29]~208_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[29]~209_combout\);

-- Location: LCCOMB_X47_Y14_N18
\aProcessor|displayAll|HexDisplay32Bits[29]~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[29]~210_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & (\Memory|ROM1|altsyncram_component|auto_generated|q_a\(29))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[29]~209_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\ & (((!\aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~16_combout\,
	datab => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(29),
	datac => \aProcessor|displayAll|HexDisplay32Bits[29]~209_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[1]~13_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[29]~210_combout\);

-- Location: LCCOMB_X47_Y14_N6
\aProcessor|displayAll|HexDisplay32Bits[29]~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[29]~211_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & (((\aProcessor|displayAll|HexDisplay32Bits[29]~210_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[29]~210_combout\ & ((\aProcessor|RM|Q\(29)))) # (!\aProcessor|displayAll|HexDisplay32Bits[29]~210_combout\ & (\aProcessor|RY|Q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|RY|Q\(29),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~14_combout\,
	datac => \aProcessor|RM|Q\(29),
	datad => \aProcessor|displayAll|HexDisplay32Bits[29]~210_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[29]~211_combout\);

-- Location: LCCOMB_X45_Y16_N18
\aProcessor|displayAll|HexDisplay32Bits[29]~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[29]~212_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[29]~211_combout\ & (!\debounceit1|PB_state~regout\ & !\aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|displayAll|HexDisplay32Bits[29]~211_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~43_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[29]~212_combout\);

-- Location: LCCOMB_X45_Y16_N20
\aProcessor|displayAll|HexDisplay32Bits[29]~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[29]~212_combout\) # ((\aProcessor|displayAll|HexDisplay32Bits[16]~129_combout\) # ((\aProcessor|IR|Q\(29) & 
-- \aProcessor|displayAll|HexDisplay32Bits[22]~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|IR|Q\(29),
	datab => \aProcessor|displayAll|HexDisplay32Bits[22]~174_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[29]~212_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[16]~129_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\);

-- Location: LCCOMB_X49_Y15_N30
\aProcessor|RegFile|R~1082\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|RegFile|R~1082_combout\ = (!\aProcessor|IR|Q\(26) & (\aProcessor|RegFile|R~28_regout\ & !\aProcessor|RegFile|R~1026_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aProcessor|IR|Q\(26),
	datac => \aProcessor|RegFile|R~28_regout\,
	datad => \aProcessor|RegFile|R~1026_combout\,
	combout => \aProcessor|RegFile|R~1082_combout\);

-- Location: LCFF_X49_Y15_N31
\aProcessor|RB|Q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	datain => \aProcessor|RegFile|R~1082_combout\,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RB|Q\(28));

-- Location: LCFF_X50_Y15_N9
\aProcessor|RM|Q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~clkctrl_outclk\,
	sdata => \aProcessor|RB|Q\(28),
	sload => VCC,
	ena => \aProcessor|CSG|EnableSignals|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RM|Q\(28));

-- Location: LCCOMB_X50_Y15_N8
\aProcessor|displayAll|Mux28~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~31_combout\ = (!\switch~combout\(1) & ((\switch~combout\(0) & (\aProcessor|RY|Q\(28))) # (!\switch~combout\(0) & ((\aProcessor|RM|Q\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \aProcessor|RY|Q\(28),
	datac => \aProcessor|RM|Q\(28),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|Mux28~31_combout\);

-- Location: LCCOMB_X50_Y15_N26
\aProcessor|displayAll|Mux28~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~38_combout\ = (\aProcessor|displayAll|Mux28~31_combout\) # ((\switch~combout\(1) & (\switch~combout\(0) & \Memory|ROM1|altsyncram_component|auto_generated|q_a\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \aProcessor|displayAll|Mux28~31_combout\,
	datac => \switch~combout\(0),
	datad => \Memory|ROM1|altsyncram_component|auto_generated|q_a\(28),
	combout => \aProcessor|displayAll|Mux28~38_combout\);

-- Location: LCCOMB_X53_Y15_N26
\aProcessor|displayAll|Mux28~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux28~14_combout\ = (!\aProcessor|CSG|StageGenerator|ClockCount\(1) & (!\aProcessor|CSG|StageGenerator|ClockCount\(0) & (\aProcessor|displayAll|Mux28~11_combout\ & \aProcessor|CSG|StageGenerator|ClockCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|CSG|StageGenerator|ClockCount\(1),
	datab => \aProcessor|CSG|StageGenerator|ClockCount\(0),
	datac => \aProcessor|displayAll|Mux28~11_combout\,
	datad => \aProcessor|CSG|StageGenerator|ClockCount\(2),
	combout => \aProcessor|displayAll|Mux28~14_combout\);

-- Location: LCCOMB_X50_Y15_N10
\aProcessor|displayAll|Mux10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|Mux10~14_combout\ = (\aProcessor|displayAll|Mux10~13_combout\ & (((\aProcessor|displayAll|Mux28~14_combout\) # (!\switch~combout\(3))))) # (!\aProcessor|displayAll|Mux10~13_combout\ & (\aProcessor|displayAll|Mux28~38_combout\ & 
-- (\switch~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|Mux10~13_combout\,
	datab => \aProcessor|displayAll|Mux28~38_combout\,
	datac => \switch~combout\(3),
	datad => \aProcessor|displayAll|Mux28~14_combout\,
	combout => \aProcessor|displayAll|Mux10~14_combout\);

-- Location: LCCOMB_X53_Y16_N12
\aProcessor|displayAll|HexDisplay32Bits[28]~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\ = (!\debounceit1|PB_state~regout\ & ((\switch~combout\(4) & (\aProcessor|displayAll|Mux10~15_combout\)) # (!\switch~combout\(4) & ((\aProcessor|displayAll|Mux10~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \aProcessor|displayAll|Mux10~15_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|Mux10~14_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\);

-- Location: LCCOMB_X45_Y16_N30
\uHEX7|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\,
	combout => \uHEX7|WideOr6~0_combout\);

-- Location: LCCOMB_X45_Y16_N4
\uHEX7|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\,
	combout => \uHEX7|WideOr5~0_combout\);

-- Location: LCCOMB_X45_Y16_N10
\uHEX7|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\,
	combout => \uHEX7|WideOr4~0_combout\);

-- Location: LCCOMB_X45_Y16_N16
\uHEX7|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ $ (!\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ & \aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\,
	combout => \uHEX7|WideOr3~0_combout\);

-- Location: LCCOMB_X45_Y16_N2
\uHEX7|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\,
	combout => \uHEX7|WideOr2~0_combout\);

-- Location: LCCOMB_X45_Y16_N0
\uHEX7|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\) # 
-- (\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\,
	combout => \uHEX7|WideOr1~0_combout\);

-- Location: LCCOMB_X45_Y16_N22
\uHEX7|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[31]~227_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[30]~220_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[29]~213_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[28]~206_combout\,
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
	datain => GND,
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
	padio => ww_pushBut(2));

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


