-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/09/2020 13:35:11"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY WORK;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.DATA_TYPES_PKG.ALL;

ENTITY 	mean IS
    PORT (
	i_clk : IN std_logic;
	i_enable : IN std_logic;
	i_frame : IN WORK.DATA_TYPES_PKG.t_frame_data;
	o_result : OUT std_logic_vector(15 DOWNTO 0);
	o_done : OUT std_logic
	);
END mean;

-- Design Ports Information
-- o_result[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[2]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[3]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[5]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[6]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[7]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[8]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[9]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[10]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[11]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[12]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[13]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[14]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[15]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_done	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][0]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][15]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][15]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][15]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][15]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][15]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][15]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][14]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][14]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][14]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][14]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][14]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][13]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][13]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][13]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][13]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][13]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][13]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][12]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][12]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][12]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][12]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][12]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][12]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][11]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][11]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][11]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][11]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][11]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][10]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][10]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][10]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][10]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][10]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][9]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][9]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][9]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][9]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][9]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][9]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][8]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][8]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][8]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][8]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][8]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][7]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][7]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][7]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][6]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][6]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][6]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][6]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][5]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][5]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][4]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][4]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][4]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][3]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][2]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][2]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[4][1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[5][1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[2][1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[1][1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[0][1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_frame[3][1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_enable	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mean IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_enable : std_logic;
SIGNAL ww_i_frame : WORK.DATA_TYPES_PKG.t_frame_data;
SIGNAL ww_o_result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_done : std_logic;
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_result[0]~output_o\ : std_logic;
SIGNAL \o_result[1]~output_o\ : std_logic;
SIGNAL \o_result[2]~output_o\ : std_logic;
SIGNAL \o_result[3]~output_o\ : std_logic;
SIGNAL \o_result[4]~output_o\ : std_logic;
SIGNAL \o_result[5]~output_o\ : std_logic;
SIGNAL \o_result[6]~output_o\ : std_logic;
SIGNAL \o_result[7]~output_o\ : std_logic;
SIGNAL \o_result[8]~output_o\ : std_logic;
SIGNAL \o_result[9]~output_o\ : std_logic;
SIGNAL \o_result[10]~output_o\ : std_logic;
SIGNAL \o_result[11]~output_o\ : std_logic;
SIGNAL \o_result[12]~output_o\ : std_logic;
SIGNAL \o_result[13]~output_o\ : std_logic;
SIGNAL \o_result[14]~output_o\ : std_logic;
SIGNAL \o_result[15]~output_o\ : std_logic;
SIGNAL \o_done~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \i_enable~input_o\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \r_sm~5_combout\ : std_logic;
SIGNAL \r_sm.s_clean~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \r_sm.s_idle~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \r_sm.s_calculus~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \i_frame[4][15]~input_o\ : std_logic;
SIGNAL \i_frame[5][15]~input_o\ : std_logic;
SIGNAL \r_single_value[4]~0_combout\ : std_logic;
SIGNAL \i_frame[3][15]~input_o\ : std_logic;
SIGNAL \i_frame[2][15]~input_o\ : std_logic;
SIGNAL \i_frame[1][15]~input_o\ : std_logic;
SIGNAL \i_frame[0][15]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \i_frame[4][14]~input_o\ : std_logic;
SIGNAL \i_frame[5][14]~input_o\ : std_logic;
SIGNAL \r_single_value[3]~15_combout\ : std_logic;
SIGNAL \i_frame[2][14]~input_o\ : std_logic;
SIGNAL \i_frame[3][14]~input_o\ : std_logic;
SIGNAL \i_frame[0][14]~input_o\ : std_logic;
SIGNAL \i_frame[1][14]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \i_frame[5][13]~input_o\ : std_logic;
SIGNAL \i_frame[4][13]~input_o\ : std_logic;
SIGNAL \r_single_value[2]~14_combout\ : std_logic;
SIGNAL \i_frame[2][13]~input_o\ : std_logic;
SIGNAL \i_frame[3][13]~input_o\ : std_logic;
SIGNAL \i_frame[1][13]~input_o\ : std_logic;
SIGNAL \i_frame[0][13]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \i_frame[4][12]~input_o\ : std_logic;
SIGNAL \i_frame[5][12]~input_o\ : std_logic;
SIGNAL \r_single_value[1]~13_combout\ : std_logic;
SIGNAL \r_single_value[1]~feeder_combout\ : std_logic;
SIGNAL \i_frame[0][12]~input_o\ : std_logic;
SIGNAL \i_frame[1][12]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \i_frame[3][12]~input_o\ : std_logic;
SIGNAL \i_frame[2][12]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \i_frame[4][11]~input_o\ : std_logic;
SIGNAL \i_frame[5][11]~input_o\ : std_logic;
SIGNAL \r_single_value[0]~12_combout\ : std_logic;
SIGNAL \i_frame[2][11]~input_o\ : std_logic;
SIGNAL \i_frame[3][11]~input_o\ : std_logic;
SIGNAL \i_frame[1][11]~input_o\ : std_logic;
SIGNAL \i_frame[0][11]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \i_frame[4][10]~input_o\ : std_logic;
SIGNAL \i_frame[5][10]~input_o\ : std_logic;
SIGNAL \r_single_value[-1]~11_combout\ : std_logic;
SIGNAL \i_frame[2][10]~input_o\ : std_logic;
SIGNAL \i_frame[3][10]~input_o\ : std_logic;
SIGNAL \i_frame[1][10]~input_o\ : std_logic;
SIGNAL \i_frame[0][10]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \r_single_value[-1]~q\ : std_logic;
SIGNAL \i_frame[5][9]~input_o\ : std_logic;
SIGNAL \i_frame[4][9]~input_o\ : std_logic;
SIGNAL \r_single_value[-2]~10_combout\ : std_logic;
SIGNAL \i_frame[2][9]~input_o\ : std_logic;
SIGNAL \i_frame[3][9]~input_o\ : std_logic;
SIGNAL \i_frame[0][9]~input_o\ : std_logic;
SIGNAL \i_frame[1][9]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \r_single_value[-2]~q\ : std_logic;
SIGNAL \i_frame[4][8]~input_o\ : std_logic;
SIGNAL \i_frame[5][8]~input_o\ : std_logic;
SIGNAL \r_single_value[-3]~9_combout\ : std_logic;
SIGNAL \i_frame[3][8]~input_o\ : std_logic;
SIGNAL \i_frame[2][8]~input_o\ : std_logic;
SIGNAL \i_frame[0][8]~input_o\ : std_logic;
SIGNAL \i_frame[1][8]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \r_single_value[-3]~q\ : std_logic;
SIGNAL \i_frame[5][7]~input_o\ : std_logic;
SIGNAL \i_frame[4][7]~input_o\ : std_logic;
SIGNAL \r_single_value[-4]~8_combout\ : std_logic;
SIGNAL \i_frame[2][7]~input_o\ : std_logic;
SIGNAL \i_frame[3][7]~input_o\ : std_logic;
SIGNAL \i_frame[0][7]~input_o\ : std_logic;
SIGNAL \i_frame[1][7]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \r_single_value[-4]~q\ : std_logic;
SIGNAL \i_frame[4][6]~input_o\ : std_logic;
SIGNAL \i_frame[5][6]~input_o\ : std_logic;
SIGNAL \r_single_value[-5]~7_combout\ : std_logic;
SIGNAL \i_frame[2][6]~input_o\ : std_logic;
SIGNAL \i_frame[3][6]~input_o\ : std_logic;
SIGNAL \i_frame[1][6]~input_o\ : std_logic;
SIGNAL \i_frame[0][6]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \r_single_value[-5]~q\ : std_logic;
SIGNAL \i_frame[5][5]~input_o\ : std_logic;
SIGNAL \i_frame[4][5]~input_o\ : std_logic;
SIGNAL \r_single_value[-6]~6_combout\ : std_logic;
SIGNAL \i_frame[2][5]~input_o\ : std_logic;
SIGNAL \i_frame[3][5]~input_o\ : std_logic;
SIGNAL \i_frame[1][5]~input_o\ : std_logic;
SIGNAL \i_frame[0][5]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \r_single_value[-6]~q\ : std_logic;
SIGNAL \i_frame[4][4]~input_o\ : std_logic;
SIGNAL \i_frame[5][4]~input_o\ : std_logic;
SIGNAL \r_single_value[-7]~5_combout\ : std_logic;
SIGNAL \i_frame[2][4]~input_o\ : std_logic;
SIGNAL \i_frame[3][4]~input_o\ : std_logic;
SIGNAL \i_frame[1][4]~input_o\ : std_logic;
SIGNAL \i_frame[0][4]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \r_single_value[-7]~q\ : std_logic;
SIGNAL \i_frame[5][3]~input_o\ : std_logic;
SIGNAL \i_frame[4][3]~input_o\ : std_logic;
SIGNAL \r_single_value[-8]~4_combout\ : std_logic;
SIGNAL \i_frame[3][3]~input_o\ : std_logic;
SIGNAL \i_frame[2][3]~input_o\ : std_logic;
SIGNAL \i_frame[0][3]~input_o\ : std_logic;
SIGNAL \i_frame[1][3]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \r_single_value[-8]~q\ : std_logic;
SIGNAL \i_frame[5][2]~input_o\ : std_logic;
SIGNAL \i_frame[4][2]~input_o\ : std_logic;
SIGNAL \r_single_value[-9]~3_combout\ : std_logic;
SIGNAL \i_frame[3][2]~input_o\ : std_logic;
SIGNAL \i_frame[2][2]~input_o\ : std_logic;
SIGNAL \i_frame[0][2]~input_o\ : std_logic;
SIGNAL \i_frame[1][2]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \r_single_value[-9]~q\ : std_logic;
SIGNAL \i_frame[5][1]~input_o\ : std_logic;
SIGNAL \i_frame[4][1]~input_o\ : std_logic;
SIGNAL \r_single_value[-10]~2_combout\ : std_logic;
SIGNAL \i_frame[2][1]~input_o\ : std_logic;
SIGNAL \i_frame[3][1]~input_o\ : std_logic;
SIGNAL \i_frame[1][1]~input_o\ : std_logic;
SIGNAL \i_frame[0][1]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \r_single_value[-10]~q\ : std_logic;
SIGNAL \i_frame[5][0]~input_o\ : std_logic;
SIGNAL \i_frame[4][0]~input_o\ : std_logic;
SIGNAL \r_single_value[-11]~1_combout\ : std_logic;
SIGNAL \i_frame[3][0]~input_o\ : std_logic;
SIGNAL \i_frame[2][0]~input_o\ : std_logic;
SIGNAL \i_frame[1][0]~input_o\ : std_logic;
SIGNAL \i_frame[0][0]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \r_single_value[-11]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \result~1_combout\ : std_logic;
SIGNAL \r_result[-10]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \result~2_combout\ : std_logic;
SIGNAL \r_result[-9]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \result~3_combout\ : std_logic;
SIGNAL \r_result[-8]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \result~4_combout\ : std_logic;
SIGNAL \r_result[-7]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \result~5_combout\ : std_logic;
SIGNAL \r_result[-6]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \result~6_combout\ : std_logic;
SIGNAL \r_result[-5]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \result~7_combout\ : std_logic;
SIGNAL \r_result[-4]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \result~8_combout\ : std_logic;
SIGNAL \r_result[-3]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \result~9_combout\ : std_logic;
SIGNAL \r_result[-2]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \result~10_combout\ : std_logic;
SIGNAL \r_result[-1]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \result~11_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \result~12_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \result~13_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \result~14_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \r_result[4]~0_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \result~0_combout\ : std_logic;
SIGNAL \r_result[-11]~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \r_done~q\ : std_logic;
SIGNAL r_single_value : std_logic_vector(4 DOWNTO 0);
SIGNAL r_result : std_logic_vector(4 DOWNTO 0);
SIGNAL r_index : std_logic_vector(11 DOWNTO 0);
SIGNAL ALT_INV_r_index : std_logic_vector(2 DOWNTO 2);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clk <= i_clk;
ww_i_enable <= i_enable;
ww_i_frame <= i_frame;
o_result <= ww_o_result;
o_done <= ww_o_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
ALT_INV_r_index(2) <= NOT r_index(2);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y49_N2
\o_result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_result[-11]~q\,
	devoe => ww_devoe,
	o => \o_result[0]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\o_result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_result[-10]~q\,
	devoe => ww_devoe,
	o => \o_result[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\o_result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_result[-9]~q\,
	devoe => ww_devoe,
	o => \o_result[2]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\o_result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_result[-8]~q\,
	devoe => ww_devoe,
	o => \o_result[3]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\o_result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_result[-7]~q\,
	devoe => ww_devoe,
	o => \o_result[4]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\o_result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_result[-6]~q\,
	devoe => ww_devoe,
	o => \o_result[5]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\o_result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_result[-5]~q\,
	devoe => ww_devoe,
	o => \o_result[6]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\o_result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_result[-4]~q\,
	devoe => ww_devoe,
	o => \o_result[7]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\o_result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_result[-3]~q\,
	devoe => ww_devoe,
	o => \o_result[8]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\o_result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_result[-2]~q\,
	devoe => ww_devoe,
	o => \o_result[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\o_result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_result[-1]~q\,
	devoe => ww_devoe,
	o => \o_result[10]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\o_result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_result(0),
	devoe => ww_devoe,
	o => \o_result[11]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\o_result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_result(1),
	devoe => ww_devoe,
	o => \o_result[12]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\o_result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_result(2),
	devoe => ww_devoe,
	o => \o_result[13]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\o_result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_result(3),
	devoe => ww_devoe,
	o => \o_result[14]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\o_result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_result(4),
	devoe => ww_devoe,
	o => \o_result[15]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\o_done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_done~q\,
	devoe => ww_devoe,
	o => \o_done~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\i_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G2
\i_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X4_Y27_N2
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = r_index(0) $ (VCC)
-- \Add1~1\ = CARRY(r_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X0_Y48_N8
\i_enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_enable,
	o => \i_enable~input_o\);

-- Location: LCCOMB_X3_Y28_N26
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ((\r_sm.s_calculus~q\ & r_index(11))) # (!\r_sm.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_calculus~q\,
	datac => \r_sm.s_idle~q\,
	datad => r_index(11),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X4_Y27_N4
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (r_index(1) & (!\Add1~1\)) # (!r_index(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!r_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X3_Y27_N12
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Selector1~0_combout\ & ((\Add1~2_combout\) # ((\Selector13~0_combout\ & r_index(1))))) # (!\Selector1~0_combout\ & (\Selector13~0_combout\ & (r_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector13~0_combout\,
	datac => r_index(1),
	datad => \Add1~2_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X3_Y27_N13
\r_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(1));

-- Location: LCCOMB_X4_Y27_N6
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (r_index(2) & (\Add1~3\ $ (GND))) # (!r_index(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((r_index(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X3_Y27_N14
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Selector1~0_combout\ & ((\Add1~4_combout\) # ((\Selector13~0_combout\ & r_index(2))))) # (!\Selector1~0_combout\ & (\Selector13~0_combout\ & (r_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector13~0_combout\,
	datac => r_index(2),
	datad => \Add1~4_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X3_Y27_N15
\r_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(2));

-- Location: LCCOMB_X4_Y27_N8
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (r_index(3) & (!\Add1~5\)) # (!r_index(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!r_index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X3_Y27_N24
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Selector1~0_combout\ & ((\Add1~6_combout\) # ((r_index(3) & \Selector13~0_combout\)))) # (!\Selector1~0_combout\ & (((r_index(3) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Add1~6_combout\,
	datac => r_index(3),
	datad => \Selector13~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X3_Y27_N25
\r_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(3));

-- Location: LCCOMB_X4_Y27_N10
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (r_index(4) & (\Add1~7\ $ (GND))) # (!r_index(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((r_index(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X3_Y27_N30
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Selector1~0_combout\ & ((\Add1~8_combout\) # ((\Selector13~0_combout\ & r_index(4))))) # (!\Selector1~0_combout\ & (\Selector13~0_combout\ & (r_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector13~0_combout\,
	datac => r_index(4),
	datad => \Add1~8_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X3_Y27_N31
\r_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(4));

-- Location: LCCOMB_X4_Y27_N12
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (r_index(5) & (!\Add1~9\)) # (!r_index(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!r_index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X3_Y27_N16
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Selector1~0_combout\ & ((\Add1~10_combout\) # ((\Selector13~0_combout\ & r_index(5))))) # (!\Selector1~0_combout\ & (\Selector13~0_combout\ & (r_index(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector13~0_combout\,
	datac => r_index(5),
	datad => \Add1~10_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X3_Y27_N17
\r_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(5));

-- Location: LCCOMB_X4_Y27_N14
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (r_index(6) & (\Add1~11\ $ (GND))) # (!r_index(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((r_index(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X4_Y27_N30
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Selector13~0_combout\ & ((r_index(6)) # ((\Add1~12_combout\ & \Selector1~0_combout\)))) # (!\Selector13~0_combout\ & (\Add1~12_combout\ & ((\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Add1~12_combout\,
	datac => r_index(6),
	datad => \Selector1~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X4_Y27_N31
\r_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(6));

-- Location: LCCOMB_X4_Y27_N16
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (r_index(7) & (!\Add1~13\)) # (!r_index(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!r_index(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X4_Y27_N28
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Selector13~0_combout\ & ((r_index(7)) # ((\Selector1~0_combout\ & \Add1~14_combout\)))) # (!\Selector13~0_combout\ & (\Selector1~0_combout\ & ((\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector1~0_combout\,
	datac => r_index(7),
	datad => \Add1~14_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X4_Y27_N29
\r_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(7));

-- Location: LCCOMB_X4_Y27_N18
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (r_index(8) & (\Add1~15\ $ (GND))) # (!r_index(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((r_index(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X3_Y27_N26
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Selector1~0_combout\ & ((\Add1~16_combout\) # ((\Selector13~0_combout\ & r_index(8))))) # (!\Selector1~0_combout\ & (\Selector13~0_combout\ & (r_index(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector13~0_combout\,
	datac => r_index(8),
	datad => \Add1~16_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X3_Y27_N27
\r_index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(8));

-- Location: LCCOMB_X4_Y27_N20
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (r_index(9) & (!\Add1~17\)) # (!r_index(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!r_index(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X4_Y27_N26
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector13~0_combout\ & ((r_index(9)) # ((\Selector1~0_combout\ & \Add1~18_combout\)))) # (!\Selector13~0_combout\ & (\Selector1~0_combout\ & ((\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector1~0_combout\,
	datac => r_index(9),
	datad => \Add1~18_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X4_Y27_N27
\r_index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(9));

-- Location: LCCOMB_X4_Y27_N22
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (r_index(10) & (\Add1~19\ $ (GND))) # (!r_index(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((r_index(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X4_Y27_N0
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Selector13~0_combout\ & ((r_index(10)) # ((\Selector1~0_combout\ & \Add1~20_combout\)))) # (!\Selector13~0_combout\ & (\Selector1~0_combout\ & ((\Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector1~0_combout\,
	datac => r_index(10),
	datad => \Add1~20_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X4_Y27_N1
\r_index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(10));

-- Location: LCCOMB_X4_Y27_N24
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = \Add1~21\ $ (r_index(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_index(11),
	cin => \Add1~21\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X3_Y28_N24
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\r_sm.s_calculus~q\ & (((r_index(11)) # (\Add1~22_combout\)))) # (!\r_sm.s_calculus~q\ & (!\r_sm.s_idle~q\ & (r_index(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_idle~q\,
	datab => \r_sm.s_calculus~q\,
	datac => r_index(11),
	datad => \Add1~22_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X3_Y28_N25
\r_index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(11));

-- Location: LCCOMB_X3_Y28_N16
\r_sm~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sm~5_combout\ = (\r_sm.s_calculus~q\ & r_index(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_calculus~q\,
	datad => r_index(11),
	combout => \r_sm~5_combout\);

-- Location: FF_X3_Y28_N17
\r_sm.s_clean\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sm~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm.s_clean~q\);

-- Location: LCCOMB_X3_Y28_N8
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\r_sm.s_clean~q\ & ((\i_enable~input_o\) # (\r_sm.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_enable~input_o\,
	datac => \r_sm.s_idle~q\,
	datad => \r_sm.s_clean~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X3_Y28_N9
\r_sm.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm.s_idle~q\);

-- Location: LCCOMB_X3_Y28_N18
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\i_enable~input_o\ & (((\r_sm.s_calculus~q\ & !r_index(11))) # (!\r_sm.s_idle~q\))) # (!\i_enable~input_o\ & (((\r_sm.s_calculus~q\ & !r_index(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_enable~input_o\,
	datab => \r_sm.s_idle~q\,
	datac => \r_sm.s_calculus~q\,
	datad => r_index(11),
	combout => \Selector1~1_combout\);

-- Location: FF_X3_Y28_N19
\r_sm.s_calculus\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm.s_calculus~q\);

-- Location: LCCOMB_X3_Y28_N30
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\r_sm.s_calculus~q\ & !r_index(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_calculus~q\,
	datad => r_index(11),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X3_Y27_N6
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Add1~0_combout\ & ((\Selector1~0_combout\) # ((r_index(0) & \Selector13~0_combout\)))) # (!\Add1~0_combout\ & (((r_index(0) & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Selector1~0_combout\,
	datac => r_index(0),
	datad => \Selector13~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X4_Y27_N11
\r_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Selector13~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(0));

-- Location: IOIBUF_X0_Y16_N22
\i_frame[4][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(15),
	o => \i_frame[4][15]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\i_frame[5][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(15),
	o => \i_frame[5][15]~input_o\);

-- Location: LCCOMB_X1_Y23_N24
\r_single_value[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[4]~0_combout\ = (r_index(0) & ((\i_frame[5][15]~input_o\))) # (!r_index(0) & (\i_frame[4][15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datab => \i_frame[4][15]~input_o\,
	datad => \i_frame[5][15]~input_o\,
	combout => \r_single_value[4]~0_combout\);

-- Location: IOIBUF_X0_Y16_N15
\i_frame[3][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(15),
	o => \i_frame[3][15]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\i_frame[2][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(15),
	o => \i_frame[2][15]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\i_frame[1][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(15),
	o => \i_frame[1][15]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\i_frame[0][15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(15),
	o => \i_frame[0][15]~input_o\);

-- Location: LCCOMB_X1_Y23_N10
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (r_index(1) & (((r_index(0))))) # (!r_index(1) & ((r_index(0) & (\i_frame[1][15]~input_o\)) # (!r_index(0) & ((\i_frame[0][15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[1][15]~input_o\,
	datab => r_index(1),
	datac => r_index(0),
	datad => \i_frame[0][15]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y23_N8
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (r_index(1) & ((\Mux0~0_combout\ & (\i_frame[3][15]~input_o\)) # (!\Mux0~0_combout\ & ((\i_frame[2][15]~input_o\))))) # (!r_index(1) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[3][15]~input_o\,
	datab => r_index(1),
	datac => \i_frame[2][15]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: FF_X1_Y23_N25
\r_single_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[4]~0_combout\,
	asdata => \Mux0~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_single_value(4));

-- Location: IOIBUF_X0_Y6_N1
\i_frame[4][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(14),
	o => \i_frame[4][14]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\i_frame[5][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(14),
	o => \i_frame[5][14]~input_o\);

-- Location: LCCOMB_X1_Y23_N22
\r_single_value[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[3]~15_combout\ = (r_index(0) & ((\i_frame[5][14]~input_o\))) # (!r_index(0) & (\i_frame[4][14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datab => \i_frame[4][14]~input_o\,
	datad => \i_frame[5][14]~input_o\,
	combout => \r_single_value[3]~15_combout\);

-- Location: IOIBUF_X0_Y14_N8
\i_frame[2][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(14),
	o => \i_frame[2][14]~input_o\);

-- Location: IOIBUF_X0_Y19_N8
\i_frame[3][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(14),
	o => \i_frame[3][14]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\i_frame[0][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(14),
	o => \i_frame[0][14]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\i_frame[1][14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(14),
	o => \i_frame[1][14]~input_o\);

-- Location: LCCOMB_X1_Y23_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (r_index(1) & (((r_index(0))))) # (!r_index(1) & ((r_index(0) & ((\i_frame[1][14]~input_o\))) # (!r_index(0) & (\i_frame[0][14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[0][14]~input_o\,
	datab => r_index(1),
	datac => r_index(0),
	datad => \i_frame[1][14]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y23_N4
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (r_index(1) & ((\Mux1~0_combout\ & ((\i_frame[3][14]~input_o\))) # (!\Mux1~0_combout\ & (\i_frame[2][14]~input_o\)))) # (!r_index(1) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[2][14]~input_o\,
	datab => \i_frame[3][14]~input_o\,
	datac => r_index(1),
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X1_Y23_N23
\r_single_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[3]~15_combout\,
	asdata => \Mux1~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_single_value(3));

-- Location: IOIBUF_X0_Y27_N22
\i_frame[5][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(13),
	o => \i_frame[5][13]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\i_frame[4][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(13),
	o => \i_frame[4][13]~input_o\);

-- Location: LCCOMB_X1_Y27_N16
\r_single_value[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[2]~14_combout\ = (r_index(0) & (\i_frame[5][13]~input_o\)) # (!r_index(0) & ((\i_frame[4][13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datab => \i_frame[5][13]~input_o\,
	datad => \i_frame[4][13]~input_o\,
	combout => \r_single_value[2]~14_combout\);

-- Location: IOIBUF_X0_Y20_N15
\i_frame[2][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(13),
	o => \i_frame[2][13]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\i_frame[3][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(13),
	o => \i_frame[3][13]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\i_frame[1][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(13),
	o => \i_frame[1][13]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\i_frame[0][13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(13),
	o => \i_frame[0][13]~input_o\);

-- Location: LCCOMB_X1_Y25_N4
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (r_index(1) & (((r_index(0))))) # (!r_index(1) & ((r_index(0) & (\i_frame[1][13]~input_o\)) # (!r_index(0) & ((\i_frame[0][13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[1][13]~input_o\,
	datab => \i_frame[0][13]~input_o\,
	datac => r_index(1),
	datad => r_index(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y27_N22
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (r_index(1) & ((\Mux2~0_combout\ & ((\i_frame[3][13]~input_o\))) # (!\Mux2~0_combout\ & (\i_frame[2][13]~input_o\)))) # (!r_index(1) & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[2][13]~input_o\,
	datab => r_index(1),
	datac => \i_frame[3][13]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: FF_X1_Y27_N17
\r_single_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[2]~14_combout\,
	asdata => \Mux2~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_single_value(2));

-- Location: IOIBUF_X0_Y12_N15
\i_frame[4][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(12),
	o => \i_frame[4][12]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\i_frame[5][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(12),
	o => \i_frame[5][12]~input_o\);

-- Location: LCCOMB_X1_Y23_N16
\r_single_value[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[1]~13_combout\ = (r_index(0) & ((\i_frame[5][12]~input_o\))) # (!r_index(0) & (\i_frame[4][12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[4][12]~input_o\,
	datac => r_index(0),
	datad => \i_frame[5][12]~input_o\,
	combout => \r_single_value[1]~13_combout\);

-- Location: LCCOMB_X1_Y27_N30
\r_single_value[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[1]~feeder_combout\ = \r_single_value[1]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_single_value[1]~13_combout\,
	combout => \r_single_value[1]~feeder_combout\);

-- Location: IOIBUF_X0_Y30_N8
\i_frame[0][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(12),
	o => \i_frame[0][12]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\i_frame[1][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(12),
	o => \i_frame[1][12]~input_o\);

-- Location: LCCOMB_X1_Y27_N12
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (r_index(0) & (((\i_frame[1][12]~input_o\) # (r_index(1))))) # (!r_index(0) & (\i_frame[0][12]~input_o\ & ((!r_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[0][12]~input_o\,
	datab => \i_frame[1][12]~input_o\,
	datac => r_index(0),
	datad => r_index(1),
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X0_Y27_N15
\i_frame[3][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(12),
	o => \i_frame[3][12]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\i_frame[2][12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(12),
	o => \i_frame[2][12]~input_o\);

-- Location: LCCOMB_X1_Y27_N14
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & ((\i_frame[3][12]~input_o\) # ((!r_index(1))))) # (!\Mux3~0_combout\ & (((\i_frame[2][12]~input_o\ & r_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \i_frame[3][12]~input_o\,
	datac => \i_frame[2][12]~input_o\,
	datad => r_index(1),
	combout => \Mux3~1_combout\);

-- Location: FF_X1_Y27_N31
\r_single_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[1]~feeder_combout\,
	asdata => \Mux3~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_single_value(1));

-- Location: IOIBUF_X0_Y14_N1
\i_frame[4][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(11),
	o => \i_frame[4][11]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\i_frame[5][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(11),
	o => \i_frame[5][11]~input_o\);

-- Location: LCCOMB_X1_Y27_N0
\r_single_value[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[0]~12_combout\ = (r_index(0) & ((\i_frame[5][11]~input_o\))) # (!r_index(0) & (\i_frame[4][11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datab => \i_frame[4][11]~input_o\,
	datad => \i_frame[5][11]~input_o\,
	combout => \r_single_value[0]~12_combout\);

-- Location: IOIBUF_X0_Y22_N22
\i_frame[2][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(11),
	o => \i_frame[2][11]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\i_frame[3][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(11),
	o => \i_frame[3][11]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\i_frame[1][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(11),
	o => \i_frame[1][11]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\i_frame[0][11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(11),
	o => \i_frame[0][11]~input_o\);

-- Location: LCCOMB_X1_Y27_N20
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (r_index(0) & ((\i_frame[1][11]~input_o\) # ((r_index(1))))) # (!r_index(0) & (((\i_frame[0][11]~input_o\ & !r_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[1][11]~input_o\,
	datab => \i_frame[0][11]~input_o\,
	datac => r_index(0),
	datad => r_index(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y27_N26
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (r_index(1) & ((\Mux4~0_combout\ & ((\i_frame[3][11]~input_o\))) # (!\Mux4~0_combout\ & (\i_frame[2][11]~input_o\)))) # (!r_index(1) & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[2][11]~input_o\,
	datab => r_index(1),
	datac => \i_frame[3][11]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: FF_X1_Y27_N1
\r_single_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[0]~12_combout\,
	asdata => \Mux4~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_single_value(0));

-- Location: IOIBUF_X0_Y47_N15
\i_frame[4][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(10),
	o => \i_frame[4][10]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\i_frame[5][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(10),
	o => \i_frame[5][10]~input_o\);

-- Location: LCCOMB_X3_Y27_N20
\r_single_value[-1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[-1]~11_combout\ = (r_index(0) & ((\i_frame[5][10]~input_o\))) # (!r_index(0) & (\i_frame[4][10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[4][10]~input_o\,
	datab => r_index(0),
	datad => \i_frame[5][10]~input_o\,
	combout => \r_single_value[-1]~11_combout\);

-- Location: IOIBUF_X3_Y0_N15
\i_frame[2][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(10),
	o => \i_frame[2][10]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\i_frame[3][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(10),
	o => \i_frame[3][10]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\i_frame[1][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(10),
	o => \i_frame[1][10]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\i_frame[0][10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(10),
	o => \i_frame[0][10]~input_o\);

-- Location: LCCOMB_X4_Y23_N16
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (r_index(0) & ((\i_frame[1][10]~input_o\) # ((r_index(1))))) # (!r_index(0) & (((\i_frame[0][10]~input_o\ & !r_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[1][10]~input_o\,
	datab => \i_frame[0][10]~input_o\,
	datac => r_index(0),
	datad => r_index(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X3_Y27_N8
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (r_index(1) & ((\Mux5~0_combout\ & ((\i_frame[3][10]~input_o\))) # (!\Mux5~0_combout\ & (\i_frame[2][10]~input_o\)))) # (!r_index(1) & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datab => \i_frame[2][10]~input_o\,
	datac => \i_frame[3][10]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: FF_X3_Y27_N21
\r_single_value[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[-1]~11_combout\,
	asdata => \Mux5~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_single_value[-1]~q\);

-- Location: IOIBUF_X0_Y13_N8
\i_frame[5][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(9),
	o => \i_frame[5][9]~input_o\);

-- Location: IOIBUF_X0_Y57_N22
\i_frame[4][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(9),
	o => \i_frame[4][9]~input_o\);

-- Location: LCCOMB_X3_Y27_N2
\r_single_value[-2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[-2]~10_combout\ = (r_index(0) & (\i_frame[5][9]~input_o\)) # (!r_index(0) & ((\i_frame[4][9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[5][9]~input_o\,
	datab => r_index(0),
	datad => \i_frame[4][9]~input_o\,
	combout => \r_single_value[-2]~10_combout\);

-- Location: IOIBUF_X0_Y11_N22
\i_frame[2][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(9),
	o => \i_frame[2][9]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\i_frame[3][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(9),
	o => \i_frame[3][9]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\i_frame[0][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(9),
	o => \i_frame[0][9]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\i_frame[1][9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(9),
	o => \i_frame[1][9]~input_o\);

-- Location: LCCOMB_X3_Y27_N18
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (r_index(1) & (r_index(0))) # (!r_index(1) & ((r_index(0) & ((\i_frame[1][9]~input_o\))) # (!r_index(0) & (\i_frame[0][9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datab => r_index(0),
	datac => \i_frame[0][9]~input_o\,
	datad => \i_frame[1][9]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X3_Y27_N4
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (r_index(1) & ((\Mux6~0_combout\ & ((\i_frame[3][9]~input_o\))) # (!\Mux6~0_combout\ & (\i_frame[2][9]~input_o\)))) # (!r_index(1) & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datab => \i_frame[2][9]~input_o\,
	datac => \i_frame[3][9]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: FF_X3_Y27_N3
\r_single_value[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[-2]~10_combout\,
	asdata => \Mux6~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_single_value[-2]~q\);

-- Location: IOIBUF_X0_Y9_N15
\i_frame[4][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(8),
	o => \i_frame[4][8]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\i_frame[5][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(8),
	o => \i_frame[5][8]~input_o\);

-- Location: LCCOMB_X3_Y27_N0
\r_single_value[-3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[-3]~9_combout\ = (r_index(0) & ((\i_frame[5][8]~input_o\))) # (!r_index(0) & (\i_frame[4][8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[4][8]~input_o\,
	datab => r_index(0),
	datad => \i_frame[5][8]~input_o\,
	combout => \r_single_value[-3]~9_combout\);

-- Location: IOIBUF_X0_Y11_N15
\i_frame[3][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(8),
	o => \i_frame[3][8]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\i_frame[2][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(8),
	o => \i_frame[2][8]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\i_frame[0][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(8),
	o => \i_frame[0][8]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\i_frame[1][8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(8),
	o => \i_frame[1][8]~input_o\);

-- Location: LCCOMB_X3_Y27_N10
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (r_index(1) & (r_index(0))) # (!r_index(1) & ((r_index(0) & ((\i_frame[1][8]~input_o\))) # (!r_index(0) & (\i_frame[0][8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datab => r_index(0),
	datac => \i_frame[0][8]~input_o\,
	datad => \i_frame[1][8]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X3_Y27_N28
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (r_index(1) & ((\Mux7~0_combout\ & (\i_frame[3][8]~input_o\)) # (!\Mux7~0_combout\ & ((\i_frame[2][8]~input_o\))))) # (!r_index(1) & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datab => \i_frame[3][8]~input_o\,
	datac => \i_frame[2][8]~input_o\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: FF_X3_Y27_N1
\r_single_value[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[-3]~9_combout\,
	asdata => \Mux7~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_single_value[-3]~q\);

-- Location: IOIBUF_X0_Y44_N1
\i_frame[5][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(7),
	o => \i_frame[5][7]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\i_frame[4][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(7),
	o => \i_frame[4][7]~input_o\);

-- Location: LCCOMB_X2_Y28_N0
\r_single_value[-4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[-4]~8_combout\ = (r_index(0) & (\i_frame[5][7]~input_o\)) # (!r_index(0) & ((\i_frame[4][7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[5][7]~input_o\,
	datab => \i_frame[4][7]~input_o\,
	datad => r_index(0),
	combout => \r_single_value[-4]~8_combout\);

-- Location: IOIBUF_X0_Y64_N1
\i_frame[2][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(7),
	o => \i_frame[2][7]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\i_frame[3][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(7),
	o => \i_frame[3][7]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\i_frame[0][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(7),
	o => \i_frame[0][7]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\i_frame[1][7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(7),
	o => \i_frame[1][7]~input_o\);

-- Location: LCCOMB_X3_Y28_N6
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (r_index(1) & (((r_index(0))))) # (!r_index(1) & ((r_index(0) & ((\i_frame[1][7]~input_o\))) # (!r_index(0) & (\i_frame[0][7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[0][7]~input_o\,
	datab => r_index(1),
	datac => r_index(0),
	datad => \i_frame[1][7]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X3_Y28_N0
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (r_index(1) & ((\Mux8~0_combout\ & ((\i_frame[3][7]~input_o\))) # (!\Mux8~0_combout\ & (\i_frame[2][7]~input_o\)))) # (!r_index(1) & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[2][7]~input_o\,
	datab => r_index(1),
	datac => \i_frame[3][7]~input_o\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: FF_X2_Y28_N1
\r_single_value[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[-4]~8_combout\,
	asdata => \Mux8~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_single_value[-4]~q\);

-- Location: IOIBUF_X0_Y35_N1
\i_frame[4][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(6),
	o => \i_frame[4][6]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\i_frame[5][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(6),
	o => \i_frame[5][6]~input_o\);

-- Location: LCCOMB_X1_Y28_N18
\r_single_value[-5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[-5]~7_combout\ = (r_index(0) & ((\i_frame[5][6]~input_o\))) # (!r_index(0) & (\i_frame[4][6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[4][6]~input_o\,
	datab => \i_frame[5][6]~input_o\,
	datad => r_index(0),
	combout => \r_single_value[-5]~7_combout\);

-- Location: IOIBUF_X0_Y31_N15
\i_frame[2][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(6),
	o => \i_frame[2][6]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\i_frame[3][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(6),
	o => \i_frame[3][6]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\i_frame[1][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(6),
	o => \i_frame[1][6]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\i_frame[0][6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(6),
	o => \i_frame[0][6]~input_o\);

-- Location: LCCOMB_X1_Y28_N12
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (r_index(1) & (((r_index(0))))) # (!r_index(1) & ((r_index(0) & (\i_frame[1][6]~input_o\)) # (!r_index(0) & ((\i_frame[0][6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[1][6]~input_o\,
	datab => r_index(1),
	datac => \i_frame[0][6]~input_o\,
	datad => r_index(0),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X1_Y28_N30
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (r_index(1) & ((\Mux9~0_combout\ & ((\i_frame[3][6]~input_o\))) # (!\Mux9~0_combout\ & (\i_frame[2][6]~input_o\)))) # (!r_index(1) & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[2][6]~input_o\,
	datab => r_index(1),
	datac => \i_frame[3][6]~input_o\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: FF_X1_Y28_N19
\r_single_value[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[-5]~7_combout\,
	asdata => \Mux9~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_single_value[-5]~q\);

-- Location: IOIBUF_X0_Y50_N22
\i_frame[5][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(5),
	o => \i_frame[5][5]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\i_frame[4][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(5),
	o => \i_frame[4][5]~input_o\);

-- Location: LCCOMB_X2_Y28_N2
\r_single_value[-6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[-6]~6_combout\ = (r_index(0) & (\i_frame[5][5]~input_o\)) # (!r_index(0) & ((\i_frame[4][5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[5][5]~input_o\,
	datab => \i_frame[4][5]~input_o\,
	datad => r_index(0),
	combout => \r_single_value[-6]~6_combout\);

-- Location: IOIBUF_X0_Y55_N22
\i_frame[2][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(5),
	o => \i_frame[2][5]~input_o\);

-- Location: IOIBUF_X0_Y58_N15
\i_frame[3][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(5),
	o => \i_frame[3][5]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\i_frame[1][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(5),
	o => \i_frame[1][5]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\i_frame[0][5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(5),
	o => \i_frame[0][5]~input_o\);

-- Location: LCCOMB_X4_Y28_N24
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (r_index(1) & (((r_index(0))))) # (!r_index(1) & ((r_index(0) & (\i_frame[1][5]~input_o\)) # (!r_index(0) & ((\i_frame[0][5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[1][5]~input_o\,
	datab => \i_frame[0][5]~input_o\,
	datac => r_index(1),
	datad => r_index(0),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X3_Y28_N14
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (r_index(1) & ((\Mux10~0_combout\ & ((\i_frame[3][5]~input_o\))) # (!\Mux10~0_combout\ & (\i_frame[2][5]~input_o\)))) # (!r_index(1) & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[2][5]~input_o\,
	datab => \i_frame[3][5]~input_o\,
	datac => r_index(1),
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: FF_X2_Y28_N3
\r_single_value[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[-6]~6_combout\,
	asdata => \Mux10~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_single_value[-6]~q\);

-- Location: IOIBUF_X0_Y44_N15
\i_frame[4][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(4),
	o => \i_frame[4][4]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\i_frame[5][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(4),
	o => \i_frame[5][4]~input_o\);

-- Location: LCCOMB_X2_Y28_N12
\r_single_value[-7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[-7]~5_combout\ = (r_index(0) & ((\i_frame[5][4]~input_o\))) # (!r_index(0) & (\i_frame[4][4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[4][4]~input_o\,
	datab => \i_frame[5][4]~input_o\,
	datad => r_index(0),
	combout => \r_single_value[-7]~5_combout\);

-- Location: IOIBUF_X0_Y63_N22
\i_frame[2][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(4),
	o => \i_frame[2][4]~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\i_frame[3][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(4),
	o => \i_frame[3][4]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\i_frame[1][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(4),
	o => \i_frame[1][4]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\i_frame[0][4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(4),
	o => \i_frame[0][4]~input_o\);

-- Location: LCCOMB_X3_Y28_N12
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (r_index(1) & (((r_index(0))))) # (!r_index(1) & ((r_index(0) & (\i_frame[1][4]~input_o\)) # (!r_index(0) & ((\i_frame[0][4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[1][4]~input_o\,
	datab => r_index(1),
	datac => r_index(0),
	datad => \i_frame[0][4]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X3_Y28_N10
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (r_index(1) & ((\Mux11~0_combout\ & ((\i_frame[3][4]~input_o\))) # (!\Mux11~0_combout\ & (\i_frame[2][4]~input_o\)))) # (!r_index(1) & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[2][4]~input_o\,
	datab => r_index(1),
	datac => \i_frame[3][4]~input_o\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: FF_X2_Y28_N13
\r_single_value[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[-7]~5_combout\,
	asdata => \Mux11~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_single_value[-7]~q\);

-- Location: IOIBUF_X0_Y44_N8
\i_frame[5][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(3),
	o => \i_frame[5][3]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\i_frame[4][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(3),
	o => \i_frame[4][3]~input_o\);

-- Location: LCCOMB_X2_Y28_N10
\r_single_value[-8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[-8]~4_combout\ = (r_index(0) & (\i_frame[5][3]~input_o\)) # (!r_index(0) & ((\i_frame[4][3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[5][3]~input_o\,
	datab => \i_frame[4][3]~input_o\,
	datad => r_index(0),
	combout => \r_single_value[-8]~4_combout\);

-- Location: IOIBUF_X7_Y0_N15
\i_frame[3][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(3),
	o => \i_frame[3][3]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\i_frame[2][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(3),
	o => \i_frame[2][3]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\i_frame[0][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(3),
	o => \i_frame[0][3]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\i_frame[1][3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(3),
	o => \i_frame[1][3]~input_o\);

-- Location: LCCOMB_X4_Y28_N18
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (r_index(1) & (((r_index(0))))) # (!r_index(1) & ((r_index(0) & ((\i_frame[1][3]~input_o\))) # (!r_index(0) & (\i_frame[0][3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[0][3]~input_o\,
	datab => \i_frame[1][3]~input_o\,
	datac => r_index(1),
	datad => r_index(0),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X4_Y28_N16
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (r_index(1) & ((\Mux12~0_combout\ & (\i_frame[3][3]~input_o\)) # (!\Mux12~0_combout\ & ((\i_frame[2][3]~input_o\))))) # (!r_index(1) & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[3][3]~input_o\,
	datab => \i_frame[2][3]~input_o\,
	datac => r_index(1),
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: FF_X2_Y28_N11
\r_single_value[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[-8]~4_combout\,
	asdata => \Mux12~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_single_value[-8]~q\);

-- Location: IOIBUF_X0_Y33_N15
\i_frame[5][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(2),
	o => \i_frame[5][2]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\i_frame[4][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(2),
	o => \i_frame[4][2]~input_o\);

-- Location: LCCOMB_X1_Y28_N4
\r_single_value[-9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[-9]~3_combout\ = (r_index(0) & (\i_frame[5][2]~input_o\)) # (!r_index(0) & ((\i_frame[4][2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[5][2]~input_o\,
	datab => \i_frame[4][2]~input_o\,
	datad => r_index(0),
	combout => \r_single_value[-9]~3_combout\);

-- Location: IOIBUF_X0_Y44_N22
\i_frame[3][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(2),
	o => \i_frame[3][2]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\i_frame[2][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(2),
	o => \i_frame[2][2]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\i_frame[0][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(2),
	o => \i_frame[0][2]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\i_frame[1][2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(2),
	o => \i_frame[1][2]~input_o\);

-- Location: LCCOMB_X1_Y28_N20
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (r_index(1) & (((r_index(0))))) # (!r_index(1) & ((r_index(0) & ((\i_frame[1][2]~input_o\))) # (!r_index(0) & (\i_frame[0][2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datab => \i_frame[0][2]~input_o\,
	datac => \i_frame[1][2]~input_o\,
	datad => r_index(0),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X1_Y28_N14
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (r_index(1) & ((\Mux13~0_combout\ & (\i_frame[3][2]~input_o\)) # (!\Mux13~0_combout\ & ((\i_frame[2][2]~input_o\))))) # (!r_index(1) & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[3][2]~input_o\,
	datab => r_index(1),
	datac => \i_frame[2][2]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: FF_X1_Y28_N5
\r_single_value[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[-9]~3_combout\,
	asdata => \Mux13~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_single_value[-9]~q\);

-- Location: IOIBUF_X0_Y24_N8
\i_frame[5][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(1),
	o => \i_frame[5][1]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\i_frame[4][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(1),
	o => \i_frame[4][1]~input_o\);

-- Location: LCCOMB_X1_Y28_N6
\r_single_value[-10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[-10]~2_combout\ = (r_index(0) & (\i_frame[5][1]~input_o\)) # (!r_index(0) & ((\i_frame[4][1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[5][1]~input_o\,
	datab => \i_frame[4][1]~input_o\,
	datad => r_index(0),
	combout => \r_single_value[-10]~2_combout\);

-- Location: IOIBUF_X0_Y24_N15
\i_frame[2][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(1),
	o => \i_frame[2][1]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\i_frame[3][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(1),
	o => \i_frame[3][1]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\i_frame[1][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(1),
	o => \i_frame[1][1]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\i_frame[0][1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(1),
	o => \i_frame[0][1]~input_o\);

-- Location: LCCOMB_X1_Y28_N0
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (r_index(1) & (((r_index(0))))) # (!r_index(1) & ((r_index(0) & (\i_frame[1][1]~input_o\)) # (!r_index(0) & ((\i_frame[0][1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datab => \i_frame[1][1]~input_o\,
	datac => \i_frame[0][1]~input_o\,
	datad => r_index(0),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X1_Y28_N26
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (r_index(1) & ((\Mux14~0_combout\ & ((\i_frame[3][1]~input_o\))) # (!\Mux14~0_combout\ & (\i_frame[2][1]~input_o\)))) # (!r_index(1) & (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[2][1]~input_o\,
	datab => r_index(1),
	datac => \i_frame[3][1]~input_o\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: FF_X1_Y28_N7
\r_single_value[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[-10]~2_combout\,
	asdata => \Mux14~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_single_value[-10]~q\);

-- Location: IOIBUF_X0_Y36_N22
\i_frame[5][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(5)(0),
	o => \i_frame[5][0]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\i_frame[4][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(4)(0),
	o => \i_frame[4][0]~input_o\);

-- Location: LCCOMB_X1_Y28_N16
\r_single_value[-11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_single_value[-11]~1_combout\ = (r_index(0) & (\i_frame[5][0]~input_o\)) # (!r_index(0) & ((\i_frame[4][0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[5][0]~input_o\,
	datab => \i_frame[4][0]~input_o\,
	datad => r_index(0),
	combout => \r_single_value[-11]~1_combout\);

-- Location: IOIBUF_X0_Y32_N22
\i_frame[3][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(3)(0),
	o => \i_frame[3][0]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\i_frame[2][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(2)(0),
	o => \i_frame[2][0]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\i_frame[1][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(1)(0),
	o => \i_frame[1][0]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\i_frame[0][0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_frame(0)(0),
	o => \i_frame[0][0]~input_o\);

-- Location: LCCOMB_X1_Y28_N28
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (r_index(1) & (((r_index(0))))) # (!r_index(1) & ((r_index(0) & (\i_frame[1][0]~input_o\)) # (!r_index(0) & ((\i_frame[0][0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_frame[1][0]~input_o\,
	datab => r_index(1),
	datac => \i_frame[0][0]~input_o\,
	datad => r_index(0),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X1_Y28_N22
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (r_index(1) & ((\Mux15~0_combout\ & (\i_frame[3][0]~input_o\)) # (!\Mux15~0_combout\ & ((\i_frame[2][0]~input_o\))))) # (!r_index(1) & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datab => \i_frame[3][0]~input_o\,
	datac => \i_frame[2][0]~input_o\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: FF_X1_Y28_N17
\r_single_value[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_single_value[-11]~1_combout\,
	asdata => \Mux15~1_combout\,
	sload => ALT_INV_r_index(2),
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_single_value[-11]~q\);

-- Location: LCCOMB_X2_Y28_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\r_single_value[-11]~q\ & (\r_result[-11]~q\ $ (VCC))) # (!\r_single_value[-11]~q\ & (\r_result[-11]~q\ & VCC))
-- \Add0~1\ = CARRY((\r_single_value[-11]~q\ & \r_result[-11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_single_value[-11]~q\,
	datab => \r_result[-11]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X2_Y28_N18
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\r_result[-10]~q\ & ((\r_single_value[-10]~q\ & (\Add0~1\ & VCC)) # (!\r_single_value[-10]~q\ & (!\Add0~1\)))) # (!\r_result[-10]~q\ & ((\r_single_value[-10]~q\ & (!\Add0~1\)) # (!\r_single_value[-10]~q\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\r_result[-10]~q\ & (!\r_single_value[-10]~q\ & !\Add0~1\)) # (!\r_result[-10]~q\ & ((!\Add0~1\) # (!\r_single_value[-10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_result[-10]~q\,
	datab => \r_single_value[-10]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X3_Y28_N20
\result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~1_combout\ = (\Add0~30_combout\ & ((\Add0~2_combout\) # (\Add0~32_combout\))) # (!\Add0~30_combout\ & (\Add0~2_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~2_combout\,
	datad => \Add0~32_combout\,
	combout => \result~1_combout\);

-- Location: FF_X3_Y28_N21
\r_result[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~1_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_result[-10]~q\);

-- Location: LCCOMB_X2_Y28_N20
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\r_result[-9]~q\ $ (\r_single_value[-9]~q\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\r_result[-9]~q\ & ((\r_single_value[-9]~q\) # (!\Add0~3\))) # (!\r_result[-9]~q\ & (\r_single_value[-9]~q\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_result[-9]~q\,
	datab => \r_single_value[-9]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X3_Y28_N2
\result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~2_combout\ = (\Add0~30_combout\ & ((\Add0~4_combout\) # (\Add0~32_combout\))) # (!\Add0~30_combout\ & (\Add0~4_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~4_combout\,
	datad => \Add0~32_combout\,
	combout => \result~2_combout\);

-- Location: FF_X3_Y28_N3
\r_result[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~2_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_result[-9]~q\);

-- Location: LCCOMB_X2_Y28_N22
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\r_single_value[-8]~q\ & ((\r_result[-8]~q\ & (\Add0~5\ & VCC)) # (!\r_result[-8]~q\ & (!\Add0~5\)))) # (!\r_single_value[-8]~q\ & ((\r_result[-8]~q\ & (!\Add0~5\)) # (!\r_result[-8]~q\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\r_single_value[-8]~q\ & (!\r_result[-8]~q\ & !\Add0~5\)) # (!\r_single_value[-8]~q\ & ((!\Add0~5\) # (!\r_result[-8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_single_value[-8]~q\,
	datab => \r_result[-8]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X2_Y28_N14
\result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~3_combout\ = (\Add0~30_combout\ & ((\Add0~6_combout\) # (\Add0~32_combout\))) # (!\Add0~30_combout\ & (\Add0~6_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~32_combout\,
	combout => \result~3_combout\);

-- Location: FF_X2_Y28_N15
\r_result[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~3_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_result[-8]~q\);

-- Location: LCCOMB_X2_Y28_N24
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\r_single_value[-7]~q\ $ (\r_result[-7]~q\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\r_single_value[-7]~q\ & ((\r_result[-7]~q\) # (!\Add0~7\))) # (!\r_single_value[-7]~q\ & (\r_result[-7]~q\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_single_value[-7]~q\,
	datab => \r_result[-7]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X2_Y28_N8
\result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~4_combout\ = (\Add0~30_combout\ & ((\Add0~8_combout\) # (\Add0~32_combout\))) # (!\Add0~30_combout\ & (\Add0~8_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~8_combout\,
	datad => \Add0~32_combout\,
	combout => \result~4_combout\);

-- Location: FF_X2_Y28_N9
\r_result[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~4_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_result[-7]~q\);

-- Location: LCCOMB_X2_Y28_N26
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\r_result[-6]~q\ & ((\r_single_value[-6]~q\ & (\Add0~9\ & VCC)) # (!\r_single_value[-6]~q\ & (!\Add0~9\)))) # (!\r_result[-6]~q\ & ((\r_single_value[-6]~q\ & (!\Add0~9\)) # (!\r_single_value[-6]~q\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\r_result[-6]~q\ & (!\r_single_value[-6]~q\ & !\Add0~9\)) # (!\r_result[-6]~q\ & ((!\Add0~9\) # (!\r_single_value[-6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_result[-6]~q\,
	datab => \r_single_value[-6]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X2_Y28_N6
\result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~5_combout\ = (\Add0~30_combout\ & ((\Add0~10_combout\) # (\Add0~32_combout\))) # (!\Add0~30_combout\ & (\Add0~10_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~32_combout\,
	combout => \result~5_combout\);

-- Location: FF_X2_Y28_N7
\r_result[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~5_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_result[-6]~q\);

-- Location: LCCOMB_X2_Y28_N28
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\r_result[-5]~q\ $ (\r_single_value[-5]~q\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\r_result[-5]~q\ & ((\r_single_value[-5]~q\) # (!\Add0~11\))) # (!\r_result[-5]~q\ & (\r_single_value[-5]~q\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_result[-5]~q\,
	datab => \r_single_value[-5]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X3_Y28_N4
\result~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~6_combout\ = (\Add0~30_combout\ & ((\Add0~12_combout\) # (\Add0~32_combout\))) # (!\Add0~30_combout\ & (\Add0~12_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~12_combout\,
	datad => \Add0~32_combout\,
	combout => \result~6_combout\);

-- Location: FF_X3_Y28_N5
\r_result[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~6_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_result[-5]~q\);

-- Location: LCCOMB_X2_Y28_N30
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\r_single_value[-4]~q\ & ((\r_result[-4]~q\ & (\Add0~13\ & VCC)) # (!\r_result[-4]~q\ & (!\Add0~13\)))) # (!\r_single_value[-4]~q\ & ((\r_result[-4]~q\ & (!\Add0~13\)) # (!\r_result[-4]~q\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\r_single_value[-4]~q\ & (!\r_result[-4]~q\ & !\Add0~13\)) # (!\r_single_value[-4]~q\ & ((!\Add0~13\) # (!\r_result[-4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_single_value[-4]~q\,
	datab => \r_result[-4]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X3_Y28_N22
\result~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~7_combout\ = (\Add0~30_combout\ & ((\Add0~14_combout\) # (\Add0~32_combout\))) # (!\Add0~30_combout\ & (\Add0~14_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~32_combout\,
	combout => \result~7_combout\);

-- Location: FF_X3_Y28_N23
\r_result[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~7_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_result[-4]~q\);

-- Location: LCCOMB_X2_Y27_N0
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\r_result[-3]~q\ $ (\r_single_value[-3]~q\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\r_result[-3]~q\ & ((\r_single_value[-3]~q\) # (!\Add0~15\))) # (!\r_result[-3]~q\ & (\r_single_value[-3]~q\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_result[-3]~q\,
	datab => \r_single_value[-3]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X2_Y27_N26
\result~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~8_combout\ = (\Add0~16_combout\ & ((\Add0~30_combout\) # (\Add0~32_combout\))) # (!\Add0~16_combout\ & (\Add0~30_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \result~8_combout\);

-- Location: FF_X2_Y27_N27
\r_result[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~8_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_result[-3]~q\);

-- Location: LCCOMB_X2_Y27_N2
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\r_single_value[-2]~q\ & ((\r_result[-2]~q\ & (\Add0~17\ & VCC)) # (!\r_result[-2]~q\ & (!\Add0~17\)))) # (!\r_single_value[-2]~q\ & ((\r_result[-2]~q\ & (!\Add0~17\)) # (!\r_result[-2]~q\ & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\r_single_value[-2]~q\ & (!\r_result[-2]~q\ & !\Add0~17\)) # (!\r_single_value[-2]~q\ & ((!\Add0~17\) # (!\r_result[-2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_single_value[-2]~q\,
	datab => \r_result[-2]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X2_Y27_N28
\result~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~9_combout\ = (\Add0~18_combout\ & ((\Add0~30_combout\) # (\Add0~32_combout\))) # (!\Add0~18_combout\ & (\Add0~30_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \result~9_combout\);

-- Location: FF_X2_Y27_N29
\r_result[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~9_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_result[-2]~q\);

-- Location: LCCOMB_X2_Y27_N4
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\r_single_value[-1]~q\ $ (\r_result[-1]~q\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\r_single_value[-1]~q\ & ((\r_result[-1]~q\) # (!\Add0~19\))) # (!\r_single_value[-1]~q\ & (\r_result[-1]~q\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_single_value[-1]~q\,
	datab => \r_result[-1]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X2_Y27_N18
\result~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~10_combout\ = (\Add0~20_combout\ & ((\Add0~30_combout\) # (\Add0~32_combout\))) # (!\Add0~20_combout\ & (\Add0~30_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~20_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \result~10_combout\);

-- Location: FF_X2_Y27_N19
\r_result[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~10_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_result[-1]~q\);

-- Location: LCCOMB_X2_Y27_N6
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (r_single_value(0) & ((r_result(0) & (\Add0~21\ & VCC)) # (!r_result(0) & (!\Add0~21\)))) # (!r_single_value(0) & ((r_result(0) & (!\Add0~21\)) # (!r_result(0) & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((r_single_value(0) & (!r_result(0) & !\Add0~21\)) # (!r_single_value(0) & ((!\Add0~21\) # (!r_result(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_single_value(0),
	datab => r_result(0),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X2_Y27_N20
\result~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~11_combout\ = (\Add0~22_combout\ & ((\Add0~30_combout\) # (\Add0~32_combout\))) # (!\Add0~22_combout\ & (\Add0~30_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \result~11_combout\);

-- Location: FF_X2_Y27_N21
\r_result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~11_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_result(0));

-- Location: LCCOMB_X2_Y27_N8
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((r_result(1) $ (r_single_value(1) $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((r_result(1) & ((r_single_value(1)) # (!\Add0~23\))) # (!r_result(1) & (r_single_value(1) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_result(1),
	datab => r_single_value(1),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X2_Y27_N30
\result~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~12_combout\ = (\Add0~24_combout\ & ((\Add0~30_combout\) # (\Add0~32_combout\))) # (!\Add0~24_combout\ & (\Add0~30_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \result~12_combout\);

-- Location: FF_X2_Y27_N31
\r_result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~12_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_result(1));

-- Location: LCCOMB_X2_Y27_N10
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (r_single_value(2) & ((r_result(2) & (\Add0~25\ & VCC)) # (!r_result(2) & (!\Add0~25\)))) # (!r_single_value(2) & ((r_result(2) & (!\Add0~25\)) # (!r_result(2) & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((r_single_value(2) & (!r_result(2) & !\Add0~25\)) # (!r_single_value(2) & ((!\Add0~25\) # (!r_result(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_single_value(2),
	datab => r_result(2),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X2_Y27_N24
\result~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~13_combout\ = (\Add0~26_combout\ & ((\Add0~30_combout\) # (\Add0~32_combout\))) # (!\Add0~26_combout\ & (\Add0~30_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \result~13_combout\);

-- Location: FF_X2_Y27_N25
\r_result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~13_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_result(2));

-- Location: LCCOMB_X2_Y27_N12
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((r_result(3) $ (r_single_value(3) $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((r_result(3) & ((r_single_value(3)) # (!\Add0~27\))) # (!r_result(3) & (r_single_value(3) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_result(3),
	datab => r_single_value(3),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X2_Y27_N22
\result~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~14_combout\ = (\Add0~28_combout\ & ((\Add0~30_combout\) # (\Add0~32_combout\))) # (!\Add0~28_combout\ & (\Add0~30_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~32_combout\,
	combout => \result~14_combout\);

-- Location: FF_X2_Y27_N23
\r_result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~14_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_result(3));

-- Location: LCCOMB_X2_Y27_N14
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (r_single_value(4) & ((r_result(4) & (\Add0~29\ & VCC)) # (!r_result(4) & (!\Add0~29\)))) # (!r_single_value(4) & ((r_result(4) & (!\Add0~29\)) # (!r_result(4) & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((r_single_value(4) & (!r_result(4) & !\Add0~29\)) # (!r_single_value(4) & ((!\Add0~29\) # (!r_result(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_single_value(4),
	datab => r_result(4),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X2_Y27_N16
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = r_single_value(4) $ (\Add0~31\ $ (r_result(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_single_value(4),
	datad => r_result(4),
	cin => \Add0~31\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X3_Y27_N22
\r_result[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_result[4]~0_combout\ = !\Add0~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	combout => \r_result[4]~0_combout\);

-- Location: FF_X3_Y27_N23
\r_result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_result[4]~0_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_result(4));

-- Location: LCCOMB_X2_Y28_N4
\result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~0_combout\ = (\Add0~30_combout\ & ((\Add0~0_combout\) # (\Add0~32_combout\))) # (!\Add0~30_combout\ & (\Add0~0_combout\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~0_combout\,
	datad => \Add0~32_combout\,
	combout => \result~0_combout\);

-- Location: FF_X2_Y28_N5
\r_result[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \result~0_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_result[-11]~q\);

-- Location: LCCOMB_X3_Y28_N28
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\r_sm.s_calculus~q\ & (((\r_done~q\) # (!r_index(11))))) # (!\r_sm.s_calculus~q\ & (!\r_sm.s_idle~q\ & (\r_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_idle~q\,
	datab => \r_sm.s_calculus~q\,
	datac => \r_done~q\,
	datad => r_index(11),
	combout => \Selector14~0_combout\);

-- Location: FF_X3_Y28_N29
r_done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_done~q\);

ww_o_result(0) <= \o_result[0]~output_o\;

ww_o_result(1) <= \o_result[1]~output_o\;

ww_o_result(2) <= \o_result[2]~output_o\;

ww_o_result(3) <= \o_result[3]~output_o\;

ww_o_result(4) <= \o_result[4]~output_o\;

ww_o_result(5) <= \o_result[5]~output_o\;

ww_o_result(6) <= \o_result[6]~output_o\;

ww_o_result(7) <= \o_result[7]~output_o\;

ww_o_result(8) <= \o_result[8]~output_o\;

ww_o_result(9) <= \o_result[9]~output_o\;

ww_o_result(10) <= \o_result[10]~output_o\;

ww_o_result(11) <= \o_result[11]~output_o\;

ww_o_result(12) <= \o_result[12]~output_o\;

ww_o_result(13) <= \o_result[13]~output_o\;

ww_o_result(14) <= \o_result[14]~output_o\;

ww_o_result(15) <= \o_result[15]~output_o\;

ww_o_done <= \o_done~output_o\;
END structure;


