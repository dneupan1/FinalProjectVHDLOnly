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

-- DATE "12/03/2023 23:27:30"

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
-- clock_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmos_fval	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmos_lval	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmos_pixclk	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \divider~0_combout\ : std_logic;
SIGNAL \divider~q\ : std_logic;
SIGNAL \clock_25MHz~0_combout\ : std_logic;
SIGNAL \clock_25MHz~q\ : std_logic;
SIGNAL \cmos_pixclk~input_o\ : std_logic;
SIGNAL \cmos_pixclk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \cmos_fval~input_o\ : std_logic;
SIGNAL \cmos_lval~input_o\ : std_logic;
SIGNAL \process_2~2_combout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \pixel_x[1]~feeder_combout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \pixel_x[6]~feeder_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \pixel_y[31]~0_combout\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \pixel_y[3]~feeder_combout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \pixel_y[4]~feeder_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \pixel_y[6]~feeder_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \pixel_y[7]~feeder_combout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \pixel_y[17]~feeder_combout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
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
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LEDR[0]~0_combout\ : std_logic;
SIGNAL \LEDR[0]~1_combout\ : std_logic;
SIGNAL \LEDR[0]~reg0_q\ : std_logic;
SIGNAL \CMOS_IN[0]~input_o\ : std_logic;
SIGNAL \pixel_buffer[3][3][0]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[3][2][11]~0_combout\ : std_logic;
SIGNAL \LEDR[0]~3_combout\ : std_logic;
SIGNAL \pixel_buffer[3][3][0]~0_combout\ : std_logic;
SIGNAL \pixel_buffer[3][3][0]~q\ : std_logic;
SIGNAL \LEDR[1]~2_combout\ : std_logic;
SIGNAL \LEDR[1]~reg0_q\ : std_logic;
SIGNAL \CMOS_IN[1]~input_o\ : std_logic;
SIGNAL \pixel_buffer[3][3][1]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[3][3][1]~q\ : std_logic;
SIGNAL \LEDR[2]~reg0_q\ : std_logic;
SIGNAL \CMOS_IN[2]~input_o\ : std_logic;
SIGNAL \pixel_buffer[3][3][2]~q\ : std_logic;
SIGNAL \LEDR[3]~reg0_q\ : std_logic;
SIGNAL \pixel_buffer[3][2][11]~1_combout\ : std_logic;
SIGNAL \pixel_buffer[3][2][1]~q\ : std_logic;
SIGNAL \pixel_buffer[2][3][11]~0_combout\ : std_logic;
SIGNAL \pixel_buffer[2][3][11]~1_combout\ : std_logic;
SIGNAL \pixel_buffer[2][3][1]~q\ : std_logic;
SIGNAL \pixel_buffer[2][3][0]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[2][3][0]~q\ : std_logic;
SIGNAL \pixel_buffer[3][2][0]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[3][2][0]~q\ : std_logic;
SIGNAL \Add3~14_cout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \LEDR[4]~reg0_q\ : std_logic;
SIGNAL \pixel_buffer[3][2][2]~q\ : std_logic;
SIGNAL \pixel_buffer[2][3][2]~q\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \LEDR[5]~reg0_q\ : std_logic;
SIGNAL \CMOS_IN[3]~input_o\ : std_logic;
SIGNAL \pixel_buffer[2][3][3]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[2][3][3]~q\ : std_logic;
SIGNAL \pixel_buffer[3][2][3]~q\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \LEDR[6]~reg0_q\ : std_logic;
SIGNAL \LEDR[7]~reg0_q\ : std_logic;
SIGNAL \LEDR[8]~reg0_q\ : std_logic;
SIGNAL \LEDR[9]~reg0_q\ : std_logic;
SIGNAL \Add4~125_sumout\ : std_logic;
SIGNAL \hsync_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~126\ : std_logic;
SIGNAL \Add4~117_sumout\ : std_logic;
SIGNAL \hsync_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~118\ : std_logic;
SIGNAL \Add4~121_sumout\ : std_logic;
SIGNAL \Add4~122\ : std_logic;
SIGNAL \Add4~109_sumout\ : std_logic;
SIGNAL \Add4~110\ : std_logic;
SIGNAL \Add4~105_sumout\ : std_logic;
SIGNAL \Add4~106\ : std_logic;
SIGNAL \Add4~101_sumout\ : std_logic;
SIGNAL \Add4~102\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \hsync_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~97_sumout\ : std_logic;
SIGNAL \hsync_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~98\ : std_logic;
SIGNAL \Add4~93_sumout\ : std_logic;
SIGNAL \Add4~94\ : std_logic;
SIGNAL \Add4~89_sumout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \hsync_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~90\ : std_logic;
SIGNAL \Add4~114\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \hsync_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \hsync_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~61_sumout\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \hsync_counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~85_sumout\ : std_logic;
SIGNAL \Add4~86\ : std_logic;
SIGNAL \Add4~81_sumout\ : std_logic;
SIGNAL \hsync_counter[22]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~82\ : std_logic;
SIGNAL \Add4~77_sumout\ : std_logic;
SIGNAL \hsync_counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~78\ : std_logic;
SIGNAL \Add4~73_sumout\ : std_logic;
SIGNAL \hsync_counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~74\ : std_logic;
SIGNAL \Add4~69_sumout\ : std_logic;
SIGNAL \hsync_counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~70\ : std_logic;
SIGNAL \Add4~65_sumout\ : std_logic;
SIGNAL \Add4~66\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \hsync_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~57_sumout\ : std_logic;
SIGNAL \hsync_counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \hsync_counter[29]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \hsync_counter[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Add4~113_sumout\ : std_logic;
SIGNAL \hsync_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \hsync_counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \display_hsd~reg0_q\ : std_logic;
SIGNAL \Add5~121_sumout\ : std_logic;
SIGNAL \Add5~122\ : std_logic;
SIGNAL \Add5~125_sumout\ : std_logic;
SIGNAL \Add5~126\ : std_logic;
SIGNAL \Add5~113_sumout\ : std_logic;
SIGNAL \vsync_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~114\ : std_logic;
SIGNAL \Add5~109_sumout\ : std_logic;
SIGNAL \vsync_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~110\ : std_logic;
SIGNAL \Add5~105_sumout\ : std_logic;
SIGNAL \Add5~106\ : std_logic;
SIGNAL \Add5~89_sumout\ : std_logic;
SIGNAL \Add5~90\ : std_logic;
SIGNAL \Add5~101_sumout\ : std_logic;
SIGNAL \Add5~102\ : std_logic;
SIGNAL \Add5~97_sumout\ : std_logic;
SIGNAL \Add5~98\ : std_logic;
SIGNAL \Add5~93_sumout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \vsync_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~94\ : std_logic;
SIGNAL \Add5~117_sumout\ : std_logic;
SIGNAL \Add5~118\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \vsync_counter[10]~feeder_combout\ : std_logic;
SIGNAL \vsync_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \vsync_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \vsync_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~85_sumout\ : std_logic;
SIGNAL \vsync_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~86\ : std_logic;
SIGNAL \Add5~81_sumout\ : std_logic;
SIGNAL \Add5~82\ : std_logic;
SIGNAL \Add5~77_sumout\ : std_logic;
SIGNAL \vsync_counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~78\ : std_logic;
SIGNAL \Add5~73_sumout\ : std_logic;
SIGNAL \Add5~74\ : std_logic;
SIGNAL \Add5~69_sumout\ : std_logic;
SIGNAL \vsync_counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~70\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~65_sumout\ : std_logic;
SIGNAL \Add5~66\ : std_logic;
SIGNAL \Add5~61_sumout\ : std_logic;
SIGNAL \Add5~62\ : std_logic;
SIGNAL \Add5~57_sumout\ : std_logic;
SIGNAL \Add5~58\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \vsync_counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \vsync_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \vsync_counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \display_vsd~reg0_q\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \hsync_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \process_3~0_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \process_3~1_combout\ : std_logic;
SIGNAL \CMOS_IN[4]~input_o\ : std_logic;
SIGNAL \pixel_buffer[3][3][4]~q\ : std_logic;
SIGNAL \DISPLAY_BLUE~0_combout\ : std_logic;
SIGNAL \DISPLAY_BLUE[0]~reg0_q\ : std_logic;
SIGNAL \CMOS_IN[5]~input_o\ : std_logic;
SIGNAL \pixel_buffer[3][3][5]~q\ : std_logic;
SIGNAL \DISPLAY_BLUE~1_combout\ : std_logic;
SIGNAL \DISPLAY_BLUE[1]~reg0_q\ : std_logic;
SIGNAL \CMOS_IN[6]~input_o\ : std_logic;
SIGNAL \pixel_buffer[3][3][6]~q\ : std_logic;
SIGNAL \DISPLAY_BLUE~2_combout\ : std_logic;
SIGNAL \DISPLAY_BLUE[2]~reg0_q\ : std_logic;
SIGNAL \CMOS_IN[7]~input_o\ : std_logic;
SIGNAL \pixel_buffer[3][3][7]~q\ : std_logic;
SIGNAL \DISPLAY_BLUE~3_combout\ : std_logic;
SIGNAL \DISPLAY_BLUE[3]~reg0_q\ : std_logic;
SIGNAL \CMOS_IN[8]~input_o\ : std_logic;
SIGNAL \pixel_buffer[3][3][8]~q\ : std_logic;
SIGNAL \DISPLAY_BLUE~4_combout\ : std_logic;
SIGNAL \DISPLAY_BLUE[4]~reg0_q\ : std_logic;
SIGNAL \CMOS_IN[9]~input_o\ : std_logic;
SIGNAL \pixel_buffer[3][3][9]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[3][3][9]~q\ : std_logic;
SIGNAL \DISPLAY_BLUE~5_combout\ : std_logic;
SIGNAL \DISPLAY_BLUE[5]~reg0_q\ : std_logic;
SIGNAL \CMOS_IN[10]~input_o\ : std_logic;
SIGNAL \pixel_buffer[3][3][10]~q\ : std_logic;
SIGNAL \DISPLAY_BLUE~6_combout\ : std_logic;
SIGNAL \DISPLAY_BLUE[6]~reg0_q\ : std_logic;
SIGNAL \CMOS_IN[11]~input_o\ : std_logic;
SIGNAL \pixel_buffer[3][3][11]~q\ : std_logic;
SIGNAL \DISPLAY_BLUE~7_combout\ : std_logic;
SIGNAL \DISPLAY_BLUE[7]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[0]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[1]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[2]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[3]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[4]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[5]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[6]~reg0_q\ : std_logic;
SIGNAL \DISPLAY_RED[7]~reg0_q\ : std_logic;
SIGNAL \pixel_buffer[2][3][5]~q\ : std_logic;
SIGNAL \pixel_buffer[3][2][5]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[3][2][5]~q\ : std_logic;
SIGNAL \pixel_buffer[3][2][4]~q\ : std_logic;
SIGNAL \pixel_buffer[2][3][4]~q\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~50_cout\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \DISPLAY_GREEN[0]~reg0feeder_combout\ : std_logic;
SIGNAL \process_3~2_combout\ : std_logic;
SIGNAL \DISPLAY_GREEN[0]~reg0_q\ : std_logic;
SIGNAL \pixel_buffer[2][3][6]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[2][3][6]~q\ : std_logic;
SIGNAL \pixel_buffer[3][2][6]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[3][2][6]~q\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \DISPLAY_GREEN[1]~reg0feeder_combout\ : std_logic;
SIGNAL \DISPLAY_GREEN[1]~reg0_q\ : std_logic;
SIGNAL \pixel_buffer[2][3][7]~q\ : std_logic;
SIGNAL \pixel_buffer[3][2][7]~q\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \DISPLAY_GREEN[2]~reg0feeder_combout\ : std_logic;
SIGNAL \DISPLAY_GREEN[2]~reg0_q\ : std_logic;
SIGNAL \pixel_buffer[2][3][8]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[2][3][8]~q\ : std_logic;
SIGNAL \pixel_buffer[3][2][8]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[3][2][8]~q\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \DISPLAY_GREEN[3]~reg0feeder_combout\ : std_logic;
SIGNAL \DISPLAY_GREEN[3]~reg0_q\ : std_logic;
SIGNAL \pixel_buffer[2][3][9]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[2][3][9]~q\ : std_logic;
SIGNAL \pixel_buffer[3][2][9]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[3][2][9]~q\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \DISPLAY_GREEN[4]~reg0_q\ : std_logic;
SIGNAL \pixel_buffer[2][3][10]~q\ : std_logic;
SIGNAL \pixel_buffer[3][2][10]~feeder_combout\ : std_logic;
SIGNAL \pixel_buffer[3][2][10]~q\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \DISPLAY_GREEN[5]~reg0feeder_combout\ : std_logic;
SIGNAL \DISPLAY_GREEN[5]~reg0_q\ : std_logic;
SIGNAL \pixel_buffer[2][3][11]~q\ : std_logic;
SIGNAL \pixel_buffer[3][2][11]~q\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \DISPLAY_GREEN[6]~reg0_q\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \DISPLAY_GREEN[7]~reg0_q\ : std_logic;
SIGNAL pixel_x : std_logic_vector(31 DOWNTO 0);
SIGNAL pixel_y : std_logic_vector(31 DOWNTO 0);
SIGNAL hsync_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL vsync_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL blue : std_logic_vector(11 DOWNTO 0);
SIGNAL green : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_hsync_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_vsync_counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[22]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[29]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[30]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_hsync_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_CMOS_IN[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_CMOS_IN[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_CMOS_IN[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_CMOS_IN[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_CMOS_IN[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_CMOS_IN[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_CMOS_IN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_CMOS_IN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_cmos_lval~input_o\ : std_logic;
SIGNAL \ALT_INV_cmos_fval~input_o\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[2][3][4]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[3][2][4]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[2][3][11]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[3][2][11]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[2][3][10]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[3][2][10]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[2][3][9]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[3][2][9]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[2][3][8]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[3][2][8]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[2][3][7]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[3][2][7]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[2][3][6]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[3][2][6]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[2][3][5]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[3][2][5]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[2][3][0]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[3][2][0]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[2][3][11]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[2][3][3]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[3][2][3]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[2][3][2]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[3][2][2]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[2][3][1]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[3][2][1]~q\ : std_logic;
SIGNAL \ALT_INV_pixel_buffer[3][2][11]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[0]~3_combout\ : std_logic;
SIGNAL ALT_INV_green : std_logic_vector(9 DOWNTO 4);
SIGNAL ALT_INV_blue : std_logic_vector(11 DOWNTO 4);
SIGNAL \ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_3~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_3~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_2~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[0]~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_LEDR[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_clock_25MHz~q\ : std_logic;
SIGNAL \ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL ALT_INV_hsync_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL ALT_INV_vsync_counter : std_logic_vector(31 DOWNTO 0);
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
\ALT_INV_hsync_counter[0]~DUPLICATE_q\ <= NOT \hsync_counter[0]~DUPLICATE_q\;
\ALT_INV_vsync_counter[0]~DUPLICATE_q\ <= NOT \vsync_counter[0]~DUPLICATE_q\;
\ALT_INV_hsync_counter[2]~DUPLICATE_q\ <= NOT \hsync_counter[2]~DUPLICATE_q\;
\ALT_INV_hsync_counter[1]~DUPLICATE_q\ <= NOT \hsync_counter[1]~DUPLICATE_q\;
\ALT_INV_vsync_counter[9]~DUPLICATE_q\ <= NOT \vsync_counter[9]~DUPLICATE_q\;
\ALT_INV_vsync_counter[2]~DUPLICATE_q\ <= NOT \vsync_counter[2]~DUPLICATE_q\;
\ALT_INV_vsync_counter[3]~DUPLICATE_q\ <= NOT \vsync_counter[3]~DUPLICATE_q\;
\ALT_INV_vsync_counter[21]~DUPLICATE_q\ <= NOT \vsync_counter[21]~DUPLICATE_q\;
\ALT_INV_vsync_counter[23]~DUPLICATE_q\ <= NOT \vsync_counter[23]~DUPLICATE_q\;
\ALT_INV_vsync_counter[25]~DUPLICATE_q\ <= NOT \vsync_counter[25]~DUPLICATE_q\;
\ALT_INV_vsync_counter[15]~DUPLICATE_q\ <= NOT \vsync_counter[15]~DUPLICATE_q\;
\ALT_INV_vsync_counter[19]~DUPLICATE_q\ <= NOT \vsync_counter[19]~DUPLICATE_q\;
\ALT_INV_vsync_counter[10]~DUPLICATE_q\ <= NOT \vsync_counter[10]~DUPLICATE_q\;
\ALT_INV_vsync_counter[20]~DUPLICATE_q\ <= NOT \vsync_counter[20]~DUPLICATE_q\;
\ALT_INV_vsync_counter[31]~DUPLICATE_q\ <= NOT \vsync_counter[31]~DUPLICATE_q\;
\ALT_INV_hsync_counter[10]~DUPLICATE_q\ <= NOT \hsync_counter[10]~DUPLICATE_q\;
\ALT_INV_hsync_counter[4]~DUPLICATE_q\ <= NOT \hsync_counter[4]~DUPLICATE_q\;
\ALT_INV_hsync_counter[7]~DUPLICATE_q\ <= NOT \hsync_counter[7]~DUPLICATE_q\;
\ALT_INV_hsync_counter[22]~DUPLICATE_q\ <= NOT \hsync_counter[22]~DUPLICATE_q\;
\ALT_INV_hsync_counter[23]~DUPLICATE_q\ <= NOT \hsync_counter[23]~DUPLICATE_q\;
\ALT_INV_hsync_counter[24]~DUPLICATE_q\ <= NOT \hsync_counter[24]~DUPLICATE_q\;
\ALT_INV_hsync_counter[25]~DUPLICATE_q\ <= NOT \hsync_counter[25]~DUPLICATE_q\;
\ALT_INV_hsync_counter[28]~DUPLICATE_q\ <= NOT \hsync_counter[28]~DUPLICATE_q\;
\ALT_INV_hsync_counter[29]~DUPLICATE_q\ <= NOT \hsync_counter[29]~DUPLICATE_q\;
\ALT_INV_hsync_counter[30]~DUPLICATE_q\ <= NOT \hsync_counter[30]~DUPLICATE_q\;
\ALT_INV_hsync_counter[27]~DUPLICATE_q\ <= NOT \hsync_counter[27]~DUPLICATE_q\;
\ALT_INV_hsync_counter[13]~DUPLICATE_q\ <= NOT \hsync_counter[13]~DUPLICATE_q\;
\ALT_INV_hsync_counter[15]~DUPLICATE_q\ <= NOT \hsync_counter[15]~DUPLICATE_q\;
\ALT_INV_hsync_counter[20]~DUPLICATE_q\ <= NOT \hsync_counter[20]~DUPLICATE_q\;
\ALT_INV_hsync_counter[31]~DUPLICATE_q\ <= NOT \hsync_counter[31]~DUPLICATE_q\;
\ALT_INV_hsync_counter[6]~DUPLICATE_q\ <= NOT \hsync_counter[6]~DUPLICATE_q\;
\ALT_INV_CMOS_IN[10]~input_o\ <= NOT \CMOS_IN[10]~input_o\;
\ALT_INV_CMOS_IN[9]~input_o\ <= NOT \CMOS_IN[9]~input_o\;
\ALT_INV_CMOS_IN[8]~input_o\ <= NOT \CMOS_IN[8]~input_o\;
\ALT_INV_CMOS_IN[6]~input_o\ <= NOT \CMOS_IN[6]~input_o\;
\ALT_INV_CMOS_IN[5]~input_o\ <= NOT \CMOS_IN[5]~input_o\;
\ALT_INV_CMOS_IN[3]~input_o\ <= NOT \CMOS_IN[3]~input_o\;
\ALT_INV_CMOS_IN[1]~input_o\ <= NOT \CMOS_IN[1]~input_o\;
\ALT_INV_CMOS_IN[0]~input_o\ <= NOT \CMOS_IN[0]~input_o\;
\ALT_INV_cmos_lval~input_o\ <= NOT \cmos_lval~input_o\;
\ALT_INV_cmos_fval~input_o\ <= NOT \cmos_fval~input_o\;
\ALT_INV_pixel_buffer[2][3][4]~q\ <= NOT \pixel_buffer[2][3][4]~q\;
\ALT_INV_pixel_buffer[3][2][4]~q\ <= NOT \pixel_buffer[3][2][4]~q\;
\ALT_INV_pixel_buffer[2][3][11]~q\ <= NOT \pixel_buffer[2][3][11]~q\;
\ALT_INV_pixel_buffer[3][2][11]~q\ <= NOT \pixel_buffer[3][2][11]~q\;
\ALT_INV_pixel_buffer[2][3][10]~q\ <= NOT \pixel_buffer[2][3][10]~q\;
\ALT_INV_pixel_buffer[3][2][10]~q\ <= NOT \pixel_buffer[3][2][10]~q\;
\ALT_INV_pixel_buffer[2][3][9]~q\ <= NOT \pixel_buffer[2][3][9]~q\;
\ALT_INV_pixel_buffer[3][2][9]~q\ <= NOT \pixel_buffer[3][2][9]~q\;
\ALT_INV_pixel_buffer[2][3][8]~q\ <= NOT \pixel_buffer[2][3][8]~q\;
\ALT_INV_pixel_buffer[3][2][8]~q\ <= NOT \pixel_buffer[3][2][8]~q\;
\ALT_INV_pixel_buffer[2][3][7]~q\ <= NOT \pixel_buffer[2][3][7]~q\;
\ALT_INV_pixel_buffer[3][2][7]~q\ <= NOT \pixel_buffer[3][2][7]~q\;
\ALT_INV_pixel_buffer[2][3][6]~q\ <= NOT \pixel_buffer[2][3][6]~q\;
\ALT_INV_pixel_buffer[3][2][6]~q\ <= NOT \pixel_buffer[3][2][6]~q\;
\ALT_INV_pixel_buffer[2][3][5]~q\ <= NOT \pixel_buffer[2][3][5]~q\;
\ALT_INV_pixel_buffer[3][2][5]~q\ <= NOT \pixel_buffer[3][2][5]~q\;
\ALT_INV_pixel_buffer[2][3][0]~q\ <= NOT \pixel_buffer[2][3][0]~q\;
\ALT_INV_pixel_buffer[3][2][0]~q\ <= NOT \pixel_buffer[3][2][0]~q\;
\ALT_INV_pixel_buffer[2][3][11]~0_combout\ <= NOT \pixel_buffer[2][3][11]~0_combout\;
\ALT_INV_Equal3~6_combout\ <= NOT \Equal3~6_combout\;
\ALT_INV_Equal2~5_combout\ <= NOT \Equal2~5_combout\;
\ALT_INV_Equal2~4_combout\ <= NOT \Equal2~4_combout\;
\ALT_INV_pixel_buffer[2][3][3]~q\ <= NOT \pixel_buffer[2][3][3]~q\;
\ALT_INV_pixel_buffer[3][2][3]~q\ <= NOT \pixel_buffer[3][2][3]~q\;
\ALT_INV_pixel_buffer[2][3][2]~q\ <= NOT \pixel_buffer[2][3][2]~q\;
\ALT_INV_pixel_buffer[3][2][2]~q\ <= NOT \pixel_buffer[3][2][2]~q\;
\ALT_INV_pixel_buffer[2][3][1]~q\ <= NOT \pixel_buffer[2][3][1]~q\;
\ALT_INV_pixel_buffer[3][2][1]~q\ <= NOT \pixel_buffer[3][2][1]~q\;
\ALT_INV_pixel_buffer[3][2][11]~0_combout\ <= NOT \pixel_buffer[3][2][11]~0_combout\;
\ALT_INV_LEDR[0]~3_combout\ <= NOT \LEDR[0]~3_combout\;
ALT_INV_green(9) <= NOT green(9);
ALT_INV_green(7) <= NOT green(7);
ALT_INV_green(6) <= NOT green(6);
ALT_INV_green(5) <= NOT green(5);
ALT_INV_green(4) <= NOT green(4);
ALT_INV_blue(11) <= NOT blue(11);
ALT_INV_blue(10) <= NOT blue(10);
ALT_INV_blue(9) <= NOT blue(9);
ALT_INV_blue(8) <= NOT blue(8);
ALT_INV_blue(7) <= NOT blue(7);
ALT_INV_blue(6) <= NOT blue(6);
ALT_INV_blue(5) <= NOT blue(5);
\ALT_INV_LessThan6~1_combout\ <= NOT \LessThan6~1_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\ALT_INV_LessThan8~1_combout\ <= NOT \LessThan8~1_combout\;
\ALT_INV_LessThan8~0_combout\ <= NOT \LessThan8~0_combout\;
\ALT_INV_process_3~1_combout\ <= NOT \process_3~1_combout\;
\ALT_INV_process_3~0_combout\ <= NOT \process_3~0_combout\;
\ALT_INV_LessThan7~1_combout\ <= NOT \LessThan7~1_combout\;
\ALT_INV_LessThan5~1_combout\ <= NOT \LessThan5~1_combout\;
\ALT_INV_LessThan7~0_combout\ <= NOT \LessThan7~0_combout\;
ALT_INV_blue(4) <= NOT blue(4);
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\ALT_INV_Equal3~5_combout\ <= NOT \Equal3~5_combout\;
\ALT_INV_Equal3~4_combout\ <= NOT \Equal3~4_combout\;
\ALT_INV_Equal3~3_combout\ <= NOT \Equal3~3_combout\;
\ALT_INV_Equal3~2_combout\ <= NOT \Equal3~2_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_LessThan5~0_combout\ <= NOT \LessThan5~0_combout\;
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_process_2~1_combout\ <= NOT \process_2~1_combout\;
\ALT_INV_process_2~0_combout\ <= NOT \process_2~0_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_LEDR[0]~0_combout\ <= NOT \LEDR[0]~0_combout\;
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
\ALT_INV_LEDR[0]~reg0_q\ <= NOT \LEDR[0]~reg0_q\;
\ALT_INV_clock_25MHz~q\ <= NOT \clock_25MHz~q\;
\ALT_INV_Add5~21_sumout\ <= NOT \Add5~21_sumout\;
ALT_INV_hsync_counter(0) <= NOT hsync_counter(0);
\ALT_INV_Add2~45_sumout\ <= NOT \Add2~45_sumout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add1~121_sumout\ <= NOT \Add1~121_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
ALT_INV_vsync_counter(1) <= NOT vsync_counter(1);
ALT_INV_vsync_counter(0) <= NOT vsync_counter(0);
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
ALT_INV_vsync_counter(21) <= NOT vsync_counter(21);
ALT_INV_vsync_counter(22) <= NOT vsync_counter(22);
ALT_INV_vsync_counter(23) <= NOT vsync_counter(23);
ALT_INV_vsync_counter(24) <= NOT vsync_counter(24);
ALT_INV_vsync_counter(25) <= NOT vsync_counter(25);
ALT_INV_vsync_counter(27) <= NOT vsync_counter(27);
ALT_INV_vsync_counter(28) <= NOT vsync_counter(28);
ALT_INV_vsync_counter(29) <= NOT vsync_counter(29);
ALT_INV_vsync_counter(30) <= NOT vsync_counter(30);
ALT_INV_vsync_counter(12) <= NOT vsync_counter(12);
ALT_INV_vsync_counter(14) <= NOT vsync_counter(14);
ALT_INV_vsync_counter(15) <= NOT vsync_counter(15);
ALT_INV_vsync_counter(16) <= NOT vsync_counter(16);
ALT_INV_vsync_counter(17) <= NOT vsync_counter(17);
ALT_INV_vsync_counter(18) <= NOT vsync_counter(18);
ALT_INV_vsync_counter(19) <= NOT vsync_counter(19);
ALT_INV_vsync_counter(10) <= NOT vsync_counter(10);
ALT_INV_vsync_counter(11) <= NOT vsync_counter(11);
ALT_INV_vsync_counter(13) <= NOT vsync_counter(13);
ALT_INV_vsync_counter(20) <= NOT vsync_counter(20);
ALT_INV_vsync_counter(26) <= NOT vsync_counter(26);
ALT_INV_vsync_counter(31) <= NOT vsync_counter(31);
ALT_INV_hsync_counter(10) <= NOT hsync_counter(10);
ALT_INV_hsync_counter(3) <= NOT hsync_counter(3);
ALT_INV_hsync_counter(4) <= NOT hsync_counter(4);
ALT_INV_hsync_counter(5) <= NOT hsync_counter(5);
ALT_INV_hsync_counter(7) <= NOT hsync_counter(7);
ALT_INV_hsync_counter(8) <= NOT hsync_counter(8);
ALT_INV_hsync_counter(9) <= NOT hsync_counter(9);
ALT_INV_hsync_counter(21) <= NOT hsync_counter(21);
ALT_INV_hsync_counter(22) <= NOT hsync_counter(22);
ALT_INV_hsync_counter(23) <= NOT hsync_counter(23);
ALT_INV_hsync_counter(24) <= NOT hsync_counter(24);
ALT_INV_hsync_counter(25) <= NOT hsync_counter(25);
ALT_INV_hsync_counter(26) <= NOT hsync_counter(26);
ALT_INV_hsync_counter(18) <= NOT hsync_counter(18);
ALT_INV_hsync_counter(28) <= NOT hsync_counter(28);
ALT_INV_hsync_counter(29) <= NOT hsync_counter(29);
ALT_INV_hsync_counter(30) <= NOT hsync_counter(30);
ALT_INV_hsync_counter(27) <= NOT hsync_counter(27);
ALT_INV_hsync_counter(13) <= NOT hsync_counter(13);
ALT_INV_hsync_counter(14) <= NOT hsync_counter(14);
ALT_INV_hsync_counter(15) <= NOT hsync_counter(15);
ALT_INV_hsync_counter(16) <= NOT hsync_counter(16);
ALT_INV_hsync_counter(17) <= NOT hsync_counter(17);
ALT_INV_hsync_counter(19) <= NOT hsync_counter(19);
ALT_INV_hsync_counter(11) <= NOT hsync_counter(11);
ALT_INV_hsync_counter(12) <= NOT hsync_counter(12);
ALT_INV_hsync_counter(20) <= NOT hsync_counter(20);
ALT_INV_hsync_counter(31) <= NOT hsync_counter(31);
ALT_INV_hsync_counter(6) <= NOT hsync_counter(6);
ALT_INV_pixel_y(31) <= NOT pixel_y(31);
ALT_INV_pixel_y(0) <= NOT pixel_y(0);
ALT_INV_pixel_y(1) <= NOT pixel_y(1);
ALT_INV_pixel_y(2) <= NOT pixel_y(2);
ALT_INV_pixel_y(19) <= NOT pixel_y(19);
ALT_INV_pixel_y(20) <= NOT pixel_y(20);
ALT_INV_pixel_y(21) <= NOT pixel_y(21);
ALT_INV_pixel_y(22) <= NOT pixel_y(22);
ALT_INV_pixel_y(23) <= NOT pixel_y(23);
ALT_INV_pixel_y(24) <= NOT pixel_y(24);
ALT_INV_pixel_y(25) <= NOT pixel_y(25);
ALT_INV_pixel_y(26) <= NOT pixel_y(26);
ALT_INV_pixel_y(27) <= NOT pixel_y(27);
ALT_INV_pixel_y(28) <= NOT pixel_y(28);
ALT_INV_pixel_y(29) <= NOT pixel_y(29);
ALT_INV_pixel_y(30) <= NOT pixel_y(30);
ALT_INV_pixel_y(13) <= NOT pixel_y(13);
ALT_INV_pixel_y(14) <= NOT pixel_y(14);
ALT_INV_pixel_y(15) <= NOT pixel_y(15);
ALT_INV_pixel_y(16) <= NOT pixel_y(16);
ALT_INV_pixel_y(17) <= NOT pixel_y(17);
ALT_INV_pixel_y(18) <= NOT pixel_y(18);
ALT_INV_pixel_y(7) <= NOT pixel_y(7);
ALT_INV_pixel_y(8) <= NOT pixel_y(8);
ALT_INV_pixel_y(9) <= NOT pixel_y(9);
ALT_INV_pixel_y(10) <= NOT pixel_y(10);
ALT_INV_pixel_y(11) <= NOT pixel_y(11);
ALT_INV_pixel_y(12) <= NOT pixel_y(12);
ALT_INV_pixel_y(3) <= NOT pixel_y(3);
ALT_INV_pixel_y(4) <= NOT pixel_y(4);
ALT_INV_pixel_y(5) <= NOT pixel_y(5);
ALT_INV_pixel_y(6) <= NOT pixel_y(6);
ALT_INV_pixel_x(31) <= NOT pixel_x(31);
ALT_INV_pixel_x(1) <= NOT pixel_x(1);
ALT_INV_pixel_x(0) <= NOT pixel_x(0);
ALT_INV_pixel_x(2) <= NOT pixel_x(2);
ALT_INV_pixel_x(21) <= NOT pixel_x(21);
ALT_INV_pixel_x(22) <= NOT pixel_x(22);
ALT_INV_pixel_x(23) <= NOT pixel_x(23);
ALT_INV_pixel_x(24) <= NOT pixel_x(24);
ALT_INV_pixel_x(25) <= NOT pixel_x(25);
ALT_INV_pixel_x(26) <= NOT pixel_x(26);
ALT_INV_pixel_x(27) <= NOT pixel_x(27);
ALT_INV_pixel_x(28) <= NOT pixel_x(28);
ALT_INV_pixel_x(29) <= NOT pixel_x(29);
ALT_INV_pixel_x(30) <= NOT pixel_x(30);
ALT_INV_pixel_x(3) <= NOT pixel_x(3);
ALT_INV_pixel_x(4) <= NOT pixel_x(4);
ALT_INV_pixel_x(15) <= NOT pixel_x(15);
ALT_INV_pixel_x(16) <= NOT pixel_x(16);
ALT_INV_pixel_x(17) <= NOT pixel_x(17);
ALT_INV_pixel_x(18) <= NOT pixel_x(18);
ALT_INV_pixel_x(19) <= NOT pixel_x(19);
ALT_INV_pixel_x(20) <= NOT pixel_x(20);
ALT_INV_pixel_x(9) <= NOT pixel_x(9);
ALT_INV_pixel_x(10) <= NOT pixel_x(10);
ALT_INV_pixel_x(11) <= NOT pixel_x(11);
ALT_INV_pixel_x(12) <= NOT pixel_x(12);
ALT_INV_pixel_x(13) <= NOT pixel_x(13);
ALT_INV_pixel_x(14) <= NOT pixel_x(14);
ALT_INV_pixel_x(5) <= NOT pixel_x(5);
ALT_INV_pixel_x(6) <= NOT pixel_x(6);
ALT_INV_pixel_x(7) <= NOT pixel_x(7);
ALT_INV_pixel_x(8) <= NOT pixel_x(8);

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
	i => \LEDR[0]~reg0_q\,
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
	i => \LEDR[2]~reg0_q\,
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
	i => \LEDR[3]~reg0_q\,
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
	i => \LEDR[4]~reg0_q\,
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
	i => \LEDR[5]~reg0_q\,
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
	i => \LEDR[6]~reg0_q\,
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
	i => \LEDR[7]~reg0_q\,
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
	i => \LEDR[8]~reg0_q\,
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
	i => \LEDR[9]~reg0_q\,
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

-- Location: LABCELL_X67_Y1_N48
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

-- Location: FF_X68_Y1_N43
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

-- Location: LABCELL_X68_Y1_N36
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

-- Location: FF_X68_Y1_N59
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

-- Location: LABCELL_X67_Y4_N0
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( pixel_x(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~118\ = CARRY(( pixel_x(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(0),
	cin => GND,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: LABCELL_X68_Y4_N18
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !pixel_x(7) & ( (!pixel_x(6) & (!pixel_x(5) & !pixel_x(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000010100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(6),
	datac => ALT_INV_pixel_x(5),
	datad => ALT_INV_pixel_x(8),
	datae => ALT_INV_pixel_x(7),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X68_Y4_N30
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !pixel_x(15) & ( !pixel_x(20) & ( (!pixel_x(19) & (!pixel_x(18) & (!pixel_x(17) & !pixel_x(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(19),
	datab => ALT_INV_pixel_x(18),
	datac => ALT_INV_pixel_x(17),
	datad => ALT_INV_pixel_x(16),
	datae => ALT_INV_pixel_x(15),
	dataf => ALT_INV_pixel_x(20),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X68_Y4_N6
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !pixel_x(10) & ( !pixel_x(11) & ( (!pixel_x(9) & (!pixel_x(12) & (!pixel_x(14) & !pixel_x(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(9),
	datab => ALT_INV_pixel_x(12),
	datac => ALT_INV_pixel_x(14),
	datad => ALT_INV_pixel_x(13),
	datae => ALT_INV_pixel_x(10),
	dataf => ALT_INV_pixel_x(11),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X68_Y4_N12
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( pixel_x(2) & ( !pixel_x(31) & ( (!pixel_x(1) & !pixel_x(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(1),
	datad => ALT_INV_pixel_x(0),
	datae => ALT_INV_pixel_x(2),
	dataf => ALT_INV_pixel_x(31),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X67_Y3_N36
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !pixel_x(27) & ( !pixel_x(4) & ( (!pixel_x(29) & (!pixel_x(3) & (!pixel_x(28) & !pixel_x(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(29),
	datab => ALT_INV_pixel_x(3),
	datac => ALT_INV_pixel_x(28),
	datad => ALT_INV_pixel_x(30),
	datae => ALT_INV_pixel_x(27),
	dataf => ALT_INV_pixel_x(4),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X67_Y3_N54
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !pixel_x(25) & ( !pixel_x(23) & ( (!pixel_x(26) & (!pixel_x(22) & (!pixel_x(21) & !pixel_x(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(26),
	datab => ALT_INV_pixel_x(22),
	datac => ALT_INV_pixel_x(21),
	datad => ALT_INV_pixel_x(24),
	datae => ALT_INV_pixel_x(25),
	dataf => ALT_INV_pixel_x(23),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X68_Y4_N36
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~3_combout\ & ( \Equal0~4_combout\ & ( (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~6_combout\);

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

-- Location: LABCELL_X71_Y4_N18
\process_2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_2~2_combout\ = ( \cmos_lval~input_o\ & ( \cmos_fval~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cmos_fval~input_o\,
	dataf => \ALT_INV_cmos_lval~input_o\,
	combout => \process_2~2_combout\);

-- Location: FF_X67_Y4_N2
\pixel_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(0));

-- Location: LABCELL_X67_Y4_N3
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( pixel_x(1) ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~122\ = CARRY(( pixel_x(1) ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(1),
	cin => \Add1~118\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: LABCELL_X68_Y4_N24
\pixel_x[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_x[1]~feeder_combout\ = ( \Add1~121_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~121_sumout\,
	combout => \pixel_x[1]~feeder_combout\);

-- Location: FF_X68_Y4_N26
\pixel_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_x[1]~feeder_combout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(1));

-- Location: LABCELL_X67_Y4_N6
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( pixel_x(2) ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~114\ = CARRY(( pixel_x(2) ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(2),
	cin => \Add1~122\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X67_Y4_N8
\pixel_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(2));

-- Location: LABCELL_X67_Y4_N9
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( pixel_x(3) ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~70\ = CARRY(( pixel_x(3) ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(3),
	cin => \Add1~114\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X67_Y4_N11
\pixel_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(3));

-- Location: LABCELL_X67_Y4_N12
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( pixel_x(4) ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( pixel_x(4) ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(4),
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X67_Y4_N14
\pixel_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(4));

-- Location: LABCELL_X67_Y4_N15
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( pixel_x(5) ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~14\ = CARRY(( pixel_x(5) ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(5),
	cin => \Add1~66\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X68_Y4_N23
\pixel_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \Add1~13_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(5));

-- Location: LABCELL_X67_Y4_N18
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( pixel_x(6) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( pixel_x(6) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(6),
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X68_Y4_N27
\pixel_x[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_x[6]~feeder_combout\ = ( \Add1~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~9_sumout\,
	combout => \pixel_x[6]~feeder_combout\);

-- Location: FF_X68_Y4_N29
\pixel_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_x[6]~feeder_combout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(6));

-- Location: LABCELL_X67_Y4_N21
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( pixel_x(7) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( pixel_x(7) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(7),
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X68_Y4_N2
\pixel_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \Add1~5_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(7));

-- Location: LABCELL_X67_Y4_N24
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( pixel_x(8) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~2\ = CARRY(( pixel_x(8) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(8),
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X68_Y4_N59
\pixel_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \Add1~1_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(8));

-- Location: LABCELL_X67_Y4_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( pixel_x(9) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~38\ = CARRY(( pixel_x(9) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(9),
	cin => \Add1~2\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X67_Y4_N29
\pixel_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(9));

-- Location: LABCELL_X67_Y4_N30
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( pixel_x(10) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~34\ = CARRY(( pixel_x(10) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(10),
	cin => \Add1~38\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X67_Y4_N32
\pixel_x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(10));

-- Location: LABCELL_X67_Y4_N33
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( pixel_x(11) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~30\ = CARRY(( pixel_x(11) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(11),
	cin => \Add1~34\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X67_Y4_N35
\pixel_x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(11));

-- Location: LABCELL_X67_Y4_N36
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( pixel_x(12) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( pixel_x(12) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(12),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X67_Y4_N38
\pixel_x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(12));

-- Location: LABCELL_X67_Y4_N39
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( pixel_x(13) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( pixel_x(13) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(13),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X67_Y4_N41
\pixel_x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(13));

-- Location: LABCELL_X67_Y4_N42
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( pixel_x(14) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( pixel_x(14) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(14),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X67_Y4_N44
\pixel_x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(14));

-- Location: LABCELL_X67_Y4_N45
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( pixel_x(15) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~62\ = CARRY(( pixel_x(15) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(15),
	cin => \Add1~18\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X67_Y4_N47
\pixel_x[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(15));

-- Location: LABCELL_X67_Y4_N48
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( pixel_x(16) ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( pixel_x(16) ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(16),
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X68_Y4_N17
\pixel_x[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \Add1~57_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(16));

-- Location: LABCELL_X67_Y4_N51
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( pixel_x(17) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( pixel_x(17) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(17),
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X67_Y4_N53
\pixel_x[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(17));

-- Location: LABCELL_X67_Y4_N54
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( pixel_x(18) ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( pixel_x(18) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(18),
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X68_Y4_N44
\pixel_x[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \Add1~49_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(18));

-- Location: LABCELL_X67_Y4_N57
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( pixel_x(19) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( pixel_x(19) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(19),
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X67_Y4_N59
\pixel_x[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(19));

-- Location: LABCELL_X67_Y3_N0
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( pixel_x(20) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( pixel_x(20) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(20),
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X67_Y3_N2
\pixel_x[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(20));

-- Location: LABCELL_X67_Y3_N3
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( pixel_x(21) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~110\ = CARRY(( pixel_x(21) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(21),
	cin => \Add1~42\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X67_Y3_N5
\pixel_x[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(21));

-- Location: LABCELL_X67_Y3_N6
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( pixel_x(22) ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( pixel_x(22) ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(22),
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X67_Y3_N8
\pixel_x[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(22));

-- Location: LABCELL_X67_Y3_N9
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( pixel_x(23) ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( pixel_x(23) ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(23),
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X67_Y3_N11
\pixel_x[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(23));

-- Location: LABCELL_X67_Y3_N12
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( pixel_x(24) ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( pixel_x(24) ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(24),
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X67_Y3_N14
\pixel_x[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(24));

-- Location: LABCELL_X67_Y3_N15
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( pixel_x(25) ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( pixel_x(25) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(25),
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X67_Y3_N17
\pixel_x[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(25));

-- Location: LABCELL_X67_Y3_N18
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( pixel_x(26) ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( pixel_x(26) ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(26),
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X67_Y3_N20
\pixel_x[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(26));

-- Location: LABCELL_X67_Y3_N21
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( pixel_x(27) ) + ( GND ) + ( \Add1~90\ ))
-- \Add1~86\ = CARRY(( pixel_x(27) ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_x(27),
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X67_Y3_N23
\pixel_x[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(27));

-- Location: LABCELL_X67_Y3_N24
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( pixel_x(28) ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~82\ = CARRY(( pixel_x(28) ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(28),
	cin => \Add1~86\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X67_Y3_N26
\pixel_x[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(28));

-- Location: LABCELL_X67_Y3_N27
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( pixel_x(29) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( pixel_x(29) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(29),
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X67_Y3_N29
\pixel_x[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(29));

-- Location: LABCELL_X67_Y3_N30
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( pixel_x(30) ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~74\ = CARRY(( pixel_x(30) ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_x(30),
	cin => \Add1~78\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X67_Y3_N32
\pixel_x[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(30));

-- Location: LABCELL_X67_Y3_N33
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( pixel_x(31) ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(31),
	cin => \Add1~74\,
	sumout => \Add1~125_sumout\);

-- Location: FF_X67_Y3_N35
\pixel_x[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	sclr => \Equal0~6_combout\,
	ena => \process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_x(31));

-- Location: LABCELL_X67_Y3_N48
\process_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = ( \Equal0~1_combout\ & ( \Equal0~2_combout\ & ( (\Equal0~3_combout\ & (!pixel_x(2) & (\Equal0~4_combout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => ALT_INV_pixel_x(2),
	datac => \ALT_INV_Equal0~4_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \process_2~0_combout\);

-- Location: LABCELL_X67_Y3_N42
\process_2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_2~1_combout\ = ( !\process_2~0_combout\ & ( !pixel_x(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_x(31),
	dataf => \ALT_INV_process_2~0_combout\,
	combout => \process_2~1_combout\);

-- Location: LABCELL_X70_Y4_N0
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( pixel_y(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~122\ = CARRY(( pixel_y(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(0),
	cin => GND,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: LABCELL_X71_Y4_N21
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !pixel_y(5) & ( (!pixel_y(4) & (!pixel_y(6) & !pixel_y(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(4),
	datac => ALT_INV_pixel_y(6),
	datad => ALT_INV_pixel_y(3),
	dataf => ALT_INV_pixel_y(5),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X68_Y4_N45
\Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = ( !pixel_y(1) & ( !pixel_y(31) & ( (!pixel_y(0) & pixel_y(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(0),
	datad => ALT_INV_pixel_y(2),
	datae => ALT_INV_pixel_y(1),
	dataf => ALT_INV_pixel_y(31),
	combout => \Equal1~5_combout\);

-- Location: LABCELL_X71_Y4_N36
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !pixel_y(12) & ( !pixel_y(8) & ( (!pixel_y(7) & (!pixel_y(10) & (!pixel_y(9) & !pixel_y(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(7),
	datab => ALT_INV_pixel_y(10),
	datac => ALT_INV_pixel_y(9),
	datad => ALT_INV_pixel_y(11),
	datae => ALT_INV_pixel_y(12),
	dataf => ALT_INV_pixel_y(8),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X70_Y3_N42
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !pixel_y(29) & ( !pixel_y(26) & ( (!pixel_y(27) & (!pixel_y(25) & (!pixel_y(28) & !pixel_y(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(27),
	datab => ALT_INV_pixel_y(25),
	datac => ALT_INV_pixel_y(28),
	datad => ALT_INV_pixel_y(30),
	datae => ALT_INV_pixel_y(29),
	dataf => ALT_INV_pixel_y(26),
	combout => \Equal1~3_combout\);

-- Location: LABCELL_X71_Y4_N54
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !pixel_y(18) & ( !pixel_y(16) & ( (!pixel_y(17) & (!pixel_y(13) & (!pixel_y(14) & !pixel_y(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(17),
	datab => ALT_INV_pixel_y(13),
	datac => ALT_INV_pixel_y(14),
	datad => ALT_INV_pixel_y(15),
	datae => ALT_INV_pixel_y(18),
	dataf => ALT_INV_pixel_y(16),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X70_Y3_N54
\Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = ( !pixel_y(19) & ( !pixel_y(23) & ( (!pixel_y(21) & (!pixel_y(24) & (!pixel_y(20) & !pixel_y(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(21),
	datab => ALT_INV_pixel_y(24),
	datac => ALT_INV_pixel_y(20),
	datad => ALT_INV_pixel_y(22),
	datae => ALT_INV_pixel_y(19),
	dataf => ALT_INV_pixel_y(23),
	combout => \Equal1~4_combout\);

-- Location: LABCELL_X68_Y4_N51
\Equal1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = ( \Equal1~2_combout\ & ( \Equal1~4_combout\ & ( (\Equal1~0_combout\ & (\Equal1~5_combout\ & (\Equal1~1_combout\ & \Equal1~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal1~5_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal1~3_combout\,
	datae => \ALT_INV_Equal1~2_combout\,
	dataf => \ALT_INV_Equal1~4_combout\,
	combout => \Equal1~6_combout\);

-- Location: LABCELL_X68_Y4_N3
\pixel_y[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_y[31]~0_combout\ = ( \Equal0~6_combout\ & ( (\cmos_lval~input_o\ & \cmos_fval~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmos_lval~input_o\,
	datac => \ALT_INV_cmos_fval~input_o\,
	datae => \ALT_INV_Equal0~6_combout\,
	combout => \pixel_y[31]~0_combout\);

-- Location: FF_X70_Y4_N2
\pixel_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~121_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(0));

-- Location: LABCELL_X70_Y4_N3
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( pixel_y(1) ) + ( GND ) + ( \Add2~122\ ))
-- \Add2~118\ = CARRY(( pixel_y(1) ) + ( GND ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(1),
	cin => \Add2~122\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: FF_X70_Y4_N5
\pixel_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~117_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(1));

-- Location: LABCELL_X70_Y4_N6
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( pixel_y(2) ) + ( GND ) + ( \Add2~118\ ))
-- \Add2~114\ = CARRY(( pixel_y(2) ) + ( GND ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(2),
	cin => \Add2~118\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: FF_X70_Y4_N8
\pixel_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~113_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(2));

-- Location: LABCELL_X70_Y4_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( pixel_y(3) ) + ( GND ) + ( \Add2~114\ ))
-- \Add2~14\ = CARRY(( pixel_y(3) ) + ( GND ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(3),
	cin => \Add2~114\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X71_Y4_N0
\pixel_y[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_y[3]~feeder_combout\ = ( \Add2~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~13_sumout\,
	combout => \pixel_y[3]~feeder_combout\);

-- Location: FF_X71_Y4_N2
\pixel_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_y[3]~feeder_combout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(3));

-- Location: LABCELL_X70_Y4_N12
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( pixel_y(4) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~10\ = CARRY(( pixel_y(4) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(4),
	cin => \Add2~14\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LABCELL_X71_Y4_N9
\pixel_y[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_y[4]~feeder_combout\ = ( \Add2~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~9_sumout\,
	combout => \pixel_y[4]~feeder_combout\);

-- Location: FF_X71_Y4_N11
\pixel_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_y[4]~feeder_combout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(4));

-- Location: LABCELL_X70_Y4_N15
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( pixel_y(5) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~6\ = CARRY(( pixel_y(5) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(5),
	cin => \Add2~10\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X70_Y4_N17
\pixel_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(5));

-- Location: LABCELL_X70_Y4_N18
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( pixel_y(6) ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~2\ = CARRY(( pixel_y(6) ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(6),
	cin => \Add2~6\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X71_Y4_N15
\pixel_y[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_y[6]~feeder_combout\ = ( \Add2~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~1_sumout\,
	combout => \pixel_y[6]~feeder_combout\);

-- Location: FF_X71_Y4_N17
\pixel_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_y[6]~feeder_combout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(6));

-- Location: LABCELL_X70_Y4_N21
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( pixel_y(7) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~38\ = CARRY(( pixel_y(7) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(7),
	cin => \Add2~2\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: LABCELL_X71_Y4_N33
\pixel_y[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_y[7]~feeder_combout\ = ( \Add2~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~37_sumout\,
	combout => \pixel_y[7]~feeder_combout\);

-- Location: FF_X71_Y4_N35
\pixel_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_y[7]~feeder_combout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(7));

-- Location: LABCELL_X70_Y4_N24
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( pixel_y(8) ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~34\ = CARRY(( pixel_y(8) ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(8),
	cin => \Add2~38\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X70_Y4_N26
\pixel_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(8));

-- Location: LABCELL_X70_Y4_N27
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( pixel_y(9) ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~30\ = CARRY(( pixel_y(9) ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(9),
	cin => \Add2~34\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X70_Y4_N29
\pixel_y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(9));

-- Location: LABCELL_X70_Y4_N30
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( pixel_y(10) ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~26\ = CARRY(( pixel_y(10) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(10),
	cin => \Add2~30\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X70_Y4_N32
\pixel_y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(10));

-- Location: LABCELL_X70_Y4_N33
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( pixel_y(11) ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~22\ = CARRY(( pixel_y(11) ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(11),
	cin => \Add2~26\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X70_Y4_N35
\pixel_y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(11));

-- Location: LABCELL_X70_Y4_N36
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( pixel_y(12) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~18\ = CARRY(( pixel_y(12) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(12),
	cin => \Add2~22\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X70_Y4_N38
\pixel_y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(12));

-- Location: LABCELL_X70_Y4_N39
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( pixel_y(13) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~62\ = CARRY(( pixel_y(13) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(13),
	cin => \Add2~18\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X70_Y4_N41
\pixel_y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~61_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(13));

-- Location: LABCELL_X70_Y4_N42
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( pixel_y(14) ) + ( GND ) + ( \Add2~62\ ))
-- \Add2~58\ = CARRY(( pixel_y(14) ) + ( GND ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(14),
	cin => \Add2~62\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X70_Y4_N44
\pixel_y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(14));

-- Location: LABCELL_X70_Y4_N45
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( pixel_y(15) ) + ( GND ) + ( \Add2~58\ ))
-- \Add2~54\ = CARRY(( pixel_y(15) ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(15),
	cin => \Add2~58\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X70_Y4_N47
\pixel_y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(15));

-- Location: LABCELL_X70_Y4_N48
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( pixel_y(16) ) + ( GND ) + ( \Add2~54\ ))
-- \Add2~50\ = CARRY(( pixel_y(16) ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(16),
	cin => \Add2~54\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X70_Y4_N50
\pixel_y[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(16));

-- Location: LABCELL_X70_Y4_N51
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( pixel_y(17) ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~46\ = CARRY(( pixel_y(17) ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(17),
	cin => \Add2~50\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: LABCELL_X71_Y4_N24
\pixel_y[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_y[17]~feeder_combout\ = ( \Add2~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add2~45_sumout\,
	combout => \pixel_y[17]~feeder_combout\);

-- Location: FF_X71_Y4_N26
\pixel_y[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_y[17]~feeder_combout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(17));

-- Location: LABCELL_X70_Y4_N54
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( pixel_y(18) ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~42\ = CARRY(( pixel_y(18) ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(18),
	cin => \Add2~46\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X70_Y4_N56
\pixel_y[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(18));

-- Location: LABCELL_X70_Y4_N57
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( pixel_y(19) ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~110\ = CARRY(( pixel_y(19) ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(19),
	cin => \Add2~42\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: FF_X70_Y4_N59
\pixel_y[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~109_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(19));

-- Location: LABCELL_X70_Y3_N0
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( pixel_y(20) ) + ( GND ) + ( \Add2~110\ ))
-- \Add2~106\ = CARRY(( pixel_y(20) ) + ( GND ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(20),
	cin => \Add2~110\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: FF_X70_Y3_N2
\pixel_y[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~105_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(20));

-- Location: LABCELL_X70_Y3_N3
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( pixel_y(21) ) + ( GND ) + ( \Add2~106\ ))
-- \Add2~102\ = CARRY(( pixel_y(21) ) + ( GND ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(21),
	cin => \Add2~106\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: FF_X70_Y3_N5
\pixel_y[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~101_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(21));

-- Location: LABCELL_X70_Y3_N6
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( pixel_y(22) ) + ( GND ) + ( \Add2~102\ ))
-- \Add2~98\ = CARRY(( pixel_y(22) ) + ( GND ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(22),
	cin => \Add2~102\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: FF_X70_Y3_N8
\pixel_y[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~97_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(22));

-- Location: LABCELL_X70_Y3_N9
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( pixel_y(23) ) + ( GND ) + ( \Add2~98\ ))
-- \Add2~94\ = CARRY(( pixel_y(23) ) + ( GND ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(23),
	cin => \Add2~98\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: FF_X70_Y3_N11
\pixel_y[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~93_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(23));

-- Location: LABCELL_X70_Y3_N12
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( pixel_y(24) ) + ( GND ) + ( \Add2~94\ ))
-- \Add2~90\ = CARRY(( pixel_y(24) ) + ( GND ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(24),
	cin => \Add2~94\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: FF_X70_Y3_N14
\pixel_y[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~89_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(24));

-- Location: LABCELL_X70_Y3_N15
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( pixel_y(25) ) + ( GND ) + ( \Add2~90\ ))
-- \Add2~86\ = CARRY(( pixel_y(25) ) + ( GND ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(25),
	cin => \Add2~90\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: FF_X70_Y3_N17
\pixel_y[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~85_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(25));

-- Location: LABCELL_X70_Y3_N18
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( pixel_y(26) ) + ( GND ) + ( \Add2~86\ ))
-- \Add2~82\ = CARRY(( pixel_y(26) ) + ( GND ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(26),
	cin => \Add2~86\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X70_Y3_N20
\pixel_y[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~81_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(26));

-- Location: LABCELL_X70_Y3_N21
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( pixel_y(27) ) + ( GND ) + ( \Add2~82\ ))
-- \Add2~78\ = CARRY(( pixel_y(27) ) + ( GND ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_pixel_y(27),
	cin => \Add2~82\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X70_Y3_N23
\pixel_y[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~77_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(27));

-- Location: LABCELL_X70_Y3_N24
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( pixel_y(28) ) + ( GND ) + ( \Add2~78\ ))
-- \Add2~74\ = CARRY(( pixel_y(28) ) + ( GND ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_pixel_y(28),
	cin => \Add2~78\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X70_Y3_N26
\pixel_y[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~73_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(28));

-- Location: LABCELL_X70_Y3_N27
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( pixel_y(29) ) + ( GND ) + ( \Add2~74\ ))
-- \Add2~70\ = CARRY(( pixel_y(29) ) + ( GND ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(29),
	cin => \Add2~74\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X70_Y3_N29
\pixel_y[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~69_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(29));

-- Location: LABCELL_X70_Y3_N30
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( pixel_y(30) ) + ( GND ) + ( \Add2~70\ ))
-- \Add2~66\ = CARRY(( pixel_y(30) ) + ( GND ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_pixel_y(30),
	cin => \Add2~70\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X70_Y3_N32
\pixel_y[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~65_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(30));

-- Location: LABCELL_X70_Y3_N33
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( pixel_y(31) ) + ( GND ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(31),
	cin => \Add2~66\,
	sumout => \Add2~125_sumout\);

-- Location: FF_X70_Y3_N35
\pixel_y[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add2~125_sumout\,
	sclr => \Equal1~6_combout\,
	ena => \pixel_y[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_y(31));

-- Location: LABCELL_X71_Y3_N12
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( \Equal1~1_combout\ & ( \Equal1~2_combout\ & ( (!pixel_y(2) & (\Equal1~3_combout\ & (\Equal1~4_combout\ & \Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_y(2),
	datab => \ALT_INV_Equal1~3_combout\,
	datac => \ALT_INV_Equal1~4_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X71_Y3_N57
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( !pixel_y(31) & ( !\LessThan2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_pixel_y(31),
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X71_Y3_N18
\LEDR[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[0]~0_combout\ = ( \Equal1~6_combout\ & ( \Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \LEDR[0]~0_combout\);

-- Location: LABCELL_X71_Y3_N48
\LEDR[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[0]~1_combout\ = ( \LEDR[0]~reg0_q\ & ( \LEDR[0]~0_combout\ & ( (!\cmos_lval~input_o\) # (!\cmos_fval~input_o\) ) ) ) # ( \LEDR[0]~reg0_q\ & ( !\LEDR[0]~0_combout\ ) ) # ( !\LEDR[0]~reg0_q\ & ( !\LEDR[0]~0_combout\ & ( (!\process_2~1_combout\ & 
-- (\cmos_lval~input_o\ & (\cmos_fval~input_o\ & !\LessThan2~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000111111111111111100000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_2~1_combout\,
	datab => \ALT_INV_cmos_lval~input_o\,
	datac => \ALT_INV_cmos_fval~input_o\,
	datad => \ALT_INV_LessThan2~1_combout\,
	datae => \ALT_INV_LEDR[0]~reg0_q\,
	dataf => \ALT_INV_LEDR[0]~0_combout\,
	combout => \LEDR[0]~1_combout\);

-- Location: FF_X71_Y3_N49
\LEDR[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \LEDR[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[0]~reg0_q\);

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

-- Location: LABCELL_X71_Y3_N36
\pixel_buffer[3][3][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[3][3][0]~feeder_combout\ = ( \CMOS_IN[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[0]~input_o\,
	combout => \pixel_buffer[3][3][0]~feeder_combout\);

-- Location: LABCELL_X71_Y4_N48
\pixel_buffer[3][2][11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[3][2][11]~0_combout\ = ( pixel_x(1) & ( pixel_y(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_pixel_x(1),
	dataf => ALT_INV_pixel_y(1),
	combout => \pixel_buffer[3][2][11]~0_combout\);

-- Location: LABCELL_X71_Y3_N24
\LEDR[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[0]~3_combout\ = ( pixel_x(31) & ( \process_2~0_combout\ & ( (\cmos_fval~input_o\ & (\cmos_lval~input_o\ & ((\LessThan2~0_combout\) # (pixel_y(31))))) ) ) ) # ( !pixel_x(31) & ( \process_2~0_combout\ & ( (\cmos_fval~input_o\ & (\cmos_lval~input_o\ & 
-- ((\LessThan2~0_combout\) # (pixel_y(31))))) ) ) ) # ( pixel_x(31) & ( !\process_2~0_combout\ & ( (\cmos_fval~input_o\ & (\cmos_lval~input_o\ & ((\LessThan2~0_combout\) # (pixel_y(31))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010001000100000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cmos_fval~input_o\,
	datab => \ALT_INV_cmos_lval~input_o\,
	datac => ALT_INV_pixel_y(31),
	datad => \ALT_INV_LessThan2~0_combout\,
	datae => ALT_INV_pixel_x(31),
	dataf => \ALT_INV_process_2~0_combout\,
	combout => \LEDR[0]~3_combout\);

-- Location: LABCELL_X71_Y3_N9
\pixel_buffer[3][3][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[3][3][0]~0_combout\ = ( \pixel_buffer[3][2][11]~0_combout\ & ( \LEDR[0]~3_combout\ & ( (pixel_x(0) & pixel_y(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_pixel_x(0),
	datac => ALT_INV_pixel_y(0),
	datae => \ALT_INV_pixel_buffer[3][2][11]~0_combout\,
	dataf => \ALT_INV_LEDR[0]~3_combout\,
	combout => \pixel_buffer[3][3][0]~0_combout\);

-- Location: FF_X71_Y3_N38
\pixel_buffer[3][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[3][3][0]~feeder_combout\,
	ena => \pixel_buffer[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][3][0]~q\);

-- Location: LABCELL_X68_Y4_N54
\LEDR[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR[1]~2_combout\ = ( \Equal0~6_combout\ & ( \Equal1~6_combout\ & ( (\cmos_fval~input_o\ & \cmos_lval~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cmos_fval~input_o\,
	datac => \ALT_INV_cmos_lval~input_o\,
	datae => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Equal1~6_combout\,
	combout => \LEDR[1]~2_combout\);

-- Location: FF_X68_Y3_N40
\LEDR[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][0]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[1]~reg0_q\);

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

-- Location: LABCELL_X71_Y3_N39
\pixel_buffer[3][3][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[3][3][1]~feeder_combout\ = ( \CMOS_IN[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[1]~input_o\,
	combout => \pixel_buffer[3][3][1]~feeder_combout\);

-- Location: FF_X71_Y3_N41
\pixel_buffer[3][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[3][3][1]~feeder_combout\,
	ena => \pixel_buffer[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][3][1]~q\);

-- Location: FF_X68_Y4_N34
\LEDR[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][1]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[2]~reg0_q\);

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

-- Location: FF_X71_Y3_N11
\pixel_buffer[3][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[2]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][3][2]~q\);

-- Location: FF_X71_Y4_N58
\LEDR[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][2]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[3]~reg0_q\);

-- Location: MLABCELL_X72_Y3_N51
\pixel_buffer[3][2][11]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[3][2][11]~1_combout\ = ( !pixel_y(0) & ( \LEDR[0]~3_combout\ & ( (\pixel_buffer[3][2][11]~0_combout\ & pixel_x(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pixel_buffer[3][2][11]~0_combout\,
	datac => ALT_INV_pixel_x(0),
	datae => ALT_INV_pixel_y(0),
	dataf => \ALT_INV_LEDR[0]~3_combout\,
	combout => \pixel_buffer[3][2][11]~1_combout\);

-- Location: FF_X72_Y3_N53
\pixel_buffer[3][2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[1]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][2][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][2][1]~q\);

-- Location: LABCELL_X71_Y4_N42
\pixel_buffer[2][3][11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[2][3][11]~0_combout\ = ( pixel_y(0) & ( !pixel_x(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_pixel_y(0),
	dataf => ALT_INV_pixel_x(0),
	combout => \pixel_buffer[2][3][11]~0_combout\);

-- Location: MLABCELL_X72_Y3_N36
\pixel_buffer[2][3][11]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[2][3][11]~1_combout\ = ( !\LessThan2~1_combout\ & ( !\process_2~1_combout\ & ( (\pixel_buffer[3][2][11]~0_combout\ & (\cmos_fval~input_o\ & (\cmos_lval~input_o\ & \pixel_buffer[2][3][11]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pixel_buffer[3][2][11]~0_combout\,
	datab => \ALT_INV_cmos_fval~input_o\,
	datac => \ALT_INV_cmos_lval~input_o\,
	datad => \ALT_INV_pixel_buffer[2][3][11]~0_combout\,
	datae => \ALT_INV_LessThan2~1_combout\,
	dataf => \ALT_INV_process_2~1_combout\,
	combout => \pixel_buffer[2][3][11]~1_combout\);

-- Location: FF_X73_Y3_N25
\pixel_buffer[2][3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[1]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[2][3][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[2][3][1]~q\);

-- Location: LABCELL_X73_Y3_N9
\pixel_buffer[2][3][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[2][3][0]~feeder_combout\ = ( \CMOS_IN[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[0]~input_o\,
	combout => \pixel_buffer[2][3][0]~feeder_combout\);

-- Location: FF_X73_Y3_N11
\pixel_buffer[2][3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[2][3][0]~feeder_combout\,
	ena => \pixel_buffer[2][3][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[2][3][0]~q\);

-- Location: MLABCELL_X72_Y3_N30
\pixel_buffer[3][2][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[3][2][0]~feeder_combout\ = ( \CMOS_IN[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[0]~input_o\,
	combout => \pixel_buffer[3][2][0]~feeder_combout\);

-- Location: FF_X72_Y3_N31
\pixel_buffer[3][2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[3][2][0]~feeder_combout\,
	ena => \pixel_buffer[3][2][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][2][0]~q\);

-- Location: LABCELL_X68_Y3_N0
\Add3~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~14_cout\ = CARRY(( \pixel_buffer[3][2][0]~q\ ) + ( \pixel_buffer[2][3][0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pixel_buffer[2][3][0]~q\,
	datad => \ALT_INV_pixel_buffer[3][2][0]~q\,
	cin => GND,
	cout => \Add3~14_cout\);

-- Location: LABCELL_X68_Y3_N3
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( \pixel_buffer[2][3][1]~q\ ) + ( \pixel_buffer[3][2][1]~q\ ) + ( \Add3~14_cout\ ))
-- \Add3~2\ = CARRY(( \pixel_buffer[2][3][1]~q\ ) + ( \pixel_buffer[3][2][1]~q\ ) + ( \Add3~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pixel_buffer[3][2][1]~q\,
	datad => \ALT_INV_pixel_buffer[2][3][1]~q\,
	cin => \Add3~14_cout\,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: FF_X68_Y3_N4
\LEDR[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add3~1_sumout\,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[4]~reg0_q\);

-- Location: FF_X72_Y3_N43
\pixel_buffer[3][2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[2]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][2][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][2][2]~q\);

-- Location: FF_X73_Y3_N34
\pixel_buffer[2][3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[2]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[2][3][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[2][3][2]~q\);

-- Location: LABCELL_X68_Y3_N6
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( \pixel_buffer[2][3][2]~q\ ) + ( \pixel_buffer[3][2][2]~q\ ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( \pixel_buffer[2][3][2]~q\ ) + ( \pixel_buffer[3][2][2]~q\ ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pixel_buffer[3][2][2]~q\,
	datad => \ALT_INV_pixel_buffer[2][3][2]~q\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: FF_X68_Y3_N7
\LEDR[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add3~5_sumout\,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[5]~reg0_q\);

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

-- Location: LABCELL_X73_Y3_N12
\pixel_buffer[2][3][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[2][3][3]~feeder_combout\ = ( \CMOS_IN[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[3]~input_o\,
	combout => \pixel_buffer[2][3][3]~feeder_combout\);

-- Location: FF_X73_Y3_N13
\pixel_buffer[2][3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[2][3][3]~feeder_combout\,
	ena => \pixel_buffer[2][3][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[2][3][3]~q\);

-- Location: FF_X72_Y3_N46
\pixel_buffer[3][2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[3]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][2][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][2][3]~q\);

-- Location: LABCELL_X68_Y3_N9
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \pixel_buffer[3][2][3]~q\ ) + ( \pixel_buffer[2][3][3]~q\ ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( \pixel_buffer[3][2][3]~q\ ) + ( \pixel_buffer[2][3][3]~q\ ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pixel_buffer[2][3][3]~q\,
	datad => \ALT_INV_pixel_buffer[3][2][3]~q\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: FF_X68_Y3_N10
\LEDR[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add3~9_sumout\,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[6]~reg0_q\);

-- Location: FF_X67_Y4_N20
\LEDR[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][0]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[7]~reg0_q\);

-- Location: FF_X68_Y4_N52
\LEDR[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][1]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[8]~reg0_q\);

-- Location: FF_X71_Y4_N40
\LEDR[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][2]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[9]~reg0_q\);

-- Location: FF_X68_Y2_N19
\hsync_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~1_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(6));

-- Location: LABCELL_X68_Y2_N0
\Add4~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~125_sumout\ = SUM(( \hsync_counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add4~126\ = CARRY(( \hsync_counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hsync_counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add4~125_sumout\,
	cout => \Add4~126\);

-- Location: FF_X68_Y2_N1
\hsync_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~125_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y2_N3
\Add4~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~117_sumout\ = SUM(( \hsync_counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~126\ ))
-- \Add4~118\ = CARRY(( \hsync_counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[1]~DUPLICATE_q\,
	cin => \Add4~126\,
	sumout => \Add4~117_sumout\,
	cout => \Add4~118\);

-- Location: FF_X68_Y2_N4
\hsync_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~117_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y2_N6
\Add4~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~121_sumout\ = SUM(( hsync_counter(2) ) + ( GND ) + ( \Add4~118\ ))
-- \Add4~122\ = CARRY(( hsync_counter(2) ) + ( GND ) + ( \Add4~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hsync_counter(2),
	cin => \Add4~118\,
	sumout => \Add4~121_sumout\,
	cout => \Add4~122\);

-- Location: FF_X68_Y2_N7
\hsync_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~121_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(2));

-- Location: LABCELL_X68_Y2_N9
\Add4~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~109_sumout\ = SUM(( hsync_counter(3) ) + ( GND ) + ( \Add4~122\ ))
-- \Add4~110\ = CARRY(( hsync_counter(3) ) + ( GND ) + ( \Add4~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(3),
	cin => \Add4~122\,
	sumout => \Add4~109_sumout\,
	cout => \Add4~110\);

-- Location: FF_X68_Y2_N11
\hsync_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~109_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(3));

-- Location: LABCELL_X68_Y2_N12
\Add4~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~105_sumout\ = SUM(( hsync_counter(4) ) + ( GND ) + ( \Add4~110\ ))
-- \Add4~106\ = CARRY(( hsync_counter(4) ) + ( GND ) + ( \Add4~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hsync_counter(4),
	cin => \Add4~110\,
	sumout => \Add4~105_sumout\,
	cout => \Add4~106\);

-- Location: FF_X68_Y2_N13
\hsync_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~105_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(4));

-- Location: LABCELL_X68_Y2_N15
\Add4~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~101_sumout\ = SUM(( hsync_counter(5) ) + ( GND ) + ( \Add4~106\ ))
-- \Add4~102\ = CARRY(( hsync_counter(5) ) + ( GND ) + ( \Add4~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(5),
	cin => \Add4~106\,
	sumout => \Add4~101_sumout\,
	cout => \Add4~102\);

-- Location: FF_X68_Y2_N17
\hsync_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~101_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(5));

-- Location: LABCELL_X68_Y2_N18
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( hsync_counter(6) ) + ( GND ) + ( \Add4~102\ ))
-- \Add4~2\ = CARRY(( hsync_counter(6) ) + ( GND ) + ( \Add4~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(6),
	cin => \Add4~102\,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: FF_X68_Y2_N20
\hsync_counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~1_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[6]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y2_N21
\Add4~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~97_sumout\ = SUM(( \hsync_counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~2\ ))
-- \Add4~98\ = CARRY(( \hsync_counter[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[7]~DUPLICATE_q\,
	cin => \Add4~2\,
	sumout => \Add4~97_sumout\,
	cout => \Add4~98\);

-- Location: FF_X68_Y2_N23
\hsync_counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~97_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[7]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y2_N24
\Add4~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~93_sumout\ = SUM(( hsync_counter(8) ) + ( GND ) + ( \Add4~98\ ))
-- \Add4~94\ = CARRY(( hsync_counter(8) ) + ( GND ) + ( \Add4~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(8),
	cin => \Add4~98\,
	sumout => \Add4~93_sumout\,
	cout => \Add4~94\);

-- Location: FF_X68_Y2_N25
\hsync_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~93_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(8));

-- Location: LABCELL_X68_Y2_N27
\Add4~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~89_sumout\ = SUM(( hsync_counter(9) ) + ( GND ) + ( \Add4~94\ ))
-- \Add4~90\ = CARRY(( hsync_counter(9) ) + ( GND ) + ( \Add4~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(9),
	cin => \Add4~94\,
	sumout => \Add4~89_sumout\,
	cout => \Add4~90\);

-- Location: FF_X68_Y2_N29
\hsync_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~89_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(9));

-- Location: LABCELL_X67_Y2_N48
\LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = ( !\hsync_counter[7]~DUPLICATE_q\ & ( !hsync_counter(8) & ( !hsync_counter(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(9),
	datae => \ALT_INV_hsync_counter[7]~DUPLICATE_q\,
	dataf => ALT_INV_hsync_counter(8),
	combout => \LessThan5~0_combout\);

-- Location: FF_X68_Y2_N2
\hsync_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~125_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(0));

-- Location: FF_X68_Y2_N8
\hsync_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~121_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[2]~DUPLICATE_q\);

-- Location: FF_X68_Y2_N5
\hsync_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~117_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(1));

-- Location: LABCELL_X68_Y2_N30
\Add4~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~113_sumout\ = SUM(( hsync_counter(10) ) + ( GND ) + ( \Add4~90\ ))
-- \Add4~114\ = CARRY(( hsync_counter(10) ) + ( GND ) + ( \Add4~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(10),
	cin => \Add4~90\,
	sumout => \Add4~113_sumout\,
	cout => \Add4~114\);

-- Location: LABCELL_X68_Y2_N33
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( hsync_counter(11) ) + ( GND ) + ( \Add4~114\ ))
-- \Add4~18\ = CARRY(( hsync_counter(11) ) + ( GND ) + ( \Add4~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(11),
	cin => \Add4~114\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: FF_X68_Y2_N35
\hsync_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~17_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(11));

-- Location: LABCELL_X68_Y2_N36
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( hsync_counter(12) ) + ( GND ) + ( \Add4~18\ ))
-- \Add4~14\ = CARRY(( hsync_counter(12) ) + ( GND ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(12),
	cin => \Add4~18\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: FF_X68_Y2_N37
\hsync_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~13_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(12));

-- Location: LABCELL_X68_Y2_N39
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( \hsync_counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~14\ ))
-- \Add4~42\ = CARRY(( \hsync_counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[13]~DUPLICATE_q\,
	cin => \Add4~14\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\);

-- Location: FF_X68_Y2_N40
\hsync_counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~41_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[13]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y2_N42
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( hsync_counter(14) ) + ( GND ) + ( \Add4~42\ ))
-- \Add4~38\ = CARRY(( hsync_counter(14) ) + ( GND ) + ( \Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hsync_counter(14),
	cin => \Add4~42\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: FF_X68_Y2_N43
\hsync_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~37_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(14));

-- Location: LABCELL_X68_Y2_N45
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( \hsync_counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~38\ ))
-- \Add4~34\ = CARRY(( \hsync_counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hsync_counter[15]~DUPLICATE_q\,
	cin => \Add4~38\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: FF_X68_Y2_N46
\hsync_counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~33_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[15]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y2_N48
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( hsync_counter(16) ) + ( GND ) + ( \Add4~34\ ))
-- \Add4~30\ = CARRY(( hsync_counter(16) ) + ( GND ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(16),
	cin => \Add4~34\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: FF_X68_Y2_N50
\hsync_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~29_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(16));

-- Location: LABCELL_X68_Y2_N51
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( hsync_counter(17) ) + ( GND ) + ( \Add4~30\ ))
-- \Add4~26\ = CARRY(( hsync_counter(17) ) + ( GND ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(17),
	cin => \Add4~30\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: FF_X68_Y2_N52
\hsync_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~25_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(17));

-- Location: LABCELL_X68_Y2_N54
\Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~61_sumout\ = SUM(( hsync_counter(18) ) + ( GND ) + ( \Add4~26\ ))
-- \Add4~62\ = CARRY(( hsync_counter(18) ) + ( GND ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(18),
	cin => \Add4~26\,
	sumout => \Add4~61_sumout\,
	cout => \Add4~62\);

-- Location: FF_X68_Y2_N56
\hsync_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~61_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(18));

-- Location: LABCELL_X68_Y2_N57
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( hsync_counter(19) ) + ( GND ) + ( \Add4~62\ ))
-- \Add4~22\ = CARRY(( hsync_counter(19) ) + ( GND ) + ( \Add4~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hsync_counter(19),
	cin => \Add4~62\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: FF_X68_Y2_N59
\hsync_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~21_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(19));

-- Location: LABCELL_X68_Y1_N0
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( \hsync_counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~22\ ))
-- \Add4~10\ = CARRY(( \hsync_counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[20]~DUPLICATE_q\,
	cin => \Add4~22\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: FF_X68_Y1_N1
\hsync_counter[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~9_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[20]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y1_N3
\Add4~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~85_sumout\ = SUM(( hsync_counter(21) ) + ( GND ) + ( \Add4~10\ ))
-- \Add4~86\ = CARRY(( hsync_counter(21) ) + ( GND ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hsync_counter(21),
	cin => \Add4~10\,
	sumout => \Add4~85_sumout\,
	cout => \Add4~86\);

-- Location: FF_X68_Y1_N5
\hsync_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~85_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(21));

-- Location: LABCELL_X68_Y1_N6
\Add4~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~81_sumout\ = SUM(( \hsync_counter[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~86\ ))
-- \Add4~82\ = CARRY(( \hsync_counter[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hsync_counter[22]~DUPLICATE_q\,
	cin => \Add4~86\,
	sumout => \Add4~81_sumout\,
	cout => \Add4~82\);

-- Location: FF_X68_Y1_N8
\hsync_counter[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~81_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[22]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y1_N9
\Add4~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~77_sumout\ = SUM(( \hsync_counter[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~82\ ))
-- \Add4~78\ = CARRY(( \hsync_counter[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[23]~DUPLICATE_q\,
	cin => \Add4~82\,
	sumout => \Add4~77_sumout\,
	cout => \Add4~78\);

-- Location: FF_X68_Y1_N10
\hsync_counter[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~77_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[23]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y1_N12
\Add4~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~73_sumout\ = SUM(( \hsync_counter[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~78\ ))
-- \Add4~74\ = CARRY(( \hsync_counter[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[24]~DUPLICATE_q\,
	cin => \Add4~78\,
	sumout => \Add4~73_sumout\,
	cout => \Add4~74\);

-- Location: FF_X68_Y1_N13
\hsync_counter[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~73_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[24]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y1_N15
\Add4~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~69_sumout\ = SUM(( \hsync_counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~74\ ))
-- \Add4~70\ = CARRY(( \hsync_counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_hsync_counter[25]~DUPLICATE_q\,
	cin => \Add4~74\,
	sumout => \Add4~69_sumout\,
	cout => \Add4~70\);

-- Location: FF_X68_Y1_N16
\hsync_counter[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~69_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[25]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y1_N18
\Add4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~65_sumout\ = SUM(( hsync_counter(26) ) + ( GND ) + ( \Add4~70\ ))
-- \Add4~66\ = CARRY(( hsync_counter(26) ) + ( GND ) + ( \Add4~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(26),
	cin => \Add4~70\,
	sumout => \Add4~65_sumout\,
	cout => \Add4~66\);

-- Location: FF_X68_Y1_N20
\hsync_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~65_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(26));

-- Location: LABCELL_X68_Y1_N21
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( \hsync_counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~66\ ))
-- \Add4~46\ = CARRY(( \hsync_counter[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[27]~DUPLICATE_q\,
	cin => \Add4~66\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\);

-- Location: FF_X68_Y1_N22
\hsync_counter[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~45_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[27]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y1_N24
\Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~57_sumout\ = SUM(( \hsync_counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~46\ ))
-- \Add4~58\ = CARRY(( \hsync_counter[28]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hsync_counter[28]~DUPLICATE_q\,
	cin => \Add4~46\,
	sumout => \Add4~57_sumout\,
	cout => \Add4~58\);

-- Location: FF_X68_Y1_N25
\hsync_counter[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~57_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[28]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y1_N27
\Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( \hsync_counter[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~58\ ))
-- \Add4~54\ = CARRY(( \hsync_counter[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[29]~DUPLICATE_q\,
	cin => \Add4~58\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\);

-- Location: FF_X68_Y1_N28
\hsync_counter[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~53_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[29]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y1_N30
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( \hsync_counter[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~54\ ))
-- \Add4~50\ = CARRY(( \hsync_counter[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_hsync_counter[30]~DUPLICATE_q\,
	cin => \Add4~54\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\);

-- Location: FF_X68_Y1_N31
\hsync_counter[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~49_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[30]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y1_N33
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( hsync_counter(31) ) + ( GND ) + ( \Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(31),
	cin => \Add4~50\,
	sumout => \Add4~5_sumout\);

-- Location: FF_X68_Y1_N35
\hsync_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~5_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(31));

-- Location: LABCELL_X67_Y2_N3
\Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = ( !hsync_counter(1) & ( !hsync_counter(31) & ( (!hsync_counter(0) & !\hsync_counter[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(0),
	datac => \ALT_INV_hsync_counter[2]~DUPLICATE_q\,
	datae => ALT_INV_hsync_counter(1),
	dataf => ALT_INV_hsync_counter(31),
	combout => \Equal2~4_combout\);

-- Location: LABCELL_X67_Y2_N39
\Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = ( \Equal2~4_combout\ & ( !hsync_counter(4) & ( (hsync_counter(5) & (!hsync_counter(3) & \hsync_counter[10]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(5),
	datac => ALT_INV_hsync_counter(3),
	datad => \ALT_INV_hsync_counter[10]~DUPLICATE_q\,
	datae => \ALT_INV_Equal2~4_combout\,
	dataf => ALT_INV_hsync_counter(4),
	combout => \Equal2~5_combout\);

-- Location: FF_X68_Y1_N2
\hsync_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~9_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(20));

-- Location: FF_X68_Y1_N17
\hsync_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~69_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(25));

-- Location: FF_X68_Y1_N14
\hsync_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~73_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(24));

-- Location: FF_X68_Y1_N7
\hsync_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~81_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(22));

-- Location: FF_X68_Y1_N11
\hsync_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~77_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(23));

-- Location: LABCELL_X68_Y1_N39
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( !hsync_counter(23) & ( (!hsync_counter(21) & (!hsync_counter(25) & (!hsync_counter(24) & !hsync_counter(22)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(21),
	datab => ALT_INV_hsync_counter(25),
	datac => ALT_INV_hsync_counter(24),
	datad => ALT_INV_hsync_counter(22),
	dataf => ALT_INV_hsync_counter(23),
	combout => \Equal2~2_combout\);

-- Location: FF_X68_Y1_N29
\hsync_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~53_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(29));

-- Location: FF_X68_Y1_N32
\hsync_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~49_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(30));

-- Location: FF_X68_Y1_N23
\hsync_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~45_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(27));

-- Location: FF_X68_Y1_N26
\hsync_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~57_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(28));

-- Location: LABCELL_X68_Y1_N54
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !hsync_counter(27) & ( !hsync_counter(28) & ( (!hsync_counter(29) & (!hsync_counter(18) & (!hsync_counter(26) & !hsync_counter(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(29),
	datab => ALT_INV_hsync_counter(18),
	datac => ALT_INV_hsync_counter(26),
	datad => ALT_INV_hsync_counter(30),
	datae => ALT_INV_hsync_counter(27),
	dataf => ALT_INV_hsync_counter(28),
	combout => \Equal2~1_combout\);

-- Location: FF_X68_Y2_N41
\hsync_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~41_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(13));

-- Location: FF_X68_Y2_N47
\hsync_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~33_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(15));

-- Location: LABCELL_X67_Y2_N21
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !hsync_counter(17) & ( !hsync_counter(15) & ( (!hsync_counter(14) & (!hsync_counter(19) & (!hsync_counter(16) & !hsync_counter(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(14),
	datab => ALT_INV_hsync_counter(19),
	datac => ALT_INV_hsync_counter(16),
	datad => ALT_INV_hsync_counter(13),
	datae => ALT_INV_hsync_counter(17),
	dataf => ALT_INV_hsync_counter(15),
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X68_Y1_N48
\Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = ( \Equal2~1_combout\ & ( \Equal2~0_combout\ & ( (!hsync_counter(20) & (!hsync_counter(11) & (!hsync_counter(12) & \Equal2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(20),
	datab => ALT_INV_hsync_counter(11),
	datac => ALT_INV_hsync_counter(12),
	datad => \ALT_INV_Equal2~2_combout\,
	datae => \ALT_INV_Equal2~1_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \Equal2~3_combout\);

-- Location: LABCELL_X68_Y1_N45
\Equal2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = ( \Equal2~5_combout\ & ( \Equal2~3_combout\ & ( (!\hsync_counter[6]~DUPLICATE_q\ & \LessThan5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[6]~DUPLICATE_q\,
	datad => \ALT_INV_LessThan5~0_combout\,
	datae => \ALT_INV_Equal2~5_combout\,
	dataf => \ALT_INV_Equal2~3_combout\,
	combout => \Equal2~6_combout\);

-- Location: FF_X68_Y2_N31
\hsync_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~113_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(10));

-- Location: FF_X68_Y2_N32
\hsync_counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~113_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[10]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y2_N57
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( !hsync_counter(3) & ( hsync_counter(5) & ( (!\hsync_counter[10]~DUPLICATE_q\ & !hsync_counter(4)) ) ) ) # ( hsync_counter(3) & ( !hsync_counter(5) & ( !\hsync_counter[10]~DUPLICATE_q\ ) ) ) # ( !hsync_counter(3) & ( 
-- !hsync_counter(5) & ( !\hsync_counter[10]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010001000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[10]~DUPLICATE_q\,
	datab => ALT_INV_hsync_counter(4),
	datae => ALT_INV_hsync_counter(3),
	dataf => ALT_INV_hsync_counter(5),
	combout => \LessThan3~0_combout\);

-- Location: FF_X68_Y1_N34
\hsync_counter[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~5_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[31]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y2_N24
\LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = ( \LessThan5~0_combout\ & ( (!\hsync_counter[31]~DUPLICATE_q\ & ((!\LessThan3~0_combout\) # ((!\Equal2~3_combout\) # (hsync_counter(6))))) ) ) # ( !\LessThan5~0_combout\ & ( !\hsync_counter[31]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100100011001100110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~0_combout\,
	datab => \ALT_INV_hsync_counter[31]~DUPLICATE_q\,
	datac => ALT_INV_hsync_counter(6),
	datad => \ALT_INV_Equal2~3_combout\,
	dataf => \ALT_INV_LessThan5~0_combout\,
	combout => \LessThan3~1_combout\);

-- Location: FF_X67_Y2_N26
\display_hsd~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \LessThan3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_hsd~reg0_q\);

-- Location: FF_X66_Y2_N7
\vsync_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~113_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(2));

-- Location: LABCELL_X66_Y2_N0
\Add5~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~121_sumout\ = SUM(( vsync_counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add5~122\ = CARRY(( vsync_counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(0),
	cin => GND,
	sumout => \Add5~121_sumout\,
	cout => \Add5~122\);

-- Location: FF_X66_Y2_N2
\vsync_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~121_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(0));

-- Location: LABCELL_X66_Y2_N3
\Add5~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~125_sumout\ = SUM(( vsync_counter(1) ) + ( GND ) + ( \Add5~122\ ))
-- \Add5~126\ = CARRY(( vsync_counter(1) ) + ( GND ) + ( \Add5~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(1),
	cin => \Add5~122\,
	sumout => \Add5~125_sumout\,
	cout => \Add5~126\);

-- Location: FF_X66_Y2_N4
\vsync_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~125_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(1));

-- Location: LABCELL_X66_Y2_N6
\Add5~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~113_sumout\ = SUM(( vsync_counter(2) ) + ( GND ) + ( \Add5~126\ ))
-- \Add5~114\ = CARRY(( vsync_counter(2) ) + ( GND ) + ( \Add5~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(2),
	cin => \Add5~126\,
	sumout => \Add5~113_sumout\,
	cout => \Add5~114\);

-- Location: FF_X66_Y2_N8
\vsync_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~113_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y2_N9
\Add5~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~109_sumout\ = SUM(( \vsync_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~114\ ))
-- \Add5~110\ = CARRY(( \vsync_counter[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[3]~DUPLICATE_q\,
	cin => \Add5~114\,
	sumout => \Add5~109_sumout\,
	cout => \Add5~110\);

-- Location: FF_X66_Y2_N11
\vsync_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~109_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y2_N12
\Add5~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~105_sumout\ = SUM(( vsync_counter(4) ) + ( GND ) + ( \Add5~110\ ))
-- \Add5~106\ = CARRY(( vsync_counter(4) ) + ( GND ) + ( \Add5~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(4),
	cin => \Add5~110\,
	sumout => \Add5~105_sumout\,
	cout => \Add5~106\);

-- Location: FF_X67_Y2_N59
\vsync_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \Add5~105_sumout\,
	sclr => \Equal3~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(4));

-- Location: LABCELL_X66_Y2_N15
\Add5~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~89_sumout\ = SUM(( vsync_counter(5) ) + ( GND ) + ( \Add5~106\ ))
-- \Add5~90\ = CARRY(( vsync_counter(5) ) + ( GND ) + ( \Add5~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(5),
	cin => \Add5~106\,
	sumout => \Add5~89_sumout\,
	cout => \Add5~90\);

-- Location: FF_X66_Y2_N17
\vsync_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~89_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(5));

-- Location: LABCELL_X66_Y2_N18
\Add5~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~101_sumout\ = SUM(( vsync_counter(6) ) + ( GND ) + ( \Add5~90\ ))
-- \Add5~102\ = CARRY(( vsync_counter(6) ) + ( GND ) + ( \Add5~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(6),
	cin => \Add5~90\,
	sumout => \Add5~101_sumout\,
	cout => \Add5~102\);

-- Location: FF_X66_Y2_N19
\vsync_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~101_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(6));

-- Location: LABCELL_X66_Y2_N21
\Add5~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~97_sumout\ = SUM(( vsync_counter(7) ) + ( GND ) + ( \Add5~102\ ))
-- \Add5~98\ = CARRY(( vsync_counter(7) ) + ( GND ) + ( \Add5~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(7),
	cin => \Add5~102\,
	sumout => \Add5~97_sumout\,
	cout => \Add5~98\);

-- Location: FF_X66_Y2_N23
\vsync_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~97_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(7));

-- Location: LABCELL_X66_Y2_N24
\Add5~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~93_sumout\ = SUM(( vsync_counter(8) ) + ( GND ) + ( \Add5~98\ ))
-- \Add5~94\ = CARRY(( vsync_counter(8) ) + ( GND ) + ( \Add5~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(8),
	cin => \Add5~98\,
	sumout => \Add5~93_sumout\,
	cout => \Add5~94\);

-- Location: FF_X66_Y2_N25
\vsync_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~93_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(8));

-- Location: MLABCELL_X65_Y1_N54
\Equal3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = ( !vsync_counter(8) & ( (!vsync_counter(5) & (!vsync_counter(6) & !vsync_counter(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vsync_counter(5),
	datac => ALT_INV_vsync_counter(6),
	datad => ALT_INV_vsync_counter(7),
	datae => ALT_INV_vsync_counter(8),
	combout => \Equal3~5_combout\);

-- Location: FF_X66_Y2_N29
\vsync_counter[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~117_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[9]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y2_N27
\Add5~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~117_sumout\ = SUM(( \vsync_counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~94\ ))
-- \Add5~118\ = CARRY(( \vsync_counter[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[9]~DUPLICATE_q\,
	cin => \Add5~94\,
	sumout => \Add5~117_sumout\,
	cout => \Add5~118\);

-- Location: FF_X66_Y2_N28
\vsync_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~117_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(9));

-- Location: FF_X66_Y1_N35
\vsync_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~1_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(31));

-- Location: LABCELL_X66_Y2_N30
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( \vsync_counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~118\ ))
-- \Add5~22\ = CARRY(( \vsync_counter[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_vsync_counter[10]~DUPLICATE_q\,
	cin => \Add5~118\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: LABCELL_X67_Y2_N30
\vsync_counter[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \vsync_counter[10]~feeder_combout\ = ( \Add5~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~21_sumout\,
	combout => \vsync_counter[10]~feeder_combout\);

-- Location: FF_X67_Y2_N31
\vsync_counter[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \vsync_counter[10]~feeder_combout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[10]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y2_N33
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( vsync_counter(11) ) + ( GND ) + ( \Add5~22\ ))
-- \Add5~18\ = CARRY(( vsync_counter(11) ) + ( GND ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(11),
	cin => \Add5~22\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X66_Y2_N34
\vsync_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~17_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(11));

-- Location: LABCELL_X66_Y2_N36
\Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( vsync_counter(12) ) + ( GND ) + ( \Add5~18\ ))
-- \Add5~50\ = CARRY(( vsync_counter(12) ) + ( GND ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(12),
	cin => \Add5~18\,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\);

-- Location: FF_X66_Y2_N38
\vsync_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~49_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(12));

-- Location: LABCELL_X66_Y2_N39
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( vsync_counter(13) ) + ( GND ) + ( \Add5~50\ ))
-- \Add5~14\ = CARRY(( vsync_counter(13) ) + ( GND ) + ( \Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(13),
	cin => \Add5~50\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X66_Y2_N40
\vsync_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~13_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(13));

-- Location: LABCELL_X66_Y2_N42
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( vsync_counter(14) ) + ( GND ) + ( \Add5~14\ ))
-- \Add5~46\ = CARRY(( vsync_counter(14) ) + ( GND ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(14),
	cin => \Add5~14\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: FF_X66_Y2_N43
\vsync_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~45_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(14));

-- Location: LABCELL_X66_Y2_N45
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( \vsync_counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~46\ ))
-- \Add5~42\ = CARRY(( \vsync_counter[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[15]~DUPLICATE_q\,
	cin => \Add5~46\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: FF_X66_Y2_N47
\vsync_counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~41_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[15]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y2_N48
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( vsync_counter(16) ) + ( GND ) + ( \Add5~42\ ))
-- \Add5~38\ = CARRY(( vsync_counter(16) ) + ( GND ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(16),
	cin => \Add5~42\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: FF_X66_Y2_N49
\vsync_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~37_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(16));

-- Location: LABCELL_X66_Y2_N51
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( vsync_counter(17) ) + ( GND ) + ( \Add5~38\ ))
-- \Add5~34\ = CARRY(( vsync_counter(17) ) + ( GND ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(17),
	cin => \Add5~38\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: FF_X66_Y2_N52
\vsync_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~33_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(17));

-- Location: LABCELL_X66_Y2_N54
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( vsync_counter(18) ) + ( GND ) + ( \Add5~34\ ))
-- \Add5~30\ = CARRY(( vsync_counter(18) ) + ( GND ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(18),
	cin => \Add5~34\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X66_Y2_N55
\vsync_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~29_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(18));

-- Location: LABCELL_X66_Y2_N57
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( \vsync_counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~30\ ))
-- \Add5~26\ = CARRY(( \vsync_counter[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[19]~DUPLICATE_q\,
	cin => \Add5~30\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X66_Y2_N59
\vsync_counter[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~25_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[19]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y1_N0
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( \vsync_counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~26\ ))
-- \Add5~10\ = CARRY(( \vsync_counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[20]~DUPLICATE_q\,
	cin => \Add5~26\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: LABCELL_X66_Y1_N3
\Add5~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~85_sumout\ = SUM(( \vsync_counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~10\ ))
-- \Add5~86\ = CARRY(( \vsync_counter[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[21]~DUPLICATE_q\,
	cin => \Add5~10\,
	sumout => \Add5~85_sumout\,
	cout => \Add5~86\);

-- Location: FF_X66_Y1_N4
\vsync_counter[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~85_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[21]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y1_N6
\Add5~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~81_sumout\ = SUM(( vsync_counter(22) ) + ( GND ) + ( \Add5~86\ ))
-- \Add5~82\ = CARRY(( vsync_counter(22) ) + ( GND ) + ( \Add5~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(22),
	cin => \Add5~86\,
	sumout => \Add5~81_sumout\,
	cout => \Add5~82\);

-- Location: FF_X66_Y1_N7
\vsync_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~81_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(22));

-- Location: LABCELL_X66_Y1_N9
\Add5~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~77_sumout\ = SUM(( \vsync_counter[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~82\ ))
-- \Add5~78\ = CARRY(( \vsync_counter[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_vsync_counter[23]~DUPLICATE_q\,
	cin => \Add5~82\,
	sumout => \Add5~77_sumout\,
	cout => \Add5~78\);

-- Location: FF_X66_Y1_N10
\vsync_counter[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~77_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[23]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y1_N12
\Add5~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~73_sumout\ = SUM(( vsync_counter(24) ) + ( GND ) + ( \Add5~78\ ))
-- \Add5~74\ = CARRY(( vsync_counter(24) ) + ( GND ) + ( \Add5~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_vsync_counter(24),
	cin => \Add5~78\,
	sumout => \Add5~73_sumout\,
	cout => \Add5~74\);

-- Location: FF_X66_Y1_N14
\vsync_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~73_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(24));

-- Location: LABCELL_X66_Y1_N15
\Add5~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~69_sumout\ = SUM(( \vsync_counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~74\ ))
-- \Add5~70\ = CARRY(( \vsync_counter[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add5~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vsync_counter[25]~DUPLICATE_q\,
	cin => \Add5~74\,
	sumout => \Add5~69_sumout\,
	cout => \Add5~70\);

-- Location: FF_X66_Y1_N16
\vsync_counter[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~69_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[25]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y1_N18
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( vsync_counter(26) ) + ( GND ) + ( \Add5~70\ ))
-- \Add5~6\ = CARRY(( vsync_counter(26) ) + ( GND ) + ( \Add5~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(26),
	cin => \Add5~70\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: FF_X66_Y1_N19
\vsync_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~5_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(26));

-- Location: LABCELL_X66_Y1_N21
\Add5~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~65_sumout\ = SUM(( vsync_counter(27) ) + ( GND ) + ( \Add5~6\ ))
-- \Add5~66\ = CARRY(( vsync_counter(27) ) + ( GND ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(27),
	cin => \Add5~6\,
	sumout => \Add5~65_sumout\,
	cout => \Add5~66\);

-- Location: FF_X66_Y1_N23
\vsync_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~65_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(27));

-- Location: LABCELL_X66_Y1_N24
\Add5~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~61_sumout\ = SUM(( vsync_counter(28) ) + ( GND ) + ( \Add5~66\ ))
-- \Add5~62\ = CARRY(( vsync_counter(28) ) + ( GND ) + ( \Add5~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vsync_counter(28),
	cin => \Add5~66\,
	sumout => \Add5~61_sumout\,
	cout => \Add5~62\);

-- Location: FF_X66_Y1_N26
\vsync_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~61_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(28));

-- Location: LABCELL_X66_Y1_N27
\Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~57_sumout\ = SUM(( vsync_counter(29) ) + ( GND ) + ( \Add5~62\ ))
-- \Add5~58\ = CARRY(( vsync_counter(29) ) + ( GND ) + ( \Add5~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(29),
	cin => \Add5~62\,
	sumout => \Add5~57_sumout\,
	cout => \Add5~58\);

-- Location: FF_X66_Y1_N29
\vsync_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~57_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(29));

-- Location: LABCELL_X66_Y1_N30
\Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( vsync_counter(30) ) + ( GND ) + ( \Add5~58\ ))
-- \Add5~54\ = CARRY(( vsync_counter(30) ) + ( GND ) + ( \Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(30),
	cin => \Add5~58\,
	sumout => \Add5~53_sumout\,
	cout => \Add5~54\);

-- Location: FF_X66_Y1_N32
\vsync_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~53_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(30));

-- Location: LABCELL_X66_Y1_N33
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( vsync_counter(31) ) + ( GND ) + ( \Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(31),
	cin => \Add5~54\,
	sumout => \Add5~1_sumout\);

-- Location: FF_X66_Y1_N34
\vsync_counter[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~1_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[31]~DUPLICATE_q\);

-- Location: FF_X66_Y2_N1
\vsync_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~121_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[0]~DUPLICATE_q\);

-- Location: FF_X66_Y2_N10
\vsync_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~109_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(3));

-- Location: LABCELL_X67_Y2_N42
\Equal3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = ( !vsync_counter(4) & ( vsync_counter(3) & ( (vsync_counter(9) & (!\vsync_counter[31]~DUPLICATE_q\ & \vsync_counter[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(9),
	datab => \ALT_INV_vsync_counter[31]~DUPLICATE_q\,
	datac => \ALT_INV_vsync_counter[0]~DUPLICATE_q\,
	datae => ALT_INV_vsync_counter(4),
	dataf => ALT_INV_vsync_counter(3),
	combout => \Equal3~6_combout\);

-- Location: LABCELL_X66_Y1_N48
\Equal3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = ( \Equal3~4_combout\ & ( (\vsync_counter[2]~DUPLICATE_q\ & (!vsync_counter(1) & (\Equal3~5_combout\ & \Equal3~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[2]~DUPLICATE_q\,
	datab => ALT_INV_vsync_counter(1),
	datac => \ALT_INV_Equal3~5_combout\,
	datad => \ALT_INV_Equal3~6_combout\,
	datae => \ALT_INV_Equal3~4_combout\,
	combout => \Equal3~7_combout\);

-- Location: FF_X66_Y1_N2
\vsync_counter[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~9_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync_counter[20]~DUPLICATE_q\);

-- Location: FF_X66_Y1_N1
\vsync_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~9_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(20));

-- Location: MLABCELL_X65_Y1_N12
\Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ( !vsync_counter(28) & ( (!vsync_counter(27) & (!vsync_counter(12) & (!vsync_counter(30) & !vsync_counter(29)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(27),
	datab => ALT_INV_vsync_counter(12),
	datac => ALT_INV_vsync_counter(30),
	datad => ALT_INV_vsync_counter(29),
	dataf => ALT_INV_vsync_counter(28),
	combout => \Equal3~2_combout\);

-- Location: FF_X66_Y1_N5
\vsync_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~85_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(21));

-- Location: FF_X66_Y1_N17
\vsync_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~69_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(25));

-- Location: FF_X66_Y1_N11
\vsync_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~77_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(23));

-- Location: LABCELL_X66_Y1_N36
\Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = ( !vsync_counter(22) & ( !vsync_counter(23) & ( (!vsync_counter(24) & (!vsync_counter(21) & !vsync_counter(25))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vsync_counter(24),
	datac => ALT_INV_vsync_counter(21),
	datad => ALT_INV_vsync_counter(25),
	datae => ALT_INV_vsync_counter(22),
	dataf => ALT_INV_vsync_counter(23),
	combout => \Equal3~3_combout\);

-- Location: FF_X67_Y2_N32
\vsync_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \vsync_counter[10]~feeder_combout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(10));

-- Location: LABCELL_X67_Y2_N27
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !vsync_counter(13) & ( (!vsync_counter(10) & !vsync_counter(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(10),
	datad => ALT_INV_vsync_counter(11),
	dataf => ALT_INV_vsync_counter(13),
	combout => \Equal3~0_combout\);

-- Location: FF_X66_Y2_N46
\vsync_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~41_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(15));

-- Location: FF_X66_Y2_N58
\vsync_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add5~25_sumout\,
	sclr => \Equal3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vsync_counter(19));

-- Location: LABCELL_X67_Y2_N12
\Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( !vsync_counter(16) & ( !vsync_counter(18) & ( (!vsync_counter(17) & (!vsync_counter(14) & (!vsync_counter(15) & !vsync_counter(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(17),
	datab => ALT_INV_vsync_counter(14),
	datac => ALT_INV_vsync_counter(15),
	datad => ALT_INV_vsync_counter(19),
	datae => ALT_INV_vsync_counter(16),
	dataf => ALT_INV_vsync_counter(18),
	combout => \Equal3~1_combout\);

-- Location: LABCELL_X66_Y1_N54
\Equal3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = ( \Equal3~0_combout\ & ( \Equal3~1_combout\ & ( (!vsync_counter(20) & (!vsync_counter(26) & (\Equal3~2_combout\ & \Equal3~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(20),
	datab => ALT_INV_vsync_counter(26),
	datac => \ALT_INV_Equal3~2_combout\,
	datad => \ALT_INV_Equal3~3_combout\,
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_Equal3~1_combout\,
	combout => \Equal3~4_combout\);

-- Location: MLABCELL_X65_Y1_N18
\LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( vsync_counter(4) & ( (!vsync_counter(3) & (!vsync_counter(9) & !\vsync_counter[2]~DUPLICATE_q\)) ) ) # ( !vsync_counter(4) & ( !vsync_counter(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(3),
	datac => ALT_INV_vsync_counter(9),
	datad => \ALT_INV_vsync_counter[2]~DUPLICATE_q\,
	dataf => ALT_INV_vsync_counter(4),
	combout => \LessThan4~0_combout\);

-- Location: MLABCELL_X65_Y1_N21
\LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ( \LessThan4~0_combout\ & ( (!vsync_counter(31) & ((!\Equal3~4_combout\) # (!\Equal3~5_combout\))) ) ) # ( !\LessThan4~0_combout\ & ( !vsync_counter(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal3~4_combout\,
	datac => \ALT_INV_Equal3~5_combout\,
	datad => ALT_INV_vsync_counter(31),
	dataf => \ALT_INV_LessThan4~0_combout\,
	combout => \LessThan4~1_combout\);

-- Location: FF_X65_Y1_N22
\display_vsd~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_vsd~reg0_q\);

-- Location: MLABCELL_X65_Y1_N39
\LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = ( vsync_counter(8) & ( (vsync_counter(5) & (vsync_counter(7) & vsync_counter(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_vsync_counter(5),
	datac => ALT_INV_vsync_counter(7),
	datad => ALT_INV_vsync_counter(6),
	datae => ALT_INV_vsync_counter(8),
	combout => \LessThan8~0_combout\);

-- Location: LABCELL_X66_Y1_N42
\LessThan8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = ( vsync_counter(4) & ( \LessThan8~0_combout\ & ( ((\vsync_counter[2]~DUPLICATE_q\ & vsync_counter(1))) # (vsync_counter(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vsync_counter[2]~DUPLICATE_q\,
	datab => ALT_INV_vsync_counter(1),
	datac => ALT_INV_vsync_counter(3),
	datae => ALT_INV_vsync_counter(4),
	dataf => \ALT_INV_LessThan8~0_combout\,
	combout => \LessThan8~1_combout\);

-- Location: FF_X68_Y2_N22
\hsync_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~97_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hsync_counter(7));

-- Location: FF_X68_Y2_N14
\hsync_counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \Add4~105_sumout\,
	sclr => \Equal2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync_counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y1_N21
\LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( !\hsync_counter[4]~DUPLICATE_q\ & ( !hsync_counter(5) & ( (!\hsync_counter[2]~DUPLICATE_q\) # ((!hsync_counter(1)) # (!hsync_counter(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hsync_counter[2]~DUPLICATE_q\,
	datac => ALT_INV_hsync_counter(1),
	datad => ALT_INV_hsync_counter(3),
	datae => \ALT_INV_hsync_counter[4]~DUPLICATE_q\,
	dataf => ALT_INV_hsync_counter(5),
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X67_Y1_N51
\LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = ( \hsync_counter[6]~DUPLICATE_q\ & ( (hsync_counter(9) & (hsync_counter(8) & ((!\LessThan6~0_combout\) # (hsync_counter(7))))) ) ) # ( !\hsync_counter[6]~DUPLICATE_q\ & ( (hsync_counter(9) & (hsync_counter(7) & hsync_counter(8))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000101000000010000010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(9),
	datab => ALT_INV_hsync_counter(7),
	datac => ALT_INV_hsync_counter(8),
	datad => \ALT_INV_LessThan6~0_combout\,
	dataf => \ALT_INV_hsync_counter[6]~DUPLICATE_q\,
	combout => \LessThan6~1_combout\);

-- Location: LABCELL_X67_Y1_N36
\process_3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_3~0_combout\ = ( !vsync_counter(9) & ( !hsync_counter(31) & ( (!\vsync_counter[31]~DUPLICATE_q\ & !hsync_counter(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_vsync_counter[31]~DUPLICATE_q\,
	datac => ALT_INV_hsync_counter(10),
	datae => ALT_INV_vsync_counter(9),
	dataf => ALT_INV_hsync_counter(31),
	combout => \process_3~0_combout\);

-- Location: LABCELL_X67_Y1_N0
\LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = ( !vsync_counter(8) & ( (!vsync_counter(6) & !vsync_counter(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_vsync_counter(6),
	datad => ALT_INV_vsync_counter(7),
	dataf => ALT_INV_vsync_counter(8),
	combout => \LessThan7~0_combout\);

-- Location: LABCELL_X67_Y1_N9
\LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = ( vsync_counter(3) & ( vsync_counter(1) & ( (vsync_counter(5) & (((\vsync_counter[0]~DUPLICATE_q\) # (vsync_counter(4))) # (vsync_counter(2)))) ) ) ) # ( !vsync_counter(3) & ( vsync_counter(1) & ( (vsync_counter(5) & 
-- vsync_counter(4)) ) ) ) # ( vsync_counter(3) & ( !vsync_counter(1) & ( (vsync_counter(5) & ((vsync_counter(4)) # (vsync_counter(2)))) ) ) ) # ( !vsync_counter(3) & ( !vsync_counter(1) & ( (vsync_counter(5) & vsync_counter(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100110001001100000011000000110001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_vsync_counter(2),
	datab => ALT_INV_vsync_counter(5),
	datac => ALT_INV_vsync_counter(4),
	datad => \ALT_INV_vsync_counter[0]~DUPLICATE_q\,
	datae => ALT_INV_vsync_counter(3),
	dataf => ALT_INV_vsync_counter(1),
	combout => \LessThan7~1_combout\);

-- Location: LABCELL_X67_Y1_N12
\LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = ( \hsync_counter[4]~DUPLICATE_q\ & ( !hsync_counter(5) & ( (!hsync_counter(3) & ((!\hsync_counter[2]~DUPLICATE_q\) # (!hsync_counter(1)))) ) ) ) # ( !\hsync_counter[4]~DUPLICATE_q\ & ( !hsync_counter(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hsync_counter(3),
	datac => \ALT_INV_hsync_counter[2]~DUPLICATE_q\,
	datad => ALT_INV_hsync_counter(1),
	datae => \ALT_INV_hsync_counter[4]~DUPLICATE_q\,
	dataf => ALT_INV_hsync_counter(5),
	combout => \LessThan5~1_combout\);

-- Location: LABCELL_X67_Y1_N57
\process_3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_3~1_combout\ = ( \LessThan7~1_combout\ & ( \LessThan5~1_combout\ & ( (\process_3~0_combout\ & !\LessThan5~0_combout\) ) ) ) # ( !\LessThan7~1_combout\ & ( \LessThan5~1_combout\ & ( (\process_3~0_combout\ & (!\LessThan5~0_combout\ & 
-- !\LessThan7~0_combout\)) ) ) ) # ( \LessThan7~1_combout\ & ( !\LessThan5~1_combout\ & ( (\process_3~0_combout\ & ((!\LessThan5~0_combout\) # (\hsync_counter[6]~DUPLICATE_q\))) ) ) ) # ( !\LessThan7~1_combout\ & ( !\LessThan5~1_combout\ & ( 
-- (\process_3~0_combout\ & (!\LessThan7~0_combout\ & ((!\LessThan5~0_combout\) # (\hsync_counter[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000000010001010100010101000100000000000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_3~0_combout\,
	datab => \ALT_INV_LessThan5~0_combout\,
	datac => \ALT_INV_hsync_counter[6]~DUPLICATE_q\,
	datad => \ALT_INV_LessThan7~0_combout\,
	datae => \ALT_INV_LessThan7~1_combout\,
	dataf => \ALT_INV_LessThan5~1_combout\,
	combout => \process_3~1_combout\);

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

-- Location: FF_X71_Y3_N7
\pixel_buffer[3][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[4]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][3][4]~q\);

-- Location: FF_X67_Y1_N41
\blue[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][4]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(4));

-- Location: LABCELL_X67_Y1_N27
\DISPLAY_BLUE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_BLUE~0_combout\ = ( \process_3~1_combout\ & ( blue(4) & ( (\Equal3~4_combout\ & (\Equal2~3_combout\ & (!\LessThan8~1_combout\ & !\LessThan6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~4_combout\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => \ALT_INV_LessThan8~1_combout\,
	datad => \ALT_INV_LessThan6~1_combout\,
	datae => \ALT_INV_process_3~1_combout\,
	dataf => ALT_INV_blue(4),
	combout => \DISPLAY_BLUE~0_combout\);

-- Location: FF_X67_Y1_N31
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

-- Location: FF_X71_Y3_N26
\pixel_buffer[3][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[5]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][3][5]~q\);

-- Location: FF_X67_Y1_N8
\blue[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][5]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(5));

-- Location: LABCELL_X67_Y1_N42
\DISPLAY_BLUE~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_BLUE~1_combout\ = ( \process_3~1_combout\ & ( blue(5) & ( (\Equal3~4_combout\ & (\Equal2~3_combout\ & (!\LessThan6~1_combout\ & !\LessThan8~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~4_combout\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => \ALT_INV_LessThan6~1_combout\,
	datad => \ALT_INV_LessThan8~1_combout\,
	datae => \ALT_INV_process_3~1_combout\,
	dataf => ALT_INV_blue(5),
	combout => \DISPLAY_BLUE~1_combout\);

-- Location: FF_X66_Y1_N40
\DISPLAY_BLUE[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[1]~reg0_q\);

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

-- Location: FF_X71_Y3_N16
\pixel_buffer[3][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[6]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][3][6]~q\);

-- Location: FF_X67_Y1_N20
\blue[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][6]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(6));

-- Location: LABCELL_X67_Y1_N45
\DISPLAY_BLUE~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_BLUE~2_combout\ = ( \process_3~1_combout\ & ( blue(6) & ( (\Equal3~4_combout\ & (\Equal2~3_combout\ & (!\LessThan8~1_combout\ & !\LessThan6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~4_combout\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => \ALT_INV_LessThan8~1_combout\,
	datad => \ALT_INV_LessThan6~1_combout\,
	datae => \ALT_INV_process_3~1_combout\,
	dataf => ALT_INV_blue(6),
	combout => \DISPLAY_BLUE~2_combout\);

-- Location: FF_X67_Y1_N59
\DISPLAY_BLUE[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[2]~reg0_q\);

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

-- Location: FF_X71_Y3_N22
\pixel_buffer[3][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[7]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][3][7]~q\);

-- Location: FF_X67_Y1_N17
\blue[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][7]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(7));

-- Location: LABCELL_X67_Y1_N24
\DISPLAY_BLUE~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_BLUE~3_combout\ = ( \process_3~1_combout\ & ( blue(7) & ( (\Equal3~4_combout\ & (\Equal2~3_combout\ & (!\LessThan6~1_combout\ & !\LessThan8~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~4_combout\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => \ALT_INV_LessThan6~1_combout\,
	datad => \ALT_INV_LessThan8~1_combout\,
	datae => \ALT_INV_process_3~1_combout\,
	dataf => ALT_INV_blue(7),
	combout => \DISPLAY_BLUE~3_combout\);

-- Location: FF_X68_Y1_N37
\DISPLAY_BLUE[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[3]~reg0_q\);

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

-- Location: FF_X71_Y3_N43
\pixel_buffer[3][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[8]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][3][8]~q\);

-- Location: FF_X67_Y1_N50
\blue[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][8]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(8));

-- Location: LABCELL_X67_Y1_N33
\DISPLAY_BLUE~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_BLUE~4_combout\ = ( \process_3~1_combout\ & ( blue(8) & ( (!\LessThan6~1_combout\ & (!\LessThan8~1_combout\ & (\Equal2~3_combout\ & \Equal3~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~1_combout\,
	datab => \ALT_INV_LessThan8~1_combout\,
	datac => \ALT_INV_Equal2~3_combout\,
	datad => \ALT_INV_Equal3~4_combout\,
	datae => \ALT_INV_process_3~1_combout\,
	dataf => ALT_INV_blue(8),
	combout => \DISPLAY_BLUE~4_combout\);

-- Location: FF_X65_Y1_N49
\DISPLAY_BLUE[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[4]~reg0_q\);

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

-- Location: LABCELL_X71_Y3_N45
\pixel_buffer[3][3][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[3][3][9]~feeder_combout\ = ( \CMOS_IN[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[9]~input_o\,
	combout => \pixel_buffer[3][3][9]~feeder_combout\);

-- Location: FF_X71_Y3_N47
\pixel_buffer[3][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[3][3][9]~feeder_combout\,
	ena => \pixel_buffer[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][3][9]~q\);

-- Location: FF_X65_Y1_N35
\blue[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][9]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(9));

-- Location: MLABCELL_X65_Y1_N45
\DISPLAY_BLUE~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_BLUE~5_combout\ = ( \Equal3~4_combout\ & ( blue(9) & ( (!\LessThan6~1_combout\ & (\Equal2~3_combout\ & (!\LessThan8~1_combout\ & \process_3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~1_combout\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => \ALT_INV_LessThan8~1_combout\,
	datad => \ALT_INV_process_3~1_combout\,
	datae => \ALT_INV_Equal3~4_combout\,
	dataf => ALT_INV_blue(9),
	combout => \DISPLAY_BLUE~5_combout\);

-- Location: FF_X65_Y1_N43
\DISPLAY_BLUE[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[5]~reg0_q\);

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

-- Location: FF_X71_Y3_N28
\pixel_buffer[3][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[10]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][3][10]~q\);

-- Location: FF_X65_Y1_N8
\blue[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][10]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(10));

-- Location: MLABCELL_X65_Y1_N3
\DISPLAY_BLUE~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_BLUE~6_combout\ = ( \Equal3~4_combout\ & ( blue(10) & ( (!\LessThan6~1_combout\ & (\Equal2~3_combout\ & (!\LessThan8~1_combout\ & \process_3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~1_combout\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => \ALT_INV_LessThan8~1_combout\,
	datad => \ALT_INV_process_3~1_combout\,
	datae => \ALT_INV_Equal3~4_combout\,
	dataf => ALT_INV_blue(10),
	combout => \DISPLAY_BLUE~6_combout\);

-- Location: FF_X65_Y1_N16
\DISPLAY_BLUE[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[6]~reg0_q\);

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

-- Location: FF_X71_Y3_N56
\pixel_buffer[3][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[11]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][3][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][3][11]~q\);

-- Location: FF_X65_Y1_N26
\blue[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \pixel_buffer[3][3][11]~q\,
	sload => VCC,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blue(11));

-- Location: MLABCELL_X65_Y1_N51
\DISPLAY_BLUE~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_BLUE~7_combout\ = ( \Equal3~4_combout\ & ( blue(11) & ( (!\LessThan6~1_combout\ & (\Equal2~3_combout\ & (!\LessThan8~1_combout\ & \process_3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~1_combout\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => \ALT_INV_LessThan8~1_combout\,
	datad => \ALT_INV_process_3~1_combout\,
	datae => \ALT_INV_Equal3~4_combout\,
	dataf => ALT_INV_blue(11),
	combout => \DISPLAY_BLUE~7_combout\);

-- Location: FF_X65_Y1_N58
\DISPLAY_BLUE[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_BLUE[7]~reg0_q\);

-- Location: FF_X67_Y1_N56
\DISPLAY_RED[0]~reg0\ : dffeas
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
	q => \DISPLAY_RED[0]~reg0_q\);

-- Location: FF_X66_Y1_N46
\DISPLAY_RED[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[1]~reg0_q\);

-- Location: FF_X66_Y1_N52
\DISPLAY_RED[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[2]~reg0_q\);

-- Location: FF_X66_Y1_N58
\DISPLAY_RED[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[3]~reg0_q\);

-- Location: FF_X68_Y1_N52
\DISPLAY_RED[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[4]~reg0_q\);

-- Location: FF_X65_Y1_N2
\DISPLAY_RED[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[5]~reg0_q\);

-- Location: FF_X65_Y1_N14
\DISPLAY_RED[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[6]~reg0_q\);

-- Location: FF_X65_Y1_N38
\DISPLAY_RED[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => \DISPLAY_BLUE~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_RED[7]~reg0_q\);

-- Location: FF_X72_Y3_N40
\pixel_buffer[2][3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[5]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[2][3][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[2][3][5]~q\);

-- Location: MLABCELL_X72_Y3_N33
\pixel_buffer[3][2][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[3][2][5]~feeder_combout\ = ( \CMOS_IN[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[5]~input_o\,
	combout => \pixel_buffer[3][2][5]~feeder_combout\);

-- Location: FF_X72_Y3_N34
\pixel_buffer[3][2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[3][2][5]~feeder_combout\,
	ena => \pixel_buffer[3][2][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][2][5]~q\);

-- Location: FF_X72_Y3_N49
\pixel_buffer[3][2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[4]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][2][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][2][4]~q\);

-- Location: FF_X72_Y3_N25
\pixel_buffer[2][3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[4]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[2][3][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[2][3][4]~q\);

-- Location: LABCELL_X68_Y3_N12
\Add3~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~50_cout\ = CARRY(( \pixel_buffer[2][3][4]~q\ ) + ( \pixel_buffer[3][2][4]~q\ ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pixel_buffer[3][2][4]~q\,
	datad => \ALT_INV_pixel_buffer[2][3][4]~q\,
	cin => \Add3~10\,
	cout => \Add3~50_cout\);

-- Location: LABCELL_X68_Y3_N15
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( \pixel_buffer[3][2][5]~q\ ) + ( \pixel_buffer[2][3][5]~q\ ) + ( \Add3~50_cout\ ))
-- \Add3~18\ = CARRY(( \pixel_buffer[3][2][5]~q\ ) + ( \pixel_buffer[2][3][5]~q\ ) + ( \Add3~50_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pixel_buffer[2][3][5]~q\,
	datad => \ALT_INV_pixel_buffer[3][2][5]~q\,
	cin => \Add3~50_cout\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: FF_X68_Y3_N17
\green[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add3~17_sumout\,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(4));

-- Location: LABCELL_X68_Y3_N54
\DISPLAY_GREEN[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_GREEN[0]~reg0feeder_combout\ = ( green(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_green(4),
	combout => \DISPLAY_GREEN[0]~reg0feeder_combout\);

-- Location: LABCELL_X67_Y1_N3
\process_3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_3~2_combout\ = ( \Equal3~4_combout\ & ( ((!\Equal2~3_combout\) # ((!\process_3~1_combout\) # (\LessThan8~1_combout\))) # (\LessThan6~1_combout\) ) ) # ( !\Equal3~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~1_combout\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => \ALT_INV_LessThan8~1_combout\,
	datad => \ALT_INV_process_3~1_combout\,
	dataf => \ALT_INV_Equal3~4_combout\,
	combout => \process_3~2_combout\);

-- Location: FF_X68_Y3_N55
\DISPLAY_GREEN[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \DISPLAY_GREEN[0]~reg0feeder_combout\,
	sclr => \process_3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[0]~reg0_q\);

-- Location: MLABCELL_X72_Y3_N54
\pixel_buffer[2][3][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[2][3][6]~feeder_combout\ = ( \CMOS_IN[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[6]~input_o\,
	combout => \pixel_buffer[2][3][6]~feeder_combout\);

-- Location: FF_X72_Y3_N55
\pixel_buffer[2][3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[2][3][6]~feeder_combout\,
	ena => \pixel_buffer[2][3][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[2][3][6]~q\);

-- Location: MLABCELL_X72_Y3_N0
\pixel_buffer[3][2][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[3][2][6]~feeder_combout\ = ( \CMOS_IN[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[6]~input_o\,
	combout => \pixel_buffer[3][2][6]~feeder_combout\);

-- Location: FF_X72_Y3_N1
\pixel_buffer[3][2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[3][2][6]~feeder_combout\,
	ena => \pixel_buffer[3][2][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][2][6]~q\);

-- Location: LABCELL_X68_Y3_N18
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( \pixel_buffer[3][2][6]~q\ ) + ( \pixel_buffer[2][3][6]~q\ ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( \pixel_buffer[3][2][6]~q\ ) + ( \pixel_buffer[2][3][6]~q\ ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pixel_buffer[2][3][6]~q\,
	datad => \ALT_INV_pixel_buffer[3][2][6]~q\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: FF_X68_Y3_N20
\green[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add3~21_sumout\,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(5));

-- Location: LABCELL_X68_Y3_N48
\DISPLAY_GREEN[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_GREEN[1]~reg0feeder_combout\ = ( green(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_green(5),
	combout => \DISPLAY_GREEN[1]~reg0feeder_combout\);

-- Location: FF_X68_Y3_N49
\DISPLAY_GREEN[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \DISPLAY_GREEN[1]~reg0feeder_combout\,
	sclr => \process_3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[1]~reg0_q\);

-- Location: FF_X72_Y3_N16
\pixel_buffer[2][3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[7]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[2][3][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[2][3][7]~q\);

-- Location: FF_X72_Y3_N4
\pixel_buffer[3][2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[7]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][2][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][2][7]~q\);

-- Location: LABCELL_X68_Y3_N21
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( \pixel_buffer[3][2][7]~q\ ) + ( \pixel_buffer[2][3][7]~q\ ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( \pixel_buffer[3][2][7]~q\ ) + ( \pixel_buffer[2][3][7]~q\ ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pixel_buffer[2][3][7]~q\,
	datad => \ALT_INV_pixel_buffer[3][2][7]~q\,
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: FF_X68_Y3_N22
\green[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add3~25_sumout\,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(6));

-- Location: LABCELL_X68_Y3_N45
\DISPLAY_GREEN[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_GREEN[2]~reg0feeder_combout\ = ( green(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_green(6),
	combout => \DISPLAY_GREEN[2]~reg0feeder_combout\);

-- Location: FF_X68_Y3_N46
\DISPLAY_GREEN[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \DISPLAY_GREEN[2]~reg0feeder_combout\,
	sclr => \process_3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[2]~reg0_q\);

-- Location: MLABCELL_X72_Y3_N12
\pixel_buffer[2][3][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[2][3][8]~feeder_combout\ = ( \CMOS_IN[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[8]~input_o\,
	combout => \pixel_buffer[2][3][8]~feeder_combout\);

-- Location: FF_X72_Y3_N13
\pixel_buffer[2][3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[2][3][8]~feeder_combout\,
	ena => \pixel_buffer[2][3][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[2][3][8]~q\);

-- Location: MLABCELL_X72_Y3_N18
\pixel_buffer[3][2][8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[3][2][8]~feeder_combout\ = ( \CMOS_IN[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[8]~input_o\,
	combout => \pixel_buffer[3][2][8]~feeder_combout\);

-- Location: FF_X72_Y3_N19
\pixel_buffer[3][2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[3][2][8]~feeder_combout\,
	ena => \pixel_buffer[3][2][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][2][8]~q\);

-- Location: LABCELL_X68_Y3_N24
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( \pixel_buffer[3][2][8]~q\ ) + ( \pixel_buffer[2][3][8]~q\ ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( \pixel_buffer[3][2][8]~q\ ) + ( \pixel_buffer[2][3][8]~q\ ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pixel_buffer[2][3][8]~q\,
	datad => \ALT_INV_pixel_buffer[3][2][8]~q\,
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: FF_X68_Y3_N26
\green[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add3~29_sumout\,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(7));

-- Location: LABCELL_X68_Y3_N51
\DISPLAY_GREEN[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_GREEN[3]~reg0feeder_combout\ = ( green(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_green(7),
	combout => \DISPLAY_GREEN[3]~reg0feeder_combout\);

-- Location: FF_X68_Y3_N52
\DISPLAY_GREEN[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \DISPLAY_GREEN[3]~reg0feeder_combout\,
	sclr => \process_3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[3]~reg0_q\);

-- Location: MLABCELL_X72_Y3_N27
\pixel_buffer[2][3][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[2][3][9]~feeder_combout\ = ( \CMOS_IN[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[9]~input_o\,
	combout => \pixel_buffer[2][3][9]~feeder_combout\);

-- Location: FF_X72_Y3_N28
\pixel_buffer[2][3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[2][3][9]~feeder_combout\,
	ena => \pixel_buffer[2][3][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[2][3][9]~q\);

-- Location: MLABCELL_X72_Y3_N21
\pixel_buffer[3][2][9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[3][2][9]~feeder_combout\ = ( \CMOS_IN[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[9]~input_o\,
	combout => \pixel_buffer[3][2][9]~feeder_combout\);

-- Location: FF_X72_Y3_N23
\pixel_buffer[3][2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[3][2][9]~feeder_combout\,
	ena => \pixel_buffer[3][2][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][2][9]~q\);

-- Location: LABCELL_X68_Y3_N27
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( \pixel_buffer[3][2][9]~q\ ) + ( \pixel_buffer[2][3][9]~q\ ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( \pixel_buffer[3][2][9]~q\ ) + ( \pixel_buffer[2][3][9]~q\ ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pixel_buffer[2][3][9]~q\,
	datac => \ALT_INV_pixel_buffer[3][2][9]~q\,
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: FF_X68_Y3_N29
\green[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add3~33_sumout\,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(8));

-- Location: FF_X68_Y3_N56
\DISPLAY_GREEN[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => green(8),
	sclr => \process_3~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[4]~reg0_q\);

-- Location: FF_X72_Y3_N38
\pixel_buffer[2][3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[10]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[2][3][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[2][3][10]~q\);

-- Location: MLABCELL_X72_Y3_N6
\pixel_buffer[3][2][10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pixel_buffer[3][2][10]~feeder_combout\ = ( \CMOS_IN[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_CMOS_IN[10]~input_o\,
	combout => \pixel_buffer[3][2][10]~feeder_combout\);

-- Location: FF_X72_Y3_N7
\pixel_buffer[3][2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \pixel_buffer[3][2][10]~feeder_combout\,
	ena => \pixel_buffer[3][2][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][2][10]~q\);

-- Location: LABCELL_X68_Y3_N30
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( \pixel_buffer[3][2][10]~q\ ) + ( \pixel_buffer[2][3][10]~q\ ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( \pixel_buffer[3][2][10]~q\ ) + ( \pixel_buffer[2][3][10]~q\ ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pixel_buffer[2][3][10]~q\,
	datad => \ALT_INV_pixel_buffer[3][2][10]~q\,
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: FF_X68_Y3_N32
\green[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add3~37_sumout\,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(9));

-- Location: LABCELL_X68_Y3_N57
\DISPLAY_GREEN[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISPLAY_GREEN[5]~reg0feeder_combout\ = ( green(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_green(9),
	combout => \DISPLAY_GREEN[5]~reg0feeder_combout\);

-- Location: FF_X68_Y3_N59
\DISPLAY_GREEN[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	d => \DISPLAY_GREEN[5]~reg0feeder_combout\,
	sclr => \process_3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[5]~reg0_q\);

-- Location: FF_X72_Y3_N58
\pixel_buffer[2][3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[11]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[2][3][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[2][3][11]~q\);

-- Location: FF_X72_Y3_N10
\pixel_buffer[3][2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	asdata => \CMOS_IN[11]~input_o\,
	sload => VCC,
	ena => \pixel_buffer[3][2][11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_buffer[3][2][11]~q\);

-- Location: LABCELL_X68_Y3_N33
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( \pixel_buffer[3][2][11]~q\ ) + ( \pixel_buffer[2][3][11]~q\ ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( \pixel_buffer[3][2][11]~q\ ) + ( \pixel_buffer[2][3][11]~q\ ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pixel_buffer[2][3][11]~q\,
	datad => \ALT_INV_pixel_buffer[3][2][11]~q\,
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: FF_X68_Y3_N34
\green[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add3~41_sumout\,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(10));

-- Location: FF_X68_Y3_N50
\DISPLAY_GREEN[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => green(10),
	sclr => \process_3~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DISPLAY_GREEN[6]~reg0_q\);

-- Location: LABCELL_X68_Y3_N36
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( GND ) + ( GND ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\);

-- Location: FF_X68_Y3_N38
\green[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cmos_pixclk~inputCLKENA0_outclk\,
	d => \Add3~45_sumout\,
	ena => \LEDR[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => green(11));

-- Location: FF_X68_Y3_N43
\DISPLAY_GREEN[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25MHz~q\,
	asdata => green(11),
	sclr => \process_3~2_combout\,
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

-- Location: LABCELL_X29_Y33_N3
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


