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

-- DATE "10/29/2014 23:18:59"

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
-- pushBut[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk_27~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounceit1|PB_cnt[5]~26_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[10]~36_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[14]~45\ : std_logic;
SIGNAL \debounceit1|PB_cnt[15]~46_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[3]~22_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[6]~28_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[8]~32_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[14]~45\ : std_logic;
SIGNAL \debounceit2|PB_cnt[15]~46_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[3]~22_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[5]~26_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[14]~45\ : std_logic;
SIGNAL \debounceit0|PB_cnt[15]~46_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~3_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~2_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~1_combout\ : std_logic;
SIGNAL \uHEX5|WideOr5~7_combout\ : std_logic;
SIGNAL \uHEX5|WideOr4~7_combout\ : std_logic;
SIGNAL \uHEX7|WideOr6~7_combout\ : std_logic;
SIGNAL \uHEX7|WideOr1~7_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[0]~16_combout\ : std_logic;
SIGNAL \debounceit0|PB_sync_0~0_combout\ : std_logic;
SIGNAL \debounceit0|PB_sync_0~regout\ : std_logic;
SIGNAL \debounceit0|PB_sync_1~feeder_combout\ : std_logic;
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
SIGNAL \debounceit0|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[12]~40_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[10]~36_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~3_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[8]~32_combout\ : std_logic;
SIGNAL \debounceit0|PB_cnt[6]~28_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~2_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit0|PB_state~regout\ : std_logic;
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
SIGNAL \debounceit2|PB_cnt[12]~40_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[10]~36_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~3_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~0_combout\ : std_logic;
SIGNAL \debounceit2|PB_cnt[5]~26_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~1_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit2|PB_state~regout\ : std_logic;
SIGNAL \clk_27~combout\ : std_logic;
SIGNAL \clk_27~clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\ : std_logic;
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
SIGNAL \debounceit1|PB_cnt[12]~40_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~3_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[3]~22_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~1_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[8]~32_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt[6]~28_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~2_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~4_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~5_combout\ : std_logic;
SIGNAL \debounceit1|PB_state~regout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\ : std_logic;
SIGNAL \uHEX0|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX0|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\ : std_logic;
SIGNAL \uHEX1|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX1|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\ : std_logic;
SIGNAL \uHEX2|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX2|WideOr0~0_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\ : std_logic;
SIGNAL \aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\ : std_logic;
SIGNAL \uHEX3|WideOr6~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr5~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr4~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr3~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr2~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr1~0_combout\ : std_logic;
SIGNAL \uHEX3|WideOr0~0_combout\ : std_logic;
SIGNAL \uHEX4|WideOr6~7_combout\ : std_logic;
SIGNAL \uHEX4|WideOr6~3_combout\ : std_logic;
SIGNAL \uHEX4|WideOr6~16_combout\ : std_logic;
SIGNAL \uHEX4|WideOr5~7_combout\ : std_logic;
SIGNAL \uHEX4|WideOr5~3_combout\ : std_logic;
SIGNAL \uHEX4|WideOr5~16_combout\ : std_logic;
SIGNAL \uHEX4|WideOr4~7_combout\ : std_logic;
SIGNAL \uHEX4|WideOr4~3_combout\ : std_logic;
SIGNAL \uHEX4|WideOr4~16_combout\ : std_logic;
SIGNAL \uHEX4|WideOr3~7_combout\ : std_logic;
SIGNAL \uHEX4|WideOr3~3_combout\ : std_logic;
SIGNAL \uHEX4|WideOr3~16_combout\ : std_logic;
SIGNAL \uHEX4|WideOr2~7_combout\ : std_logic;
SIGNAL \uHEX4|WideOr2~3_combout\ : std_logic;
SIGNAL \uHEX4|WideOr2~16_combout\ : std_logic;
SIGNAL \uHEX4|WideOr1~7_combout\ : std_logic;
SIGNAL \uHEX4|WideOr1~3_combout\ : std_logic;
SIGNAL \uHEX4|WideOr1~16_combout\ : std_logic;
SIGNAL \uHEX4|WideOr0~7_combout\ : std_logic;
SIGNAL \uHEX4|WideOr0~3_combout\ : std_logic;
SIGNAL \uHEX4|WideOr0~16_combout\ : std_logic;
SIGNAL \uHEX5|WideOr6~7_combout\ : std_logic;
SIGNAL \uHEX5|WideOr6~3_combout\ : std_logic;
SIGNAL \uHEX5|WideOr6~16_combout\ : std_logic;
SIGNAL \uHEX5|WideOr5~3_combout\ : std_logic;
SIGNAL \uHEX5|WideOr5~16_combout\ : std_logic;
SIGNAL \uHEX5|WideOr4~3_combout\ : std_logic;
SIGNAL \uHEX5|WideOr4~16_combout\ : std_logic;
SIGNAL \uHEX5|WideOr3~7_combout\ : std_logic;
SIGNAL \uHEX5|WideOr3~3_combout\ : std_logic;
SIGNAL \uHEX5|WideOr3~16_combout\ : std_logic;
SIGNAL \uHEX5|WideOr2~7_combout\ : std_logic;
SIGNAL \uHEX5|WideOr2~3_combout\ : std_logic;
SIGNAL \uHEX5|WideOr2~16_combout\ : std_logic;
SIGNAL \uHEX5|WideOr1~7_combout\ : std_logic;
SIGNAL \uHEX5|WideOr1~3_combout\ : std_logic;
SIGNAL \uHEX5|WideOr1~16_combout\ : std_logic;
SIGNAL \uHEX5|WideOr0~7_combout\ : std_logic;
SIGNAL \uHEX5|WideOr0~3_combout\ : std_logic;
SIGNAL \uHEX5|WideOr0~16_combout\ : std_logic;
SIGNAL \uHEX6|WideOr6~7_combout\ : std_logic;
SIGNAL \uHEX6|WideOr6~3_combout\ : std_logic;
SIGNAL \uHEX6|WideOr6~16_combout\ : std_logic;
SIGNAL \uHEX6|WideOr5~7_combout\ : std_logic;
SIGNAL \uHEX6|WideOr5~3_combout\ : std_logic;
SIGNAL \uHEX6|WideOr5~16_combout\ : std_logic;
SIGNAL \uHEX6|WideOr4~7_combout\ : std_logic;
SIGNAL \uHEX6|WideOr4~3_combout\ : std_logic;
SIGNAL \uHEX6|WideOr4~16_combout\ : std_logic;
SIGNAL \uHEX6|WideOr3~7_combout\ : std_logic;
SIGNAL \uHEX6|WideOr3~3_combout\ : std_logic;
SIGNAL \uHEX6|WideOr3~16_combout\ : std_logic;
SIGNAL \uHEX6|WideOr2~7_combout\ : std_logic;
SIGNAL \uHEX6|WideOr2~3_combout\ : std_logic;
SIGNAL \uHEX6|WideOr2~16_combout\ : std_logic;
SIGNAL \uHEX6|WideOr1~7_combout\ : std_logic;
SIGNAL \uHEX6|WideOr1~3_combout\ : std_logic;
SIGNAL \uHEX6|WideOr1~16_combout\ : std_logic;
SIGNAL \uHEX6|WideOr0~7_combout\ : std_logic;
SIGNAL \uHEX6|WideOr0~3_combout\ : std_logic;
SIGNAL \uHEX6|WideOr0~16_combout\ : std_logic;
SIGNAL \uHEX7|WideOr6~3_combout\ : std_logic;
SIGNAL \uHEX7|WideOr6~16_combout\ : std_logic;
SIGNAL \uHEX7|WideOr5~7_combout\ : std_logic;
SIGNAL \uHEX7|WideOr5~3_combout\ : std_logic;
SIGNAL \uHEX7|WideOr5~16_combout\ : std_logic;
SIGNAL \uHEX7|WideOr4~7_combout\ : std_logic;
SIGNAL \uHEX7|WideOr4~3_combout\ : std_logic;
SIGNAL \uHEX7|WideOr4~16_combout\ : std_logic;
SIGNAL \uHEX7|WideOr3~7_combout\ : std_logic;
SIGNAL \uHEX7|WideOr3~3_combout\ : std_logic;
SIGNAL \uHEX7|WideOr3~16_combout\ : std_logic;
SIGNAL \uHEX7|WideOr2~7_combout\ : std_logic;
SIGNAL \uHEX7|WideOr2~3_combout\ : std_logic;
SIGNAL \uHEX7|WideOr2~16_combout\ : std_logic;
SIGNAL \uHEX7|WideOr1~3_combout\ : std_logic;
SIGNAL \uHEX7|WideOr1~16_combout\ : std_logic;
SIGNAL \uHEX7|WideOr0~7_combout\ : std_logic;
SIGNAL \uHEX7|WideOr0~3_combout\ : std_logic;
SIGNAL \uHEX7|WideOr0~16_combout\ : std_logic;
SIGNAL \debounceit1|PB_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \debounceit2|PB_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \aProcessor|RAND|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \switch~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \debounceit0|PB_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \InstructionROM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \pushBut~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uHEX7|ALT_INV_WideOr0~16_combout\ : std_logic;
SIGNAL \uHEX6|ALT_INV_WideOr0~16_combout\ : std_logic;
SIGNAL \uHEX5|ALT_INV_WideOr0~16_combout\ : std_logic;
SIGNAL \uHEX4|ALT_INV_WideOr0~16_combout\ : std_logic;
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

\InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \~GND~combout\;

\InstructionROM|altsyncram_component|auto_generated|q_a\(0) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\InstructionROM|altsyncram_component|auto_generated|q_a\(1) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\InstructionROM|altsyncram_component|auto_generated|q_a\(2) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\InstructionROM|altsyncram_component|auto_generated|q_a\(3) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\InstructionROM|altsyncram_component|auto_generated|q_a\(4) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\InstructionROM|altsyncram_component|auto_generated|q_a\(5) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\InstructionROM|altsyncram_component|auto_generated|q_a\(6) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\InstructionROM|altsyncram_component|auto_generated|q_a\(7) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\InstructionROM|altsyncram_component|auto_generated|q_a\(8) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\InstructionROM|altsyncram_component|auto_generated|q_a\(9) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\InstructionROM|altsyncram_component|auto_generated|q_a\(10) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\InstructionROM|altsyncram_component|auto_generated|q_a\(11) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\InstructionROM|altsyncram_component|auto_generated|q_a\(12) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\InstructionROM|altsyncram_component|auto_generated|q_a\(13) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\InstructionROM|altsyncram_component|auto_generated|q_a\(14) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\InstructionROM|altsyncram_component|auto_generated|q_a\(15) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\InstructionROM|altsyncram_component|auto_generated|q_a\(16) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\InstructionROM|altsyncram_component|auto_generated|q_a\(17) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\InstructionROM|altsyncram_component|auto_generated|q_a\(18) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\InstructionROM|altsyncram_component|auto_generated|q_a\(19) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\InstructionROM|altsyncram_component|auto_generated|q_a\(20) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\InstructionROM|altsyncram_component|auto_generated|q_a\(21) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\InstructionROM|altsyncram_component|auto_generated|q_a\(22) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\InstructionROM|altsyncram_component|auto_generated|q_a\(23) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\InstructionROM|altsyncram_component|auto_generated|q_a\(24) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\InstructionROM|altsyncram_component|auto_generated|q_a\(25) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\InstructionROM|altsyncram_component|auto_generated|q_a\(26) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\InstructionROM|altsyncram_component|auto_generated|q_a\(27) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\InstructionROM|altsyncram_component|auto_generated|q_a\(28) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\InstructionROM|altsyncram_component|auto_generated|q_a\(29) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\InstructionROM|altsyncram_component|auto_generated|q_a\(30) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\InstructionROM|altsyncram_component|auto_generated|q_a\(31) <= \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\clk_27~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_27~combout\);
\uHEX7|ALT_INV_WideOr0~16_combout\ <= NOT \uHEX7|WideOr0~16_combout\;
\uHEX6|ALT_INV_WideOr0~16_combout\ <= NOT \uHEX6|WideOr0~16_combout\;
\uHEX5|ALT_INV_WideOr0~16_combout\ <= NOT \uHEX5|WideOr0~16_combout\;
\uHEX4|ALT_INV_WideOr0~16_combout\ <= NOT \uHEX4|WideOr0~16_combout\;
\uHEX3|ALT_INV_WideOr0~0_combout\ <= NOT \uHEX3|WideOr0~0_combout\;
\uHEX2|ALT_INV_WideOr0~0_combout\ <= NOT \uHEX2|WideOr0~0_combout\;
\uHEX1|ALT_INV_WideOr0~0_combout\ <= NOT \uHEX1|WideOr0~0_combout\;
\uHEX0|ALT_INV_WideOr0~0_combout\ <= NOT \uHEX0|WideOr0~0_combout\;

-- Location: M4K_X26_Y12
\InstructionROM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"2108004000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "MemoryInitializationFile.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:InstructionROM|altsyncram:altsyncram_component|altsyncram_cp91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 1,
	port_b_data_width => 32,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk_27~clkctrl_outclk\,
	ena0 => GND,
	portaaddr => \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \InstructionROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X37_Y5_N31
\debounceit1|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[15]~46_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(15));

-- Location: LCFF_X37_Y5_N11
\debounceit1|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[5]~26_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(5));

-- Location: LCFF_X37_Y5_N21
\debounceit1|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[10]~36_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(10));

-- Location: LCFF_X37_Y31_N31
\debounceit2|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[15]~46_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(15));

-- Location: LCFF_X37_Y31_N7
\debounceit2|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[3]~22_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(3));

-- Location: LCFF_X37_Y31_N13
\debounceit2|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[6]~28_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(6));

-- Location: LCFF_X37_Y31_N17
\debounceit2|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[8]~32_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(8));

-- Location: LCFF_X34_Y31_N31
\debounceit0|PB_cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[15]~46_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(15));

-- Location: LCFF_X34_Y31_N7
\debounceit0|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[3]~22_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(3));

-- Location: LCFF_X34_Y31_N11
\debounceit0|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[5]~26_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(5));

-- Location: LCCOMB_X37_Y5_N10
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

-- Location: LCCOMB_X37_Y5_N20
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

-- Location: LCCOMB_X37_Y5_N28
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

-- Location: LCCOMB_X37_Y5_N30
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

-- Location: LCCOMB_X37_Y31_N6
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

-- Location: LCCOMB_X37_Y31_N12
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

-- Location: LCCOMB_X37_Y31_N16
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

-- Location: LCCOMB_X37_Y31_N28
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

-- Location: LCCOMB_X37_Y31_N30
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

-- Location: LCCOMB_X34_Y31_N6
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

-- Location: LCCOMB_X34_Y31_N10
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

-- Location: LCCOMB_X34_Y31_N28
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

-- Location: LCCOMB_X34_Y31_N30
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

-- Location: LCCOMB_X28_Y12_N16
\aProcessor|displayAll|HexDisplay32Bits[23]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~0_combout\ = (\switch~combout\(1) & (\switch~combout\(3) & (\switch~combout\(0) & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \switch~combout\(2),
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~0_combout\);

-- Location: LCCOMB_X25_Y13_N12
\aProcessor|displayAll|HexDisplay32Bits[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~3_combout\ = (\switch~combout\(4) & (\switch~combout\(2) & ((\switch~combout\(0)) # (\switch~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(4),
	datab => \switch~combout\(2),
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~3_combout\);

-- Location: LCCOMB_X38_Y5_N20
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

-- Location: LCCOMB_X36_Y31_N20
\debounceit2|PB_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~2_combout\ = (\debounceit2|PB_cnt\(8) & (\debounceit2|PB_cnt\(7) & (\debounceit2|PB_cnt\(6) & \debounceit2|PB_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(8),
	datab => \debounceit2|PB_cnt\(7),
	datac => \debounceit2|PB_cnt\(6),
	datad => \debounceit2|PB_cnt\(9),
	combout => \debounceit2|PB_state~2_combout\);

-- Location: LCCOMB_X35_Y31_N24
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

-- Location: LCCOMB_X27_Y12_N14
\uHEX5|WideOr5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr5~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(21) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(20) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(23))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(20) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(22)))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(21) & 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(22) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(23) $ (\InstructionROM|altsyncram_component|auto_generated|q_a\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(21),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(23),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(22),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(20),
	combout => \uHEX5|WideOr5~7_combout\);

-- Location: LCCOMB_X27_Y12_N12
\uHEX5|WideOr4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr4~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(23) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(22) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(21)) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(20))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(23) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(21) & 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(22) & !\InstructionROM|altsyncram_component|auto_generated|q_a\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(21),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(23),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(22),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(20),
	combout => \uHEX5|WideOr4~7_combout\);

-- Location: LCCOMB_X25_Y16_N24
\uHEX7|WideOr6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr6~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(30) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(29) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(31) $ 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(28))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(30) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(28) & 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(31) $ (!\InstructionROM|altsyncram_component|auto_generated|q_a\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(30),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(31),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(29),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(28),
	combout => \uHEX7|WideOr6~7_combout\);

-- Location: LCCOMB_X25_Y16_N20
\uHEX7|WideOr1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr1~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(30) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(28) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(31) $ 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(29))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(30) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(31) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(29)) # (\InstructionROM|altsyncram_component|auto_generated|q_a\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(30),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(31),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(29),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(28),
	combout => \uHEX7|WideOr1~7_combout\);

-- Location: LCCOMB_X34_Y31_N0
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

-- Location: LCCOMB_X36_Y31_N30
\debounceit0|PB_sync_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_sync_0~0_combout\ = !\pushBut~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pushBut~combout\(0),
	combout => \debounceit0|PB_sync_0~0_combout\);

-- Location: LCFF_X36_Y31_N31
\debounceit0|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_sync_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_sync_0~regout\);

-- Location: LCCOMB_X35_Y31_N6
\debounceit0|PB_sync_1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_sync_1~feeder_combout\ = \debounceit0|PB_sync_0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debounceit0|PB_sync_0~regout\,
	combout => \debounceit0|PB_sync_1~feeder_combout\);

-- Location: LCFF_X35_Y31_N7
\debounceit0|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_sync_1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_sync_1~regout\);

-- Location: LCCOMB_X35_Y31_N30
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

-- Location: LCFF_X34_Y31_N1
\debounceit0|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[0]~16_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(0));

-- Location: LCCOMB_X34_Y31_N2
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

-- Location: LCFF_X34_Y31_N3
\debounceit0|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[1]~18_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(1));

-- Location: LCCOMB_X34_Y31_N4
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

-- Location: LCFF_X34_Y31_N5
\debounceit0|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[2]~20_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(2));

-- Location: LCCOMB_X34_Y31_N8
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

-- Location: LCFF_X34_Y31_N9
\debounceit0|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[4]~24_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(4));

-- Location: LCCOMB_X34_Y31_N12
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

-- Location: LCCOMB_X34_Y31_N14
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

-- Location: LCFF_X34_Y31_N15
\debounceit0|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[7]~30_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(7));

-- Location: LCCOMB_X34_Y31_N16
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

-- Location: LCCOMB_X34_Y31_N18
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

-- Location: LCFF_X34_Y31_N19
\debounceit0|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[9]~34_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(9));

-- Location: LCCOMB_X34_Y31_N20
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

-- Location: LCCOMB_X34_Y31_N22
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

-- Location: LCFF_X34_Y31_N23
\debounceit0|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[11]~38_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(11));

-- Location: LCCOMB_X34_Y31_N24
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

-- Location: LCCOMB_X34_Y31_N26
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

-- Location: LCFF_X34_Y31_N27
\debounceit0|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[13]~42_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(13));

-- Location: LCFF_X34_Y31_N29
\debounceit0|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[14]~44_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(14));

-- Location: LCCOMB_X35_Y31_N26
\debounceit0|PB_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~0_combout\ = (\debounceit0|PB_cnt\(0) & (\debounceit0|PB_cnt\(1) & (\debounceit0|PB_sync_1~regout\ $ (\debounceit0|PB_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_sync_1~regout\,
	datab => \debounceit0|PB_state~regout\,
	datac => \debounceit0|PB_cnt\(0),
	datad => \debounceit0|PB_cnt\(1),
	combout => \debounceit0|PB_state~0_combout\);

-- Location: LCFF_X34_Y31_N25
\debounceit0|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[12]~40_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(12));

-- Location: LCFF_X34_Y31_N21
\debounceit0|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[10]~36_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(10));

-- Location: LCCOMB_X35_Y31_N8
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

-- Location: LCFF_X34_Y31_N17
\debounceit0|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[8]~32_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(8));

-- Location: LCFF_X34_Y31_N13
\debounceit0|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_cnt[6]~28_combout\,
	sclr => \debounceit0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_cnt\(6));

-- Location: LCCOMB_X35_Y31_N12
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

-- Location: LCCOMB_X35_Y31_N10
\debounceit0|PB_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit0|PB_state~4_combout\ = (\debounceit0|PB_state~1_combout\ & (\debounceit0|PB_state~0_combout\ & (\debounceit0|PB_state~3_combout\ & \debounceit0|PB_state~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit0|PB_state~1_combout\,
	datab => \debounceit0|PB_state~0_combout\,
	datac => \debounceit0|PB_state~3_combout\,
	datad => \debounceit0|PB_state~2_combout\,
	combout => \debounceit0|PB_state~4_combout\);

-- Location: LCCOMB_X35_Y31_N14
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

-- Location: LCFF_X35_Y31_N15
\debounceit0|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit0|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit0|PB_state~regout\);

-- Location: LCCOMB_X37_Y31_N0
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

-- Location: LCCOMB_X36_Y31_N12
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

-- Location: LCFF_X36_Y31_N13
\debounceit2|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_sync_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_sync_0~regout\);

-- Location: LCCOMB_X36_Y31_N16
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

-- Location: LCFF_X36_Y31_N17
\debounceit2|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_sync_1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_sync_1~regout\);

-- Location: LCCOMB_X36_Y31_N18
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

-- Location: LCFF_X37_Y31_N1
\debounceit2|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[0]~16_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(0));

-- Location: LCCOMB_X37_Y31_N2
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

-- Location: LCFF_X37_Y31_N3
\debounceit2|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[1]~18_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(1));

-- Location: LCCOMB_X37_Y31_N4
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

-- Location: LCFF_X37_Y31_N5
\debounceit2|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[2]~20_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(2));

-- Location: LCCOMB_X37_Y31_N8
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

-- Location: LCFF_X37_Y31_N9
\debounceit2|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[4]~24_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(4));

-- Location: LCCOMB_X37_Y31_N10
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

-- Location: LCCOMB_X37_Y31_N14
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

-- Location: LCFF_X37_Y31_N15
\debounceit2|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[7]~30_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(7));

-- Location: LCCOMB_X37_Y31_N18
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

-- Location: LCFF_X37_Y31_N19
\debounceit2|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[9]~34_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(9));

-- Location: LCCOMB_X37_Y31_N20
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

-- Location: LCCOMB_X37_Y31_N22
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

-- Location: LCFF_X37_Y31_N23
\debounceit2|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[11]~38_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(11));

-- Location: LCCOMB_X37_Y31_N24
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

-- Location: LCCOMB_X37_Y31_N26
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

-- Location: LCFF_X37_Y31_N27
\debounceit2|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[13]~42_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(13));

-- Location: LCFF_X37_Y31_N29
\debounceit2|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[14]~44_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(14));

-- Location: LCFF_X37_Y31_N25
\debounceit2|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[12]~40_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(12));

-- Location: LCFF_X37_Y31_N21
\debounceit2|PB_cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[10]~36_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(10));

-- Location: LCCOMB_X36_Y31_N22
\debounceit2|PB_state~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~3_combout\ = (\debounceit2|PB_cnt\(13) & (\debounceit2|PB_cnt\(12) & (\debounceit2|PB_cnt\(10) & \debounceit2|PB_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(13),
	datab => \debounceit2|PB_cnt\(12),
	datac => \debounceit2|PB_cnt\(10),
	datad => \debounceit2|PB_cnt\(11),
	combout => \debounceit2|PB_state~3_combout\);

-- Location: LCCOMB_X36_Y31_N24
\debounceit2|PB_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~0_combout\ = (\debounceit2|PB_cnt\(0) & (\debounceit2|PB_cnt\(1) & (\debounceit2|PB_sync_1~regout\ $ (\debounceit2|PB_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_sync_1~regout\,
	datab => \debounceit2|PB_cnt\(0),
	datac => \debounceit2|PB_state~regout\,
	datad => \debounceit2|PB_cnt\(1),
	combout => \debounceit2|PB_state~0_combout\);

-- Location: LCFF_X37_Y31_N11
\debounceit2|PB_cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_cnt[5]~26_combout\,
	sclr => \debounceit2|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_cnt\(5));

-- Location: LCCOMB_X36_Y31_N26
\debounceit2|PB_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~1_combout\ = (\debounceit2|PB_cnt\(3) & (\debounceit2|PB_cnt\(5) & (\debounceit2|PB_cnt\(4) & \debounceit2|PB_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_cnt\(3),
	datab => \debounceit2|PB_cnt\(5),
	datac => \debounceit2|PB_cnt\(4),
	datad => \debounceit2|PB_cnt\(2),
	combout => \debounceit2|PB_state~1_combout\);

-- Location: LCCOMB_X36_Y31_N28
\debounceit2|PB_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit2|PB_state~4_combout\ = (\debounceit2|PB_state~2_combout\ & (\debounceit2|PB_state~3_combout\ & (\debounceit2|PB_state~0_combout\ & \debounceit2|PB_state~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit2|PB_state~2_combout\,
	datab => \debounceit2|PB_state~3_combout\,
	datac => \debounceit2|PB_state~0_combout\,
	datad => \debounceit2|PB_state~1_combout\,
	combout => \debounceit2|PB_state~4_combout\);

-- Location: LCCOMB_X36_Y31_N14
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

-- Location: LCFF_X36_Y31_N15
\debounceit2|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit2|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit2|PB_state~regout\);

-- Location: LCFF_X36_Y31_N25
\aProcessor|RAND|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \debounceit0|PB_state~regout\,
	sdata => \debounceit2|PB_state~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \aProcessor|RAND|Q\(0));

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

-- Location: LCCOMB_X27_Y12_N22
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

-- Location: LCCOMB_X25_Y13_N30
\aProcessor|displayAll|HexDisplay32Bits[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~3_combout\) # ((\switch~combout\(3) & \switch~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~3_combout\,
	datac => \switch~combout\(3),
	datad => \switch~combout\(4),
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\);

-- Location: LCCOMB_X37_Y5_N0
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

-- Location: LCCOMB_X38_Y5_N2
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

-- Location: LCFF_X38_Y5_N7
\debounceit1|PB_sync_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	sdata => \debounceit1|PB_sync_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_sync_0~regout\);

-- Location: LCFF_X38_Y5_N3
\debounceit1|PB_sync_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	sdata => \debounceit1|PB_sync_0~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_sync_1~regout\);

-- Location: LCCOMB_X38_Y5_N6
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

-- Location: LCFF_X37_Y5_N1
\debounceit1|PB_cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[0]~16_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(0));

-- Location: LCCOMB_X37_Y5_N2
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

-- Location: LCFF_X37_Y5_N3
\debounceit1|PB_cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[1]~18_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(1));

-- Location: LCCOMB_X37_Y5_N4
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

-- Location: LCFF_X37_Y5_N5
\debounceit1|PB_cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[2]~20_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(2));

-- Location: LCCOMB_X37_Y5_N6
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

-- Location: LCCOMB_X37_Y5_N8
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

-- Location: LCFF_X37_Y5_N9
\debounceit1|PB_cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[4]~24_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(4));

-- Location: LCCOMB_X37_Y5_N12
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

-- Location: LCCOMB_X37_Y5_N14
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

-- Location: LCFF_X37_Y5_N15
\debounceit1|PB_cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[7]~30_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(7));

-- Location: LCCOMB_X37_Y5_N16
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

-- Location: LCCOMB_X37_Y5_N18
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

-- Location: LCFF_X37_Y5_N19
\debounceit1|PB_cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[9]~34_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(9));

-- Location: LCCOMB_X37_Y5_N22
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

-- Location: LCFF_X37_Y5_N23
\debounceit1|PB_cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[11]~38_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(11));

-- Location: LCCOMB_X37_Y5_N24
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

-- Location: LCCOMB_X37_Y5_N26
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

-- Location: LCFF_X37_Y5_N27
\debounceit1|PB_cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[13]~42_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(13));

-- Location: LCFF_X37_Y5_N29
\debounceit1|PB_cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[14]~44_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(14));

-- Location: LCFF_X37_Y5_N25
\debounceit1|PB_cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[12]~40_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(12));

-- Location: LCCOMB_X38_Y5_N18
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

-- Location: LCFF_X37_Y5_N7
\debounceit1|PB_cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[3]~22_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(3));

-- Location: LCCOMB_X38_Y5_N14
\debounceit1|PB_state~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~1_combout\ = (\debounceit1|PB_cnt\(5) & (\debounceit1|PB_cnt\(3) & (\debounceit1|PB_cnt\(2) & \debounceit1|PB_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(5),
	datab => \debounceit1|PB_cnt\(3),
	datac => \debounceit1|PB_cnt\(2),
	datad => \debounceit1|PB_cnt\(4),
	combout => \debounceit1|PB_state~1_combout\);

-- Location: LCFF_X37_Y5_N17
\debounceit1|PB_cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[8]~32_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(8));

-- Location: LCFF_X37_Y5_N13
\debounceit1|PB_cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_cnt[6]~28_combout\,
	sclr => \debounceit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_cnt\(6));

-- Location: LCCOMB_X38_Y5_N28
\debounceit1|PB_state~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~2_combout\ = (\debounceit1|PB_cnt\(7) & (\debounceit1|PB_cnt\(8) & (\debounceit1|PB_cnt\(9) & \debounceit1|PB_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_cnt\(7),
	datab => \debounceit1|PB_cnt\(8),
	datac => \debounceit1|PB_cnt\(9),
	datad => \debounceit1|PB_cnt\(6),
	combout => \debounceit1|PB_state~2_combout\);

-- Location: LCCOMB_X38_Y5_N0
\debounceit1|PB_state~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounceit1|PB_state~4_combout\ = (\debounceit1|PB_state~0_combout\ & (\debounceit1|PB_state~3_combout\ & (\debounceit1|PB_state~1_combout\ & \debounceit1|PB_state~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~0_combout\,
	datab => \debounceit1|PB_state~3_combout\,
	datac => \debounceit1|PB_state~1_combout\,
	datad => \debounceit1|PB_state~2_combout\,
	combout => \debounceit1|PB_state~4_combout\);

-- Location: LCCOMB_X38_Y5_N12
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

-- Location: LCFF_X38_Y5_N13
\debounceit1|PB_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27~clkctrl_outclk\,
	datain => \debounceit1|PB_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounceit1|PB_state~regout\);

-- Location: LCCOMB_X57_Y4_N12
\aProcessor|displayAll|HexDisplay32Bits[23]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~0_combout\ & (!\switch~combout\(4) & !\debounceit1|PB_state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[23]~0_combout\,
	datac => \switch~combout\(4),
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\);

-- Location: LCCOMB_X27_Y4_N24
\aProcessor|displayAll|HexDisplay32Bits[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & (((\InstructionROM|altsyncram_component|auto_generated|q_a\(1))))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & 
-- (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(1),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\);

-- Location: LCCOMB_X27_Y4_N28
\aProcessor|displayAll|HexDisplay32Bits[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & (((\InstructionROM|altsyncram_component|auto_generated|q_a\(3))))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & 
-- (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(3),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\);

-- Location: LCCOMB_X25_Y12_N28
\aProcessor|displayAll|HexDisplay32Bits[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~0_combout\ & (!\switch~combout\(4) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(0) & !\debounceit1|PB_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[23]~0_combout\,
	datab => \switch~combout\(4),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(0),
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\);

-- Location: LCCOMB_X27_Y4_N2
\aProcessor|displayAll|HexDisplay32Bits[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & (((\InstructionROM|altsyncram_component|auto_generated|q_a\(2))))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & 
-- (!\debounceit1|PB_state~regout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(2),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\);

-- Location: LCCOMB_X27_Y4_N22
\uHEX0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\,
	combout => \uHEX0|WideOr6~0_combout\);

-- Location: LCCOMB_X27_Y4_N16
\uHEX0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\,
	combout => \uHEX0|WideOr5~0_combout\);

-- Location: LCCOMB_X27_Y4_N30
\uHEX0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\,
	combout => \uHEX0|WideOr4~0_combout\);

-- Location: LCCOMB_X27_Y4_N8
\uHEX0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\ & \aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\,
	combout => \uHEX0|WideOr3~0_combout\);

-- Location: LCCOMB_X27_Y4_N26
\uHEX0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\,
	combout => \uHEX0|WideOr2~0_combout\);

-- Location: LCCOMB_X27_Y4_N12
\uHEX0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\,
	combout => \uHEX0|WideOr1~0_combout\);

-- Location: LCCOMB_X27_Y4_N10
\uHEX0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX0|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~5_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[3]~7_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[0]~1_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[2]~6_combout\,
	combout => \uHEX0|WideOr0~0_combout\);

-- Location: LCCOMB_X27_Y4_N20
\aProcessor|displayAll|HexDisplay32Bits[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & (((\InstructionROM|altsyncram_component|auto_generated|q_a\(4))))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & 
-- ((\debounceit1|PB_state~regout\) # ((\aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(4),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\);

-- Location: LCCOMB_X27_Y4_N18
\aProcessor|displayAll|HexDisplay32Bits[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & (\InstructionROM|altsyncram_component|auto_generated|q_a\(6))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & 
-- (((\aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\) # (\debounceit1|PB_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(6),
	datab => \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\);

-- Location: LCCOMB_X27_Y4_N0
\aProcessor|displayAll|HexDisplay32Bits[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & (((\InstructionROM|altsyncram_component|auto_generated|q_a\(7))))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & 
-- ((\debounceit1|PB_state~regout\) # ((\aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(7),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\);

-- Location: LCCOMB_X57_Y4_N22
\aProcessor|displayAll|HexDisplay32Bits[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\ = (\debounceit1|PB_state~regout\) # ((\aProcessor|displayAll|HexDisplay32Bits[23]~0_combout\ & (\InstructionROM|altsyncram_component|auto_generated|q_a\(5) & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[23]~0_combout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(5),
	datac => \switch~combout\(4),
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\);

-- Location: LCCOMB_X57_Y4_N16
\uHEX1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\,
	combout => \uHEX1|WideOr6~0_combout\);

-- Location: LCCOMB_X57_Y4_N18
\uHEX1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\,
	combout => \uHEX1|WideOr5~0_combout\);

-- Location: LCCOMB_X57_Y4_N20
\uHEX1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\,
	combout => \uHEX1|WideOr4~0_combout\);

-- Location: LCCOMB_X57_Y4_N26
\uHEX1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\ & \aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\,
	combout => \uHEX1|WideOr3~0_combout\);

-- Location: LCCOMB_X57_Y4_N24
\uHEX1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ & ((!\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\))) # (!\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\,
	combout => \uHEX1|WideOr2~0_combout\);

-- Location: LCCOMB_X57_Y4_N2
\uHEX1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\ $ (((\aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\ & 
-- \aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\,
	combout => \uHEX1|WideOr1~0_combout\);

-- Location: LCCOMB_X57_Y4_N0
\uHEX1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX1|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[4]~8_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[6]~10_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[7]~11_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[5]~9_combout\,
	combout => \uHEX1|WideOr0~0_combout\);

-- Location: LCCOMB_X64_Y7_N24
\aProcessor|displayAll|HexDisplay32Bits[9]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & (((\InstructionROM|altsyncram_component|auto_generated|q_a\(9))))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\) # ((\debounceit1|PB_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(9),
	datac => \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\);

-- Location: LCCOMB_X64_Y7_N28
\aProcessor|displayAll|HexDisplay32Bits[11]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & (\InstructionROM|altsyncram_component|auto_generated|q_a\(11))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & 
-- (((\aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\) # (\debounceit1|PB_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(11),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\);

-- Location: LCCOMB_X25_Y12_N18
\aProcessor|displayAll|HexDisplay32Bits[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\ = (\debounceit1|PB_state~regout\) # ((\aProcessor|displayAll|HexDisplay32Bits[23]~0_combout\ & (!\switch~combout\(4) & \InstructionROM|altsyncram_component|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[23]~0_combout\,
	datab => \switch~combout\(4),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(8),
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\);

-- Location: LCCOMB_X64_Y7_N2
\aProcessor|displayAll|HexDisplay32Bits[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & (\InstructionROM|altsyncram_component|auto_generated|q_a\(10))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & 
-- (((\aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\) # (\debounceit1|PB_state~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\,
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(10),
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\);

-- Location: LCCOMB_X64_Y7_N6
\uHEX2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\,
	combout => \uHEX2|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y7_N12
\uHEX2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\))))) # (!\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\,
	combout => \uHEX2|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y7_N18
\uHEX2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\,
	combout => \uHEX2|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y7_N16
\uHEX2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ $ (((!\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\))))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\ & \aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\,
	combout => \uHEX2|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y7_N30
\uHEX2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\,
	combout => \uHEX2|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y7_N0
\uHEX2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\ $ 
-- (!\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\,
	combout => \uHEX2|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y7_N14
\uHEX2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX2|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[9]~13_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[11]~15_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[8]~12_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[10]~14_combout\,
	combout => \uHEX2|WideOr0~0_combout\);

-- Location: LCCOMB_X64_Y8_N24
\aProcessor|displayAll|HexDisplay32Bits[15]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & (\InstructionROM|altsyncram_component|auto_generated|q_a\(15))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & 
-- (((!\debounceit1|PB_state~regout\ & \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(15),
	datab => \debounceit1|PB_state~regout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\);

-- Location: LCCOMB_X64_Y8_N26
\aProcessor|displayAll|HexDisplay32Bits[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & (\InstructionROM|altsyncram_component|auto_generated|q_a\(14))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & 
-- (((!\debounceit1|PB_state~regout\ & \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(14),
	datab => \debounceit1|PB_state~regout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\);

-- Location: LCCOMB_X28_Y12_N14
\aProcessor|displayAll|HexDisplay32Bits[13]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~0_combout\ & (!\switch~combout\(4) & (!\debounceit1|PB_state~regout\ & \InstructionROM|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[23]~0_combout\,
	datab => \switch~combout\(4),
	datac => \debounceit1|PB_state~regout\,
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(13),
	combout => \aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\);

-- Location: LCCOMB_X64_Y8_N28
\aProcessor|displayAll|HexDisplay32Bits[12]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & (\InstructionROM|altsyncram_component|auto_generated|q_a\(12))) # (!\aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\ & 
-- (((!\debounceit1|PB_state~regout\ & \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(12),
	datab => \debounceit1|PB_state~regout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[1]~4_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[23]~2_combout\,
	combout => \aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\);

-- Location: LCCOMB_X64_Y8_N22
\uHEX3|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr6~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\,
	combout => \uHEX3|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y8_N12
\uHEX3|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr5~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ & 
-- (\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\ $ (\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\,
	combout => \uHEX3|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\uHEX3|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr4~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\ & 
-- !\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\,
	combout => \uHEX3|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y8_N16
\uHEX3|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr3~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ $ (!\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ & \aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\)) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ & !\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\,
	combout => \uHEX3|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y8_N14
\uHEX3|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr2~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\)))) # 
-- (!\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\)) # (!\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ & 
-- ((\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\,
	combout => \uHEX3|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y8_N0
\uHEX3|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr1~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\ & (\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ & (!\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\) # 
-- (\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\,
	combout => \uHEX3|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y8_N10
\uHEX3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX3|WideOr0~0_combout\ = (\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\)))) # (!\aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\ & ((\aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\) # (\aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\ $ 
-- (\aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aProcessor|displayAll|HexDisplay32Bits[15]~19_combout\,
	datab => \aProcessor|displayAll|HexDisplay32Bits[14]~18_combout\,
	datac => \aProcessor|displayAll|HexDisplay32Bits[13]~17_combout\,
	datad => \aProcessor|displayAll|HexDisplay32Bits[12]~16_combout\,
	combout => \uHEX3|WideOr0~0_combout\);

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

-- Location: LCCOMB_X25_Y12_N16
\uHEX4|WideOr6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr6~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(18) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(17) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(19) $ 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(16))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(18) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(16) & 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(17) $ (!\InstructionROM|altsyncram_component|auto_generated|q_a\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(17),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(18),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(19),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(16),
	combout => \uHEX4|WideOr6~7_combout\);

-- Location: LCCOMB_X25_Y12_N6
\uHEX4|WideOr6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr6~3_combout\ = (!\switch~combout\(2) & (!\switch~combout\(4) & (\uHEX4|WideOr6~7_combout\ & !\debounceit1|PB_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(4),
	datac => \uHEX4|WideOr6~7_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \uHEX4|WideOr6~3_combout\);

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

-- Location: LCCOMB_X25_Y13_N8
\uHEX4|WideOr6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr6~16_combout\ = (\switch~combout\(0) & (\uHEX4|WideOr6~3_combout\ & (\switch~combout\(3) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \uHEX4|WideOr6~3_combout\,
	datac => \switch~combout\(3),
	datad => \switch~combout\(1),
	combout => \uHEX4|WideOr6~16_combout\);

-- Location: LCCOMB_X25_Y12_N4
\uHEX4|WideOr5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr5~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(17) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(16) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(19)))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(16) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(18))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(17) & 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(18) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(19) $ (\InstructionROM|altsyncram_component|auto_generated|q_a\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(17),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(18),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(19),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(16),
	combout => \uHEX4|WideOr5~7_combout\);

-- Location: LCCOMB_X25_Y12_N26
\uHEX4|WideOr5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr5~3_combout\ = (!\switch~combout\(2) & (!\switch~combout\(4) & (\uHEX4|WideOr5~7_combout\ & !\debounceit1|PB_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(4),
	datac => \uHEX4|WideOr5~7_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \uHEX4|WideOr5~3_combout\);

-- Location: LCCOMB_X25_Y13_N2
\uHEX4|WideOr5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr5~16_combout\ = (\switch~combout\(0) & (\uHEX4|WideOr5~3_combout\ & (\switch~combout\(3) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \uHEX4|WideOr5~3_combout\,
	datac => \switch~combout\(3),
	datad => \switch~combout\(1),
	combout => \uHEX4|WideOr5~16_combout\);

-- Location: LCCOMB_X25_Y12_N24
\uHEX4|WideOr4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr4~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(18) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(19) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(17)) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(16))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(18) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(17) & 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(19) & !\InstructionROM|altsyncram_component|auto_generated|q_a\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(17),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(18),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(19),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(16),
	combout => \uHEX4|WideOr4~7_combout\);

-- Location: LCCOMB_X25_Y12_N22
\uHEX4|WideOr4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr4~3_combout\ = (!\switch~combout\(2) & (!\switch~combout\(4) & (\uHEX4|WideOr4~7_combout\ & !\debounceit1|PB_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(4),
	datac => \uHEX4|WideOr4~7_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \uHEX4|WideOr4~3_combout\);

-- Location: LCCOMB_X25_Y13_N4
\uHEX4|WideOr4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr4~16_combout\ = (\switch~combout\(0) & (\switch~combout\(3) & (\uHEX4|WideOr4~3_combout\ & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(3),
	datac => \uHEX4|WideOr4~3_combout\,
	datad => \switch~combout\(1),
	combout => \uHEX4|WideOr4~16_combout\);

-- Location: LCCOMB_X25_Y12_N0
\uHEX4|WideOr3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr3~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(16) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(17) $ ((!\InstructionROM|altsyncram_component|auto_generated|q_a\(18))))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(16) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(17) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(18) & 
-- \InstructionROM|altsyncram_component|auto_generated|q_a\(19))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(17) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(18) & 
-- !\InstructionROM|altsyncram_component|auto_generated|q_a\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(17),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(18),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(19),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(16),
	combout => \uHEX4|WideOr3~7_combout\);

-- Location: LCCOMB_X25_Y14_N8
\uHEX4|WideOr3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr3~3_combout\ = (!\switch~combout\(2) & (\uHEX4|WideOr3~7_combout\ & (!\debounceit1|PB_state~regout\ & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \uHEX4|WideOr3~7_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \switch~combout\(4),
	combout => \uHEX4|WideOr3~3_combout\);

-- Location: LCCOMB_X24_Y14_N4
\uHEX4|WideOr3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr3~16_combout\ = (\switch~combout\(0) & (\switch~combout\(3) & (\uHEX4|WideOr3~3_combout\ & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(3),
	datac => \uHEX4|WideOr3~3_combout\,
	datad => \switch~combout\(1),
	combout => \uHEX4|WideOr3~16_combout\);

-- Location: LCCOMB_X25_Y12_N14
\uHEX4|WideOr2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr2~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(17) & (((!\InstructionROM|altsyncram_component|auto_generated|q_a\(19) & \InstructionROM|altsyncram_component|auto_generated|q_a\(16))))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(17) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(18) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(19))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(18) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(17),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(18),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(19),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(16),
	combout => \uHEX4|WideOr2~7_combout\);

-- Location: LCCOMB_X25_Y12_N8
\uHEX4|WideOr2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr2~3_combout\ = (!\switch~combout\(2) & (!\switch~combout\(4) & (\uHEX4|WideOr2~7_combout\ & !\debounceit1|PB_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(4),
	datac => \uHEX4|WideOr2~7_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \uHEX4|WideOr2~3_combout\);

-- Location: LCCOMB_X24_Y14_N6
\uHEX4|WideOr2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr2~16_combout\ = (\uHEX4|WideOr2~3_combout\ & (\switch~combout\(3) & (\switch~combout\(0) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uHEX4|WideOr2~3_combout\,
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \uHEX4|WideOr2~16_combout\);

-- Location: LCCOMB_X25_Y12_N10
\uHEX4|WideOr1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr1~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(17) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(19) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(16)) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(18))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(17) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(16) & 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(18) $ (!\InstructionROM|altsyncram_component|auto_generated|q_a\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(17),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(18),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(19),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(16),
	combout => \uHEX4|WideOr1~7_combout\);

-- Location: LCCOMB_X25_Y12_N20
\uHEX4|WideOr1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr1~3_combout\ = (!\switch~combout\(2) & (!\switch~combout\(4) & (\uHEX4|WideOr1~7_combout\ & !\debounceit1|PB_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(4),
	datac => \uHEX4|WideOr1~7_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \uHEX4|WideOr1~3_combout\);

-- Location: LCCOMB_X24_Y14_N16
\uHEX4|WideOr1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr1~16_combout\ = (\switch~combout\(0) & (\switch~combout\(3) & (\uHEX4|WideOr1~3_combout\ & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(3),
	datac => \uHEX4|WideOr1~3_combout\,
	datad => \switch~combout\(1),
	combout => \uHEX4|WideOr1~16_combout\);

-- Location: LCCOMB_X25_Y12_N30
\uHEX4|WideOr0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr0~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(16) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(19)) # (\InstructionROM|altsyncram_component|auto_generated|q_a\(17) $ 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(18))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(16) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(17)) # 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(18) $ (\InstructionROM|altsyncram_component|auto_generated|q_a\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(17),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(18),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(19),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(16),
	combout => \uHEX4|WideOr0~7_combout\);

-- Location: LCCOMB_X25_Y12_N12
\uHEX4|WideOr0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr0~3_combout\ = (!\switch~combout\(2) & (!\switch~combout\(4) & (\uHEX4|WideOr0~7_combout\ & !\debounceit1|PB_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(4),
	datac => \uHEX4|WideOr0~7_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \uHEX4|WideOr0~3_combout\);

-- Location: LCCOMB_X24_Y14_N26
\uHEX4|WideOr0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX4|WideOr0~16_combout\ = (\switch~combout\(0) & (\switch~combout\(3) & (\uHEX4|WideOr0~3_combout\ & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(3),
	datac => \uHEX4|WideOr0~3_combout\,
	datad => \switch~combout\(1),
	combout => \uHEX4|WideOr0~16_combout\);

-- Location: LCCOMB_X27_Y12_N0
\uHEX5|WideOr6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr6~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(23) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(20) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(21) $ 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(22))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(23) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(21) & 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(22) $ (\InstructionROM|altsyncram_component|auto_generated|q_a\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(21),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(23),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(22),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(20),
	combout => \uHEX5|WideOr6~7_combout\);

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

-- Location: LCCOMB_X28_Y12_N30
\uHEX5|WideOr6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr6~3_combout\ = (!\debounceit1|PB_state~regout\ & (!\switch~combout\(4) & (\uHEX5|WideOr6~7_combout\ & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \switch~combout\(4),
	datac => \uHEX5|WideOr6~7_combout\,
	datad => \switch~combout\(2),
	combout => \uHEX5|WideOr6~3_combout\);

-- Location: LCCOMB_X28_Y12_N0
\uHEX5|WideOr6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr6~16_combout\ = (\switch~combout\(1) & (\switch~combout\(3) & (\switch~combout\(0) & \uHEX5|WideOr6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \uHEX5|WideOr6~3_combout\,
	combout => \uHEX5|WideOr6~16_combout\);

-- Location: LCCOMB_X28_Y12_N10
\uHEX5|WideOr5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr5~3_combout\ = (\uHEX5|WideOr5~7_combout\ & (!\switch~combout\(4) & (!\debounceit1|PB_state~regout\ & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uHEX5|WideOr5~7_combout\,
	datab => \switch~combout\(4),
	datac => \debounceit1|PB_state~regout\,
	datad => \switch~combout\(2),
	combout => \uHEX5|WideOr5~3_combout\);

-- Location: LCCOMB_X28_Y12_N8
\uHEX5|WideOr5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr5~16_combout\ = (\switch~combout\(0) & (\switch~combout\(3) & (\switch~combout\(1) & \uHEX5|WideOr5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(3),
	datac => \switch~combout\(1),
	datad => \uHEX5|WideOr5~3_combout\,
	combout => \uHEX5|WideOr5~16_combout\);

-- Location: LCCOMB_X28_Y12_N26
\uHEX5|WideOr4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr4~3_combout\ = (\uHEX5|WideOr4~7_combout\ & (!\switch~combout\(4) & (!\debounceit1|PB_state~regout\ & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uHEX5|WideOr4~7_combout\,
	datab => \switch~combout\(4),
	datac => \debounceit1|PB_state~regout\,
	datad => \switch~combout\(2),
	combout => \uHEX5|WideOr4~3_combout\);

-- Location: LCCOMB_X28_Y12_N20
\uHEX5|WideOr4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr4~16_combout\ = (\switch~combout\(1) & (\switch~combout\(3) & (\switch~combout\(0) & \uHEX5|WideOr4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \uHEX5|WideOr4~3_combout\,
	combout => \uHEX5|WideOr4~16_combout\);

-- Location: LCCOMB_X27_Y12_N18
\uHEX5|WideOr3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr3~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(20) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(21) $ (((!\InstructionROM|altsyncram_component|auto_generated|q_a\(22)))))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(20) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(21) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(23) & 
-- !\InstructionROM|altsyncram_component|auto_generated|q_a\(22))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(21) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(23) & 
-- \InstructionROM|altsyncram_component|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(21),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(23),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(22),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(20),
	combout => \uHEX5|WideOr3~7_combout\);

-- Location: LCCOMB_X28_Y12_N6
\uHEX5|WideOr3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr3~3_combout\ = (!\switch~combout\(2) & (!\switch~combout\(4) & (!\debounceit1|PB_state~regout\ & \uHEX5|WideOr3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(4),
	datac => \debounceit1|PB_state~regout\,
	datad => \uHEX5|WideOr3~7_combout\,
	combout => \uHEX5|WideOr3~3_combout\);

-- Location: LCCOMB_X28_Y12_N4
\uHEX5|WideOr3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr3~16_combout\ = (\switch~combout\(0) & (\switch~combout\(3) & (\switch~combout\(1) & \uHEX5|WideOr3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(3),
	datac => \switch~combout\(1),
	datad => \uHEX5|WideOr3~3_combout\,
	combout => \uHEX5|WideOr3~16_combout\);

-- Location: LCCOMB_X27_Y12_N20
\uHEX5|WideOr2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr2~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(21) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(23) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(20))))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(21) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(22) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(23))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(22) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(21),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(23),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(22),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(20),
	combout => \uHEX5|WideOr2~7_combout\);

-- Location: LCCOMB_X28_Y12_N18
\uHEX5|WideOr2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr2~3_combout\ = (!\debounceit1|PB_state~regout\ & (!\switch~combout\(4) & (\uHEX5|WideOr2~7_combout\ & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \switch~combout\(4),
	datac => \uHEX5|WideOr2~7_combout\,
	datad => \switch~combout\(2),
	combout => \uHEX5|WideOr2~3_combout\);

-- Location: LCCOMB_X28_Y12_N28
\uHEX5|WideOr2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr2~16_combout\ = (\switch~combout\(1) & (\switch~combout\(3) & (\switch~combout\(0) & \uHEX5|WideOr2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \uHEX5|WideOr2~3_combout\,
	combout => \uHEX5|WideOr2~16_combout\);

-- Location: LCCOMB_X27_Y12_N30
\uHEX5|WideOr1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr1~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(21) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(23) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(20)) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(22))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(21) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(20) & 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(23) $ (!\InstructionROM|altsyncram_component|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(21),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(23),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(22),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(20),
	combout => \uHEX5|WideOr1~7_combout\);

-- Location: LCCOMB_X28_Y12_N2
\uHEX5|WideOr1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr1~3_combout\ = (!\debounceit1|PB_state~regout\ & (!\switch~combout\(4) & (\uHEX5|WideOr1~7_combout\ & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \switch~combout\(4),
	datac => \uHEX5|WideOr1~7_combout\,
	datad => \switch~combout\(2),
	combout => \uHEX5|WideOr1~3_combout\);

-- Location: LCCOMB_X28_Y12_N24
\uHEX5|WideOr1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr1~16_combout\ = (\switch~combout\(1) & (\switch~combout\(3) & (\switch~combout\(0) & \uHEX5|WideOr1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(1),
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \uHEX5|WideOr1~3_combout\,
	combout => \uHEX5|WideOr1~16_combout\);

-- Location: LCCOMB_X27_Y12_N4
\uHEX5|WideOr0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr0~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(20) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(23)) # (\InstructionROM|altsyncram_component|auto_generated|q_a\(21) $ 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(22))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(20) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(21)) # 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(23) $ (\InstructionROM|altsyncram_component|auto_generated|q_a\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(21),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(23),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(22),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(20),
	combout => \uHEX5|WideOr0~7_combout\);

-- Location: LCCOMB_X28_Y12_N22
\uHEX5|WideOr0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr0~3_combout\ = (!\debounceit1|PB_state~regout\ & (!\switch~combout\(4) & (\uHEX5|WideOr0~7_combout\ & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \switch~combout\(4),
	datac => \uHEX5|WideOr0~7_combout\,
	datad => \switch~combout\(2),
	combout => \uHEX5|WideOr0~3_combout\);

-- Location: LCCOMB_X28_Y12_N12
\uHEX5|WideOr0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX5|WideOr0~16_combout\ = (\switch~combout\(0) & (\switch~combout\(3) & (\switch~combout\(1) & \uHEX5|WideOr0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(3),
	datac => \switch~combout\(1),
	datad => \uHEX5|WideOr0~3_combout\,
	combout => \uHEX5|WideOr0~16_combout\);

-- Location: LCCOMB_X25_Y14_N30
\uHEX6|WideOr6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr6~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(26) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(25) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(24) $ 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(27))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(26) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(24) & 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(25) $ (!\InstructionROM|altsyncram_component|auto_generated|q_a\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(26),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(25),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(24),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(27),
	combout => \uHEX6|WideOr6~7_combout\);

-- Location: LCCOMB_X25_Y14_N0
\uHEX6|WideOr6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr6~3_combout\ = (!\debounceit1|PB_state~regout\ & (\uHEX6|WideOr6~7_combout\ & (!\switch~combout\(2) & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \uHEX6|WideOr6~7_combout\,
	datac => \switch~combout\(2),
	datad => \switch~combout\(4),
	combout => \uHEX6|WideOr6~3_combout\);

-- Location: LCCOMB_X24_Y14_N28
\uHEX6|WideOr6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr6~16_combout\ = (\switch~combout\(0) & (\switch~combout\(3) & (\uHEX6|WideOr6~3_combout\ & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(3),
	datac => \uHEX6|WideOr6~3_combout\,
	datad => \switch~combout\(1),
	combout => \uHEX6|WideOr6~16_combout\);

-- Location: LCCOMB_X25_Y14_N18
\uHEX6|WideOr5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr5~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(25) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(24) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(27)))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(24) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(26))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(25) & 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(26) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(24) $ (\InstructionROM|altsyncram_component|auto_generated|q_a\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(26),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(25),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(24),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(27),
	combout => \uHEX6|WideOr5~7_combout\);

-- Location: LCCOMB_X25_Y14_N24
\uHEX6|WideOr5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr5~3_combout\ = (!\debounceit1|PB_state~regout\ & (\uHEX6|WideOr5~7_combout\ & (!\switch~combout\(2) & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \uHEX6|WideOr5~7_combout\,
	datac => \switch~combout\(2),
	datad => \switch~combout\(4),
	combout => \uHEX6|WideOr5~3_combout\);

-- Location: LCCOMB_X24_Y14_N18
\uHEX6|WideOr5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr5~16_combout\ = (\uHEX6|WideOr5~3_combout\ & (\switch~combout\(3) & (\switch~combout\(0) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uHEX6|WideOr5~3_combout\,
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \uHEX6|WideOr5~16_combout\);

-- Location: LCCOMB_X25_Y14_N22
\uHEX6|WideOr4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr4~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(26) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(27) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(25)) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(24))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(26) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(25) & 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(24) & !\InstructionROM|altsyncram_component|auto_generated|q_a\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(26),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(25),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(24),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(27),
	combout => \uHEX6|WideOr4~7_combout\);

-- Location: LCCOMB_X25_Y14_N28
\uHEX6|WideOr4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr4~3_combout\ = (!\debounceit1|PB_state~regout\ & (\uHEX6|WideOr4~7_combout\ & (!\switch~combout\(2) & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \uHEX6|WideOr4~7_combout\,
	datac => \switch~combout\(2),
	datad => \switch~combout\(4),
	combout => \uHEX6|WideOr4~3_combout\);

-- Location: LCCOMB_X24_Y14_N24
\uHEX6|WideOr4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr4~16_combout\ = (\uHEX6|WideOr4~3_combout\ & (\switch~combout\(3) & (\switch~combout\(0) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uHEX6|WideOr4~3_combout\,
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \uHEX6|WideOr4~16_combout\);

-- Location: LCCOMB_X25_Y14_N10
\uHEX6|WideOr3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr3~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(24) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(26) $ ((!\InstructionROM|altsyncram_component|auto_generated|q_a\(25))))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(24) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(26) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(25) & 
-- !\InstructionROM|altsyncram_component|auto_generated|q_a\(27))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(26) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(25) & 
-- \InstructionROM|altsyncram_component|auto_generated|q_a\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(26),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(25),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(24),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(27),
	combout => \uHEX6|WideOr3~7_combout\);

-- Location: LCCOMB_X25_Y14_N16
\uHEX6|WideOr3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr3~3_combout\ = (!\debounceit1|PB_state~regout\ & (\uHEX6|WideOr3~7_combout\ & (!\switch~combout\(2) & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \uHEX6|WideOr3~7_combout\,
	datac => \switch~combout\(2),
	datad => \switch~combout\(4),
	combout => \uHEX6|WideOr3~3_combout\);

-- Location: LCCOMB_X24_Y14_N2
\uHEX6|WideOr3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr3~16_combout\ = (\switch~combout\(0) & (\switch~combout\(3) & (\uHEX6|WideOr3~3_combout\ & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(3),
	datac => \uHEX6|WideOr3~3_combout\,
	datad => \switch~combout\(1),
	combout => \uHEX6|WideOr3~16_combout\);

-- Location: LCCOMB_X25_Y14_N26
\uHEX6|WideOr2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr2~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(25) & (((\InstructionROM|altsyncram_component|auto_generated|q_a\(24) & !\InstructionROM|altsyncram_component|auto_generated|q_a\(27))))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(25) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(26) & ((!\InstructionROM|altsyncram_component|auto_generated|q_a\(27)))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(26) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(26),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(25),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(24),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(27),
	combout => \uHEX6|WideOr2~7_combout\);

-- Location: LCCOMB_X25_Y14_N4
\uHEX6|WideOr2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr2~3_combout\ = (!\debounceit1|PB_state~regout\ & (\uHEX6|WideOr2~7_combout\ & (!\switch~combout\(2) & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \uHEX6|WideOr2~7_combout\,
	datac => \switch~combout\(2),
	datad => \switch~combout\(4),
	combout => \uHEX6|WideOr2~3_combout\);

-- Location: LCCOMB_X24_Y14_N0
\uHEX6|WideOr2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr2~16_combout\ = (\uHEX6|WideOr2~3_combout\ & (\switch~combout\(3) & (\switch~combout\(0) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uHEX6|WideOr2~3_combout\,
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \uHEX6|WideOr2~16_combout\);

-- Location: LCCOMB_X25_Y14_N2
\uHEX6|WideOr1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr1~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(26) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(24) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(25) $ 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(27))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(26) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(27) & 
-- ((\InstructionROM|altsyncram_component|auto_generated|q_a\(25)) # (\InstructionROM|altsyncram_component|auto_generated|q_a\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(26),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(25),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(24),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(27),
	combout => \uHEX6|WideOr1~7_combout\);

-- Location: LCCOMB_X25_Y14_N12
\uHEX6|WideOr1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr1~3_combout\ = (!\debounceit1|PB_state~regout\ & (\uHEX6|WideOr1~7_combout\ & (!\switch~combout\(2) & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \uHEX6|WideOr1~7_combout\,
	datac => \switch~combout\(2),
	datad => \switch~combout\(4),
	combout => \uHEX6|WideOr1~3_combout\);

-- Location: LCCOMB_X24_Y14_N10
\uHEX6|WideOr1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr1~16_combout\ = (\switch~combout\(0) & (\switch~combout\(3) & (\uHEX6|WideOr1~3_combout\ & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(3),
	datac => \uHEX6|WideOr1~3_combout\,
	datad => \switch~combout\(1),
	combout => \uHEX6|WideOr1~16_combout\);

-- Location: LCCOMB_X25_Y14_N14
\uHEX6|WideOr0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr0~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(24) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(27)) # (\InstructionROM|altsyncram_component|auto_generated|q_a\(26) $ 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(25))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(24) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(25)) # 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(26) $ (\InstructionROM|altsyncram_component|auto_generated|q_a\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(26),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(25),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(24),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(27),
	combout => \uHEX6|WideOr0~7_combout\);

-- Location: LCCOMB_X25_Y14_N20
\uHEX6|WideOr0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr0~3_combout\ = (!\switch~combout\(2) & (\uHEX6|WideOr0~7_combout\ & (!\debounceit1|PB_state~regout\ & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \uHEX6|WideOr0~7_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \switch~combout\(4),
	combout => \uHEX6|WideOr0~3_combout\);

-- Location: LCCOMB_X24_Y14_N20
\uHEX6|WideOr0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX6|WideOr0~16_combout\ = (\uHEX6|WideOr0~3_combout\ & (\switch~combout\(3) & (\switch~combout\(0) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uHEX6|WideOr0~3_combout\,
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \uHEX6|WideOr0~16_combout\);

-- Location: LCCOMB_X25_Y16_N12
\uHEX7|WideOr6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr6~3_combout\ = (\uHEX7|WideOr6~7_combout\ & (!\switch~combout\(4) & (!\debounceit1|PB_state~regout\ & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uHEX7|WideOr6~7_combout\,
	datab => \switch~combout\(4),
	datac => \debounceit1|PB_state~regout\,
	datad => \switch~combout\(2),
	combout => \uHEX7|WideOr6~3_combout\);

-- Location: LCCOMB_X25_Y16_N2
\uHEX7|WideOr6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr6~16_combout\ = (\switch~combout\(3) & (\switch~combout\(1) & (\switch~combout\(0) & \uHEX7|WideOr6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \uHEX7|WideOr6~3_combout\,
	combout => \uHEX7|WideOr6~16_combout\);

-- Location: LCCOMB_X25_Y13_N22
\uHEX7|WideOr5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr5~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(29) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(28) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(31)))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(28) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(30))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(29) & 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(30) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(28) $ (\InstructionROM|altsyncram_component|auto_generated|q_a\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(30),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(28),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(29),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(31),
	combout => \uHEX7|WideOr5~7_combout\);

-- Location: LCCOMB_X25_Y12_N2
\uHEX7|WideOr5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr5~3_combout\ = (!\switch~combout\(2) & (!\switch~combout\(4) & (\uHEX7|WideOr5~7_combout\ & !\debounceit1|PB_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(4),
	datac => \uHEX7|WideOr5~7_combout\,
	datad => \debounceit1|PB_state~regout\,
	combout => \uHEX7|WideOr5~3_combout\);

-- Location: LCCOMB_X25_Y16_N10
\uHEX7|WideOr5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr5~16_combout\ = (\switch~combout\(3) & (\uHEX7|WideOr5~3_combout\ & (\switch~combout\(0) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \uHEX7|WideOr5~3_combout\,
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \uHEX7|WideOr5~16_combout\);

-- Location: LCCOMB_X25_Y16_N28
\uHEX7|WideOr4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr4~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(30) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(31) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(29)) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(28))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(30) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(31) & 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(29) & !\InstructionROM|altsyncram_component|auto_generated|q_a\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(30),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(31),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(29),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(28),
	combout => \uHEX7|WideOr4~7_combout\);

-- Location: LCCOMB_X25_Y16_N8
\uHEX7|WideOr4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr4~3_combout\ = (!\switch~combout\(2) & (!\switch~combout\(4) & (!\debounceit1|PB_state~regout\ & \uHEX7|WideOr4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(4),
	datac => \debounceit1|PB_state~regout\,
	datad => \uHEX7|WideOr4~7_combout\,
	combout => \uHEX7|WideOr4~3_combout\);

-- Location: LCCOMB_X25_Y16_N18
\uHEX7|WideOr4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr4~16_combout\ = (\switch~combout\(3) & (\uHEX7|WideOr4~3_combout\ & (\switch~combout\(0) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \uHEX7|WideOr4~3_combout\,
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \uHEX7|WideOr4~16_combout\);

-- Location: LCCOMB_X25_Y13_N0
\uHEX7|WideOr3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr3~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(28) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(30) $ ((!\InstructionROM|altsyncram_component|auto_generated|q_a\(29))))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(28) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(30) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(29) & 
-- !\InstructionROM|altsyncram_component|auto_generated|q_a\(31))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(30) & (\InstructionROM|altsyncram_component|auto_generated|q_a\(29) & 
-- \InstructionROM|altsyncram_component|auto_generated|q_a\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(30),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(28),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(29),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(31),
	combout => \uHEX7|WideOr3~7_combout\);

-- Location: LCCOMB_X25_Y14_N6
\uHEX7|WideOr3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr3~3_combout\ = (!\debounceit1|PB_state~regout\ & (\uHEX7|WideOr3~7_combout\ & (!\switch~combout\(2) & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounceit1|PB_state~regout\,
	datab => \uHEX7|WideOr3~7_combout\,
	datac => \switch~combout\(2),
	datad => \switch~combout\(4),
	combout => \uHEX7|WideOr3~3_combout\);

-- Location: LCCOMB_X24_Y14_N22
\uHEX7|WideOr3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr3~16_combout\ = (\uHEX7|WideOr3~3_combout\ & (\switch~combout\(3) & (\switch~combout\(0) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uHEX7|WideOr3~3_combout\,
	datab => \switch~combout\(3),
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \uHEX7|WideOr3~16_combout\);

-- Location: LCCOMB_X25_Y16_N22
\uHEX7|WideOr2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr2~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(29) & (((!\InstructionROM|altsyncram_component|auto_generated|q_a\(31) & \InstructionROM|altsyncram_component|auto_generated|q_a\(28))))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(29) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(30) & (!\InstructionROM|altsyncram_component|auto_generated|q_a\(31))) # 
-- (!\InstructionROM|altsyncram_component|auto_generated|q_a\(30) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(30),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(31),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(29),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(28),
	combout => \uHEX7|WideOr2~7_combout\);

-- Location: LCCOMB_X25_Y16_N30
\uHEX7|WideOr2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr2~3_combout\ = (!\switch~combout\(2) & (!\switch~combout\(4) & (!\debounceit1|PB_state~regout\ & \uHEX7|WideOr2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(4),
	datac => \debounceit1|PB_state~regout\,
	datad => \uHEX7|WideOr2~7_combout\,
	combout => \uHEX7|WideOr2~3_combout\);

-- Location: LCCOMB_X25_Y16_N16
\uHEX7|WideOr2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr2~16_combout\ = (\switch~combout\(0) & (\uHEX7|WideOr2~3_combout\ & (\switch~combout\(3) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \uHEX7|WideOr2~3_combout\,
	datac => \switch~combout\(3),
	datad => \switch~combout\(1),
	combout => \uHEX7|WideOr2~16_combout\);

-- Location: LCCOMB_X25_Y16_N4
\uHEX7|WideOr1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr1~3_combout\ = (\uHEX7|WideOr1~7_combout\ & (!\switch~combout\(4) & (!\debounceit1|PB_state~regout\ & !\switch~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uHEX7|WideOr1~7_combout\,
	datab => \switch~combout\(4),
	datac => \debounceit1|PB_state~regout\,
	datad => \switch~combout\(2),
	combout => \uHEX7|WideOr1~3_combout\);

-- Location: LCCOMB_X25_Y16_N6
\uHEX7|WideOr1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr1~16_combout\ = (\switch~combout\(3) & (\uHEX7|WideOr1~3_combout\ & (\switch~combout\(0) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(3),
	datab => \uHEX7|WideOr1~3_combout\,
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	combout => \uHEX7|WideOr1~16_combout\);

-- Location: LCCOMB_X25_Y16_N14
\uHEX7|WideOr0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr0~7_combout\ = (\InstructionROM|altsyncram_component|auto_generated|q_a\(28) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(31)) # (\InstructionROM|altsyncram_component|auto_generated|q_a\(30) $ 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(29))))) # (!\InstructionROM|altsyncram_component|auto_generated|q_a\(28) & ((\InstructionROM|altsyncram_component|auto_generated|q_a\(29)) # 
-- (\InstructionROM|altsyncram_component|auto_generated|q_a\(30) $ (\InstructionROM|altsyncram_component|auto_generated|q_a\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionROM|altsyncram_component|auto_generated|q_a\(30),
	datab => \InstructionROM|altsyncram_component|auto_generated|q_a\(31),
	datac => \InstructionROM|altsyncram_component|auto_generated|q_a\(29),
	datad => \InstructionROM|altsyncram_component|auto_generated|q_a\(28),
	combout => \uHEX7|WideOr0~7_combout\);

-- Location: LCCOMB_X25_Y16_N26
\uHEX7|WideOr0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr0~3_combout\ = (!\switch~combout\(2) & (\uHEX7|WideOr0~7_combout\ & (!\debounceit1|PB_state~regout\ & !\switch~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \uHEX7|WideOr0~7_combout\,
	datac => \debounceit1|PB_state~regout\,
	datad => \switch~combout\(4),
	combout => \uHEX7|WideOr0~3_combout\);

-- Location: LCCOMB_X25_Y16_N0
\uHEX7|WideOr0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \uHEX7|WideOr0~16_combout\ = (\switch~combout\(0) & (\uHEX7|WideOr0~3_combout\ & (\switch~combout\(3) & \switch~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \uHEX7|WideOr0~3_combout\,
	datac => \switch~combout\(3),
	datad => \switch~combout\(1),
	combout => \uHEX7|WideOr0~16_combout\);

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
	padio => ww_pushBut(3));

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
	datain => \uHEX4|WideOr6~16_combout\,
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
	datain => \uHEX4|WideOr5~16_combout\,
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
	datain => \uHEX4|WideOr4~16_combout\,
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
	datain => \uHEX4|WideOr3~16_combout\,
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
	datain => \uHEX4|WideOr2~16_combout\,
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
	datain => \uHEX4|WideOr1~16_combout\,
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
	datain => \uHEX4|ALT_INV_WideOr0~16_combout\,
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
	datain => \uHEX5|WideOr6~16_combout\,
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
	datain => \uHEX5|WideOr5~16_combout\,
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
	datain => \uHEX5|WideOr4~16_combout\,
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
	datain => \uHEX5|WideOr3~16_combout\,
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
	datain => \uHEX5|WideOr2~16_combout\,
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
	datain => \uHEX5|WideOr1~16_combout\,
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
	datain => \uHEX5|ALT_INV_WideOr0~16_combout\,
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
	datain => \uHEX6|WideOr6~16_combout\,
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
	datain => \uHEX6|WideOr5~16_combout\,
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
	datain => \uHEX6|WideOr4~16_combout\,
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
	datain => \uHEX6|WideOr3~16_combout\,
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
	datain => \uHEX6|WideOr2~16_combout\,
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
	datain => \uHEX6|WideOr1~16_combout\,
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
	datain => \uHEX6|ALT_INV_WideOr0~16_combout\,
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
	datain => \uHEX7|WideOr6~16_combout\,
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
	datain => \uHEX7|WideOr5~16_combout\,
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
	datain => \uHEX7|WideOr4~16_combout\,
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
	datain => \uHEX7|WideOr3~16_combout\,
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
	datain => \uHEX7|WideOr2~16_combout\,
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
	datain => \uHEX7|WideOr1~16_combout\,
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
	datain => \uHEX7|ALT_INV_WideOr0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(6));
END structure;


