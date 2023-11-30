-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "11/29/2023 22:36:56"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FinalProject IS
    PORT (
	clock_50 : IN std_logic;
	clock_27 : IN std_logic;
	CMOS_IN : IN std_logic_vector(11 DOWNTO 0);
	cmos_xclkin : OUT std_logic;
	cmos_trigger : OUT std_logic;
	cmos_pixclk : IN std_logic;
	cmos_fval : IN std_logic;
	cmos_lval : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	display_hsd : OUT std_logic;
	display_vsd : OUT std_logic;
	display_clock : OUT std_logic;
	DISPLAY_BLUE : OUT std_logic_vector(7 DOWNTO 0);
	DISPLAY_RED : OUT std_logic_vector(7 DOWNTO 0);
	DISPLAY_GREEN : OUT std_logic_vector(7 DOWNTO 0)
	);
END FinalProject;

-- Design Ports Information
-- clock_27	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[0]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[1]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[2]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[3]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmos_xclkin	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmos_trigger	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_hsd	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_vsd	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_clock	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_BLUE[0]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_BLUE[1]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_BLUE[2]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_BLUE[3]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_BLUE[4]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_BLUE[5]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_BLUE[6]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_BLUE[7]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_RED[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_RED[1]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_RED[2]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_RED[3]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_RED[4]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_RED[5]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_RED[6]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_RED[7]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_GREEN[0]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_GREEN[1]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_GREEN[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_GREEN[3]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_GREEN[4]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_GREEN[5]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_GREEN[6]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_GREEN[7]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[9]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[10]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[11]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[5]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[6]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[7]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[8]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmos_fval	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmos_lval	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmos_pixclk	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FinalProject IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_clock_27 : std_logic;
SIGNAL ww_CMOS_IN : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_cmos_xclkin : std_logic;
SIGNAL ww_cmos_trigger : std_logic;
SIGNAL ww_cmos_pixclk : std_logic;
SIGNAL ww_cmos_fval : std_logic;
SIGNAL ww_cmos_lval : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_display_hsd : std_logic;
SIGNAL ww_display_vsd : std_logic;
SIGNAL ww_display_clock : std_logic;
SIGNAL ww_DISPLAY_BLUE : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DISPLAY_RED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DISPLAY_GREEN : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock_27~input_o\ : std_logic;
SIGNAL \CMOS_IN[0]~input_o\ : std_logic;
SIGNAL \CMOS_IN[1]~input_o\ : std_logic;
SIGNAL \CMOS_IN[2]~input_o\ : std_logic;
SIGNAL \CMOS_IN[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \CMOS_IN[9]~input_o\ : std_logic;
SIGNAL \CMOS_IN[10]~input_o\ : std_logic;
SIGNAL \CMOS_IN[11]~input_o\ : std_logic;
SIGNAL \CMOS_IN[4]~input_o\ : std_logic;
SIGNAL \CMOS_IN[5]~input_o\ : std_logic;
SIGNAL \CMOS_IN[6]~input_o\ : std_logic;
SIGNAL \CMOS_IN[7]~input_o\ : std_logic;
SIGNAL \CMOS_IN[8]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \divider~0_combout\ : std_logic;
SIGNAL \divider~q\ : std_logic;
SIGNAL \clock_25MHz~0_combout\ : std_logic;
SIGNAL \clock_25MHz~q\ : std_logic;
SIGNAL \cmos_pixclk~input_o\ : std_logic;
SIGNAL \cmos_pixclk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \cmos_lval~input_o\ : std_logic;
SIGNAL \cmos_fval~input_o\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \LEDR[1]~1_combout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \LEDR[1]~0_combout\ : std_logic;
SIGNAL \LEDR[1]~reg0_q\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \hsync_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \hsync_counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \hsync_counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \hsync_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \hsync_counter[29]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \hsync_counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \hsync_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \hsync_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \hsync_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \hsync_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \hsync_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \hsync_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \hsync_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~6_combout\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \hsync_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \hsync_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \hsync_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \hsync_counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \hsync_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \display_hsd~reg0_q\ : std_logic;
SIGNAL \Add3~125_sumout\ : std_logic;
SIGNAL \Add3~126\ : std_logic;
SIGNAL \Add3~121_sumout\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \vsync_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \vsync_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \vsync_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \vsync_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \vsync_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \vsync_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \vsync_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~73_sumout\ : std_logic;
SIGNAL \Add3~74\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~117_sumout\ : std_logic;
SIGNAL \Add3~118\ : std_logic;
SIGNAL \Add3~113_sumout\ : std_logic;
SIGNAL \Add3~114\ : std_logic;
SIGNAL \Add3~109_sumout\ : std_logic;
SIGNAL \vsync_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~110\ : std_logic;
SIGNAL \Add3~105_sumout\ : std_logic;
SIGNAL \Add3~106\ : std_logic;
SIGNAL \Add3~101_sumout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~97_sumout\ : std_logic;
SIGNAL \Add3~98\ : std_logic;
SIGNAL \Add3~93_sumout\ : std_logic;
SIGNAL \Add3~94\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \vsync_counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \Add3~89_sumout\ : std_logic;
SIGNAL \Add3~90\ : std_logic;
SIGNAL \Add3~85_sumout\ : std_logic;
SIGNAL \Add3~86\ : std_logic;
SIGNAL \Add3~81_sumout\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~77_sumout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \vsync_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \Equal7~6_combout\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \vsync_counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \display_vsd~reg0_q\ : std_logic;
SIGNAL pixel_x : std_logic_vector(31 DOWNTO 0);
SIGNAL pixel_y : std_logic_vector(31 DOWNTO 0);
SIGNAL hsync_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL vsync_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_vsync_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[29]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_cmos_lval~input_o\ : std_logic;
SIGNAL \ALT_INV_cmos_fval~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal7~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_divider~q\ : std_logic;
SIGNAL \ALT_INV_LEDR[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_clock_25MHz~q\ : std_logic;
SIGNAL ALT_INV_vsync_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_hsync_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_pixel_y : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_pixel_x : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clock_50 <= clock_50;
ww_clock_27 <= clock_27;
ww_CMOS_IN <= CMOS_IN;
cmos_xclkin <= ww_cmos_xclkin;
cmos_trigger <= ww_cmos_trigger;
ww_cmos_pixclk <= cmos_pixclk;
ww_cmos_fval <= cmos_fval;
ww_cmos_lval <= cmos_lval;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
display_hsd <= ww_display_hsd;
display_vsd <= ww_display_vsd;
display_clock <= ww_display_clock;
DISPLAY_BLUE <= ww_DISPLAY_BLUE;
DISPLAY_RED <= ww_DISPLAY_RED;
DISPLAY_GREEN <= ww_DISPLAY_GREEN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_vsync_counter[0]~DUPLICATE_q\ <= NOT \vsync_counter[0]~DUPLICATE_q\;
\ALT_INV_hsync_counter[0]~DUPLICATE_q\ <= NOT \hsync_counter[0]~DUPLICATE_q\;
\ALT_INV_hsync_counter[1]~DUPLICATE_q\ <= NOT \hsync_counter[1]~DUPLICATE_q\;
\ALT_INV_hsync_counter[2]~DUPLICATE_q\ <= NOT \hsync_counter[2]~DUPLICATE_q\;
\ALT_INV_vsync_counter[21]~DUPLICATE_q\ <= NOT \vsync_counter[21]~DUPLICATE_q\;
\ALT_INV_vsync_counter[26]~DUPLICATE_q\ <= NOT \vsync_counter[26]~DUPLICATE_q\;
\ALT_INV_vsync_counter[5]~DUPLICATE_q\ <= NOT \vsync_counter[5]~DUPLICATE_q\;
\ALT_INV_vsync_counter[6]~DUPLICATE_q\ <= NOT \vsync_counter[6]~DUPLICATE_q\;
\ALT_INV_vsync_counter[7]~DUPLICATE_q\ <= NOT \vsync_counter[7]~DUPLICATE_q\;
\ALT_INV_vsync_counter[8]~DUPLICATE_q\ <= NOT \vsync_counter[8]~DUPLICATE_q\;
\ALT_INV_vsync_counter[31]~DUPLICATE_q\ <= NOT \vsync_counter[31]~DUPLICATE_q\;
\ALT_INV_vsync_counter[2]~DUPLICATE_q\ <= NOT \vsync_counter[2]~DUPLICATE_q\;
\ALT_INV_vsync_counter[3]~DUPLICATE_q\ <= NOT \vsync_counter[3]~DUPLICATE_q\;
\ALT_INV_vsync_counter[4]~DUPLICATE_q\ <= NOT \vsync_counter[4]~DUPLICATE_q\;
\ALT_INV_hsync_counter[10]~DUPLICATE_q\ <= NOT \hsync_counter[10]~DUPLICATE_q\;
\ALT_INV_hsync_counter[3]~DUPLICATE_q\ <= NOT \hsync_counter[3]~DUPLICATE_q\;
\ALT_INV_hsync_counter[4]~DUPLICATE_q\ <= NOT \hsync_counter[4]~DUPLICATE_q\;
\ALT_INV_hsync_counter[18]~DUPLICATE_q\ <= NOT \hsync_counter[18]~DUPLICATE_q\;
\ALT_INV_hsync_counter[19]~DUPLICATE_q\ <= NOT \hsync_counter[19]~DUPLICATE_q\;
\ALT_INV_hsync_counter[23]~DUPLICATE_q\ <= NOT \hsync_counter[23]~DUPLICATE_q\;
\ALT_INV_hsync_counter[6]~DUPLICATE_q\ <= NOT \hsync_counter[6]~DUPLICATE_q\;
\ALT_INV_hsync_counter[7]~DUPLICATE_q\ <= NOT \hsync_counter[7]~DUPLICATE_q\;
\ALT_INV_hsync_counter[9]~DUPLICATE_q\ <= NOT \hsync_counter[9]~DUPLICATE_q\;
\ALT_INV_hsync_counter[11]~DUPLICATE_q\ <= NOT \hsync_counter[11]~DUPLICATE_q\;
\ALT_INV_hsync_counter[12]~DUPLICATE_q\ <= NOT \hsync_counter[12]~DUPLICATE_q\;
\ALT_INV_hsync_counter[25]~DUPLICATE_q\ <= NOT \hsync_counter[25]~DUPLICATE_q\;
\ALT_INV_hsync_counter[27]~DUPLICATE_q\ <= NOT \hsync_counter[27]~DUPLICATE_q\;
\ALT_INV_hsync_counter[29]~DUPLICATE_q\ <= NOT \hsync_counter[29]~DUPLICATE_q\;
\ALT_INV_hsync_counter[31]~DUPLICATE_q\ <= NOT \hsync_counter[31]~DUPLICATE_q\;
\ALT_INV_cmos_lval~input_o\ <= NOT \cmos_lval~input_o\;
\ALT_INV_cmos_fval~input_o\ <= NOT \cmos_fval~input_o\;
\ALT_INV_Equal7~5_combout\ <= NOT \Equal7~5_combout\;
\ALT_INV_Equal6~5_combout\ <= NOT \Equal6~5_combout\;
\ALT_INV_Equal6~4_combout\ <= NOT \Equal6~4_combout\;
\ALT_INV_Equal7~4_combout\ <= NOT \Equal7~4_combout\;
\ALT_INV_Equal7~3_combout\ <= NOT \Equal7~3_combout\;
\ALT_INV_Equal7~2_combout\ <= NOT \Equal7~2_combout\;
\ALT_INV_Equal7~1_combout\ <= NOT \Equal7~1_combout\;
\ALT_INV_Equal7~0_combout\ <= NOT \Equal7~0_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_Equal6~3_combout\ <= NOT \Equal6~3_combout\;
\ALT_INV_Equal6~2_combout\ <= NOT \Equal6~2_combout\;
\ALT_INV_Equal6~1_combout\ <= NOT \Equal6~1_combout\;
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_divider~q\ <= NOT \divider~q\;
\ALT_INV_LEDR[1]~reg0_q\ <= NOT \LEDR[1]~reg0_q\;
\ALT_INV_clock_25MHz~q\ <= NOT \clock_25MHz~q\;
ALT_INV_vsync_counter(0) <= NOT vsync_counter(0);
ALT_INV_vsync_counter(1) <= NOT vsync_counter(1);
ALT_INV_hsync_counter(0) <= NOT hsync_counter(0);
ALT_INV_hsync_counter(1) <= NOT hsync_counter(1);
ALT_INV_hsync_counter(2) <= NOT hsync_counter(2);
ALT_INV_vsync_counter(19) <= NOT vsync_counter(19);
ALT_INV_vsync_counter(20) <= NOT vsync_counter(20);
ALT_INV_vsync_counter(21) <= NOT vsync_counter(21);
ALT_INV_vsync_counter(22) <= NOT vsync_counter(22);
ALT_INV_vsync_counter(23) <= NOT vsync_counter(23);
ALT_INV_vsync_counter(24) <= NOT vsync_counter(24);
ALT_INV_vsync_counter(25) <= NOT vsync_counter(25);
ALT_INV_vsync_counter(27) <= NOT vsync_counter(27);
ALT_INV_vsync_counter(28) <= NOT vsync_counter(28);
ALT_INV_vsync_counter(29) <= NOT vsync_counter(29);
ALT_INV_vsync_counter(30) <= NOT vsync_counter(30);
ALT_INV_vsync_counter(16) <= NOT vsync_counter(16);
ALT_INV_vsync_counter(26) <= NOT vsync_counter(26);
ALT_INV_vsync_counter(5) <= NOT vsync_counter(5);
ALT_INV_vsync_counter(6) <= NOT vsync_counter(6);
ALT_INV_vsync_counter(7) <= NOT vsync_counter(7);
ALT_INV_vsync_counter(8) <= NOT vsync_counter(8);
ALT_INV_vsync_counter(11) <= NOT vsync_counter(11);
ALT_INV_vsync_counter(17) <= NOT vsync_counter(17);
ALT_INV_vsync_counter(12) <= NOT vsync_counter(12);
ALT_INV_vsync_counter(13) <= NOT vsync_counter(13);
ALT_INV_vsync_counter(14) <= NOT vsync_counter(14);
ALT_INV_vsync_counter(15) <= NOT vsync_counter(15);
ALT_INV_vsync_counter(10) <= NOT vsync_counter(10);
ALT_INV_vsync_counter(18) <= NOT vsync_counter(18);
ALT_INV_vsync_counter(31) <= NOT vsync_counter(31);
ALT_INV_vsync_counter(9) <= NOT vsync_counter(9);
ALT_INV_vsync_counter(2) <= NOT vsync_counter(2);
ALT_INV_vsync_counter(3) <= NOT vsync_counter(3);
ALT_INV_vsync_counter(4) <= NOT vsync_counter(4);
ALT_INV_hsync_counter(10) <= NOT hsync_counter(10);
ALT_INV_hsync_counter(3) <= NOT hsync_counter(3);
ALT_INV_hsync_counter(4) <= NOT hsync_counter(4);
ALT_INV_hsync_counter(5) <= NOT hsync_counter(5);
ALT_INV_hsync_counter(13) <= NOT hsync_counter(13);
ALT_INV_hsync_counter(14) <= NOT hsync_counter(14);
ALT_INV_hsync_counter(15) <= NOT hsync_counter(15);
ALT_INV_hsync_counter(16) <= NOT hsync_counter(16);
ALT_INV_hsync_counter(17) <= NOT hsync_counter(17);
ALT_INV_hsync_counter(18) <= NOT hsync_counter(18);
ALT_INV_hsync_counter(19) <= NOT hsync_counter(19);
ALT_INV_hsync_counter(20) <= NOT hsync_counter(20);
ALT_INV_hsync_counter(21) <= NOT hsync_counter(21);
ALT_INV_hsync_counter(22) <= NOT hsync_counter(22);
ALT_INV_hsync_counter(23) <= NOT hsync_counter(23);
ALT_INV_hsync_counter(24) <= NOT hsync_counter(24);
ALT_INV_hsync_counter(6) <= NOT hsync_counter(6);
ALT_INV_hsync_counter(7) <= NOT hsync_counter(7);
ALT_INV_hsync_counter(8) <= NOT hsync_counter(8);
ALT_INV_hsync_counter(9) <= NOT hsync_counter(9);
ALT_INV_hsync_counter(11) <= NOT hsync_counter(11);
ALT_INV_hsync_counter(12) <= NOT hsync_counter(12);
ALT_INV_hsync_counter(30) <= NOT hsync_counter(30);
ALT_INV_hsync_counter(28) <= NOT hsync_counter(28);
ALT_INV_hsync_counter(25) <= NOT hsync_counter(25);
ALT_INV_hsync_counter(26) <= NOT hsync_counter(26);
ALT_INV_hsync_counter(27) <= NOT hsync_counter(27);
ALT_INV_hsync_counter(29) <= NOT hsync_counter(29);
ALT_INV_hsync_counter(31) <= NOT hsync_counter(31);
ALT_INV_pixel_y(26) <= NOT pixel_y(26);
ALT_INV_pixel_y(25) <= NOT pixel_y(25);
ALT_INV_pixel_y(24) <= NOT pixel_y(24);
ALT_INV_pixel_y(23) <= NOT pixel_y(23);
ALT_INV_pixel_y(22) <= NOT pixel_y(22);
ALT_INV_pixel_y(21) <= NOT pixel_y(21);
ALT_INV_pixel_y(20) <= NOT pixel_y(20);
ALT_INV_pixel_y(19) <= NOT pixel_y(19);
ALT_INV_pixel_y(18) <= NOT pixel_y(18);
ALT_INV_pixel_y(17) <= NOT pixel_y(17);
ALT_INV_pixel_y(16) <= NOT pixel_y(16);
ALT_INV_pixel_y(15) <= NOT pixel_y(15);
ALT_INV_pixel_y(0) <= NOT pixel_y(0);
ALT_INV_pixel_y(31) <= NOT pixel_y(31);
ALT_INV_pixel_y(30) <= NOT pixel_y(30);
ALT_INV_pixel_y(29) <= NOT pixel_y(29);
ALT_INV_pixel_y(28) <= NOT pixel_y(28);
ALT_INV_pixel_y(27) <= NOT pixel_y(27);
ALT_INV_pixel_y(6) <= NOT pixel_y(6);
ALT_INV_pixel_y(5) <= NOT pixel_y(5);
ALT_INV_pixel_y(4) <= NOT pixel_y(4);
ALT_INV_pixel_y(3) <= NOT pixel_y(3);
ALT_INV_pixel_y(2) <= NOT pixel_y(2);
ALT_INV_pixel_y(1) <= NOT pixel_y(1);
ALT_INV_pixel_y(12) <= NOT pixel_y(12);
ALT_INV_pixel_y(11) <= NOT pixel_y(11);
ALT_INV_pixel_y(10) <= NOT pixel_y(10);
ALT_INV_pixel_y(9) <= NOT pixel_y(9);
ALT_INV_pixel_y(8) <= NOT pixel_y(8);
ALT_INV_pixel_y(7) <= NOT pixel_y(7);
ALT_INV_pixel_y(14) <= NOT pixel_y(14);
ALT_INV_pixel_y(13) <= NOT pixel_y(13);
ALT_INV_pixel_x(26) <= NOT pixel_x(26);
ALT_INV_pixel_x(25) <= NOT pixel_x(25);
ALT_INV_pixel_x(9) <= NOT pixel_x(9);
ALT_INV_pixel_x(8) <= NOT pixel_x(8);
ALT_INV_pixel_x(7) <= NOT pixel_x(7);
ALT_INV_pixel_x(6) <= NOT pixel_x(6);
ALT_INV_pixel_x(5) <= NOT pixel_x(5);
ALT_INV_pixel_x(4) <= NOT pixel_x(4);
ALT_INV_pixel_x(3) <= NOT pixel_x(3);
ALT_INV_pixel_x(2) <= NOT pixel_x(2);
ALT_INV_pixel_x(1) <= NOT pixel_x(1);
ALT_INV_pixel_x(0) <= NOT pixel_x(0);
ALT_INV_pixel_x(12) <= NOT pixel_x(12);
ALT_INV_pixel_x(31) <= NOT pixel_x(31);
ALT_INV_pixel_x(30) <= NOT pixel_x(30);
ALT_INV_pixel_x(29) <= NOT pixel_x(29);
ALT_INV_pixel_x(11) <= NOT pixel_x(11);
ALT_INV_pixel_x(27) <= NOT pixel_x(27);
ALT_INV_pixel_x(17) <= NOT pixel_x(17);
ALT_INV_pixel_x(10) <= NOT pixel_x(10);
ALT_INV_pixel_x(16) <= NOT pixel_x(16);
ALT_INV_pixel_x(15) <= NOT pixel_x(15);
ALT_INV_pixel_x(14) <= NOT pixel_x(14);
ALT_INV_pixel_x(13) <= NOT pixel_x(13);
ALT_INV_pixel_x(23) <= NOT pixel_x(23);
ALT_INV_pixel_x(22) <= NOT pixel_x(22);
ALT_INV_pixel_x(21) <= NOT pixel_x(21);
ALT_INV_pixel_x(20) <= NOT pixel_x(20);
ALT_INV_pixel_x(19) <= NOT pixel_x(19);
ALT_INV_pixel_x(18) <= NOT pixel_x(18);
ALT_INV_pixel_x(28) <= NOT pixel_x(28);
ALT_INV_pixel_x(24) <= NOT pixel_x(24);

-- Location: IOOBUF_X80_Y0_N53
\cmos_xclkin~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_25MHz~q\,
	devoe => ww_devoe,
	o => ww_cmos_xclkin);

-- Location: IOOBUF_X78_Y0_N53
\cmos_trigger~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_cmos_trigger);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X62_Y0_N2
\display_hsd~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_hsd~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_hsd);

-- Location: IOOBUF_X54_Y0_N2
\display_vsd~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display_vsd~reg0_q\,
	devoe => ww_devoe,
	o => ww_display_vsd);

-- Location: IOOBUF_X68_Y0_N2
\display_clock~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_25MHz~q\,
	devoe => ww_devoe,
	o => ww_display_clock);

-- Location: IOOBUF_X58_Y0_N93
\DISPLAY_BLUE[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_BLUE(0));

-- Location: IOOBUF_X54_Y0_N19
\DISPLAY_BLUE[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_BLUE(1));

-- Location: IOOBUF_X68_Y0_N36
\DISPLAY_BLUE[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_BLUE(2));

-- Location: IOOBUF_X76_Y0_N19
\DISPLAY_BLUE[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_BLUE(3));

-- Location: IOOBUF_X82_Y0_N42
\DISPLAY_BLUE[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_BLUE(4));

-- Location: IOOBUF_X66_Y0_N42
\DISPLAY_BLUE[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_BLUE(5));

-- Location: IOOBUF_X66_Y0_N59
\DISPLAY_BLUE[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_BLUE(6));

-- Location: IOOBUF_X70_Y0_N2
\DISPLAY_BLUE[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_BLUE(7));

-- Location: IOOBUF_X72_Y0_N2
\DISPLAY_RED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_RED(0));

-- Location: IOOBUF_X54_Y0_N53
\DISPLAY_RED[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_RED(1));

-- Location: IOOBUF_X58_Y0_N59
\DISPLAY_RED[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_RED(2));

-- Location: IOOBUF_X60_Y0_N53
\DISPLAY_RED[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_RED(3));

-- Location: IOOBUF_X60_Y0_N36
\DISPLAY_RED[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_RED(4));

-- Location: IOOBUF_X58_Y0_N42
\DISPLAY_RED[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_RED(5));

-- Location: IOOBUF_X54_Y0_N36
\DISPLAY_RED[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_RED(6));

-- Location: IOOBUF_X56_Y0_N53
\DISPLAY_RED[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_RED(7));

-- Location: IOOBUF_X56_Y0_N36
\DISPLAY_GREEN[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_GREEN(0));

-- Location: IOOBUF_X50_Y0_N76
\DISPLAY_GREEN[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_GREEN(1));

-- Location: IOOBUF_X52_Y0_N36
\DISPLAY_GREEN[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_GREEN(2));

-- Location: IOOBUF_X52_Y0_N53
\DISPLAY_GREEN[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_GREEN(3));

-- Location: IOOBUF_X50_Y0_N93
\DISPLAY_GREEN[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_GREEN(4));

-- Location: IOOBUF_X50_Y0_N42
\DISPLAY_GREEN[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_GREEN(5));

-- Location: IOOBUF_X76_Y0_N2
\DISPLAY_GREEN[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_GREEN(6));

-- Location: IOOBUF_X62_Y0_N36
\DISPLAY_GREEN[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DISPLAY_GREEN(7));

-- Location: IOIBUF_X32_Y0_N1
\clock_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: LABCELL_X63_Y1_N39
\divider~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider~0_combout\ = ( !\divider~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_divider~q\,
	combout => \divider~0_combout\);

-- Location: FF_X63_Y1_N44
divider : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	asdata => \divider~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider~q\);

-- Location: LABCELL_X63_Y1_N36
\clock_25MHz~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_25MHz~0_combout\ = ( \clock_25MHz~q\ & ( \divider~q\ ) ) # ( !\clock_25MHz~q\ & ( !\divider~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_divider~q\,
	dataf => \ALT_INV_clock_25MHz~q\,
	combout => \clock_25MHz~0_combout\);

-- Location: FF_X63_Y1_N50
clock_25MHz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	asdata => \clock_25MHz~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_25MHz~q\);

-- Location: IOIBUF_X56_Y0_N18
\cmos_pixclk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmos_pixclk,
	o => \cmos_pixclk~input_o\);

-- Location: CLKCTRL_G6
\cmos_pixclk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \cmos_pixclk~input_o\,
	outclk => \cmos_pixclk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X74_Y0_N75
\cmos_lval~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmos_lval,
	o => \cmos_lval~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\cmos_fval~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmos_fval,
	o => \cmos_fval~input_o\);

-- Location: LABCELL_X68_Y2_N0
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( pixel_x(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~82\ = CARRY(( pixel_x(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(0),
	cin => GND,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: LABCELL_X68_Y1_N39
\process_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = ( \cmos_fval~input_o\ & ( \cmos_lval~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cmos_lval~input_o\,
	dataf => \ALT_INV_cmos_fval~input_o\,
	combout => \process_2~0_combout\);

-- Location: FF_X68_Y2_N2
\pixel_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(0));

-- Location: LABCELL_X68_Y2_N3
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( pixel_x(1) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( pixel_x(1) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(1),
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X68_Y2_N5
\pixel_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(1));

-- Location: LABCELL_X68_Y2_N6
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( pixel_x(2) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( pixel_x(2) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(2),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X68_Y2_N8
\pixel_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(2));

-- Location: LABCELL_X68_Y2_N9
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( pixel_x(3) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( pixel_x(3) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(3),
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X68_Y2_N11
\pixel_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(3));

-- Location: LABCELL_X68_Y2_N12
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( pixel_x(4) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( pixel_x(4) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(4),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X68_Y2_N14
\pixel_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(4));

-- Location: LABCELL_X68_Y2_N15
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( pixel_x(5) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( pixel_x(5) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(5),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X68_Y2_N17
\pixel_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(5));

-- Location: LABCELL_X68_Y2_N18
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( pixel_x(6) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( pixel_x(6) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(6),
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X68_Y2_N20
\pixel_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(6));

-- Location: LABCELL_X68_Y2_N21
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( pixel_x(7) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( pixel_x(7) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(7),
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X68_Y2_N23
\pixel_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(7));

-- Location: LABCELL_X68_Y2_N24
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( pixel_x(8) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( pixel_x(8) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(8),
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X68_Y2_N26
\pixel_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(8));

-- Location: LABCELL_X68_Y2_N27
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( pixel_x(9) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( pixel_x(9) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(9),
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X68_Y1_N59
\pixel_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \Add0~117_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(9));

-- Location: LABCELL_X68_Y2_N30
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( pixel_x(10) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~50\ = CARRY(( pixel_x(10) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(10),
	cin => \Add0~118\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X68_Y2_N32
\pixel_x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(10));

-- Location: LABCELL_X68_Y2_N33
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( pixel_x(11) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~62\ = CARRY(( pixel_x(11) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(11),
	cin => \Add0~50\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X68_Y2_N35
\pixel_x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(11));

-- Location: LABCELL_X68_Y2_N36
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( pixel_x(12) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~78\ = CARRY(( pixel_x(12) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(12),
	cin => \Add0~62\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X68_Y2_N38
\pixel_x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(12));

-- Location: LABCELL_X68_Y2_N39
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( pixel_x(13) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~34\ = CARRY(( pixel_x(13) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(13),
	cin => \Add0~78\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X68_Y2_N41
\pixel_x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(13));

-- Location: LABCELL_X68_Y2_N42
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( pixel_x(14) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( pixel_x(14) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(14),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X68_Y2_N44
\pixel_x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(14));

-- Location: LABCELL_X68_Y2_N45
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( pixel_x(15) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( pixel_x(15) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(15),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X68_Y2_N47
\pixel_x[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(15));

-- Location: LABCELL_X68_Y2_N48
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( pixel_x(16) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( pixel_x(16) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(16),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X68_Y2_N50
\pixel_x[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(16));

-- Location: LABCELL_X68_Y2_N51
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( pixel_x(17) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~54\ = CARRY(( pixel_x(17) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(17),
	cin => \Add0~46\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X68_Y2_N53
\pixel_x[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(17));

-- Location: LABCELL_X68_Y2_N54
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( pixel_x(18) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~10\ = CARRY(( pixel_x(18) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(18),
	cin => \Add0~54\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X68_Y1_N53
\pixel_x[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \Add0~9_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(18));

-- Location: LABCELL_X68_Y2_N57
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( pixel_x(19) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( pixel_x(19) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(19),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X68_Y2_N59
\pixel_x[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(19));

-- Location: LABCELL_X68_Y1_N0
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( pixel_x(20) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( pixel_x(20) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(20),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X68_Y1_N2
\pixel_x[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(20));

-- Location: LABCELL_X68_Y1_N3
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( pixel_x(21) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( pixel_x(21) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(21),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X68_Y1_N5
\pixel_x[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(21));

-- Location: LABCELL_X68_Y1_N6
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( pixel_x(22) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( pixel_x(22) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(22),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X68_Y1_N8
\pixel_x[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(22));

-- Location: LABCELL_X68_Y1_N9
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( pixel_x(23) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( pixel_x(23) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(23),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X68_Y1_N11
\pixel_x[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(23));

-- Location: LABCELL_X68_Y1_N12
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( pixel_x(24) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~2\ = CARRY(( pixel_x(24) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(24),
	cin => \Add0~30\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X68_Y1_N14
\pixel_x[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(24));

-- Location: LABCELL_X68_Y1_N15
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( pixel_x(25) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~122\ = CARRY(( pixel_x(25) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(25),
	cin => \Add0~2\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X68_Y1_N17
\pixel_x[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(25));

-- Location: LABCELL_X68_Y1_N18
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( pixel_x(26) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~126\ = CARRY(( pixel_x(26) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(26),
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X68_Y1_N20
\pixel_x[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(26));

-- Location: LABCELL_X68_Y1_N21
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( pixel_x(27) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~58\ = CARRY(( pixel_x(27) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(27),
	cin => \Add0~126\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X68_Y1_N23
\pixel_x[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(27));

-- Location: LABCELL_X68_Y1_N24
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( pixel_x(28) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~6\ = CARRY(( pixel_x(28) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(28),
	cin => \Add0~58\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X68_Y1_N26
\pixel_x[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(28));

-- Location: LABCELL_X68_Y1_N36
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !pixel_x(24) & ( !pixel_x(28) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(28),
	dataf => ALT_INV_pixel_x(24),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X68_Y1_N48
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !pixel_x(21) & ( !pixel_x(19) & ( (!pixel_x(18) & (!pixel_x(23) & (!pixel_x(20) & !pixel_x(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(18),
	datab => ALT_INV_pixel_x(23),
	datac => ALT_INV_pixel_x(20),
	datad => ALT_INV_pixel_x(22),
	datae => ALT_INV_pixel_x(21),
	dataf => ALT_INV_pixel_x(19),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X67_Y1_N54
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !pixel_x(10) & ( !pixel_x(17) & ( (!pixel_x(14) & (!pixel_x(15) & (!pixel_x(13) & !pixel_x(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(14),
	datab => ALT_INV_pixel_x(15),
	datac => ALT_INV_pixel_x(13),
	datad => ALT_INV_pixel_x(16),
	datae => ALT_INV_pixel_x(10),
	dataf => ALT_INV_pixel_x(17),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X68_Y1_N27
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( pixel_x(29) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~66\ = CARRY(( pixel_x(29) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(29),
	cin => \Add0~6\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X68_Y1_N29
\pixel_x[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(29));

-- Location: LABCELL_X68_Y1_N30
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( pixel_x(30) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( pixel_x(30) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(30),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X68_Y1_N32
\pixel_x[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(30));

-- Location: LABCELL_X68_Y1_N33
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( pixel_x(31) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(31),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\);

-- Location: FF_X68_Y1_N35
\pixel_x[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(31));

-- Location: LABCELL_X68_Y1_N42
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !pixel_x(27) & ( !pixel_x(12) & ( (!pixel_x(31) & (!pixel_x(30) & (!pixel_x(29) & !pixel_x(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(31),
	datab => ALT_INV_pixel_x(30),
	datac => ALT_INV_pixel_x(29),
	datad => ALT_INV_pixel_x(11),
	datae => ALT_INV_pixel_x(27),
	dataf => ALT_INV_pixel_x(12),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X68_Y1_N54
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !pixel_x(8) & ( !pixel_x(7) & ( (!pixel_x(26) & (!pixel_x(25) & (!pixel_x(6) & !pixel_x(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(26),
	datab => ALT_INV_pixel_x(25),
	datac => ALT_INV_pixel_x(6),
	datad => ALT_INV_pixel_x(9),
	datae => ALT_INV_pixel_x(8),
	dataf => ALT_INV_pixel_x(7),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X67_Y1_N48
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( pixel_x(1) & ( !pixel_x(5) & ( (!pixel_x(2) & (!pixel_x(0) & (!pixel_x(3) & !pixel_x(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(2),
	datab => ALT_INV_pixel_x(0),
	datac => ALT_INV_pixel_x(3),
	datad => ALT_INV_pixel_x(4),
	datae => ALT_INV_pixel_x(1),
	dataf => ALT_INV_pixel_x(5),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X67_Y1_N42
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~5_combout\ & ( \Equal0~4_combout\ & ( (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X67_Y2_N0
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( pixel_y(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~78\ = CARRY(( pixel_y(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(0),
	cin => GND,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: LABCELL_X67_Y1_N36
\LEDR[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[1]~1_combout\ = ( \Equal0~6_combout\ & ( (\cmos_lval~input_o\ & \cmos_fval~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmos_lval~input_o\,
	datab => \ALT_INV_cmos_fval~input_o\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \LEDR[1]~1_combout\);

-- Location: FF_X67_Y2_N2
\pixel_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(0));

-- Location: LABCELL_X67_Y2_N3
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( pixel_y(1) ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~34\ = CARRY(( pixel_y(1) ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(1),
	cin => \Add1~78\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X67_Y2_N5
\pixel_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(1));

-- Location: LABCELL_X67_Y2_N6
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( pixel_y(2) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( pixel_y(2) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(2),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X67_Y2_N8
\pixel_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(2));

-- Location: LABCELL_X67_Y2_N9
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( pixel_y(3) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( pixel_y(3) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(3),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X67_Y2_N11
\pixel_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(3));

-- Location: LABCELL_X67_Y2_N12
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( pixel_y(4) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( pixel_y(4) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(4),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X67_Y2_N14
\pixel_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(4));

-- Location: LABCELL_X67_Y2_N15
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( pixel_y(5) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( pixel_y(5) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(5),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X67_Y2_N17
\pixel_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(5));

-- Location: LABCELL_X67_Y2_N18
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( pixel_y(6) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( pixel_y(6) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(6),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X67_Y2_N20
\pixel_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(6));

-- Location: LABCELL_X67_Y2_N21
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( pixel_y(7) ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~10\ = CARRY(( pixel_y(7) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(7),
	cin => \Add1~54\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X67_Y2_N23
\pixel_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(7));

-- Location: LABCELL_X67_Y2_N24
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( pixel_y(8) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( pixel_y(8) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(8),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X67_Y2_N26
\pixel_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(8));

-- Location: LABCELL_X67_Y2_N27
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( pixel_y(9) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( pixel_y(9) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(9),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X67_Y2_N29
\pixel_y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(9));

-- Location: LABCELL_X67_Y2_N30
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( pixel_y(10) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( pixel_y(10) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(10),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X67_Y2_N32
\pixel_y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(10));

-- Location: LABCELL_X67_Y2_N33
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( pixel_y(11) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( pixel_y(11) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(11),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X67_Y2_N35
\pixel_y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(11));

-- Location: LABCELL_X67_Y2_N36
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( pixel_y(12) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( pixel_y(12) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(12),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X67_Y2_N38
\pixel_y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(12));

-- Location: LABCELL_X66_Y2_N54
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !pixel_y(7) & ( !pixel_y(11) & ( (!pixel_y(9) & (!pixel_y(8) & (!pixel_y(10) & !pixel_y(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(9),
	datab => ALT_INV_pixel_y(8),
	datac => ALT_INV_pixel_y(10),
	datad => ALT_INV_pixel_y(12),
	datae => ALT_INV_pixel_y(7),
	dataf => ALT_INV_pixel_y(11),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X67_Y2_N39
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( pixel_y(13) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~2\ = CARRY(( pixel_y(13) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(13),
	cin => \Add1~30\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X67_Y2_N41
\pixel_y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(13));

-- Location: LABCELL_X67_Y2_N42
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( pixel_y(14) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( pixel_y(14) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(14),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X67_Y2_N44
\pixel_y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(14));

-- Location: LABCELL_X66_Y2_N15
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !pixel_y(14) & ( !pixel_y(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_pixel_y(14),
	dataf => ALT_INV_pixel_y(13),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X67_Y2_N45
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( pixel_y(15) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~82\ = CARRY(( pixel_y(15) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(15),
	cin => \Add1~6\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X67_Y2_N47
\pixel_y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(15));

-- Location: LABCELL_X67_Y2_N48
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( pixel_y(16) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~86\ = CARRY(( pixel_y(16) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(16),
	cin => \Add1~82\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X67_Y2_N50
\pixel_y[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(16));

-- Location: LABCELL_X67_Y2_N51
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( pixel_y(17) ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~90\ = CARRY(( pixel_y(17) ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(17),
	cin => \Add1~86\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X67_Y2_N53
\pixel_y[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(17));

-- Location: LABCELL_X67_Y2_N54
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( pixel_y(18) ) + ( GND ) + ( \Add1~90\ ))
-- \Add1~94\ = CARRY(( pixel_y(18) ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(18),
	cin => \Add1~90\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X67_Y2_N56
\pixel_y[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(18));

-- Location: LABCELL_X67_Y2_N57
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( pixel_y(19) ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~98\ = CARRY(( pixel_y(19) ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(19),
	cin => \Add1~94\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X67_Y2_N59
\pixel_y[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(19));

-- Location: LABCELL_X67_Y1_N0
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( pixel_y(20) ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~102\ = CARRY(( pixel_y(20) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(20),
	cin => \Add1~98\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X67_Y1_N2
\pixel_y[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(20));

-- Location: LABCELL_X66_Y2_N24
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( !pixel_y(16) & ( !pixel_y(20) & ( (!pixel_y(15) & (!pixel_y(19) & (!pixel_y(17) & !pixel_y(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(15),
	datab => ALT_INV_pixel_y(19),
	datac => ALT_INV_pixel_y(17),
	datad => ALT_INV_pixel_y(18),
	datae => ALT_INV_pixel_y(16),
	dataf => ALT_INV_pixel_y(20),
	combout => \Equal1~4_combout\);

-- Location: LABCELL_X67_Y1_N3
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( pixel_y(21) ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~106\ = CARRY(( pixel_y(21) ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(21),
	cin => \Add1~102\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X67_Y1_N5
\pixel_y[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(21));

-- Location: LABCELL_X67_Y1_N6
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( pixel_y(22) ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~110\ = CARRY(( pixel_y(22) ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(22),
	cin => \Add1~106\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X67_Y1_N8
\pixel_y[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(22));

-- Location: LABCELL_X67_Y1_N9
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( pixel_y(23) ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~114\ = CARRY(( pixel_y(23) ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(23),
	cin => \Add1~110\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X67_Y1_N11
\pixel_y[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(23));

-- Location: LABCELL_X67_Y1_N12
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( pixel_y(24) ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~118\ = CARRY(( pixel_y(24) ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(24),
	cin => \Add1~114\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X67_Y1_N14
\pixel_y[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(24));

-- Location: LABCELL_X67_Y1_N15
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( pixel_y(25) ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~122\ = CARRY(( pixel_y(25) ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(25),
	cin => \Add1~118\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X67_Y1_N17
\pixel_y[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~121_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(25));

-- Location: LABCELL_X67_Y1_N18
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( pixel_y(26) ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~126\ = CARRY(( pixel_y(26) ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(26),
	cin => \Add1~122\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: FF_X67_Y1_N20
\pixel_y[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(26));

-- Location: LABCELL_X67_Y1_N21
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( pixel_y(27) ) + ( GND ) + ( \Add1~126\ ))
-- \Add1~58\ = CARRY(( pixel_y(27) ) + ( GND ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(27),
	cin => \Add1~126\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X67_Y1_N23
\pixel_y[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(27));

-- Location: LABCELL_X67_Y1_N24
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( pixel_y(28) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~62\ = CARRY(( pixel_y(28) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(28),
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X67_Y1_N26
\pixel_y[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(28));

-- Location: LABCELL_X67_Y1_N27
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( pixel_y(29) ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( pixel_y(29) ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(29),
	cin => \Add1~62\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X67_Y1_N29
\pixel_y[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(29));

-- Location: LABCELL_X67_Y1_N30
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( pixel_y(30) ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( pixel_y(30) ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(30),
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X67_Y1_N32
\pixel_y[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(30));

-- Location: LABCELL_X67_Y1_N33
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( pixel_y(31) ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(31),
	cin => \Add1~70\,
	sumout => \Add1~73_sumout\);

-- Location: FF_X67_Y1_N35
\pixel_y[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \LEDR[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(31));

-- Location: LABCELL_X66_Y2_N6
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !pixel_y(31) & ( !pixel_y(28) & ( (!pixel_y(0) & (!pixel_y(27) & (!pixel_y(29) & !pixel_y(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(0),
	datab => ALT_INV_pixel_y(27),
	datac => ALT_INV_pixel_y(29),
	datad => ALT_INV_pixel_y(30),
	datae => ALT_INV_pixel_y(31),
	dataf => ALT_INV_pixel_y(28),
	combout => \Equal1~3_combout\);

-- Location: LABCELL_X66_Y2_N36
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !pixel_y(3) & ( !pixel_y(6) & ( (pixel_y(1) & (!pixel_y(4) & (!pixel_y(5) & !pixel_y(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(1),
	datab => ALT_INV_pixel_y(4),
	datac => ALT_INV_pixel_y(5),
	datad => ALT_INV_pixel_y(2),
	datae => ALT_INV_pixel_y(3),
	dataf => ALT_INV_pixel_y(6),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X66_Y1_N15
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( !pixel_y(21) & ( !pixel_y(23) & ( (!pixel_y(22) & (!pixel_y(24) & (!pixel_y(26) & !pixel_y(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(22),
	datab => ALT_INV_pixel_y(24),
	datac => ALT_INV_pixel_y(26),
	datad => ALT_INV_pixel_y(25),
	datae => ALT_INV_pixel_y(21),
	dataf => ALT_INV_pixel_y(23),
	combout => \Equal1~5_combout\);

-- Location: LABCELL_X66_Y2_N42
\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~2_combout\ & ( \Equal1~5_combout\ & ( (\Equal1~1_combout\ & (\Equal1~0_combout\ & (\Equal1~4_combout\ & \Equal1~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_Equal1~3_combout\,
	datae => \ALT_INV_Equal1~2_combout\,
	dataf => \ALT_INV_Equal1~5_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X67_Y1_N39
\LEDR[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[1]~0_combout\ = ( \Equal1~6_combout\ & ( (\LEDR[1]~reg0_q\ & ((!\cmos_lval~input_o\) # ((!\cmos_fval~input_o\) # (!\Equal0~6_combout\)))) ) ) # ( !\Equal1~6_combout\ & ( ((\cmos_lval~input_o\ & (\cmos_fval~input_o\ & \Equal0~6_combout\))) # 
-- (\LEDR[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100000000111111100000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmos_lval~input_o\,
	datab => \ALT_INV_cmos_fval~input_o\,
	datac => \ALT_INV_Equal0~6_combout\,
	datad => \ALT_INV_LEDR[1]~reg0_q\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \LEDR[1]~0_combout\);

-- Location: FF_X67_Y1_N40
\LEDR[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \LEDR[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[1]~reg0_q\);

-- Location: LABCELL_X63_Y2_N0
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( hsync_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~126\ = CARRY(( hsync_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hsync_counter(0),
	cin => GND,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

-- Location: FF_X63_Y2_N32
\hsync_counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~113_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[10]~DUPLICATE_q\);

-- Location: FF_X63_Y1_N35
\hsync_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~1_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(31));

-- Location: LABCELL_X63_Y1_N6
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( hsync_counter(22) ) + ( GND ) + ( \Add2~66\ ))
-- \Add2~62\ = CARRY(( hsync_counter(22) ) + ( GND ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(22),
	cin => \Add2~66\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: LABCELL_X63_Y1_N9
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( \hsync_counter[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~62\ ))
-- \Add2~58\ = CARRY(( \hsync_counter[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[23]~DUPLICATE_q\,
	cin => \Add2~62\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X63_Y1_N10
\hsync_counter[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~57_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[23]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y1_N12
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( hsync_counter(24) ) + ( GND ) + ( \Add2~58\ ))
-- \Add2~54\ = CARRY(( hsync_counter(24) ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(24),
	cin => \Add2~58\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X63_Y1_N13
\hsync_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~53_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(24));

-- Location: LABCELL_X63_Y1_N15
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( \hsync_counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~54\ ))
-- \Add2~18\ = CARRY(( \hsync_counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hsync_counter[25]~DUPLICATE_q\,
	cin => \Add2~54\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X63_Y1_N16
\hsync_counter[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~17_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[25]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y1_N18
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( hsync_counter(26) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~14\ = CARRY(( hsync_counter(26) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(26),
	cin => \Add2~18\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X63_Y1_N19
\hsync_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~13_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(26));

-- Location: LABCELL_X63_Y1_N21
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \hsync_counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~10\ = CARRY(( \hsync_counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[27]~DUPLICATE_q\,
	cin => \Add2~14\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X63_Y1_N22
\hsync_counter[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~9_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[27]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y1_N24
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( hsync_counter(28) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~22\ = CARRY(( hsync_counter(28) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hsync_counter(28),
	cin => \Add2~10\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X63_Y1_N25
\hsync_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~21_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(28));

-- Location: LABCELL_X63_Y1_N27
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( \hsync_counter[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~6\ = CARRY(( \hsync_counter[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[29]~DUPLICATE_q\,
	cin => \Add2~22\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X63_Y1_N28
\hsync_counter[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~5_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[29]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y1_N30
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( hsync_counter(30) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~26\ = CARRY(( hsync_counter(30) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hsync_counter(30),
	cin => \Add2~6\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X63_Y1_N31
\hsync_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~25_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(30));

-- Location: LABCELL_X63_Y1_N33
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( hsync_counter(31) ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(31),
	cin => \Add2~26\,
	sumout => \Add2~1_sumout\);

-- Location: FF_X63_Y1_N34
\hsync_counter[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~1_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[31]~DUPLICATE_q\);

-- Location: FF_X63_Y2_N8
\hsync_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~117_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[2]~DUPLICATE_q\);

-- Location: FF_X63_Y2_N2
\hsync_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~125_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[0]~DUPLICATE_q\);

-- Location: FF_X63_Y2_N5
\hsync_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~121_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N36
\Equal6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~5_combout\ = ( !\hsync_counter[0]~DUPLICATE_q\ & ( !\hsync_counter[1]~DUPLICATE_q\ & ( (\hsync_counter[10]~DUPLICATE_q\ & (!\hsync_counter[31]~DUPLICATE_q\ & (hsync_counter(5) & !\hsync_counter[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[10]~DUPLICATE_q\,
	datab => \ALT_INV_hsync_counter[31]~DUPLICATE_q\,
	datac => ALT_INV_hsync_counter(5),
	datad => \ALT_INV_hsync_counter[2]~DUPLICATE_q\,
	datae => \ALT_INV_hsync_counter[0]~DUPLICATE_q\,
	dataf => \ALT_INV_hsync_counter[1]~DUPLICATE_q\,
	combout => \Equal6~5_combout\);

-- Location: FF_X63_Y2_N56
\hsync_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~77_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(18));

-- Location: LABCELL_X64_Y1_N48
\Equal6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = ( !hsync_counter(14) & ( !hsync_counter(16) & ( (!hsync_counter(15) & (!hsync_counter(17) & (!hsync_counter(18) & !hsync_counter(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(15),
	datab => ALT_INV_hsync_counter(17),
	datac => ALT_INV_hsync_counter(18),
	datad => ALT_INV_hsync_counter(13),
	datae => ALT_INV_hsync_counter(14),
	dataf => ALT_INV_hsync_counter(16),
	combout => \Equal6~3_combout\);

-- Location: FF_X63_Y2_N29
\hsync_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~37_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(9));

-- Location: FF_X63_Y2_N38
\hsync_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~29_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(12));

-- Location: FF_X63_Y2_N20
\hsync_counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~49_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[6]~DUPLICATE_q\);

-- Location: FF_X63_Y2_N23
\hsync_counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~45_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[7]~DUPLICATE_q\);

-- Location: FF_X63_Y2_N35
\hsync_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~33_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(11));

-- Location: LABCELL_X62_Y2_N51
\Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = ( !hsync_counter(11) & ( !hsync_counter(8) & ( (!hsync_counter(9) & (!hsync_counter(12) & (!\hsync_counter[6]~DUPLICATE_q\ & !\hsync_counter[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(9),
	datab => ALT_INV_hsync_counter(12),
	datac => \ALT_INV_hsync_counter[6]~DUPLICATE_q\,
	datad => \ALT_INV_hsync_counter[7]~DUPLICATE_q\,
	datae => ALT_INV_hsync_counter(11),
	dataf => ALT_INV_hsync_counter(8),
	combout => \Equal6~1_combout\);

-- Location: FF_X63_Y2_N11
\hsync_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~109_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[3]~DUPLICATE_q\);

-- Location: FF_X63_Y2_N14
\hsync_counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~105_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N54
\Equal6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = ( !\hsync_counter[4]~DUPLICATE_q\ & ( !\hsync_counter[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[3]~DUPLICATE_q\,
	dataf => \ALT_INV_hsync_counter[4]~DUPLICATE_q\,
	combout => \Equal6~4_combout\);

-- Location: FF_X63_Y1_N29
\hsync_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~5_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(29));

-- Location: FF_X63_Y1_N17
\hsync_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~17_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(25));

-- Location: FF_X63_Y1_N23
\hsync_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~9_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(27));

-- Location: LABCELL_X63_Y1_N45
\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( !hsync_counter(27) & ( !hsync_counter(26) & ( (!hsync_counter(29) & (!hsync_counter(25) & (!hsync_counter(28) & !hsync_counter(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(29),
	datab => ALT_INV_hsync_counter(25),
	datac => ALT_INV_hsync_counter(28),
	datad => ALT_INV_hsync_counter(30),
	datae => ALT_INV_hsync_counter(27),
	dataf => ALT_INV_hsync_counter(26),
	combout => \Equal6~0_combout\);

-- Location: LABCELL_X64_Y1_N42
\Equal6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~6_combout\ = ( \Equal6~4_combout\ & ( \Equal6~0_combout\ & ( (\Equal6~2_combout\ & (\Equal6~5_combout\ & (\Equal6~3_combout\ & \Equal6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~2_combout\,
	datab => \ALT_INV_Equal6~5_combout\,
	datac => \ALT_INV_Equal6~3_combout\,
	datad => \ALT_INV_Equal6~1_combout\,
	datae => \ALT_INV_Equal6~4_combout\,
	dataf => \ALT_INV_Equal6~0_combout\,
	combout => \Equal6~6_combout\);

-- Location: FF_X63_Y2_N1
\hsync_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~125_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(0));

-- Location: LABCELL_X63_Y2_N3
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( hsync_counter(1) ) + ( GND ) + ( \Add2~126\ ))
-- \Add2~122\ = CARRY(( hsync_counter(1) ) + ( GND ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(1),
	cin => \Add2~126\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: FF_X63_Y2_N4
\hsync_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~121_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(1));

-- Location: LABCELL_X63_Y2_N6
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( hsync_counter(2) ) + ( GND ) + ( \Add2~122\ ))
-- \Add2~118\ = CARRY(( hsync_counter(2) ) + ( GND ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hsync_counter(2),
	cin => \Add2~122\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: FF_X63_Y2_N7
\hsync_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~117_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(2));

-- Location: LABCELL_X63_Y2_N9
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( hsync_counter(3) ) + ( GND ) + ( \Add2~118\ ))
-- \Add2~110\ = CARRY(( hsync_counter(3) ) + ( GND ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(3),
	cin => \Add2~118\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: FF_X63_Y2_N10
\hsync_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~109_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(3));

-- Location: LABCELL_X63_Y2_N12
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( hsync_counter(4) ) + ( GND ) + ( \Add2~110\ ))
-- \Add2~106\ = CARRY(( hsync_counter(4) ) + ( GND ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hsync_counter(4),
	cin => \Add2~110\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: FF_X63_Y2_N13
\hsync_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~105_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(4));

-- Location: LABCELL_X63_Y2_N15
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( hsync_counter(5) ) + ( GND ) + ( \Add2~106\ ))
-- \Add2~102\ = CARRY(( hsync_counter(5) ) + ( GND ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(5),
	cin => \Add2~106\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: FF_X63_Y2_N16
\hsync_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~101_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(5));

-- Location: LABCELL_X63_Y2_N18
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( hsync_counter(6) ) + ( GND ) + ( \Add2~102\ ))
-- \Add2~50\ = CARRY(( hsync_counter(6) ) + ( GND ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(6),
	cin => \Add2~102\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X63_Y2_N19
\hsync_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~49_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(6));

-- Location: LABCELL_X63_Y2_N21
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( hsync_counter(7) ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~46\ = CARRY(( hsync_counter(7) ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(7),
	cin => \Add2~50\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X63_Y2_N22
\hsync_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~45_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(7));

-- Location: LABCELL_X63_Y2_N24
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( hsync_counter(8) ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~42\ = CARRY(( hsync_counter(8) ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(8),
	cin => \Add2~46\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X63_Y2_N26
\hsync_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~41_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(8));

-- Location: LABCELL_X63_Y2_N27
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( \hsync_counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~38\ = CARRY(( \hsync_counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hsync_counter[9]~DUPLICATE_q\,
	cin => \Add2~42\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X63_Y2_N28
\hsync_counter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~37_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[9]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y2_N30
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( hsync_counter(10) ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~114\ = CARRY(( hsync_counter(10) ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(10),
	cin => \Add2~38\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: FF_X63_Y2_N31
\hsync_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~113_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(10));

-- Location: LABCELL_X63_Y2_N33
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \hsync_counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~114\ ))
-- \Add2~34\ = CARRY(( \hsync_counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hsync_counter[11]~DUPLICATE_q\,
	cin => \Add2~114\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X63_Y2_N34
\hsync_counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~33_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[11]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y2_N36
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( \hsync_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~30\ = CARRY(( \hsync_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hsync_counter[12]~DUPLICATE_q\,
	cin => \Add2~34\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X63_Y2_N37
\hsync_counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~29_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y2_N39
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( hsync_counter(13) ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~98\ = CARRY(( hsync_counter(13) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(13),
	cin => \Add2~30\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: FF_X63_Y2_N40
\hsync_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~97_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(13));

-- Location: LABCELL_X63_Y2_N42
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( hsync_counter(14) ) + ( GND ) + ( \Add2~98\ ))
-- \Add2~94\ = CARRY(( hsync_counter(14) ) + ( GND ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(14),
	cin => \Add2~98\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: FF_X63_Y2_N43
\hsync_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~93_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(14));

-- Location: LABCELL_X63_Y2_N45
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( hsync_counter(15) ) + ( GND ) + ( \Add2~94\ ))
-- \Add2~90\ = CARRY(( hsync_counter(15) ) + ( GND ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(15),
	cin => \Add2~94\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: FF_X63_Y2_N46
\hsync_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~89_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(15));

-- Location: LABCELL_X63_Y2_N48
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( hsync_counter(16) ) + ( GND ) + ( \Add2~90\ ))
-- \Add2~86\ = CARRY(( hsync_counter(16) ) + ( GND ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(16),
	cin => \Add2~90\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: FF_X63_Y1_N58
\hsync_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \Add2~85_sumout\,
	sclr => \Equal6~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(16));

-- Location: LABCELL_X63_Y2_N51
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( hsync_counter(17) ) + ( GND ) + ( \Add2~86\ ))
-- \Add2~82\ = CARRY(( hsync_counter(17) ) + ( GND ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(17),
	cin => \Add2~86\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X63_Y2_N52
\hsync_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~81_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(17));

-- Location: LABCELL_X63_Y2_N54
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( \hsync_counter[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~82\ ))
-- \Add2~78\ = CARRY(( \hsync_counter[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[18]~DUPLICATE_q\,
	cin => \Add2~82\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X63_Y2_N55
\hsync_counter[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~77_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[18]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y2_N57
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( hsync_counter(19) ) + ( GND ) + ( \Add2~78\ ))
-- \Add2~74\ = CARRY(( hsync_counter(19) ) + ( GND ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(19),
	cin => \Add2~78\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X63_Y2_N59
\hsync_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~73_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(19));

-- Location: LABCELL_X63_Y1_N0
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( hsync_counter(20) ) + ( GND ) + ( \Add2~74\ ))
-- \Add2~70\ = CARRY(( hsync_counter(20) ) + ( GND ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hsync_counter(20),
	cin => \Add2~74\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X63_Y1_N1
\hsync_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~69_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(20));

-- Location: LABCELL_X63_Y1_N3
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( hsync_counter(21) ) + ( GND ) + ( \Add2~70\ ))
-- \Add2~66\ = CARRY(( hsync_counter(21) ) + ( GND ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(21),
	cin => \Add2~70\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X63_Y1_N5
\hsync_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~65_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(21));

-- Location: FF_X63_Y1_N7
\hsync_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~61_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(22));

-- Location: FF_X63_Y1_N11
\hsync_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~57_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(23));

-- Location: FF_X63_Y2_N58
\hsync_counter[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~73_sumout\,
	sclr => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[19]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y1_N51
\Equal6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = ( !hsync_counter(21) & ( !hsync_counter(20) & ( (!hsync_counter(22) & (!hsync_counter(23) & (!hsync_counter(24) & !\hsync_counter[19]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(22),
	datab => ALT_INV_hsync_counter(23),
	datac => ALT_INV_hsync_counter(24),
	datad => \ALT_INV_hsync_counter[19]~DUPLICATE_q\,
	datae => ALT_INV_hsync_counter(21),
	dataf => ALT_INV_hsync_counter(20),
	combout => \Equal6~2_combout\);

-- Location: LABCELL_X62_Y1_N0
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( \hsync_counter[4]~DUPLICATE_q\ & ( (!\hsync_counter[10]~DUPLICATE_q\ & !hsync_counter(5)) ) ) # ( !\hsync_counter[4]~DUPLICATE_q\ & ( (!\hsync_counter[10]~DUPLICATE_q\ & ((!\hsync_counter[3]~DUPLICATE_q\) # (!hsync_counter(5)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000101000001010000010101000101010001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[10]~DUPLICATE_q\,
	datab => \ALT_INV_hsync_counter[3]~DUPLICATE_q\,
	datac => ALT_INV_hsync_counter(5),
	datae => \ALT_INV_hsync_counter[4]~DUPLICATE_q\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X63_Y1_N54
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( !hsync_counter(31) & ( \Equal6~0_combout\ & ( (!\Equal6~2_combout\) # ((!\Equal6~3_combout\) # ((!\LessThan2~0_combout\) # (!\Equal6~1_combout\))) ) ) ) # ( !hsync_counter(31) & ( !\Equal6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~2_combout\,
	datab => \ALT_INV_Equal6~3_combout\,
	datac => \ALT_INV_LessThan2~0_combout\,
	datad => \ALT_INV_Equal6~1_combout\,
	datae => ALT_INV_hsync_counter(31),
	dataf => \ALT_INV_Equal6~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: FF_X63_Y1_N56
\display_hsd~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_hsd~reg0_q\);

-- Location: LABCELL_X64_Y2_N0
\Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~125_sumout\ = SUM(( vsync_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add3~126\ = CARRY(( vsync_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(0),
	cin => GND,
	sumout => \Add3~125_sumout\,
	cout => \Add3~126\);

-- Location: FF_X64_Y2_N1
\vsync_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~125_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(0));

-- Location: LABCELL_X64_Y2_N3
\Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~121_sumout\ = SUM(( vsync_counter(1) ) + ( GND ) + ( \Add3~126\ ))
-- \Add3~122\ = CARRY(( vsync_counter(1) ) + ( GND ) + ( \Add3~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(1),
	cin => \Add3~126\,
	sumout => \Add3~121_sumout\,
	cout => \Add3~122\);

-- Location: FF_X64_Y2_N4
\vsync_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~121_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(1));

-- Location: LABCELL_X64_Y2_N6
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \vsync_counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~122\ ))
-- \Add3~10\ = CARRY(( \vsync_counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_vsync_counter[2]~DUPLICATE_q\,
	cin => \Add3~122\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: FF_X64_Y2_N8
\vsync_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~9_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N9
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( \vsync_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~6\ = CARRY(( \vsync_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[3]~DUPLICATE_q\,
	cin => \Add3~10\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: FF_X64_Y2_N10
\vsync_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~5_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N12
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( vsync_counter(4) ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~2\ = CARRY(( vsync_counter(4) ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(4),
	cin => \Add3~6\,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: FF_X64_Y2_N14
\vsync_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~1_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(4));

-- Location: LABCELL_X64_Y2_N15
\Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( vsync_counter(5) ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~66\ = CARRY(( vsync_counter(5) ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(5),
	cin => \Add3~2\,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\);

-- Location: FF_X64_Y2_N16
\vsync_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~65_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(5));

-- Location: LABCELL_X64_Y2_N18
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( \vsync_counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~66\ ))
-- \Add3~62\ = CARRY(( \vsync_counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[6]~DUPLICATE_q\,
	cin => \Add3~66\,
	sumout => \Add3~61_sumout\,
	cout => \Add3~62\);

-- Location: FF_X64_Y2_N20
\vsync_counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~61_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[6]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N21
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( \vsync_counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~62\ ))
-- \Add3~58\ = CARRY(( \vsync_counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[7]~DUPLICATE_q\,
	cin => \Add3~62\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

-- Location: FF_X64_Y2_N22
\vsync_counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~57_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[7]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N24
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( \vsync_counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~58\ ))
-- \Add3~54\ = CARRY(( \vsync_counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_vsync_counter[8]~DUPLICATE_q\,
	cin => \Add3~58\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: FF_X64_Y2_N26
\vsync_counter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~53_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[8]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N27
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( vsync_counter(9) ) + ( GND ) + ( \Add3~54\ ))
-- \Add3~14\ = CARRY(( vsync_counter(9) ) + ( GND ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(9),
	cin => \Add3~54\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: FF_X64_Y2_N28
\vsync_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~13_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(9));

-- Location: FF_X64_Y2_N2
\vsync_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~125_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[0]~DUPLICATE_q\);

-- Location: FF_X64_Y2_N13
\vsync_counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~1_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[4]~DUPLICATE_q\);

-- Location: FF_X64_Y2_N7
\vsync_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~9_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(2));

-- Location: MLABCELL_X65_Y1_N27
\Equal7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = ( !\vsync_counter[31]~DUPLICATE_q\ & ( vsync_counter(2) & ( (!\vsync_counter[4]~DUPLICATE_q\ & \vsync_counter[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[4]~DUPLICATE_q\,
	datad => \ALT_INV_vsync_counter[3]~DUPLICATE_q\,
	datae => \ALT_INV_vsync_counter[31]~DUPLICATE_q\,
	dataf => ALT_INV_vsync_counter(2),
	combout => \Equal7~5_combout\);

-- Location: LABCELL_X64_Y2_N30
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( vsync_counter(10) ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~26\ = CARRY(( vsync_counter(10) ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(10),
	cin => \Add3~14\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: FF_X64_Y2_N31
\vsync_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~25_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(10));

-- Location: LABCELL_X64_Y2_N33
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( vsync_counter(11) ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~50\ = CARRY(( vsync_counter(11) ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(11),
	cin => \Add3~26\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: FF_X64_Y2_N35
\vsync_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~49_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(11));

-- Location: LABCELL_X64_Y2_N36
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( vsync_counter(12) ) + ( GND ) + ( \Add3~50\ ))
-- \Add3~42\ = CARRY(( vsync_counter(12) ) + ( GND ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(12),
	cin => \Add3~50\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: FF_X64_Y2_N37
\vsync_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~41_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(12));

-- Location: LABCELL_X64_Y2_N39
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( vsync_counter(13) ) + ( GND ) + ( \Add3~42\ ))
-- \Add3~38\ = CARRY(( vsync_counter(13) ) + ( GND ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(13),
	cin => \Add3~42\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: FF_X64_Y2_N40
\vsync_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~37_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(13));

-- Location: LABCELL_X64_Y2_N42
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( vsync_counter(14) ) + ( GND ) + ( \Add3~38\ ))
-- \Add3~34\ = CARRY(( vsync_counter(14) ) + ( GND ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(14),
	cin => \Add3~38\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: FF_X64_Y2_N43
\vsync_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~33_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(14));

-- Location: LABCELL_X64_Y2_N45
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( vsync_counter(15) ) + ( GND ) + ( \Add3~34\ ))
-- \Add3~30\ = CARRY(( vsync_counter(15) ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(15),
	cin => \Add3~34\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: FF_X64_Y2_N46
\vsync_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~29_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(15));

-- Location: LABCELL_X64_Y2_N48
\Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~73_sumout\ = SUM(( vsync_counter(16) ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~74\ = CARRY(( vsync_counter(16) ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(16),
	cin => \Add3~30\,
	sumout => \Add3~73_sumout\,
	cout => \Add3~74\);

-- Location: FF_X64_Y2_N49
\vsync_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~73_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(16));

-- Location: LABCELL_X64_Y2_N51
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( vsync_counter(17) ) + ( GND ) + ( \Add3~74\ ))
-- \Add3~46\ = CARRY(( vsync_counter(17) ) + ( GND ) + ( \Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(17),
	cin => \Add3~74\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: FF_X64_Y2_N52
\vsync_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~45_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(17));

-- Location: LABCELL_X64_Y2_N54
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( vsync_counter(18) ) + ( GND ) + ( \Add3~46\ ))
-- \Add3~22\ = CARRY(( vsync_counter(18) ) + ( GND ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(18),
	cin => \Add3~46\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: FF_X64_Y2_N55
\vsync_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~21_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(18));

-- Location: LABCELL_X64_Y2_N57
\Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~117_sumout\ = SUM(( vsync_counter(19) ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~118\ = CARRY(( vsync_counter(19) ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(19),
	cin => \Add3~22\,
	sumout => \Add3~117_sumout\,
	cout => \Add3~118\);

-- Location: FF_X64_Y2_N59
\vsync_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~117_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(19));

-- Location: LABCELL_X64_Y1_N0
\Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~113_sumout\ = SUM(( vsync_counter(20) ) + ( GND ) + ( \Add3~118\ ))
-- \Add3~114\ = CARRY(( vsync_counter(20) ) + ( GND ) + ( \Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(20),
	cin => \Add3~118\,
	sumout => \Add3~113_sumout\,
	cout => \Add3~114\);

-- Location: FF_X64_Y1_N1
\vsync_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~113_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(20));

-- Location: LABCELL_X64_Y1_N3
\Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~109_sumout\ = SUM(( \vsync_counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~114\ ))
-- \Add3~110\ = CARRY(( \vsync_counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[21]~DUPLICATE_q\,
	cin => \Add3~114\,
	sumout => \Add3~109_sumout\,
	cout => \Add3~110\);

-- Location: FF_X64_Y1_N5
\vsync_counter[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~109_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[21]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N6
\Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~105_sumout\ = SUM(( vsync_counter(22) ) + ( GND ) + ( \Add3~110\ ))
-- \Add3~106\ = CARRY(( vsync_counter(22) ) + ( GND ) + ( \Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(22),
	cin => \Add3~110\,
	sumout => \Add3~105_sumout\,
	cout => \Add3~106\);

-- Location: FF_X64_Y1_N7
\vsync_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~105_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(22));

-- Location: LABCELL_X64_Y1_N9
\Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~101_sumout\ = SUM(( vsync_counter(23) ) + ( GND ) + ( \Add3~106\ ))
-- \Add3~102\ = CARRY(( vsync_counter(23) ) + ( GND ) + ( \Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(23),
	cin => \Add3~106\,
	sumout => \Add3~101_sumout\,
	cout => \Add3~102\);

-- Location: FF_X64_Y1_N10
\vsync_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~101_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(23));

-- Location: FF_X64_Y1_N4
\vsync_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~109_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(21));

-- Location: MLABCELL_X65_Y1_N36
\Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = ( !vsync_counter(19) & ( !vsync_counter(21) & ( (!vsync_counter(23) & (!vsync_counter(22) & !vsync_counter(20))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vsync_counter(23),
	datac => ALT_INV_vsync_counter(22),
	datad => ALT_INV_vsync_counter(20),
	datae => ALT_INV_vsync_counter(19),
	dataf => ALT_INV_vsync_counter(21),
	combout => \Equal7~3_combout\);

-- Location: MLABCELL_X65_Y1_N30
\Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = ( !vsync_counter(14) & ( !vsync_counter(11) & ( (!vsync_counter(12) & (!vsync_counter(13) & (!vsync_counter(17) & !vsync_counter(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(12),
	datab => ALT_INV_vsync_counter(13),
	datac => ALT_INV_vsync_counter(17),
	datad => ALT_INV_vsync_counter(15),
	datae => ALT_INV_vsync_counter(14),
	dataf => ALT_INV_vsync_counter(11),
	combout => \Equal7~0_combout\);

-- Location: LABCELL_X64_Y1_N12
\Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~97_sumout\ = SUM(( vsync_counter(24) ) + ( GND ) + ( \Add3~102\ ))
-- \Add3~98\ = CARRY(( vsync_counter(24) ) + ( GND ) + ( \Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vsync_counter(24),
	cin => \Add3~102\,
	sumout => \Add3~97_sumout\,
	cout => \Add3~98\);

-- Location: FF_X64_Y1_N13
\vsync_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~97_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(24));

-- Location: LABCELL_X64_Y1_N15
\Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~93_sumout\ = SUM(( vsync_counter(25) ) + ( GND ) + ( \Add3~98\ ))
-- \Add3~94\ = CARRY(( vsync_counter(25) ) + ( GND ) + ( \Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(25),
	cin => \Add3~98\,
	sumout => \Add3~93_sumout\,
	cout => \Add3~94\);

-- Location: FF_X64_Y1_N16
\vsync_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~93_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(25));

-- Location: LABCELL_X64_Y1_N18
\Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( \vsync_counter[26]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~94\ ))
-- \Add3~70\ = CARRY(( \vsync_counter[26]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_vsync_counter[26]~DUPLICATE_q\,
	cin => \Add3~94\,
	sumout => \Add3~69_sumout\,
	cout => \Add3~70\);

-- Location: FF_X64_Y1_N20
\vsync_counter[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~69_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[26]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N21
\Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~89_sumout\ = SUM(( vsync_counter(27) ) + ( GND ) + ( \Add3~70\ ))
-- \Add3~90\ = CARRY(( vsync_counter(27) ) + ( GND ) + ( \Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(27),
	cin => \Add3~70\,
	sumout => \Add3~89_sumout\,
	cout => \Add3~90\);

-- Location: FF_X64_Y1_N22
\vsync_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~89_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(27));

-- Location: LABCELL_X64_Y1_N24
\Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~85_sumout\ = SUM(( vsync_counter(28) ) + ( GND ) + ( \Add3~90\ ))
-- \Add3~86\ = CARRY(( vsync_counter(28) ) + ( GND ) + ( \Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(28),
	cin => \Add3~90\,
	sumout => \Add3~85_sumout\,
	cout => \Add3~86\);

-- Location: FF_X64_Y1_N25
\vsync_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~85_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(28));

-- Location: LABCELL_X64_Y1_N27
\Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~81_sumout\ = SUM(( vsync_counter(29) ) + ( GND ) + ( \Add3~86\ ))
-- \Add3~82\ = CARRY(( vsync_counter(29) ) + ( GND ) + ( \Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(29),
	cin => \Add3~86\,
	sumout => \Add3~81_sumout\,
	cout => \Add3~82\);

-- Location: FF_X64_Y1_N28
\vsync_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~81_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(29));

-- Location: LABCELL_X64_Y1_N30
\Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~77_sumout\ = SUM(( vsync_counter(30) ) + ( GND ) + ( \Add3~82\ ))
-- \Add3~78\ = CARRY(( vsync_counter(30) ) + ( GND ) + ( \Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(30),
	cin => \Add3~82\,
	sumout => \Add3~77_sumout\,
	cout => \Add3~78\);

-- Location: FF_X64_Y1_N31
\vsync_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~77_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(30));

-- Location: MLABCELL_X65_Y1_N21
\Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = ( !vsync_counter(24) & ( !vsync_counter(30) & ( (!vsync_counter(27) & (!vsync_counter(29) & (!vsync_counter(28) & !vsync_counter(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(27),
	datab => ALT_INV_vsync_counter(29),
	datac => ALT_INV_vsync_counter(28),
	datad => ALT_INV_vsync_counter(25),
	datae => ALT_INV_vsync_counter(24),
	dataf => ALT_INV_vsync_counter(30),
	combout => \Equal7~2_combout\);

-- Location: FF_X64_Y2_N17
\vsync_counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~65_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[5]~DUPLICATE_q\);

-- Location: FF_X64_Y2_N25
\vsync_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~53_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(8));

-- Location: FF_X64_Y1_N19
\vsync_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~69_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(26));

-- Location: FF_X64_Y2_N19
\vsync_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~61_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(6));

-- Location: FF_X64_Y2_N23
\vsync_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~57_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(7));

-- Location: MLABCELL_X65_Y1_N48
\Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = ( !vsync_counter(16) & ( !vsync_counter(7) & ( (!\vsync_counter[5]~DUPLICATE_q\ & (!vsync_counter(8) & (!vsync_counter(26) & !vsync_counter(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[5]~DUPLICATE_q\,
	datab => ALT_INV_vsync_counter(8),
	datac => ALT_INV_vsync_counter(26),
	datad => ALT_INV_vsync_counter(6),
	datae => ALT_INV_vsync_counter(16),
	dataf => ALT_INV_vsync_counter(7),
	combout => \Equal7~1_combout\);

-- Location: MLABCELL_X65_Y1_N42
\Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = ( \Equal7~2_combout\ & ( \Equal7~1_combout\ & ( (!vsync_counter(10) & (!vsync_counter(18) & (\Equal7~3_combout\ & \Equal7~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(10),
	datab => ALT_INV_vsync_counter(18),
	datac => \ALT_INV_Equal7~3_combout\,
	datad => \ALT_INV_Equal7~0_combout\,
	datae => \ALT_INV_Equal7~2_combout\,
	dataf => \ALT_INV_Equal7~1_combout\,
	combout => \Equal7~4_combout\);

-- Location: MLABCELL_X65_Y1_N54
\Equal7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~6_combout\ = ( \Equal7~5_combout\ & ( \Equal7~4_combout\ & ( (vsync_counter(9) & (!vsync_counter(1) & \vsync_counter[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(9),
	datab => ALT_INV_vsync_counter(1),
	datad => \ALT_INV_vsync_counter[0]~DUPLICATE_q\,
	datae => \ALT_INV_Equal7~5_combout\,
	dataf => \ALT_INV_Equal7~4_combout\,
	combout => \Equal7~6_combout\);

-- Location: FF_X64_Y1_N35
\vsync_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~17_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(31));

-- Location: LABCELL_X64_Y1_N33
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( vsync_counter(31) ) + ( GND ) + ( \Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(31),
	cin => \Add3~78\,
	sumout => \Add3~17_sumout\);

-- Location: FF_X64_Y1_N34
\vsync_counter[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~17_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[31]~DUPLICATE_q\);

-- Location: FF_X64_Y2_N11
\vsync_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add3~5_sumout\,
	sclr => \Equal7~6_combout\,
	ena => \Equal6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(3));

-- Location: MLABCELL_X65_Y1_N12
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( vsync_counter(3) & ( \vsync_counter[4]~DUPLICATE_q\ & ( !\vsync_counter[31]~DUPLICATE_q\ ) ) ) # ( !vsync_counter(3) & ( \vsync_counter[4]~DUPLICATE_q\ & ( (!\vsync_counter[31]~DUPLICATE_q\ & ((!\Equal7~4_combout\) # 
-- ((vsync_counter(9)) # (\vsync_counter[2]~DUPLICATE_q\)))) ) ) ) # ( vsync_counter(3) & ( !\vsync_counter[4]~DUPLICATE_q\ & ( (!\vsync_counter[31]~DUPLICATE_q\ & ((!\Equal7~4_combout\) # (vsync_counter(9)))) ) ) ) # ( !vsync_counter(3) & ( 
-- !\vsync_counter[4]~DUPLICATE_q\ & ( (!\vsync_counter[31]~DUPLICATE_q\ & ((!\Equal7~4_combout\) # (vsync_counter(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010101010100010001010101010001010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[31]~DUPLICATE_q\,
	datab => \ALT_INV_Equal7~4_combout\,
	datac => \ALT_INV_vsync_counter[2]~DUPLICATE_q\,
	datad => ALT_INV_vsync_counter(9),
	datae => ALT_INV_vsync_counter(3),
	dataf => \ALT_INV_vsync_counter[4]~DUPLICATE_q\,
	combout => \LessThan3~0_combout\);

-- Location: FF_X65_Y1_N13
\display_vsd~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_vsd~reg0_q\);

-- Location: IOIBUF_X36_Y81_N18
\clock_27~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_27,
	o => \clock_27~input_o\);

-- Location: IOIBUF_X80_Y0_N35
\CMOS_IN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CMOS_IN(0),
	o => \CMOS_IN[0]~input_o\);

-- Location: IOIBUF_X84_Y0_N52
\CMOS_IN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CMOS_IN(1),
	o => \CMOS_IN[1]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\CMOS_IN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CMOS_IN(2),
	o => \CMOS_IN[2]~input_o\);

-- Location: IOIBUF_X84_Y0_N35
\CMOS_IN[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CMOS_IN(3),
	o => \CMOS_IN[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X88_Y0_N36
\CMOS_IN[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CMOS_IN(9),
	o => \CMOS_IN[9]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\CMOS_IN[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CMOS_IN(10),
	o => \CMOS_IN[10]~input_o\);

-- Location: IOIBUF_X88_Y0_N2
\CMOS_IN[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CMOS_IN(11),
	o => \CMOS_IN[11]~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\CMOS_IN[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CMOS_IN(4),
	o => \CMOS_IN[4]~input_o\);

-- Location: IOIBUF_X86_Y0_N52
\CMOS_IN[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CMOS_IN(5),
	o => \CMOS_IN[5]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\CMOS_IN[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CMOS_IN(6),
	o => \CMOS_IN[6]~input_o\);

-- Location: IOIBUF_X88_Y0_N53
\CMOS_IN[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CMOS_IN(7),
	o => \CMOS_IN[7]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\CMOS_IN[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CMOS_IN(8),
	o => \CMOS_IN[8]~input_o\);

-- Location: LABCELL_X27_Y44_N0
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


