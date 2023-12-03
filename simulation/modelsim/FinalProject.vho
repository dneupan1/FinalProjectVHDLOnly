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

-- DATE "12/03/2023 11:28:09"

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
-- CMOS_IN[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[5]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[6]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[7]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[8]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[9]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[10]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CMOS_IN[11]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmos_xclkin	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmos_trigger	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmos_pixclk	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmos_fval	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmos_lval	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- clock_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \CMOS_IN[4]~input_o\ : std_logic;
SIGNAL \CMOS_IN[5]~input_o\ : std_logic;
SIGNAL \CMOS_IN[6]~input_o\ : std_logic;
SIGNAL \CMOS_IN[7]~input_o\ : std_logic;
SIGNAL \CMOS_IN[8]~input_o\ : std_logic;
SIGNAL \CMOS_IN[9]~input_o\ : std_logic;
SIGNAL \CMOS_IN[10]~input_o\ : std_logic;
SIGNAL \CMOS_IN[11]~input_o\ : std_logic;
SIGNAL \cmos_pixclk~input_o\ : std_logic;
SIGNAL \cmos_fval~input_o\ : std_logic;
SIGNAL \cmos_lval~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \divider~0_combout\ : std_logic;
SIGNAL \divider~q\ : std_logic;
SIGNAL \clock_25MHz~0_combout\ : std_logic;
SIGNAL \clock_25MHz~q\ : std_logic;
SIGNAL \hsync_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \hsync_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \hsync_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \hsync_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \hsync_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \hsync_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \hsync_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \hsync_counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \hsync_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \hsync_counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \hsync_counter[22]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \hsync_counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \hsync_counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \hsync_counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \hsync_counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \hsync_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \hsync_counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \hsync_counter[29]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \hsync_counter[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \hsync_counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \hsync_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \hsync_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \hsync_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \hsync_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \display_hsd~reg0_q\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \vsync_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \vsync_counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \vsync_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \vsync_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \vsync_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \vsync_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \vsync_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \vsync_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \vsync_counter[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \vsync_counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \vsync_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \vsync_counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \vsync_counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \vsync_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \vsync_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \vsync_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \vsync_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \vsync_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \display_vsd~reg0_q\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \current_color.RED_d~0_combout\ : std_logic;
SIGNAL \color_counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \color_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \color_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \color_counter[13]~feeder_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \color_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \color_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \color_counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \color_counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \color_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \current_color.RED_d~q\ : std_logic;
SIGNAL \current_color.GREEN_d~0_combout\ : std_logic;
SIGNAL \current_color.GREEN_d~DUPLICATE_q\ : std_logic;
SIGNAL \current_color.BLUE_d~q\ : std_logic;
SIGNAL \DISPLAY_BLUE~0_combout\ : std_logic;
SIGNAL \DISPLAY_BLUE[0]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_BLUE[1]~reg0feeder_combout\ : std_logic;
SIGNAL \DISPLAY_BLUE[1]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_BLUE[2]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_BLUE[3]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_BLUE[4]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_BLUE[5]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_BLUE[6]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_BLUE[7]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED~0_combout\ : std_logic;
SIGNAL \DISPLAY_RED[0]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[1]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[2]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[3]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[4]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[5]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[6]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[7]~reg0_q\ : std_logic;
SIGNAL \current_color.GREEN_d~q\ : std_logic;
SIGNAL \DISPLAY_GREEN~0_combout\ : std_logic;
SIGNAL \DISPLAY_GREEN[0]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_GREEN[1]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_GREEN[2]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_GREEN[3]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_GREEN[4]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_GREEN[5]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_GREEN[6]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_GREEN[7]~reg0_q\ : std_logic;
SIGNAL hsync_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL vsync_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL color_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_color_counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_color_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_color_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_color_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_color_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_color_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_color_counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_color_counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[30]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[22]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[29]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[30]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_current_color.GREEN_d~q\ : std_logic;
SIGNAL \ALT_INV_current_color.RED_d~q\ : std_logic;
SIGNAL \ALT_INV_DISPLAY_BLUE~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_2~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_color.BLUE_d~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_divider~q\ : std_logic;
SIGNAL \ALT_INV_clock_25MHz~q\ : std_logic;
SIGNAL ALT_INV_color_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL ALT_INV_hsync_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_vsync_counter : std_logic_vector(31 DOWNTO 0);

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
\ALT_INV_color_counter[28]~DUPLICATE_q\ <= NOT \color_counter[28]~DUPLICATE_q\;
\ALT_INV_color_counter[19]~DUPLICATE_q\ <= NOT \color_counter[19]~DUPLICATE_q\;
\ALT_INV_color_counter[12]~DUPLICATE_q\ <= NOT \color_counter[12]~DUPLICATE_q\;
\ALT_INV_color_counter[14]~DUPLICATE_q\ <= NOT \color_counter[14]~DUPLICATE_q\;
\ALT_INV_color_counter[11]~DUPLICATE_q\ <= NOT \color_counter[11]~DUPLICATE_q\;
\ALT_INV_color_counter[17]~DUPLICATE_q\ <= NOT \color_counter[17]~DUPLICATE_q\;
\ALT_INV_color_counter[24]~DUPLICATE_q\ <= NOT \color_counter[24]~DUPLICATE_q\;
\ALT_INV_color_counter[31]~DUPLICATE_q\ <= NOT \color_counter[31]~DUPLICATE_q\;
\ALT_INV_hsync_counter[0]~DUPLICATE_q\ <= NOT \hsync_counter[0]~DUPLICATE_q\;
\ALT_INV_vsync_counter[0]~DUPLICATE_q\ <= NOT \vsync_counter[0]~DUPLICATE_q\;
\ALT_INV_vsync_counter[1]~DUPLICATE_q\ <= NOT \vsync_counter[1]~DUPLICATE_q\;
\ALT_INV_hsync_counter[2]~DUPLICATE_q\ <= NOT \hsync_counter[2]~DUPLICATE_q\;
\ALT_INV_hsync_counter[1]~DUPLICATE_q\ <= NOT \hsync_counter[1]~DUPLICATE_q\;
\ALT_INV_vsync_counter[2]~DUPLICATE_q\ <= NOT \vsync_counter[2]~DUPLICATE_q\;
\ALT_INV_vsync_counter[4]~DUPLICATE_q\ <= NOT \vsync_counter[4]~DUPLICATE_q\;
\ALT_INV_vsync_counter[8]~DUPLICATE_q\ <= NOT \vsync_counter[8]~DUPLICATE_q\;
\ALT_INV_vsync_counter[5]~DUPLICATE_q\ <= NOT \vsync_counter[5]~DUPLICATE_q\;
\ALT_INV_vsync_counter[18]~DUPLICATE_q\ <= NOT \vsync_counter[18]~DUPLICATE_q\;
\ALT_INV_vsync_counter[23]~DUPLICATE_q\ <= NOT \vsync_counter[23]~DUPLICATE_q\;
\ALT_INV_vsync_counter[27]~DUPLICATE_q\ <= NOT \vsync_counter[27]~DUPLICATE_q\;
\ALT_INV_vsync_counter[14]~DUPLICATE_q\ <= NOT \vsync_counter[14]~DUPLICATE_q\;
\ALT_INV_vsync_counter[10]~DUPLICATE_q\ <= NOT \vsync_counter[10]~DUPLICATE_q\;
\ALT_INV_vsync_counter[11]~DUPLICATE_q\ <= NOT \vsync_counter[11]~DUPLICATE_q\;
\ALT_INV_vsync_counter[12]~DUPLICATE_q\ <= NOT \vsync_counter[12]~DUPLICATE_q\;
\ALT_INV_vsync_counter[13]~DUPLICATE_q\ <= NOT \vsync_counter[13]~DUPLICATE_q\;
\ALT_INV_vsync_counter[15]~DUPLICATE_q\ <= NOT \vsync_counter[15]~DUPLICATE_q\;
\ALT_INV_vsync_counter[28]~DUPLICATE_q\ <= NOT \vsync_counter[28]~DUPLICATE_q\;
\ALT_INV_vsync_counter[30]~DUPLICATE_q\ <= NOT \vsync_counter[30]~DUPLICATE_q\;
\ALT_INV_vsync_counter[16]~DUPLICATE_q\ <= NOT \vsync_counter[16]~DUPLICATE_q\;
\ALT_INV_hsync_counter[4]~DUPLICATE_q\ <= NOT \hsync_counter[4]~DUPLICATE_q\;
\ALT_INV_hsync_counter[3]~DUPLICATE_q\ <= NOT \hsync_counter[3]~DUPLICATE_q\;
\ALT_INV_hsync_counter[5]~DUPLICATE_q\ <= NOT \hsync_counter[5]~DUPLICATE_q\;
\ALT_INV_hsync_counter[6]~DUPLICATE_q\ <= NOT \hsync_counter[6]~DUPLICATE_q\;
\ALT_INV_hsync_counter[20]~DUPLICATE_q\ <= NOT \hsync_counter[20]~DUPLICATE_q\;
\ALT_INV_hsync_counter[22]~DUPLICATE_q\ <= NOT \hsync_counter[22]~DUPLICATE_q\;
\ALT_INV_hsync_counter[23]~DUPLICATE_q\ <= NOT \hsync_counter[23]~DUPLICATE_q\;
\ALT_INV_hsync_counter[24]~DUPLICATE_q\ <= NOT \hsync_counter[24]~DUPLICATE_q\;
\ALT_INV_hsync_counter[25]~DUPLICATE_q\ <= NOT \hsync_counter[25]~DUPLICATE_q\;
\ALT_INV_hsync_counter[26]~DUPLICATE_q\ <= NOT \hsync_counter[26]~DUPLICATE_q\;
\ALT_INV_hsync_counter[27]~DUPLICATE_q\ <= NOT \hsync_counter[27]~DUPLICATE_q\;
\ALT_INV_hsync_counter[28]~DUPLICATE_q\ <= NOT \hsync_counter[28]~DUPLICATE_q\;
\ALT_INV_hsync_counter[29]~DUPLICATE_q\ <= NOT \hsync_counter[29]~DUPLICATE_q\;
\ALT_INV_hsync_counter[30]~DUPLICATE_q\ <= NOT \hsync_counter[30]~DUPLICATE_q\;
\ALT_INV_hsync_counter[13]~DUPLICATE_q\ <= NOT \hsync_counter[13]~DUPLICATE_q\;
\ALT_INV_hsync_counter[14]~DUPLICATE_q\ <= NOT \hsync_counter[14]~DUPLICATE_q\;
\ALT_INV_hsync_counter[15]~DUPLICATE_q\ <= NOT \hsync_counter[15]~DUPLICATE_q\;
\ALT_INV_hsync_counter[16]~DUPLICATE_q\ <= NOT \hsync_counter[16]~DUPLICATE_q\;
\ALT_INV_hsync_counter[17]~DUPLICATE_q\ <= NOT \hsync_counter[17]~DUPLICATE_q\;
\ALT_INV_hsync_counter[12]~DUPLICATE_q\ <= NOT \hsync_counter[12]~DUPLICATE_q\;
\ALT_INV_hsync_counter[31]~DUPLICATE_q\ <= NOT \hsync_counter[31]~DUPLICATE_q\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Equal1~6_combout\ <= NOT \Equal1~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_current_color.GREEN_d~q\ <= NOT \current_color.GREEN_d~q\;
\ALT_INV_current_color.RED_d~q\ <= NOT \current_color.RED_d~q\;
\ALT_INV_DISPLAY_BLUE~0_combout\ <= NOT \DISPLAY_BLUE~0_combout\;
\ALT_INV_LessThan4~1_combout\ <= NOT \LessThan4~1_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\ALT_INV_LessThan6~1_combout\ <= NOT \LessThan6~1_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\ALT_INV_process_2~1_combout\ <= NOT \process_2~1_combout\;
\ALT_INV_process_2~0_combout\ <= NOT \process_2~0_combout\;
\ALT_INV_LessThan5~1_combout\ <= NOT \LessThan5~1_combout\;
\ALT_INV_LessThan3~1_combout\ <= NOT \LessThan3~1_combout\;
\ALT_INV_LessThan5~0_combout\ <= NOT \LessThan5~0_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_current_color.BLUE_d~q\ <= NOT \current_color.BLUE_d~q\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_Equal1~5_combout\ <= NOT \Equal1~5_combout\;
\ALT_INV_Equal1~4_combout\ <= NOT \Equal1~4_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_divider~q\ <= NOT \divider~q\;
\ALT_INV_clock_25MHz~q\ <= NOT \clock_25MHz~q\;
ALT_INV_color_counter(0) <= NOT color_counter(0);
ALT_INV_color_counter(1) <= NOT color_counter(1);
ALT_INV_color_counter(2) <= NOT color_counter(2);
ALT_INV_color_counter(3) <= NOT color_counter(3);
ALT_INV_color_counter(4) <= NOT color_counter(4);
ALT_INV_color_counter(5) <= NOT color_counter(5);
ALT_INV_color_counter(6) <= NOT color_counter(6);
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
ALT_INV_color_counter(26) <= NOT color_counter(26);
ALT_INV_color_counter(27) <= NOT color_counter(27);
ALT_INV_color_counter(28) <= NOT color_counter(28);
ALT_INV_color_counter(29) <= NOT color_counter(29);
ALT_INV_color_counter(30) <= NOT color_counter(30);
ALT_INV_color_counter(19) <= NOT color_counter(19);
ALT_INV_color_counter(20) <= NOT color_counter(20);
ALT_INV_color_counter(21) <= NOT color_counter(21);
ALT_INV_color_counter(22) <= NOT color_counter(22);
ALT_INV_color_counter(23) <= NOT color_counter(23);
ALT_INV_color_counter(12) <= NOT color_counter(12);
ALT_INV_color_counter(14) <= NOT color_counter(14);
ALT_INV_color_counter(15) <= NOT color_counter(15);
ALT_INV_color_counter(13) <= NOT color_counter(13);
ALT_INV_color_counter(8) <= NOT color_counter(8);
ALT_INV_color_counter(7) <= NOT color_counter(7);
ALT_INV_color_counter(9) <= NOT color_counter(9);
ALT_INV_color_counter(10) <= NOT color_counter(10);
ALT_INV_color_counter(11) <= NOT color_counter(11);
ALT_INV_color_counter(16) <= NOT color_counter(16);
ALT_INV_color_counter(17) <= NOT color_counter(17);
ALT_INV_color_counter(18) <= NOT color_counter(18);
ALT_INV_color_counter(24) <= NOT color_counter(24);
ALT_INV_color_counter(25) <= NOT color_counter(25);
ALT_INV_color_counter(31) <= NOT color_counter(31);
ALT_INV_hsync_counter(0) <= NOT hsync_counter(0);
ALT_INV_vsync_counter(0) <= NOT vsync_counter(0);
ALT_INV_vsync_counter(1) <= NOT vsync_counter(1);
ALT_INV_hsync_counter(2) <= NOT hsync_counter(2);
ALT_INV_hsync_counter(1) <= NOT hsync_counter(1);
ALT_INV_vsync_counter(9) <= NOT vsync_counter(9);
ALT_INV_vsync_counter(2) <= NOT vsync_counter(2);
ALT_INV_vsync_counter(3) <= NOT vsync_counter(3);
ALT_INV_vsync_counter(4) <= NOT vsync_counter(4);
ALT_INV_vsync_counter(6) <= NOT vsync_counter(6);
ALT_INV_vsync_counter(7) <= NOT vsync_counter(7);
ALT_INV_vsync_counter(8) <= NOT vsync_counter(8);
ALT_INV_vsync_counter(5) <= NOT vsync_counter(5);
ALT_INV_vsync_counter(17) <= NOT vsync_counter(17);
ALT_INV_vsync_counter(18) <= NOT vsync_counter(18);
ALT_INV_vsync_counter(19) <= NOT vsync_counter(19);
ALT_INV_vsync_counter(20) <= NOT vsync_counter(20);
ALT_INV_vsync_counter(21) <= NOT vsync_counter(21);
ALT_INV_vsync_counter(23) <= NOT vsync_counter(23);
ALT_INV_vsync_counter(24) <= NOT vsync_counter(24);
ALT_INV_vsync_counter(25) <= NOT vsync_counter(25);
ALT_INV_vsync_counter(26) <= NOT vsync_counter(26);
ALT_INV_vsync_counter(27) <= NOT vsync_counter(27);
ALT_INV_vsync_counter(14) <= NOT vsync_counter(14);
ALT_INV_vsync_counter(10) <= NOT vsync_counter(10);
ALT_INV_vsync_counter(11) <= NOT vsync_counter(11);
ALT_INV_vsync_counter(12) <= NOT vsync_counter(12);
ALT_INV_vsync_counter(13) <= NOT vsync_counter(13);
ALT_INV_vsync_counter(15) <= NOT vsync_counter(15);
ALT_INV_vsync_counter(28) <= NOT vsync_counter(28);
ALT_INV_vsync_counter(29) <= NOT vsync_counter(29);
ALT_INV_vsync_counter(30) <= NOT vsync_counter(30);
ALT_INV_vsync_counter(16) <= NOT vsync_counter(16);
ALT_INV_vsync_counter(22) <= NOT vsync_counter(22);
ALT_INV_vsync_counter(31) <= NOT vsync_counter(31);
ALT_INV_hsync_counter(10) <= NOT hsync_counter(10);
ALT_INV_hsync_counter(4) <= NOT hsync_counter(4);
ALT_INV_hsync_counter(3) <= NOT hsync_counter(3);
ALT_INV_hsync_counter(5) <= NOT hsync_counter(5);
ALT_INV_hsync_counter(7) <= NOT hsync_counter(7);
ALT_INV_hsync_counter(8) <= NOT hsync_counter(8);
ALT_INV_hsync_counter(9) <= NOT hsync_counter(9);
ALT_INV_hsync_counter(6) <= NOT hsync_counter(6);
ALT_INV_hsync_counter(20) <= NOT hsync_counter(20);
ALT_INV_hsync_counter(21) <= NOT hsync_counter(21);
ALT_INV_hsync_counter(22) <= NOT hsync_counter(22);
ALT_INV_hsync_counter(23) <= NOT hsync_counter(23);
ALT_INV_hsync_counter(24) <= NOT hsync_counter(24);
ALT_INV_hsync_counter(25) <= NOT hsync_counter(25);
ALT_INV_hsync_counter(26) <= NOT hsync_counter(26);
ALT_INV_hsync_counter(27) <= NOT hsync_counter(27);
ALT_INV_hsync_counter(28) <= NOT hsync_counter(28);
ALT_INV_hsync_counter(29) <= NOT hsync_counter(29);
ALT_INV_hsync_counter(30) <= NOT hsync_counter(30);
ALT_INV_hsync_counter(13) <= NOT hsync_counter(13);
ALT_INV_hsync_counter(14) <= NOT hsync_counter(14);
ALT_INV_hsync_counter(15) <= NOT hsync_counter(15);
ALT_INV_hsync_counter(16) <= NOT hsync_counter(16);
ALT_INV_hsync_counter(17) <= NOT hsync_counter(17);
ALT_INV_hsync_counter(18) <= NOT hsync_counter(18);
ALT_INV_hsync_counter(11) <= NOT hsync_counter(11);
ALT_INV_hsync_counter(12) <= NOT hsync_counter(12);
ALT_INV_hsync_counter(19) <= NOT hsync_counter(19);
ALT_INV_hsync_counter(31) <= NOT hsync_counter(31);

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
	i => GND,
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
	i => \DISPLAY_BLUE[0]~reg0_q\,
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
	i => \DISPLAY_BLUE[1]~reg0_q\,
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
	i => \DISPLAY_BLUE[2]~reg0_q\,
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
	i => \DISPLAY_BLUE[3]~reg0_q\,
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
	i => \DISPLAY_BLUE[4]~reg0_q\,
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
	i => \DISPLAY_BLUE[5]~reg0_q\,
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
	i => \DISPLAY_BLUE[6]~reg0_q\,
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
	i => \DISPLAY_BLUE[7]~reg0_q\,
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
	i => \DISPLAY_RED[0]~reg0_q\,
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
	i => \DISPLAY_RED[1]~reg0_q\,
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
	i => \DISPLAY_RED[2]~reg0_q\,
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
	i => \DISPLAY_RED[3]~reg0_q\,
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
	i => \DISPLAY_RED[4]~reg0_q\,
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
	i => \DISPLAY_RED[5]~reg0_q\,
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
	i => \DISPLAY_RED[6]~reg0_q\,
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
	i => \DISPLAY_RED[7]~reg0_q\,
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
	i => \DISPLAY_GREEN[0]~reg0_q\,
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
	i => \DISPLAY_GREEN[1]~reg0_q\,
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
	i => \DISPLAY_GREEN[2]~reg0_q\,
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
	i => \DISPLAY_GREEN[3]~reg0_q\,
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
	i => \DISPLAY_GREEN[4]~reg0_q\,
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
	i => \DISPLAY_GREEN[5]~reg0_q\,
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
	i => \DISPLAY_GREEN[6]~reg0_q\,
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
	i => \DISPLAY_GREEN[7]~reg0_q\,
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

-- Location: CLKCTRL_G6
\clock_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~input_o\,
	outclk => \clock_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X67_Y4_N24
\divider~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider~0_combout\ = ( !\divider~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_divider~q\,
	combout => \divider~0_combout\);

-- Location: FF_X67_Y4_N26
divider : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \divider~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider~q\);

-- Location: LABCELL_X66_Y4_N45
\clock_25MHz~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_25MHz~0_combout\ = ( \clock_25MHz~q\ & ( \divider~q\ ) ) # ( !\clock_25MHz~q\ & ( !\divider~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_divider~q\,
	dataf => \ALT_INV_clock_25MHz~q\,
	combout => \clock_25MHz~0_combout\);

-- Location: FF_X65_Y4_N11
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

-- Location: FF_X66_Y5_N10
\hsync_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~105_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y5_N0
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( hsync_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~126\ = CARRY(( hsync_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(0),
	cin => GND,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: FF_X66_Y5_N2
\hsync_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~125_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(0));

-- Location: LABCELL_X66_Y5_N3
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( hsync_counter(1) ) + ( GND ) + ( \Add1~126\ ))
-- \Add1~118\ = CARRY(( hsync_counter(1) ) + ( GND ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(1),
	cin => \Add1~126\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X66_Y5_N5
\hsync_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~117_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(1));

-- Location: LABCELL_X66_Y5_N6
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( \hsync_counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~122\ = CARRY(( \hsync_counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[2]~DUPLICATE_q\,
	cin => \Add1~118\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X66_Y5_N8
\hsync_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~121_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y5_N9
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( \hsync_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~106\ = CARRY(( \hsync_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[3]~DUPLICATE_q\,
	cin => \Add1~122\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X66_Y5_N11
\hsync_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~105_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(3));

-- Location: FF_X66_Y5_N14
\hsync_counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~109_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y5_N12
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( \hsync_counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~110\ = CARRY(( \hsync_counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hsync_counter[4]~DUPLICATE_q\,
	cin => \Add1~106\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X66_Y5_N13
\hsync_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~109_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(4));

-- Location: FF_X66_Y4_N35
\hsync_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~1_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(31));

-- Location: LABCELL_X66_Y5_N15
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( hsync_counter(5) ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~102\ = CARRY(( hsync_counter(5) ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(5),
	cin => \Add1~110\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X66_Y5_N16
\hsync_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~101_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(5));

-- Location: LABCELL_X66_Y5_N18
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( \hsync_counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~86\ = CARRY(( \hsync_counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hsync_counter[6]~DUPLICATE_q\,
	cin => \Add1~102\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: LABCELL_X66_Y5_N21
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( hsync_counter(7) ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~98\ = CARRY(( hsync_counter(7) ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(7),
	cin => \Add1~86\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X66_Y5_N23
\hsync_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~97_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(7));

-- Location: LABCELL_X66_Y5_N24
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( hsync_counter(8) ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( hsync_counter(8) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(8),
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X66_Y5_N25
\hsync_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~93_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(8));

-- Location: LABCELL_X66_Y5_N27
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( hsync_counter(9) ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( hsync_counter(9) ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(9),
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X66_Y5_N29
\hsync_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~89_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(9));

-- Location: LABCELL_X66_Y5_N30
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( hsync_counter(10) ) + ( GND ) + ( \Add1~90\ ))
-- \Add1~114\ = CARRY(( hsync_counter(10) ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(10),
	cin => \Add1~90\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X66_Y5_N31
\hsync_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~113_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(10));

-- Location: LABCELL_X66_Y5_N33
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( hsync_counter(11) ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~14\ = CARRY(( hsync_counter(11) ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(11),
	cin => \Add1~114\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X66_Y5_N35
\hsync_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~13_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(11));

-- Location: LABCELL_X66_Y5_N36
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \hsync_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( \hsync_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hsync_counter[12]~DUPLICATE_q\,
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X66_Y5_N37
\hsync_counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~9_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y5_N39
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \hsync_counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~38\ = CARRY(( \hsync_counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[13]~DUPLICATE_q\,
	cin => \Add1~10\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X66_Y5_N40
\hsync_counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~37_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[13]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y5_N42
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \hsync_counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~34\ = CARRY(( \hsync_counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hsync_counter[14]~DUPLICATE_q\,
	cin => \Add1~38\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X66_Y5_N43
\hsync_counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~33_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[14]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y5_N45
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \hsync_counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~30\ = CARRY(( \hsync_counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hsync_counter[15]~DUPLICATE_q\,
	cin => \Add1~34\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X66_Y5_N46
\hsync_counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~29_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[15]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y5_N48
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \hsync_counter[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( \hsync_counter[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[16]~DUPLICATE_q\,
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X66_Y5_N49
\hsync_counter[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~25_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[16]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y5_N51
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \hsync_counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( \hsync_counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[17]~DUPLICATE_q\,
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X66_Y5_N52
\hsync_counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~21_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[17]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y5_N54
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( hsync_counter(18) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( hsync_counter(18) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(18),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X66_Y5_N55
\hsync_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~17_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(18));

-- Location: LABCELL_X66_Y5_N57
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( hsync_counter(19) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~6\ = CARRY(( hsync_counter(19) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(19),
	cin => \Add1~18\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X66_Y5_N59
\hsync_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~5_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(19));

-- Location: LABCELL_X66_Y4_N0
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( \hsync_counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~82\ = CARRY(( \hsync_counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[20]~DUPLICATE_q\,
	cin => \Add1~6\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X66_Y4_N1
\hsync_counter[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~81_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[20]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N3
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( hsync_counter(21) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( hsync_counter(21) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(21),
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X66_Y4_N5
\hsync_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~77_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(21));

-- Location: LABCELL_X66_Y4_N6
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \hsync_counter[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~74\ = CARRY(( \hsync_counter[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hsync_counter[22]~DUPLICATE_q\,
	cin => \Add1~78\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X66_Y4_N7
\hsync_counter[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~73_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[22]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N9
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \hsync_counter[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( \hsync_counter[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hsync_counter[23]~DUPLICATE_q\,
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X66_Y4_N10
\hsync_counter[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~69_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[23]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N12
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \hsync_counter[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( \hsync_counter[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[24]~DUPLICATE_q\,
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X66_Y4_N13
\hsync_counter[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~65_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[24]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N15
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \hsync_counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( \hsync_counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[25]~DUPLICATE_q\,
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X66_Y4_N16
\hsync_counter[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~61_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[25]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N18
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \hsync_counter[26]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( \hsync_counter[26]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[26]~DUPLICATE_q\,
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X66_Y4_N19
\hsync_counter[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~57_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[26]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N21
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \hsync_counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( \hsync_counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hsync_counter[27]~DUPLICATE_q\,
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X66_Y4_N22
\hsync_counter[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~53_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[27]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N24
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \hsync_counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( \hsync_counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[28]~DUPLICATE_q\,
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X66_Y4_N25
\hsync_counter[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~49_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[28]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N27
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \hsync_counter[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( \hsync_counter[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hsync_counter[29]~DUPLICATE_q\,
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X66_Y4_N28
\hsync_counter[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~45_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[29]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \hsync_counter[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( \hsync_counter[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[30]~DUPLICATE_q\,
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X66_Y4_N31
\hsync_counter[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~41_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[30]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N33
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( hsync_counter(31) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(31),
	cin => \Add1~42\,
	sumout => \Add1~1_sumout\);

-- Location: FF_X66_Y4_N34
\hsync_counter[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~1_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[31]~DUPLICATE_q\);

-- Location: FF_X66_Y5_N1
\hsync_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~125_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[0]~DUPLICATE_q\);

-- Location: FF_X66_Y5_N17
\hsync_counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~101_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[5]~DUPLICATE_q\);

-- Location: FF_X66_Y5_N7
\hsync_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~121_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(2));

-- Location: FF_X66_Y5_N4
\hsync_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~117_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[1]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y5_N36
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( hsync_counter(10) & ( !\hsync_counter[1]~DUPLICATE_q\ & ( (!\hsync_counter[0]~DUPLICATE_q\ & (\hsync_counter[5]~DUPLICATE_q\ & !hsync_counter(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hsync_counter[0]~DUPLICATE_q\,
	datac => \ALT_INV_hsync_counter[5]~DUPLICATE_q\,
	datad => ALT_INV_hsync_counter(2),
	datae => ALT_INV_hsync_counter(10),
	dataf => \ALT_INV_hsync_counter[1]~DUPLICATE_q\,
	combout => \Equal0~5_combout\);

-- Location: FF_X66_Y4_N26
\hsync_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~49_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(28));

-- Location: FF_X66_Y4_N17
\hsync_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~61_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(25));

-- Location: FF_X66_Y4_N23
\hsync_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~53_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(27));

-- Location: FF_X66_Y4_N32
\hsync_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~41_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(30));

-- Location: FF_X66_Y4_N29
\hsync_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~45_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(29));

-- Location: FF_X66_Y4_N20
\hsync_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~57_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(26));

-- Location: LABCELL_X66_Y4_N54
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !hsync_counter(29) & ( !hsync_counter(26) & ( (!hsync_counter(28) & (!hsync_counter(25) & (!hsync_counter(27) & !hsync_counter(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(28),
	datab => ALT_INV_hsync_counter(25),
	datac => ALT_INV_hsync_counter(27),
	datad => ALT_INV_hsync_counter(30),
	datae => ALT_INV_hsync_counter(29),
	dataf => ALT_INV_hsync_counter(26),
	combout => \Equal0~1_combout\);

-- Location: FF_X66_Y5_N38
\hsync_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~9_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(12));

-- Location: FF_X66_Y4_N11
\hsync_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~69_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(23));

-- Location: FF_X66_Y4_N8
\hsync_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~73_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(22));

-- Location: FF_X66_Y4_N2
\hsync_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~81_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(20));

-- Location: FF_X66_Y4_N14
\hsync_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~65_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(24));

-- Location: LABCELL_X66_Y4_N36
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !hsync_counter(20) & ( !hsync_counter(24) & ( (!hsync_counter(23) & (!hsync_counter(21) & !hsync_counter(22))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hsync_counter(23),
	datac => ALT_INV_hsync_counter(21),
	datad => ALT_INV_hsync_counter(22),
	datae => ALT_INV_hsync_counter(20),
	dataf => ALT_INV_hsync_counter(24),
	combout => \Equal0~2_combout\);

-- Location: FF_X66_Y5_N41
\hsync_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~37_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(13));

-- Location: FF_X66_Y5_N50
\hsync_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~25_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(16));

-- Location: FF_X66_Y5_N53
\hsync_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~21_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(17));

-- Location: FF_X66_Y5_N44
\hsync_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~33_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(14));

-- Location: FF_X66_Y5_N47
\hsync_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~29_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(15));

-- Location: MLABCELL_X65_Y5_N30
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !hsync_counter(18) & ( !hsync_counter(15) & ( (!hsync_counter(13) & (!hsync_counter(16) & (!hsync_counter(17) & !hsync_counter(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(13),
	datab => ALT_INV_hsync_counter(16),
	datac => ALT_INV_hsync_counter(17),
	datad => ALT_INV_hsync_counter(14),
	datae => ALT_INV_hsync_counter(18),
	dataf => ALT_INV_hsync_counter(15),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X65_Y5_N12
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Equal0~2_combout\ & ( \Equal0~0_combout\ & ( (!hsync_counter(11) & (!hsync_counter(19) & (\Equal0~1_combout\ & !hsync_counter(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(11),
	datab => ALT_INV_hsync_counter(19),
	datac => \ALT_INV_Equal0~1_combout\,
	datad => ALT_INV_hsync_counter(12),
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X65_Y5_N42
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~4_combout\ & ( \Equal0~3_combout\ & ( (!hsync_counter(3) & (!hsync_counter(4) & (!\hsync_counter[31]~DUPLICATE_q\ & \Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(3),
	datab => ALT_INV_hsync_counter(4),
	datac => \ALT_INV_hsync_counter[31]~DUPLICATE_q\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~6_combout\);

-- Location: FF_X66_Y5_N19
\hsync_counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~85_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[6]~DUPLICATE_q\);

-- Location: FF_X66_Y5_N20
\hsync_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add1~85_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(6));

-- Location: MLABCELL_X65_Y5_N6
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !hsync_counter(8) & ( (!hsync_counter(6) & (!hsync_counter(9) & !hsync_counter(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hsync_counter(6),
	datac => ALT_INV_hsync_counter(9),
	datad => ALT_INV_hsync_counter(7),
	dataf => ALT_INV_hsync_counter(8),
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X65_Y5_N9
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( \hsync_counter[3]~DUPLICATE_q\ & ( (!\hsync_counter[5]~DUPLICATE_q\ & !hsync_counter(10)) ) ) # ( !\hsync_counter[3]~DUPLICATE_q\ & ( (!hsync_counter(10) & ((!\hsync_counter[5]~DUPLICATE_q\) # (!hsync_counter(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[5]~DUPLICATE_q\,
	datac => ALT_INV_hsync_counter(4),
	datad => ALT_INV_hsync_counter(10),
	dataf => \ALT_INV_hsync_counter[3]~DUPLICATE_q\,
	combout => \LessThan1~0_combout\);

-- Location: MLABCELL_X65_Y5_N51
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \LessThan1~0_combout\ & ( (!\hsync_counter[31]~DUPLICATE_q\ & ((!\Equal0~4_combout\) # (!\Equal0~3_combout\))) ) ) # ( !\LessThan1~0_combout\ & ( !\hsync_counter[31]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_hsync_counter[31]~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: FF_X65_Y5_N53
\display_hsd~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_hsd~reg0_q\);

-- Location: LABCELL_X64_Y5_N0
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( vsync_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~126\ = CARRY(( vsync_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(0),
	cin => GND,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

-- Location: FF_X64_Y5_N2
\vsync_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~125_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[0]~DUPLICATE_q\);

-- Location: FF_X64_Y5_N7
\vsync_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~113_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(2));

-- Location: FF_X64_Y5_N49
\vsync_counter[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~9_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[16]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N24
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( \vsync_counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~98\ ))
-- \Add2~94\ = CARRY(( \vsync_counter[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_vsync_counter[8]~DUPLICATE_q\,
	cin => \Add2~98\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: LABCELL_X64_Y5_N27
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( vsync_counter(9) ) + ( GND ) + ( \Add2~94\ ))
-- \Add2~118\ = CARRY(( vsync_counter(9) ) + ( GND ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(9),
	cin => \Add2~94\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: FF_X64_Y5_N29
\vsync_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~117_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(9));

-- Location: LABCELL_X64_Y5_N30
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( \vsync_counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~118\ ))
-- \Add2~42\ = CARRY(( \vsync_counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_vsync_counter[10]~DUPLICATE_q\,
	cin => \Add2~118\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X64_Y5_N31
\vsync_counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~41_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[10]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N33
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( \vsync_counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~38\ = CARRY(( \vsync_counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[11]~DUPLICATE_q\,
	cin => \Add2~42\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X64_Y5_N34
\vsync_counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~37_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[11]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N36
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \vsync_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~34\ = CARRY(( \vsync_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[12]~DUPLICATE_q\,
	cin => \Add2~38\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X64_Y5_N37
\vsync_counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~33_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N39
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( \vsync_counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~30\ = CARRY(( \vsync_counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[13]~DUPLICATE_q\,
	cin => \Add2~34\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X64_Y5_N40
\vsync_counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~29_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[13]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N42
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( \vsync_counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~46\ = CARRY(( \vsync_counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[14]~DUPLICATE_q\,
	cin => \Add2~30\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X64_Y5_N43
\vsync_counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~45_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[14]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N45
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \vsync_counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~26\ = CARRY(( \vsync_counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_vsync_counter[15]~DUPLICATE_q\,
	cin => \Add2~46\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X64_Y5_N46
\vsync_counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~25_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[15]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N48
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \vsync_counter[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~10\ = CARRY(( \vsync_counter[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[16]~DUPLICATE_q\,
	cin => \Add2~26\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X64_Y5_N50
\vsync_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~9_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(16));

-- Location: FF_X64_Y4_N31
\vsync_counter[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~13_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[30]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N51
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( vsync_counter(17) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~86\ = CARRY(( vsync_counter(17) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(17),
	cin => \Add2~10\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: FF_X64_Y5_N52
\vsync_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~85_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(17));

-- Location: LABCELL_X64_Y5_N54
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( \vsync_counter[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~86\ ))
-- \Add2~82\ = CARRY(( \vsync_counter[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[18]~DUPLICATE_q\,
	cin => \Add2~86\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X64_Y5_N55
\vsync_counter[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~81_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[18]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N57
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( vsync_counter(19) ) + ( GND ) + ( \Add2~82\ ))
-- \Add2~78\ = CARRY(( vsync_counter(19) ) + ( GND ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vsync_counter(19),
	cin => \Add2~82\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X64_Y5_N59
\vsync_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~77_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(19));

-- Location: LABCELL_X64_Y4_N0
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( vsync_counter(20) ) + ( GND ) + ( \Add2~78\ ))
-- \Add2~74\ = CARRY(( vsync_counter(20) ) + ( GND ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(20),
	cin => \Add2~78\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X64_Y4_N2
\vsync_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~73_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(20));

-- Location: LABCELL_X64_Y4_N3
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( vsync_counter(21) ) + ( GND ) + ( \Add2~74\ ))
-- \Add2~70\ = CARRY(( vsync_counter(21) ) + ( GND ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(21),
	cin => \Add2~74\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X64_Y4_N4
\vsync_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~69_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(21));

-- Location: LABCELL_X64_Y4_N6
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( vsync_counter(22) ) + ( GND ) + ( \Add2~70\ ))
-- \Add2~6\ = CARRY(( vsync_counter(22) ) + ( GND ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(22),
	cin => \Add2~70\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X64_Y4_N7
\vsync_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~5_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(22));

-- Location: LABCELL_X64_Y4_N9
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( vsync_counter(23) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~66\ = CARRY(( vsync_counter(23) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(23),
	cin => \Add2~6\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X64_Y4_N10
\vsync_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~65_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(23));

-- Location: LABCELL_X64_Y4_N12
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( vsync_counter(24) ) + ( GND ) + ( \Add2~66\ ))
-- \Add2~62\ = CARRY(( vsync_counter(24) ) + ( GND ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(24),
	cin => \Add2~66\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X64_Y4_N14
\vsync_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~61_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(24));

-- Location: LABCELL_X64_Y4_N15
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( vsync_counter(25) ) + ( GND ) + ( \Add2~62\ ))
-- \Add2~58\ = CARRY(( vsync_counter(25) ) + ( GND ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(25),
	cin => \Add2~62\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X64_Y4_N17
\vsync_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~57_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(25));

-- Location: LABCELL_X64_Y4_N18
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( vsync_counter(26) ) + ( GND ) + ( \Add2~58\ ))
-- \Add2~54\ = CARRY(( vsync_counter(26) ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vsync_counter(26),
	cin => \Add2~58\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X64_Y4_N20
\vsync_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~53_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(26));

-- Location: LABCELL_X64_Y4_N21
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( \vsync_counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~54\ ))
-- \Add2~50\ = CARRY(( \vsync_counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[27]~DUPLICATE_q\,
	cin => \Add2~54\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X64_Y4_N22
\vsync_counter[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~49_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[27]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y4_N24
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \vsync_counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~22\ = CARRY(( \vsync_counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[28]~DUPLICATE_q\,
	cin => \Add2~50\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X64_Y4_N26
\vsync_counter[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~21_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[28]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y4_N27
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( vsync_counter(29) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~18\ = CARRY(( vsync_counter(29) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(29),
	cin => \Add2~22\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X64_Y4_N28
\vsync_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~17_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(29));

-- Location: LABCELL_X64_Y4_N30
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( \vsync_counter[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~14\ = CARRY(( \vsync_counter[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[30]~DUPLICATE_q\,
	cin => \Add2~18\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X64_Y4_N32
\vsync_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~13_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(30));

-- Location: FF_X64_Y4_N25
\vsync_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~21_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(28));

-- Location: LABCELL_X64_Y4_N57
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !vsync_counter(29) & ( (!vsync_counter(30) & !vsync_counter(28)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(30),
	datad => ALT_INV_vsync_counter(28),
	dataf => ALT_INV_vsync_counter(29),
	combout => \Equal1~0_combout\);

-- Location: FF_X64_Y5_N56
\vsync_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~81_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(18));

-- Location: LABCELL_X63_Y4_N27
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !vsync_counter(19) & ( !vsync_counter(17) & ( (!vsync_counter(21) & (!vsync_counter(18) & !vsync_counter(20))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vsync_counter(21),
	datac => ALT_INV_vsync_counter(18),
	datad => ALT_INV_vsync_counter(20),
	datae => ALT_INV_vsync_counter(19),
	dataf => ALT_INV_vsync_counter(17),
	combout => \Equal1~3_combout\);

-- Location: FF_X64_Y4_N23
\vsync_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~49_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(27));

-- Location: FF_X64_Y4_N11
\vsync_counter[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~65_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[23]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y4_N57
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !\vsync_counter[23]~DUPLICATE_q\ & ( !vsync_counter(26) & ( (!vsync_counter(27) & (!vsync_counter(24) & !vsync_counter(25))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(27),
	datac => ALT_INV_vsync_counter(24),
	datad => ALT_INV_vsync_counter(25),
	datae => \ALT_INV_vsync_counter[23]~DUPLICATE_q\,
	dataf => ALT_INV_vsync_counter(26),
	combout => \Equal1~2_combout\);

-- Location: FF_X64_Y5_N32
\vsync_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~41_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(10));

-- Location: FF_X64_Y5_N38
\vsync_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~33_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(12));

-- Location: FF_X64_Y5_N44
\vsync_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~45_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(14));

-- Location: FF_X64_Y5_N47
\vsync_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~25_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(15));

-- Location: FF_X64_Y5_N41
\vsync_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~29_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(13));

-- Location: FF_X64_Y5_N35
\vsync_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~37_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(11));

-- Location: LABCELL_X63_Y5_N3
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !vsync_counter(13) & ( !vsync_counter(11) & ( (!vsync_counter(10) & (!vsync_counter(12) & (!vsync_counter(14) & !vsync_counter(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(10),
	datab => ALT_INV_vsync_counter(12),
	datac => ALT_INV_vsync_counter(14),
	datad => ALT_INV_vsync_counter(15),
	datae => ALT_INV_vsync_counter(13),
	dataf => ALT_INV_vsync_counter(11),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X64_Y4_N36
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( !vsync_counter(22) & ( \Equal1~1_combout\ & ( (!vsync_counter(16) & (\Equal1~0_combout\ & (\Equal1~3_combout\ & \Equal1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(16),
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal1~3_combout\,
	datad => \ALT_INV_Equal1~2_combout\,
	datae => ALT_INV_vsync_counter(22),
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \Equal1~4_combout\);

-- Location: FF_X64_Y5_N14
\vsync_counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~105_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[4]~DUPLICATE_q\);

-- Location: FF_X64_Y5_N5
\vsync_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~121_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y4_N33
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( vsync_counter(31) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(31),
	cin => \Add2~14\,
	sumout => \Add2~1_sumout\);

-- Location: FF_X64_Y4_N35
\vsync_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~1_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(31));

-- Location: LABCELL_X63_Y4_N42
\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( vsync_counter(9) & ( !vsync_counter(31) & ( (vsync_counter(3) & (!\vsync_counter[4]~DUPLICATE_q\ & !\vsync_counter[1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vsync_counter(3),
	datac => \ALT_INV_vsync_counter[4]~DUPLICATE_q\,
	datad => \ALT_INV_vsync_counter[1]~DUPLICATE_q\,
	datae => ALT_INV_vsync_counter(9),
	dataf => ALT_INV_vsync_counter(31),
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X64_Y4_N54
\Equal1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = ( \Equal1~6_combout\ & ( (\vsync_counter[0]~DUPLICATE_q\ & (vsync_counter(2) & (\Equal1~5_combout\ & \Equal1~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[0]~DUPLICATE_q\,
	datab => ALT_INV_vsync_counter(2),
	datac => \ALT_INV_Equal1~5_combout\,
	datad => \ALT_INV_Equal1~4_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \Equal1~7_combout\);

-- Location: FF_X64_Y5_N1
\vsync_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~125_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(0));

-- Location: LABCELL_X64_Y5_N3
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( vsync_counter(1) ) + ( GND ) + ( \Add2~126\ ))
-- \Add2~122\ = CARRY(( vsync_counter(1) ) + ( GND ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(1),
	cin => \Add2~126\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: FF_X64_Y5_N4
\vsync_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~121_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(1));

-- Location: LABCELL_X64_Y5_N6
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( \vsync_counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~122\ ))
-- \Add2~114\ = CARRY(( \vsync_counter[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_vsync_counter[2]~DUPLICATE_q\,
	cin => \Add2~122\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: FF_X64_Y5_N8
\vsync_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~113_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N9
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( vsync_counter(3) ) + ( GND ) + ( \Add2~114\ ))
-- \Add2~110\ = CARRY(( vsync_counter(3) ) + ( GND ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(3),
	cin => \Add2~114\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: FF_X64_Y5_N10
\vsync_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~109_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(3));

-- Location: LABCELL_X64_Y5_N12
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( vsync_counter(4) ) + ( GND ) + ( \Add2~110\ ))
-- \Add2~106\ = CARRY(( vsync_counter(4) ) + ( GND ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vsync_counter(4),
	cin => \Add2~110\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: FF_X64_Y5_N13
\vsync_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~105_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(4));

-- Location: LABCELL_X64_Y5_N15
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( \vsync_counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~106\ ))
-- \Add2~90\ = CARRY(( \vsync_counter[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[5]~DUPLICATE_q\,
	cin => \Add2~106\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: FF_X64_Y5_N17
\vsync_counter[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~89_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[5]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N18
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( vsync_counter(6) ) + ( GND ) + ( \Add2~90\ ))
-- \Add2~102\ = CARRY(( vsync_counter(6) ) + ( GND ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(6),
	cin => \Add2~90\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: FF_X64_Y5_N19
\vsync_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~101_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(6));

-- Location: LABCELL_X64_Y5_N21
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( vsync_counter(7) ) + ( GND ) + ( \Add2~102\ ))
-- \Add2~98\ = CARRY(( vsync_counter(7) ) + ( GND ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(7),
	cin => \Add2~102\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: FF_X64_Y5_N23
\vsync_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~97_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(7));

-- Location: FF_X64_Y5_N25
\vsync_counter[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~93_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[8]~DUPLICATE_q\);

-- Location: FF_X64_Y5_N16
\vsync_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~89_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(5));

-- Location: LABCELL_X63_Y4_N39
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( !vsync_counter(6) & ( (!\vsync_counter[8]~DUPLICATE_q\ & (!vsync_counter(7) & !vsync_counter(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[8]~DUPLICATE_q\,
	datac => ALT_INV_vsync_counter(7),
	datad => ALT_INV_vsync_counter(5),
	dataf => ALT_INV_vsync_counter(6),
	combout => \Equal1~5_combout\);

-- Location: LABCELL_X63_Y4_N33
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!vsync_counter(9) & ((!\vsync_counter[4]~DUPLICATE_q\) # ((!vsync_counter(3) & !vsync_counter(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000010100000111000001010000011100000101000001110000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[4]~DUPLICATE_q\,
	datab => ALT_INV_vsync_counter(3),
	datac => ALT_INV_vsync_counter(9),
	datad => ALT_INV_vsync_counter(2),
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X63_Y4_N36
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( \LessThan2~0_combout\ & ( (!vsync_counter(31) & ((!\Equal1~5_combout\) # (!\Equal1~4_combout\))) ) ) # ( !\LessThan2~0_combout\ & ( !vsync_counter(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~5_combout\,
	datac => \ALT_INV_Equal1~4_combout\,
	datad => ALT_INV_vsync_counter(31),
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: FF_X63_Y4_N37
\display_vsd~reg0\ : dffeas
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
	q => \display_vsd~reg0_q\);

-- Location: LABCELL_X63_Y4_N3
\LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( vsync_counter(7) & ( vsync_counter(6) & ( (vsync_counter(5) & \vsync_counter[8]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(5),
	datad => \ALT_INV_vsync_counter[8]~DUPLICATE_q\,
	datae => ALT_INV_vsync_counter(7),
	dataf => ALT_INV_vsync_counter(6),
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X64_Y4_N48
\LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = ( \LessThan6~0_combout\ & ( (\vsync_counter[4]~DUPLICATE_q\ & (((\vsync_counter[1]~DUPLICATE_q\ & vsync_counter(2))) # (vsync_counter(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000001110000001100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[1]~DUPLICATE_q\,
	datab => ALT_INV_vsync_counter(3),
	datac => \ALT_INV_vsync_counter[4]~DUPLICATE_q\,
	datad => ALT_INV_vsync_counter(2),
	dataf => \ALT_INV_LessThan6~0_combout\,
	combout => \LessThan6~1_combout\);

-- Location: MLABCELL_X65_Y4_N3
\LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( !hsync_counter(4) & ( (!\hsync_counter[5]~DUPLICATE_q\ & ((!\hsync_counter[3]~DUPLICATE_q\) # ((!\hsync_counter[1]~DUPLICATE_q\) # (!\hsync_counter[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000000000000000000011001100110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[3]~DUPLICATE_q\,
	datab => \ALT_INV_hsync_counter[5]~DUPLICATE_q\,
	datac => \ALT_INV_hsync_counter[1]~DUPLICATE_q\,
	datad => \ALT_INV_hsync_counter[2]~DUPLICATE_q\,
	datae => ALT_INV_hsync_counter(4),
	combout => \LessThan4~0_combout\);

-- Location: MLABCELL_X65_Y4_N48
\LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ( hsync_counter(6) & ( (hsync_counter(8) & (hsync_counter(9) & ((!\LessThan4~0_combout\) # (hsync_counter(7))))) ) ) # ( !hsync_counter(6) & ( (hsync_counter(7) & (hsync_counter(8) & hsync_counter(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000011000000010000001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(7),
	datab => ALT_INV_hsync_counter(8),
	datac => ALT_INV_hsync_counter(9),
	datad => \ALT_INV_LessThan4~0_combout\,
	dataf => ALT_INV_hsync_counter(6),
	combout => \LessThan4~1_combout\);

-- Location: FF_X64_Y5_N26
\vsync_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add2~93_sumout\,
	sclr => \Equal1~7_combout\,
	ena => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(8));

-- Location: MLABCELL_X65_Y4_N36
\LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!vsync_counter(8) & (!vsync_counter(7) & !vsync_counter(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vsync_counter(8),
	datac => ALT_INV_vsync_counter(7),
	datad => ALT_INV_vsync_counter(6),
	combout => \LessThan5~0_combout\);

-- Location: MLABCELL_X65_Y4_N15
\process_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = ( !hsync_counter(10) & ( (!hsync_counter(31) & (!vsync_counter(31) & !vsync_counter(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000000000000000000010001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(31),
	datab => ALT_INV_vsync_counter(31),
	datad => ALT_INV_vsync_counter(9),
	datae => ALT_INV_hsync_counter(10),
	combout => \process_2~0_combout\);

-- Location: MLABCELL_X65_Y4_N21
\LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = ( \hsync_counter[2]~DUPLICATE_q\ & ( (!\hsync_counter[5]~DUPLICATE_q\ & ((!hsync_counter(4)) # ((!\hsync_counter[3]~DUPLICATE_q\ & !\hsync_counter[1]~DUPLICATE_q\)))) ) ) # ( !\hsync_counter[2]~DUPLICATE_q\ & ( 
-- (!\hsync_counter[5]~DUPLICATE_q\ & ((!\hsync_counter[3]~DUPLICATE_q\) # (!hsync_counter(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000110011001000000011001100100010001100110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[3]~DUPLICATE_q\,
	datab => \ALT_INV_hsync_counter[5]~DUPLICATE_q\,
	datac => \ALT_INV_hsync_counter[1]~DUPLICATE_q\,
	datad => ALT_INV_hsync_counter(4),
	datae => \ALT_INV_hsync_counter[2]~DUPLICATE_q\,
	combout => \LessThan3~1_combout\);

-- Location: LABCELL_X64_Y4_N42
\LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = ( \vsync_counter[0]~DUPLICATE_q\ & ( vsync_counter(2) & ( (\vsync_counter[5]~DUPLICATE_q\ & ((vsync_counter(3)) # (\vsync_counter[4]~DUPLICATE_q\))) ) ) ) # ( !\vsync_counter[0]~DUPLICATE_q\ & ( vsync_counter(2) & ( 
-- (\vsync_counter[5]~DUPLICATE_q\ & ((vsync_counter(3)) # (\vsync_counter[4]~DUPLICATE_q\))) ) ) ) # ( \vsync_counter[0]~DUPLICATE_q\ & ( !vsync_counter(2) & ( (\vsync_counter[5]~DUPLICATE_q\ & (((\vsync_counter[1]~DUPLICATE_q\ & vsync_counter(3))) # 
-- (\vsync_counter[4]~DUPLICATE_q\))) ) ) ) # ( !\vsync_counter[0]~DUPLICATE_q\ & ( !vsync_counter(2) & ( (\vsync_counter[5]~DUPLICATE_q\ & \vsync_counter[4]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110001001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[1]~DUPLICATE_q\,
	datab => \ALT_INV_vsync_counter[5]~DUPLICATE_q\,
	datac => \ALT_INV_vsync_counter[4]~DUPLICATE_q\,
	datad => ALT_INV_vsync_counter(3),
	datae => \ALT_INV_vsync_counter[0]~DUPLICATE_q\,
	dataf => ALT_INV_vsync_counter(2),
	combout => \LessThan5~1_combout\);

-- Location: MLABCELL_X65_Y4_N45
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!hsync_counter(9) & (!hsync_counter(8) & !hsync_counter(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(9),
	datac => ALT_INV_hsync_counter(8),
	datad => ALT_INV_hsync_counter(7),
	combout => \LessThan3~0_combout\);

-- Location: MLABCELL_X65_Y4_N54
\process_2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_2~1_combout\ = ( \LessThan3~0_combout\ & ( hsync_counter(6) & ( (\process_2~0_combout\ & (!\LessThan3~1_combout\ & ((!\LessThan5~0_combout\) # (\LessThan5~1_combout\)))) ) ) ) # ( !\LessThan3~0_combout\ & ( hsync_counter(6) & ( 
-- (\process_2~0_combout\ & ((!\LessThan5~0_combout\) # (\LessThan5~1_combout\))) ) ) ) # ( !\LessThan3~0_combout\ & ( !hsync_counter(6) & ( (\process_2~0_combout\ & ((!\LessThan5~0_combout\) # (\LessThan5~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110011000000000000000000100010001100110010000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan5~0_combout\,
	datab => \ALT_INV_process_2~0_combout\,
	datac => \ALT_INV_LessThan3~1_combout\,
	datad => \ALT_INV_LessThan5~1_combout\,
	datae => \ALT_INV_LessThan3~0_combout\,
	dataf => ALT_INV_hsync_counter(6),
	combout => \process_2~1_combout\);

-- Location: LABCELL_X66_Y4_N42
\current_color.RED_d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_color.RED_d~0_combout\ = !\current_color.BLUE_d~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_current_color.BLUE_d~q\,
	combout => \current_color.RED_d~0_combout\);

-- Location: FF_X64_Y2_N14
\color_counter[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \color_counter[24]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y3_N0
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( color_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~126\ = CARRY(( color_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_color_counter(0),
	cin => GND,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X64_Y3_N1
\color_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(0));

-- Location: LABCELL_X64_Y3_N3
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( color_counter(1) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( color_counter(1) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_color_counter(1),
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X64_Y3_N5
\color_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(1));

-- Location: LABCELL_X64_Y3_N6
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( color_counter(2) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( color_counter(2) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_color_counter(2),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X64_Y3_N7
\color_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(2));

-- Location: LABCELL_X64_Y3_N9
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( color_counter(3) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( color_counter(3) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_color_counter(3),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X64_Y3_N10
\color_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(3));

-- Location: LABCELL_X64_Y3_N12
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( color_counter(4) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( color_counter(4) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_color_counter(4),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X64_Y3_N14
\color_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(4));

-- Location: LABCELL_X64_Y3_N15
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( color_counter(5) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( color_counter(5) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_color_counter(5),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X64_Y3_N16
\color_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(5));

-- Location: LABCELL_X64_Y3_N18
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( color_counter(6) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( color_counter(6) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_color_counter(6),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X64_Y3_N19
\color_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(6));

-- Location: LABCELL_X64_Y3_N21
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( color_counter(7) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~38\ = CARRY(( color_counter(7) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_color_counter(7),
	cin => \Add0~102\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X64_Y3_N22
\color_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(7));

-- Location: LABCELL_X64_Y3_N24
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( color_counter(8) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( color_counter(8) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_color_counter(8),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X64_Y3_N25
\color_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(8));

-- Location: LABCELL_X64_Y3_N27
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( color_counter(9) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~34\ = CARRY(( color_counter(9) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_color_counter(9),
	cin => \Add0~42\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X64_Y3_N28
\color_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(9));

-- Location: LABCELL_X64_Y3_N30
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( color_counter(10) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( color_counter(10) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_color_counter(10),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X64_Y3_N31
\color_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(10));

-- Location: LABCELL_X64_Y3_N33
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \color_counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( \color_counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_color_counter[11]~DUPLICATE_q\,
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X64_Y3_N35
\color_counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \color_counter[11]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y3_N36
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \color_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~58\ = CARRY(( \color_counter[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_color_counter[12]~DUPLICATE_q\,
	cin => \Add0~26\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X64_Y3_N38
\color_counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \color_counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y3_N39
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( color_counter(13) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~46\ = CARRY(( color_counter(13) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_color_counter(13),
	cin => \Add0~58\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: MLABCELL_X65_Y3_N36
\color_counter[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \color_counter[13]~feeder_combout\ = ( \Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~45_sumout\,
	combout => \color_counter[13]~feeder_combout\);

-- Location: FF_X65_Y3_N38
\color_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \color_counter[13]~feeder_combout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(13));

-- Location: LABCELL_X64_Y3_N42
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \color_counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~54\ = CARRY(( \color_counter[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_color_counter[14]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X64_Y3_N44
\color_counter[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \color_counter[14]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y3_N45
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( color_counter(15) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( color_counter(15) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_color_counter(15),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X64_Y3_N46
\color_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(15));

-- Location: LABCELL_X64_Y3_N48
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( color_counter(16) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~22\ = CARRY(( color_counter(16) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_color_counter(16),
	cin => \Add0~50\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X64_Y3_N49
\color_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(16));

-- Location: LABCELL_X64_Y3_N51
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \color_counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( \color_counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_color_counter[17]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X64_Y3_N53
\color_counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \color_counter[17]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y3_N54
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( color_counter(18) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( color_counter(18) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_color_counter(18),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X64_Y3_N55
\color_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(18));

-- Location: LABCELL_X64_Y3_N57
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( color_counter(19) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~78\ = CARRY(( color_counter(19) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_color_counter(19),
	cin => \Add0~14\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X64_Y3_N59
\color_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(19));

-- Location: LABCELL_X64_Y2_N0
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( color_counter(20) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( color_counter(20) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_color_counter(20),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X64_Y2_N1
\color_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(20));

-- Location: LABCELL_X64_Y2_N3
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( color_counter(21) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( color_counter(21) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_color_counter(21),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X64_Y2_N5
\color_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(21));

-- Location: LABCELL_X64_Y2_N6
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( color_counter(22) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( color_counter(22) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_color_counter(22),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X64_Y2_N8
\color_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(22));

-- Location: LABCELL_X64_Y2_N9
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( color_counter(23) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( color_counter(23) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_color_counter(23),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X64_Y2_N10
\color_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(23));

-- Location: LABCELL_X64_Y2_N12
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \color_counter[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~10\ = CARRY(( \color_counter[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_color_counter[24]~DUPLICATE_q\,
	cin => \Add0~62\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X64_Y2_N13
\color_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(24));

-- Location: FF_X64_Y2_N35
\color_counter[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \color_counter[31]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N15
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( color_counter(25) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( color_counter(25) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_color_counter(25),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X64_Y2_N16
\color_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(25));

-- Location: LABCELL_X64_Y2_N18
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( color_counter(26) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~98\ = CARRY(( color_counter(26) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_color_counter(26),
	cin => \Add0~6\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X64_Y2_N19
\color_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(26));

-- Location: LABCELL_X64_Y2_N21
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( color_counter(27) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( color_counter(27) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_color_counter(27),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X64_Y2_N23
\color_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(27));

-- Location: LABCELL_X64_Y2_N24
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \color_counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( \color_counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_color_counter[28]~DUPLICATE_q\,
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X64_Y2_N25
\color_counter[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \color_counter[28]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N27
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( color_counter(29) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( color_counter(29) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_color_counter(29),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X64_Y2_N28
\color_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(29));

-- Location: LABCELL_X64_Y2_N30
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( color_counter(30) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( color_counter(30) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_color_counter(30),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X64_Y2_N31
\color_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(30));

-- Location: LABCELL_X64_Y2_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \color_counter[31]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_color_counter[31]~DUPLICATE_q\,
	cin => \Add0~82\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X64_Y2_N34
\color_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(31));

-- Location: FF_X64_Y2_N26
\color_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(28));

-- Location: LABCELL_X64_Y2_N54
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !color_counter(27) & ( !color_counter(29) & ( (!color_counter(28) & (!color_counter(30) & !color_counter(26))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_color_counter(28),
	datac => ALT_INV_color_counter(30),
	datad => ALT_INV_color_counter(26),
	datae => ALT_INV_color_counter(27),
	dataf => ALT_INV_color_counter(29),
	combout => \LessThan0~4_combout\);

-- Location: FF_X64_Y3_N58
\color_counter[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \color_counter[19]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y2_N48
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( color_counter(21) & ( \color_counter[19]~DUPLICATE_q\ & ( (color_counter(20) & (color_counter(22) & color_counter(23))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_color_counter(20),
	datab => ALT_INV_color_counter(22),
	datac => ALT_INV_color_counter(23),
	datae => ALT_INV_color_counter(21),
	dataf => \ALT_INV_color_counter[19]~DUPLICATE_q\,
	combout => \LessThan0~3_combout\);

-- Location: FF_X64_Y3_N52
\color_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(17));

-- Location: FF_X64_Y3_N37
\color_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(12));

-- Location: FF_X64_Y3_N43
\color_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(14));

-- Location: MLABCELL_X65_Y3_N0
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( color_counter(13) & ( color_counter(15) & ( (color_counter(12) & color_counter(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_color_counter(12),
	datad => ALT_INV_color_counter(14),
	datae => ALT_INV_color_counter(13),
	dataf => ALT_INV_color_counter(15),
	combout => \LessThan0~1_combout\);

-- Location: FF_X64_Y3_N34
\color_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_counter(11));

-- Location: MLABCELL_X65_Y3_N30
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !color_counter(9) & ( !color_counter(10) & ( (!color_counter(11) & (!color_counter(7) & !color_counter(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_color_counter(11),
	datac => ALT_INV_color_counter(7),
	datad => ALT_INV_color_counter(8),
	datae => ALT_INV_color_counter(9),
	dataf => ALT_INV_color_counter(10),
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X65_Y3_N42
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \LessThan0~1_combout\ & ( \LessThan0~0_combout\ & ( (!color_counter(18) & ((!color_counter(17)) # (!color_counter(16)))) ) ) ) # ( !\LessThan0~1_combout\ & ( \LessThan0~0_combout\ & ( (!color_counter(18) & ((!color_counter(17)) # 
-- (!color_counter(16)))) ) ) ) # ( \LessThan0~1_combout\ & ( !\LessThan0~0_combout\ & ( (!color_counter(17) & !color_counter(18)) ) ) ) # ( !\LessThan0~1_combout\ & ( !\LessThan0~0_combout\ & ( (!color_counter(18) & ((!color_counter(17)) # 
-- (!color_counter(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000101000001010000011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_color_counter(17),
	datac => ALT_INV_color_counter(18),
	datad => ALT_INV_color_counter(16),
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: MLABCELL_X65_Y2_N12
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~3_combout\ & ( \LessThan0~2_combout\ & ( (!color_counter(31) & ((!\LessThan0~4_combout\) # ((color_counter(24) & color_counter(25))))) ) ) ) # ( !\LessThan0~3_combout\ & ( \LessThan0~2_combout\ & ( (!color_counter(31) 
-- & ((!\LessThan0~4_combout\) # ((color_counter(24) & color_counter(25))))) ) ) ) # ( \LessThan0~3_combout\ & ( !\LessThan0~2_combout\ & ( (!color_counter(31) & ((!\LessThan0~4_combout\) # (color_counter(25)))) ) ) ) # ( !\LessThan0~3_combout\ & ( 
-- !\LessThan0~2_combout\ & ( (!color_counter(31) & ((!\LessThan0~4_combout\) # ((color_counter(24) & color_counter(25))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000100110000001100110011000000110001001100000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_color_counter(24),
	datab => ALT_INV_color_counter(31),
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => ALT_INV_color_counter(25),
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~5_combout\);

-- Location: FF_X66_Y4_N44
\current_color.RED_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \current_color.RED_d~0_combout\,
	ena => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_color.RED_d~q\);

-- Location: LABCELL_X66_Y4_N51
\current_color.GREEN_d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_color.GREEN_d~0_combout\ = !\current_color.RED_d~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_current_color.RED_d~q\,
	combout => \current_color.GREEN_d~0_combout\);

-- Location: FF_X66_Y4_N52
\current_color.GREEN_d~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \current_color.GREEN_d~0_combout\,
	ena => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_color.GREEN_d~DUPLICATE_q\);

-- Location: FF_X66_Y4_N41
\current_color.BLUE_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \current_color.GREEN_d~DUPLICATE_q\,
	sload => VCC,
	ena => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_color.BLUE_d~q\);

-- Location: MLABCELL_X65_Y4_N33
\DISPLAY_BLUE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_BLUE~0_combout\ = ( \process_2~1_combout\ & ( \current_color.BLUE_d~q\ & ( (\Equal0~3_combout\ & (!\LessThan6~1_combout\ & (!\LessThan4~1_combout\ & \Equal1~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \ALT_INV_LessThan6~1_combout\,
	datac => \ALT_INV_LessThan4~1_combout\,
	datad => \ALT_INV_Equal1~4_combout\,
	datae => \ALT_INV_process_2~1_combout\,
	dataf => \ALT_INV_current_color.BLUE_d~q\,
	combout => \DISPLAY_BLUE~0_combout\);

-- Location: FF_X65_Y4_N31
\DISPLAY_BLUE[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[0]~reg0_q\);

-- Location: MLABCELL_X65_Y4_N42
\DISPLAY_BLUE[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_BLUE[1]~reg0feeder_combout\ = ( \DISPLAY_BLUE~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DISPLAY_BLUE~0_combout\,
	combout => \DISPLAY_BLUE[1]~reg0feeder_combout\);

-- Location: FF_X65_Y4_N44
\DISPLAY_BLUE[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \DISPLAY_BLUE[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[1]~reg0_q\);

-- Location: FF_X65_Y4_N28
\DISPLAY_BLUE[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[2]~reg0_q\);

-- Location: FF_X65_Y4_N37
\DISPLAY_BLUE[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[3]~reg0_q\);

-- Location: FF_X65_Y4_N46
\DISPLAY_BLUE[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[4]~reg0_q\);

-- Location: FF_X65_Y4_N4
\DISPLAY_BLUE[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[5]~reg0_q\);

-- Location: FF_X65_Y4_N23
\DISPLAY_BLUE[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[6]~reg0_q\);

-- Location: FF_X65_Y4_N1
\DISPLAY_BLUE[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[7]~reg0_q\);

-- Location: MLABCELL_X65_Y4_N6
\DISPLAY_RED~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_RED~0_combout\ = ( \process_2~1_combout\ & ( !\current_color.RED_d~q\ & ( (\Equal1~4_combout\ & (\Equal0~3_combout\ & (!\LessThan4~1_combout\ & !\LessThan6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~4_combout\,
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_LessThan4~1_combout\,
	datad => \ALT_INV_LessThan6~1_combout\,
	datae => \ALT_INV_process_2~1_combout\,
	dataf => \ALT_INV_current_color.RED_d~q\,
	combout => \DISPLAY_RED~0_combout\);

-- Location: FF_X65_Y4_N53
\DISPLAY_RED[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_RED~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[0]~reg0_q\);

-- Location: FF_X65_Y4_N59
\DISPLAY_RED[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_RED~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[1]~reg0_q\);

-- Location: FF_X65_Y4_N58
\DISPLAY_RED[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_RED~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[2]~reg0_q\);

-- Location: FF_X65_Y4_N52
\DISPLAY_RED[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_RED~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[3]~reg0_q\);

-- Location: FF_X65_Y4_N26
\DISPLAY_RED[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_RED~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[4]~reg0_q\);

-- Location: FF_X64_Y4_N52
\DISPLAY_RED[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_RED~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[5]~reg0_q\);

-- Location: FF_X64_Y4_N46
\DISPLAY_RED[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_RED~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[6]~reg0_q\);

-- Location: FF_X65_Y4_N35
\DISPLAY_RED[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_RED~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[7]~reg0_q\);

-- Location: FF_X66_Y4_N53
\current_color.GREEN_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \current_color.GREEN_d~0_combout\,
	ena => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_color.GREEN_d~q\);

-- Location: MLABCELL_X65_Y4_N24
\DISPLAY_GREEN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_GREEN~0_combout\ = ( \process_2~1_combout\ & ( \current_color.GREEN_d~q\ & ( (\Equal1~4_combout\ & (!\LessThan4~1_combout\ & (\Equal0~3_combout\ & !\LessThan6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~4_combout\,
	datab => \ALT_INV_LessThan4~1_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_LessThan6~1_combout\,
	datae => \ALT_INV_process_2~1_combout\,
	dataf => \ALT_INV_current_color.GREEN_d~q\,
	combout => \DISPLAY_GREEN~0_combout\);

-- Location: FF_X65_Y4_N43
\DISPLAY_GREEN[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_GREEN~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[0]~reg0_q\);

-- Location: FF_X65_Y4_N40
\DISPLAY_GREEN[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_GREEN~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[1]~reg0_q\);

-- Location: FF_X64_Y4_N50
\DISPLAY_GREEN[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_GREEN~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[2]~reg0_q\);

-- Location: FF_X65_Y4_N19
\DISPLAY_GREEN[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_GREEN~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[3]~reg0_q\);

-- Location: FF_X64_Y4_N41
\DISPLAY_GREEN[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_GREEN~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[4]~reg0_q\);

-- Location: FF_X65_Y4_N13
\DISPLAY_GREEN[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_GREEN~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[5]~reg0_q\);

-- Location: FF_X65_Y4_N50
\DISPLAY_GREEN[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_GREEN~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[6]~reg0_q\);

-- Location: FF_X65_Y4_N41
\DISPLAY_GREEN[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_GREEN~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[7]~reg0_q\);

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

-- Location: LABCELL_X36_Y4_N3
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


