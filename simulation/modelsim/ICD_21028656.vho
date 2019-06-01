-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "04/29/2019 03:57:05"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Morse IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	A : IN std_logic;
	B : OUT std_logic_vector(1 DOWNTO 0);
	L0 : OUT std_logic_vector(6 DOWNTO 0);
	L1 : OUT std_logic_vector(6 DOWNTO 0);
	L2 : OUT std_logic_vector(6 DOWNTO 0);
	L3 : OUT std_logic_vector(6 DOWNTO 0);
	L4 : OUT std_logic_vector(6 DOWNTO 0);
	L5 : OUT std_logic_vector(6 DOWNTO 0);
	clkout : OUT std_logic
	);
END Morse;

-- Design Ports Information
-- B[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkout	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Morse IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_L0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_L1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_L2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_L3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_L4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_L5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_clkout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \G1|G2|Add0~49_sumout\ : std_logic;
SIGNAL \G1|G2|countt~0_combout\ : std_logic;
SIGNAL \G1|G2|Add0~50\ : std_logic;
SIGNAL \G1|G2|Add0~53_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~54\ : std_logic;
SIGNAL \G1|G2|Add0~57_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~58\ : std_logic;
SIGNAL \G1|G2|Add0~61_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~62\ : std_logic;
SIGNAL \G1|G2|Add0~65_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~66\ : std_logic;
SIGNAL \G1|G2|Add0~69_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~70\ : std_logic;
SIGNAL \G1|G2|Add0~45_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~46\ : std_logic;
SIGNAL \G1|G2|Add0~9_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~10\ : std_logic;
SIGNAL \G1|G2|Add0~13_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~14\ : std_logic;
SIGNAL \G1|G2|Add0~17_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~18\ : std_logic;
SIGNAL \G1|G2|Add0~21_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~22\ : std_logic;
SIGNAL \G1|G2|Add0~37_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~38\ : std_logic;
SIGNAL \G1|G2|Add0~41_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~42\ : std_logic;
SIGNAL \G1|G2|Add0~29_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~30\ : std_logic;
SIGNAL \G1|G2|Add0~33_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~34\ : std_logic;
SIGNAL \G1|G2|Add0~77_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~78\ : std_logic;
SIGNAL \G1|G2|Add0~25_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~26\ : std_logic;
SIGNAL \G1|G2|Add0~73_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~74\ : std_logic;
SIGNAL \G1|G2|Add0~93_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~94\ : std_logic;
SIGNAL \G1|G2|Add0~97_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~98\ : std_logic;
SIGNAL \G1|G2|Add0~101_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~102\ : std_logic;
SIGNAL \G1|G2|Add0~81_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~82\ : std_logic;
SIGNAL \G1|G2|Add0~85_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~86\ : std_logic;
SIGNAL \G1|G2|Add0~105_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~106\ : std_logic;
SIGNAL \G1|G2|Add0~89_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~90\ : std_logic;
SIGNAL \G1|G2|Add0~109_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~110\ : std_logic;
SIGNAL \G1|G2|Add0~113_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~114\ : std_logic;
SIGNAL \G1|G2|Add0~117_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~118\ : std_logic;
SIGNAL \G1|G2|Add0~121_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~122\ : std_logic;
SIGNAL \G1|G2|Add0~125_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~126\ : std_logic;
SIGNAL \G1|G2|Add0~5_sumout\ : std_logic;
SIGNAL \G1|G2|Add0~6\ : std_logic;
SIGNAL \G1|G2|Add0~1_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~6\ : std_logic;
SIGNAL \G1|G2|Add1~25_sumout\ : std_logic;
SIGNAL \G1|G2|LessThan0~6_combout\ : std_logic;
SIGNAL \G1|G2|Add1~102\ : std_logic;
SIGNAL \G1|G2|Add1~125_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~126\ : std_logic;
SIGNAL \G1|G2|Add1~121_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~122\ : std_logic;
SIGNAL \G1|G2|Add1~117_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~118\ : std_logic;
SIGNAL \G1|G2|Add1~113_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~114\ : std_logic;
SIGNAL \G1|G2|Add1~1_sumout\ : std_logic;
SIGNAL \G1|G2|LessThan0~4_combout\ : std_logic;
SIGNAL \G1|G2|LessThan0~3_combout\ : std_logic;
SIGNAL \G1|G2|LessThan0~2_combout\ : std_logic;
SIGNAL \G1|G2|LessThan0~10_combout\ : std_logic;
SIGNAL \G1|G2|idlecount~0_combout\ : std_logic;
SIGNAL \G1|G2|Add1~26\ : std_logic;
SIGNAL \G1|G2|Add1~21_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~22\ : std_logic;
SIGNAL \G1|G2|Add1~17_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~18\ : std_logic;
SIGNAL \G1|G2|Add1~13_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~14\ : std_logic;
SIGNAL \G1|G2|Add1~9_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~10\ : std_logic;
SIGNAL \G1|G2|Add1~49_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~50\ : std_logic;
SIGNAL \G1|G2|Add1~65_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~66\ : std_logic;
SIGNAL \G1|G2|Add1~61_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~62\ : std_logic;
SIGNAL \G1|G2|Add1~57_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~58\ : std_logic;
SIGNAL \G1|G2|Add1~53_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~54\ : std_logic;
SIGNAL \G1|G2|Add1~41_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~42\ : std_logic;
SIGNAL \G1|G2|Add1~37_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~38\ : std_logic;
SIGNAL \G1|G2|Add1~33_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~34\ : std_logic;
SIGNAL \G1|G2|Add1~45_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~46\ : std_logic;
SIGNAL \G1|G2|Add1~73_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~74\ : std_logic;
SIGNAL \G1|G2|Add1~29_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~30\ : std_logic;
SIGNAL \G1|G2|Add1~69_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~70\ : std_logic;
SIGNAL \G1|G2|Add1~77_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~78\ : std_logic;
SIGNAL \G1|G2|Add1~97_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~98\ : std_logic;
SIGNAL \G1|G2|Add1~93_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~94\ : std_logic;
SIGNAL \G1|G2|Add1~89_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~90\ : std_logic;
SIGNAL \G1|G2|Add1~85_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~86\ : std_logic;
SIGNAL \G1|G2|Add1~109_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~110\ : std_logic;
SIGNAL \G1|G2|Add1~81_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~82\ : std_logic;
SIGNAL \G1|G2|Add1~105_sumout\ : std_logic;
SIGNAL \G1|G2|Add1~106\ : std_logic;
SIGNAL \G1|G2|Add1~101_sumout\ : std_logic;
SIGNAL \G1|G2|LessThan0~7_combout\ : std_logic;
SIGNAL \G1|G2|LessThan0~8_combout\ : std_logic;
SIGNAL \G1|G2|Add1~5_sumout\ : std_logic;
SIGNAL \G1|G2|idlecount~1_combout\ : std_logic;
SIGNAL \G1|G2|LessThan0~0_combout\ : std_logic;
SIGNAL \G1|G2|LessThan0~1_combout\ : std_logic;
SIGNAL \G1|G2|LessThan0~11_combout\ : std_logic;
SIGNAL \G1|G2|LessThan0~5_combout\ : std_logic;
SIGNAL \G1|G2|LessThan0~9_combout\ : std_logic;
SIGNAL \G1|G2|LessThan2~0_combout\ : std_logic;
SIGNAL \G1|G2|outsig~0_combout\ : std_logic;
SIGNAL \G1|G2|LessThan1~4_combout\ : std_logic;
SIGNAL \G1|G2|LessThan1~5_combout\ : std_logic;
SIGNAL \G1|G2|LessThan1~2_combout\ : std_logic;
SIGNAL \G1|G2|LessThan1~0_combout\ : std_logic;
SIGNAL \G1|G2|LessThan1~3_combout\ : std_logic;
SIGNAL \G1|G2|LessThan1~1_combout\ : std_logic;
SIGNAL \G1|G2|LessThan1~6_combout\ : std_logic;
SIGNAL \G1|G2|LessThan2~4_combout\ : std_logic;
SIGNAL \G1|G2|LessThan2~3_combout\ : std_logic;
SIGNAL \G1|G2|LessThan2~1_combout\ : std_logic;
SIGNAL \G1|G2|LessThan2~2_combout\ : std_logic;
SIGNAL \G1|G2|LessThan2~5_combout\ : std_logic;
SIGNAL \G1|G2|LessThan2~6_combout\ : std_logic;
SIGNAL \G1|G2|LessThan2~7_combout\ : std_logic;
SIGNAL \G1|G2|outsigdata[0]~0_combout\ : std_logic;
SIGNAL \G1|G2|outsigdata[0]~1_combout\ : std_logic;
SIGNAL \G1|G2|outsigdata[1]~2_combout\ : std_logic;
SIGNAL \G1|G2|outsig~1_combout\ : std_logic;
SIGNAL \G1|G2|outsig~2_combout\ : std_logic;
SIGNAL \G1|G2|outsig~3_combout\ : std_logic;
SIGNAL \G2|Equal0~0_combout\ : std_logic;
SIGNAL \G2|state[4]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|state[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|Mux34~1_combout\ : std_logic;
SIGNAL \G2|Mux34~0_combout\ : std_logic;
SIGNAL \G2|Mux34~2_combout\ : std_logic;
SIGNAL \G2|state~16_combout\ : std_logic;
SIGNAL \G2|Equal1~0_combout\ : std_logic;
SIGNAL \G2|state~17_combout\ : std_logic;
SIGNAL \G2|Mux31~5_combout\ : std_logic;
SIGNAL \G2|Mux31~2_combout\ : std_logic;
SIGNAL \G2|Mux31~4_combout\ : std_logic;
SIGNAL \G2|Mux31~3_combout\ : std_logic;
SIGNAL \G2|Mux31~6_combout\ : std_logic;
SIGNAL \G2|Mux38~0_combout\ : std_logic;
SIGNAL \G2|state~0_combout\ : std_logic;
SIGNAL \G2|Mux31~1_combout\ : std_logic;
SIGNAL \G2|state~22_combout\ : std_logic;
SIGNAL \G2|state~4_combout\ : std_logic;
SIGNAL \G2|state~23_combout\ : std_logic;
SIGNAL \G2|state[7]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|state~5_combout\ : std_logic;
SIGNAL \G2|state~14_combout\ : std_logic;
SIGNAL \G2|Mux35~1_combout\ : std_logic;
SIGNAL \G2|Mux35~0_combout\ : std_logic;
SIGNAL \G2|Mux35~2_combout\ : std_logic;
SIGNAL \rtl~30_combout\ : std_logic;
SIGNAL \G2|state~13_combout\ : std_logic;
SIGNAL \G2|state~15_combout\ : std_logic;
SIGNAL \G2|Mux31~0_combout\ : std_logic;
SIGNAL \G2|state~3_combout\ : std_logic;
SIGNAL \G2|Mux38~1_combout\ : std_logic;
SIGNAL \G2|state~1_combout\ : std_logic;
SIGNAL \G2|Mux38~3_combout\ : std_logic;
SIGNAL \G2|Mux38~2_combout\ : std_logic;
SIGNAL \G2|Mux38~4_combout\ : std_logic;
SIGNAL \G2|state~6_combout\ : std_logic;
SIGNAL \G2|state[0]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|state~10_combout\ : std_logic;
SIGNAL \G2|state~11_combout\ : std_logic;
SIGNAL \G2|Mux36~1_combout\ : std_logic;
SIGNAL \G2|Mux36~0_combout\ : std_logic;
SIGNAL \G2|Mux36~2_combout\ : std_logic;
SIGNAL \G2|state~12_combout\ : std_logic;
SIGNAL \G2|state~19_combout\ : std_logic;
SIGNAL \G2|state~20_combout\ : std_logic;
SIGNAL \G2|state~18_combout\ : std_logic;
SIGNAL \G2|Mux32~2_combout\ : std_logic;
SIGNAL \G2|Mux32~0_combout\ : std_logic;
SIGNAL \G2|Mux32~3_combout\ : std_logic;
SIGNAL \G2|Mux32~1_combout\ : std_logic;
SIGNAL \G2|Mux32~4_combout\ : std_logic;
SIGNAL \G2|state~21_combout\ : std_logic;
SIGNAL \G2|state[6]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|state~2_combout\ : std_logic;
SIGNAL \G2|Mux37~0_combout\ : std_logic;
SIGNAL \G2|state~8_combout\ : std_logic;
SIGNAL \G2|Mux37~2_combout\ : std_logic;
SIGNAL \G2|Mux37~1_combout\ : std_logic;
SIGNAL \G2|Mux37~3_combout\ : std_logic;
SIGNAL \G2|state~7_combout\ : std_logic;
SIGNAL \G2|state~9_combout\ : std_logic;
SIGNAL \G2|Mux31~7_combout\ : std_logic;
SIGNAL \G2|Mux33~2_combout\ : std_logic;
SIGNAL \G2|Mux33~0_combout\ : std_logic;
SIGNAL \G2|Mux33~3_combout\ : std_logic;
SIGNAL \G2|Mux33~1_combout\ : std_logic;
SIGNAL \G2|Mux33~4_combout\ : std_logic;
SIGNAL \G2|state~24_combout\ : std_logic;
SIGNAL \G2|state[5]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|outsig[6]~DUPLICATE_q\ : std_logic;
SIGNAL \G3|Mux0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \G3|Mux6~1_combout\ : std_logic;
SIGNAL \G2|outsig[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G3|Mux6~0_combout\ : std_logic;
SIGNAL \G4|Q0~0_combout\ : std_logic;
SIGNAL \G2|outsig[7]~DUPLICATE_q\ : std_logic;
SIGNAL \G3|Mux5~0_combout\ : std_logic;
SIGNAL \G3|Mux5~1_combout\ : std_logic;
SIGNAL \G2|outsig[2]~DUPLICATE_q\ : std_logic;
SIGNAL \G3|Mux5~2_combout\ : std_logic;
SIGNAL \G3|Mux1~0_combout\ : std_logic;
SIGNAL \G3|Mux1~1_combout\ : std_logic;
SIGNAL \G4|Q0~5_combout\ : std_logic;
SIGNAL \G4|Q1~8_combout\ : std_logic;
SIGNAL \G4|Q2~5_combout\ : std_logic;
SIGNAL \G4|Q3~5_combout\ : std_logic;
SIGNAL \G4|Q4~5_combout\ : std_logic;
SIGNAL \G4|Q5~5_combout\ : std_logic;
SIGNAL \G3|Mux2~0_combout\ : std_logic;
SIGNAL \G3|Mux2~1_combout\ : std_logic;
SIGNAL \G4|Q0~4_combout\ : std_logic;
SIGNAL \G4|Q1~7_combout\ : std_logic;
SIGNAL \G4|Q2~4_combout\ : std_logic;
SIGNAL \G4|Q3~4_combout\ : std_logic;
SIGNAL \G4|Q4~4_combout\ : std_logic;
SIGNAL \G4|Q5~4_combout\ : std_logic;
SIGNAL \G4|Q1[0]~10_combout\ : std_logic;
SIGNAL \G3|Mux0~1_combout\ : std_logic;
SIGNAL \G3|Mux0~2_combout\ : std_logic;
SIGNAL \G4|Q1[0]~0_combout\ : std_logic;
SIGNAL \G4|Q1~9_combout\ : std_logic;
SIGNAL \G4|Q2~6_combout\ : std_logic;
SIGNAL \G4|Q3~6_combout\ : std_logic;
SIGNAL \G4|Q4~6_combout\ : std_logic;
SIGNAL \G4|Q5~6_combout\ : std_logic;
SIGNAL \G3|Mux3~0_combout\ : std_logic;
SIGNAL \G3|Mux3~1_combout\ : std_logic;
SIGNAL \G4|Q0~3_combout\ : std_logic;
SIGNAL \G4|Q1~6_combout\ : std_logic;
SIGNAL \G4|Q2~3_combout\ : std_logic;
SIGNAL \G4|Q3~3_combout\ : std_logic;
SIGNAL \G4|Q4~3_combout\ : std_logic;
SIGNAL \G4|Q5~3_combout\ : std_logic;
SIGNAL \G3|Mux4~0_combout\ : std_logic;
SIGNAL \G3|Mux4~1_combout\ : std_logic;
SIGNAL \G4|Q0~2_combout\ : std_logic;
SIGNAL \G4|Q1~5_combout\ : std_logic;
SIGNAL \G4|Q2~2_combout\ : std_logic;
SIGNAL \G4|Q3~2_combout\ : std_logic;
SIGNAL \G4|Q4~2_combout\ : std_logic;
SIGNAL \G4|Q5~2_combout\ : std_logic;
SIGNAL \G4|Q0~1_combout\ : std_logic;
SIGNAL \G4|Q1~4_combout\ : std_logic;
SIGNAL \G4|Q2~1_combout\ : std_logic;
SIGNAL \G4|Q3~1_combout\ : std_logic;
SIGNAL \G4|Q4~1_combout\ : std_logic;
SIGNAL \G4|Q5~1_combout\ : std_logic;
SIGNAL \G4|Q1~3_combout\ : std_logic;
SIGNAL \G4|Q2~0_combout\ : std_logic;
SIGNAL \G4|Q3~0_combout\ : std_logic;
SIGNAL \G4|Q4~0_combout\ : std_logic;
SIGNAL \G4|Q5~0_combout\ : std_logic;
SIGNAL \G4|Equal1~0_combout\ : std_logic;
SIGNAL \G4|Q1[0]~1_combout\ : std_logic;
SIGNAL \G2|send~q\ : std_logic;
SIGNAL \G4|Q1[0]~2_combout\ : std_logic;
SIGNAL \G1|G1|Add0~81_sumout\ : std_logic;
SIGNAL \G1|G1|count[0]~0_combout\ : std_logic;
SIGNAL \G1|G1|count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|G1|Add0~82\ : std_logic;
SIGNAL \G1|G1|Add0~5_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~6\ : std_logic;
SIGNAL \G1|G1|Add0~1_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~2\ : std_logic;
SIGNAL \G1|G1|Add0~29_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~30\ : std_logic;
SIGNAL \G1|G1|Add0~25_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~26\ : std_logic;
SIGNAL \G1|G1|Add0~21_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~22\ : std_logic;
SIGNAL \G1|G1|Add0~17_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~18\ : std_logic;
SIGNAL \G1|G1|Add0~13_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~14\ : std_logic;
SIGNAL \G1|G1|Add0~37_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~38\ : std_logic;
SIGNAL \G1|G1|Add0~65_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~66\ : std_logic;
SIGNAL \G1|G1|Add0~9_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~10\ : std_logic;
SIGNAL \G1|G1|Add0~53_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~54\ : std_logic;
SIGNAL \G1|G1|Add0~49_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~50\ : std_logic;
SIGNAL \G1|G1|Add0~45_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~46\ : std_logic;
SIGNAL \G1|G1|Add0~41_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~42\ : std_logic;
SIGNAL \G1|G1|Add0~33_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~34\ : std_logic;
SIGNAL \G1|G1|Add0~77_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~78\ : std_logic;
SIGNAL \G1|G1|Add0~73_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~74\ : std_logic;
SIGNAL \G1|G1|Add0~69_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~70\ : std_logic;
SIGNAL \G1|G1|Add0~85_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~86\ : std_logic;
SIGNAL \G1|G1|Add0~89_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~90\ : std_logic;
SIGNAL \G1|G1|Add0~93_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~94\ : std_logic;
SIGNAL \G1|G1|Add0~97_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~98\ : std_logic;
SIGNAL \G1|G1|Add0~101_sumout\ : std_logic;
SIGNAL \G1|G1|Equal0~4_combout\ : std_logic;
SIGNAL \G1|G1|Equal0~2_combout\ : std_logic;
SIGNAL \G1|G1|Add0~102\ : std_logic;
SIGNAL \G1|G1|Add0~105_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~106\ : std_logic;
SIGNAL \G1|G1|Add0~109_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~110\ : std_logic;
SIGNAL \G1|G1|Add0~113_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~114\ : std_logic;
SIGNAL \G1|G1|Add0~117_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~118\ : std_logic;
SIGNAL \G1|G1|Add0~121_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~122\ : std_logic;
SIGNAL \G1|G1|Add0~125_sumout\ : std_logic;
SIGNAL \G1|G1|Equal0~5_combout\ : std_logic;
SIGNAL \G1|G1|Equal0~0_combout\ : std_logic;
SIGNAL \G1|G1|Equal0~1_combout\ : std_logic;
SIGNAL \G1|G1|Add0~126\ : std_logic;
SIGNAL \G1|G1|Add0~57_sumout\ : std_logic;
SIGNAL \G1|G1|Add0~58\ : std_logic;
SIGNAL \G1|G1|Add0~61_sumout\ : std_logic;
SIGNAL \G1|G1|Equal0~3_combout\ : std_logic;
SIGNAL \G1|G1|Equal0~6_combout\ : std_logic;
SIGNAL \G1|G1|tmp~0_combout\ : std_logic;
SIGNAL \G1|G1|tmp~q\ : std_logic;
SIGNAL \G1|G2|countt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \G1|G2|idlecount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \G4|Q2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G1|G1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \G1|G2|outsig\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \G4|Q0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G1|G2|outsigdata\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \G4|Q1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G4|Q3\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G4|Q4\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G4|Q5\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G2|outsig\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \G2|state\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \G2|ALT_INV_state[5]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_state[7]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_state[6]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_state[4]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_state[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_state[0]~DUPLICATE_q\ : std_logic;
SIGNAL \G1|G1|ALT_INV_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_outsig[7]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_outsig[6]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_outsig[3]~DUPLICATE_q\ : std_logic;
SIGNAL \G2|ALT_INV_outsig[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \G3|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Q1[0]~10_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux38~4_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux38~3_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux38~2_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux37~3_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux37~2_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux37~1_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux36~2_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux36~1_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux35~2_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux35~1_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux34~2_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux34~1_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux33~4_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux33~3_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux33~2_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux33~1_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux31~7_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux31~6_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux31~5_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux31~4_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux31~3_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux31~2_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~22_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~20_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~19_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~18_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux32~4_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux32~3_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux32~2_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux32~1_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~16_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~14_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~13_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~30_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~11_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~10_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~8_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~7_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_outsig~2_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~5_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~4_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~3_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~2_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~1_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux38~1_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_state\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \G2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_outsig\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \G1|G2|ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \G1|G1|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \G1|G1|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \G1|G1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \G1|G1|ALT_INV_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \G1|G1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \G1|G1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \G1|G1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \G1|G1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Q1[0]~1_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \G4|ALT_INV_Q1[0]~0_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \G2|ALT_INV_send~q\ : std_logic;
SIGNAL \G3|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \G3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \G2|ALT_INV_outsig\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \G3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_idlecount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \G1|G2|ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_outsig~0_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_countt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \G1|G2|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \G1|G1|ALT_INV_tmp~q\ : std_logic;
SIGNAL \G4|ALT_INV_Q5\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G4|ALT_INV_Q4\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G4|ALT_INV_Q3\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G4|ALT_INV_Q2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G4|ALT_INV_Q1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G4|ALT_INV_Q0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \G1|G1|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \G1|G2|ALT_INV_Add0~49_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_A <= A;
B <= ww_B;
L0 <= ww_L0;
L1 <= ww_L1;
L2 <= ww_L2;
L3 <= ww_L3;
L4 <= ww_L4;
L5 <= ww_L5;
clkout <= ww_clkout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\G2|ALT_INV_state[5]~DUPLICATE_q\ <= NOT \G2|state[5]~DUPLICATE_q\;
\G2|ALT_INV_state[7]~DUPLICATE_q\ <= NOT \G2|state[7]~DUPLICATE_q\;
\G2|ALT_INV_state[6]~DUPLICATE_q\ <= NOT \G2|state[6]~DUPLICATE_q\;
\G2|ALT_INV_state[4]~DUPLICATE_q\ <= NOT \G2|state[4]~DUPLICATE_q\;
\G2|ALT_INV_state[3]~DUPLICATE_q\ <= NOT \G2|state[3]~DUPLICATE_q\;
\G2|ALT_INV_state[0]~DUPLICATE_q\ <= NOT \G2|state[0]~DUPLICATE_q\;
\G1|G1|ALT_INV_count[0]~DUPLICATE_q\ <= NOT \G1|G1|count[0]~DUPLICATE_q\;
\G2|ALT_INV_outsig[7]~DUPLICATE_q\ <= NOT \G2|outsig[7]~DUPLICATE_q\;
\G2|ALT_INV_outsig[6]~DUPLICATE_q\ <= NOT \G2|outsig[6]~DUPLICATE_q\;
\G2|ALT_INV_outsig[3]~DUPLICATE_q\ <= NOT \G2|outsig[3]~DUPLICATE_q\;
\G2|ALT_INV_outsig[2]~DUPLICATE_q\ <= NOT \G2|outsig[2]~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\G3|ALT_INV_Mux5~2_combout\ <= NOT \G3|Mux5~2_combout\;
\G3|ALT_INV_Mux5~1_combout\ <= NOT \G3|Mux5~1_combout\;
\G3|ALT_INV_Mux5~0_combout\ <= NOT \G3|Mux5~0_combout\;
\G4|ALT_INV_Q1[0]~10_combout\ <= NOT \G4|Q1[0]~10_combout\;
\G2|ALT_INV_Mux38~4_combout\ <= NOT \G2|Mux38~4_combout\;
\G2|ALT_INV_Mux38~3_combout\ <= NOT \G2|Mux38~3_combout\;
\G2|ALT_INV_Mux38~2_combout\ <= NOT \G2|Mux38~2_combout\;
\G2|ALT_INV_Mux37~3_combout\ <= NOT \G2|Mux37~3_combout\;
\G2|ALT_INV_Mux37~2_combout\ <= NOT \G2|Mux37~2_combout\;
\G2|ALT_INV_Mux37~1_combout\ <= NOT \G2|Mux37~1_combout\;
\G2|ALT_INV_Mux36~2_combout\ <= NOT \G2|Mux36~2_combout\;
\G2|ALT_INV_Mux36~1_combout\ <= NOT \G2|Mux36~1_combout\;
\G2|ALT_INV_Mux36~0_combout\ <= NOT \G2|Mux36~0_combout\;
\G2|ALT_INV_Mux35~2_combout\ <= NOT \G2|Mux35~2_combout\;
\G2|ALT_INV_Mux35~1_combout\ <= NOT \G2|Mux35~1_combout\;
\G2|ALT_INV_Mux35~0_combout\ <= NOT \G2|Mux35~0_combout\;
\G2|ALT_INV_Mux34~2_combout\ <= NOT \G2|Mux34~2_combout\;
\G2|ALT_INV_Mux34~1_combout\ <= NOT \G2|Mux34~1_combout\;
\G2|ALT_INV_Mux34~0_combout\ <= NOT \G2|Mux34~0_combout\;
\G1|G2|ALT_INV_LessThan0~11_combout\ <= NOT \G1|G2|LessThan0~11_combout\;
\G2|ALT_INV_Mux33~4_combout\ <= NOT \G2|Mux33~4_combout\;
\G2|ALT_INV_Mux33~3_combout\ <= NOT \G2|Mux33~3_combout\;
\G2|ALT_INV_Mux33~2_combout\ <= NOT \G2|Mux33~2_combout\;
\G2|ALT_INV_Mux33~1_combout\ <= NOT \G2|Mux33~1_combout\;
\G2|ALT_INV_Mux33~0_combout\ <= NOT \G2|Mux33~0_combout\;
\G2|ALT_INV_Mux31~7_combout\ <= NOT \G2|Mux31~7_combout\;
\G2|ALT_INV_Mux31~6_combout\ <= NOT \G2|Mux31~6_combout\;
\G2|ALT_INV_Mux31~5_combout\ <= NOT \G2|Mux31~5_combout\;
\G2|ALT_INV_Mux31~4_combout\ <= NOT \G2|Mux31~4_combout\;
\G2|ALT_INV_Mux31~3_combout\ <= NOT \G2|Mux31~3_combout\;
\G2|ALT_INV_Mux31~2_combout\ <= NOT \G2|Mux31~2_combout\;
\G2|ALT_INV_state~22_combout\ <= NOT \G2|state~22_combout\;
\G2|ALT_INV_Mux31~1_combout\ <= NOT \G2|Mux31~1_combout\;
\G2|ALT_INV_state~20_combout\ <= NOT \G2|state~20_combout\;
\G2|ALT_INV_state~19_combout\ <= NOT \G2|state~19_combout\;
\G2|ALT_INV_state~18_combout\ <= NOT \G2|state~18_combout\;
\G2|ALT_INV_Mux32~4_combout\ <= NOT \G2|Mux32~4_combout\;
\G2|ALT_INV_Mux32~3_combout\ <= NOT \G2|Mux32~3_combout\;
\G2|ALT_INV_Mux32~2_combout\ <= NOT \G2|Mux32~2_combout\;
\G2|ALT_INV_Mux32~1_combout\ <= NOT \G2|Mux32~1_combout\;
\G2|ALT_INV_Mux32~0_combout\ <= NOT \G2|Mux32~0_combout\;
\G2|ALT_INV_state~16_combout\ <= NOT \G2|state~16_combout\;
\G2|ALT_INV_state~14_combout\ <= NOT \G2|state~14_combout\;
\G2|ALT_INV_state~13_combout\ <= NOT \G2|state~13_combout\;
\ALT_INV_rtl~30_combout\ <= NOT \rtl~30_combout\;
\G2|ALT_INV_state~11_combout\ <= NOT \G2|state~11_combout\;
\G2|ALT_INV_state~10_combout\ <= NOT \G2|state~10_combout\;
\G2|ALT_INV_state~8_combout\ <= NOT \G2|state~8_combout\;
\G2|ALT_INV_Mux37~0_combout\ <= NOT \G2|Mux37~0_combout\;
\G2|ALT_INV_state~7_combout\ <= NOT \G2|state~7_combout\;
\G1|G2|ALT_INV_outsig~2_combout\ <= NOT \G1|G2|outsig~2_combout\;
\G2|ALT_INV_state~5_combout\ <= NOT \G2|state~5_combout\;
\G2|ALT_INV_state~4_combout\ <= NOT \G2|state~4_combout\;
\G2|ALT_INV_state~3_combout\ <= NOT \G2|state~3_combout\;
\G2|ALT_INV_Mux31~0_combout\ <= NOT \G2|Mux31~0_combout\;
\G2|ALT_INV_state~2_combout\ <= NOT \G2|state~2_combout\;
\G2|ALT_INV_state~1_combout\ <= NOT \G2|state~1_combout\;
\G2|ALT_INV_Mux38~1_combout\ <= NOT \G2|Mux38~1_combout\;
\G2|ALT_INV_state~0_combout\ <= NOT \G2|state~0_combout\;
\G2|ALT_INV_Mux38~0_combout\ <= NOT \G2|Mux38~0_combout\;
\G2|ALT_INV_state\(5) <= NOT \G2|state\(5);
\G2|ALT_INV_state\(7) <= NOT \G2|state\(7);
\G2|ALT_INV_state\(6) <= NOT \G2|state\(6);
\G2|ALT_INV_state\(4) <= NOT \G2|state\(4);
\G2|ALT_INV_state\(3) <= NOT \G2|state\(3);
\G2|ALT_INV_state\(2) <= NOT \G2|state\(2);
\G2|ALT_INV_state\(1) <= NOT \G2|state\(1);
\G2|ALT_INV_Equal1~0_combout\ <= NOT \G2|Equal1~0_combout\;
\G1|G2|ALT_INV_outsig\(1) <= NOT \G1|G2|outsig\(1);
\G2|ALT_INV_state\(0) <= NOT \G2|state\(0);
\G1|G2|ALT_INV_LessThan0~10_combout\ <= NOT \G1|G2|LessThan0~10_combout\;
\G1|G1|ALT_INV_Equal0~6_combout\ <= NOT \G1|G1|Equal0~6_combout\;
\G1|G1|ALT_INV_Equal0~5_combout\ <= NOT \G1|G1|Equal0~5_combout\;
\G1|G1|ALT_INV_Equal0~4_combout\ <= NOT \G1|G1|Equal0~4_combout\;
\G1|G1|ALT_INV_count\(0) <= NOT \G1|G1|count\(0);
\G1|G1|ALT_INV_Equal0~3_combout\ <= NOT \G1|G1|Equal0~3_combout\;
\G1|G1|ALT_INV_Equal0~2_combout\ <= NOT \G1|G1|Equal0~2_combout\;
\G1|G1|ALT_INV_Equal0~1_combout\ <= NOT \G1|G1|Equal0~1_combout\;
\G1|G1|ALT_INV_Equal0~0_combout\ <= NOT \G1|G1|Equal0~0_combout\;
\G4|ALT_INV_Q1[0]~1_combout\ <= NOT \G4|Q1[0]~1_combout\;
\G4|ALT_INV_Equal1~0_combout\ <= NOT \G4|Equal1~0_combout\;
\G3|ALT_INV_Mux1~1_combout\ <= NOT \G3|Mux1~1_combout\;
\G3|ALT_INV_Mux1~0_combout\ <= NOT \G3|Mux1~0_combout\;
\G3|ALT_INV_Mux2~1_combout\ <= NOT \G3|Mux2~1_combout\;
\G3|ALT_INV_Mux2~0_combout\ <= NOT \G3|Mux2~0_combout\;
\G3|ALT_INV_Mux4~1_combout\ <= NOT \G3|Mux4~1_combout\;
\G3|ALT_INV_Mux4~0_combout\ <= NOT \G3|Mux4~0_combout\;
\G3|ALT_INV_Mux3~1_combout\ <= NOT \G3|Mux3~1_combout\;
\G3|ALT_INV_Mux3~0_combout\ <= NOT \G3|Mux3~0_combout\;
\G4|ALT_INV_Q1[0]~0_combout\ <= NOT \G4|Q1[0]~0_combout\;
\G3|ALT_INV_Mux0~2_combout\ <= NOT \G3|Mux0~2_combout\;
\G3|ALT_INV_Mux0~1_combout\ <= NOT \G3|Mux0~1_combout\;
\G2|ALT_INV_send~q\ <= NOT \G2|send~q\;
\G3|ALT_INV_Mux6~1_combout\ <= NOT \G3|Mux6~1_combout\;
\G3|ALT_INV_Mux0~0_combout\ <= NOT \G3|Mux0~0_combout\;
\G2|ALT_INV_outsig\(5) <= NOT \G2|outsig\(5);
\G2|ALT_INV_outsig\(7) <= NOT \G2|outsig\(7);
\G2|ALT_INV_outsig\(6) <= NOT \G2|outsig\(6);
\G2|ALT_INV_outsig\(4) <= NOT \G2|outsig\(4);
\G3|ALT_INV_Mux6~0_combout\ <= NOT \G3|Mux6~0_combout\;
\G2|ALT_INV_outsig\(3) <= NOT \G2|outsig\(3);
\G2|ALT_INV_outsig\(2) <= NOT \G2|outsig\(2);
\G2|ALT_INV_outsig\(1) <= NOT \G2|outsig\(1);
\G2|ALT_INV_outsig\(0) <= NOT \G2|outsig\(0);
\G1|G2|ALT_INV_LessThan2~7_combout\ <= NOT \G1|G2|LessThan2~7_combout\;
\G1|G2|ALT_INV_LessThan2~6_combout\ <= NOT \G1|G2|LessThan2~6_combout\;
\G1|G2|ALT_INV_LessThan2~5_combout\ <= NOT \G1|G2|LessThan2~5_combout\;
\G1|G2|ALT_INV_LessThan2~4_combout\ <= NOT \G1|G2|LessThan2~4_combout\;
\G1|G2|ALT_INV_LessThan2~3_combout\ <= NOT \G1|G2|LessThan2~3_combout\;
\G1|G2|ALT_INV_LessThan2~2_combout\ <= NOT \G1|G2|LessThan2~2_combout\;
\G1|G2|ALT_INV_LessThan2~1_combout\ <= NOT \G1|G2|LessThan2~1_combout\;
\G1|G2|ALT_INV_LessThan0~9_combout\ <= NOT \G1|G2|LessThan0~9_combout\;
\G1|G2|ALT_INV_LessThan0~8_combout\ <= NOT \G1|G2|LessThan0~8_combout\;
\G1|G2|ALT_INV_LessThan0~7_combout\ <= NOT \G1|G2|LessThan0~7_combout\;
\G1|G2|ALT_INV_LessThan0~6_combout\ <= NOT \G1|G2|LessThan0~6_combout\;
\G1|G2|ALT_INV_LessThan0~5_combout\ <= NOT \G1|G2|LessThan0~5_combout\;
\G1|G2|ALT_INV_LessThan0~4_combout\ <= NOT \G1|G2|LessThan0~4_combout\;
\G1|G2|ALT_INV_LessThan0~3_combout\ <= NOT \G1|G2|LessThan0~3_combout\;
\G1|G2|ALT_INV_LessThan0~2_combout\ <= NOT \G1|G2|LessThan0~2_combout\;
\G1|G2|ALT_INV_LessThan0~1_combout\ <= NOT \G1|G2|LessThan0~1_combout\;
\G1|G2|ALT_INV_LessThan0~0_combout\ <= NOT \G1|G2|LessThan0~0_combout\;
\G1|G2|ALT_INV_idlecount\(0) <= NOT \G1|G2|idlecount\(0);
\G1|G2|ALT_INV_LessThan1~6_combout\ <= NOT \G1|G2|LessThan1~6_combout\;
\G1|G2|ALT_INV_outsig~0_combout\ <= NOT \G1|G2|outsig~0_combout\;
\G1|G2|ALT_INV_LessThan2~0_combout\ <= NOT \G1|G2|LessThan2~0_combout\;
\G1|G2|ALT_INV_LessThan1~5_combout\ <= NOT \G1|G2|LessThan1~5_combout\;
\G1|G2|ALT_INV_LessThan1~4_combout\ <= NOT \G1|G2|LessThan1~4_combout\;
\G1|G2|ALT_INV_LessThan1~3_combout\ <= NOT \G1|G2|LessThan1~3_combout\;
\G1|G2|ALT_INV_LessThan1~2_combout\ <= NOT \G1|G2|LessThan1~2_combout\;
\G1|G2|ALT_INV_countt\(0) <= NOT \G1|G2|countt\(0);
\G1|G2|ALT_INV_LessThan1~1_combout\ <= NOT \G1|G2|LessThan1~1_combout\;
\G1|G2|ALT_INV_LessThan1~0_combout\ <= NOT \G1|G2|LessThan1~0_combout\;
\G1|G1|ALT_INV_tmp~q\ <= NOT \G1|G1|tmp~q\;
\G4|ALT_INV_Q5\(6) <= NOT \G4|Q5\(6);
\G4|ALT_INV_Q5\(5) <= NOT \G4|Q5\(5);
\G4|ALT_INV_Q5\(4) <= NOT \G4|Q5\(4);
\G4|ALT_INV_Q5\(3) <= NOT \G4|Q5\(3);
\G4|ALT_INV_Q5\(2) <= NOT \G4|Q5\(2);
\G4|ALT_INV_Q5\(1) <= NOT \G4|Q5\(1);
\G4|ALT_INV_Q5\(0) <= NOT \G4|Q5\(0);
\G4|ALT_INV_Q4\(6) <= NOT \G4|Q4\(6);
\G4|ALT_INV_Q4\(5) <= NOT \G4|Q4\(5);
\G4|ALT_INV_Q4\(4) <= NOT \G4|Q4\(4);
\G4|ALT_INV_Q4\(3) <= NOT \G4|Q4\(3);
\G4|ALT_INV_Q4\(2) <= NOT \G4|Q4\(2);
\G4|ALT_INV_Q4\(1) <= NOT \G4|Q4\(1);
\G4|ALT_INV_Q4\(0) <= NOT \G4|Q4\(0);
\G4|ALT_INV_Q3\(6) <= NOT \G4|Q3\(6);
\G4|ALT_INV_Q3\(5) <= NOT \G4|Q3\(5);
\G4|ALT_INV_Q3\(4) <= NOT \G4|Q3\(4);
\G4|ALT_INV_Q3\(3) <= NOT \G4|Q3\(3);
\G4|ALT_INV_Q3\(2) <= NOT \G4|Q3\(2);
\G4|ALT_INV_Q3\(1) <= NOT \G4|Q3\(1);
\G4|ALT_INV_Q3\(0) <= NOT \G4|Q3\(0);
\G4|ALT_INV_Q2\(6) <= NOT \G4|Q2\(6);
\G4|ALT_INV_Q2\(5) <= NOT \G4|Q2\(5);
\G4|ALT_INV_Q2\(4) <= NOT \G4|Q2\(4);
\G4|ALT_INV_Q2\(3) <= NOT \G4|Q2\(3);
\G4|ALT_INV_Q2\(2) <= NOT \G4|Q2\(2);
\G4|ALT_INV_Q2\(1) <= NOT \G4|Q2\(1);
\G4|ALT_INV_Q2\(0) <= NOT \G4|Q2\(0);
\G4|ALT_INV_Q1\(6) <= NOT \G4|Q1\(6);
\G4|ALT_INV_Q1\(5) <= NOT \G4|Q1\(5);
\G4|ALT_INV_Q1\(4) <= NOT \G4|Q1\(4);
\G4|ALT_INV_Q1\(3) <= NOT \G4|Q1\(3);
\G4|ALT_INV_Q1\(2) <= NOT \G4|Q1\(2);
\G4|ALT_INV_Q1\(1) <= NOT \G4|Q1\(1);
\G4|ALT_INV_Q1\(0) <= NOT \G4|Q1\(0);
\G4|ALT_INV_Q0\(6) <= NOT \G4|Q0\(6);
\G4|ALT_INV_Q0\(5) <= NOT \G4|Q0\(5);
\G4|ALT_INV_Q0\(4) <= NOT \G4|Q0\(4);
\G4|ALT_INV_Q0\(3) <= NOT \G4|Q0\(3);
\G4|ALT_INV_Q0\(2) <= NOT \G4|Q0\(2);
\G4|ALT_INV_Q0\(1) <= NOT \G4|Q0\(1);
\G4|ALT_INV_Q0\(0) <= NOT \G4|Q0\(0);
\G1|G1|ALT_INV_Add0~81_sumout\ <= NOT \G1|G1|Add0~81_sumout\;
\G1|G2|ALT_INV_outsig\(0) <= NOT \G1|G2|outsig\(0);
\G1|G2|ALT_INV_Add1~5_sumout\ <= NOT \G1|G2|Add1~5_sumout\;
\G1|G2|ALT_INV_Add0~49_sumout\ <= NOT \G1|G2|Add0~49_sumout\;
\G1|G1|ALT_INV_count\(29) <= NOT \G1|G1|count\(29);
\G1|G1|ALT_INV_count\(28) <= NOT \G1|G1|count\(28);
\G1|G1|ALT_INV_count\(27) <= NOT \G1|G1|count\(27);
\G1|G1|ALT_INV_count\(26) <= NOT \G1|G1|count\(26);
\G1|G1|ALT_INV_count\(25) <= NOT \G1|G1|count\(25);
\G1|G1|ALT_INV_count\(24) <= NOT \G1|G1|count\(24);
\G1|G1|ALT_INV_count\(23) <= NOT \G1|G1|count\(23);
\G1|G1|ALT_INV_count\(22) <= NOT \G1|G1|count\(22);
\G1|G1|ALT_INV_count\(21) <= NOT \G1|G1|count\(21);
\G1|G1|ALT_INV_count\(20) <= NOT \G1|G1|count\(20);
\G1|G1|ALT_INV_count\(19) <= NOT \G1|G1|count\(19);
\G1|G1|ALT_INV_count\(16) <= NOT \G1|G1|count\(16);
\G1|G1|ALT_INV_count\(17) <= NOT \G1|G1|count\(17);
\G1|G1|ALT_INV_count\(18) <= NOT \G1|G1|count\(18);
\G1|G1|ALT_INV_count\(9) <= NOT \G1|G1|count\(9);
\G1|G1|ALT_INV_count\(31) <= NOT \G1|G1|count\(31);
\G1|G1|ALT_INV_count\(30) <= NOT \G1|G1|count\(30);
\G1|G1|ALT_INV_count\(11) <= NOT \G1|G1|count\(11);
\G1|G1|ALT_INV_count\(12) <= NOT \G1|G1|count\(12);
\G1|G1|ALT_INV_count\(13) <= NOT \G1|G1|count\(13);
\G1|G1|ALT_INV_count\(14) <= NOT \G1|G1|count\(14);
\G1|G1|ALT_INV_count\(8) <= NOT \G1|G1|count\(8);
\G1|G1|ALT_INV_count\(15) <= NOT \G1|G1|count\(15);
\G1|G1|ALT_INV_count\(3) <= NOT \G1|G1|count\(3);
\G1|G1|ALT_INV_count\(4) <= NOT \G1|G1|count\(4);
\G1|G1|ALT_INV_count\(5) <= NOT \G1|G1|count\(5);
\G1|G1|ALT_INV_count\(6) <= NOT \G1|G1|count\(6);
\G1|G1|ALT_INV_count\(7) <= NOT \G1|G1|count\(7);
\G1|G1|ALT_INV_count\(10) <= NOT \G1|G1|count\(10);
\G1|G1|ALT_INV_count\(1) <= NOT \G1|G1|count\(1);
\G1|G1|ALT_INV_count\(2) <= NOT \G1|G1|count\(2);
\G1|G2|ALT_INV_idlecount\(27) <= NOT \G1|G2|idlecount\(27);
\G1|G2|ALT_INV_idlecount\(28) <= NOT \G1|G2|idlecount\(28);
\G1|G2|ALT_INV_idlecount\(29) <= NOT \G1|G2|idlecount\(29);
\G1|G2|ALT_INV_idlecount\(30) <= NOT \G1|G2|idlecount\(30);
\G1|G2|ALT_INV_idlecount\(23) <= NOT \G1|G2|idlecount\(23);
\G1|G2|ALT_INV_idlecount\(25) <= NOT \G1|G2|idlecount\(25);
\G1|G2|ALT_INV_idlecount\(26) <= NOT \G1|G2|idlecount\(26);
\G1|G2|ALT_INV_idlecount\(19) <= NOT \G1|G2|idlecount\(19);
\G1|G2|ALT_INV_idlecount\(20) <= NOT \G1|G2|idlecount\(20);
\G1|G2|ALT_INV_idlecount\(21) <= NOT \G1|G2|idlecount\(21);
\G1|G2|ALT_INV_idlecount\(22) <= NOT \G1|G2|idlecount\(22);
\G1|G2|ALT_INV_idlecount\(24) <= NOT \G1|G2|idlecount\(24);
\G1|G2|ALT_INV_idlecount\(18) <= NOT \G1|G2|idlecount\(18);
\G1|G2|ALT_INV_idlecount\(15) <= NOT \G1|G2|idlecount\(15);
\G1|G2|ALT_INV_idlecount\(17) <= NOT \G1|G2|idlecount\(17);
\G1|G2|ALT_INV_idlecount\(7) <= NOT \G1|G2|idlecount\(7);
\G1|G2|ALT_INV_idlecount\(8) <= NOT \G1|G2|idlecount\(8);
\G1|G2|ALT_INV_idlecount\(9) <= NOT \G1|G2|idlecount\(9);
\G1|G2|ALT_INV_idlecount\(10) <= NOT \G1|G2|idlecount\(10);
\G1|G2|ALT_INV_idlecount\(6) <= NOT \G1|G2|idlecount\(6);
\G1|G2|ALT_INV_idlecount\(14) <= NOT \G1|G2|idlecount\(14);
\G1|G2|ALT_INV_idlecount\(11) <= NOT \G1|G2|idlecount\(11);
\G1|G2|ALT_INV_idlecount\(12) <= NOT \G1|G2|idlecount\(12);
\G1|G2|ALT_INV_idlecount\(13) <= NOT \G1|G2|idlecount\(13);
\G1|G2|ALT_INV_idlecount\(16) <= NOT \G1|G2|idlecount\(16);
\G1|G2|ALT_INV_idlecount\(1) <= NOT \G1|G2|idlecount\(1);
\G1|G2|ALT_INV_idlecount\(2) <= NOT \G1|G2|idlecount\(2);
\G1|G2|ALT_INV_idlecount\(3) <= NOT \G1|G2|idlecount\(3);
\G1|G2|ALT_INV_idlecount\(4) <= NOT \G1|G2|idlecount\(4);
\G1|G2|ALT_INV_idlecount\(5) <= NOT \G1|G2|idlecount\(5);
\G1|G2|ALT_INV_idlecount\(31) <= NOT \G1|G2|idlecount\(31);
\G1|G2|ALT_INV_countt\(29) <= NOT \G1|G2|countt\(29);
\G1|G2|ALT_INV_countt\(28) <= NOT \G1|G2|countt\(28);
\G1|G2|ALT_INV_countt\(27) <= NOT \G1|G2|countt\(27);
\G1|G2|ALT_INV_countt\(26) <= NOT \G1|G2|countt\(26);
\G1|G2|ALT_INV_countt\(25) <= NOT \G1|G2|countt\(25);
\G1|G2|ALT_INV_countt\(23) <= NOT \G1|G2|countt\(23);
\G1|G2|ALT_INV_countt\(20) <= NOT \G1|G2|countt\(20);
\G1|G2|ALT_INV_countt\(19) <= NOT \G1|G2|countt\(19);
\G1|G2|ALT_INV_countt\(18) <= NOT \G1|G2|countt\(18);
\G1|G2|ALT_INV_countt\(24) <= NOT \G1|G2|countt\(24);
\G1|G2|ALT_INV_countt\(22) <= NOT \G1|G2|countt\(22);
\G1|G2|ALT_INV_countt\(21) <= NOT \G1|G2|countt\(21);
\G1|G2|ALT_INV_countt\(15) <= NOT \G1|G2|countt\(15);
\G1|G2|ALT_INV_countt\(17) <= NOT \G1|G2|countt\(17);
\G1|G2|ALT_INV_countt\(5) <= NOT \G1|G2|countt\(5);
\G1|G2|ALT_INV_countt\(4) <= NOT \G1|G2|countt\(4);
\G1|G2|ALT_INV_countt\(3) <= NOT \G1|G2|countt\(3);
\G1|G2|ALT_INV_countt\(2) <= NOT \G1|G2|countt\(2);
\G1|G2|ALT_INV_countt\(1) <= NOT \G1|G2|countt\(1);
\G1|G2|ALT_INV_countt\(6) <= NOT \G1|G2|countt\(6);
\G1|G2|ALT_INV_countt\(12) <= NOT \G1|G2|countt\(12);
\G1|G2|ALT_INV_countt\(11) <= NOT \G1|G2|countt\(11);
\G1|G2|ALT_INV_countt\(14) <= NOT \G1|G2|countt\(14);
\G1|G2|ALT_INV_countt\(13) <= NOT \G1|G2|countt\(13);
\G1|G2|ALT_INV_countt\(16) <= NOT \G1|G2|countt\(16);
\G1|G2|ALT_INV_countt\(10) <= NOT \G1|G2|countt\(10);
\G1|G2|ALT_INV_countt\(9) <= NOT \G1|G2|countt\(9);
\G1|G2|ALT_INV_countt\(8) <= NOT \G1|G2|countt\(8);
\G1|G2|ALT_INV_countt\(7) <= NOT \G1|G2|countt\(7);
\G1|G2|ALT_INV_countt\(30) <= NOT \G1|G2|countt\(30);
\G1|G2|ALT_INV_countt\(31) <= NOT \G1|G2|countt\(31);

-- Location: IOOBUF_X52_Y0_N2
\B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G2|outsigdata\(0),
	devoe => ww_devoe,
	o => ww_B(0));

-- Location: IOOBUF_X52_Y0_N19
\B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G2|outsigdata\(1),
	devoe => ww_devoe,
	o => ww_B(1));

-- Location: IOOBUF_X89_Y8_N39
\L0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q0\(0),
	devoe => ww_devoe,
	o => ww_L0(0));

-- Location: IOOBUF_X89_Y11_N79
\L0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q0\(1),
	devoe => ww_devoe,
	o => ww_L0(1));

-- Location: IOOBUF_X89_Y11_N96
\L0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q0\(2),
	devoe => ww_devoe,
	o => ww_L0(2));

-- Location: IOOBUF_X89_Y4_N79
\L0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q0\(3),
	devoe => ww_devoe,
	o => ww_L0(3));

-- Location: IOOBUF_X89_Y13_N56
\L0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q0\(4),
	devoe => ww_devoe,
	o => ww_L0(4));

-- Location: IOOBUF_X89_Y13_N39
\L0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q0\(5),
	devoe => ww_devoe,
	o => ww_L0(5));

-- Location: IOOBUF_X89_Y4_N96
\L0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q0\(6),
	devoe => ww_devoe,
	o => ww_L0(6));

-- Location: IOOBUF_X89_Y6_N39
\L1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q1\(0),
	devoe => ww_devoe,
	o => ww_L1(0));

-- Location: IOOBUF_X89_Y6_N56
\L1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q1\(1),
	devoe => ww_devoe,
	o => ww_L1(1));

-- Location: IOOBUF_X89_Y16_N39
\L1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q1\(2),
	devoe => ww_devoe,
	o => ww_L1(2));

-- Location: IOOBUF_X89_Y16_N56
\L1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q1\(3),
	devoe => ww_devoe,
	o => ww_L1(3));

-- Location: IOOBUF_X89_Y15_N39
\L1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q1\(4),
	devoe => ww_devoe,
	o => ww_L1(4));

-- Location: IOOBUF_X89_Y15_N56
\L1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q1\(5),
	devoe => ww_devoe,
	o => ww_L1(5));

-- Location: IOOBUF_X89_Y8_N56
\L1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q1\(6),
	devoe => ww_devoe,
	o => ww_L1(6));

-- Location: IOOBUF_X89_Y9_N22
\L2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q2\(0),
	devoe => ww_devoe,
	o => ww_L2(0));

-- Location: IOOBUF_X89_Y23_N39
\L2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q2\(1),
	devoe => ww_devoe,
	o => ww_L2(1));

-- Location: IOOBUF_X89_Y23_N56
\L2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q2\(2),
	devoe => ww_devoe,
	o => ww_L2(2));

-- Location: IOOBUF_X89_Y20_N79
\L2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q2\(3),
	devoe => ww_devoe,
	o => ww_L2(3));

-- Location: IOOBUF_X89_Y25_N39
\L2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q2\(4),
	devoe => ww_devoe,
	o => ww_L2(4));

-- Location: IOOBUF_X89_Y20_N96
\L2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q2\(5),
	devoe => ww_devoe,
	o => ww_L2(5));

-- Location: IOOBUF_X89_Y25_N56
\L2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q2\(6),
	devoe => ww_devoe,
	o => ww_L2(6));

-- Location: IOOBUF_X89_Y16_N5
\L3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q3\(0),
	devoe => ww_devoe,
	o => ww_L3(0));

-- Location: IOOBUF_X89_Y16_N22
\L3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q3\(1),
	devoe => ww_devoe,
	o => ww_L3(1));

-- Location: IOOBUF_X89_Y4_N45
\L3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q3\(2),
	devoe => ww_devoe,
	o => ww_L3(2));

-- Location: IOOBUF_X89_Y4_N62
\L3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q3\(3),
	devoe => ww_devoe,
	o => ww_L3(3));

-- Location: IOOBUF_X89_Y21_N39
\L3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q3\(4),
	devoe => ww_devoe,
	o => ww_L3(4));

-- Location: IOOBUF_X89_Y11_N62
\L3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q3\(5),
	devoe => ww_devoe,
	o => ww_L3(5));

-- Location: IOOBUF_X89_Y9_N5
\L3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q3\(6),
	devoe => ww_devoe,
	o => ww_L3(6));

-- Location: IOOBUF_X89_Y11_N45
\L4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q4\(0),
	devoe => ww_devoe,
	o => ww_L4(0));

-- Location: IOOBUF_X89_Y13_N5
\L4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q4\(1),
	devoe => ww_devoe,
	o => ww_L4(1));

-- Location: IOOBUF_X89_Y13_N22
\L4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q4\(2),
	devoe => ww_devoe,
	o => ww_L4(2));

-- Location: IOOBUF_X89_Y8_N22
\L4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q4\(3),
	devoe => ww_devoe,
	o => ww_L4(3));

-- Location: IOOBUF_X89_Y15_N22
\L4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q4\(4),
	devoe => ww_devoe,
	o => ww_L4(4));

-- Location: IOOBUF_X89_Y15_N5
\L4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q4\(5),
	devoe => ww_devoe,
	o => ww_L4(5));

-- Location: IOOBUF_X89_Y20_N45
\L4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q4\(6),
	devoe => ww_devoe,
	o => ww_L4(6));

-- Location: IOOBUF_X89_Y20_N62
\L5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q5\(0),
	devoe => ww_devoe,
	o => ww_L5(0));

-- Location: IOOBUF_X89_Y21_N56
\L5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q5\(1),
	devoe => ww_devoe,
	o => ww_L5(1));

-- Location: IOOBUF_X89_Y25_N22
\L5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q5\(2),
	devoe => ww_devoe,
	o => ww_L5(2));

-- Location: IOOBUF_X89_Y23_N22
\L5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q5\(3),
	devoe => ww_devoe,
	o => ww_L5(3));

-- Location: IOOBUF_X89_Y9_N56
\L5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q5\(4),
	devoe => ww_devoe,
	o => ww_L5(4));

-- Location: IOOBUF_X89_Y23_N5
\L5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|ALT_INV_Q5\(5),
	devoe => ww_devoe,
	o => ww_L5(5));

-- Location: IOOBUF_X89_Y9_N39
\L5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|Q5\(6),
	devoe => ww_devoe,
	o => ww_L5(6));

-- Location: IOOBUF_X89_Y6_N22
\clkout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G1|G1|tmp~q\,
	devoe => ww_devoe,
	o => ww_clkout);

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N1
\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LABCELL_X81_Y10_N0
\G1|G2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~49_sumout\ = SUM(( !\G1|G2|countt\(0) ) + ( VCC ) + ( !VCC ))
-- \G1|G2|Add0~50\ = CARRY(( !\G1|G2|countt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|G2|ALT_INV_countt\(0),
	cin => GND,
	sumout => \G1|G2|Add0~49_sumout\,
	cout => \G1|G2|Add0~50\);

-- Location: LABCELL_X81_Y11_N3
\G1|G2|countt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|countt~0_combout\ = ( \A~input_o\ & ( \G1|G2|Add0~49_sumout\ ) ) # ( \A~input_o\ & ( !\G1|G2|Add0~49_sumout\ ) ) # ( !\A~input_o\ & ( !\G1|G2|Add0~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A~input_o\,
	dataf => \G1|G2|ALT_INV_Add0~49_sumout\,
	combout => \G1|G2|countt~0_combout\);

-- Location: FF_X81_Y11_N5
\G1|G2|countt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|countt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(0));

-- Location: LABCELL_X81_Y10_N3
\G1|G2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~53_sumout\ = SUM(( \G1|G2|countt\(1) ) + ( GND ) + ( \G1|G2|Add0~50\ ))
-- \G1|G2|Add0~54\ = CARRY(( \G1|G2|countt\(1) ) + ( GND ) + ( \G1|G2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(1),
	cin => \G1|G2|Add0~50\,
	sumout => \G1|G2|Add0~53_sumout\,
	cout => \G1|G2|Add0~54\);

-- Location: FF_X81_Y10_N5
\G1|G2|countt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~53_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(1));

-- Location: LABCELL_X81_Y10_N6
\G1|G2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~57_sumout\ = SUM(( \G1|G2|countt\(2) ) + ( GND ) + ( \G1|G2|Add0~54\ ))
-- \G1|G2|Add0~58\ = CARRY(( \G1|G2|countt\(2) ) + ( GND ) + ( \G1|G2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(2),
	cin => \G1|G2|Add0~54\,
	sumout => \G1|G2|Add0~57_sumout\,
	cout => \G1|G2|Add0~58\);

-- Location: FF_X81_Y10_N8
\G1|G2|countt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~57_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(2));

-- Location: LABCELL_X81_Y10_N9
\G1|G2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~61_sumout\ = SUM(( \G1|G2|countt\(3) ) + ( GND ) + ( \G1|G2|Add0~58\ ))
-- \G1|G2|Add0~62\ = CARRY(( \G1|G2|countt\(3) ) + ( GND ) + ( \G1|G2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(3),
	cin => \G1|G2|Add0~58\,
	sumout => \G1|G2|Add0~61_sumout\,
	cout => \G1|G2|Add0~62\);

-- Location: FF_X81_Y10_N11
\G1|G2|countt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~61_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(3));

-- Location: LABCELL_X81_Y10_N12
\G1|G2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~65_sumout\ = SUM(( \G1|G2|countt\(4) ) + ( GND ) + ( \G1|G2|Add0~62\ ))
-- \G1|G2|Add0~66\ = CARRY(( \G1|G2|countt\(4) ) + ( GND ) + ( \G1|G2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(4),
	cin => \G1|G2|Add0~62\,
	sumout => \G1|G2|Add0~65_sumout\,
	cout => \G1|G2|Add0~66\);

-- Location: FF_X81_Y10_N14
\G1|G2|countt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~65_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(4));

-- Location: LABCELL_X81_Y10_N15
\G1|G2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~69_sumout\ = SUM(( \G1|G2|countt\(5) ) + ( GND ) + ( \G1|G2|Add0~66\ ))
-- \G1|G2|Add0~70\ = CARRY(( \G1|G2|countt\(5) ) + ( GND ) + ( \G1|G2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(5),
	cin => \G1|G2|Add0~66\,
	sumout => \G1|G2|Add0~69_sumout\,
	cout => \G1|G2|Add0~70\);

-- Location: FF_X81_Y10_N17
\G1|G2|countt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~69_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(5));

-- Location: LABCELL_X81_Y10_N18
\G1|G2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~45_sumout\ = SUM(( \G1|G2|countt\(6) ) + ( GND ) + ( \G1|G2|Add0~70\ ))
-- \G1|G2|Add0~46\ = CARRY(( \G1|G2|countt\(6) ) + ( GND ) + ( \G1|G2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(6),
	cin => \G1|G2|Add0~70\,
	sumout => \G1|G2|Add0~45_sumout\,
	cout => \G1|G2|Add0~46\);

-- Location: FF_X81_Y10_N20
\G1|G2|countt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~45_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(6));

-- Location: LABCELL_X81_Y10_N21
\G1|G2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~9_sumout\ = SUM(( \G1|G2|countt\(7) ) + ( GND ) + ( \G1|G2|Add0~46\ ))
-- \G1|G2|Add0~10\ = CARRY(( \G1|G2|countt\(7) ) + ( GND ) + ( \G1|G2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(7),
	cin => \G1|G2|Add0~46\,
	sumout => \G1|G2|Add0~9_sumout\,
	cout => \G1|G2|Add0~10\);

-- Location: FF_X81_Y10_N23
\G1|G2|countt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~9_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(7));

-- Location: LABCELL_X81_Y10_N24
\G1|G2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~13_sumout\ = SUM(( \G1|G2|countt\(8) ) + ( GND ) + ( \G1|G2|Add0~10\ ))
-- \G1|G2|Add0~14\ = CARRY(( \G1|G2|countt\(8) ) + ( GND ) + ( \G1|G2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(8),
	cin => \G1|G2|Add0~10\,
	sumout => \G1|G2|Add0~13_sumout\,
	cout => \G1|G2|Add0~14\);

-- Location: FF_X81_Y10_N26
\G1|G2|countt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~13_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(8));

-- Location: LABCELL_X81_Y10_N27
\G1|G2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~17_sumout\ = SUM(( \G1|G2|countt\(9) ) + ( GND ) + ( \G1|G2|Add0~14\ ))
-- \G1|G2|Add0~18\ = CARRY(( \G1|G2|countt\(9) ) + ( GND ) + ( \G1|G2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(9),
	cin => \G1|G2|Add0~14\,
	sumout => \G1|G2|Add0~17_sumout\,
	cout => \G1|G2|Add0~18\);

-- Location: FF_X81_Y10_N29
\G1|G2|countt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~17_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(9));

-- Location: LABCELL_X81_Y10_N30
\G1|G2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~21_sumout\ = SUM(( \G1|G2|countt\(10) ) + ( GND ) + ( \G1|G2|Add0~18\ ))
-- \G1|G2|Add0~22\ = CARRY(( \G1|G2|countt\(10) ) + ( GND ) + ( \G1|G2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(10),
	cin => \G1|G2|Add0~18\,
	sumout => \G1|G2|Add0~21_sumout\,
	cout => \G1|G2|Add0~22\);

-- Location: FF_X81_Y10_N32
\G1|G2|countt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~21_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(10));

-- Location: LABCELL_X81_Y10_N33
\G1|G2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~37_sumout\ = SUM(( \G1|G2|countt\(11) ) + ( GND ) + ( \G1|G2|Add0~22\ ))
-- \G1|G2|Add0~38\ = CARRY(( \G1|G2|countt\(11) ) + ( GND ) + ( \G1|G2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(11),
	cin => \G1|G2|Add0~22\,
	sumout => \G1|G2|Add0~37_sumout\,
	cout => \G1|G2|Add0~38\);

-- Location: FF_X81_Y10_N35
\G1|G2|countt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~37_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(11));

-- Location: LABCELL_X81_Y10_N36
\G1|G2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~41_sumout\ = SUM(( \G1|G2|countt\(12) ) + ( GND ) + ( \G1|G2|Add0~38\ ))
-- \G1|G2|Add0~42\ = CARRY(( \G1|G2|countt\(12) ) + ( GND ) + ( \G1|G2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(12),
	cin => \G1|G2|Add0~38\,
	sumout => \G1|G2|Add0~41_sumout\,
	cout => \G1|G2|Add0~42\);

-- Location: FF_X81_Y10_N38
\G1|G2|countt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~41_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(12));

-- Location: LABCELL_X81_Y10_N39
\G1|G2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~29_sumout\ = SUM(( \G1|G2|countt\(13) ) + ( GND ) + ( \G1|G2|Add0~42\ ))
-- \G1|G2|Add0~30\ = CARRY(( \G1|G2|countt\(13) ) + ( GND ) + ( \G1|G2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(13),
	cin => \G1|G2|Add0~42\,
	sumout => \G1|G2|Add0~29_sumout\,
	cout => \G1|G2|Add0~30\);

-- Location: FF_X81_Y10_N41
\G1|G2|countt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~29_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(13));

-- Location: LABCELL_X81_Y10_N42
\G1|G2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~33_sumout\ = SUM(( \G1|G2|countt\(14) ) + ( GND ) + ( \G1|G2|Add0~30\ ))
-- \G1|G2|Add0~34\ = CARRY(( \G1|G2|countt\(14) ) + ( GND ) + ( \G1|G2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(14),
	cin => \G1|G2|Add0~30\,
	sumout => \G1|G2|Add0~33_sumout\,
	cout => \G1|G2|Add0~34\);

-- Location: FF_X81_Y10_N44
\G1|G2|countt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~33_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(14));

-- Location: LABCELL_X81_Y10_N45
\G1|G2|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~77_sumout\ = SUM(( \G1|G2|countt\(15) ) + ( GND ) + ( \G1|G2|Add0~34\ ))
-- \G1|G2|Add0~78\ = CARRY(( \G1|G2|countt\(15) ) + ( GND ) + ( \G1|G2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(15),
	cin => \G1|G2|Add0~34\,
	sumout => \G1|G2|Add0~77_sumout\,
	cout => \G1|G2|Add0~78\);

-- Location: FF_X81_Y10_N47
\G1|G2|countt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~77_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(15));

-- Location: LABCELL_X81_Y10_N48
\G1|G2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~25_sumout\ = SUM(( \G1|G2|countt\(16) ) + ( GND ) + ( \G1|G2|Add0~78\ ))
-- \G1|G2|Add0~26\ = CARRY(( \G1|G2|countt\(16) ) + ( GND ) + ( \G1|G2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(16),
	cin => \G1|G2|Add0~78\,
	sumout => \G1|G2|Add0~25_sumout\,
	cout => \G1|G2|Add0~26\);

-- Location: FF_X81_Y10_N50
\G1|G2|countt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~25_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(16));

-- Location: LABCELL_X81_Y10_N51
\G1|G2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~73_sumout\ = SUM(( \G1|G2|countt\(17) ) + ( GND ) + ( \G1|G2|Add0~26\ ))
-- \G1|G2|Add0~74\ = CARRY(( \G1|G2|countt\(17) ) + ( GND ) + ( \G1|G2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(17),
	cin => \G1|G2|Add0~26\,
	sumout => \G1|G2|Add0~73_sumout\,
	cout => \G1|G2|Add0~74\);

-- Location: FF_X81_Y10_N53
\G1|G2|countt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~73_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(17));

-- Location: LABCELL_X81_Y10_N54
\G1|G2|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~93_sumout\ = SUM(( \G1|G2|countt\(18) ) + ( GND ) + ( \G1|G2|Add0~74\ ))
-- \G1|G2|Add0~94\ = CARRY(( \G1|G2|countt\(18) ) + ( GND ) + ( \G1|G2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(18),
	cin => \G1|G2|Add0~74\,
	sumout => \G1|G2|Add0~93_sumout\,
	cout => \G1|G2|Add0~94\);

-- Location: FF_X81_Y10_N56
\G1|G2|countt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~93_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(18));

-- Location: LABCELL_X81_Y10_N57
\G1|G2|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~97_sumout\ = SUM(( \G1|G2|countt\(19) ) + ( GND ) + ( \G1|G2|Add0~94\ ))
-- \G1|G2|Add0~98\ = CARRY(( \G1|G2|countt\(19) ) + ( GND ) + ( \G1|G2|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(19),
	cin => \G1|G2|Add0~94\,
	sumout => \G1|G2|Add0~97_sumout\,
	cout => \G1|G2|Add0~98\);

-- Location: FF_X81_Y10_N59
\G1|G2|countt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~97_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(19));

-- Location: LABCELL_X81_Y9_N0
\G1|G2|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~101_sumout\ = SUM(( \G1|G2|countt\(20) ) + ( GND ) + ( \G1|G2|Add0~98\ ))
-- \G1|G2|Add0~102\ = CARRY(( \G1|G2|countt\(20) ) + ( GND ) + ( \G1|G2|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(20),
	cin => \G1|G2|Add0~98\,
	sumout => \G1|G2|Add0~101_sumout\,
	cout => \G1|G2|Add0~102\);

-- Location: FF_X81_Y9_N2
\G1|G2|countt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~101_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(20));

-- Location: LABCELL_X81_Y9_N3
\G1|G2|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~81_sumout\ = SUM(( \G1|G2|countt\(21) ) + ( GND ) + ( \G1|G2|Add0~102\ ))
-- \G1|G2|Add0~82\ = CARRY(( \G1|G2|countt\(21) ) + ( GND ) + ( \G1|G2|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(21),
	cin => \G1|G2|Add0~102\,
	sumout => \G1|G2|Add0~81_sumout\,
	cout => \G1|G2|Add0~82\);

-- Location: FF_X81_Y9_N5
\G1|G2|countt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~81_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(21));

-- Location: LABCELL_X81_Y9_N6
\G1|G2|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~85_sumout\ = SUM(( \G1|G2|countt\(22) ) + ( GND ) + ( \G1|G2|Add0~82\ ))
-- \G1|G2|Add0~86\ = CARRY(( \G1|G2|countt\(22) ) + ( GND ) + ( \G1|G2|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(22),
	cin => \G1|G2|Add0~82\,
	sumout => \G1|G2|Add0~85_sumout\,
	cout => \G1|G2|Add0~86\);

-- Location: FF_X81_Y9_N8
\G1|G2|countt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~85_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(22));

-- Location: LABCELL_X81_Y9_N9
\G1|G2|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~105_sumout\ = SUM(( \G1|G2|countt\(23) ) + ( GND ) + ( \G1|G2|Add0~86\ ))
-- \G1|G2|Add0~106\ = CARRY(( \G1|G2|countt\(23) ) + ( GND ) + ( \G1|G2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(23),
	cin => \G1|G2|Add0~86\,
	sumout => \G1|G2|Add0~105_sumout\,
	cout => \G1|G2|Add0~106\);

-- Location: FF_X81_Y9_N11
\G1|G2|countt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~105_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(23));

-- Location: LABCELL_X81_Y9_N12
\G1|G2|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~89_sumout\ = SUM(( \G1|G2|countt\(24) ) + ( GND ) + ( \G1|G2|Add0~106\ ))
-- \G1|G2|Add0~90\ = CARRY(( \G1|G2|countt\(24) ) + ( GND ) + ( \G1|G2|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(24),
	cin => \G1|G2|Add0~106\,
	sumout => \G1|G2|Add0~89_sumout\,
	cout => \G1|G2|Add0~90\);

-- Location: FF_X81_Y9_N14
\G1|G2|countt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~89_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(24));

-- Location: LABCELL_X81_Y9_N15
\G1|G2|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~109_sumout\ = SUM(( \G1|G2|countt\(25) ) + ( GND ) + ( \G1|G2|Add0~90\ ))
-- \G1|G2|Add0~110\ = CARRY(( \G1|G2|countt\(25) ) + ( GND ) + ( \G1|G2|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(25),
	cin => \G1|G2|Add0~90\,
	sumout => \G1|G2|Add0~109_sumout\,
	cout => \G1|G2|Add0~110\);

-- Location: FF_X81_Y9_N17
\G1|G2|countt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~109_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(25));

-- Location: LABCELL_X81_Y9_N18
\G1|G2|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~113_sumout\ = SUM(( \G1|G2|countt\(26) ) + ( GND ) + ( \G1|G2|Add0~110\ ))
-- \G1|G2|Add0~114\ = CARRY(( \G1|G2|countt\(26) ) + ( GND ) + ( \G1|G2|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(26),
	cin => \G1|G2|Add0~110\,
	sumout => \G1|G2|Add0~113_sumout\,
	cout => \G1|G2|Add0~114\);

-- Location: FF_X81_Y9_N20
\G1|G2|countt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~113_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(26));

-- Location: LABCELL_X81_Y9_N21
\G1|G2|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~117_sumout\ = SUM(( \G1|G2|countt\(27) ) + ( GND ) + ( \G1|G2|Add0~114\ ))
-- \G1|G2|Add0~118\ = CARRY(( \G1|G2|countt\(27) ) + ( GND ) + ( \G1|G2|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(27),
	cin => \G1|G2|Add0~114\,
	sumout => \G1|G2|Add0~117_sumout\,
	cout => \G1|G2|Add0~118\);

-- Location: FF_X81_Y9_N22
\G1|G2|countt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~117_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(27));

-- Location: LABCELL_X81_Y9_N24
\G1|G2|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~121_sumout\ = SUM(( \G1|G2|countt\(28) ) + ( GND ) + ( \G1|G2|Add0~118\ ))
-- \G1|G2|Add0~122\ = CARRY(( \G1|G2|countt\(28) ) + ( GND ) + ( \G1|G2|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(28),
	cin => \G1|G2|Add0~118\,
	sumout => \G1|G2|Add0~121_sumout\,
	cout => \G1|G2|Add0~122\);

-- Location: FF_X81_Y9_N26
\G1|G2|countt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~121_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(28));

-- Location: LABCELL_X81_Y9_N27
\G1|G2|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~125_sumout\ = SUM(( \G1|G2|countt\(29) ) + ( GND ) + ( \G1|G2|Add0~122\ ))
-- \G1|G2|Add0~126\ = CARRY(( \G1|G2|countt\(29) ) + ( GND ) + ( \G1|G2|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(29),
	cin => \G1|G2|Add0~122\,
	sumout => \G1|G2|Add0~125_sumout\,
	cout => \G1|G2|Add0~126\);

-- Location: FF_X81_Y9_N29
\G1|G2|countt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~125_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(29));

-- Location: LABCELL_X81_Y9_N30
\G1|G2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~5_sumout\ = SUM(( \G1|G2|countt\(30) ) + ( GND ) + ( \G1|G2|Add0~126\ ))
-- \G1|G2|Add0~6\ = CARRY(( \G1|G2|countt\(30) ) + ( GND ) + ( \G1|G2|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(30),
	cin => \G1|G2|Add0~126\,
	sumout => \G1|G2|Add0~5_sumout\,
	cout => \G1|G2|Add0~6\);

-- Location: FF_X81_Y9_N32
\G1|G2|countt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~5_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(30));

-- Location: LABCELL_X81_Y9_N33
\G1|G2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add0~1_sumout\ = SUM(( \G1|G2|countt\(31) ) + ( GND ) + ( \G1|G2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_countt\(31),
	cin => \G1|G2|Add0~6\,
	sumout => \G1|G2|Add0~1_sumout\);

-- Location: FF_X81_Y9_N35
\G1|G2|countt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add0~1_sumout\,
	sclr => \A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|countt\(31));

-- Location: MLABCELL_X82_Y11_N0
\G1|G2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~5_sumout\ = SUM(( !\G1|G2|idlecount\(0) ) + ( VCC ) + ( !VCC ))
-- \G1|G2|Add1~6\ = CARRY(( !\G1|G2|idlecount\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(0),
	cin => GND,
	sumout => \G1|G2|Add1~5_sumout\,
	cout => \G1|G2|Add1~6\);

-- Location: MLABCELL_X82_Y11_N3
\G1|G2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~25_sumout\ = SUM(( \G1|G2|idlecount\(1) ) + ( GND ) + ( \G1|G2|Add1~6\ ))
-- \G1|G2|Add1~26\ = CARRY(( \G1|G2|idlecount\(1) ) + ( GND ) + ( \G1|G2|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(1),
	cin => \G1|G2|Add1~6\,
	sumout => \G1|G2|Add1~25_sumout\,
	cout => \G1|G2|Add1~26\);

-- Location: LABCELL_X81_Y11_N9
\G1|G2|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan0~6_combout\ = ( \G1|G2|idlecount\(21) & ( \G1|G2|idlecount\(20) & ( (\G1|G2|idlecount\(18) & (\G1|G2|idlecount\(19) & (\G1|G2|idlecount\(22) & \G1|G2|idlecount\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_idlecount\(18),
	datab => \G1|G2|ALT_INV_idlecount\(19),
	datac => \G1|G2|ALT_INV_idlecount\(22),
	datad => \G1|G2|ALT_INV_idlecount\(24),
	datae => \G1|G2|ALT_INV_idlecount\(21),
	dataf => \G1|G2|ALT_INV_idlecount\(20),
	combout => \G1|G2|LessThan0~6_combout\);

-- Location: MLABCELL_X82_Y10_N18
\G1|G2|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~101_sumout\ = SUM(( \G1|G2|idlecount\(26) ) + ( GND ) + ( \G1|G2|Add1~106\ ))
-- \G1|G2|Add1~102\ = CARRY(( \G1|G2|idlecount\(26) ) + ( GND ) + ( \G1|G2|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(26),
	cin => \G1|G2|Add1~106\,
	sumout => \G1|G2|Add1~101_sumout\,
	cout => \G1|G2|Add1~102\);

-- Location: MLABCELL_X82_Y10_N21
\G1|G2|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~125_sumout\ = SUM(( \G1|G2|idlecount\(27) ) + ( GND ) + ( \G1|G2|Add1~102\ ))
-- \G1|G2|Add1~126\ = CARRY(( \G1|G2|idlecount\(27) ) + ( GND ) + ( \G1|G2|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(27),
	cin => \G1|G2|Add1~102\,
	sumout => \G1|G2|Add1~125_sumout\,
	cout => \G1|G2|Add1~126\);

-- Location: FF_X82_Y10_N23
\G1|G2|idlecount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~125_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(27));

-- Location: MLABCELL_X82_Y10_N24
\G1|G2|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~121_sumout\ = SUM(( \G1|G2|idlecount\(28) ) + ( GND ) + ( \G1|G2|Add1~126\ ))
-- \G1|G2|Add1~122\ = CARRY(( \G1|G2|idlecount\(28) ) + ( GND ) + ( \G1|G2|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(28),
	cin => \G1|G2|Add1~126\,
	sumout => \G1|G2|Add1~121_sumout\,
	cout => \G1|G2|Add1~122\);

-- Location: FF_X82_Y10_N26
\G1|G2|idlecount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~121_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(28));

-- Location: MLABCELL_X82_Y10_N27
\G1|G2|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~117_sumout\ = SUM(( \G1|G2|idlecount\(29) ) + ( GND ) + ( \G1|G2|Add1~122\ ))
-- \G1|G2|Add1~118\ = CARRY(( \G1|G2|idlecount\(29) ) + ( GND ) + ( \G1|G2|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(29),
	cin => \G1|G2|Add1~122\,
	sumout => \G1|G2|Add1~117_sumout\,
	cout => \G1|G2|Add1~118\);

-- Location: FF_X82_Y10_N29
\G1|G2|idlecount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~117_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(29));

-- Location: MLABCELL_X82_Y10_N30
\G1|G2|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~113_sumout\ = SUM(( \G1|G2|idlecount\(30) ) + ( GND ) + ( \G1|G2|Add1~118\ ))
-- \G1|G2|Add1~114\ = CARRY(( \G1|G2|idlecount\(30) ) + ( GND ) + ( \G1|G2|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(30),
	cin => \G1|G2|Add1~118\,
	sumout => \G1|G2|Add1~113_sumout\,
	cout => \G1|G2|Add1~114\);

-- Location: FF_X82_Y10_N32
\G1|G2|idlecount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~113_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(30));

-- Location: MLABCELL_X82_Y10_N33
\G1|G2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~1_sumout\ = SUM(( \G1|G2|idlecount\(31) ) + ( GND ) + ( \G1|G2|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(31),
	cin => \G1|G2|Add1~114\,
	sumout => \G1|G2|Add1~1_sumout\);

-- Location: FF_X82_Y10_N35
\G1|G2|idlecount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~1_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(31));

-- Location: LABCELL_X81_Y11_N24
\G1|G2|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan0~4_combout\ = ( \G1|G2|idlecount\(16) & ( (!\G1|G2|idlecount\(17) & !\G1|G2|idlecount\(15)) ) ) # ( !\G1|G2|idlecount\(16) & ( !\G1|G2|idlecount\(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110000001100000011001100110011001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|G2|ALT_INV_idlecount\(17),
	datac => \G1|G2|ALT_INV_idlecount\(15),
	datae => \G1|G2|ALT_INV_idlecount\(16),
	combout => \G1|G2|LessThan0~4_combout\);

-- Location: LABCELL_X81_Y11_N57
\G1|G2|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan0~3_combout\ = ( \G1|G2|idlecount\(16) & ( \G1|G2|idlecount\(13) & ( (\G1|G2|idlecount\(11) & (\G1|G2|idlecount\(12) & \G1|G2|idlecount\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_idlecount\(11),
	datab => \G1|G2|ALT_INV_idlecount\(12),
	datac => \G1|G2|ALT_INV_idlecount\(14),
	datae => \G1|G2|ALT_INV_idlecount\(16),
	dataf => \G1|G2|ALT_INV_idlecount\(13),
	combout => \G1|G2|LessThan0~3_combout\);

-- Location: LABCELL_X81_Y11_N21
\G1|G2|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan0~2_combout\ = ( !\G1|G2|idlecount\(7) & ( !\G1|G2|idlecount\(10) & ( (!\G1|G2|idlecount\(9) & !\G1|G2|idlecount\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_idlecount\(9),
	datac => \G1|G2|ALT_INV_idlecount\(8),
	datae => \G1|G2|ALT_INV_idlecount\(7),
	dataf => \G1|G2|ALT_INV_idlecount\(10),
	combout => \G1|G2|LessThan0~2_combout\);

-- Location: LABCELL_X81_Y11_N42
\G1|G2|LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan0~10_combout\ = ( \G1|G2|LessThan0~2_combout\ & ( \G1|G2|LessThan0~0_combout\ & ( \G1|G2|LessThan0~4_combout\ ) ) ) # ( !\G1|G2|LessThan0~2_combout\ & ( \G1|G2|LessThan0~0_combout\ & ( (\G1|G2|LessThan0~4_combout\ & 
-- !\G1|G2|LessThan0~3_combout\) ) ) ) # ( \G1|G2|LessThan0~2_combout\ & ( !\G1|G2|LessThan0~0_combout\ & ( (\G1|G2|LessThan0~4_combout\ & ((!\G1|G2|idlecount\(6)) # (!\G1|G2|LessThan0~3_combout\))) ) ) ) # ( !\G1|G2|LessThan0~2_combout\ & ( 
-- !\G1|G2|LessThan0~0_combout\ & ( (\G1|G2|LessThan0~4_combout\ & !\G1|G2|LessThan0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000110000001111000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|G2|ALT_INV_idlecount\(6),
	datac => \G1|G2|ALT_INV_LessThan0~4_combout\,
	datad => \G1|G2|ALT_INV_LessThan0~3_combout\,
	datae => \G1|G2|ALT_INV_LessThan0~2_combout\,
	dataf => \G1|G2|ALT_INV_LessThan0~0_combout\,
	combout => \G1|G2|LessThan0~10_combout\);

-- Location: LABCELL_X81_Y11_N48
\G1|G2|idlecount~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|idlecount~0_combout\ = ( \G1|G2|LessThan0~8_combout\ & ( \G1|G2|LessThan0~10_combout\ & ( !\A~input_o\ ) ) ) # ( !\G1|G2|LessThan0~8_combout\ & ( \G1|G2|LessThan0~10_combout\ & ( (!\A~input_o\) # (!\G1|G2|idlecount\(31)) ) ) ) # ( 
-- \G1|G2|LessThan0~8_combout\ & ( !\G1|G2|LessThan0~10_combout\ & ( (!\A~input_o\) # ((\G1|G2|LessThan0~6_combout\ & !\G1|G2|idlecount\(31))) ) ) ) # ( !\G1|G2|LessThan0~8_combout\ & ( !\G1|G2|LessThan0~10_combout\ & ( (!\A~input_o\) # 
-- (!\G1|G2|idlecount\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010101110101011101011111010111110101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \G1|G2|ALT_INV_LessThan0~6_combout\,
	datac => \G1|G2|ALT_INV_idlecount\(31),
	datae => \G1|G2|ALT_INV_LessThan0~8_combout\,
	dataf => \G1|G2|ALT_INV_LessThan0~10_combout\,
	combout => \G1|G2|idlecount~0_combout\);

-- Location: FF_X82_Y11_N4
\G1|G2|idlecount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~25_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(1));

-- Location: MLABCELL_X82_Y11_N6
\G1|G2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~21_sumout\ = SUM(( \G1|G2|idlecount\(2) ) + ( GND ) + ( \G1|G2|Add1~26\ ))
-- \G1|G2|Add1~22\ = CARRY(( \G1|G2|idlecount\(2) ) + ( GND ) + ( \G1|G2|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(2),
	cin => \G1|G2|Add1~26\,
	sumout => \G1|G2|Add1~21_sumout\,
	cout => \G1|G2|Add1~22\);

-- Location: FF_X82_Y11_N7
\G1|G2|idlecount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~21_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(2));

-- Location: MLABCELL_X82_Y11_N9
\G1|G2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~17_sumout\ = SUM(( \G1|G2|idlecount\(3) ) + ( GND ) + ( \G1|G2|Add1~22\ ))
-- \G1|G2|Add1~18\ = CARRY(( \G1|G2|idlecount\(3) ) + ( GND ) + ( \G1|G2|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(3),
	cin => \G1|G2|Add1~22\,
	sumout => \G1|G2|Add1~17_sumout\,
	cout => \G1|G2|Add1~18\);

-- Location: FF_X82_Y11_N10
\G1|G2|idlecount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~17_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(3));

-- Location: MLABCELL_X82_Y11_N12
\G1|G2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~13_sumout\ = SUM(( \G1|G2|idlecount\(4) ) + ( GND ) + ( \G1|G2|Add1~18\ ))
-- \G1|G2|Add1~14\ = CARRY(( \G1|G2|idlecount\(4) ) + ( GND ) + ( \G1|G2|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(4),
	cin => \G1|G2|Add1~18\,
	sumout => \G1|G2|Add1~13_sumout\,
	cout => \G1|G2|Add1~14\);

-- Location: FF_X82_Y11_N13
\G1|G2|idlecount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~13_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(4));

-- Location: MLABCELL_X82_Y11_N15
\G1|G2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~9_sumout\ = SUM(( \G1|G2|idlecount\(5) ) + ( GND ) + ( \G1|G2|Add1~14\ ))
-- \G1|G2|Add1~10\ = CARRY(( \G1|G2|idlecount\(5) ) + ( GND ) + ( \G1|G2|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(5),
	cin => \G1|G2|Add1~14\,
	sumout => \G1|G2|Add1~9_sumout\,
	cout => \G1|G2|Add1~10\);

-- Location: FF_X82_Y11_N16
\G1|G2|idlecount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~9_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(5));

-- Location: MLABCELL_X82_Y11_N18
\G1|G2|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~49_sumout\ = SUM(( \G1|G2|idlecount\(6) ) + ( GND ) + ( \G1|G2|Add1~10\ ))
-- \G1|G2|Add1~50\ = CARRY(( \G1|G2|idlecount\(6) ) + ( GND ) + ( \G1|G2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(6),
	cin => \G1|G2|Add1~10\,
	sumout => \G1|G2|Add1~49_sumout\,
	cout => \G1|G2|Add1~50\);

-- Location: FF_X82_Y11_N20
\G1|G2|idlecount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~49_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(6));

-- Location: MLABCELL_X82_Y11_N21
\G1|G2|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~65_sumout\ = SUM(( \G1|G2|idlecount\(7) ) + ( GND ) + ( \G1|G2|Add1~50\ ))
-- \G1|G2|Add1~66\ = CARRY(( \G1|G2|idlecount\(7) ) + ( GND ) + ( \G1|G2|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(7),
	cin => \G1|G2|Add1~50\,
	sumout => \G1|G2|Add1~65_sumout\,
	cout => \G1|G2|Add1~66\);

-- Location: FF_X82_Y11_N23
\G1|G2|idlecount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~65_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(7));

-- Location: MLABCELL_X82_Y11_N24
\G1|G2|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~61_sumout\ = SUM(( \G1|G2|idlecount\(8) ) + ( GND ) + ( \G1|G2|Add1~66\ ))
-- \G1|G2|Add1~62\ = CARRY(( \G1|G2|idlecount\(8) ) + ( GND ) + ( \G1|G2|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(8),
	cin => \G1|G2|Add1~66\,
	sumout => \G1|G2|Add1~61_sumout\,
	cout => \G1|G2|Add1~62\);

-- Location: FF_X82_Y11_N26
\G1|G2|idlecount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~61_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(8));

-- Location: MLABCELL_X82_Y11_N27
\G1|G2|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~57_sumout\ = SUM(( \G1|G2|idlecount\(9) ) + ( GND ) + ( \G1|G2|Add1~62\ ))
-- \G1|G2|Add1~58\ = CARRY(( \G1|G2|idlecount\(9) ) + ( GND ) + ( \G1|G2|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(9),
	cin => \G1|G2|Add1~62\,
	sumout => \G1|G2|Add1~57_sumout\,
	cout => \G1|G2|Add1~58\);

-- Location: FF_X82_Y11_N29
\G1|G2|idlecount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~57_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(9));

-- Location: MLABCELL_X82_Y11_N30
\G1|G2|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~53_sumout\ = SUM(( \G1|G2|idlecount\(10) ) + ( GND ) + ( \G1|G2|Add1~58\ ))
-- \G1|G2|Add1~54\ = CARRY(( \G1|G2|idlecount\(10) ) + ( GND ) + ( \G1|G2|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(10),
	cin => \G1|G2|Add1~58\,
	sumout => \G1|G2|Add1~53_sumout\,
	cout => \G1|G2|Add1~54\);

-- Location: FF_X82_Y11_N32
\G1|G2|idlecount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~53_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(10));

-- Location: MLABCELL_X82_Y11_N33
\G1|G2|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~41_sumout\ = SUM(( \G1|G2|idlecount\(11) ) + ( GND ) + ( \G1|G2|Add1~54\ ))
-- \G1|G2|Add1~42\ = CARRY(( \G1|G2|idlecount\(11) ) + ( GND ) + ( \G1|G2|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(11),
	cin => \G1|G2|Add1~54\,
	sumout => \G1|G2|Add1~41_sumout\,
	cout => \G1|G2|Add1~42\);

-- Location: FF_X82_Y11_N35
\G1|G2|idlecount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~41_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(11));

-- Location: MLABCELL_X82_Y11_N36
\G1|G2|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~37_sumout\ = SUM(( \G1|G2|idlecount\(12) ) + ( GND ) + ( \G1|G2|Add1~42\ ))
-- \G1|G2|Add1~38\ = CARRY(( \G1|G2|idlecount\(12) ) + ( GND ) + ( \G1|G2|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(12),
	cin => \G1|G2|Add1~42\,
	sumout => \G1|G2|Add1~37_sumout\,
	cout => \G1|G2|Add1~38\);

-- Location: FF_X82_Y11_N38
\G1|G2|idlecount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~37_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(12));

-- Location: MLABCELL_X82_Y11_N39
\G1|G2|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~33_sumout\ = SUM(( \G1|G2|idlecount\(13) ) + ( GND ) + ( \G1|G2|Add1~38\ ))
-- \G1|G2|Add1~34\ = CARRY(( \G1|G2|idlecount\(13) ) + ( GND ) + ( \G1|G2|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(13),
	cin => \G1|G2|Add1~38\,
	sumout => \G1|G2|Add1~33_sumout\,
	cout => \G1|G2|Add1~34\);

-- Location: FF_X82_Y11_N41
\G1|G2|idlecount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~33_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(13));

-- Location: MLABCELL_X82_Y11_N42
\G1|G2|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~45_sumout\ = SUM(( \G1|G2|idlecount\(14) ) + ( GND ) + ( \G1|G2|Add1~34\ ))
-- \G1|G2|Add1~46\ = CARRY(( \G1|G2|idlecount\(14) ) + ( GND ) + ( \G1|G2|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(14),
	cin => \G1|G2|Add1~34\,
	sumout => \G1|G2|Add1~45_sumout\,
	cout => \G1|G2|Add1~46\);

-- Location: FF_X82_Y11_N44
\G1|G2|idlecount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~45_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(14));

-- Location: MLABCELL_X82_Y11_N45
\G1|G2|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~73_sumout\ = SUM(( \G1|G2|idlecount\(15) ) + ( GND ) + ( \G1|G2|Add1~46\ ))
-- \G1|G2|Add1~74\ = CARRY(( \G1|G2|idlecount\(15) ) + ( GND ) + ( \G1|G2|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(15),
	cin => \G1|G2|Add1~46\,
	sumout => \G1|G2|Add1~73_sumout\,
	cout => \G1|G2|Add1~74\);

-- Location: FF_X82_Y11_N47
\G1|G2|idlecount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~73_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(15));

-- Location: MLABCELL_X82_Y11_N48
\G1|G2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~29_sumout\ = SUM(( \G1|G2|idlecount\(16) ) + ( GND ) + ( \G1|G2|Add1~74\ ))
-- \G1|G2|Add1~30\ = CARRY(( \G1|G2|idlecount\(16) ) + ( GND ) + ( \G1|G2|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(16),
	cin => \G1|G2|Add1~74\,
	sumout => \G1|G2|Add1~29_sumout\,
	cout => \G1|G2|Add1~30\);

-- Location: FF_X82_Y11_N50
\G1|G2|idlecount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~29_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(16));

-- Location: MLABCELL_X82_Y11_N51
\G1|G2|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~69_sumout\ = SUM(( \G1|G2|idlecount\(17) ) + ( GND ) + ( \G1|G2|Add1~30\ ))
-- \G1|G2|Add1~70\ = CARRY(( \G1|G2|idlecount\(17) ) + ( GND ) + ( \G1|G2|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(17),
	cin => \G1|G2|Add1~30\,
	sumout => \G1|G2|Add1~69_sumout\,
	cout => \G1|G2|Add1~70\);

-- Location: FF_X82_Y11_N53
\G1|G2|idlecount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~69_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(17));

-- Location: MLABCELL_X82_Y11_N54
\G1|G2|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~77_sumout\ = SUM(( \G1|G2|idlecount\(18) ) + ( GND ) + ( \G1|G2|Add1~70\ ))
-- \G1|G2|Add1~78\ = CARRY(( \G1|G2|idlecount\(18) ) + ( GND ) + ( \G1|G2|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(18),
	cin => \G1|G2|Add1~70\,
	sumout => \G1|G2|Add1~77_sumout\,
	cout => \G1|G2|Add1~78\);

-- Location: FF_X82_Y11_N55
\G1|G2|idlecount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~77_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(18));

-- Location: MLABCELL_X82_Y11_N57
\G1|G2|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~97_sumout\ = SUM(( \G1|G2|idlecount\(19) ) + ( GND ) + ( \G1|G2|Add1~78\ ))
-- \G1|G2|Add1~98\ = CARRY(( \G1|G2|idlecount\(19) ) + ( GND ) + ( \G1|G2|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(19),
	cin => \G1|G2|Add1~78\,
	sumout => \G1|G2|Add1~97_sumout\,
	cout => \G1|G2|Add1~98\);

-- Location: FF_X82_Y11_N59
\G1|G2|idlecount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~97_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(19));

-- Location: MLABCELL_X82_Y10_N0
\G1|G2|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~93_sumout\ = SUM(( \G1|G2|idlecount\(20) ) + ( GND ) + ( \G1|G2|Add1~98\ ))
-- \G1|G2|Add1~94\ = CARRY(( \G1|G2|idlecount\(20) ) + ( GND ) + ( \G1|G2|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(20),
	cin => \G1|G2|Add1~98\,
	sumout => \G1|G2|Add1~93_sumout\,
	cout => \G1|G2|Add1~94\);

-- Location: FF_X82_Y10_N1
\G1|G2|idlecount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~93_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(20));

-- Location: MLABCELL_X82_Y10_N3
\G1|G2|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~89_sumout\ = SUM(( \G1|G2|idlecount\(21) ) + ( GND ) + ( \G1|G2|Add1~94\ ))
-- \G1|G2|Add1~90\ = CARRY(( \G1|G2|idlecount\(21) ) + ( GND ) + ( \G1|G2|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(21),
	cin => \G1|G2|Add1~94\,
	sumout => \G1|G2|Add1~89_sumout\,
	cout => \G1|G2|Add1~90\);

-- Location: FF_X82_Y10_N4
\G1|G2|idlecount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~89_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(21));

-- Location: MLABCELL_X82_Y10_N6
\G1|G2|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~85_sumout\ = SUM(( \G1|G2|idlecount\(22) ) + ( GND ) + ( \G1|G2|Add1~90\ ))
-- \G1|G2|Add1~86\ = CARRY(( \G1|G2|idlecount\(22) ) + ( GND ) + ( \G1|G2|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(22),
	cin => \G1|G2|Add1~90\,
	sumout => \G1|G2|Add1~85_sumout\,
	cout => \G1|G2|Add1~86\);

-- Location: FF_X82_Y10_N7
\G1|G2|idlecount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~85_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(22));

-- Location: MLABCELL_X82_Y10_N9
\G1|G2|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~109_sumout\ = SUM(( \G1|G2|idlecount\(23) ) + ( GND ) + ( \G1|G2|Add1~86\ ))
-- \G1|G2|Add1~110\ = CARRY(( \G1|G2|idlecount\(23) ) + ( GND ) + ( \G1|G2|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(23),
	cin => \G1|G2|Add1~86\,
	sumout => \G1|G2|Add1~109_sumout\,
	cout => \G1|G2|Add1~110\);

-- Location: FF_X82_Y10_N10
\G1|G2|idlecount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~109_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(23));

-- Location: MLABCELL_X82_Y10_N12
\G1|G2|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~81_sumout\ = SUM(( \G1|G2|idlecount\(24) ) + ( GND ) + ( \G1|G2|Add1~110\ ))
-- \G1|G2|Add1~82\ = CARRY(( \G1|G2|idlecount\(24) ) + ( GND ) + ( \G1|G2|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(24),
	cin => \G1|G2|Add1~110\,
	sumout => \G1|G2|Add1~81_sumout\,
	cout => \G1|G2|Add1~82\);

-- Location: FF_X82_Y10_N14
\G1|G2|idlecount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~81_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(24));

-- Location: MLABCELL_X82_Y10_N15
\G1|G2|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|Add1~105_sumout\ = SUM(( \G1|G2|idlecount\(25) ) + ( GND ) + ( \G1|G2|Add1~82\ ))
-- \G1|G2|Add1~106\ = CARRY(( \G1|G2|idlecount\(25) ) + ( GND ) + ( \G1|G2|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G2|ALT_INV_idlecount\(25),
	cin => \G1|G2|Add1~82\,
	sumout => \G1|G2|Add1~105_sumout\,
	cout => \G1|G2|Add1~106\);

-- Location: FF_X82_Y10_N17
\G1|G2|idlecount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~105_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(25));

-- Location: FF_X82_Y10_N20
\G1|G2|idlecount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|Add1~101_sumout\,
	sclr => \G1|G2|idlecount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(26));

-- Location: MLABCELL_X82_Y10_N48
\G1|G2|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan0~7_combout\ = ( !\G1|G2|idlecount\(29) & ( !\G1|G2|idlecount\(28) & ( (!\G1|G2|idlecount\(27) & !\G1|G2|idlecount\(30)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|G2|ALT_INV_idlecount\(27),
	datad => \G1|G2|ALT_INV_idlecount\(30),
	datae => \G1|G2|ALT_INV_idlecount\(29),
	dataf => \G1|G2|ALT_INV_idlecount\(28),
	combout => \G1|G2|LessThan0~7_combout\);

-- Location: MLABCELL_X82_Y10_N57
\G1|G2|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan0~8_combout\ = ( \G1|G2|idlecount\(23) & ( \G1|G2|LessThan0~7_combout\ & ( (!\G1|G2|idlecount\(26) & (!\G1|G2|idlecount\(24) & !\G1|G2|idlecount\(25))) ) ) ) # ( !\G1|G2|idlecount\(23) & ( \G1|G2|LessThan0~7_combout\ & ( 
-- (!\G1|G2|idlecount\(26) & !\G1|G2|idlecount\(25)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_idlecount\(26),
	datab => \G1|G2|ALT_INV_idlecount\(24),
	datac => \G1|G2|ALT_INV_idlecount\(25),
	datae => \G1|G2|ALT_INV_idlecount\(23),
	dataf => \G1|G2|ALT_INV_LessThan0~7_combout\,
	combout => \G1|G2|LessThan0~8_combout\);

-- Location: LABCELL_X83_Y11_N54
\G1|G2|idlecount~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|idlecount~1_combout\ = ( \G1|G2|LessThan0~6_combout\ & ( \G1|G2|LessThan0~10_combout\ & ( (!\A~input_o\) # ((!\G1|G2|Add1~5_sumout\) # ((!\G1|G2|LessThan0~8_combout\ & !\G1|G2|idlecount\(31)))) ) ) ) # ( !\G1|G2|LessThan0~6_combout\ & ( 
-- \G1|G2|LessThan0~10_combout\ & ( (!\A~input_o\) # ((!\G1|G2|Add1~5_sumout\) # ((!\G1|G2|LessThan0~8_combout\ & !\G1|G2|idlecount\(31)))) ) ) ) # ( \G1|G2|LessThan0~6_combout\ & ( !\G1|G2|LessThan0~10_combout\ & ( (!\A~input_o\) # ((!\G1|G2|idlecount\(31)) 
-- # (!\G1|G2|Add1~5_sumout\)) ) ) ) # ( !\G1|G2|LessThan0~6_combout\ & ( !\G1|G2|LessThan0~10_combout\ & ( (!\A~input_o\) # ((!\G1|G2|Add1~5_sumout\) # ((!\G1|G2|LessThan0~8_combout\ & !\G1|G2|idlecount\(31)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101010111111111111101011111111111010101111111111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \G1|G2|ALT_INV_LessThan0~8_combout\,
	datac => \G1|G2|ALT_INV_idlecount\(31),
	datad => \G1|G2|ALT_INV_Add1~5_sumout\,
	datae => \G1|G2|ALT_INV_LessThan0~6_combout\,
	dataf => \G1|G2|ALT_INV_LessThan0~10_combout\,
	combout => \G1|G2|idlecount~1_combout\);

-- Location: FF_X83_Y11_N56
\G1|G2|idlecount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|idlecount~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|idlecount\(0));

-- Location: LABCELL_X83_Y11_N36
\G1|G2|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan0~0_combout\ = ( !\G1|G2|idlecount\(4) & ( !\G1|G2|idlecount\(5) & ( (\G1|G2|idlecount\(0) & (!\G1|G2|idlecount\(1) & (!\G1|G2|idlecount\(2) & !\G1|G2|idlecount\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_idlecount\(0),
	datab => \G1|G2|ALT_INV_idlecount\(1),
	datac => \G1|G2|ALT_INV_idlecount\(2),
	datad => \G1|G2|ALT_INV_idlecount\(3),
	datae => \G1|G2|ALT_INV_idlecount\(4),
	dataf => \G1|G2|ALT_INV_idlecount\(5),
	combout => \G1|G2|LessThan0~0_combout\);

-- Location: LABCELL_X83_Y11_N0
\G1|G2|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan0~1_combout\ = ( \G1|G2|idlecount\(11) & ( \G1|G2|idlecount\(13) & ( (\G1|G2|idlecount\(16) & (\G1|G2|idlecount\(14) & (\G1|G2|idlecount\(6) & \G1|G2|idlecount\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_idlecount\(16),
	datab => \G1|G2|ALT_INV_idlecount\(14),
	datac => \G1|G2|ALT_INV_idlecount\(6),
	datad => \G1|G2|ALT_INV_idlecount\(12),
	datae => \G1|G2|ALT_INV_idlecount\(11),
	dataf => \G1|G2|ALT_INV_idlecount\(13),
	combout => \G1|G2|LessThan0~1_combout\);

-- Location: LABCELL_X83_Y11_N24
\G1|G2|LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan0~11_combout\ = ( \G1|G2|idlecount\(10) & ( \G1|G2|idlecount\(7) & ( (\G1|G2|idlecount\(11) & \G1|G2|idlecount\(14)) ) ) ) # ( !\G1|G2|idlecount\(10) & ( \G1|G2|idlecount\(7) & ( (\G1|G2|idlecount\(11) & \G1|G2|idlecount\(14)) ) ) ) # ( 
-- \G1|G2|idlecount\(10) & ( !\G1|G2|idlecount\(7) & ( (\G1|G2|idlecount\(11) & \G1|G2|idlecount\(14)) ) ) ) # ( !\G1|G2|idlecount\(10) & ( !\G1|G2|idlecount\(7) & ( (\G1|G2|idlecount\(11) & (\G1|G2|idlecount\(14) & ((\G1|G2|idlecount\(8)) # 
-- (\G1|G2|idlecount\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_idlecount\(11),
	datab => \G1|G2|ALT_INV_idlecount\(9),
	datac => \G1|G2|ALT_INV_idlecount\(8),
	datad => \G1|G2|ALT_INV_idlecount\(14),
	datae => \G1|G2|ALT_INV_idlecount\(10),
	dataf => \G1|G2|ALT_INV_idlecount\(7),
	combout => \G1|G2|LessThan0~11_combout\);

-- Location: LABCELL_X83_Y11_N48
\G1|G2|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan0~5_combout\ = ( !\G1|G2|idlecount\(17) & ( \G1|G2|LessThan0~11_combout\ & ( (!\G1|G2|idlecount\(16)) # ((!\G1|G2|idlecount\(15) & ((!\G1|G2|idlecount\(12)) # (!\G1|G2|idlecount\(13))))) ) ) ) # ( !\G1|G2|idlecount\(17) & ( 
-- !\G1|G2|LessThan0~11_combout\ & ( (!\G1|G2|idlecount\(15)) # (!\G1|G2|idlecount\(16)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010000000000000000011111111101010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_idlecount\(15),
	datab => \G1|G2|ALT_INV_idlecount\(12),
	datac => \G1|G2|ALT_INV_idlecount\(13),
	datad => \G1|G2|ALT_INV_idlecount\(16),
	datae => \G1|G2|ALT_INV_idlecount\(17),
	dataf => \G1|G2|ALT_INV_LessThan0~11_combout\,
	combout => \G1|G2|LessThan0~5_combout\);

-- Location: MLABCELL_X82_Y9_N36
\G1|G2|LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan0~9_combout\ = ( \G1|G2|LessThan0~8_combout\ & ( \G1|G2|LessThan0~5_combout\ & ( (!\G1|G2|LessThan0~0_combout\ & (!\G1|G2|idlecount\(31) & (\G1|G2|LessThan0~6_combout\ & \G1|G2|LessThan0~1_combout\))) ) ) ) # ( !\G1|G2|LessThan0~8_combout\ 
-- & ( \G1|G2|LessThan0~5_combout\ & ( !\G1|G2|idlecount\(31) ) ) ) # ( \G1|G2|LessThan0~8_combout\ & ( !\G1|G2|LessThan0~5_combout\ & ( (!\G1|G2|idlecount\(31) & \G1|G2|LessThan0~6_combout\) ) ) ) # ( !\G1|G2|LessThan0~8_combout\ & ( 
-- !\G1|G2|LessThan0~5_combout\ & ( !\G1|G2|idlecount\(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000011000000110011001100110011000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_LessThan0~0_combout\,
	datab => \G1|G2|ALT_INV_idlecount\(31),
	datac => \G1|G2|ALT_INV_LessThan0~6_combout\,
	datad => \G1|G2|ALT_INV_LessThan0~1_combout\,
	datae => \G1|G2|ALT_INV_LessThan0~8_combout\,
	dataf => \G1|G2|ALT_INV_LessThan0~5_combout\,
	combout => \G1|G2|LessThan0~9_combout\);

-- Location: LABCELL_X81_Y9_N42
\G1|G2|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan2~0_combout\ = ( !\G1|G2|countt\(29) & ( !\G1|G2|countt\(25) & ( (!\G1|G2|countt\(26) & (!\G1|G2|countt\(27) & !\G1|G2|countt\(28))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(26),
	datab => \G1|G2|ALT_INV_countt\(27),
	datac => \G1|G2|ALT_INV_countt\(28),
	datae => \G1|G2|ALT_INV_countt\(29),
	dataf => \G1|G2|ALT_INV_countt\(25),
	combout => \G1|G2|LessThan2~0_combout\);

-- Location: MLABCELL_X82_Y9_N24
\G1|G2|outsig~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|outsig~0_combout\ = ( \G1|G2|countt\(24) & ( (!\G1|G2|countt\(30) & (!\G1|G2|countt\(23) & \G1|G2|LessThan2~0_combout\)) ) ) # ( !\G1|G2|countt\(24) & ( (!\G1|G2|countt\(30) & \G1|G2|LessThan2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(30),
	datac => \G1|G2|ALT_INV_countt\(23),
	datad => \G1|G2|ALT_INV_LessThan2~0_combout\,
	dataf => \G1|G2|ALT_INV_countt\(24),
	combout => \G1|G2|outsig~0_combout\);

-- Location: MLABCELL_X82_Y9_N6
\G1|G2|LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan1~4_combout\ = ( \G1|G2|countt\(15) & ( (!\G1|G2|countt\(17) & !\G1|G2|countt\(16)) ) ) # ( !\G1|G2|countt\(15) & ( !\G1|G2|countt\(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|G2|ALT_INV_countt\(17),
	datad => \G1|G2|ALT_INV_countt\(16),
	dataf => \G1|G2|ALT_INV_countt\(15),
	combout => \G1|G2|LessThan1~4_combout\);

-- Location: LABCELL_X81_Y9_N48
\G1|G2|LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan1~5_combout\ = ( \G1|G2|countt\(19) & ( \G1|G2|countt\(18) & ( (\G1|G2|countt\(21) & (\G1|G2|countt\(24) & (\G1|G2|countt\(20) & \G1|G2|countt\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(21),
	datab => \G1|G2|ALT_INV_countt\(24),
	datac => \G1|G2|ALT_INV_countt\(20),
	datad => \G1|G2|ALT_INV_countt\(22),
	datae => \G1|G2|ALT_INV_countt\(19),
	dataf => \G1|G2|ALT_INV_countt\(18),
	combout => \G1|G2|LessThan1~5_combout\);

-- Location: MLABCELL_X82_Y9_N45
\G1|G2|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan1~2_combout\ = ( !\G1|G2|countt\(5) & ( (!\G1|G2|countt\(3) & !\G1|G2|countt\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|G2|ALT_INV_countt\(3),
	datad => \G1|G2|ALT_INV_countt\(4),
	dataf => \G1|G2|ALT_INV_countt\(5),
	combout => \G1|G2|LessThan1~2_combout\);

-- Location: MLABCELL_X82_Y9_N51
\G1|G2|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan1~0_combout\ = ( \G1|G2|countt\(12) & ( (\G1|G2|countt\(16) & (\G1|G2|countt\(13) & (\G1|G2|countt\(14) & \G1|G2|countt\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(16),
	datab => \G1|G2|ALT_INV_countt\(13),
	datac => \G1|G2|ALT_INV_countt\(14),
	datad => \G1|G2|ALT_INV_countt\(11),
	dataf => \G1|G2|ALT_INV_countt\(12),
	combout => \G1|G2|LessThan1~0_combout\);

-- Location: MLABCELL_X82_Y9_N0
\G1|G2|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan1~3_combout\ = ( \G1|G2|LessThan1~2_combout\ & ( \G1|G2|LessThan1~0_combout\ & ( (\G1|G2|countt\(6) & (((!\G1|G2|countt\(0)) # (\G1|G2|countt\(2))) # (\G1|G2|countt\(1)))) ) ) ) # ( !\G1|G2|LessThan1~2_combout\ & ( 
-- \G1|G2|LessThan1~0_combout\ & ( \G1|G2|countt\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(1),
	datab => \G1|G2|ALT_INV_countt\(6),
	datac => \G1|G2|ALT_INV_countt\(2),
	datad => \G1|G2|ALT_INV_countt\(0),
	datae => \G1|G2|ALT_INV_LessThan1~2_combout\,
	dataf => \G1|G2|ALT_INV_LessThan1~0_combout\,
	combout => \G1|G2|LessThan1~3_combout\);

-- Location: MLABCELL_X82_Y9_N9
\G1|G2|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan1~1_combout\ = ( \G1|G2|LessThan1~0_combout\ & ( (((\G1|G2|countt\(7)) # (\G1|G2|countt\(8))) # (\G1|G2|countt\(9))) # (\G1|G2|countt\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(10),
	datab => \G1|G2|ALT_INV_countt\(9),
	datac => \G1|G2|ALT_INV_countt\(8),
	datad => \G1|G2|ALT_INV_countt\(7),
	dataf => \G1|G2|ALT_INV_LessThan1~0_combout\,
	combout => \G1|G2|LessThan1~1_combout\);

-- Location: MLABCELL_X82_Y9_N54
\G1|G2|LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan1~6_combout\ = ( \G1|G2|LessThan1~3_combout\ & ( \G1|G2|LessThan1~1_combout\ & ( (!\G1|G2|countt\(31) & ((!\G1|G2|outsig~0_combout\) # (\G1|G2|LessThan1~5_combout\))) ) ) ) # ( !\G1|G2|LessThan1~3_combout\ & ( \G1|G2|LessThan1~1_combout\ & 
-- ( (!\G1|G2|countt\(31) & ((!\G1|G2|outsig~0_combout\) # (\G1|G2|LessThan1~5_combout\))) ) ) ) # ( \G1|G2|LessThan1~3_combout\ & ( !\G1|G2|LessThan1~1_combout\ & ( (!\G1|G2|countt\(31) & ((!\G1|G2|outsig~0_combout\) # (\G1|G2|LessThan1~5_combout\))) ) ) ) 
-- # ( !\G1|G2|LessThan1~3_combout\ & ( !\G1|G2|LessThan1~1_combout\ & ( (!\G1|G2|countt\(31) & ((!\G1|G2|outsig~0_combout\) # ((!\G1|G2|LessThan1~4_combout\ & \G1|G2|LessThan1~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011001000100010001100110010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_outsig~0_combout\,
	datab => \G1|G2|ALT_INV_countt\(31),
	datac => \G1|G2|ALT_INV_LessThan1~4_combout\,
	datad => \G1|G2|ALT_INV_LessThan1~5_combout\,
	datae => \G1|G2|ALT_INV_LessThan1~3_combout\,
	dataf => \G1|G2|ALT_INV_LessThan1~1_combout\,
	combout => \G1|G2|LessThan1~6_combout\);

-- Location: LABCELL_X81_Y9_N57
\G1|G2|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan2~4_combout\ = ( !\G1|G2|countt\(19) & ( !\G1|G2|countt\(18) & ( (!\G1|G2|countt\(14) & (!\G1|G2|countt\(24) & !\G1|G2|countt\(23))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(14),
	datab => \G1|G2|ALT_INV_countt\(24),
	datac => \G1|G2|ALT_INV_countt\(23),
	datae => \G1|G2|ALT_INV_countt\(19),
	dataf => \G1|G2|ALT_INV_countt\(18),
	combout => \G1|G2|LessThan2~4_combout\);

-- Location: LABCELL_X81_Y9_N36
\G1|G2|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan2~3_combout\ = ( \G1|G2|countt\(9) & ( \G1|G2|countt\(12) & ( (\G1|G2|countt\(7) & \G1|G2|countt\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(7),
	datac => \G1|G2|ALT_INV_countt\(8),
	datae => \G1|G2|ALT_INV_countt\(9),
	dataf => \G1|G2|ALT_INV_countt\(12),
	combout => \G1|G2|LessThan2~3_combout\);

-- Location: LABCELL_X81_Y11_N33
\G1|G2|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan2~1_combout\ = ( !\G1|G2|countt\(4) & ( !\G1|G2|countt\(5) & ( !\G1|G2|countt\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|G2|ALT_INV_countt\(6),
	datae => \G1|G2|ALT_INV_countt\(4),
	dataf => \G1|G2|ALT_INV_countt\(5),
	combout => \G1|G2|LessThan2~1_combout\);

-- Location: LABCELL_X81_Y11_N15
\G1|G2|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan2~2_combout\ = ( \G1|G2|countt\(2) & ( \G1|G2|LessThan2~1_combout\ & ( !\G1|G2|countt\(3) ) ) ) # ( !\G1|G2|countt\(2) & ( \G1|G2|LessThan2~1_combout\ & ( (!\G1|G2|countt\(3)) # ((!\G1|G2|countt\(1) & \G1|G2|countt\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111110101111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(1),
	datac => \G1|G2|ALT_INV_countt\(3),
	datad => \G1|G2|ALT_INV_countt\(0),
	datae => \G1|G2|ALT_INV_countt\(2),
	dataf => \G1|G2|ALT_INV_LessThan2~1_combout\,
	combout => \G1|G2|LessThan2~2_combout\);

-- Location: MLABCELL_X82_Y9_N48
\G1|G2|LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan2~5_combout\ = ( !\G1|G2|countt\(15) & ( (!\G1|G2|countt\(16) & (!\G1|G2|countt\(13) & (!\G1|G2|countt\(17) & !\G1|G2|countt\(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(16),
	datab => \G1|G2|ALT_INV_countt\(13),
	datac => \G1|G2|ALT_INV_countt\(17),
	datad => \G1|G2|ALT_INV_countt\(21),
	dataf => \G1|G2|ALT_INV_countt\(15),
	combout => \G1|G2|LessThan2~5_combout\);

-- Location: MLABCELL_X82_Y9_N30
\G1|G2|LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan2~6_combout\ = ( \G1|G2|countt\(11) & ( \G1|G2|LessThan2~5_combout\ & ( (!\G1|G2|countt\(22) & !\G1|G2|countt\(12)) ) ) ) # ( !\G1|G2|countt\(11) & ( \G1|G2|LessThan2~5_combout\ & ( (!\G1|G2|countt\(22) & ((!\G1|G2|countt\(10)) # 
-- (!\G1|G2|countt\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101000101010001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(22),
	datab => \G1|G2|ALT_INV_countt\(10),
	datac => \G1|G2|ALT_INV_countt\(12),
	datae => \G1|G2|ALT_INV_countt\(11),
	dataf => \G1|G2|ALT_INV_LessThan2~5_combout\,
	combout => \G1|G2|LessThan2~6_combout\);

-- Location: MLABCELL_X82_Y9_N12
\G1|G2|LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|LessThan2~7_combout\ = ( \G1|G2|LessThan2~2_combout\ & ( \G1|G2|LessThan2~6_combout\ & ( (!\G1|G2|countt\(20) & (\G1|G2|LessThan2~4_combout\ & \G1|G2|LessThan2~0_combout\)) ) ) ) # ( !\G1|G2|LessThan2~2_combout\ & ( \G1|G2|LessThan2~6_combout\ & ( 
-- (!\G1|G2|countt\(20) & (\G1|G2|LessThan2~4_combout\ & (!\G1|G2|LessThan2~3_combout\ & \G1|G2|LessThan2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(20),
	datab => \G1|G2|ALT_INV_LessThan2~4_combout\,
	datac => \G1|G2|ALT_INV_LessThan2~3_combout\,
	datad => \G1|G2|ALT_INV_LessThan2~0_combout\,
	datae => \G1|G2|ALT_INV_LessThan2~2_combout\,
	dataf => \G1|G2|ALT_INV_LessThan2~6_combout\,
	combout => \G1|G2|LessThan2~7_combout\);

-- Location: MLABCELL_X82_Y9_N27
\G1|G2|outsigdata[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|outsigdata[0]~0_combout\ = ( \G1|G2|LessThan2~7_combout\ & ( (!\G1|G2|LessThan1~6_combout\ & (((\G1|G2|countt\(30) & !\G1|G2|countt\(31))) # (\G1|G2|LessThan0~9_combout\))) ) ) # ( !\G1|G2|LessThan2~7_combout\ & ( (!\G1|G2|LessThan1~6_combout\ & 
-- ((!\G1|G2|countt\(31)) # (\G1|G2|LessThan0~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000000110011110000000001001111000000000100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(30),
	datab => \G1|G2|ALT_INV_countt\(31),
	datac => \G1|G2|ALT_INV_LessThan0~9_combout\,
	datad => \G1|G2|ALT_INV_LessThan1~6_combout\,
	dataf => \G1|G2|ALT_INV_LessThan2~7_combout\,
	combout => \G1|G2|outsigdata[0]~0_combout\);

-- Location: MLABCELL_X82_Y9_N18
\G1|G2|outsigdata[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|outsigdata[0]~1_combout\ = ( \G1|G2|LessThan1~6_combout\ & ( \G1|G2|LessThan2~7_combout\ & ( \A~input_o\ ) ) ) # ( !\G1|G2|LessThan1~6_combout\ & ( \G1|G2|LessThan2~7_combout\ & ( (\A~input_o\ & (((\G1|G2|countt\(30) & !\G1|G2|countt\(31))) # 
-- (\G1|G2|LessThan0~9_combout\))) ) ) ) # ( \G1|G2|LessThan1~6_combout\ & ( !\G1|G2|LessThan2~7_combout\ & ( \A~input_o\ ) ) ) # ( !\G1|G2|LessThan1~6_combout\ & ( !\G1|G2|LessThan2~7_combout\ & ( (\A~input_o\ & ((!\G1|G2|countt\(31)) # 
-- (\G1|G2|LessThan0~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001111111100000000010011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(30),
	datab => \G1|G2|ALT_INV_countt\(31),
	datac => \G1|G2|ALT_INV_LessThan0~9_combout\,
	datad => \ALT_INV_A~input_o\,
	datae => \G1|G2|ALT_INV_LessThan1~6_combout\,
	dataf => \G1|G2|ALT_INV_LessThan2~7_combout\,
	combout => \G1|G2|outsigdata[0]~1_combout\);

-- Location: FF_X82_Y9_N28
\G1|G2|outsigdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|outsigdata[0]~0_combout\,
	ena => \G1|G2|outsigdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|outsigdata\(0));

-- Location: MLABCELL_X82_Y9_N42
\G1|G2|outsigdata[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|outsigdata[1]~2_combout\ = ( \G1|G2|LessThan2~7_combout\ & ( ((\G1|G2|LessThan0~9_combout\ & ((!\G1|G2|countt\(30)) # (\G1|G2|countt\(31))))) # (\G1|G2|LessThan1~6_combout\) ) ) # ( !\G1|G2|LessThan2~7_combout\ & ( ((\G1|G2|LessThan0~9_combout\ & 
-- \G1|G2|countt\(31))) # (\G1|G2|LessThan1~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111101010001111111110101000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_LessThan0~9_combout\,
	datab => \G1|G2|ALT_INV_countt\(31),
	datac => \G1|G2|ALT_INV_countt\(30),
	datad => \G1|G2|ALT_INV_LessThan1~6_combout\,
	dataf => \G1|G2|ALT_INV_LessThan2~7_combout\,
	combout => \G1|G2|outsigdata[1]~2_combout\);

-- Location: FF_X82_Y9_N43
\G1|G2|outsigdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|outsigdata[1]~2_combout\,
	ena => \G1|G2|outsigdata[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|outsigdata\(1));

-- Location: LABCELL_X83_Y9_N18
\G1|G2|outsig~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|outsig~1_combout\ = ( \G1|G2|LessThan2~7_combout\ & ( \G1|G2|LessThan1~6_combout\ & ( \A~input_o\ ) ) ) # ( !\G1|G2|LessThan2~7_combout\ & ( \G1|G2|LessThan1~6_combout\ & ( \A~input_o\ ) ) ) # ( \G1|G2|LessThan2~7_combout\ & ( 
-- !\G1|G2|LessThan1~6_combout\ & ( (\A~input_o\ & (\G1|G2|LessThan0~9_combout\ & ((!\G1|G2|countt\(30)) # (\G1|G2|countt\(31))))) ) ) ) # ( !\G1|G2|LessThan2~7_combout\ & ( !\G1|G2|LessThan1~6_combout\ & ( (\G1|G2|countt\(31) & (\A~input_o\ & 
-- \G1|G2|LessThan0~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000110000000100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_countt\(31),
	datab => \ALT_INV_A~input_o\,
	datac => \G1|G2|ALT_INV_LessThan0~9_combout\,
	datad => \G1|G2|ALT_INV_countt\(30),
	datae => \G1|G2|ALT_INV_LessThan2~7_combout\,
	dataf => \G1|G2|ALT_INV_LessThan1~6_combout\,
	combout => \G1|G2|outsig~1_combout\);

-- Location: FF_X83_Y9_N20
\G1|G2|outsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|outsig~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|outsig\(1));

-- Location: LABCELL_X83_Y9_N24
\G1|G2|outsig~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|outsig~2_combout\ = ( \G1|G2|outsig~0_combout\ & ( \G1|G2|LessThan1~1_combout\ & ( !\G1|G2|LessThan1~5_combout\ ) ) ) # ( \G1|G2|outsig~0_combout\ & ( !\G1|G2|LessThan1~1_combout\ & ( (!\G1|G2|LessThan1~5_combout\) # ((\G1|G2|LessThan1~4_combout\ & 
-- !\G1|G2|LessThan1~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|G2|ALT_INV_LessThan1~5_combout\,
	datac => \G1|G2|ALT_INV_LessThan1~4_combout\,
	datad => \G1|G2|ALT_INV_LessThan1~3_combout\,
	datae => \G1|G2|ALT_INV_outsig~0_combout\,
	dataf => \G1|G2|ALT_INV_LessThan1~1_combout\,
	combout => \G1|G2|outsig~2_combout\);

-- Location: LABCELL_X83_Y9_N48
\G1|G2|outsig~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G2|outsig~3_combout\ = ( \G1|G2|LessThan2~7_combout\ & ( \G1|G2|outsig~2_combout\ & ( \G1|G2|LessThan0~9_combout\ ) ) ) # ( !\G1|G2|LessThan2~7_combout\ & ( \G1|G2|outsig~2_combout\ & ( (!\G1|G2|countt\(31)) # (\G1|G2|LessThan0~9_combout\) ) ) ) # ( 
-- \G1|G2|LessThan2~7_combout\ & ( !\G1|G2|outsig~2_combout\ & ( (\G1|G2|LessThan0~9_combout\ & \G1|G2|countt\(31)) ) ) ) # ( !\G1|G2|LessThan2~7_combout\ & ( !\G1|G2|outsig~2_combout\ & ( (\G1|G2|LessThan0~9_combout\ & \G1|G2|countt\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_LessThan0~9_combout\,
	datac => \G1|G2|ALT_INV_countt\(31),
	datae => \G1|G2|ALT_INV_LessThan2~7_combout\,
	dataf => \G1|G2|ALT_INV_outsig~2_combout\,
	combout => \G1|G2|outsig~3_combout\);

-- Location: FF_X83_Y9_N50
\G1|G2|outsig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G2|outsig~3_combout\,
	sclr => \ALT_INV_A~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G2|outsig\(0));

-- Location: LABCELL_X83_Y11_N18
\G2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Equal0~0_combout\ = ( \G1|G2|outsig\(0) & ( \G1|G2|outsig\(1) ) ) # ( !\G1|G2|outsig\(0) & ( \G1|G2|outsig\(1) ) ) # ( \G1|G2|outsig\(0) & ( !\G1|G2|outsig\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G1|G2|ALT_INV_outsig\(0),
	dataf => \G1|G2|ALT_INV_outsig\(1),
	combout => \G2|Equal0~0_combout\);

-- Location: FF_X84_Y12_N49
\G2|state[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~17_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state[4]~DUPLICATE_q\);

-- Location: FF_X85_Y11_N55
\G2|state[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~15_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state[3]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y12_N24
\G2|Mux34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux34~1_combout\ = ( \G1|G2|outsig\(1) & ( \G1|G2|outsig\(0) & ( (!\G2|state[4]~DUPLICATE_q\ & ((!\G2|state\(1) $ (\G2|state[3]~DUPLICATE_q\)) # (\G2|state[0]~DUPLICATE_q\))) ) ) ) # ( !\G1|G2|outsig\(1) & ( \G1|G2|outsig\(0) & ( 
-- (!\G2|state[3]~DUPLICATE_q\ & (!\G2|state\(1))) # (\G2|state[3]~DUPLICATE_q\ & (!\G2|state[4]~DUPLICATE_q\ & (!\G2|state\(1) $ (!\G2|state[0]~DUPLICATE_q\)))) ) ) ) # ( \G1|G2|outsig\(1) & ( !\G1|G2|outsig\(0) & ( (!\G2|state[4]~DUPLICATE_q\ & 
-- ((!\G2|state\(1) & ((\G2|state[0]~DUPLICATE_q\))) # (\G2|state\(1) & (\G2|state[3]~DUPLICATE_q\ & !\G2|state[0]~DUPLICATE_q\)))) # (\G2|state[4]~DUPLICATE_q\ & (!\G2|state[3]~DUPLICATE_q\ & (!\G2|state\(1) $ (\G2|state[0]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\G1|G2|outsig\(1) & ( !\G1|G2|outsig\(0) & ( (!\G2|state[4]~DUPLICATE_q\ & ((!\G2|state\(1) $ (\G2|state[3]~DUPLICATE_q\)) # (\G2|state[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010011001100001001001001100010100100101010001000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(1),
	datab => \G2|ALT_INV_state[4]~DUPLICATE_q\,
	datac => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datad => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datae => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux34~1_combout\);

-- Location: MLABCELL_X82_Y12_N9
\G2|Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux34~0_combout\ = ( \G1|G2|outsig\(1) & ( \G1|G2|outsig\(0) & ( (!\G2|state[4]~DUPLICATE_q\ & ((!\G2|state[0]~DUPLICATE_q\ $ (!\G2|state\(1))) # (\G2|state[3]~DUPLICATE_q\))) ) ) ) # ( !\G1|G2|outsig\(1) & ( \G1|G2|outsig\(0) & ( (\G2|state\(1) & 
-- ((!\G2|state[4]~DUPLICATE_q\ & (\G2|state[0]~DUPLICATE_q\ & \G2|state[3]~DUPLICATE_q\)) # (\G2|state[4]~DUPLICATE_q\ & ((!\G2|state[3]~DUPLICATE_q\))))) ) ) ) # ( !\G1|G2|outsig\(1) & ( !\G1|G2|outsig\(0) & ( (!\G2|state[4]~DUPLICATE_q\ & 
-- ((!\G2|state[0]~DUPLICATE_q\ $ (!\G2|state\(1))) # (\G2|state[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110010001100000000000000000000000000001101000100110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datab => \G2|ALT_INV_state[4]~DUPLICATE_q\,
	datac => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datad => \G2|ALT_INV_state\(1),
	datae => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux34~0_combout\);

-- Location: LABCELL_X83_Y12_N18
\G2|Mux34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux34~2_combout\ = ( \G2|Mux34~0_combout\ & ( (\G2|state\(2) & !\G2|Mux34~1_combout\) ) ) # ( !\G2|Mux34~0_combout\ & ( (!\G2|state\(2)) # (!\G2|Mux34~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_state\(2),
	datac => \G2|ALT_INV_Mux34~1_combout\,
	dataf => \G2|ALT_INV_Mux34~0_combout\,
	combout => \G2|Mux34~2_combout\);

-- Location: MLABCELL_X84_Y12_N12
\G2|state~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~16_combout\ = ( \G1|G2|outsig\(0) & ( (\G2|Mux31~0_combout\ & ((!\G1|G2|outsig\(1)) # (!\G2|state\(4)))) ) ) # ( !\G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1) & (!\G2|state\(4) & \G2|Mux31~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_state\(4),
	datad => \G2|ALT_INV_Mux31~0_combout\,
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|state~16_combout\);

-- Location: MLABCELL_X84_Y11_N9
\G2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Equal1~0_combout\ = ( \G1|G2|outsig\(0) & ( \G1|G2|outsig\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G1|G2|ALT_INV_outsig\(0),
	dataf => \G1|G2|ALT_INV_outsig\(1),
	combout => \G2|Equal1~0_combout\);

-- Location: FF_X84_Y12_N8
\G2|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~21_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state\(6));

-- Location: FF_X85_Y12_N50
\G2|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~23_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state\(7));

-- Location: MLABCELL_X84_Y12_N48
\G2|state~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~17_combout\ = ( \G2|state\(7) & ( \G2|state[5]~DUPLICATE_q\ & ( !\G2|Equal1~0_combout\ ) ) ) # ( !\G2|state\(7) & ( \G2|state[5]~DUPLICATE_q\ & ( (!\G2|Equal1~0_combout\ & ((!\G2|state~16_combout\) # (\G2|state\(6)))) ) ) ) # ( \G2|state\(7) & ( 
-- !\G2|state[5]~DUPLICATE_q\ & ( !\G2|Equal1~0_combout\ ) ) ) # ( !\G2|state\(7) & ( !\G2|state[5]~DUPLICATE_q\ & ( (!\G2|Equal1~0_combout\ & ((!\G2|state\(6) & ((!\G2|state~16_combout\))) # (\G2|state\(6) & (\G2|Mux34~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001010000111100001111000011000000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_Mux34~2_combout\,
	datab => \G2|ALT_INV_state~16_combout\,
	datac => \G2|ALT_INV_Equal1~0_combout\,
	datad => \G2|ALT_INV_state\(6),
	datae => \G2|ALT_INV_state\(7),
	dataf => \G2|ALT_INV_state[5]~DUPLICATE_q\,
	combout => \G2|state~17_combout\);

-- Location: FF_X84_Y12_N50
\G2|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~17_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state\(4));

-- Location: MLABCELL_X84_Y12_N42
\G2|Mux31~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux31~5_combout\ = ( \G2|state[0]~DUPLICATE_q\ & ( \G1|G2|outsig\(0) & ( (!\G2|state[3]~DUPLICATE_q\ & ((!\G1|G2|outsig\(1)) # (!\G2|state\(7)))) ) ) ) # ( !\G2|state[0]~DUPLICATE_q\ & ( \G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1) & (!\G2|state\(2))) # 
-- (\G1|G2|outsig\(1) & (!\G2|state\(7) & ((!\G2|state\(2)) # (!\G2|state[3]~DUPLICATE_q\)))) ) ) ) # ( \G2|state[0]~DUPLICATE_q\ & ( !\G1|G2|outsig\(0) & ( (!\G2|state[3]~DUPLICATE_q\ & ((!\G2|state\(7)) # (\G1|G2|outsig\(1)))) ) ) ) # ( 
-- !\G2|state[0]~DUPLICATE_q\ & ( !\G1|G2|outsig\(0) & ( (!\G2|state\(2) & (!\G1|G2|outsig\(1) & ((!\G2|state\(7))))) # (\G2|state\(2) & (!\G2|state[3]~DUPLICATE_q\ & ((!\G2|state\(7)) # (\G1|G2|outsig\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100000010000111100000011000010111010100010001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(2),
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datad => \G2|ALT_INV_state\(7),
	datae => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux31~5_combout\);

-- Location: LABCELL_X83_Y12_N0
\G2|Mux31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux31~2_combout\ = ( \G2|state\(2) & ( \G2|state[7]~DUPLICATE_q\ & ( (!\G2|state[0]~DUPLICATE_q\ & ((!\G1|G2|outsig\(1) $ (\G1|G2|outsig\(0))) # (\G2|state[3]~DUPLICATE_q\))) # (\G2|state[0]~DUPLICATE_q\ & (!\G1|G2|outsig\(1) $ ((\G1|G2|outsig\(0))))) 
-- ) ) ) # ( !\G2|state\(2) & ( \G2|state[7]~DUPLICATE_q\ & ( (!\G2|state[0]~DUPLICATE_q\ & ((!\G2|state[3]~DUPLICATE_q\) # (!\G1|G2|outsig\(1) $ (\G1|G2|outsig\(0))))) # (\G2|state[0]~DUPLICATE_q\ & (!\G1|G2|outsig\(1) $ ((\G1|G2|outsig\(0))))) ) ) ) # ( 
-- \G2|state\(2) & ( !\G2|state[7]~DUPLICATE_q\ & ( (!\G2|state[0]~DUPLICATE_q\ & \G2|state[3]~DUPLICATE_q\) ) ) ) # ( !\G2|state\(2) & ( !\G2|state[7]~DUPLICATE_q\ & ( (!\G2|state[0]~DUPLICATE_q\ & !\G2|state[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000001100110011101101101001011010010111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_outsig\(1),
	datab => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datac => \G1|G2|ALT_INV_outsig\(0),
	datad => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datae => \G2|ALT_INV_state\(2),
	dataf => \G2|ALT_INV_state[7]~DUPLICATE_q\,
	combout => \G2|Mux31~2_combout\);

-- Location: LABCELL_X85_Y12_N0
\G2|Mux31~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux31~4_combout\ = ( !\G2|state[3]~DUPLICATE_q\ & ( \G2|state[0]~DUPLICATE_q\ & ( (\G2|state\(2) & ((!\G1|G2|outsig\(1) & ((!\G2|state[7]~DUPLICATE_q\) # (\G1|G2|outsig\(0)))) # (\G1|G2|outsig\(1) & (\G1|G2|outsig\(0) & !\G2|state[7]~DUPLICATE_q\)))) 
-- ) ) ) # ( !\G2|state[3]~DUPLICATE_q\ & ( !\G2|state[0]~DUPLICATE_q\ & ( (\G2|state\(2) & ((!\G2|state[7]~DUPLICATE_q\) # (!\G1|G2|outsig\(1) $ (!\G1|G2|outsig\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010100000000000000000001000101000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(2),
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G1|G2|ALT_INV_outsig\(0),
	datad => \G2|ALT_INV_state[7]~DUPLICATE_q\,
	datae => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	combout => \G2|Mux31~4_combout\);

-- Location: FF_X84_Y11_N2
\G2|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~6_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state\(0));

-- Location: MLABCELL_X84_Y11_N24
\G2|Mux31~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux31~3_combout\ = ( \G2|state\(0) & ( \G1|G2|outsig\(0) & ( (!\G2|state\(2) & (\G2|state[3]~DUPLICATE_q\ & ((!\G1|G2|outsig\(1)) # (!\G2|state[7]~DUPLICATE_q\)))) # (\G2|state\(2) & ((!\G1|G2|outsig\(1) & (!\G2|state[3]~DUPLICATE_q\)) # 
-- (\G1|G2|outsig\(1) & ((!\G2|state[7]~DUPLICATE_q\) # (\G2|state[3]~DUPLICATE_q\))))) ) ) ) # ( !\G2|state\(0) & ( \G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1) & (!\G2|state\(2) $ ((\G2|state[3]~DUPLICATE_q\)))) # (\G1|G2|outsig\(1) & 
-- (!\G2|state[7]~DUPLICATE_q\ & ((!\G2|state\(2)) # (\G2|state[3]~DUPLICATE_q\)))) ) ) ) # ( \G2|state\(0) & ( !\G1|G2|outsig\(0) & ( (!\G2|state\(2) & (\G2|state[3]~DUPLICATE_q\ & ((!\G2|state[7]~DUPLICATE_q\) # (\G1|G2|outsig\(1))))) # (\G2|state\(2) & 
-- ((!\G1|G2|outsig\(1) & ((!\G2|state[7]~DUPLICATE_q\) # (\G2|state[3]~DUPLICATE_q\))) # (\G1|G2|outsig\(1) & (!\G2|state[3]~DUPLICATE_q\)))) ) ) ) # ( !\G2|state\(0) & ( !\G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1) & (!\G2|state[7]~DUPLICATE_q\ & 
-- ((!\G2|state\(2)) # (\G2|state[3]~DUPLICATE_q\)))) # (\G1|G2|outsig\(1) & (((\G2|state[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111100000011010111100001011010100111100001000101101101001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(2),
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datad => \G2|ALT_INV_state[7]~DUPLICATE_q\,
	datae => \G2|ALT_INV_state\(0),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux31~3_combout\);

-- Location: MLABCELL_X84_Y12_N0
\G2|Mux31~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux31~6_combout\ = ( \G2|Mux31~4_combout\ & ( \G2|Mux31~3_combout\ & ( (!\G2|state\(4) & (!\G2|state\(1) & ((\G2|Mux31~2_combout\)))) # (\G2|state\(4) & (\G2|state\(1) & (!\G2|Mux31~5_combout\))) ) ) ) # ( !\G2|Mux31~4_combout\ & ( 
-- \G2|Mux31~3_combout\ & ( (!\G2|state\(4) & (!\G2|state\(1) & ((\G2|Mux31~2_combout\)))) # (\G2|state\(4) & ((!\G2|state\(1)) # ((!\G2|Mux31~5_combout\)))) ) ) ) # ( \G2|Mux31~4_combout\ & ( !\G2|Mux31~3_combout\ & ( (!\G2|state\(4) & 
-- (((\G2|Mux31~2_combout\)) # (\G2|state\(1)))) # (\G2|state\(4) & (\G2|state\(1) & (!\G2|Mux31~5_combout\))) ) ) ) # ( !\G2|Mux31~4_combout\ & ( !\G2|Mux31~3_combout\ & ( (!\G2|state\(4) & (((\G2|Mux31~2_combout\)) # (\G2|state\(1)))) # (\G2|state\(4) & 
-- ((!\G2|state\(1)) # ((!\G2|Mux31~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011011111110001100101011101001010100110111000001000010011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(4),
	datab => \G2|ALT_INV_state\(1),
	datac => \G2|ALT_INV_Mux31~5_combout\,
	datad => \G2|ALT_INV_Mux31~2_combout\,
	datae => \G2|ALT_INV_Mux31~4_combout\,
	dataf => \G2|ALT_INV_Mux31~3_combout\,
	combout => \G2|Mux31~6_combout\);

-- Location: FF_X85_Y12_N31
\G2|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~24_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state\(5));

-- Location: MLABCELL_X84_Y12_N9
\G2|Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux38~0_combout\ = ( \G2|state\(4) & ( (\G2|state\(5) & \G2|state[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_state\(5),
	datad => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_state\(4),
	combout => \G2|Mux38~0_combout\);

-- Location: MLABCELL_X84_Y11_N51
\G2|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~0_combout\ = ( \G2|state[6]~DUPLICATE_q\ & ( \G2|state[7]~DUPLICATE_q\ & ( (!\G1|G2|outsig\(1)) # (!\G1|G2|outsig\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G1|G2|ALT_INV_outsig\(1),
	datad => \G1|G2|ALT_INV_outsig\(0),
	datae => \G2|ALT_INV_state[6]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_state[7]~DUPLICATE_q\,
	combout => \G2|state~0_combout\);

-- Location: LABCELL_X85_Y12_N12
\G2|Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux31~1_combout\ = ( \G2|state\(2) & ( \G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1) & (!\G2|state\(1) & (\G2|state[0]~DUPLICATE_q\))) # (\G1|G2|outsig\(1) & (!\G2|state[7]~DUPLICATE_q\ & (!\G2|state\(1) $ (!\G2|state[0]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\G2|state\(2) & ( \G1|G2|outsig\(0) & ( (\G2|state\(1) & (\G2|state[0]~DUPLICATE_q\ & ((!\G1|G2|outsig\(1)) # (!\G2|state[7]~DUPLICATE_q\)))) ) ) ) # ( \G2|state\(2) & ( !\G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1) & (!\G2|state[7]~DUPLICATE_q\ & 
-- (!\G2|state\(1) $ (!\G2|state[0]~DUPLICATE_q\)))) # (\G1|G2|outsig\(1) & (\G2|state\(1) & (!\G2|state[0]~DUPLICATE_q\))) ) ) ) # ( !\G2|state\(2) & ( !\G1|G2|outsig\(0) & ( (\G2|state\(1) & (\G2|state[0]~DUPLICATE_q\ & ((!\G2|state[7]~DUPLICATE_q\) # 
-- (\G1|G2|outsig\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000001010110000001000000000101000001000001101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(1),
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datad => \G2|ALT_INV_state[7]~DUPLICATE_q\,
	datae => \G2|ALT_INV_state\(2),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux31~1_combout\);

-- Location: LABCELL_X85_Y12_N57
\G2|state~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~22_combout\ = ( \G2|Mux31~1_combout\ & ( (!\G2|Mux38~0_combout\ & \G2|state~0_combout\) ) ) # ( !\G2|Mux31~1_combout\ & ( \G2|state~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_Mux38~0_combout\,
	datad => \G2|ALT_INV_state~0_combout\,
	dataf => \G2|ALT_INV_Mux31~1_combout\,
	combout => \G2|state~22_combout\);

-- Location: LABCELL_X85_Y12_N39
\G2|state~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~4_combout\ = ( !\G2|state[6]~DUPLICATE_q\ & ( \G1|G2|outsig\(1) & ( (!\G1|G2|outsig\(0) & !\G2|state[7]~DUPLICATE_q\) ) ) ) # ( !\G2|state[6]~DUPLICATE_q\ & ( !\G1|G2|outsig\(1) & ( !\G2|state[7]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_outsig\(0),
	datac => \G2|ALT_INV_state[7]~DUPLICATE_q\,
	datae => \G2|ALT_INV_state[6]~DUPLICATE_q\,
	dataf => \G1|G2|ALT_INV_outsig\(1),
	combout => \G2|state~4_combout\);

-- Location: LABCELL_X85_Y12_N48
\G2|state~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~23_combout\ = ( \G2|state~22_combout\ & ( \G2|state~4_combout\ ) ) # ( !\G2|state~22_combout\ & ( \G2|state~4_combout\ & ( (!\G2|Mux31~0_combout\) # (((\G2|state~2_combout\ & \G2|Mux31~6_combout\)) # (\G2|state~5_combout\)) ) ) ) # ( 
-- \G2|state~22_combout\ & ( !\G2|state~4_combout\ ) ) # ( !\G2|state~22_combout\ & ( !\G2|state~4_combout\ & ( ((\G2|state~2_combout\ & \G2|Mux31~6_combout\)) # (\G2|state~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111111111111111111110101111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_Mux31~0_combout\,
	datab => \G2|ALT_INV_state~2_combout\,
	datac => \G2|ALT_INV_state~5_combout\,
	datad => \G2|ALT_INV_Mux31~6_combout\,
	datae => \G2|ALT_INV_state~22_combout\,
	dataf => \G2|ALT_INV_state~4_combout\,
	combout => \G2|state~23_combout\);

-- Location: FF_X85_Y12_N49
\G2|state[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~23_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state[7]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y12_N30
\G2|state~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~5_combout\ = ( \G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1) & ((!\G2|state[6]~DUPLICATE_q\ & ((\G2|state[7]~DUPLICATE_q\))) # (\G2|state[6]~DUPLICATE_q\ & (\G2|state[5]~DUPLICATE_q\ & !\G2|state[7]~DUPLICATE_q\)))) ) ) # ( !\G1|G2|outsig\(0) & ( 
-- (!\G2|state[6]~DUPLICATE_q\ & ((\G2|state[7]~DUPLICATE_q\))) # (\G2|state[6]~DUPLICATE_q\ & (\G2|state[5]~DUPLICATE_q\ & !\G2|state[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101000011010000110100001101000011010000000000001101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state[6]~DUPLICATE_q\,
	datab => \G2|ALT_INV_state[5]~DUPLICATE_q\,
	datac => \G2|ALT_INV_state[7]~DUPLICATE_q\,
	datad => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|state~5_combout\);

-- Location: MLABCELL_X84_Y11_N42
\G2|state~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~14_combout\ = ( \G1|G2|outsig\(0) & ( \G2|Mux31~0_combout\ & ( (!\G1|G2|outsig\(1)) # (!\G2|state[3]~DUPLICATE_q\) ) ) ) # ( !\G1|G2|outsig\(0) & ( \G2|Mux31~0_combout\ & ( (!\G2|state[3]~DUPLICATE_q\) # (\G1|G2|outsig\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110011111100111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datae => \G1|G2|ALT_INV_outsig\(0),
	dataf => \G2|ALT_INV_Mux31~0_combout\,
	combout => \G2|state~14_combout\);

-- Location: LABCELL_X85_Y11_N6
\G2|Mux35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux35~1_combout\ = ( \G2|state[4]~DUPLICATE_q\ & ( \G1|G2|outsig\(0) & ( (!\G2|state\(3) & (((\G2|state[0]~DUPLICATE_q\ & \G2|state\(2))) # (\G1|G2|outsig\(1)))) # (\G2|state\(3) & (!\G2|state[0]~DUPLICATE_q\ & (!\G2|state\(2) & !\G1|G2|outsig\(1)))) 
-- ) ) ) # ( !\G2|state[4]~DUPLICATE_q\ & ( \G1|G2|outsig\(0) & ( (!\G2|state\(3) & ((!\G2|state[0]~DUPLICATE_q\ & (!\G2|state\(2))) # (\G2|state[0]~DUPLICATE_q\ & (\G2|state\(2) & \G1|G2|outsig\(1))))) # (\G2|state\(3) & (!\G1|G2|outsig\(1) & 
-- (!\G2|state[0]~DUPLICATE_q\ $ (!\G2|state\(2))))) ) ) ) # ( \G2|state[4]~DUPLICATE_q\ & ( !\G1|G2|outsig\(0) & ( (!\G2|state\(3) & ((!\G1|G2|outsig\(1)) # (!\G2|state[0]~DUPLICATE_q\ $ (!\G2|state\(2))))) ) ) ) # ( !\G2|state[4]~DUPLICATE_q\ & ( 
-- !\G1|G2|outsig\(0) & ( (!\G2|state[0]~DUPLICATE_q\ & (!\G2|state\(2) & (!\G2|state\(3) $ (\G1|G2|outsig\(1))))) # (\G2|state[0]~DUPLICATE_q\ & (!\G2|state\(3) & (\G2|state\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000010101010100010100010010100100000100100001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(3),
	datab => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datac => \G2|ALT_INV_state\(2),
	datad => \G1|G2|ALT_INV_outsig\(1),
	datae => \G2|ALT_INV_state[4]~DUPLICATE_q\,
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux35~1_combout\);

-- Location: LABCELL_X85_Y11_N12
\G2|Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux35~0_combout\ = ( \G1|G2|outsig\(1) & ( \G1|G2|outsig\(0) & ( (!\G2|state\(3) & (((!\G2|state[4]~DUPLICATE_q\ & \G2|state[0]~DUPLICATE_q\)) # (\G2|state\(2)))) ) ) ) # ( !\G1|G2|outsig\(1) & ( \G1|G2|outsig\(0) & ( (!\G2|state[0]~DUPLICATE_q\ & 
-- (!\G2|state[4]~DUPLICATE_q\ & (!\G2|state\(3) $ (!\G2|state\(2))))) # (\G2|state[0]~DUPLICATE_q\ & (!\G2|state[4]~DUPLICATE_q\ $ (((!\G2|state\(3) & \G2|state\(2)))))) ) ) ) # ( \G1|G2|outsig\(1) & ( !\G1|G2|outsig\(0) & ( (!\G2|state[4]~DUPLICATE_q\ & 
-- ((!\G2|state\(3) & ((\G2|state[0]~DUPLICATE_q\))) # (\G2|state\(3) & (!\G2|state\(2))))) ) ) ) # ( !\G1|G2|outsig\(1) & ( !\G1|G2|outsig\(0) & ( (!\G2|state\(3) & (((!\G2|state[4]~DUPLICATE_q\ & \G2|state[0]~DUPLICATE_q\)) # (\G2|state\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010001010010000001100100001001000110001100000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(3),
	datab => \G2|ALT_INV_state[4]~DUPLICATE_q\,
	datac => \G2|ALT_INV_state\(2),
	datad => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datae => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux35~0_combout\);

-- Location: LABCELL_X85_Y11_N3
\G2|Mux35~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux35~2_combout\ = ( \G2|Mux35~0_combout\ & ( (\G2|state\(1) & !\G2|Mux35~1_combout\) ) ) # ( !\G2|Mux35~0_combout\ & ( (!\G2|state\(1)) # (!\G2|Mux35~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_state\(1),
	datac => \G2|ALT_INV_Mux35~1_combout\,
	dataf => \G2|ALT_INV_Mux35~0_combout\,
	combout => \G2|Mux35~2_combout\);

-- Location: LABCELL_X85_Y11_N45
\rtl~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~30_combout\ = ( \G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1)) # (\G2|state\(3)) ) ) # ( !\G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1) & \G2|state\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|G2|ALT_INV_outsig\(1),
	datad => \G2|ALT_INV_state\(3),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \rtl~30_combout\);

-- Location: MLABCELL_X84_Y11_N39
\G2|state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~13_combout\ = ( \G2|Mux38~0_combout\ & ( \rtl~30_combout\ & ( \G2|state~0_combout\ ) ) ) # ( !\G2|Mux38~0_combout\ & ( \rtl~30_combout\ & ( \G2|state~0_combout\ ) ) ) # ( \G2|Mux38~0_combout\ & ( !\rtl~30_combout\ & ( (\G2|state~0_combout\ & 
-- ((!\G2|state\(1)) # (!\G2|state\(0) $ (\G2|state\(2))))) ) ) ) # ( !\G2|Mux38~0_combout\ & ( !\rtl~30_combout\ & ( \G2|state~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111100100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(0),
	datab => \G2|ALT_INV_state\(2),
	datac => \G2|ALT_INV_state\(1),
	datad => \G2|ALT_INV_state~0_combout\,
	datae => \G2|ALT_INV_Mux38~0_combout\,
	dataf => \ALT_INV_rtl~30_combout\,
	combout => \G2|state~13_combout\);

-- Location: LABCELL_X85_Y11_N54
\G2|state~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~15_combout\ = ( \G2|Mux35~2_combout\ & ( \G2|state~13_combout\ ) ) # ( !\G2|Mux35~2_combout\ & ( \G2|state~13_combout\ ) ) # ( \G2|Mux35~2_combout\ & ( !\G2|state~13_combout\ & ( (((\G2|state~4_combout\ & !\G2|state~14_combout\)) # 
-- (\G2|state~2_combout\)) # (\G2|state~5_combout\) ) ) ) # ( !\G2|Mux35~2_combout\ & ( !\G2|state~13_combout\ & ( ((\G2|state~4_combout\ & !\G2|state~14_combout\)) # (\G2|state~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101010101011111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state~5_combout\,
	datab => \G2|ALT_INV_state~4_combout\,
	datac => \G2|ALT_INV_state~2_combout\,
	datad => \G2|ALT_INV_state~14_combout\,
	datae => \G2|ALT_INV_Mux35~2_combout\,
	dataf => \G2|ALT_INV_state~13_combout\,
	combout => \G2|state~15_combout\);

-- Location: FF_X85_Y11_N56
\G2|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~15_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state\(3));

-- Location: LABCELL_X85_Y11_N36
\G2|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux31~0_combout\ = ( !\G2|state[5]~DUPLICATE_q\ & ( !\G2|state\(1) & ( (!\G2|state\(3) & (!\G2|state[4]~DUPLICATE_q\ & (!\G2|state\(2) & !\G2|state[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(3),
	datab => \G2|ALT_INV_state[4]~DUPLICATE_q\,
	datac => \G2|ALT_INV_state\(2),
	datad => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datae => \G2|ALT_INV_state[5]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_state\(1),
	combout => \G2|Mux31~0_combout\);

-- Location: LABCELL_X85_Y11_N33
\G2|state~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~3_combout\ = ( \G2|state[0]~DUPLICATE_q\ & ( (!\G1|G2|outsig\(0) & (\G2|Mux31~0_combout\ & \G1|G2|outsig\(1))) ) ) # ( !\G2|state[0]~DUPLICATE_q\ & ( (\G2|Mux31~0_combout\ & ((!\G1|G2|outsig\(0)) # (\G1|G2|outsig\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_outsig\(0),
	datab => \G2|ALT_INV_Mux31~0_combout\,
	datac => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	combout => \G2|state~3_combout\);

-- Location: MLABCELL_X84_Y11_N33
\G2|Mux38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux38~1_combout\ = ( \G1|G2|outsig\(0) & ( (!\G2|state\(0) & (((\G1|G2|outsig\(1) & \G2|state\(1))))) # (\G2|state\(0) & (\G2|state\(2) & (!\G1|G2|outsig\(1) & !\G2|state\(1)))) ) ) # ( !\G1|G2|outsig\(0) & ( (\G2|state\(1) & ((!\G2|state\(0)) # 
-- ((!\G2|state\(2) & \G1|G2|outsig\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101110000000001010111000010000000010100001000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(0),
	datab => \G2|ALT_INV_state\(2),
	datac => \G1|G2|ALT_INV_outsig\(1),
	datad => \G2|ALT_INV_state\(1),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux38~1_combout\);

-- Location: MLABCELL_X84_Y11_N30
\G2|state~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~1_combout\ = ( \G2|Mux38~1_combout\ & ( (\G2|state~0_combout\ & ((!\G2|Mux38~0_combout\) # ((!\G2|state\(0) & !\G2|state\(2))))) ) ) # ( !\G2|Mux38~1_combout\ & ( \G2|state~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000010000000111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(0),
	datab => \G2|ALT_INV_state\(2),
	datac => \G2|ALT_INV_state~0_combout\,
	datad => \G2|ALT_INV_Mux38~0_combout\,
	dataf => \G2|ALT_INV_Mux38~1_combout\,
	combout => \G2|state~1_combout\);

-- Location: MLABCELL_X84_Y11_N12
\G2|Mux38~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux38~3_combout\ = ( \G2|state\(0) & ( \G1|G2|outsig\(0) & ( (!\G2|state[3]~DUPLICATE_q\ & (!\G1|G2|outsig\(1) & ((\G2|state\(1)) # (\G2|state\(2))))) ) ) ) # ( !\G2|state\(0) & ( \G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1) & (!\G2|state[3]~DUPLICATE_q\ 
-- & (!\G2|state\(2) $ (!\G2|state\(1))))) # (\G1|G2|outsig\(1) & ((!\G2|state\(2) & ((\G2|state\(1)))) # (\G2|state\(2) & (!\G2|state[3]~DUPLICATE_q\)))) ) ) ) # ( \G2|state\(0) & ( !\G1|G2|outsig\(0) & ( (!\G2|state[3]~DUPLICATE_q\ & (\G1|G2|outsig\(1) & 
-- ((\G2|state\(1)) # (\G2|state\(2))))) ) ) ) # ( !\G2|state\(0) & ( !\G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1) & ((!\G2|state\(2) & ((\G2|state\(1)))) # (\G2|state\(2) & (!\G2|state[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011001000000000100010001000001010101100100000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_state\(2),
	datad => \G2|ALT_INV_state\(1),
	datae => \G2|ALT_INV_state\(0),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux38~3_combout\);

-- Location: MLABCELL_X84_Y11_N54
\G2|Mux38~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux38~2_combout\ = ( \G2|state\(0) & ( \G1|G2|outsig\(0) & ( (!\G2|state[3]~DUPLICATE_q\ & (!\G1|G2|outsig\(1) & (!\G2|state\(2) $ (\G2|state\(1))))) ) ) ) # ( !\G2|state\(0) & ( \G1|G2|outsig\(0) & ( (!\G2|state[3]~DUPLICATE_q\ & ((!\G2|state\(2) $ 
-- (!\G2|state\(1))))) # (\G2|state[3]~DUPLICATE_q\ & ((!\G2|state\(2) & (\G1|G2|outsig\(1))) # (\G2|state\(2) & ((\G2|state\(1)))))) ) ) ) # ( !\G2|state\(0) & ( !\G1|G2|outsig\(0) & ( (!\G2|state\(1) & (!\G2|state[3]~DUPLICATE_q\ $ (((!\G2|state\(2)))))) # 
-- (\G2|state\(1) & (!\G1|G2|outsig\(1) & ((!\G2|state\(2)) # (\G2|state[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011000100000000000000000000011010101101011000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_state\(2),
	datad => \G2|ALT_INV_state\(1),
	datae => \G2|ALT_INV_state\(0),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux38~2_combout\);

-- Location: MLABCELL_X84_Y11_N18
\G2|Mux38~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux38~4_combout\ = ( \G2|Mux38~2_combout\ & ( \G2|state[4]~DUPLICATE_q\ & ( !\G2|Mux38~3_combout\ ) ) ) # ( !\G2|Mux38~2_combout\ & ( \G2|state[4]~DUPLICATE_q\ & ( !\G2|Mux38~3_combout\ ) ) ) # ( !\G2|Mux38~2_combout\ & ( !\G2|state[4]~DUPLICATE_q\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_Mux38~3_combout\,
	datae => \G2|ALT_INV_Mux38~2_combout\,
	dataf => \G2|ALT_INV_state[4]~DUPLICATE_q\,
	combout => \G2|Mux38~4_combout\);

-- Location: MLABCELL_X84_Y11_N0
\G2|state~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~6_combout\ = ( \G2|state~2_combout\ & ( \G2|Mux38~4_combout\ ) ) # ( !\G2|state~2_combout\ & ( \G2|Mux38~4_combout\ & ( (((!\G2|state~3_combout\ & \G2|state~4_combout\)) # (\G2|state~5_combout\)) # (\G2|state~1_combout\) ) ) ) # ( 
-- \G2|state~2_combout\ & ( !\G2|Mux38~4_combout\ & ( (((!\G2|state~3_combout\ & \G2|state~4_combout\)) # (\G2|state~5_combout\)) # (\G2|state~1_combout\) ) ) ) # ( !\G2|state~2_combout\ & ( !\G2|Mux38~4_combout\ & ( (((!\G2|state~3_combout\ & 
-- \G2|state~4_combout\)) # (\G2|state~5_combout\)) # (\G2|state~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111110111111001111111011111100111111101111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state~3_combout\,
	datab => \G2|ALT_INV_state~1_combout\,
	datac => \G2|ALT_INV_state~5_combout\,
	datad => \G2|ALT_INV_state~4_combout\,
	datae => \G2|ALT_INV_state~2_combout\,
	dataf => \G2|ALT_INV_Mux38~4_combout\,
	combout => \G2|state~6_combout\);

-- Location: FF_X84_Y11_N1
\G2|state[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~6_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state[0]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y12_N39
\G2|state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~10_combout\ = ( \G2|state\(1) & ( (!\G2|state[0]~DUPLICATE_q\ & (!\G1|G2|outsig\(0) & (\G1|G2|outsig\(1) & \G2|state\(2)))) # (\G2|state[0]~DUPLICATE_q\ & (((!\G2|state\(2))))) ) ) # ( !\G2|state\(1) & ( (\G1|G2|outsig\(0) & (!\G1|G2|outsig\(1) 
-- & (\G2|state[0]~DUPLICATE_q\ & \G2|state\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000001111001000000000111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_outsig\(0),
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datad => \G2|ALT_INV_state\(2),
	dataf => \G2|ALT_INV_state\(1),
	combout => \G2|state~10_combout\);

-- Location: LABCELL_X83_Y12_N42
\G2|state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~11_combout\ = ( !\G2|state\(2) & ( \G2|state~4_combout\ & ( (!\G2|state~5_combout\ & (\G2|Mux31~0_combout\ & (!\G1|G2|outsig\(0) $ (\G1|G2|outsig\(1))))) ) ) ) # ( \G2|state\(2) & ( !\G2|state~4_combout\ & ( !\G2|state~5_combout\ ) ) ) # ( 
-- !\G2|state\(2) & ( !\G2|state~4_combout\ & ( !\G2|state~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000100100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_outsig\(0),
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_state~5_combout\,
	datad => \G2|ALT_INV_Mux31~0_combout\,
	datae => \G2|ALT_INV_state\(2),
	dataf => \G2|ALT_INV_state~4_combout\,
	combout => \G2|state~11_combout\);

-- Location: LABCELL_X83_Y12_N54
\G2|Mux36~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux36~1_combout\ = ( \G1|G2|outsig\(1) & ( \G2|state\(1) & ( (!\G1|G2|outsig\(0) & ((!\G2|state[3]~DUPLICATE_q\ & (\G2|state\(2))) # (\G2|state[3]~DUPLICATE_q\ & ((!\G2|state[4]~DUPLICATE_q\))))) # (\G1|G2|outsig\(0) & (!\G2|state\(2) & 
-- (!\G2|state[3]~DUPLICATE_q\ $ (!\G2|state[4]~DUPLICATE_q\)))) ) ) ) # ( !\G1|G2|outsig\(1) & ( \G2|state\(1) & ( (!\G2|state\(2) & (!\G2|state[3]~DUPLICATE_q\ $ (((!\G2|state[4]~DUPLICATE_q\))))) # (\G2|state\(2) & (!\G2|state[3]~DUPLICATE_q\ & 
-- (\G1|G2|outsig\(0)))) ) ) ) # ( \G1|G2|outsig\(1) & ( !\G2|state\(1) & ( (!\G2|state[4]~DUPLICATE_q\ & ((!\G2|state\(2) & ((\G1|G2|outsig\(0)))) # (\G2|state\(2) & (!\G2|state[3]~DUPLICATE_q\ & !\G1|G2|outsig\(0))))) ) ) ) # ( !\G1|G2|outsig\(1) & ( 
-- !\G2|state\(1) & ( (!\G2|state[4]~DUPLICATE_q\ & ((!\G2|state\(2)) # ((!\G2|state[3]~DUPLICATE_q\ & \G1|G2|outsig\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111000000000001011000000000001000110100010100111010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datab => \G2|ALT_INV_state\(2),
	datac => \G1|G2|ALT_INV_outsig\(0),
	datad => \G2|ALT_INV_state[4]~DUPLICATE_q\,
	datae => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G2|ALT_INV_state\(1),
	combout => \G2|Mux36~1_combout\);

-- Location: LABCELL_X83_Y12_N12
\G2|Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux36~0_combout\ = ( \G1|G2|outsig\(1) & ( \G2|state\(1) & ( (!\G1|G2|outsig\(0) & ((!\G2|state[3]~DUPLICATE_q\ & (\G2|state\(2) & \G2|state[4]~DUPLICATE_q\)) # (\G2|state[3]~DUPLICATE_q\ & ((!\G2|state[4]~DUPLICATE_q\))))) # (\G1|G2|outsig\(0) & 
-- (((!\G2|state\(2))))) ) ) ) # ( !\G1|G2|outsig\(1) & ( \G2|state\(1) & ( (!\G2|state\(2) & !\G1|G2|outsig\(0)) ) ) ) # ( \G1|G2|outsig\(1) & ( !\G2|state\(1) & ( (!\G2|state[4]~DUPLICATE_q\ & ((!\G2|state[3]~DUPLICATE_q\ & (\G2|state\(2) & 
-- !\G1|G2|outsig\(0))) # (\G2|state[3]~DUPLICATE_q\ & (!\G2|state\(2) & \G1|G2|outsig\(0))))) ) ) ) # ( !\G1|G2|outsig\(1) & ( !\G2|state\(1) & ( (!\G2|state[4]~DUPLICATE_q\ & ((!\G2|state[3]~DUPLICATE_q\ & (\G2|state\(2) & \G1|G2|outsig\(0))) # 
-- (\G2|state[3]~DUPLICATE_q\ & (!\G2|state\(2) & !\G1|G2|outsig\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000000000001001000000000011000000110000000101110000101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datab => \G2|ALT_INV_state\(2),
	datac => \G1|G2|ALT_INV_outsig\(0),
	datad => \G2|ALT_INV_state[4]~DUPLICATE_q\,
	datae => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G2|ALT_INV_state\(1),
	combout => \G2|Mux36~0_combout\);

-- Location: LABCELL_X83_Y12_N33
\G2|Mux36~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux36~2_combout\ = ( \G2|Mux36~0_combout\ & ( (\G2|state[0]~DUPLICATE_q\ & !\G2|Mux36~1_combout\) ) ) # ( !\G2|Mux36~0_combout\ & ( (!\G2|state[0]~DUPLICATE_q\) # (!\G2|Mux36~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datad => \G2|ALT_INV_Mux36~1_combout\,
	dataf => \G2|ALT_INV_Mux36~0_combout\,
	combout => \G2|Mux36~2_combout\);

-- Location: LABCELL_X83_Y12_N48
\G2|state~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~12_combout\ = ( \G2|Mux38~0_combout\ & ( \G2|Mux36~2_combout\ & ( ((!\G2|state~11_combout\) # ((!\G2|state~10_combout\ & \G2|state~0_combout\))) # (\G2|state~2_combout\) ) ) ) # ( !\G2|Mux38~0_combout\ & ( \G2|Mux36~2_combout\ & ( 
-- ((!\G2|state~11_combout\) # (\G2|state~0_combout\)) # (\G2|state~2_combout\) ) ) ) # ( \G2|Mux38~0_combout\ & ( !\G2|Mux36~2_combout\ & ( (!\G2|state~11_combout\) # ((!\G2|state~10_combout\ & \G2|state~0_combout\)) ) ) ) # ( !\G2|Mux38~0_combout\ & ( 
-- !\G2|Mux36~2_combout\ & ( (!\G2|state~11_combout\) # (\G2|state~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000110011111111010111111111111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state~2_combout\,
	datab => \G2|ALT_INV_state~10_combout\,
	datac => \G2|ALT_INV_state~0_combout\,
	datad => \G2|ALT_INV_state~11_combout\,
	datae => \G2|ALT_INV_Mux38~0_combout\,
	dataf => \G2|ALT_INV_Mux36~2_combout\,
	combout => \G2|state~12_combout\);

-- Location: FF_X83_Y12_N49
\G2|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~12_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state\(2));

-- Location: MLABCELL_X84_Y12_N24
\G2|state~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~19_combout\ = ( \G1|G2|outsig\(1) & ( \G2|state\(1) & ( (!\G2|state\(2) & (((!\G1|G2|outsig\(0) & \G2|state[0]~DUPLICATE_q\)))) # (\G2|state\(2) & (!\G2|state[0]~DUPLICATE_q\ & ((!\G2|state\(6)) # (!\G1|G2|outsig\(0))))) ) ) ) # ( 
-- !\G1|G2|outsig\(1) & ( \G2|state\(1) & ( (!\G2|state\(2) & (((\G1|G2|outsig\(0) & \G2|state[0]~DUPLICATE_q\)))) # (\G2|state\(2) & (!\G2|state\(6) & (!\G1|G2|outsig\(0) & !\G2|state[0]~DUPLICATE_q\))) ) ) ) # ( \G1|G2|outsig\(1) & ( !\G2|state\(1) & ( 
-- (\G2|state\(2) & (!\G2|state\(6) & (\G1|G2|outsig\(0) & \G2|state[0]~DUPLICATE_q\))) ) ) ) # ( !\G1|G2|outsig\(1) & ( !\G2|state\(1) & ( (\G2|state\(2) & (\G2|state[0]~DUPLICATE_q\ & ((!\G2|state\(6)) # (\G1|G2|outsig\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000101000000000000010001000000000010100101010010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(2),
	datab => \G2|ALT_INV_state\(6),
	datac => \G1|G2|ALT_INV_outsig\(0),
	datad => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datae => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G2|ALT_INV_state\(1),
	combout => \G2|state~19_combout\);

-- Location: MLABCELL_X84_Y12_N15
\G2|state~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~20_combout\ = ( \G2|state~0_combout\ & ( (!\G2|state~19_combout\) # (!\G2|Mux38~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state~19_combout\,
	datac => \G2|ALT_INV_Mux38~0_combout\,
	dataf => \G2|ALT_INV_state~0_combout\,
	combout => \G2|state~20_combout\);

-- Location: LABCELL_X83_Y12_N36
\G2|state~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~18_combout\ = ( \G2|Mux31~0_combout\ & ( (!\G2|state[7]~DUPLICATE_q\ & (!\G2|state[6]~DUPLICATE_q\ & (!\G1|G2|outsig\(0) $ (!\G1|G2|outsig\(1))))) ) ) # ( !\G2|Mux31~0_combout\ & ( (!\G2|state[7]~DUPLICATE_q\ & (!\G2|state[6]~DUPLICATE_q\ & 
-- ((!\G1|G2|outsig\(0)) # (!\G1|G2|outsig\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000001100000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_outsig\(0),
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_state[7]~DUPLICATE_q\,
	datad => \G2|ALT_INV_state[6]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_Mux31~0_combout\,
	combout => \G2|state~18_combout\);

-- Location: MLABCELL_X84_Y12_N36
\G2|Mux32~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux32~2_combout\ = ( \G1|G2|outsig\(1) & ( \G1|G2|outsig\(0) & ( (!\G2|state\(6) & ((!\G2|state\(1)) # ((\G2|state[3]~DUPLICATE_q\) # (\G2|state\(2))))) ) ) ) # ( !\G1|G2|outsig\(1) & ( !\G1|G2|outsig\(0) & ( (!\G2|state\(6) & ((!\G2|state\(1)) # 
-- ((\G2|state[3]~DUPLICATE_q\) # (\G2|state\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110011001100000000000000000000000000000000001000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(1),
	datab => \G2|ALT_INV_state\(6),
	datac => \G2|ALT_INV_state\(2),
	datad => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datae => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux32~2_combout\);

-- Location: MLABCELL_X84_Y12_N54
\G2|Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux32~0_combout\ = ( \G1|G2|outsig\(1) & ( \G1|G2|outsig\(0) & ( (!\G2|state\(6) & ((!\G2|state\(2) & ((\G2|state[3]~DUPLICATE_q\) # (\G2|state\(1)))) # (\G2|state\(2) & (!\G2|state\(1) $ (\G2|state[3]~DUPLICATE_q\))))) ) ) ) # ( !\G1|G2|outsig\(1) & 
-- ( \G1|G2|outsig\(0) & ( (!\G2|state\(2) & (!\G2|state\(1) $ (!\G2|state[3]~DUPLICATE_q\))) ) ) ) # ( \G1|G2|outsig\(1) & ( !\G1|G2|outsig\(0) & ( (!\G2|state\(2) & \G2|state[3]~DUPLICATE_q\) ) ) ) # ( !\G1|G2|outsig\(1) & ( !\G1|G2|outsig\(0) & ( 
-- (!\G2|state\(6) & ((!\G2|state\(2) & ((\G2|state[3]~DUPLICATE_q\) # (\G2|state\(1)))) # (\G2|state\(2) & (!\G2|state\(1) $ (\G2|state[3]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010001100000000001010101000001010101000000100100010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(2),
	datab => \G2|ALT_INV_state\(6),
	datac => \G2|ALT_INV_state\(1),
	datad => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datae => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux32~0_combout\);

-- Location: LABCELL_X85_Y12_N42
\G2|Mux32~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux32~3_combout\ = ( !\G2|state[3]~DUPLICATE_q\ & ( \G1|G2|outsig\(0) & ( (!\G2|state[6]~DUPLICATE_q\ & (\G1|G2|outsig\(1) & ((\G2|state\(2)) # (\G2|state\(1))))) ) ) ) # ( !\G2|state[3]~DUPLICATE_q\ & ( !\G1|G2|outsig\(0) & ( 
-- (!\G2|state[6]~DUPLICATE_q\ & (!\G1|G2|outsig\(1) & ((\G2|state\(2)) # (\G2|state\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000000000000000000000000000011100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(1),
	datab => \G2|ALT_INV_state\(2),
	datac => \G2|ALT_INV_state[6]~DUPLICATE_q\,
	datad => \G1|G2|ALT_INV_outsig\(1),
	datae => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux32~3_combout\);

-- Location: MLABCELL_X82_Y12_N36
\G2|Mux32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux32~1_combout\ = ( \G1|G2|outsig\(1) & ( \G1|G2|outsig\(0) & ( (!\G2|state[6]~DUPLICATE_q\ & ((!\G2|state\(2) & (\G2|state\(1))) # (\G2|state\(2) & ((!\G2|state[3]~DUPLICATE_q\))))) ) ) ) # ( !\G1|G2|outsig\(1) & ( \G1|G2|outsig\(0) & ( 
-- (!\G2|state\(2) & (\G2|state\(1) & \G2|state[3]~DUPLICATE_q\)) ) ) ) # ( \G1|G2|outsig\(1) & ( !\G1|G2|outsig\(0) & ( (\G2|state\(2) & (\G2|state\(1) & !\G2|state[3]~DUPLICATE_q\)) ) ) ) # ( !\G1|G2|outsig\(1) & ( !\G1|G2|outsig\(0) & ( 
-- (!\G2|state[6]~DUPLICATE_q\ & ((!\G2|state\(2) & (\G2|state\(1))) # (\G2|state\(2) & ((!\G2|state[3]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000001000000001010000000000000000000010100100110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(2),
	datab => \G2|ALT_INV_state[6]~DUPLICATE_q\,
	datac => \G2|ALT_INV_state\(1),
	datad => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datae => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux32~1_combout\);

-- Location: MLABCELL_X84_Y12_N18
\G2|Mux32~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux32~4_combout\ = ( \G2|Mux32~3_combout\ & ( \G2|Mux32~1_combout\ & ( (!\G2|state\(4) & ((!\G2|state[0]~DUPLICATE_q\ & ((!\G2|Mux32~0_combout\))) # (\G2|state[0]~DUPLICATE_q\ & (!\G2|Mux32~2_combout\)))) ) ) ) # ( !\G2|Mux32~3_combout\ & ( 
-- \G2|Mux32~1_combout\ & ( (!\G2|state\(4) & ((!\G2|state[0]~DUPLICATE_q\ & ((!\G2|Mux32~0_combout\))) # (\G2|state[0]~DUPLICATE_q\ & (!\G2|Mux32~2_combout\)))) # (\G2|state\(4) & (((\G2|state[0]~DUPLICATE_q\)))) ) ) ) # ( \G2|Mux32~3_combout\ & ( 
-- !\G2|Mux32~1_combout\ & ( (!\G2|state\(4) & ((!\G2|state[0]~DUPLICATE_q\ & ((!\G2|Mux32~0_combout\))) # (\G2|state[0]~DUPLICATE_q\ & (!\G2|Mux32~2_combout\)))) # (\G2|state\(4) & (((!\G2|state[0]~DUPLICATE_q\)))) ) ) ) # ( !\G2|Mux32~3_combout\ & ( 
-- !\G2|Mux32~1_combout\ & ( ((!\G2|state[0]~DUPLICATE_q\ & ((!\G2|Mux32~0_combout\))) # (\G2|state[0]~DUPLICATE_q\ & (!\G2|Mux32~2_combout\))) # (\G2|state\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111110101111110011111010000011000000101011111100000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_Mux32~2_combout\,
	datab => \G2|ALT_INV_Mux32~0_combout\,
	datac => \G2|ALT_INV_state\(4),
	datad => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datae => \G2|ALT_INV_Mux32~3_combout\,
	dataf => \G2|ALT_INV_Mux32~1_combout\,
	combout => \G2|Mux32~4_combout\);

-- Location: MLABCELL_X84_Y12_N6
\G2|state~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~21_combout\ = ( \G2|Mux32~4_combout\ & ( (((\G2|state~5_combout\) # (\G2|state~18_combout\)) # (\G2|state~20_combout\)) # (\G2|state~2_combout\) ) ) # ( !\G2|Mux32~4_combout\ & ( ((\G2|state~5_combout\) # (\G2|state~18_combout\)) # 
-- (\G2|state~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state~2_combout\,
	datab => \G2|ALT_INV_state~20_combout\,
	datac => \G2|ALT_INV_state~18_combout\,
	datad => \G2|ALT_INV_state~5_combout\,
	dataf => \G2|ALT_INV_Mux32~4_combout\,
	combout => \G2|state~21_combout\);

-- Location: FF_X84_Y12_N7
\G2|state[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~21_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state[6]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y11_N15
\G2|state~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~2_combout\ = ( \G2|state[6]~DUPLICATE_q\ & ( !\G2|state[7]~DUPLICATE_q\ & ( (!\G1|G2|outsig\(1)) # (!\G1|G2|outsig\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G1|G2|ALT_INV_outsig\(0),
	datae => \G2|ALT_INV_state[6]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_state[7]~DUPLICATE_q\,
	combout => \G2|state~2_combout\);

-- Location: LABCELL_X85_Y11_N0
\G2|Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux37~0_combout\ = ( \G2|state[0]~DUPLICATE_q\ & ( (!\G2|state\(1) & (\G2|state\(2) & ((!\G1|G2|outsig\(1)) # (\G1|G2|outsig\(0))))) # (\G2|state\(1) & (!\G2|state\(2) & (!\G1|G2|outsig\(0) $ (!\G1|G2|outsig\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011100001001000001110000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_outsig\(0),
	datab => \G2|ALT_INV_state\(1),
	datac => \G2|ALT_INV_state\(2),
	datad => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	combout => \G2|Mux37~0_combout\);

-- Location: LABCELL_X85_Y11_N42
\G2|state~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~8_combout\ = ( \G2|Mux38~0_combout\ & ( (!\G2|state~5_combout\ & ((!\G2|state~0_combout\) # (\G2|Mux37~0_combout\))) ) ) # ( !\G2|Mux38~0_combout\ & ( (!\G2|state~0_combout\ & !\G2|state~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_Mux37~0_combout\,
	datac => \G2|ALT_INV_state~0_combout\,
	datad => \G2|ALT_INV_state~5_combout\,
	dataf => \G2|ALT_INV_Mux38~0_combout\,
	combout => \G2|state~8_combout\);

-- Location: LABCELL_X85_Y11_N18
\G2|Mux37~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux37~2_combout\ = ( !\G1|G2|outsig\(1) & ( \G1|G2|outsig\(0) & ( (!\G2|state\(3) & (\G2|state[4]~DUPLICATE_q\ & ((!\G2|state\(2)) # (\G2|state[0]~DUPLICATE_q\)))) # (\G2|state\(3) & (!\G2|state[4]~DUPLICATE_q\ & (\G2|state\(2)))) ) ) ) # ( 
-- \G1|G2|outsig\(1) & ( !\G1|G2|outsig\(0) & ( (!\G2|state[4]~DUPLICATE_q\ & ((!\G2|state\(3) & (\G2|state\(2) & \G2|state[0]~DUPLICATE_q\)) # (\G2|state\(3) & (!\G2|state\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100100000100100001001100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(3),
	datab => \G2|ALT_INV_state[4]~DUPLICATE_q\,
	datac => \G2|ALT_INV_state\(2),
	datad => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datae => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux37~2_combout\);

-- Location: LABCELL_X85_Y11_N48
\G2|Mux37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux37~1_combout\ = ( \G2|state[4]~DUPLICATE_q\ & ( \G2|state\(2) & ( (!\G2|state\(3) & ((!\G1|G2|outsig\(0) & ((!\G2|state[0]~DUPLICATE_q\) # (!\G1|G2|outsig\(1)))) # (\G1|G2|outsig\(0) & ((\G1|G2|outsig\(1)))))) ) ) ) # ( !\G2|state[4]~DUPLICATE_q\ & 
-- ( \G2|state\(2) & ( (!\G2|state\(3) & (((!\G1|G2|outsig\(0)) # (\G1|G2|outsig\(1))) # (\G2|state[0]~DUPLICATE_q\))) # (\G2|state\(3) & (\G2|state[0]~DUPLICATE_q\ & (!\G1|G2|outsig\(0) $ (\G1|G2|outsig\(1))))) ) ) ) # ( !\G2|state[4]~DUPLICATE_q\ & ( 
-- !\G2|state\(2) & ( (!\G2|state[0]~DUPLICATE_q\ & (\G2|state\(3))) # (\G2|state[0]~DUPLICATE_q\ & ((!\G1|G2|outsig\(0) & ((!\G1|G2|outsig\(1)) # (\G2|state\(3)))) # (\G1|G2|outsig\(0) & ((\G1|G2|outsig\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001010111000000000000000010110010101010111010000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(3),
	datab => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datac => \G1|G2|ALT_INV_outsig\(0),
	datad => \G1|G2|ALT_INV_outsig\(1),
	datae => \G2|ALT_INV_state[4]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_state\(2),
	combout => \G2|Mux37~1_combout\);

-- Location: LABCELL_X85_Y11_N27
\G2|Mux37~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux37~3_combout\ = ( \G2|Mux37~1_combout\ & ( (\G2|state\(1) & !\G2|Mux37~2_combout\) ) ) # ( !\G2|Mux37~1_combout\ & ( (!\G2|state\(1)) # (!\G2|Mux37~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_state\(1),
	datad => \G2|ALT_INV_Mux37~2_combout\,
	dataf => \G2|ALT_INV_Mux37~1_combout\,
	combout => \G2|Mux37~3_combout\);

-- Location: LABCELL_X85_Y11_N30
\G2|state~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~7_combout\ = ( \G2|state\(1) & ( (\G2|Mux31~0_combout\ & (!\G1|G2|outsig\(0) $ (!\G1|G2|outsig\(1)))) ) ) # ( !\G2|state\(1) & ( \G2|Mux31~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_Mux31~0_combout\,
	datac => \G1|G2|ALT_INV_outsig\(0),
	datad => \G1|G2|ALT_INV_outsig\(1),
	dataf => \G2|ALT_INV_state\(1),
	combout => \G2|state~7_combout\);

-- Location: LABCELL_X85_Y11_N24
\G2|state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~9_combout\ = ( \G2|state~7_combout\ & ( (!\G2|state~8_combout\) # ((\G2|state~2_combout\ & \G2|Mux37~3_combout\)) ) ) # ( !\G2|state~7_combout\ & ( ((!\G2|state~8_combout\) # ((\G2|state~2_combout\ & \G2|Mux37~3_combout\))) # 
-- (\G2|state~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110111111100111111011111110000111101011111000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state~2_combout\,
	datab => \G2|ALT_INV_state~4_combout\,
	datac => \G2|ALT_INV_state~8_combout\,
	datad => \G2|ALT_INV_Mux37~3_combout\,
	dataf => \G2|ALT_INV_state~7_combout\,
	combout => \G2|state~9_combout\);

-- Location: FF_X85_Y11_N25
\G2|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~9_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state\(1));

-- Location: LABCELL_X85_Y12_N54
\G2|Mux31~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux31~7_combout\ = ( !\G2|state\(2) & ( (!\G2|state\(1) & (!\G2|state[4]~DUPLICATE_q\ & (!\G2|state[0]~DUPLICATE_q\ & !\G2|state[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(1),
	datab => \G2|ALT_INV_state[4]~DUPLICATE_q\,
	datac => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datad => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_state\(2),
	combout => \G2|Mux31~7_combout\);

-- Location: LABCELL_X85_Y12_N24
\G2|Mux33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux33~2_combout\ = ( \G2|state\(2) & ( \G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1) & ((!\G2|state\(1)) # ((\G2|state[0]~DUPLICATE_q\)))) # (\G1|G2|outsig\(1) & (((!\G2|state[5]~DUPLICATE_q\)))) ) ) ) # ( !\G2|state\(2) & ( \G1|G2|outsig\(0) & ( 
-- (\G2|state\(1) & ((!\G1|G2|outsig\(1)) # (!\G2|state[5]~DUPLICATE_q\))) ) ) ) # ( \G2|state\(2) & ( !\G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1) & (((!\G2|state[5]~DUPLICATE_q\)))) # (\G1|G2|outsig\(1) & (!\G2|state\(1) $ ((\G2|state[0]~DUPLICATE_q\)))) ) ) 
-- ) # ( !\G2|state\(2) & ( !\G1|G2|outsig\(0) & ( (\G2|state\(1) & ((!\G1|G2|outsig\(1) & ((!\G2|state[5]~DUPLICATE_q\))) # (\G1|G2|outsig\(1) & (\G2|state[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000001111011010010000101010101010001001011111110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(1),
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datad => \G2|ALT_INV_state[5]~DUPLICATE_q\,
	datae => \G2|ALT_INV_state\(2),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux33~2_combout\);

-- Location: LABCELL_X85_Y12_N6
\G2|Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux33~0_combout\ = ( \G2|state\(2) & ( \G1|G2|outsig\(0) & ( (!\G2|state\(1) & ((!\G1|G2|outsig\(1)) # ((!\G2|state[5]~DUPLICATE_q\)))) # (\G2|state\(1) & (\G2|state[0]~DUPLICATE_q\ & ((!\G1|G2|outsig\(1)) # (!\G2|state[5]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\G2|state\(2) & ( \G1|G2|outsig\(0) & ( (!\G1|G2|outsig\(1) & (!\G2|state\(1) & (\G2|state[0]~DUPLICATE_q\))) # (\G1|G2|outsig\(1) & (!\G2|state[5]~DUPLICATE_q\ & (!\G2|state\(1) $ (!\G2|state[0]~DUPLICATE_q\)))) ) ) ) # ( \G2|state\(2) & ( 
-- !\G1|G2|outsig\(0) & ( (!\G2|state\(1) & (((!\G2|state[5]~DUPLICATE_q\)) # (\G1|G2|outsig\(1)))) # (\G2|state\(1) & (\G2|state[0]~DUPLICATE_q\ & ((!\G2|state[5]~DUPLICATE_q\) # (\G1|G2|outsig\(1))))) ) ) ) # ( !\G2|state\(2) & ( !\G1|G2|outsig\(0) & ( 
-- (!\G1|G2|outsig\(1) & (!\G2|state[5]~DUPLICATE_q\ & (!\G2|state\(1) $ (!\G2|state[0]~DUPLICATE_q\)))) # (\G1|G2|outsig\(1) & (!\G2|state\(1) & (\G2|state[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101000000010101011110010001100011010000010001010111110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state\(1),
	datab => \G1|G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datad => \G2|ALT_INV_state[5]~DUPLICATE_q\,
	datae => \G2|ALT_INV_state\(2),
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux33~0_combout\);

-- Location: MLABCELL_X84_Y12_N33
\G2|Mux33~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux33~3_combout\ = ( !\G2|state[0]~DUPLICATE_q\ & ( \G1|G2|outsig\(0) & ( (!\G2|state[5]~DUPLICATE_q\ & (\G2|state\(1) & (\G1|G2|outsig\(1) & !\G2|state\(2)))) ) ) ) # ( !\G2|state[0]~DUPLICATE_q\ & ( !\G1|G2|outsig\(0) & ( (!\G2|state[5]~DUPLICATE_q\ 
-- & (\G2|state\(1) & (!\G1|G2|outsig\(1) & !\G2|state\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state[5]~DUPLICATE_q\,
	datab => \G2|ALT_INV_state\(1),
	datac => \G1|G2|ALT_INV_outsig\(1),
	datad => \G2|ALT_INV_state\(2),
	datae => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	dataf => \G1|G2|ALT_INV_outsig\(0),
	combout => \G2|Mux33~3_combout\);

-- Location: LABCELL_X83_Y12_N6
\G2|Mux33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux33~1_combout\ = ( \G2|state\(2) & ( \G2|state\(1) & ( (!\G1|G2|outsig\(1) & ((!\G1|G2|outsig\(0) & ((!\G2|state[5]~DUPLICATE_q\))) # (\G1|G2|outsig\(0) & (!\G2|state[0]~DUPLICATE_q\)))) # (\G1|G2|outsig\(1) & ((!\G1|G2|outsig\(0) & 
-- (!\G2|state[0]~DUPLICATE_q\)) # (\G1|G2|outsig\(0) & ((!\G2|state[5]~DUPLICATE_q\))))) ) ) ) # ( !\G2|state\(2) & ( \G2|state\(1) & ( (!\G1|G2|outsig\(1) & ((!\G1|G2|outsig\(0) & ((!\G2|state[5]~DUPLICATE_q\))) # (\G1|G2|outsig\(0) & 
-- (\G2|state[0]~DUPLICATE_q\)))) # (\G1|G2|outsig\(1) & ((!\G1|G2|outsig\(0) & (\G2|state[0]~DUPLICATE_q\)) # (\G1|G2|outsig\(0) & ((!\G2|state[5]~DUPLICATE_q\))))) ) ) ) # ( \G2|state\(2) & ( !\G2|state\(1) & ( (\G2|state[0]~DUPLICATE_q\ & 
-- ((!\G2|state[5]~DUPLICATE_q\) # (!\G1|G2|outsig\(1) $ (!\G1|G2|outsig\(0))))) ) ) ) # ( !\G2|state\(2) & ( !\G2|state\(1) & ( (!\G1|G2|outsig\(1) & ((!\G1|G2|outsig\(0) & ((!\G2|state[5]~DUPLICATE_q\))) # (\G1|G2|outsig\(0) & 
-- (\G2|state[0]~DUPLICATE_q\)))) # (\G1|G2|outsig\(1) & ((!\G1|G2|outsig\(0) & (\G2|state[0]~DUPLICATE_q\)) # (\G1|G2|outsig\(0) & ((!\G2|state[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011011100010010001100110001001010110111000100101110110101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G2|ALT_INV_outsig\(1),
	datab => \G2|ALT_INV_state[0]~DUPLICATE_q\,
	datac => \G1|G2|ALT_INV_outsig\(0),
	datad => \G2|ALT_INV_state[5]~DUPLICATE_q\,
	datae => \G2|ALT_INV_state\(2),
	dataf => \G2|ALT_INV_state\(1),
	combout => \G2|Mux33~1_combout\);

-- Location: LABCELL_X85_Y12_N18
\G2|Mux33~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|Mux33~4_combout\ = ( \G2|Mux33~3_combout\ & ( \G2|Mux33~1_combout\ & ( (!\G2|state[3]~DUPLICATE_q\ & ((!\G2|state[4]~DUPLICATE_q\ & ((!\G2|Mux33~0_combout\))) # (\G2|state[4]~DUPLICATE_q\ & (!\G2|Mux33~2_combout\)))) ) ) ) # ( !\G2|Mux33~3_combout\ & 
-- ( \G2|Mux33~1_combout\ & ( (!\G2|state[3]~DUPLICATE_q\ & ((!\G2|state[4]~DUPLICATE_q\ & ((!\G2|Mux33~0_combout\))) # (\G2|state[4]~DUPLICATE_q\ & (!\G2|Mux33~2_combout\)))) # (\G2|state[3]~DUPLICATE_q\ & (\G2|state[4]~DUPLICATE_q\)) ) ) ) # ( 
-- \G2|Mux33~3_combout\ & ( !\G2|Mux33~1_combout\ & ( (!\G2|state[3]~DUPLICATE_q\ & ((!\G2|state[4]~DUPLICATE_q\ & ((!\G2|Mux33~0_combout\))) # (\G2|state[4]~DUPLICATE_q\ & (!\G2|Mux33~2_combout\)))) # (\G2|state[3]~DUPLICATE_q\ & 
-- (!\G2|state[4]~DUPLICATE_q\)) ) ) ) # ( !\G2|Mux33~3_combout\ & ( !\G2|Mux33~1_combout\ & ( ((!\G2|state[4]~DUPLICATE_q\ & ((!\G2|Mux33~0_combout\))) # (\G2|state[4]~DUPLICATE_q\ & (!\G2|Mux33~2_combout\))) # (\G2|state[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110101110101111011000110010010111001001100011010100000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_state[3]~DUPLICATE_q\,
	datab => \G2|ALT_INV_state[4]~DUPLICATE_q\,
	datac => \G2|ALT_INV_Mux33~2_combout\,
	datad => \G2|ALT_INV_Mux33~0_combout\,
	datae => \G2|ALT_INV_Mux33~3_combout\,
	dataf => \G2|ALT_INV_Mux33~1_combout\,
	combout => \G2|Mux33~4_combout\);

-- Location: LABCELL_X85_Y12_N30
\G2|state~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \G2|state~24_combout\ = ( \G2|state\(5) & ( \G2|state[7]~DUPLICATE_q\ & ( !\G2|Equal1~0_combout\ ) ) ) # ( !\G2|state\(5) & ( \G2|state[7]~DUPLICATE_q\ & ( !\G2|Equal1~0_combout\ ) ) ) # ( \G2|state\(5) & ( !\G2|state[7]~DUPLICATE_q\ & ( 
-- !\G2|Equal1~0_combout\ ) ) ) # ( !\G2|state\(5) & ( !\G2|state[7]~DUPLICATE_q\ & ( (!\G2|Equal1~0_combout\ & ((!\G2|state[6]~DUPLICATE_q\ & (!\G2|Mux31~7_combout\)) # (\G2|state[6]~DUPLICATE_q\ & ((\G2|Mux33~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_Mux31~7_combout\,
	datab => \G2|ALT_INV_Equal1~0_combout\,
	datac => \G2|ALT_INV_state[6]~DUPLICATE_q\,
	datad => \G2|ALT_INV_Mux33~4_combout\,
	datae => \G2|ALT_INV_state\(5),
	dataf => \G2|ALT_INV_state[7]~DUPLICATE_q\,
	combout => \G2|state~24_combout\);

-- Location: FF_X85_Y12_N32
\G2|state[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G2|state~24_combout\,
	ena => \G2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|state[5]~DUPLICATE_q\);

-- Location: FF_X88_Y11_N32
\G2|outsig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G2|state[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \G2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|outsig\(5));

-- Location: FF_X88_Y11_N5
\G2|outsig[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G2|state[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \G2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|outsig[6]~DUPLICATE_q\);

-- Location: FF_X88_Y11_N22
\G2|outsig[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G2|state\(7),
	sload => VCC,
	ena => \G2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|outsig\(7));

-- Location: LABCELL_X88_Y11_N9
\G3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux0~0_combout\ = ( !\G2|outsig\(7) & ( !\G2|outsig\(5) $ (!\G2|outsig[6]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G2|ALT_INV_outsig\(5),
	datad => \G2|ALT_INV_outsig[6]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_outsig\(7),
	combout => \G3|Mux0~0_combout\);

-- Location: IOIBUF_X40_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y11_N20
\G2|outsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G2|state\(1),
	sload => VCC,
	ena => \G2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|outsig\(1));

-- Location: FF_X88_Y11_N58
\G2|outsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G2|state[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \G2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|outsig\(3));

-- Location: FF_X88_Y11_N49
\G2|outsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G2|state\(2),
	sload => VCC,
	ena => \G2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|outsig\(2));

-- Location: FF_X88_Y11_N38
\G2|outsig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G2|state[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \G2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|outsig\(0));

-- Location: FF_X88_Y11_N56
\G2|outsig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G2|state[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \G2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|outsig\(4));

-- Location: MLABCELL_X87_Y12_N51
\G3|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux6~1_combout\ = ( \G2|outsig\(4) & ( \G2|outsig[6]~DUPLICATE_q\ & ( !\G2|outsig\(3) $ (((!\G2|outsig\(1) & !\G2|outsig\(2)))) ) ) ) # ( !\G2|outsig\(4) & ( \G2|outsig[6]~DUPLICATE_q\ & ( (!\G2|outsig\(1) & ((!\G2|outsig\(2) & (\G2|outsig\(3))) # 
-- (\G2|outsig\(2) & ((!\G2|outsig\(0)))))) # (\G2|outsig\(1) & ((!\G2|outsig\(2) & ((!\G2|outsig\(0)))) # (\G2|outsig\(2) & (\G2|outsig\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111011001000010110110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig\(1),
	datab => \G2|ALT_INV_outsig\(3),
	datac => \G2|ALT_INV_outsig\(2),
	datad => \G2|ALT_INV_outsig\(0),
	datae => \G2|ALT_INV_outsig\(4),
	dataf => \G2|ALT_INV_outsig[6]~DUPLICATE_q\,
	combout => \G3|Mux6~1_combout\);

-- Location: FF_X88_Y11_N59
\G2|outsig[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G2|state[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \G2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|outsig[3]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y11_N24
\G3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux6~0_combout\ = ( !\G2|outsig\(1) & ( (!\G2|outsig[3]~DUPLICATE_q\ & (!\G2|outsig\(0) $ (!\G2|outsig\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig\(0),
	datac => \G2|ALT_INV_outsig\(2),
	datad => \G2|ALT_INV_outsig[3]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_outsig\(1),
	combout => \G3|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y11_N48
\G4|Q0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q0~0_combout\ = ( \G2|outsig\(4) & ( \G3|Mux6~0_combout\ & ( (\G3|Mux0~0_combout\ & (!\reset~input_o\ & ((!\G2|outsig[6]~DUPLICATE_q\) # (\G3|Mux6~1_combout\)))) ) ) ) # ( !\G2|outsig\(4) & ( \G3|Mux6~0_combout\ & ( (\G3|Mux0~0_combout\ & 
-- (!\reset~input_o\ & \G3|Mux6~1_combout\)) ) ) ) # ( \G2|outsig\(4) & ( !\G3|Mux6~0_combout\ & ( (\G3|Mux0~0_combout\ & (!\reset~input_o\ & \G3|Mux6~1_combout\)) ) ) ) # ( !\G2|outsig\(4) & ( !\G3|Mux6~0_combout\ & ( (\G3|Mux0~0_combout\ & 
-- (!\reset~input_o\ & \G3|Mux6~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000100000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_reset~input_o\,
	datac => \G2|ALT_INV_outsig[6]~DUPLICATE_q\,
	datad => \G3|ALT_INV_Mux6~1_combout\,
	datae => \G2|ALT_INV_outsig\(4),
	dataf => \G3|ALT_INV_Mux6~0_combout\,
	combout => \G4|Q0~0_combout\);

-- Location: FF_X88_Y11_N23
\G2|outsig[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G2|state\(7),
	sload => VCC,
	ena => \G2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|outsig[7]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y11_N0
\G3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux5~0_combout\ = ( \G2|outsig\(0) & ( \G2|outsig\(4) & ( (!\G2|outsig[6]~DUPLICATE_q\ & (\G2|outsig\(5) & ((!\G2|outsig[3]~DUPLICATE_q\) # (!\G2|outsig\(1))))) # (\G2|outsig[6]~DUPLICATE_q\ & (((!\G2|outsig\(1) & !\G2|outsig\(5))))) ) ) ) # ( 
-- !\G2|outsig\(0) & ( \G2|outsig\(4) & ( (!\G2|outsig[6]~DUPLICATE_q\ & (\G2|outsig\(5) & ((!\G2|outsig[3]~DUPLICATE_q\) # (!\G2|outsig\(1))))) # (\G2|outsig[6]~DUPLICATE_q\ & (!\G2|outsig\(5) & ((!\G2|outsig\(1)) # (\G2|outsig[3]~DUPLICATE_q\)))) ) ) ) # ( 
-- \G2|outsig\(0) & ( !\G2|outsig\(4) & ( (\G2|outsig[6]~DUPLICATE_q\ & (!\G2|outsig[3]~DUPLICATE_q\ & (!\G2|outsig\(1) & !\G2|outsig\(5)))) ) ) ) # ( !\G2|outsig\(0) & ( !\G2|outsig\(4) & ( (\G2|outsig[6]~DUPLICATE_q\ & (\G2|outsig[3]~DUPLICATE_q\ & 
-- (\G2|outsig\(1) & !\G2|outsig\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000010000000000000001010001101010000101000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig[6]~DUPLICATE_q\,
	datab => \G2|ALT_INV_outsig[3]~DUPLICATE_q\,
	datac => \G2|ALT_INV_outsig\(1),
	datad => \G2|ALT_INV_outsig\(5),
	datae => \G2|ALT_INV_outsig\(0),
	dataf => \G2|ALT_INV_outsig\(4),
	combout => \G3|Mux5~0_combout\);

-- Location: LABCELL_X88_Y11_N51
\G3|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux5~1_combout\ = ( \G2|outsig\(0) & ( \G2|outsig\(4) & ( (!\G2|outsig[3]~DUPLICATE_q\ & (\G2|outsig\(1) & (!\G2|outsig[6]~DUPLICATE_q\ $ (!\G2|outsig\(5))))) ) ) ) # ( !\G2|outsig\(0) & ( \G2|outsig\(4) & ( (!\G2|outsig[3]~DUPLICATE_q\ & 
-- ((!\G2|outsig[6]~DUPLICATE_q\ & (\G2|outsig\(5) & !\G2|outsig\(1))) # (\G2|outsig[6]~DUPLICATE_q\ & (!\G2|outsig\(5) & \G2|outsig\(1))))) ) ) ) # ( \G2|outsig\(0) & ( !\G2|outsig\(4) & ( (\G2|outsig[6]~DUPLICATE_q\ & (!\G2|outsig\(5) & 
-- (\G2|outsig[3]~DUPLICATE_q\ & !\G2|outsig\(1)))) ) ) ) # ( !\G2|outsig\(0) & ( !\G2|outsig\(4) & ( (\G2|outsig[6]~DUPLICATE_q\ & (!\G2|outsig\(5) & (!\G2|outsig[3]~DUPLICATE_q\ & !\G2|outsig\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000001000000000000100000010000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig[6]~DUPLICATE_q\,
	datab => \G2|ALT_INV_outsig\(5),
	datac => \G2|ALT_INV_outsig[3]~DUPLICATE_q\,
	datad => \G2|ALT_INV_outsig\(1),
	datae => \G2|ALT_INV_outsig\(0),
	dataf => \G2|ALT_INV_outsig\(4),
	combout => \G3|Mux5~1_combout\);

-- Location: FF_X88_Y11_N50
\G2|outsig[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G2|state\(2),
	sload => VCC,
	ena => \G2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|outsig[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y11_N42
\G3|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux5~2_combout\ = ( \G2|outsig[2]~DUPLICATE_q\ & ( !\G3|Mux5~1_combout\ ) ) # ( !\G2|outsig[2]~DUPLICATE_q\ & ( !\G3|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G3|ALT_INV_Mux5~0_combout\,
	datad => \G3|ALT_INV_Mux5~1_combout\,
	dataf => \G2|ALT_INV_outsig[2]~DUPLICATE_q\,
	combout => \G3|Mux5~2_combout\);

-- Location: MLABCELL_X87_Y11_N45
\G3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux1~0_combout\ = ( \G2|outsig\(0) & ( (!\G2|outsig\(2) & (\G2|outsig[3]~DUPLICATE_q\ & (!\G2|outsig\(1) $ (\G2|outsig\(4))))) # (\G2|outsig\(2) & ((!\G2|outsig\(1) & ((\G2|outsig\(4)))) # (\G2|outsig\(1) & (\G2|outsig[3]~DUPLICATE_q\)))) ) ) # ( 
-- !\G2|outsig\(0) & ( (!\G2|outsig\(4) & ((!\G2|outsig[3]~DUPLICATE_q\ $ (\G2|outsig\(1))))) # (\G2|outsig\(4) & ((!\G2|outsig\(2) & ((\G2|outsig\(1)))) # (\G2|outsig\(2) & (\G2|outsig[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100011011110000110001101100100001010100110010000101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig\(2),
	datab => \G2|ALT_INV_outsig[3]~DUPLICATE_q\,
	datac => \G2|ALT_INV_outsig\(1),
	datad => \G2|ALT_INV_outsig\(4),
	dataf => \G2|ALT_INV_outsig\(0),
	combout => \G3|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y11_N42
\G3|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux1~1_combout\ = ( \G2|outsig\(1) & ( (\G2|outsig\(2) & (!\G2|outsig\(0) & !\G2|outsig[3]~DUPLICATE_q\)) ) ) # ( !\G2|outsig\(1) & ( (!\G2|outsig\(2) & ((!\G2|outsig\(0)) # (\G2|outsig[3]~DUPLICATE_q\))) # (\G2|outsig\(2) & 
-- ((!\G2|outsig[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010110101010111101011010101001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig\(2),
	datac => \G2|ALT_INV_outsig\(0),
	datad => \G2|ALT_INV_outsig[3]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_outsig\(1),
	combout => \G3|Mux1~1_combout\);

-- Location: MLABCELL_X87_Y11_N39
\G4|Q0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q0~5_combout\ = ( \G3|Mux1~0_combout\ & ( \G3|Mux1~1_combout\ & ( (\G3|Mux0~0_combout\ & (\G2|outsig\(4) & (!\reset~input_o\ & !\G2|outsig[6]~DUPLICATE_q\))) ) ) ) # ( !\G3|Mux1~0_combout\ & ( \G3|Mux1~1_combout\ & ( (\G3|Mux0~0_combout\ & 
-- (!\reset~input_o\ & ((\G2|outsig[6]~DUPLICATE_q\) # (\G2|outsig\(4))))) ) ) ) # ( !\G3|Mux1~0_combout\ & ( !\G3|Mux1~1_combout\ & ( (\G3|Mux0~0_combout\ & (!\reset~input_o\ & \G2|outsig[6]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000000000010000010100000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux0~0_combout\,
	datab => \G2|ALT_INV_outsig\(4),
	datac => \ALT_INV_reset~input_o\,
	datad => \G2|ALT_INV_outsig[6]~DUPLICATE_q\,
	datae => \G3|ALT_INV_Mux1~0_combout\,
	dataf => \G3|ALT_INV_Mux1~1_combout\,
	combout => \G4|Q0~5_combout\);

-- Location: FF_X87_Y11_N41
\G4|Q0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q0~5_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q0\(5));

-- Location: LABCELL_X88_Y12_N36
\G4|Q1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q1~8_combout\ = (!\reset~input_o\ & \G4|Q0\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \G4|ALT_INV_Q0\(5),
	combout => \G4|Q1~8_combout\);

-- Location: FF_X88_Y12_N38
\G4|Q1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q1~8_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q1\(5));

-- Location: LABCELL_X88_Y12_N39
\G4|Q2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q2~5_combout\ = ( \G4|Q1\(5) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q1\(5),
	combout => \G4|Q2~5_combout\);

-- Location: FF_X88_Y12_N41
\G4|Q2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q2~5_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q2\(5));

-- Location: LABCELL_X88_Y12_N3
\G4|Q3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q3~5_combout\ = ( \G4|Q2\(5) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q2\(5),
	combout => \G4|Q3~5_combout\);

-- Location: FF_X88_Y12_N5
\G4|Q3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q3~5_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q3\(5));

-- Location: LABCELL_X88_Y12_N0
\G4|Q4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q4~5_combout\ = ( \G4|Q3\(5) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q3\(5),
	combout => \G4|Q4~5_combout\);

-- Location: FF_X88_Y12_N2
\G4|Q4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q4~5_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q4\(5));

-- Location: MLABCELL_X87_Y11_N27
\G4|Q5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q5~5_combout\ = ( \G4|Q4\(5) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q4\(5),
	combout => \G4|Q5~5_combout\);

-- Location: FF_X88_Y11_N29
\G4|Q5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G4|Q5~5_combout\,
	sload => VCC,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q5\(5));

-- Location: MLABCELL_X87_Y11_N57
\G3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux2~0_combout\ = ( \G2|outsig\(0) & ( (!\G2|outsig\(2) & (((!\G2|outsig\(1) & \G2|outsig[3]~DUPLICATE_q\)) # (\G2|outsig\(4)))) # (\G2|outsig\(2) & (\G2|outsig\(4) & ((\G2|outsig[3]~DUPLICATE_q\)))) ) ) # ( !\G2|outsig\(0) & ( (!\G2|outsig\(2) & 
-- (!\G2|outsig\(4) & (!\G2|outsig\(1) & !\G2|outsig[3]~DUPLICATE_q\))) # (\G2|outsig\(2) & (\G2|outsig\(4) & ((\G2|outsig[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000010001100000000001000100100010101100110010001010110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig\(2),
	datab => \G2|ALT_INV_outsig\(4),
	datac => \G2|ALT_INV_outsig\(1),
	datad => \G2|ALT_INV_outsig[3]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_outsig\(0),
	combout => \G3|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y12_N6
\G3|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux2~1_combout\ = ( !\G2|outsig\(0) & ( (!\G2|outsig\(1) & (!\G2|outsig\(2))) # (\G2|outsig\(1) & ((!\G2|outsig\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111000000110011111100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_outsig\(2),
	datac => \G2|ALT_INV_outsig\(1),
	datad => \G2|ALT_INV_outsig\(3),
	dataf => \G2|ALT_INV_outsig\(0),
	combout => \G3|Mux2~1_combout\);

-- Location: MLABCELL_X87_Y11_N36
\G4|Q0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q0~4_combout\ = ( \G3|Mux2~0_combout\ & ( \G3|Mux2~1_combout\ & ( (\G3|Mux0~0_combout\ & (\G2|outsig\(4) & (!\G2|outsig[6]~DUPLICATE_q\ & !\reset~input_o\))) ) ) ) # ( !\G3|Mux2~0_combout\ & ( \G3|Mux2~1_combout\ & ( (\G3|Mux0~0_combout\ & 
-- (!\reset~input_o\ & ((\G2|outsig[6]~DUPLICATE_q\) # (\G2|outsig\(4))))) ) ) ) # ( !\G3|Mux2~0_combout\ & ( !\G3|Mux2~1_combout\ & ( (\G3|Mux0~0_combout\ & (\G2|outsig[6]~DUPLICATE_q\ & !\reset~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000000000000000000010101000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux0~0_combout\,
	datab => \G2|ALT_INV_outsig\(4),
	datac => \G2|ALT_INV_outsig[6]~DUPLICATE_q\,
	datad => \ALT_INV_reset~input_o\,
	datae => \G3|ALT_INV_Mux2~0_combout\,
	dataf => \G3|ALT_INV_Mux2~1_combout\,
	combout => \G4|Q0~4_combout\);

-- Location: FF_X87_Y11_N38
\G4|Q0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q0~4_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q0\(4));

-- Location: LABCELL_X88_Y12_N54
\G4|Q1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q1~7_combout\ = ( \G4|Q0\(4) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q0\(4),
	combout => \G4|Q1~7_combout\);

-- Location: FF_X88_Y12_N56
\G4|Q1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q1~7_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q1\(4));

-- Location: LABCELL_X88_Y12_N57
\G4|Q2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q2~4_combout\ = ( \G4|Q1\(4) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q1\(4),
	combout => \G4|Q2~4_combout\);

-- Location: FF_X88_Y12_N59
\G4|Q2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q2~4_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q2\(4));

-- Location: LABCELL_X88_Y12_N30
\G4|Q3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q3~4_combout\ = ( \G4|Q2\(4) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q2\(4),
	combout => \G4|Q3~4_combout\);

-- Location: FF_X88_Y12_N32
\G4|Q3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q3~4_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q3\(4));

-- Location: LABCELL_X88_Y12_N33
\G4|Q4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q4~4_combout\ = ( \G4|Q3\(4) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q3\(4),
	combout => \G4|Q4~4_combout\);

-- Location: FF_X88_Y12_N35
\G4|Q4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q4~4_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q4\(4));

-- Location: LABCELL_X88_Y12_N21
\G4|Q5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q5~4_combout\ = ( !\reset~input_o\ & ( \G4|Q4\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q4\(4),
	combout => \G4|Q5~4_combout\);

-- Location: FF_X88_Y11_N11
\G4|Q5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G4|Q5~4_combout\,
	sload => VCC,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q5\(4));

-- Location: LABCELL_X88_Y11_N39
\G4|Q1[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q1[0]~10_combout\ = ( \G2|outsig\(0) & ( \G2|outsig[2]~DUPLICATE_q\ & ( (!\G2|outsig\(4) & (\G2|outsig\(5))) # (\G2|outsig\(4) & ((\G2|outsig[3]~DUPLICATE_q\))) ) ) ) # ( !\G2|outsig\(0) & ( \G2|outsig[2]~DUPLICATE_q\ & ( (!\G2|outsig\(4) & 
-- (\G2|outsig\(5))) # (\G2|outsig\(4) & ((\G2|outsig[3]~DUPLICATE_q\))) ) ) ) # ( \G2|outsig\(0) & ( !\G2|outsig[2]~DUPLICATE_q\ & ( (!\G2|outsig\(4) & (((\G2|outsig\(5))))) # (\G2|outsig\(4) & (\G2|outsig\(1) & ((\G2|outsig[3]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\G2|outsig\(0) & ( !\G2|outsig[2]~DUPLICATE_q\ & ( (!\G2|outsig\(1) & (!\G2|outsig\(4) & ((!\G2|outsig[3]~DUPLICATE_q\) # (\G2|outsig\(5))))) # (\G2|outsig\(1) & (\G2|outsig\(5) & ((!\G2|outsig\(4)) # (\G2|outsig[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001100000001001100110000010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig\(1),
	datab => \G2|ALT_INV_outsig\(5),
	datac => \G2|ALT_INV_outsig[3]~DUPLICATE_q\,
	datad => \G2|ALT_INV_outsig\(4),
	datae => \G2|ALT_INV_outsig\(0),
	dataf => \G2|ALT_INV_outsig[2]~DUPLICATE_q\,
	combout => \G4|Q1[0]~10_combout\);

-- Location: LABCELL_X88_Y11_N54
\G3|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux0~1_combout\ = ( \G2|outsig\(4) & ( \G2|outsig[2]~DUPLICATE_q\ & ( (!\G2|outsig[3]~DUPLICATE_q\ & (!\G2|outsig\(0) $ (!\G2|outsig\(1)))) ) ) ) # ( !\G2|outsig\(4) & ( \G2|outsig[2]~DUPLICATE_q\ & ( (!\G2|outsig[3]~DUPLICATE_q\ & (\G2|outsig\(0) & 
-- \G2|outsig\(1))) # (\G2|outsig[3]~DUPLICATE_q\ & ((!\G2|outsig\(1)))) ) ) ) # ( \G2|outsig\(4) & ( !\G2|outsig[2]~DUPLICATE_q\ & ( (!\G2|outsig\(0) & (\G2|outsig[3]~DUPLICATE_q\ & \G2|outsig\(1))) ) ) ) # ( !\G2|outsig\(4) & ( !\G2|outsig[2]~DUPLICATE_q\ 
-- & ( (!\G2|outsig\(0) & (\G2|outsig[3]~DUPLICATE_q\ & \G2|outsig\(1))) # (\G2|outsig\(0) & (!\G2|outsig[3]~DUPLICATE_q\ $ (!\G2|outsig\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000010110000000100000001000110100001101000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig\(0),
	datab => \G2|ALT_INV_outsig[3]~DUPLICATE_q\,
	datac => \G2|ALT_INV_outsig\(1),
	datae => \G2|ALT_INV_outsig\(4),
	dataf => \G2|ALT_INV_outsig[2]~DUPLICATE_q\,
	combout => \G3|Mux0~1_combout\);

-- Location: LABCELL_X88_Y11_N12
\G3|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux0~2_combout\ = ( \G2|outsig[2]~DUPLICATE_q\ & ( (\G2|outsig\(1) & (\G2|outsig\(0) & !\G2|outsig[3]~DUPLICATE_q\)) ) ) # ( !\G2|outsig[2]~DUPLICATE_q\ & ( (!\G2|outsig\(1) & !\G2|outsig[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_outsig\(0),
	datad => \G2|ALT_INV_outsig[3]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_outsig[2]~DUPLICATE_q\,
	combout => \G3|Mux0~2_combout\);

-- Location: LABCELL_X88_Y11_N24
\G4|Q1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q1[0]~0_combout\ = ( \G2|outsig[6]~DUPLICATE_q\ & ( \G2|outsig\(4) & ( ((\G3|Mux0~0_combout\ & \G3|Mux0~1_combout\)) # (\reset~input_o\) ) ) ) # ( !\G2|outsig[6]~DUPLICATE_q\ & ( \G2|outsig\(4) & ( ((\G3|Mux0~0_combout\ & \G3|Mux0~2_combout\)) # 
-- (\reset~input_o\) ) ) ) # ( \G2|outsig[6]~DUPLICATE_q\ & ( !\G2|outsig\(4) & ( ((\G3|Mux0~0_combout\ & \G3|Mux0~1_combout\)) # (\reset~input_o\) ) ) ) # ( !\G2|outsig[6]~DUPLICATE_q\ & ( !\G2|outsig\(4) & ( \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101110101011101010101011101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \G3|ALT_INV_Mux0~0_combout\,
	datac => \G3|ALT_INV_Mux0~1_combout\,
	datad => \G3|ALT_INV_Mux0~2_combout\,
	datae => \G2|ALT_INV_outsig[6]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_outsig\(4),
	combout => \G4|Q1[0]~0_combout\);

-- Location: FF_X88_Y11_N26
\G4|Q0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q1[0]~0_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q0\(6));

-- Location: LABCELL_X88_Y12_N42
\G4|Q1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q1~9_combout\ = (\G4|Q0\(6)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \G4|ALT_INV_Q0\(6),
	combout => \G4|Q1~9_combout\);

-- Location: FF_X88_Y12_N44
\G4|Q1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q1~9_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q1\(6));

-- Location: LABCELL_X88_Y12_N45
\G4|Q2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q2~6_combout\ = (\G4|Q1\(6)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \G4|ALT_INV_Q1\(6),
	combout => \G4|Q2~6_combout\);

-- Location: FF_X88_Y12_N47
\G4|Q2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q2~6_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q2\(6));

-- Location: LABCELL_X88_Y12_N6
\G4|Q3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q3~6_combout\ = ( \G4|Q2\(6) ) # ( !\G4|Q2\(6) & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q2\(6),
	combout => \G4|Q3~6_combout\);

-- Location: FF_X88_Y12_N8
\G4|Q3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q3~6_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q3\(6));

-- Location: LABCELL_X88_Y12_N9
\G4|Q4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q4~6_combout\ = (\G4|Q3\(6)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \G4|ALT_INV_Q3\(6),
	combout => \G4|Q4~6_combout\);

-- Location: FF_X88_Y12_N11
\G4|Q4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q4~6_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q4\(6));

-- Location: MLABCELL_X87_Y11_N54
\G4|Q5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q5~6_combout\ = ( \reset~input_o\ ) # ( !\reset~input_o\ & ( \G4|Q4\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \G4|ALT_INV_Q4\(6),
	dataf => \ALT_INV_reset~input_o\,
	combout => \G4|Q5~6_combout\);

-- Location: FF_X87_Y11_N56
\G4|Q5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q5~6_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q5\(6));

-- Location: MLABCELL_X87_Y11_N30
\G3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux3~0_combout\ = ( \G2|outsig\(0) & ( (!\G2|outsig[3]~DUPLICATE_q\ & (!\G2|outsig\(1) $ (\G2|outsig\(2)))) ) ) # ( !\G2|outsig\(0) & ( (!\G2|outsig\(1) & (\G2|outsig\(2) & !\G2|outsig[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_outsig\(2),
	datad => \G2|ALT_INV_outsig[3]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_outsig\(0),
	combout => \G3|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y11_N9
\G3|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux3~1_combout\ = ( \G2|outsig[3]~DUPLICATE_q\ & ( \G2|outsig\(0) & ( (\G2|outsig[6]~DUPLICATE_q\ & (!\G2|outsig\(4) & ((!\G2|outsig\(1)) # (!\G2|outsig\(2))))) ) ) ) # ( !\G2|outsig[3]~DUPLICATE_q\ & ( \G2|outsig\(0) & ( (\G2|outsig[6]~DUPLICATE_q\ & 
-- (!\G2|outsig\(1) & !\G2|outsig\(2))) ) ) ) # ( \G2|outsig[3]~DUPLICATE_q\ & ( !\G2|outsig\(0) & ( (\G2|outsig[6]~DUPLICATE_q\ & ((!\G2|outsig\(1) & ((!\G2|outsig\(2)))) # (\G2|outsig\(1) & (!\G2|outsig\(4) & \G2|outsig\(2))))) ) ) ) # ( 
-- !\G2|outsig[3]~DUPLICATE_q\ & ( !\G2|outsig\(0) & ( (\G2|outsig[6]~DUPLICATE_q\ & ((!\G2|outsig\(4) & (\G2|outsig\(1) & \G2|outsig\(2))) # (\G2|outsig\(4) & ((!\G2|outsig\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010000010001000001000001000100000000000101000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig[6]~DUPLICATE_q\,
	datab => \G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_outsig\(4),
	datad => \G2|ALT_INV_outsig\(2),
	datae => \G2|ALT_INV_outsig[3]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_outsig\(0),
	combout => \G3|Mux3~1_combout\);

-- Location: FF_X88_Y11_N4
\G2|outsig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G2|state[6]~DUPLICATE_q\,
	sload => VCC,
	ena => \G2|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|outsig\(6));

-- Location: MLABCELL_X87_Y11_N18
\G4|Q0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q0~3_combout\ = ( \G2|outsig\(4) & ( \G2|outsig\(6) & ( ((\G3|Mux0~0_combout\ & \G3|Mux3~1_combout\)) # (\reset~input_o\) ) ) ) # ( !\G2|outsig\(4) & ( \G2|outsig\(6) & ( ((\G3|Mux0~0_combout\ & \G3|Mux3~1_combout\)) # (\reset~input_o\) ) ) ) # ( 
-- \G2|outsig\(4) & ( !\G2|outsig\(6) & ( ((\G3|Mux0~0_combout\ & ((\G3|Mux3~1_combout\) # (\G3|Mux3~0_combout\)))) # (\reset~input_o\) ) ) ) # ( !\G2|outsig\(4) & ( !\G2|outsig\(6) & ( ((\G3|Mux0~0_combout\ & \G3|Mux3~1_combout\)) # (\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000111110101111100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G3|ALT_INV_Mux0~0_combout\,
	datab => \G3|ALT_INV_Mux3~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \G3|ALT_INV_Mux3~1_combout\,
	datae => \G2|ALT_INV_outsig\(4),
	dataf => \G2|ALT_INV_outsig\(6),
	combout => \G4|Q0~3_combout\);

-- Location: FF_X87_Y11_N20
\G4|Q0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q0~3_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q0\(3));

-- Location: MLABCELL_X87_Y12_N15
\G4|Q1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q1~6_combout\ = ( \G4|Q0\(3) ) # ( !\G4|Q0\(3) & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q0\(3),
	combout => \G4|Q1~6_combout\);

-- Location: FF_X87_Y12_N17
\G4|Q1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q1~6_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q1\(3));

-- Location: MLABCELL_X87_Y12_N12
\G4|Q2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q2~3_combout\ = ( \G4|Q1\(3) ) # ( !\G4|Q1\(3) & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q1\(3),
	combout => \G4|Q2~3_combout\);

-- Location: FF_X87_Y12_N14
\G4|Q2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q2~3_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q2\(3));

-- Location: MLABCELL_X87_Y12_N27
\G4|Q3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q3~3_combout\ = (\G4|Q2\(3)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \G4|ALT_INV_Q2\(3),
	combout => \G4|Q3~3_combout\);

-- Location: FF_X87_Y12_N29
\G4|Q3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q3~3_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q3\(3));

-- Location: MLABCELL_X87_Y12_N24
\G4|Q4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q4~3_combout\ = (\G4|Q3\(3)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \G4|ALT_INV_Q3\(3),
	combout => \G4|Q4~3_combout\);

-- Location: FF_X87_Y11_N53
\G4|Q4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G4|Q4~3_combout\,
	sload => VCC,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q4\(3));

-- Location: LABCELL_X88_Y11_N6
\G4|Q5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q5~3_combout\ = (\reset~input_o\) # (\G4|Q4\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Q4\(3),
	datab => \ALT_INV_reset~input_o\,
	combout => \G4|Q5~3_combout\);

-- Location: FF_X88_Y11_N8
\G4|Q5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q5~3_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q5\(3));

-- Location: MLABCELL_X87_Y11_N15
\G3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux4~0_combout\ = ( \G2|outsig\(0) & ( (!\G2|outsig\(4) & (!\G2|outsig[3]~DUPLICATE_q\ & (!\G2|outsig\(2) $ (!\G2|outsig\(1))))) # (\G2|outsig\(4) & (\G2|outsig[3]~DUPLICATE_q\ & ((\G2|outsig\(1)) # (\G2|outsig\(2))))) ) ) # ( !\G2|outsig\(0) & ( 
-- (!\G2|outsig\(1) & ((!\G2|outsig\(2) & ((!\G2|outsig[3]~DUPLICATE_q\))) # (\G2|outsig\(2) & ((\G2|outsig[3]~DUPLICATE_q\) # (\G2|outsig\(4)))))) # (\G2|outsig\(1) & (!\G2|outsig\(4) $ (((!\G2|outsig\(2)) # (\G2|outsig[3]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111001000111100111100100011101100000000001110110000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig\(2),
	datab => \G2|ALT_INV_outsig\(1),
	datac => \G2|ALT_INV_outsig\(4),
	datad => \G2|ALT_INV_outsig[3]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_outsig\(0),
	combout => \G3|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y11_N12
\G3|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G3|Mux4~1_combout\ = ( \G2|outsig\(1) & ( ((!\G2|outsig\(2) & !\G2|outsig\(0))) # (\G2|outsig[3]~DUPLICATE_q\) ) ) # ( !\G2|outsig\(1) & ( (\G2|outsig\(2) & \G2|outsig[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110100000111111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig\(2),
	datac => \G2|ALT_INV_outsig\(0),
	datad => \G2|ALT_INV_outsig[3]~DUPLICATE_q\,
	dataf => \G2|ALT_INV_outsig\(1),
	combout => \G3|Mux4~1_combout\);

-- Location: MLABCELL_X87_Y11_N0
\G4|Q0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q0~2_combout\ = ( \G2|outsig\(4) & ( \G2|outsig\(6) & ( (!\reset~input_o\ & (!\G3|Mux4~0_combout\ & \G3|Mux0~0_combout\)) ) ) ) # ( !\G2|outsig\(4) & ( \G2|outsig\(6) & ( (!\reset~input_o\ & (!\G3|Mux4~0_combout\ & \G3|Mux0~0_combout\)) ) ) ) # ( 
-- \G2|outsig\(4) & ( !\G2|outsig\(6) & ( (!\reset~input_o\ & (\G3|Mux0~0_combout\ & !\G3|Mux4~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \G3|ALT_INV_Mux4~0_combout\,
	datac => \G3|ALT_INV_Mux0~0_combout\,
	datad => \G3|ALT_INV_Mux4~1_combout\,
	datae => \G2|ALT_INV_outsig\(4),
	dataf => \G2|ALT_INV_outsig\(6),
	combout => \G4|Q0~2_combout\);

-- Location: FF_X87_Y11_N2
\G4|Q0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q0~2_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q0\(2));

-- Location: MLABCELL_X87_Y12_N30
\G4|Q1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q1~5_combout\ = ( !\reset~input_o\ & ( \G4|Q0\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q0\(2),
	combout => \G4|Q1~5_combout\);

-- Location: FF_X87_Y12_N32
\G4|Q1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q1~5_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q1\(2));

-- Location: MLABCELL_X87_Y12_N39
\G4|Q2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q2~2_combout\ = ( !\reset~input_o\ & ( \G4|Q1\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q1\(2),
	combout => \G4|Q2~2_combout\);

-- Location: FF_X87_Y12_N41
\G4|Q2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q2~2_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q2\(2));

-- Location: MLABCELL_X87_Y12_N18
\G4|Q3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q3~2_combout\ = ( \G4|Q2\(2) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q2\(2),
	combout => \G4|Q3~2_combout\);

-- Location: FF_X87_Y12_N20
\G4|Q3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q3~2_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q3\(2));

-- Location: MLABCELL_X87_Y12_N21
\G4|Q4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q4~2_combout\ = ( \G4|Q3\(2) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q3\(2),
	combout => \G4|Q4~2_combout\);

-- Location: FF_X87_Y12_N23
\G4|Q4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q4~2_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q4\(2));

-- Location: LABCELL_X88_Y11_N15
\G4|Q5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q5~2_combout\ = ( \G4|Q4\(2) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q4\(2),
	combout => \G4|Q5~2_combout\);

-- Location: FF_X88_Y11_N17
\G4|Q5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q5~2_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q5\(2));

-- Location: MLABCELL_X87_Y11_N33
\G4|Q0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q0~1_combout\ = ( !\G2|outsig[7]~DUPLICATE_q\ & ( (!\reset~input_o\ & !\G3|Mux5~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \G3|ALT_INV_Mux5~2_combout\,
	dataf => \G2|ALT_INV_outsig[7]~DUPLICATE_q\,
	combout => \G4|Q0~1_combout\);

-- Location: FF_X87_Y11_N35
\G4|Q0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q0~1_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q0\(1));

-- Location: MLABCELL_X87_Y12_N3
\G4|Q1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q1~4_combout\ = ( !\reset~input_o\ & ( \G4|Q0\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q0\(1),
	combout => \G4|Q1~4_combout\);

-- Location: FF_X87_Y12_N5
\G4|Q1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q1~4_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q1\(1));

-- Location: MLABCELL_X87_Y12_N54
\G4|Q2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q2~1_combout\ = ( \G4|Q1\(1) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q1\(1),
	combout => \G4|Q2~1_combout\);

-- Location: FF_X87_Y12_N56
\G4|Q2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q2~1_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q2\(1));

-- Location: MLABCELL_X87_Y12_N57
\G4|Q3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q3~1_combout\ = ( \G4|Q2\(1) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q2\(1),
	combout => \G4|Q3~1_combout\);

-- Location: FF_X87_Y12_N59
\G4|Q3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q3~1_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q3\(1));

-- Location: MLABCELL_X87_Y12_N9
\G4|Q4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q4~1_combout\ = ( \G4|Q3\(1) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q3\(1),
	combout => \G4|Q4~1_combout\);

-- Location: FF_X87_Y12_N11
\G4|Q4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q4~1_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q4\(1));

-- Location: MLABCELL_X87_Y12_N42
\G4|Q5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q5~1_combout\ = ( !\reset~input_o\ & ( \G4|Q4\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q4\(1),
	combout => \G4|Q5~1_combout\);

-- Location: FF_X88_Y11_N46
\G4|Q5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G4|Q5~1_combout\,
	sload => VCC,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q5\(1));

-- Location: LABCELL_X88_Y12_N24
\G4|Q1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q1~3_combout\ = ( \G4|Q0\(0) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q0\(0),
	combout => \G4|Q1~3_combout\);

-- Location: FF_X88_Y12_N26
\G4|Q1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q1~3_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q1\(0));

-- Location: LABCELL_X88_Y12_N27
\G4|Q2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q2~0_combout\ = (\G4|Q1\(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Q1\(0),
	datad => \ALT_INV_reset~input_o\,
	combout => \G4|Q2~0_combout\);

-- Location: FF_X88_Y12_N29
\G4|Q2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q2~0_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q2\(0));

-- Location: LABCELL_X88_Y12_N15
\G4|Q3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q3~0_combout\ = ( \G4|Q2\(0) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q2\(0),
	combout => \G4|Q3~0_combout\);

-- Location: FF_X88_Y12_N17
\G4|Q3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q3~0_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q3\(0));

-- Location: LABCELL_X88_Y12_N51
\G4|Q4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q4~0_combout\ = ( !\reset~input_o\ & ( \G4|Q3\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset~input_o\,
	dataf => \G4|ALT_INV_Q3\(0),
	combout => \G4|Q4~0_combout\);

-- Location: FF_X88_Y12_N53
\G4|Q4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q4~0_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q4\(0));

-- Location: LABCELL_X88_Y12_N12
\G4|Q5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q5~0_combout\ = (!\reset~input_o\ & \G4|Q4\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \G4|ALT_INV_Q4\(0),
	combout => \G4|Q5~0_combout\);

-- Location: FF_X88_Y12_N14
\G4|Q5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q5~0_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q5\(0));

-- Location: LABCELL_X88_Y11_N45
\G4|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Equal1~0_combout\ = ( !\G4|Q5\(0) & ( (\G4|Q5\(3) & (!\G4|Q5\(2) & !\G4|Q5\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \G4|ALT_INV_Q5\(3),
	datac => \G4|ALT_INV_Q5\(2),
	datad => \G4|ALT_INV_Q5\(1),
	dataf => \G4|ALT_INV_Q5\(0),
	combout => \G4|Equal1~0_combout\);

-- Location: LABCELL_X88_Y11_N33
\G4|Q1[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q1[0]~1_combout\ = ( \G4|Equal1~0_combout\ & ( \G3|Mux0~0_combout\ & ( (!\G4|Q1[0]~10_combout\) # ((!\G4|Q5\(5) & (!\G4|Q5\(4) & \G4|Q5\(6)))) ) ) ) # ( !\G4|Equal1~0_combout\ & ( \G3|Mux0~0_combout\ & ( !\G4|Q1[0]~10_combout\ ) ) ) # ( 
-- \G4|Equal1~0_combout\ & ( !\G3|Mux0~0_combout\ & ( (!\G4|Q5\(5) & (!\G4|Q5\(4) & \G4|Q5\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000100011110000111100001111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G4|ALT_INV_Q5\(5),
	datab => \G4|ALT_INV_Q5\(4),
	datac => \G4|ALT_INV_Q1[0]~10_combout\,
	datad => \G4|ALT_INV_Q5\(6),
	datae => \G4|ALT_INV_Equal1~0_combout\,
	dataf => \G3|ALT_INV_Mux0~0_combout\,
	combout => \G4|Q1[0]~1_combout\);

-- Location: FF_X87_Y11_N7
\G2|send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \G2|Equal1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G2|send~q\);

-- Location: LABCELL_X88_Y11_N18
\G4|Q1[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G4|Q1[0]~2_combout\ = ( \G2|send~q\ & ( \G4|Q1[0]~0_combout\ ) ) # ( !\G2|send~q\ & ( \G4|Q1[0]~0_combout\ & ( \reset~input_o\ ) ) ) # ( \G2|send~q\ & ( !\G4|Q1[0]~0_combout\ & ( ((!\G2|outsig[7]~DUPLICATE_q\ & !\G3|Mux5~2_combout\)) # 
-- (\G4|Q1[0]~1_combout\) ) ) ) # ( !\G2|send~q\ & ( !\G4|Q1[0]~0_combout\ & ( (\reset~input_o\ & (((!\G2|outsig[7]~DUPLICATE_q\ & !\G3|Mux5~2_combout\)) # (\G4|Q1[0]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001111100011111000111100000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G2|ALT_INV_outsig[7]~DUPLICATE_q\,
	datab => \G3|ALT_INV_Mux5~2_combout\,
	datac => \G4|ALT_INV_Q1[0]~1_combout\,
	datad => \ALT_INV_reset~input_o\,
	datae => \G2|ALT_INV_send~q\,
	dataf => \G4|ALT_INV_Q1[0]~0_combout\,
	combout => \G4|Q1[0]~2_combout\);

-- Location: FF_X87_Y11_N50
\G4|Q0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G4|Q0~0_combout\,
	ena => \G4|Q1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|Q0\(0));

-- Location: LABCELL_X85_Y7_N0
\G1|G1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~81_sumout\ = SUM(( !\G1|G1|count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \G1|G1|Add0~82\ = CARRY(( !\G1|G1|count[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \G1|G1|Add0~81_sumout\,
	cout => \G1|G1|Add0~82\);

-- Location: MLABCELL_X84_Y7_N57
\G1|G1|count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|count[0]~0_combout\ = ( !\G1|G1|Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G1|G1|ALT_INV_Add0~81_sumout\,
	combout => \G1|G1|count[0]~0_combout\);

-- Location: FF_X84_Y7_N58
\G1|G1|count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|count[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count[0]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y7_N3
\G1|G1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~5_sumout\ = SUM(( \G1|G1|count\(1) ) + ( GND ) + ( \G1|G1|Add0~82\ ))
-- \G1|G1|Add0~6\ = CARRY(( \G1|G1|count\(1) ) + ( GND ) + ( \G1|G1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(1),
	cin => \G1|G1|Add0~82\,
	sumout => \G1|G1|Add0~5_sumout\,
	cout => \G1|G1|Add0~6\);

-- Location: FF_X85_Y7_N5
\G1|G1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(1));

-- Location: LABCELL_X85_Y7_N6
\G1|G1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~1_sumout\ = SUM(( \G1|G1|count\(2) ) + ( GND ) + ( \G1|G1|Add0~6\ ))
-- \G1|G1|Add0~2\ = CARRY(( \G1|G1|count\(2) ) + ( GND ) + ( \G1|G1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(2),
	cin => \G1|G1|Add0~6\,
	sumout => \G1|G1|Add0~1_sumout\,
	cout => \G1|G1|Add0~2\);

-- Location: FF_X85_Y7_N7
\G1|G1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(2));

-- Location: LABCELL_X85_Y7_N9
\G1|G1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~29_sumout\ = SUM(( \G1|G1|count\(3) ) + ( GND ) + ( \G1|G1|Add0~2\ ))
-- \G1|G1|Add0~30\ = CARRY(( \G1|G1|count\(3) ) + ( GND ) + ( \G1|G1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(3),
	cin => \G1|G1|Add0~2\,
	sumout => \G1|G1|Add0~29_sumout\,
	cout => \G1|G1|Add0~30\);

-- Location: FF_X85_Y7_N11
\G1|G1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(3));

-- Location: LABCELL_X85_Y7_N12
\G1|G1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~25_sumout\ = SUM(( \G1|G1|count\(4) ) + ( GND ) + ( \G1|G1|Add0~30\ ))
-- \G1|G1|Add0~26\ = CARRY(( \G1|G1|count\(4) ) + ( GND ) + ( \G1|G1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(4),
	cin => \G1|G1|Add0~30\,
	sumout => \G1|G1|Add0~25_sumout\,
	cout => \G1|G1|Add0~26\);

-- Location: FF_X85_Y7_N14
\G1|G1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(4));

-- Location: LABCELL_X85_Y7_N15
\G1|G1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~21_sumout\ = SUM(( \G1|G1|count\(5) ) + ( GND ) + ( \G1|G1|Add0~26\ ))
-- \G1|G1|Add0~22\ = CARRY(( \G1|G1|count\(5) ) + ( GND ) + ( \G1|G1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(5),
	cin => \G1|G1|Add0~26\,
	sumout => \G1|G1|Add0~21_sumout\,
	cout => \G1|G1|Add0~22\);

-- Location: FF_X85_Y7_N17
\G1|G1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(5));

-- Location: LABCELL_X85_Y7_N18
\G1|G1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~17_sumout\ = SUM(( \G1|G1|count\(6) ) + ( GND ) + ( \G1|G1|Add0~22\ ))
-- \G1|G1|Add0~18\ = CARRY(( \G1|G1|count\(6) ) + ( GND ) + ( \G1|G1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(6),
	cin => \G1|G1|Add0~22\,
	sumout => \G1|G1|Add0~17_sumout\,
	cout => \G1|G1|Add0~18\);

-- Location: FF_X85_Y7_N20
\G1|G1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(6));

-- Location: LABCELL_X85_Y7_N21
\G1|G1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~13_sumout\ = SUM(( \G1|G1|count\(7) ) + ( GND ) + ( \G1|G1|Add0~18\ ))
-- \G1|G1|Add0~14\ = CARRY(( \G1|G1|count\(7) ) + ( GND ) + ( \G1|G1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(7),
	cin => \G1|G1|Add0~18\,
	sumout => \G1|G1|Add0~13_sumout\,
	cout => \G1|G1|Add0~14\);

-- Location: FF_X85_Y7_N23
\G1|G1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(7));

-- Location: LABCELL_X85_Y7_N24
\G1|G1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~37_sumout\ = SUM(( \G1|G1|count\(8) ) + ( GND ) + ( \G1|G1|Add0~14\ ))
-- \G1|G1|Add0~38\ = CARRY(( \G1|G1|count\(8) ) + ( GND ) + ( \G1|G1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(8),
	cin => \G1|G1|Add0~14\,
	sumout => \G1|G1|Add0~37_sumout\,
	cout => \G1|G1|Add0~38\);

-- Location: FF_X85_Y7_N26
\G1|G1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(8));

-- Location: LABCELL_X85_Y7_N27
\G1|G1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~65_sumout\ = SUM(( \G1|G1|count\(9) ) + ( GND ) + ( \G1|G1|Add0~38\ ))
-- \G1|G1|Add0~66\ = CARRY(( \G1|G1|count\(9) ) + ( GND ) + ( \G1|G1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(9),
	cin => \G1|G1|Add0~38\,
	sumout => \G1|G1|Add0~65_sumout\,
	cout => \G1|G1|Add0~66\);

-- Location: FF_X85_Y7_N28
\G1|G1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~65_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(9));

-- Location: LABCELL_X85_Y7_N30
\G1|G1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~9_sumout\ = SUM(( \G1|G1|count\(10) ) + ( GND ) + ( \G1|G1|Add0~66\ ))
-- \G1|G1|Add0~10\ = CARRY(( \G1|G1|count\(10) ) + ( GND ) + ( \G1|G1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(10),
	cin => \G1|G1|Add0~66\,
	sumout => \G1|G1|Add0~9_sumout\,
	cout => \G1|G1|Add0~10\);

-- Location: FF_X85_Y7_N32
\G1|G1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(10));

-- Location: LABCELL_X85_Y7_N33
\G1|G1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~53_sumout\ = SUM(( \G1|G1|count\(11) ) + ( GND ) + ( \G1|G1|Add0~10\ ))
-- \G1|G1|Add0~54\ = CARRY(( \G1|G1|count\(11) ) + ( GND ) + ( \G1|G1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(11),
	cin => \G1|G1|Add0~10\,
	sumout => \G1|G1|Add0~53_sumout\,
	cout => \G1|G1|Add0~54\);

-- Location: FF_X85_Y7_N35
\G1|G1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~53_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(11));

-- Location: LABCELL_X85_Y7_N36
\G1|G1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~49_sumout\ = SUM(( \G1|G1|count\(12) ) + ( GND ) + ( \G1|G1|Add0~54\ ))
-- \G1|G1|Add0~50\ = CARRY(( \G1|G1|count\(12) ) + ( GND ) + ( \G1|G1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(12),
	cin => \G1|G1|Add0~54\,
	sumout => \G1|G1|Add0~49_sumout\,
	cout => \G1|G1|Add0~50\);

-- Location: FF_X85_Y7_N38
\G1|G1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~49_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(12));

-- Location: LABCELL_X85_Y7_N39
\G1|G1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~45_sumout\ = SUM(( \G1|G1|count\(13) ) + ( GND ) + ( \G1|G1|Add0~50\ ))
-- \G1|G1|Add0~46\ = CARRY(( \G1|G1|count\(13) ) + ( GND ) + ( \G1|G1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(13),
	cin => \G1|G1|Add0~50\,
	sumout => \G1|G1|Add0~45_sumout\,
	cout => \G1|G1|Add0~46\);

-- Location: FF_X85_Y7_N41
\G1|G1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(13));

-- Location: LABCELL_X85_Y7_N42
\G1|G1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~41_sumout\ = SUM(( \G1|G1|count\(14) ) + ( GND ) + ( \G1|G1|Add0~46\ ))
-- \G1|G1|Add0~42\ = CARRY(( \G1|G1|count\(14) ) + ( GND ) + ( \G1|G1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(14),
	cin => \G1|G1|Add0~46\,
	sumout => \G1|G1|Add0~41_sumout\,
	cout => \G1|G1|Add0~42\);

-- Location: FF_X85_Y7_N44
\G1|G1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(14));

-- Location: LABCELL_X85_Y7_N45
\G1|G1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~33_sumout\ = SUM(( \G1|G1|count\(15) ) + ( GND ) + ( \G1|G1|Add0~42\ ))
-- \G1|G1|Add0~34\ = CARRY(( \G1|G1|count\(15) ) + ( GND ) + ( \G1|G1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(15),
	cin => \G1|G1|Add0~42\,
	sumout => \G1|G1|Add0~33_sumout\,
	cout => \G1|G1|Add0~34\);

-- Location: FF_X85_Y7_N47
\G1|G1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(15));

-- Location: LABCELL_X85_Y7_N48
\G1|G1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~77_sumout\ = SUM(( \G1|G1|count\(16) ) + ( GND ) + ( \G1|G1|Add0~34\ ))
-- \G1|G1|Add0~78\ = CARRY(( \G1|G1|count\(16) ) + ( GND ) + ( \G1|G1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(16),
	cin => \G1|G1|Add0~34\,
	sumout => \G1|G1|Add0~77_sumout\,
	cout => \G1|G1|Add0~78\);

-- Location: FF_X85_Y7_N49
\G1|G1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~77_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(16));

-- Location: LABCELL_X85_Y7_N51
\G1|G1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~73_sumout\ = SUM(( \G1|G1|count\(17) ) + ( GND ) + ( \G1|G1|Add0~78\ ))
-- \G1|G1|Add0~74\ = CARRY(( \G1|G1|count\(17) ) + ( GND ) + ( \G1|G1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(17),
	cin => \G1|G1|Add0~78\,
	sumout => \G1|G1|Add0~73_sumout\,
	cout => \G1|G1|Add0~74\);

-- Location: FF_X85_Y7_N52
\G1|G1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~73_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(17));

-- Location: LABCELL_X85_Y7_N54
\G1|G1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~69_sumout\ = SUM(( \G1|G1|count\(18) ) + ( GND ) + ( \G1|G1|Add0~74\ ))
-- \G1|G1|Add0~70\ = CARRY(( \G1|G1|count\(18) ) + ( GND ) + ( \G1|G1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(18),
	cin => \G1|G1|Add0~74\,
	sumout => \G1|G1|Add0~69_sumout\,
	cout => \G1|G1|Add0~70\);

-- Location: FF_X85_Y7_N56
\G1|G1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~69_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(18));

-- Location: LABCELL_X85_Y7_N57
\G1|G1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~85_sumout\ = SUM(( \G1|G1|count\(19) ) + ( GND ) + ( \G1|G1|Add0~70\ ))
-- \G1|G1|Add0~86\ = CARRY(( \G1|G1|count\(19) ) + ( GND ) + ( \G1|G1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(19),
	cin => \G1|G1|Add0~70\,
	sumout => \G1|G1|Add0~85_sumout\,
	cout => \G1|G1|Add0~86\);

-- Location: FF_X85_Y7_N58
\G1|G1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~85_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(19));

-- Location: LABCELL_X85_Y6_N0
\G1|G1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~89_sumout\ = SUM(( \G1|G1|count\(20) ) + ( GND ) + ( \G1|G1|Add0~86\ ))
-- \G1|G1|Add0~90\ = CARRY(( \G1|G1|count\(20) ) + ( GND ) + ( \G1|G1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(20),
	cin => \G1|G1|Add0~86\,
	sumout => \G1|G1|Add0~89_sumout\,
	cout => \G1|G1|Add0~90\);

-- Location: FF_X85_Y6_N2
\G1|G1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~89_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(20));

-- Location: LABCELL_X85_Y6_N3
\G1|G1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~93_sumout\ = SUM(( \G1|G1|count\(21) ) + ( GND ) + ( \G1|G1|Add0~90\ ))
-- \G1|G1|Add0~94\ = CARRY(( \G1|G1|count\(21) ) + ( GND ) + ( \G1|G1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(21),
	cin => \G1|G1|Add0~90\,
	sumout => \G1|G1|Add0~93_sumout\,
	cout => \G1|G1|Add0~94\);

-- Location: FF_X85_Y6_N5
\G1|G1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~93_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(21));

-- Location: FF_X84_Y7_N59
\G1|G1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|count[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(0));

-- Location: LABCELL_X85_Y6_N6
\G1|G1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~97_sumout\ = SUM(( \G1|G1|count\(22) ) + ( GND ) + ( \G1|G1|Add0~94\ ))
-- \G1|G1|Add0~98\ = CARRY(( \G1|G1|count\(22) ) + ( GND ) + ( \G1|G1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(22),
	cin => \G1|G1|Add0~94\,
	sumout => \G1|G1|Add0~97_sumout\,
	cout => \G1|G1|Add0~98\);

-- Location: FF_X85_Y6_N8
\G1|G1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~97_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(22));

-- Location: LABCELL_X85_Y6_N9
\G1|G1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~101_sumout\ = SUM(( \G1|G1|count\(23) ) + ( GND ) + ( \G1|G1|Add0~98\ ))
-- \G1|G1|Add0~102\ = CARRY(( \G1|G1|count\(23) ) + ( GND ) + ( \G1|G1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(23),
	cin => \G1|G1|Add0~98\,
	sumout => \G1|G1|Add0~101_sumout\,
	cout => \G1|G1|Add0~102\);

-- Location: FF_X85_Y6_N10
\G1|G1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~101_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(23));

-- Location: LABCELL_X85_Y6_N54
\G1|G1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Equal0~4_combout\ = ( \G1|G1|count\(20) & ( \G1|G1|count\(19) & ( (\G1|G1|count\(21) & (\G1|G1|count\(0) & (!\G1|G1|count\(23) & \G1|G1|count\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G1|ALT_INV_count\(21),
	datab => \G1|G1|ALT_INV_count\(0),
	datac => \G1|G1|ALT_INV_count\(23),
	datad => \G1|G1|ALT_INV_count\(22),
	datae => \G1|G1|ALT_INV_count\(20),
	dataf => \G1|G1|ALT_INV_count\(19),
	combout => \G1|G1|Equal0~4_combout\);

-- Location: MLABCELL_X84_Y7_N3
\G1|G1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Equal0~2_combout\ = ( \G1|G1|count\(12) & ( \G1|G1|count\(11) & ( (!\G1|G1|count\(15) & (\G1|G1|count\(14) & (!\G1|G1|count\(8) & \G1|G1|count\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G1|ALT_INV_count\(15),
	datab => \G1|G1|ALT_INV_count\(14),
	datac => \G1|G1|ALT_INV_count\(8),
	datad => \G1|G1|ALT_INV_count\(13),
	datae => \G1|G1|ALT_INV_count\(12),
	dataf => \G1|G1|ALT_INV_count\(11),
	combout => \G1|G1|Equal0~2_combout\);

-- Location: LABCELL_X85_Y6_N12
\G1|G1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~105_sumout\ = SUM(( \G1|G1|count\(24) ) + ( GND ) + ( \G1|G1|Add0~102\ ))
-- \G1|G1|Add0~106\ = CARRY(( \G1|G1|count\(24) ) + ( GND ) + ( \G1|G1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(24),
	cin => \G1|G1|Add0~102\,
	sumout => \G1|G1|Add0~105_sumout\,
	cout => \G1|G1|Add0~106\);

-- Location: FF_X85_Y6_N14
\G1|G1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~105_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(24));

-- Location: LABCELL_X85_Y6_N15
\G1|G1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~109_sumout\ = SUM(( \G1|G1|count\(25) ) + ( GND ) + ( \G1|G1|Add0~106\ ))
-- \G1|G1|Add0~110\ = CARRY(( \G1|G1|count\(25) ) + ( GND ) + ( \G1|G1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(25),
	cin => \G1|G1|Add0~106\,
	sumout => \G1|G1|Add0~109_sumout\,
	cout => \G1|G1|Add0~110\);

-- Location: FF_X85_Y6_N17
\G1|G1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~109_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(25));

-- Location: LABCELL_X85_Y6_N18
\G1|G1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~113_sumout\ = SUM(( \G1|G1|count\(26) ) + ( GND ) + ( \G1|G1|Add0~110\ ))
-- \G1|G1|Add0~114\ = CARRY(( \G1|G1|count\(26) ) + ( GND ) + ( \G1|G1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(26),
	cin => \G1|G1|Add0~110\,
	sumout => \G1|G1|Add0~113_sumout\,
	cout => \G1|G1|Add0~114\);

-- Location: FF_X85_Y6_N20
\G1|G1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~113_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(26));

-- Location: LABCELL_X85_Y6_N21
\G1|G1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~117_sumout\ = SUM(( \G1|G1|count\(27) ) + ( GND ) + ( \G1|G1|Add0~114\ ))
-- \G1|G1|Add0~118\ = CARRY(( \G1|G1|count\(27) ) + ( GND ) + ( \G1|G1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(27),
	cin => \G1|G1|Add0~114\,
	sumout => \G1|G1|Add0~117_sumout\,
	cout => \G1|G1|Add0~118\);

-- Location: FF_X85_Y6_N23
\G1|G1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~117_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(27));

-- Location: LABCELL_X85_Y6_N24
\G1|G1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~121_sumout\ = SUM(( \G1|G1|count\(28) ) + ( GND ) + ( \G1|G1|Add0~118\ ))
-- \G1|G1|Add0~122\ = CARRY(( \G1|G1|count\(28) ) + ( GND ) + ( \G1|G1|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(28),
	cin => \G1|G1|Add0~118\,
	sumout => \G1|G1|Add0~121_sumout\,
	cout => \G1|G1|Add0~122\);

-- Location: FF_X85_Y6_N25
\G1|G1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~121_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(28));

-- Location: LABCELL_X85_Y6_N27
\G1|G1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~125_sumout\ = SUM(( \G1|G1|count\(29) ) + ( GND ) + ( \G1|G1|Add0~122\ ))
-- \G1|G1|Add0~126\ = CARRY(( \G1|G1|count\(29) ) + ( GND ) + ( \G1|G1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(29),
	cin => \G1|G1|Add0~122\,
	sumout => \G1|G1|Add0~125_sumout\,
	cout => \G1|G1|Add0~126\);

-- Location: FF_X85_Y6_N29
\G1|G1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~125_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(29));

-- Location: LABCELL_X85_Y6_N36
\G1|G1|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Equal0~5_combout\ = ( !\G1|G1|count\(27) & ( \G1|G1|count\(24) & ( (!\G1|G1|count\(29) & (!\G1|G1|count\(25) & (!\G1|G1|count\(26) & !\G1|G1|count\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G1|ALT_INV_count\(29),
	datab => \G1|G1|ALT_INV_count\(25),
	datac => \G1|G1|ALT_INV_count\(26),
	datad => \G1|G1|ALT_INV_count\(28),
	datae => \G1|G1|ALT_INV_count\(27),
	dataf => \G1|G1|ALT_INV_count\(24),
	combout => \G1|G1|Equal0~5_combout\);

-- Location: MLABCELL_X84_Y7_N9
\G1|G1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Equal0~0_combout\ = ( !\G1|G1|count\(1) & ( !\G1|G1|count\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G1|G1|ALT_INV_count\(1),
	dataf => \G1|G1|ALT_INV_count\(2),
	combout => \G1|G1|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y7_N42
\G1|G1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Equal0~1_combout\ = ( !\G1|G1|count\(3) & ( !\G1|G1|count\(10) & ( (!\G1|G1|count\(5) & (\G1|G1|count\(6) & (!\G1|G1|count\(7) & !\G1|G1|count\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G1|ALT_INV_count\(5),
	datab => \G1|G1|ALT_INV_count\(6),
	datac => \G1|G1|ALT_INV_count\(7),
	datad => \G1|G1|ALT_INV_count\(4),
	datae => \G1|G1|ALT_INV_count\(3),
	dataf => \G1|G1|ALT_INV_count\(10),
	combout => \G1|G1|Equal0~1_combout\);

-- Location: LABCELL_X85_Y6_N30
\G1|G1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~57_sumout\ = SUM(( \G1|G1|count\(30) ) + ( GND ) + ( \G1|G1|Add0~126\ ))
-- \G1|G1|Add0~58\ = CARRY(( \G1|G1|count\(30) ) + ( GND ) + ( \G1|G1|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(30),
	cin => \G1|G1|Add0~126\,
	sumout => \G1|G1|Add0~57_sumout\,
	cout => \G1|G1|Add0~58\);

-- Location: FF_X85_Y6_N32
\G1|G1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(30));

-- Location: LABCELL_X85_Y6_N33
\G1|G1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Add0~61_sumout\ = SUM(( \G1|G1|count\(31) ) + ( GND ) + ( \G1|G1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \G1|G1|ALT_INV_count\(31),
	cin => \G1|G1|Add0~58\,
	sumout => \G1|G1|Add0~61_sumout\);

-- Location: FF_X85_Y6_N35
\G1|G1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|Add0~61_sumout\,
	clrn => \reset~input_o\,
	sclr => \G1|G1|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|count\(31));

-- Location: LABCELL_X85_Y6_N48
\G1|G1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Equal0~3_combout\ = ( \G1|G1|count\(18) & ( !\G1|G1|count\(9) & ( (\G1|G1|count\(16) & (!\G1|G1|count\(30) & (!\G1|G1|count\(31) & !\G1|G1|count\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G1|ALT_INV_count\(16),
	datab => \G1|G1|ALT_INV_count\(30),
	datac => \G1|G1|ALT_INV_count\(31),
	datad => \G1|G1|ALT_INV_count\(17),
	datae => \G1|G1|ALT_INV_count\(18),
	dataf => \G1|G1|ALT_INV_count\(9),
	combout => \G1|G1|Equal0~3_combout\);

-- Location: LABCELL_X85_Y6_N42
\G1|G1|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|Equal0~6_combout\ = ( \G1|G1|Equal0~1_combout\ & ( \G1|G1|Equal0~3_combout\ & ( (\G1|G1|Equal0~4_combout\ & (\G1|G1|Equal0~2_combout\ & (\G1|G1|Equal0~5_combout\ & \G1|G1|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \G1|G1|ALT_INV_Equal0~4_combout\,
	datab => \G1|G1|ALT_INV_Equal0~2_combout\,
	datac => \G1|G1|ALT_INV_Equal0~5_combout\,
	datad => \G1|G1|ALT_INV_Equal0~0_combout\,
	datae => \G1|G1|ALT_INV_Equal0~1_combout\,
	dataf => \G1|G1|ALT_INV_Equal0~3_combout\,
	combout => \G1|G1|Equal0~6_combout\);

-- Location: MLABCELL_X84_Y7_N36
\G1|G1|tmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G1|G1|tmp~0_combout\ = ( !\G1|G1|tmp~q\ & ( \G1|G1|Equal0~6_combout\ ) ) # ( \G1|G1|tmp~q\ & ( !\G1|G1|Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \G1|G1|ALT_INV_tmp~q\,
	dataf => \G1|G1|ALT_INV_Equal0~6_combout\,
	combout => \G1|G1|tmp~0_combout\);

-- Location: FF_X84_Y7_N37
\G1|G1|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G1|G1|tmp~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1|G1|tmp~q\);

-- Location: LABCELL_X36_Y68_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


