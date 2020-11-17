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

-- DATE "11/12/2020 20:17:58"

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
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	amc IS
    PORT (
	i_clk : IN std_logic;
	i_rst : IN std_logic;
	i_enable : IN std_logic;
	i_ft_0 : IN std_logic_vector(15 DOWNTO 0);
	i_ft_1 : IN std_logic_vector(15 DOWNTO 0);
	i_ft_2 : IN std_logic_vector(15 DOWNTO 0);
	i_ft_3 : IN std_logic_vector(15 DOWNTO 0);
	i_ft_4 : IN std_logic_vector(15 DOWNTO 0);
	i_ft_5 : IN std_logic_vector(15 DOWNTO 0);
	o_class_0 : BUFFER std_logic_vector(15 DOWNTO 0);
	o_class_1 : BUFFER std_logic_vector(15 DOWNTO 0);
	o_class_2 : BUFFER std_logic_vector(15 DOWNTO 0);
	o_class_3 : BUFFER std_logic_vector(15 DOWNTO 0);
	o_class_4 : BUFFER std_logic_vector(15 DOWNTO 0);
	o_class_5 : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END amc;

-- Design Ports Information
-- i_ft_1[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[4]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[5]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[6]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[8]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[9]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[10]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[11]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[12]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[13]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[14]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_1[15]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[1]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[2]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[3]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[4]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[5]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[6]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[7]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[8]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[9]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[10]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[11]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[12]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[13]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[14]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_2[15]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[0]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[2]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[3]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[4]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[6]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[7]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[8]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[9]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[10]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[11]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[12]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[13]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[14]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_3[15]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[0]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[2]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[3]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[5]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[6]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[7]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[9]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[10]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[11]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[12]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[13]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[14]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_4[15]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[1]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[2]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[7]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[8]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[9]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[10]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[11]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[12]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[13]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[14]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_5[15]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[8]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[9]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[11]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[12]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[13]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[14]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_0[15]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[1]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[2]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[3]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[4]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[5]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[7]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[8]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[9]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[10]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[11]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[12]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[13]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[14]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_1[15]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[0]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[6]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[7]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[8]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[9]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[10]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[12]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[13]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[14]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_2[15]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[0]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[3]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[4]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[5]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[8]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[9]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[10]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[11]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[12]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[13]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[14]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_3[15]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[4]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[5]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[6]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[8]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[9]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[10]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[11]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[12]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[13]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[14]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_4[15]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[0]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[2]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[6]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[7]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[8]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[9]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[10]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[11]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[12]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[13]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[14]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_class_5[15]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[8]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[11]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[12]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[13]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[14]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_ft_0[15]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_enable	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF amc IS
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
SIGNAL ww_i_rst : std_logic;
SIGNAL ww_i_enable : std_logic;
SIGNAL ww_i_ft_0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_ft_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_ft_2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_ft_3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_ft_4 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_i_ft_5 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_class_0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_class_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_class_2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_class_3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_class_4 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_class_5 : std_logic_vector(15 DOWNTO 0);
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \i_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \i_ft_1[0]~input_o\ : std_logic;
SIGNAL \i_ft_1[1]~input_o\ : std_logic;
SIGNAL \i_ft_1[2]~input_o\ : std_logic;
SIGNAL \i_ft_1[3]~input_o\ : std_logic;
SIGNAL \i_ft_1[4]~input_o\ : std_logic;
SIGNAL \i_ft_1[5]~input_o\ : std_logic;
SIGNAL \i_ft_1[6]~input_o\ : std_logic;
SIGNAL \i_ft_1[7]~input_o\ : std_logic;
SIGNAL \i_ft_1[8]~input_o\ : std_logic;
SIGNAL \i_ft_1[9]~input_o\ : std_logic;
SIGNAL \i_ft_1[10]~input_o\ : std_logic;
SIGNAL \i_ft_1[11]~input_o\ : std_logic;
SIGNAL \i_ft_1[12]~input_o\ : std_logic;
SIGNAL \i_ft_1[13]~input_o\ : std_logic;
SIGNAL \i_ft_1[14]~input_o\ : std_logic;
SIGNAL \i_ft_1[15]~input_o\ : std_logic;
SIGNAL \i_ft_2[0]~input_o\ : std_logic;
SIGNAL \i_ft_2[1]~input_o\ : std_logic;
SIGNAL \i_ft_2[2]~input_o\ : std_logic;
SIGNAL \i_ft_2[3]~input_o\ : std_logic;
SIGNAL \i_ft_2[4]~input_o\ : std_logic;
SIGNAL \i_ft_2[5]~input_o\ : std_logic;
SIGNAL \i_ft_2[6]~input_o\ : std_logic;
SIGNAL \i_ft_2[7]~input_o\ : std_logic;
SIGNAL \i_ft_2[8]~input_o\ : std_logic;
SIGNAL \i_ft_2[9]~input_o\ : std_logic;
SIGNAL \i_ft_2[10]~input_o\ : std_logic;
SIGNAL \i_ft_2[11]~input_o\ : std_logic;
SIGNAL \i_ft_2[12]~input_o\ : std_logic;
SIGNAL \i_ft_2[13]~input_o\ : std_logic;
SIGNAL \i_ft_2[14]~input_o\ : std_logic;
SIGNAL \i_ft_2[15]~input_o\ : std_logic;
SIGNAL \i_ft_3[0]~input_o\ : std_logic;
SIGNAL \i_ft_3[1]~input_o\ : std_logic;
SIGNAL \i_ft_3[2]~input_o\ : std_logic;
SIGNAL \i_ft_3[3]~input_o\ : std_logic;
SIGNAL \i_ft_3[4]~input_o\ : std_logic;
SIGNAL \i_ft_3[5]~input_o\ : std_logic;
SIGNAL \i_ft_3[6]~input_o\ : std_logic;
SIGNAL \i_ft_3[7]~input_o\ : std_logic;
SIGNAL \i_ft_3[8]~input_o\ : std_logic;
SIGNAL \i_ft_3[9]~input_o\ : std_logic;
SIGNAL \i_ft_3[10]~input_o\ : std_logic;
SIGNAL \i_ft_3[11]~input_o\ : std_logic;
SIGNAL \i_ft_3[12]~input_o\ : std_logic;
SIGNAL \i_ft_3[13]~input_o\ : std_logic;
SIGNAL \i_ft_3[14]~input_o\ : std_logic;
SIGNAL \i_ft_3[15]~input_o\ : std_logic;
SIGNAL \i_ft_4[0]~input_o\ : std_logic;
SIGNAL \i_ft_4[1]~input_o\ : std_logic;
SIGNAL \i_ft_4[2]~input_o\ : std_logic;
SIGNAL \i_ft_4[3]~input_o\ : std_logic;
SIGNAL \i_ft_4[4]~input_o\ : std_logic;
SIGNAL \i_ft_4[5]~input_o\ : std_logic;
SIGNAL \i_ft_4[6]~input_o\ : std_logic;
SIGNAL \i_ft_4[7]~input_o\ : std_logic;
SIGNAL \i_ft_4[8]~input_o\ : std_logic;
SIGNAL \i_ft_4[9]~input_o\ : std_logic;
SIGNAL \i_ft_4[10]~input_o\ : std_logic;
SIGNAL \i_ft_4[11]~input_o\ : std_logic;
SIGNAL \i_ft_4[12]~input_o\ : std_logic;
SIGNAL \i_ft_4[13]~input_o\ : std_logic;
SIGNAL \i_ft_4[14]~input_o\ : std_logic;
SIGNAL \i_ft_4[15]~input_o\ : std_logic;
SIGNAL \i_ft_5[0]~input_o\ : std_logic;
SIGNAL \i_ft_5[1]~input_o\ : std_logic;
SIGNAL \i_ft_5[2]~input_o\ : std_logic;
SIGNAL \i_ft_5[3]~input_o\ : std_logic;
SIGNAL \i_ft_5[4]~input_o\ : std_logic;
SIGNAL \i_ft_5[5]~input_o\ : std_logic;
SIGNAL \i_ft_5[6]~input_o\ : std_logic;
SIGNAL \i_ft_5[7]~input_o\ : std_logic;
SIGNAL \i_ft_5[8]~input_o\ : std_logic;
SIGNAL \i_ft_5[9]~input_o\ : std_logic;
SIGNAL \i_ft_5[10]~input_o\ : std_logic;
SIGNAL \i_ft_5[11]~input_o\ : std_logic;
SIGNAL \i_ft_5[12]~input_o\ : std_logic;
SIGNAL \i_ft_5[13]~input_o\ : std_logic;
SIGNAL \i_ft_5[14]~input_o\ : std_logic;
SIGNAL \i_ft_5[15]~input_o\ : std_logic;
SIGNAL \o_class_0[0]~output_o\ : std_logic;
SIGNAL \o_class_0[1]~output_o\ : std_logic;
SIGNAL \o_class_0[2]~output_o\ : std_logic;
SIGNAL \o_class_0[3]~output_o\ : std_logic;
SIGNAL \o_class_0[4]~output_o\ : std_logic;
SIGNAL \o_class_0[5]~output_o\ : std_logic;
SIGNAL \o_class_0[6]~output_o\ : std_logic;
SIGNAL \o_class_0[7]~output_o\ : std_logic;
SIGNAL \o_class_0[8]~output_o\ : std_logic;
SIGNAL \o_class_0[9]~output_o\ : std_logic;
SIGNAL \o_class_0[10]~output_o\ : std_logic;
SIGNAL \o_class_0[11]~output_o\ : std_logic;
SIGNAL \o_class_0[12]~output_o\ : std_logic;
SIGNAL \o_class_0[13]~output_o\ : std_logic;
SIGNAL \o_class_0[14]~output_o\ : std_logic;
SIGNAL \o_class_0[15]~output_o\ : std_logic;
SIGNAL \o_class_1[0]~output_o\ : std_logic;
SIGNAL \o_class_1[1]~output_o\ : std_logic;
SIGNAL \o_class_1[2]~output_o\ : std_logic;
SIGNAL \o_class_1[3]~output_o\ : std_logic;
SIGNAL \o_class_1[4]~output_o\ : std_logic;
SIGNAL \o_class_1[5]~output_o\ : std_logic;
SIGNAL \o_class_1[6]~output_o\ : std_logic;
SIGNAL \o_class_1[7]~output_o\ : std_logic;
SIGNAL \o_class_1[8]~output_o\ : std_logic;
SIGNAL \o_class_1[9]~output_o\ : std_logic;
SIGNAL \o_class_1[10]~output_o\ : std_logic;
SIGNAL \o_class_1[11]~output_o\ : std_logic;
SIGNAL \o_class_1[12]~output_o\ : std_logic;
SIGNAL \o_class_1[13]~output_o\ : std_logic;
SIGNAL \o_class_1[14]~output_o\ : std_logic;
SIGNAL \o_class_1[15]~output_o\ : std_logic;
SIGNAL \o_class_2[0]~output_o\ : std_logic;
SIGNAL \o_class_2[1]~output_o\ : std_logic;
SIGNAL \o_class_2[2]~output_o\ : std_logic;
SIGNAL \o_class_2[3]~output_o\ : std_logic;
SIGNAL \o_class_2[4]~output_o\ : std_logic;
SIGNAL \o_class_2[5]~output_o\ : std_logic;
SIGNAL \o_class_2[6]~output_o\ : std_logic;
SIGNAL \o_class_2[7]~output_o\ : std_logic;
SIGNAL \o_class_2[8]~output_o\ : std_logic;
SIGNAL \o_class_2[9]~output_o\ : std_logic;
SIGNAL \o_class_2[10]~output_o\ : std_logic;
SIGNAL \o_class_2[11]~output_o\ : std_logic;
SIGNAL \o_class_2[12]~output_o\ : std_logic;
SIGNAL \o_class_2[13]~output_o\ : std_logic;
SIGNAL \o_class_2[14]~output_o\ : std_logic;
SIGNAL \o_class_2[15]~output_o\ : std_logic;
SIGNAL \o_class_3[0]~output_o\ : std_logic;
SIGNAL \o_class_3[1]~output_o\ : std_logic;
SIGNAL \o_class_3[2]~output_o\ : std_logic;
SIGNAL \o_class_3[3]~output_o\ : std_logic;
SIGNAL \o_class_3[4]~output_o\ : std_logic;
SIGNAL \o_class_3[5]~output_o\ : std_logic;
SIGNAL \o_class_3[6]~output_o\ : std_logic;
SIGNAL \o_class_3[7]~output_o\ : std_logic;
SIGNAL \o_class_3[8]~output_o\ : std_logic;
SIGNAL \o_class_3[9]~output_o\ : std_logic;
SIGNAL \o_class_3[10]~output_o\ : std_logic;
SIGNAL \o_class_3[11]~output_o\ : std_logic;
SIGNAL \o_class_3[12]~output_o\ : std_logic;
SIGNAL \o_class_3[13]~output_o\ : std_logic;
SIGNAL \o_class_3[14]~output_o\ : std_logic;
SIGNAL \o_class_3[15]~output_o\ : std_logic;
SIGNAL \o_class_4[0]~output_o\ : std_logic;
SIGNAL \o_class_4[1]~output_o\ : std_logic;
SIGNAL \o_class_4[2]~output_o\ : std_logic;
SIGNAL \o_class_4[3]~output_o\ : std_logic;
SIGNAL \o_class_4[4]~output_o\ : std_logic;
SIGNAL \o_class_4[5]~output_o\ : std_logic;
SIGNAL \o_class_4[6]~output_o\ : std_logic;
SIGNAL \o_class_4[7]~output_o\ : std_logic;
SIGNAL \o_class_4[8]~output_o\ : std_logic;
SIGNAL \o_class_4[9]~output_o\ : std_logic;
SIGNAL \o_class_4[10]~output_o\ : std_logic;
SIGNAL \o_class_4[11]~output_o\ : std_logic;
SIGNAL \o_class_4[12]~output_o\ : std_logic;
SIGNAL \o_class_4[13]~output_o\ : std_logic;
SIGNAL \o_class_4[14]~output_o\ : std_logic;
SIGNAL \o_class_4[15]~output_o\ : std_logic;
SIGNAL \o_class_5[0]~output_o\ : std_logic;
SIGNAL \o_class_5[1]~output_o\ : std_logic;
SIGNAL \o_class_5[2]~output_o\ : std_logic;
SIGNAL \o_class_5[3]~output_o\ : std_logic;
SIGNAL \o_class_5[4]~output_o\ : std_logic;
SIGNAL \o_class_5[5]~output_o\ : std_logic;
SIGNAL \o_class_5[6]~output_o\ : std_logic;
SIGNAL \o_class_5[7]~output_o\ : std_logic;
SIGNAL \o_class_5[8]~output_o\ : std_logic;
SIGNAL \o_class_5[9]~output_o\ : std_logic;
SIGNAL \o_class_5[10]~output_o\ : std_logic;
SIGNAL \o_class_5[11]~output_o\ : std_logic;
SIGNAL \o_class_5[12]~output_o\ : std_logic;
SIGNAL \o_class_5[13]~output_o\ : std_logic;
SIGNAL \o_class_5[14]~output_o\ : std_logic;
SIGNAL \o_class_5[15]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[0]~32_combout\ : std_logic;
SIGNAL \layer0|n0|Selector35~0_combout\ : std_logic;
SIGNAL \layer0|n0|Selector35~1_combout\ : std_logic;
SIGNAL \layer0|n0|r_mac_enable~q\ : std_logic;
SIGNAL \i_rst~input_o\ : std_logic;
SIGNAL \layer0|n0|mac_n1|o_done~q\ : std_logic;
SIGNAL \layer0|n0|Selector1~0_combout\ : std_logic;
SIGNAL \i_enable~input_o\ : std_logic;
SIGNAL \layer0|Selector13~0_combout\ : std_logic;
SIGNAL \layer0|Selector12~0_combout\ : std_logic;
SIGNAL \layer0|Selector11~0_combout\ : std_logic;
SIGNAL \layer0|Selector11~1_combout\ : std_logic;
SIGNAL \layer0|Selector2~0_combout\ : std_logic;
SIGNAL \layer0|r_sm.s_wait_sinapse~q\ : std_logic;
SIGNAL \layer0|Selector3~0_combout\ : std_logic;
SIGNAL \layer0|n0|Selector37~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_done~q\ : std_logic;
SIGNAL \layer0|Selector3~1_combout\ : std_logic;
SIGNAL \layer0|r_sm.s_wait_activation~q\ : std_logic;
SIGNAL \layer0|r_sm~8_combout\ : std_logic;
SIGNAL \layer0|r_sm.s_clear~q\ : std_logic;
SIGNAL \layer0|Selector0~0_combout\ : std_logic;
SIGNAL \layer0|r_sm.s_idle~q\ : std_logic;
SIGNAL \layer0|Selector1~0_combout\ : std_logic;
SIGNAL \layer0|Selector1~1_combout\ : std_logic;
SIGNAL \layer0|r_sm.s_get_data~q\ : std_logic;
SIGNAL \layer0|r_sm.s_sinapse~q\ : std_logic;
SIGNAL \layer0|Selector5~0_combout\ : std_logic;
SIGNAL \layer0|r_enable_n0~q\ : std_logic;
SIGNAL \layer0|n0|Selector0~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sm.s_idle~q\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[0]~33\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[1]~34_combout\ : std_logic;
SIGNAL \layer0|n0|Selector33~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[1]~35\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[2]~36_combout\ : std_logic;
SIGNAL \layer0|n0|Selector32~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[2]~37\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[3]~38_combout\ : std_logic;
SIGNAL \layer0|n0|Selector31~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[3]~39\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[4]~40_combout\ : std_logic;
SIGNAL \layer0|n0|Selector30~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[4]~41\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[5]~42_combout\ : std_logic;
SIGNAL \layer0|n0|Selector29~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[5]~43\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[6]~44_combout\ : std_logic;
SIGNAL \layer0|n0|Selector28~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[6]~45\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[7]~46_combout\ : std_logic;
SIGNAL \layer0|n0|Selector27~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[7]~47\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[8]~48_combout\ : std_logic;
SIGNAL \layer0|n0|Selector26~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[8]~49\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[9]~50_combout\ : std_logic;
SIGNAL \layer0|n0|Selector25~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[9]~51\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[10]~52_combout\ : std_logic;
SIGNAL \layer0|n0|Selector24~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[10]~53\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[11]~54_combout\ : std_logic;
SIGNAL \layer0|n0|Selector23~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[11]~55\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[12]~56_combout\ : std_logic;
SIGNAL \layer0|n0|Selector22~0_combout\ : std_logic;
SIGNAL \layer0|n0|LessThan0~3_combout\ : std_logic;
SIGNAL \layer0|n0|LessThan0~1_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[12]~57\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[13]~58_combout\ : std_logic;
SIGNAL \layer0|n0|Selector21~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[13]~59\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[14]~60_combout\ : std_logic;
SIGNAL \layer0|n0|Selector20~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[14]~61\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[15]~62_combout\ : std_logic;
SIGNAL \layer0|n0|Selector19~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[15]~63\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[16]~64_combout\ : std_logic;
SIGNAL \layer0|n0|Selector18~0_combout\ : std_logic;
SIGNAL \layer0|n0|LessThan0~4_combout\ : std_logic;
SIGNAL \layer0|n0|LessThan0~2_combout\ : std_logic;
SIGNAL \layer0|n0|LessThan0~5_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[16]~65\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[17]~66_combout\ : std_logic;
SIGNAL \layer0|n0|Selector17~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[17]~67\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[18]~68_combout\ : std_logic;
SIGNAL \layer0|n0|Selector16~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[18]~69\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[19]~70_combout\ : std_logic;
SIGNAL \layer0|n0|Selector15~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[19]~71\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[20]~72_combout\ : std_logic;
SIGNAL \layer0|n0|Selector14~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[20]~73\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[21]~74_combout\ : std_logic;
SIGNAL \layer0|n0|Selector13~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[21]~75\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[22]~76_combout\ : std_logic;
SIGNAL \layer0|n0|Selector12~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[22]~77\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[23]~78_combout\ : std_logic;
SIGNAL \layer0|n0|Selector11~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[23]~79\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[24]~80_combout\ : std_logic;
SIGNAL \layer0|n0|Selector10~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[24]~81\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[25]~82_combout\ : std_logic;
SIGNAL \layer0|n0|Selector9~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[25]~83\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[26]~84_combout\ : std_logic;
SIGNAL \layer0|n0|Selector8~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[26]~85\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[27]~86_combout\ : std_logic;
SIGNAL \layer0|n0|Selector7~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[27]~87\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[28]~88_combout\ : std_logic;
SIGNAL \layer0|n0|Selector6~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[28]~89\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[29]~90_combout\ : std_logic;
SIGNAL \layer0|n0|Selector5~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[29]~91\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[30]~92_combout\ : std_logic;
SIGNAL \layer0|n0|Selector4~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[30]~93\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count[31]~94_combout\ : std_logic;
SIGNAL \layer0|n0|Selector3~0_combout\ : std_logic;
SIGNAL \layer0|n0|LessThan0~6_combout\ : std_logic;
SIGNAL \layer0|n0|LessThan0~7_combout\ : std_logic;
SIGNAL \layer0|n0|LessThan0~8_combout\ : std_logic;
SIGNAL \layer0|n0|LessThan0~0_combout\ : std_logic;
SIGNAL \layer0|n0|LessThan0~9_combout\ : std_logic;
SIGNAL \layer0|n0|Selector1~1_combout\ : std_logic;
SIGNAL \layer0|n0|r_sm.s_get_weight~q\ : std_logic;
SIGNAL \layer0|n0|r_sm.s_wait_weight~q\ : std_logic;
SIGNAL \layer0|n0|Selector2~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_sm.s_mac~q\ : std_logic;
SIGNAL \layer0|n0|r_sm.s_wait_mac~feeder_combout\ : std_logic;
SIGNAL \layer0|n0|r_sm.s_wait_mac~q\ : std_logic;
SIGNAL \layer0|n0|r_sm.s_mac_result~q\ : std_logic;
SIGNAL \layer0|n0|r_sm~14_combout\ : std_logic;
SIGNAL \layer0|n0|r_sm.s_bias~q\ : std_logic;
SIGNAL \layer0|n0|r_sm.s_relu~feeder_combout\ : std_logic;
SIGNAL \layer0|n0|r_sm.s_relu~q\ : std_logic;
SIGNAL \layer0|n0|r_sm.s_wait_relu~q\ : std_logic;
SIGNAL \layer0|n0|r_sm.s_clear~feeder_combout\ : std_logic;
SIGNAL \layer0|n0|r_sm.s_clear~q\ : std_logic;
SIGNAL \layer0|n0|Selector34~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_addr[1]~feeder_combout\ : std_logic;
SIGNAL \layer0|n0|r_addr[4]~feeder_combout\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \i_ft_0[0]~input_o\ : std_logic;
SIGNAL \i_ft_0[1]~input_o\ : std_logic;
SIGNAL \i_ft_0[2]~input_o\ : std_logic;
SIGNAL \i_ft_0[3]~input_o\ : std_logic;
SIGNAL \i_ft_0[4]~input_o\ : std_logic;
SIGNAL \i_ft_0[5]~input_o\ : std_logic;
SIGNAL \i_ft_0[6]~input_o\ : std_logic;
SIGNAL \i_ft_0[7]~input_o\ : std_logic;
SIGNAL \i_ft_0[8]~input_o\ : std_logic;
SIGNAL \i_ft_0[9]~input_o\ : std_logic;
SIGNAL \i_ft_0[10]~input_o\ : std_logic;
SIGNAL \i_ft_0[11]~input_o\ : std_logic;
SIGNAL \i_ft_0[12]~input_o\ : std_logic;
SIGNAL \i_ft_0[13]~input_o\ : std_logic;
SIGNAL \i_ft_0[14]~input_o\ : std_logic;
SIGNAL \i_ft_0[15]~input_o\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~0_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~1_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~3_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~4_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~5_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~6_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~7_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~8_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~9_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~10_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~11_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~12_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~13_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~14_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~15_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~16_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~2_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~1\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~3\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~5\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~7\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~9\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~11\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~13\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~15\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~17\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~19\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~21\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~23\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~25\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~27\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~29\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~30_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|rounds~0_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \layer0|n0|mac_n1|rounds~1_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \layer0|n0|mac_n1|rounds~2_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \layer0|n0|mac_n1|round_overflow~0_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~31\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~32_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~6_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~12_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~10_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~8_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~18_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~14_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~16_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~20_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~18_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~19_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~22_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~24_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~26_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~28_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~20_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~2_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~0_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add1~4_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~17_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~21_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|round_overflow~1_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[3]~3_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[4]~4_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~30_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[4]~5_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[3]~6_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[3]~1_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[3]~7_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[2]~8_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[2]~9_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[1]~10_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[1]~11_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[0]~12_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[0]~13_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-1]~14_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-1]~15_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-2]~16_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-2]~17_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-3]~18_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-3]~19_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-4]~20_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-4]~21_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-5]~22_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-5]~23_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-6]~24_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-6]~25_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-7]~26_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-7]~27_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-8]~28_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-8]~29_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-9]~30_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-9]~31_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-10]~32_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-10]~33_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-11]~0_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_mult[-11]~2_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~0_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~22_combout\ : std_logic;
SIGNAL \i_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_data_out[-11]~q\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~1\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~2_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~36_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_data_out[-10]~q\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~3\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~4_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~35_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_data_out[-9]~q\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~5\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~6_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~34_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_data_out[-8]~q\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~7\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~8_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~33_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_data_out[-7]~q\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~9\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~10_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~32_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_data_out[-6]~q\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~11\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~12_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~31_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_data_out[-5]~q\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~13\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~14_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~30_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_data_out[-4]~q\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~15\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~16_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~29_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_data_out[-3]~q\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~17\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~18_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~28_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_data_out[-2]~q\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~19\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~20_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~27_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_data_out[-1]~q\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~21\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~22_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~26_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~23\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~24_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~25_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~25\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~26_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~24_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~27\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~28_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|result~23_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~29\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~31\ : std_logic;
SIGNAL \layer0|n0|mac_n1|Add0~32_combout\ : std_logic;
SIGNAL \layer0|n0|mac_n1|r_data_out[4]~0_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~1\ : std_logic;
SIGNAL \layer0|n0|Add1~3\ : std_logic;
SIGNAL \layer0|n0|Add1~5\ : std_logic;
SIGNAL \layer0|n0|Add1~7\ : std_logic;
SIGNAL \layer0|n0|Add1~9\ : std_logic;
SIGNAL \layer0|n0|Add1~11\ : std_logic;
SIGNAL \layer0|n0|Add1~13\ : std_logic;
SIGNAL \layer0|n0|Add1~15\ : std_logic;
SIGNAL \layer0|n0|Add1~17\ : std_logic;
SIGNAL \layer0|n0|Add1~19\ : std_logic;
SIGNAL \layer0|n0|Add1~21\ : std_logic;
SIGNAL \layer0|n0|Add1~23\ : std_logic;
SIGNAL \layer0|n0|Add1~25\ : std_logic;
SIGNAL \layer0|n0|Add1~27\ : std_logic;
SIGNAL \layer0|n0|Add1~29\ : std_logic;
SIGNAL \layer0|n0|Add1~30_combout\ : std_logic;
SIGNAL \layer0|n0|r_bias[15]~0_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~28_combout\ : std_logic;
SIGNAL \layer0|n0|result~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_relu_in[0]~feeder_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~0_combout\ : std_logic;
SIGNAL \layer0|n0|Selector36~0_combout\ : std_logic;
SIGNAL \layer0|n0|r_relu_enable~q\ : std_logic;
SIGNAL \layer0|n0|Add1~0_combout\ : std_logic;
SIGNAL \layer0|n0|result~1_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~1_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~2_combout\ : std_logic;
SIGNAL \layer0|n0|result~2_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~2_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~4_combout\ : std_logic;
SIGNAL \layer0|n0|result~3_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~3_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~6_combout\ : std_logic;
SIGNAL \layer0|n0|result~4_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~4_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~8_combout\ : std_logic;
SIGNAL \layer0|n0|result~5_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~5_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~10_combout\ : std_logic;
SIGNAL \layer0|n0|result~6_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~6_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~12_combout\ : std_logic;
SIGNAL \layer0|n0|result~7_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~7_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~14_combout\ : std_logic;
SIGNAL \layer0|n0|result~8_combout\ : std_logic;
SIGNAL \layer0|n0|r_relu_in[8]~feeder_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~8_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~16_combout\ : std_logic;
SIGNAL \layer0|n0|result~9_combout\ : std_logic;
SIGNAL \layer0|n0|r_relu_in[9]~feeder_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~9_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~18_combout\ : std_logic;
SIGNAL \layer0|n0|result~10_combout\ : std_logic;
SIGNAL \layer0|n0|r_relu_in[10]~feeder_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~10_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~20_combout\ : std_logic;
SIGNAL \layer0|n0|result~11_combout\ : std_logic;
SIGNAL \layer0|n0|r_relu_in[11]~feeder_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~11_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~22_combout\ : std_logic;
SIGNAL \layer0|n0|result~12_combout\ : std_logic;
SIGNAL \layer0|n0|r_relu_in[12]~feeder_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~12_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~24_combout\ : std_logic;
SIGNAL \layer0|n0|result~13_combout\ : std_logic;
SIGNAL \layer0|n0|r_relu_in[13]~feeder_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~13_combout\ : std_logic;
SIGNAL \layer0|n0|Add1~26_combout\ : std_logic;
SIGNAL \layer0|n0|result~14_combout\ : std_logic;
SIGNAL \layer0|n0|r_relu_in[14]~feeder_combout\ : std_logic;
SIGNAL \layer0|n0|act_relu|r_out~14_combout\ : std_logic;
SIGNAL \layer0|n0|r_sinapse_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \layer0|r_sinapse\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \layer0|n0|r_addr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \layer0|n0|mac_n1|r_data_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \layer0|n0|act_relu|r_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \layer0|n0|r_relu_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \layer0|n0|r_bias\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_i_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_rst~input_o\ : std_logic;
SIGNAL \layer0|n0|ALT_INV_r_sm.s_get_weight~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clk <= i_clk;
ww_i_rst <= i_rst;
ww_i_enable <= i_enable;
ww_i_ft_0 <= i_ft_0;
ww_i_ft_1 <= i_ft_1;
ww_i_ft_2 <= i_ft_2;
ww_i_ft_3 <= i_ft_3;
ww_i_ft_4 <= i_ft_4;
ww_i_ft_5 <= i_ft_5;
o_class_0 <= ww_o_class_0;
o_class_1 <= ww_o_class_1;
o_class_2 <= ww_o_class_2;
o_class_3 <= ww_o_class_3;
o_class_4 <= ww_o_class_4;
o_class_5 <= ww_o_class_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT29\ & 
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT25\ & 
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT21\ & 
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~dataout\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~3\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~2\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~1\ & 
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~0\);

\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~0\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~1\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~2\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~3\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~dataout\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a15\ & \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a14\ & \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a13\ & 
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a12\ & \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a11\ & \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a10\ & \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a9\ & 
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a8\ & \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a7\ & \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a6\ & \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a5\ & 
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a4\ & \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a3\ & \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a2\ & \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a1\ & 
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & gnd & gnd);

\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\i_ft_0[15]~input_o\ & \i_ft_0[14]~input_o\ & \i_ft_0[13]~input_o\ & \i_ft_0[12]~input_o\ & \i_ft_0[11]~input_o\ & \i_ft_0[10]~input_o\ & \i_ft_0[9]~input_o\ & \i_ft_0[8]~input_o\ & 
\i_ft_0[7]~input_o\ & \i_ft_0[6]~input_o\ & \i_ft_0[5]~input_o\ & \i_ft_0[4]~input_o\ & \i_ft_0[3]~input_o\ & \i_ft_0[2]~input_o\ & \i_ft_0[1]~input_o\ & \i_ft_0[0]~input_o\ & gnd & gnd);

\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~0\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~1\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~2\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~3\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~dataout\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\layer0|n0|r_addr\(4) & \layer0|n0|r_addr\(3) & \layer0|n0|r_addr\(2) & \layer0|n0|r_addr\(1) & \layer0|n0|r_addr\(0));

\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a1\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a2\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a3\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a4\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a5\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a6\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a7\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a8\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a9\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a10\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a11\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a12\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a13\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a14\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a15\ <= \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\i_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_rst~input_o\);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
\ALT_INV_i_rst~inputclkctrl_outclk\ <= NOT \i_rst~inputclkctrl_outclk\;
\ALT_INV_i_rst~input_o\ <= NOT \i_rst~input_o\;
\layer0|n0|ALT_INV_r_sm.s_get_weight~q\ <= NOT \layer0|n0|r_sm.s_get_weight~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X40_Y73_N2
\o_class_0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(0),
	devoe => ww_devoe,
	o => \o_class_0[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\o_class_0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(1),
	devoe => ww_devoe,
	o => \o_class_0[1]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\o_class_0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(2),
	devoe => ww_devoe,
	o => \o_class_0[2]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\o_class_0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(3),
	devoe => ww_devoe,
	o => \o_class_0[3]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\o_class_0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(4),
	devoe => ww_devoe,
	o => \o_class_0[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\o_class_0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(5),
	devoe => ww_devoe,
	o => \o_class_0[5]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\o_class_0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(6),
	devoe => ww_devoe,
	o => \o_class_0[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\o_class_0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(7),
	devoe => ww_devoe,
	o => \o_class_0[7]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\o_class_0[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(8),
	devoe => ww_devoe,
	o => \o_class_0[8]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\o_class_0[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(9),
	devoe => ww_devoe,
	o => \o_class_0[9]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\o_class_0[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(10),
	devoe => ww_devoe,
	o => \o_class_0[10]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\o_class_0[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(11),
	devoe => ww_devoe,
	o => \o_class_0[11]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\o_class_0[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(12),
	devoe => ww_devoe,
	o => \o_class_0[12]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\o_class_0[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(13),
	devoe => ww_devoe,
	o => \o_class_0[13]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\o_class_0[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \layer0|n0|act_relu|r_out\(14),
	devoe => ww_devoe,
	o => \o_class_0[14]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\o_class_0[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_0[15]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\o_class_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\o_class_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\o_class_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[2]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\o_class_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[3]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\o_class_1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[4]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\o_class_1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\o_class_1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[6]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\o_class_1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[7]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\o_class_1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[8]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\o_class_1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[9]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\o_class_1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[10]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\o_class_1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[11]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\o_class_1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[12]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\o_class_1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[13]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\o_class_1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[14]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\o_class_1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_1[15]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\o_class_2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\o_class_2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\o_class_2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[2]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\o_class_2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\o_class_2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[4]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\o_class_2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[5]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\o_class_2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\o_class_2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[7]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\o_class_2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[8]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\o_class_2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[9]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\o_class_2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[10]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\o_class_2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[11]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\o_class_2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\o_class_2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[13]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\o_class_2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[14]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\o_class_2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_2[15]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\o_class_3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[0]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\o_class_3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[1]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\o_class_3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[2]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\o_class_3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[3]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\o_class_3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\o_class_3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[5]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\o_class_3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[6]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\o_class_3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[7]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\o_class_3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[8]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\o_class_3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[9]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\o_class_3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[10]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\o_class_3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[11]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\o_class_3[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[12]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\o_class_3[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[13]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\o_class_3[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[14]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\o_class_3[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_3[15]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\o_class_4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[0]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\o_class_4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[1]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\o_class_4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[2]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\o_class_4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[3]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\o_class_4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\o_class_4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\o_class_4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\o_class_4[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[7]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\o_class_4[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[8]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\o_class_4[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[9]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\o_class_4[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\o_class_4[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[11]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\o_class_4[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[12]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\o_class_4[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[13]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\o_class_4[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[14]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\o_class_4[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_4[15]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\o_class_5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[0]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\o_class_5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\o_class_5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[2]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\o_class_5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[3]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\o_class_5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[4]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\o_class_5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[5]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\o_class_5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\o_class_5[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\o_class_5[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[8]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\o_class_5[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\o_class_5[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[10]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\o_class_5[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[11]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\o_class_5[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[12]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\o_class_5[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[13]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\o_class_5[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[14]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\o_class_5[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_class_5[15]~output_o\);

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

-- Location: LCCOMB_X35_Y57_N0
\layer0|n0|r_sinapse_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[0]~32_combout\ = \layer0|n0|r_sinapse_count\(0) $ (VCC)
-- \layer0|n0|r_sinapse_count[0]~33\ = CARRY(\layer0|n0|r_sinapse_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(0),
	datad => VCC,
	combout => \layer0|n0|r_sinapse_count[0]~32_combout\,
	cout => \layer0|n0|r_sinapse_count[0]~33\);

-- Location: LCCOMB_X36_Y56_N12
\layer0|n0|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector35~0_combout\ = (!\layer0|n0|r_sm.s_relu~q\ & (\layer0|n0|r_mac_enable~q\ & (!\layer0|n0|r_sm.s_wait_mac~q\ & !\layer0|n0|r_sm.s_clear~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sm.s_relu~q\,
	datab => \layer0|n0|r_mac_enable~q\,
	datac => \layer0|n0|r_sm.s_wait_mac~q\,
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector35~0_combout\);

-- Location: LCCOMB_X36_Y56_N6
\layer0|n0|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector35~1_combout\ = (\layer0|n0|r_sm.s_mac~q\) # (\layer0|n0|Selector35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sm.s_mac~q\,
	datad => \layer0|n0|Selector35~0_combout\,
	combout => \layer0|n0|Selector35~1_combout\);

-- Location: FF_X36_Y56_N7
\layer0|n0|r_mac_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|Selector35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_mac_enable~q\);

-- Location: IOIBUF_X0_Y36_N15
\i_rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rst,
	o => \i_rst~input_o\);

-- Location: FF_X36_Y56_N5
\layer0|n0|mac_n1|o_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_mac_enable~q\,
	sload => VCC,
	ena => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|o_done~q\);

-- Location: LCCOMB_X36_Y56_N4
\layer0|n0|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector1~0_combout\ = (\layer0|n0|r_sm.s_mac_result~q\ & \layer0|n0|mac_n1|o_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sm.s_mac_result~q\,
	datac => \layer0|n0|mac_n1|o_done~q\,
	combout => \layer0|n0|Selector1~0_combout\);

-- Location: IOIBUF_X35_Y73_N22
\i_enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_enable,
	o => \i_enable~input_o\);

-- Location: LCCOMB_X36_Y60_N10
\layer0|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|Selector13~0_combout\ = (\layer0|r_sm.s_sinapse~q\ & (!\layer0|r_sinapse\(0))) # (!\layer0|r_sm.s_sinapse~q\ & (\layer0|r_sinapse\(0) & !\layer0|r_sm.s_clear~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|r_sm.s_sinapse~q\,
	datac => \layer0|r_sinapse\(0),
	datad => \layer0|r_sm.s_clear~q\,
	combout => \layer0|Selector13~0_combout\);

-- Location: FF_X36_Y60_N11
\layer0|r_sinapse[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|r_sinapse\(0));

-- Location: LCCOMB_X36_Y60_N18
\layer0|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|Selector12~0_combout\ = (\layer0|r_sm.s_sinapse~q\ & ((\layer0|r_sinapse\(1) $ (\layer0|r_sinapse\(0))))) # (!\layer0|r_sm.s_sinapse~q\ & (!\layer0|r_sm.s_clear~q\ & (\layer0|r_sinapse\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|r_sm.s_sinapse~q\,
	datab => \layer0|r_sm.s_clear~q\,
	datac => \layer0|r_sinapse\(1),
	datad => \layer0|r_sinapse\(0),
	combout => \layer0|Selector12~0_combout\);

-- Location: FF_X36_Y60_N19
\layer0|r_sinapse[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|r_sinapse\(1));

-- Location: LCCOMB_X36_Y60_N30
\layer0|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|Selector11~0_combout\ = (\layer0|r_sm.s_sinapse~q\ & (\layer0|r_sinapse\(2) $ (((\layer0|r_sinapse\(0) & \layer0|r_sinapse\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|r_sinapse\(0),
	datab => \layer0|r_sinapse\(2),
	datac => \layer0|r_sm.s_sinapse~q\,
	datad => \layer0|r_sinapse\(1),
	combout => \layer0|Selector11~0_combout\);

-- Location: LCCOMB_X36_Y60_N28
\layer0|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|Selector11~1_combout\ = (\layer0|Selector11~0_combout\) # ((!\layer0|r_sm.s_sinapse~q\ & (\layer0|r_sinapse\(2) & !\layer0|r_sm.s_clear~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|r_sm.s_sinapse~q\,
	datab => \layer0|Selector11~0_combout\,
	datac => \layer0|r_sinapse\(2),
	datad => \layer0|r_sm.s_clear~q\,
	combout => \layer0|Selector11~1_combout\);

-- Location: FF_X36_Y60_N29
\layer0|r_sinapse[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|r_sinapse\(2));

-- Location: LCCOMB_X36_Y60_N26
\layer0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|Selector2~0_combout\ = (\layer0|r_sm.s_sinapse~q\) # ((\layer0|r_sm.s_wait_sinapse~q\ & !\layer0|n0|mac_n1|o_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|r_sm.s_sinapse~q\,
	datac => \layer0|r_sm.s_wait_sinapse~q\,
	datad => \layer0|n0|mac_n1|o_done~q\,
	combout => \layer0|Selector2~0_combout\);

-- Location: FF_X36_Y60_N27
\layer0|r_sm.s_wait_sinapse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|r_sm.s_wait_sinapse~q\);

-- Location: LCCOMB_X36_Y60_N12
\layer0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|Selector3~0_combout\ = (\layer0|n0|mac_n1|o_done~q\ & (\layer0|r_sinapse\(2) & (\layer0|r_sm.s_wait_sinapse~q\ & \layer0|r_sinapse\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|o_done~q\,
	datab => \layer0|r_sinapse\(2),
	datac => \layer0|r_sm.s_wait_sinapse~q\,
	datad => \layer0|r_sinapse\(1),
	combout => \layer0|Selector3~0_combout\);

-- Location: LCCOMB_X36_Y60_N20
\layer0|n0|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector37~0_combout\ = (\layer0|n0|r_sm.s_wait_relu~q\) # ((\layer0|n0|r_done~q\ & !\layer0|n0|r_sm.s_clear~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sm.s_wait_relu~q\,
	datac => \layer0|n0|r_done~q\,
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector37~0_combout\);

-- Location: FF_X36_Y60_N21
\layer0|n0|r_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|Selector37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_done~q\);

-- Location: LCCOMB_X36_Y60_N8
\layer0|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|Selector3~1_combout\ = (\layer0|Selector3~0_combout\) # ((\layer0|r_sm.s_wait_activation~q\ & !\layer0|n0|r_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|Selector3~0_combout\,
	datac => \layer0|r_sm.s_wait_activation~q\,
	datad => \layer0|n0|r_done~q\,
	combout => \layer0|Selector3~1_combout\);

-- Location: FF_X36_Y60_N9
\layer0|r_sm.s_wait_activation\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|r_sm.s_wait_activation~q\);

-- Location: LCCOMB_X36_Y60_N0
\layer0|r_sm~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|r_sm~8_combout\ = (\layer0|r_sm.s_wait_activation~q\ & \layer0|n0|r_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|r_sm.s_wait_activation~q\,
	datad => \layer0|n0|r_done~q\,
	combout => \layer0|r_sm~8_combout\);

-- Location: FF_X36_Y60_N1
\layer0|r_sm.s_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|r_sm~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|r_sm.s_clear~q\);

-- Location: LCCOMB_X36_Y60_N22
\layer0|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|Selector0~0_combout\ = (!\layer0|r_sm.s_clear~q\ & ((\i_enable~input_o\) # (\layer0|r_sm.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_enable~input_o\,
	datac => \layer0|r_sm.s_idle~q\,
	datad => \layer0|r_sm.s_clear~q\,
	combout => \layer0|Selector0~0_combout\);

-- Location: FF_X36_Y60_N23
\layer0|r_sm.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|r_sm.s_idle~q\);

-- Location: LCCOMB_X36_Y60_N24
\layer0|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|Selector1~0_combout\ = (\layer0|n0|mac_n1|o_done~q\ & (\layer0|r_sm.s_wait_sinapse~q\ & ((!\layer0|r_sinapse\(1)) # (!\layer0|r_sinapse\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|o_done~q\,
	datab => \layer0|r_sinapse\(2),
	datac => \layer0|r_sm.s_wait_sinapse~q\,
	datad => \layer0|r_sinapse\(1),
	combout => \layer0|Selector1~0_combout\);

-- Location: LCCOMB_X36_Y60_N4
\layer0|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|Selector1~1_combout\ = (\layer0|Selector1~0_combout\) # ((\i_enable~input_o\ & !\layer0|r_sm.s_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_enable~input_o\,
	datac => \layer0|r_sm.s_idle~q\,
	datad => \layer0|Selector1~0_combout\,
	combout => \layer0|Selector1~1_combout\);

-- Location: FF_X36_Y60_N5
\layer0|r_sm.s_get_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|r_sm.s_get_data~q\);

-- Location: FF_X36_Y60_N31
\layer0|r_sm.s_sinapse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|r_sm.s_get_data~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|r_sm.s_sinapse~q\);

-- Location: LCCOMB_X36_Y60_N14
\layer0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|Selector5~0_combout\ = (\layer0|r_sm.s_sinapse~q\) # ((\layer0|r_enable_n0~q\ & !\layer0|r_sm.s_clear~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|r_sm.s_sinapse~q\,
	datac => \layer0|r_enable_n0~q\,
	datad => \layer0|r_sm.s_clear~q\,
	combout => \layer0|Selector5~0_combout\);

-- Location: FF_X36_Y60_N15
\layer0|r_enable_n0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|r_enable_n0~q\);

-- Location: LCCOMB_X36_Y56_N26
\layer0|n0|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector0~0_combout\ = (!\layer0|n0|r_sm.s_clear~q\ & ((\layer0|r_enable_n0~q\) # (\layer0|n0|r_sm.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|r_enable_n0~q\,
	datac => \layer0|n0|r_sm.s_idle~q\,
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector0~0_combout\);

-- Location: FF_X36_Y56_N27
\layer0|n0|r_sm.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sm.s_idle~q\);

-- Location: LCCOMB_X35_Y57_N2
\layer0|n0|r_sinapse_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[1]~34_combout\ = (\layer0|n0|r_sinapse_count\(1) & (!\layer0|n0|r_sinapse_count[0]~33\)) # (!\layer0|n0|r_sinapse_count\(1) & ((\layer0|n0|r_sinapse_count[0]~33\) # (GND)))
-- \layer0|n0|r_sinapse_count[1]~35\ = CARRY((!\layer0|n0|r_sinapse_count[0]~33\) # (!\layer0|n0|r_sinapse_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(1),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[0]~33\,
	combout => \layer0|n0|r_sinapse_count[1]~34_combout\,
	cout => \layer0|n0|r_sinapse_count[1]~35\);

-- Location: LCCOMB_X36_Y57_N30
\layer0|n0|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector33~0_combout\ = (\layer0|n0|r_sinapse_count\(1) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(1),
	datac => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector33~0_combout\);

-- Location: FF_X35_Y57_N3
\layer0|n0|r_sinapse_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[1]~34_combout\,
	asdata => \layer0|n0|Selector33~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(1));

-- Location: LCCOMB_X35_Y57_N4
\layer0|n0|r_sinapse_count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[2]~36_combout\ = (\layer0|n0|r_sinapse_count\(2) & (\layer0|n0|r_sinapse_count[1]~35\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(2) & (!\layer0|n0|r_sinapse_count[1]~35\ & VCC))
-- \layer0|n0|r_sinapse_count[2]~37\ = CARRY((\layer0|n0|r_sinapse_count\(2) & !\layer0|n0|r_sinapse_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(2),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[1]~35\,
	combout => \layer0|n0|r_sinapse_count[2]~36_combout\,
	cout => \layer0|n0|r_sinapse_count[2]~37\);

-- Location: LCCOMB_X36_Y57_N0
\layer0|n0|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector32~0_combout\ = (!\layer0|n0|r_sm.s_clear~q\ & \layer0|n0|r_sinapse_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sm.s_clear~q\,
	datac => \layer0|n0|r_sinapse_count\(2),
	combout => \layer0|n0|Selector32~0_combout\);

-- Location: FF_X35_Y57_N5
\layer0|n0|r_sinapse_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[2]~36_combout\,
	asdata => \layer0|n0|Selector32~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(2));

-- Location: LCCOMB_X35_Y57_N6
\layer0|n0|r_sinapse_count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[3]~38_combout\ = (\layer0|n0|r_sinapse_count\(3) & (!\layer0|n0|r_sinapse_count[2]~37\)) # (!\layer0|n0|r_sinapse_count\(3) & ((\layer0|n0|r_sinapse_count[2]~37\) # (GND)))
-- \layer0|n0|r_sinapse_count[3]~39\ = CARRY((!\layer0|n0|r_sinapse_count[2]~37\) # (!\layer0|n0|r_sinapse_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(3),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[2]~37\,
	combout => \layer0|n0|r_sinapse_count[3]~38_combout\,
	cout => \layer0|n0|r_sinapse_count[3]~39\);

-- Location: LCCOMB_X36_Y57_N22
\layer0|n0|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector31~0_combout\ = (!\layer0|n0|r_sm.s_clear~q\ & \layer0|n0|r_sinapse_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sm.s_clear~q\,
	datac => \layer0|n0|r_sinapse_count\(3),
	combout => \layer0|n0|Selector31~0_combout\);

-- Location: FF_X35_Y57_N7
\layer0|n0|r_sinapse_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[3]~38_combout\,
	asdata => \layer0|n0|Selector31~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(3));

-- Location: LCCOMB_X35_Y57_N8
\layer0|n0|r_sinapse_count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[4]~40_combout\ = (\layer0|n0|r_sinapse_count\(4) & (\layer0|n0|r_sinapse_count[3]~39\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(4) & (!\layer0|n0|r_sinapse_count[3]~39\ & VCC))
-- \layer0|n0|r_sinapse_count[4]~41\ = CARRY((\layer0|n0|r_sinapse_count\(4) & !\layer0|n0|r_sinapse_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(4),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[3]~39\,
	combout => \layer0|n0|r_sinapse_count[4]~40_combout\,
	cout => \layer0|n0|r_sinapse_count[4]~41\);

-- Location: LCCOMB_X36_Y57_N20
\layer0|n0|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector30~0_combout\ = (\layer0|n0|r_sinapse_count\(4) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(4),
	datac => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector30~0_combout\);

-- Location: FF_X35_Y57_N9
\layer0|n0|r_sinapse_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[4]~40_combout\,
	asdata => \layer0|n0|Selector30~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(4));

-- Location: LCCOMB_X35_Y57_N10
\layer0|n0|r_sinapse_count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[5]~42_combout\ = (\layer0|n0|r_sinapse_count\(5) & (!\layer0|n0|r_sinapse_count[4]~41\)) # (!\layer0|n0|r_sinapse_count\(5) & ((\layer0|n0|r_sinapse_count[4]~41\) # (GND)))
-- \layer0|n0|r_sinapse_count[5]~43\ = CARRY((!\layer0|n0|r_sinapse_count[4]~41\) # (!\layer0|n0|r_sinapse_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(5),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[4]~41\,
	combout => \layer0|n0|r_sinapse_count[5]~42_combout\,
	cout => \layer0|n0|r_sinapse_count[5]~43\);

-- Location: LCCOMB_X36_Y57_N10
\layer0|n0|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector29~0_combout\ = (\layer0|n0|r_sinapse_count\(5) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(5),
	datac => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector29~0_combout\);

-- Location: FF_X35_Y57_N11
\layer0|n0|r_sinapse_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[5]~42_combout\,
	asdata => \layer0|n0|Selector29~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(5));

-- Location: LCCOMB_X35_Y57_N12
\layer0|n0|r_sinapse_count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[6]~44_combout\ = (\layer0|n0|r_sinapse_count\(6) & (\layer0|n0|r_sinapse_count[5]~43\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(6) & (!\layer0|n0|r_sinapse_count[5]~43\ & VCC))
-- \layer0|n0|r_sinapse_count[6]~45\ = CARRY((\layer0|n0|r_sinapse_count\(6) & !\layer0|n0|r_sinapse_count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(6),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[5]~43\,
	combout => \layer0|n0|r_sinapse_count[6]~44_combout\,
	cout => \layer0|n0|r_sinapse_count[6]~45\);

-- Location: LCCOMB_X36_Y57_N8
\layer0|n0|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector28~0_combout\ = (\layer0|n0|r_sinapse_count\(6) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(6),
	datac => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector28~0_combout\);

-- Location: FF_X35_Y57_N13
\layer0|n0|r_sinapse_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[6]~44_combout\,
	asdata => \layer0|n0|Selector28~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(6));

-- Location: LCCOMB_X35_Y57_N14
\layer0|n0|r_sinapse_count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[7]~46_combout\ = (\layer0|n0|r_sinapse_count\(7) & (!\layer0|n0|r_sinapse_count[6]~45\)) # (!\layer0|n0|r_sinapse_count\(7) & ((\layer0|n0|r_sinapse_count[6]~45\) # (GND)))
-- \layer0|n0|r_sinapse_count[7]~47\ = CARRY((!\layer0|n0|r_sinapse_count[6]~45\) # (!\layer0|n0|r_sinapse_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(7),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[6]~45\,
	combout => \layer0|n0|r_sinapse_count[7]~46_combout\,
	cout => \layer0|n0|r_sinapse_count[7]~47\);

-- Location: LCCOMB_X36_Y57_N14
\layer0|n0|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector27~0_combout\ = (\layer0|n0|r_sinapse_count\(7) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(7),
	datac => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector27~0_combout\);

-- Location: FF_X35_Y57_N15
\layer0|n0|r_sinapse_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[7]~46_combout\,
	asdata => \layer0|n0|Selector27~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(7));

-- Location: LCCOMB_X35_Y57_N16
\layer0|n0|r_sinapse_count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[8]~48_combout\ = (\layer0|n0|r_sinapse_count\(8) & (\layer0|n0|r_sinapse_count[7]~47\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(8) & (!\layer0|n0|r_sinapse_count[7]~47\ & VCC))
-- \layer0|n0|r_sinapse_count[8]~49\ = CARRY((\layer0|n0|r_sinapse_count\(8) & !\layer0|n0|r_sinapse_count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(8),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[7]~47\,
	combout => \layer0|n0|r_sinapse_count[8]~48_combout\,
	cout => \layer0|n0|r_sinapse_count[8]~49\);

-- Location: LCCOMB_X36_Y57_N12
\layer0|n0|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector26~0_combout\ = (!\layer0|n0|r_sm.s_clear~q\ & \layer0|n0|r_sinapse_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sm.s_clear~q\,
	datac => \layer0|n0|r_sinapse_count\(8),
	combout => \layer0|n0|Selector26~0_combout\);

-- Location: FF_X35_Y57_N17
\layer0|n0|r_sinapse_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[8]~48_combout\,
	asdata => \layer0|n0|Selector26~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(8));

-- Location: LCCOMB_X35_Y57_N18
\layer0|n0|r_sinapse_count[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[9]~50_combout\ = (\layer0|n0|r_sinapse_count\(9) & (!\layer0|n0|r_sinapse_count[8]~49\)) # (!\layer0|n0|r_sinapse_count\(9) & ((\layer0|n0|r_sinapse_count[8]~49\) # (GND)))
-- \layer0|n0|r_sinapse_count[9]~51\ = CARRY((!\layer0|n0|r_sinapse_count[8]~49\) # (!\layer0|n0|r_sinapse_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(9),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[8]~49\,
	combout => \layer0|n0|r_sinapse_count[9]~50_combout\,
	cout => \layer0|n0|r_sinapse_count[9]~51\);

-- Location: LCCOMB_X34_Y57_N16
\layer0|n0|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector25~0_combout\ = (\layer0|n0|r_sinapse_count\(9) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(9),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector25~0_combout\);

-- Location: FF_X35_Y57_N19
\layer0|n0|r_sinapse_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[9]~50_combout\,
	asdata => \layer0|n0|Selector25~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(9));

-- Location: LCCOMB_X35_Y57_N20
\layer0|n0|r_sinapse_count[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[10]~52_combout\ = (\layer0|n0|r_sinapse_count\(10) & (\layer0|n0|r_sinapse_count[9]~51\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(10) & (!\layer0|n0|r_sinapse_count[9]~51\ & VCC))
-- \layer0|n0|r_sinapse_count[10]~53\ = CARRY((\layer0|n0|r_sinapse_count\(10) & !\layer0|n0|r_sinapse_count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(10),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[9]~51\,
	combout => \layer0|n0|r_sinapse_count[10]~52_combout\,
	cout => \layer0|n0|r_sinapse_count[10]~53\);

-- Location: LCCOMB_X34_Y57_N2
\layer0|n0|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector24~0_combout\ = (\layer0|n0|r_sinapse_count\(10) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_sinapse_count\(10),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector24~0_combout\);

-- Location: FF_X35_Y57_N21
\layer0|n0|r_sinapse_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[10]~52_combout\,
	asdata => \layer0|n0|Selector24~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(10));

-- Location: LCCOMB_X35_Y57_N22
\layer0|n0|r_sinapse_count[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[11]~54_combout\ = (\layer0|n0|r_sinapse_count\(11) & (!\layer0|n0|r_sinapse_count[10]~53\)) # (!\layer0|n0|r_sinapse_count\(11) & ((\layer0|n0|r_sinapse_count[10]~53\) # (GND)))
-- \layer0|n0|r_sinapse_count[11]~55\ = CARRY((!\layer0|n0|r_sinapse_count[10]~53\) # (!\layer0|n0|r_sinapse_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(11),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[10]~53\,
	combout => \layer0|n0|r_sinapse_count[11]~54_combout\,
	cout => \layer0|n0|r_sinapse_count[11]~55\);

-- Location: LCCOMB_X34_Y57_N4
\layer0|n0|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector23~0_combout\ = (\layer0|n0|r_sinapse_count\(11) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(11),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector23~0_combout\);

-- Location: FF_X35_Y57_N23
\layer0|n0|r_sinapse_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[11]~54_combout\,
	asdata => \layer0|n0|Selector23~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(11));

-- Location: LCCOMB_X35_Y57_N24
\layer0|n0|r_sinapse_count[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[12]~56_combout\ = (\layer0|n0|r_sinapse_count\(12) & (\layer0|n0|r_sinapse_count[11]~55\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(12) & (!\layer0|n0|r_sinapse_count[11]~55\ & VCC))
-- \layer0|n0|r_sinapse_count[12]~57\ = CARRY((\layer0|n0|r_sinapse_count\(12) & !\layer0|n0|r_sinapse_count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(12),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[11]~55\,
	combout => \layer0|n0|r_sinapse_count[12]~56_combout\,
	cout => \layer0|n0|r_sinapse_count[12]~57\);

-- Location: LCCOMB_X34_Y57_N6
\layer0|n0|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector22~0_combout\ = (\layer0|n0|r_sinapse_count\(12) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_sinapse_count\(12),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector22~0_combout\);

-- Location: FF_X35_Y57_N25
\layer0|n0|r_sinapse_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[12]~56_combout\,
	asdata => \layer0|n0|Selector22~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(12));

-- Location: LCCOMB_X34_Y57_N20
\layer0|n0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|LessThan0~3_combout\ = (!\layer0|n0|r_sinapse_count\(12) & (!\layer0|n0|r_sinapse_count\(11) & (!\layer0|n0|r_sinapse_count\(10) & !\layer0|n0|r_sinapse_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(12),
	datab => \layer0|n0|r_sinapse_count\(11),
	datac => \layer0|n0|r_sinapse_count\(10),
	datad => \layer0|n0|r_sinapse_count\(9),
	combout => \layer0|n0|LessThan0~3_combout\);

-- Location: LCCOMB_X36_Y57_N24
\layer0|n0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|LessThan0~1_combout\ = (!\layer0|n0|r_sinapse_count\(4) & (!\layer0|n0|r_sinapse_count\(3) & ((!\layer0|n0|r_sinapse_count\(1)) # (!\layer0|n0|r_sinapse_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(4),
	datab => \layer0|n0|r_sinapse_count\(3),
	datac => \layer0|n0|r_sinapse_count\(2),
	datad => \layer0|n0|r_sinapse_count\(1),
	combout => \layer0|n0|LessThan0~1_combout\);

-- Location: LCCOMB_X35_Y57_N26
\layer0|n0|r_sinapse_count[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[13]~58_combout\ = (\layer0|n0|r_sinapse_count\(13) & (!\layer0|n0|r_sinapse_count[12]~57\)) # (!\layer0|n0|r_sinapse_count\(13) & ((\layer0|n0|r_sinapse_count[12]~57\) # (GND)))
-- \layer0|n0|r_sinapse_count[13]~59\ = CARRY((!\layer0|n0|r_sinapse_count[12]~57\) # (!\layer0|n0|r_sinapse_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(13),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[12]~57\,
	combout => \layer0|n0|r_sinapse_count[13]~58_combout\,
	cout => \layer0|n0|r_sinapse_count[13]~59\);

-- Location: LCCOMB_X34_Y57_N24
\layer0|n0|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector21~0_combout\ = (\layer0|n0|r_sinapse_count\(13) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(13),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector21~0_combout\);

-- Location: FF_X35_Y57_N27
\layer0|n0|r_sinapse_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[13]~58_combout\,
	asdata => \layer0|n0|Selector21~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(13));

-- Location: LCCOMB_X35_Y57_N28
\layer0|n0|r_sinapse_count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[14]~60_combout\ = (\layer0|n0|r_sinapse_count\(14) & (\layer0|n0|r_sinapse_count[13]~59\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(14) & (!\layer0|n0|r_sinapse_count[13]~59\ & VCC))
-- \layer0|n0|r_sinapse_count[14]~61\ = CARRY((\layer0|n0|r_sinapse_count\(14) & !\layer0|n0|r_sinapse_count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(14),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[13]~59\,
	combout => \layer0|n0|r_sinapse_count[14]~60_combout\,
	cout => \layer0|n0|r_sinapse_count[14]~61\);

-- Location: LCCOMB_X34_Y57_N26
\layer0|n0|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector20~0_combout\ = (\layer0|n0|r_sinapse_count\(14) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(14),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector20~0_combout\);

-- Location: FF_X35_Y57_N29
\layer0|n0|r_sinapse_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[14]~60_combout\,
	asdata => \layer0|n0|Selector20~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(14));

-- Location: LCCOMB_X35_Y57_N30
\layer0|n0|r_sinapse_count[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[15]~62_combout\ = (\layer0|n0|r_sinapse_count\(15) & (!\layer0|n0|r_sinapse_count[14]~61\)) # (!\layer0|n0|r_sinapse_count\(15) & ((\layer0|n0|r_sinapse_count[14]~61\) # (GND)))
-- \layer0|n0|r_sinapse_count[15]~63\ = CARRY((!\layer0|n0|r_sinapse_count[14]~61\) # (!\layer0|n0|r_sinapse_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(15),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[14]~61\,
	combout => \layer0|n0|r_sinapse_count[15]~62_combout\,
	cout => \layer0|n0|r_sinapse_count[15]~63\);

-- Location: LCCOMB_X34_Y57_N0
\layer0|n0|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector19~0_combout\ = (\layer0|n0|r_sinapse_count\(15) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_sinapse_count\(15),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector19~0_combout\);

-- Location: FF_X35_Y57_N31
\layer0|n0|r_sinapse_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[15]~62_combout\,
	asdata => \layer0|n0|Selector19~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(15));

-- Location: LCCOMB_X35_Y56_N0
\layer0|n0|r_sinapse_count[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[16]~64_combout\ = (\layer0|n0|r_sinapse_count\(16) & (\layer0|n0|r_sinapse_count[15]~63\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(16) & (!\layer0|n0|r_sinapse_count[15]~63\ & VCC))
-- \layer0|n0|r_sinapse_count[16]~65\ = CARRY((\layer0|n0|r_sinapse_count\(16) & !\layer0|n0|r_sinapse_count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(16),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[15]~63\,
	combout => \layer0|n0|r_sinapse_count[16]~64_combout\,
	cout => \layer0|n0|r_sinapse_count[16]~65\);

-- Location: LCCOMB_X34_Y56_N6
\layer0|n0|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector18~0_combout\ = (\layer0|n0|r_sinapse_count\(16) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_sinapse_count\(16),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector18~0_combout\);

-- Location: FF_X35_Y56_N1
\layer0|n0|r_sinapse_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[16]~64_combout\,
	asdata => \layer0|n0|Selector18~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(16));

-- Location: LCCOMB_X34_Y57_N14
\layer0|n0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|LessThan0~4_combout\ = (!\layer0|n0|r_sinapse_count\(15) & (!\layer0|n0|r_sinapse_count\(14) & (!\layer0|n0|r_sinapse_count\(16) & !\layer0|n0|r_sinapse_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(15),
	datab => \layer0|n0|r_sinapse_count\(14),
	datac => \layer0|n0|r_sinapse_count\(16),
	datad => \layer0|n0|r_sinapse_count\(13),
	combout => \layer0|n0|LessThan0~4_combout\);

-- Location: LCCOMB_X36_Y57_N18
\layer0|n0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|LessThan0~2_combout\ = (!\layer0|n0|r_sinapse_count\(6) & (!\layer0|n0|r_sinapse_count\(7) & (!\layer0|n0|r_sinapse_count\(8) & !\layer0|n0|r_sinapse_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(6),
	datab => \layer0|n0|r_sinapse_count\(7),
	datac => \layer0|n0|r_sinapse_count\(8),
	datad => \layer0|n0|r_sinapse_count\(5),
	combout => \layer0|n0|LessThan0~2_combout\);

-- Location: LCCOMB_X36_Y57_N4
\layer0|n0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|LessThan0~5_combout\ = (\layer0|n0|LessThan0~3_combout\ & (\layer0|n0|LessThan0~1_combout\ & (\layer0|n0|LessThan0~4_combout\ & \layer0|n0|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|LessThan0~3_combout\,
	datab => \layer0|n0|LessThan0~1_combout\,
	datac => \layer0|n0|LessThan0~4_combout\,
	datad => \layer0|n0|LessThan0~2_combout\,
	combout => \layer0|n0|LessThan0~5_combout\);

-- Location: LCCOMB_X35_Y56_N2
\layer0|n0|r_sinapse_count[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[17]~66_combout\ = (\layer0|n0|r_sinapse_count\(17) & (!\layer0|n0|r_sinapse_count[16]~65\)) # (!\layer0|n0|r_sinapse_count\(17) & ((\layer0|n0|r_sinapse_count[16]~65\) # (GND)))
-- \layer0|n0|r_sinapse_count[17]~67\ = CARRY((!\layer0|n0|r_sinapse_count[16]~65\) # (!\layer0|n0|r_sinapse_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(17),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[16]~65\,
	combout => \layer0|n0|r_sinapse_count[17]~66_combout\,
	cout => \layer0|n0|r_sinapse_count[17]~67\);

-- Location: LCCOMB_X34_Y56_N18
\layer0|n0|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector17~0_combout\ = (\layer0|n0|r_sinapse_count\(17) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(17),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector17~0_combout\);

-- Location: FF_X35_Y56_N3
\layer0|n0|r_sinapse_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[17]~66_combout\,
	asdata => \layer0|n0|Selector17~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(17));

-- Location: LCCOMB_X35_Y56_N4
\layer0|n0|r_sinapse_count[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[18]~68_combout\ = (\layer0|n0|r_sinapse_count\(18) & (\layer0|n0|r_sinapse_count[17]~67\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(18) & (!\layer0|n0|r_sinapse_count[17]~67\ & VCC))
-- \layer0|n0|r_sinapse_count[18]~69\ = CARRY((\layer0|n0|r_sinapse_count\(18) & !\layer0|n0|r_sinapse_count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(18),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[17]~67\,
	combout => \layer0|n0|r_sinapse_count[18]~68_combout\,
	cout => \layer0|n0|r_sinapse_count[18]~69\);

-- Location: LCCOMB_X34_Y56_N2
\layer0|n0|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector16~0_combout\ = (\layer0|n0|r_sinapse_count\(18) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(18),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector16~0_combout\);

-- Location: FF_X35_Y56_N5
\layer0|n0|r_sinapse_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[18]~68_combout\,
	asdata => \layer0|n0|Selector16~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(18));

-- Location: LCCOMB_X35_Y56_N6
\layer0|n0|r_sinapse_count[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[19]~70_combout\ = (\layer0|n0|r_sinapse_count\(19) & (!\layer0|n0|r_sinapse_count[18]~69\)) # (!\layer0|n0|r_sinapse_count\(19) & ((\layer0|n0|r_sinapse_count[18]~69\) # (GND)))
-- \layer0|n0|r_sinapse_count[19]~71\ = CARRY((!\layer0|n0|r_sinapse_count[18]~69\) # (!\layer0|n0|r_sinapse_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(19),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[18]~69\,
	combout => \layer0|n0|r_sinapse_count[19]~70_combout\,
	cout => \layer0|n0|r_sinapse_count[19]~71\);

-- Location: LCCOMB_X34_Y56_N16
\layer0|n0|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector15~0_combout\ = (\layer0|n0|r_sinapse_count\(19) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(19),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector15~0_combout\);

-- Location: FF_X35_Y56_N7
\layer0|n0|r_sinapse_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[19]~70_combout\,
	asdata => \layer0|n0|Selector15~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(19));

-- Location: LCCOMB_X35_Y56_N8
\layer0|n0|r_sinapse_count[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[20]~72_combout\ = (\layer0|n0|r_sinapse_count\(20) & (\layer0|n0|r_sinapse_count[19]~71\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(20) & (!\layer0|n0|r_sinapse_count[19]~71\ & VCC))
-- \layer0|n0|r_sinapse_count[20]~73\ = CARRY((\layer0|n0|r_sinapse_count\(20) & !\layer0|n0|r_sinapse_count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(20),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[19]~71\,
	combout => \layer0|n0|r_sinapse_count[20]~72_combout\,
	cout => \layer0|n0|r_sinapse_count[20]~73\);

-- Location: LCCOMB_X34_Y56_N28
\layer0|n0|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector14~0_combout\ = (\layer0|n0|r_sinapse_count\(20) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_sinapse_count\(20),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector14~0_combout\);

-- Location: FF_X35_Y56_N9
\layer0|n0|r_sinapse_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[20]~72_combout\,
	asdata => \layer0|n0|Selector14~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(20));

-- Location: LCCOMB_X35_Y56_N10
\layer0|n0|r_sinapse_count[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[21]~74_combout\ = (\layer0|n0|r_sinapse_count\(21) & (!\layer0|n0|r_sinapse_count[20]~73\)) # (!\layer0|n0|r_sinapse_count\(21) & ((\layer0|n0|r_sinapse_count[20]~73\) # (GND)))
-- \layer0|n0|r_sinapse_count[21]~75\ = CARRY((!\layer0|n0|r_sinapse_count[20]~73\) # (!\layer0|n0|r_sinapse_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(21),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[20]~73\,
	combout => \layer0|n0|r_sinapse_count[21]~74_combout\,
	cout => \layer0|n0|r_sinapse_count[21]~75\);

-- Location: LCCOMB_X36_Y56_N14
\layer0|n0|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector13~0_combout\ = (\layer0|n0|r_sinapse_count\(21) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(21),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector13~0_combout\);

-- Location: FF_X35_Y56_N11
\layer0|n0|r_sinapse_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[21]~74_combout\,
	asdata => \layer0|n0|Selector13~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(21));

-- Location: LCCOMB_X35_Y56_N12
\layer0|n0|r_sinapse_count[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[22]~76_combout\ = (\layer0|n0|r_sinapse_count\(22) & (\layer0|n0|r_sinapse_count[21]~75\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(22) & (!\layer0|n0|r_sinapse_count[21]~75\ & VCC))
-- \layer0|n0|r_sinapse_count[22]~77\ = CARRY((\layer0|n0|r_sinapse_count\(22) & !\layer0|n0|r_sinapse_count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(22),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[21]~75\,
	combout => \layer0|n0|r_sinapse_count[22]~76_combout\,
	cout => \layer0|n0|r_sinapse_count[22]~77\);

-- Location: LCCOMB_X36_Y56_N30
\layer0|n0|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector12~0_combout\ = (\layer0|n0|r_sinapse_count\(22) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(22),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector12~0_combout\);

-- Location: FF_X35_Y56_N13
\layer0|n0|r_sinapse_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[22]~76_combout\,
	asdata => \layer0|n0|Selector12~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(22));

-- Location: LCCOMB_X35_Y56_N14
\layer0|n0|r_sinapse_count[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[23]~78_combout\ = (\layer0|n0|r_sinapse_count\(23) & (!\layer0|n0|r_sinapse_count[22]~77\)) # (!\layer0|n0|r_sinapse_count\(23) & ((\layer0|n0|r_sinapse_count[22]~77\) # (GND)))
-- \layer0|n0|r_sinapse_count[23]~79\ = CARRY((!\layer0|n0|r_sinapse_count[22]~77\) # (!\layer0|n0|r_sinapse_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(23),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[22]~77\,
	combout => \layer0|n0|r_sinapse_count[23]~78_combout\,
	cout => \layer0|n0|r_sinapse_count[23]~79\);

-- Location: LCCOMB_X36_Y56_N28
\layer0|n0|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector11~0_combout\ = (\layer0|n0|r_sinapse_count\(23) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(23),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector11~0_combout\);

-- Location: FF_X35_Y56_N15
\layer0|n0|r_sinapse_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[23]~78_combout\,
	asdata => \layer0|n0|Selector11~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(23));

-- Location: LCCOMB_X35_Y56_N16
\layer0|n0|r_sinapse_count[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[24]~80_combout\ = (\layer0|n0|r_sinapse_count\(24) & (\layer0|n0|r_sinapse_count[23]~79\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(24) & (!\layer0|n0|r_sinapse_count[23]~79\ & VCC))
-- \layer0|n0|r_sinapse_count[24]~81\ = CARRY((\layer0|n0|r_sinapse_count\(24) & !\layer0|n0|r_sinapse_count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(24),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[23]~79\,
	combout => \layer0|n0|r_sinapse_count[24]~80_combout\,
	cout => \layer0|n0|r_sinapse_count[24]~81\);

-- Location: LCCOMB_X36_Y56_N20
\layer0|n0|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector10~0_combout\ = (\layer0|n0|r_sinapse_count\(24) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(24),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector10~0_combout\);

-- Location: FF_X35_Y56_N17
\layer0|n0|r_sinapse_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[24]~80_combout\,
	asdata => \layer0|n0|Selector10~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(24));

-- Location: LCCOMB_X35_Y56_N18
\layer0|n0|r_sinapse_count[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[25]~82_combout\ = (\layer0|n0|r_sinapse_count\(25) & (!\layer0|n0|r_sinapse_count[24]~81\)) # (!\layer0|n0|r_sinapse_count\(25) & ((\layer0|n0|r_sinapse_count[24]~81\) # (GND)))
-- \layer0|n0|r_sinapse_count[25]~83\ = CARRY((!\layer0|n0|r_sinapse_count[24]~81\) # (!\layer0|n0|r_sinapse_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(25),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[24]~81\,
	combout => \layer0|n0|r_sinapse_count[25]~82_combout\,
	cout => \layer0|n0|r_sinapse_count[25]~83\);

-- Location: LCCOMB_X34_Y56_N24
\layer0|n0|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector9~0_combout\ = (\layer0|n0|r_sinapse_count\(25) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(25),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector9~0_combout\);

-- Location: FF_X35_Y56_N19
\layer0|n0|r_sinapse_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[25]~82_combout\,
	asdata => \layer0|n0|Selector9~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(25));

-- Location: LCCOMB_X35_Y56_N20
\layer0|n0|r_sinapse_count[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[26]~84_combout\ = (\layer0|n0|r_sinapse_count\(26) & (\layer0|n0|r_sinapse_count[25]~83\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(26) & (!\layer0|n0|r_sinapse_count[25]~83\ & VCC))
-- \layer0|n0|r_sinapse_count[26]~85\ = CARRY((\layer0|n0|r_sinapse_count\(26) & !\layer0|n0|r_sinapse_count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(26),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[25]~83\,
	combout => \layer0|n0|r_sinapse_count[26]~84_combout\,
	cout => \layer0|n0|r_sinapse_count[26]~85\);

-- Location: LCCOMB_X34_Y56_N14
\layer0|n0|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector8~0_combout\ = (\layer0|n0|r_sinapse_count\(26) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_sinapse_count\(26),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector8~0_combout\);

-- Location: FF_X35_Y56_N21
\layer0|n0|r_sinapse_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[26]~84_combout\,
	asdata => \layer0|n0|Selector8~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(26));

-- Location: LCCOMB_X35_Y56_N22
\layer0|n0|r_sinapse_count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[27]~86_combout\ = (\layer0|n0|r_sinapse_count\(27) & (!\layer0|n0|r_sinapse_count[26]~85\)) # (!\layer0|n0|r_sinapse_count\(27) & ((\layer0|n0|r_sinapse_count[26]~85\) # (GND)))
-- \layer0|n0|r_sinapse_count[27]~87\ = CARRY((!\layer0|n0|r_sinapse_count[26]~85\) # (!\layer0|n0|r_sinapse_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(27),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[26]~85\,
	combout => \layer0|n0|r_sinapse_count[27]~86_combout\,
	cout => \layer0|n0|r_sinapse_count[27]~87\);

-- Location: LCCOMB_X34_Y56_N0
\layer0|n0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector7~0_combout\ = (\layer0|n0|r_sinapse_count\(27) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(27),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector7~0_combout\);

-- Location: FF_X35_Y56_N23
\layer0|n0|r_sinapse_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[27]~86_combout\,
	asdata => \layer0|n0|Selector7~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(27));

-- Location: LCCOMB_X35_Y56_N24
\layer0|n0|r_sinapse_count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[28]~88_combout\ = (\layer0|n0|r_sinapse_count\(28) & (\layer0|n0|r_sinapse_count[27]~87\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(28) & (!\layer0|n0|r_sinapse_count[27]~87\ & VCC))
-- \layer0|n0|r_sinapse_count[28]~89\ = CARRY((\layer0|n0|r_sinapse_count\(28) & !\layer0|n0|r_sinapse_count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(28),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[27]~87\,
	combout => \layer0|n0|r_sinapse_count[28]~88_combout\,
	cout => \layer0|n0|r_sinapse_count[28]~89\);

-- Location: LCCOMB_X34_Y56_N26
\layer0|n0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector6~0_combout\ = (\layer0|n0|r_sinapse_count\(28) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(28),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector6~0_combout\);

-- Location: FF_X35_Y56_N25
\layer0|n0|r_sinapse_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[28]~88_combout\,
	asdata => \layer0|n0|Selector6~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(28));

-- Location: LCCOMB_X35_Y56_N26
\layer0|n0|r_sinapse_count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[29]~90_combout\ = (\layer0|n0|r_sinapse_count\(29) & (!\layer0|n0|r_sinapse_count[28]~89\)) # (!\layer0|n0|r_sinapse_count\(29) & ((\layer0|n0|r_sinapse_count[28]~89\) # (GND)))
-- \layer0|n0|r_sinapse_count[29]~91\ = CARRY((!\layer0|n0|r_sinapse_count[28]~89\) # (!\layer0|n0|r_sinapse_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(29),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[28]~89\,
	combout => \layer0|n0|r_sinapse_count[29]~90_combout\,
	cout => \layer0|n0|r_sinapse_count[29]~91\);

-- Location: LCCOMB_X34_Y56_N4
\layer0|n0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector5~0_combout\ = (\layer0|n0|r_sinapse_count\(29) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(29),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector5~0_combout\);

-- Location: FF_X35_Y56_N27
\layer0|n0|r_sinapse_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[29]~90_combout\,
	asdata => \layer0|n0|Selector5~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(29));

-- Location: LCCOMB_X35_Y56_N28
\layer0|n0|r_sinapse_count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[30]~92_combout\ = (\layer0|n0|r_sinapse_count\(30) & (\layer0|n0|r_sinapse_count[29]~91\ $ (GND))) # (!\layer0|n0|r_sinapse_count\(30) & (!\layer0|n0|r_sinapse_count[29]~91\ & VCC))
-- \layer0|n0|r_sinapse_count[30]~93\ = CARRY((\layer0|n0|r_sinapse_count\(30) & !\layer0|n0|r_sinapse_count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(30),
	datad => VCC,
	cin => \layer0|n0|r_sinapse_count[29]~91\,
	combout => \layer0|n0|r_sinapse_count[30]~92_combout\,
	cout => \layer0|n0|r_sinapse_count[30]~93\);

-- Location: LCCOMB_X34_Y56_N10
\layer0|n0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector4~0_combout\ = (\layer0|n0|r_sinapse_count\(30) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(30),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector4~0_combout\);

-- Location: FF_X35_Y56_N29
\layer0|n0|r_sinapse_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[30]~92_combout\,
	asdata => \layer0|n0|Selector4~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(30));

-- Location: LCCOMB_X35_Y56_N30
\layer0|n0|r_sinapse_count[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sinapse_count[31]~94_combout\ = \layer0|n0|r_sinapse_count\(31) $ (\layer0|n0|r_sinapse_count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(31),
	cin => \layer0|n0|r_sinapse_count[30]~93\,
	combout => \layer0|n0|r_sinapse_count[31]~94_combout\);

-- Location: LCCOMB_X36_Y56_N8
\layer0|n0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector3~0_combout\ = (\layer0|n0|r_sinapse_count\(31) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sinapse_count\(31),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector3~0_combout\);

-- Location: FF_X35_Y56_N31
\layer0|n0|r_sinapse_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[31]~94_combout\,
	asdata => \layer0|n0|Selector3~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(31));

-- Location: LCCOMB_X34_Y56_N20
\layer0|n0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|LessThan0~6_combout\ = (!\layer0|n0|r_sinapse_count\(28) & (!\layer0|n0|r_sinapse_count\(27) & (!\layer0|n0|r_sinapse_count\(26) & !\layer0|n0|r_sinapse_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(28),
	datab => \layer0|n0|r_sinapse_count\(27),
	datac => \layer0|n0|r_sinapse_count\(26),
	datad => \layer0|n0|r_sinapse_count\(25),
	combout => \layer0|n0|LessThan0~6_combout\);

-- Location: LCCOMB_X34_Y56_N22
\layer0|n0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|LessThan0~7_combout\ = (\layer0|n0|r_sinapse_count\(17)) # ((\layer0|n0|r_sinapse_count\(30)) # ((\layer0|n0|r_sinapse_count\(20)) # (\layer0|n0|r_sinapse_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(17),
	datab => \layer0|n0|r_sinapse_count\(30),
	datac => \layer0|n0|r_sinapse_count\(20),
	datad => \layer0|n0|r_sinapse_count\(29),
	combout => \layer0|n0|LessThan0~7_combout\);

-- Location: LCCOMB_X34_Y56_N8
\layer0|n0|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|LessThan0~8_combout\ = (!\layer0|n0|r_sinapse_count\(18) & (\layer0|n0|LessThan0~6_combout\ & (!\layer0|n0|LessThan0~7_combout\ & !\layer0|n0|r_sinapse_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(18),
	datab => \layer0|n0|LessThan0~6_combout\,
	datac => \layer0|n0|LessThan0~7_combout\,
	datad => \layer0|n0|r_sinapse_count\(19),
	combout => \layer0|n0|LessThan0~8_combout\);

-- Location: LCCOMB_X36_Y56_N10
\layer0|n0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|LessThan0~0_combout\ = (!\layer0|n0|r_sinapse_count\(21) & (!\layer0|n0|r_sinapse_count\(23) & (!\layer0|n0|r_sinapse_count\(24) & !\layer0|n0|r_sinapse_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sinapse_count\(21),
	datab => \layer0|n0|r_sinapse_count\(23),
	datac => \layer0|n0|r_sinapse_count\(24),
	datad => \layer0|n0|r_sinapse_count\(22),
	combout => \layer0|n0|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y56_N2
\layer0|n0|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|LessThan0~9_combout\ = (\layer0|n0|r_sinapse_count\(31)) # ((\layer0|n0|LessThan0~5_combout\ & (\layer0|n0|LessThan0~8_combout\ & \layer0|n0|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|LessThan0~5_combout\,
	datab => \layer0|n0|r_sinapse_count\(31),
	datac => \layer0|n0|LessThan0~8_combout\,
	datad => \layer0|n0|LessThan0~0_combout\,
	combout => \layer0|n0|LessThan0~9_combout\);

-- Location: LCCOMB_X36_Y56_N0
\layer0|n0|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector1~1_combout\ = (\layer0|n0|Selector1~0_combout\ & ((\layer0|n0|LessThan0~9_combout\) # ((\layer0|r_enable_n0~q\ & !\layer0|n0|r_sm.s_idle~q\)))) # (!\layer0|n0|Selector1~0_combout\ & (\layer0|r_enable_n0~q\ & 
-- (!\layer0|n0|r_sm.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|Selector1~0_combout\,
	datab => \layer0|r_enable_n0~q\,
	datac => \layer0|n0|r_sm.s_idle~q\,
	datad => \layer0|n0|LessThan0~9_combout\,
	combout => \layer0|n0|Selector1~1_combout\);

-- Location: FF_X36_Y56_N1
\layer0|n0|r_sm.s_get_weight\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sm.s_get_weight~q\);

-- Location: FF_X36_Y56_N21
\layer0|n0|r_sm.s_wait_weight\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_sm.s_get_weight~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sm.s_wait_weight~q\);

-- Location: LCCOMB_X36_Y56_N24
\layer0|n0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector2~0_combout\ = (\layer0|n0|r_sm.s_wait_weight~q\) # ((\layer0|n0|r_sm.s_mac_result~q\ & !\layer0|n0|mac_n1|o_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sm.s_mac_result~q\,
	datac => \layer0|n0|mac_n1|o_done~q\,
	datad => \layer0|n0|r_sm.s_wait_weight~q\,
	combout => \layer0|n0|Selector2~0_combout\);

-- Location: FF_X36_Y56_N25
\layer0|n0|r_sm.s_mac\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sm.s_mac~q\);

-- Location: LCCOMB_X36_Y56_N18
\layer0|n0|r_sm.s_wait_mac~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sm.s_wait_mac~feeder_combout\ = \layer0|n0|r_sm.s_mac~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|r_sm.s_mac~q\,
	combout => \layer0|n0|r_sm.s_wait_mac~feeder_combout\);

-- Location: FF_X36_Y56_N19
\layer0|n0|r_sm.s_wait_mac\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sm.s_wait_mac~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sm.s_wait_mac~q\);

-- Location: FF_X36_Y56_N13
\layer0|n0|r_sm.s_mac_result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_sm.s_wait_mac~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sm.s_mac_result~q\);

-- Location: LCCOMB_X36_Y56_N16
\layer0|n0|r_sm~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sm~14_combout\ = (\layer0|n0|r_sm.s_mac_result~q\ & (\layer0|n0|mac_n1|o_done~q\ & !\layer0|n0|LessThan0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_sm.s_mac_result~q\,
	datac => \layer0|n0|mac_n1|o_done~q\,
	datad => \layer0|n0|LessThan0~9_combout\,
	combout => \layer0|n0|r_sm~14_combout\);

-- Location: FF_X36_Y56_N17
\layer0|n0|r_sm.s_bias\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sm~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sm.s_bias~q\);

-- Location: LCCOMB_X36_Y56_N22
\layer0|n0|r_sm.s_relu~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sm.s_relu~feeder_combout\ = \layer0|n0|r_sm.s_bias~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|r_sm.s_bias~q\,
	combout => \layer0|n0|r_sm.s_relu~feeder_combout\);

-- Location: FF_X36_Y56_N23
\layer0|n0|r_sm.s_relu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sm.s_relu~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sm.s_relu~q\);

-- Location: FF_X36_Y60_N7
\layer0|n0|r_sm.s_wait_relu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_sm.s_relu~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sm.s_wait_relu~q\);

-- Location: LCCOMB_X36_Y60_N2
\layer0|n0|r_sm.s_clear~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_sm.s_clear~feeder_combout\ = \layer0|n0|r_sm.s_wait_relu~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|r_sm.s_wait_relu~q\,
	combout => \layer0|n0|r_sm.s_clear~feeder_combout\);

-- Location: FF_X36_Y60_N3
\layer0|n0|r_sm.s_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sm.s_clear~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sm.s_clear~q\);

-- Location: LCCOMB_X34_Y57_N22
\layer0|n0|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector34~0_combout\ = (\layer0|n0|r_sinapse_count\(0) & !\layer0|n0|r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_sinapse_count\(0),
	datad => \layer0|n0|r_sm.s_clear~q\,
	combout => \layer0|n0|Selector34~0_combout\);

-- Location: FF_X35_Y57_N1
\layer0|n0|r_sinapse_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_sinapse_count[0]~32_combout\,
	asdata => \layer0|n0|Selector34~0_combout\,
	sload => \layer0|n0|ALT_INV_r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_sinapse_count\(0));

-- Location: FF_X34_Y57_N13
\layer0|n0|r_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_sinapse_count\(0),
	sload => VCC,
	ena => \layer0|n0|r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_addr\(0));

-- Location: LCCOMB_X36_Y57_N2
\layer0|n0|r_addr[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_addr[1]~feeder_combout\ = \layer0|n0|r_sinapse_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|r_sinapse_count\(1),
	combout => \layer0|n0|r_addr[1]~feeder_combout\);

-- Location: FF_X36_Y57_N3
\layer0|n0|r_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_addr[1]~feeder_combout\,
	ena => \layer0|n0|r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_addr\(1));

-- Location: FF_X36_Y57_N17
\layer0|n0|r_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_sinapse_count\(2),
	sload => VCC,
	ena => \layer0|n0|r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_addr\(2));

-- Location: FF_X36_Y57_N27
\layer0|n0|r_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_sinapse_count\(3),
	sload => VCC,
	ena => \layer0|n0|r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_addr\(3));

-- Location: LCCOMB_X36_Y57_N28
\layer0|n0|r_addr[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_addr[4]~feeder_combout\ = \layer0|n0|r_sinapse_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|r_sinapse_count\(4),
	combout => \layer0|n0|r_addr[4]~feeder_combout\);

-- Location: FF_X36_Y57_N29
\layer0|n0|r_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_addr[4]~feeder_combout\,
	ena => \layer0|n0|r_sm.s_get_weight~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_addr\(4));

-- Location: M9K_X37_Y53_N0
\layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFDCFE3800274007000210EF3A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/amc.ram0_ram_l1_n0_747a30f2.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "layer_0:layer0|neuron_l1_n0:n0|ram_l1_n0:ram_n1|altsyncram:r_mem_rtl_0|altsyncram_3h61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 50,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	portaaddr => \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \layer0|n0|ram_n1|r_mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X58_Y73_N15
\i_ft_0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(0),
	o => \i_ft_0[0]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\i_ft_0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(1),
	o => \i_ft_0[1]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\i_ft_0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(2),
	o => \i_ft_0[2]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\i_ft_0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(3),
	o => \i_ft_0[3]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\i_ft_0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(4),
	o => \i_ft_0[4]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\i_ft_0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(5),
	o => \i_ft_0[5]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\i_ft_0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(6),
	o => \i_ft_0[6]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\i_ft_0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(7),
	o => \i_ft_0[7]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\i_ft_0[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(8),
	o => \i_ft_0[8]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\i_ft_0[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(9),
	o => \i_ft_0[9]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\i_ft_0[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(10),
	o => \i_ft_0[10]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\i_ft_0[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(11),
	o => \i_ft_0[11]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\i_ft_0[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(12),
	o => \i_ft_0[12]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\i_ft_0[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(13),
	o => \i_ft_0[13]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\i_ft_0[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(14),
	o => \i_ft_0[14]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\i_ft_0[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_0(15),
	o => \i_ft_0[15]~input_o\);

-- Location: DSPMULT_X44_Y53_N0
\layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \layer0|n0|mac_n1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X44_Y53_N2
\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X42_Y53_N28
\layer0|n0|mac_n1|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~0_combout\ = (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT30\ & (((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\ & \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT26\)) # 
-- (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT27\))) # (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT30\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\) # 
-- (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT30\,
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT26\,
	combout => \layer0|n0|mac_n1|result~0_combout\);

-- Location: LCCOMB_X42_Y53_N18
\layer0|n0|mac_n1|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~1_combout\ = (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT29\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT28\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT27\ & 
-- \layer0|n0|mac_n1|result~0_combout\))) # (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT28\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT27\ & 
-- !\layer0|n0|mac_n1|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT29\,
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => \layer0|n0|mac_n1|result~0_combout\,
	combout => \layer0|n0|mac_n1|result~1_combout\);

-- Location: LCCOMB_X43_Y52_N18
\layer0|n0|mac_n1|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~3_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT25\))) # (!\layer0|n0|mac_n1|result~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~3_combout\);

-- Location: LCCOMB_X43_Y52_N28
\layer0|n0|mac_n1|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~4_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT24\)) # (!\layer0|n0|mac_n1|result~1_combout\ & ((!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~4_combout\);

-- Location: LCCOMB_X43_Y52_N26
\layer0|n0|mac_n1|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~5_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT23\)) # (!\layer0|n0|mac_n1|result~1_combout\ & ((!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~5_combout\);

-- Location: LCCOMB_X43_Y52_N20
\layer0|n0|mac_n1|result~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~6_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT22\))) # (!\layer0|n0|mac_n1|result~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~6_combout\);

-- Location: LCCOMB_X43_Y52_N22
\layer0|n0|mac_n1|result~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~7_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT21\))) # (!\layer0|n0|mac_n1|result~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~7_combout\);

-- Location: LCCOMB_X42_Y53_N26
\layer0|n0|mac_n1|result~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~8_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT20\)) # (!\layer0|n0|mac_n1|result~1_combout\ & ((!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~8_combout\);

-- Location: LCCOMB_X42_Y53_N8
\layer0|n0|mac_n1|result~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~9_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT19\))) # (!\layer0|n0|mac_n1|result~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~9_combout\);

-- Location: LCCOMB_X43_Y53_N4
\layer0|n0|mac_n1|result~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~10_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT18\))) # (!\layer0|n0|mac_n1|result~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~10_combout\);

-- Location: LCCOMB_X43_Y53_N14
\layer0|n0|mac_n1|result~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~11_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT17\))) # (!\layer0|n0|mac_n1|result~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~11_combout\);

-- Location: LCCOMB_X42_Y53_N10
\layer0|n0|mac_n1|result~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~12_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT16\))) # (!\layer0|n0|mac_n1|result~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~12_combout\);

-- Location: LCCOMB_X43_Y53_N8
\layer0|n0|mac_n1|result~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~13_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT15\))) # (!\layer0|n0|mac_n1|result~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~13_combout\);

-- Location: LCCOMB_X43_Y53_N6
\layer0|n0|mac_n1|result~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~14_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT14\))) # (!\layer0|n0|mac_n1|result~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~14_combout\);

-- Location: LCCOMB_X43_Y53_N12
\layer0|n0|mac_n1|result~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~15_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT13\))) # (!\layer0|n0|mac_n1|result~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~15_combout\);

-- Location: LCCOMB_X43_Y53_N2
\layer0|n0|mac_n1|result~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~16_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT12\)) # (!\layer0|n0|mac_n1|result~1_combout\ & ((!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~16_combout\);

-- Location: LCCOMB_X42_Y53_N16
\layer0|n0|mac_n1|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~2_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT11\)) # (!\layer0|n0|mac_n1|result~1_combout\ & ((!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|result~2_combout\);

-- Location: LCCOMB_X43_Y53_N16
\layer0|n0|mac_n1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~0_combout\ = \layer0|n0|mac_n1|result~2_combout\ $ (VCC)
-- \layer0|n0|mac_n1|Add1~1\ = CARRY(\layer0|n0|mac_n1|result~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|result~2_combout\,
	datad => VCC,
	combout => \layer0|n0|mac_n1|Add1~0_combout\,
	cout => \layer0|n0|mac_n1|Add1~1\);

-- Location: LCCOMB_X43_Y53_N18
\layer0|n0|mac_n1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~2_combout\ = (\layer0|n0|mac_n1|result~16_combout\ & (!\layer0|n0|mac_n1|Add1~1\)) # (!\layer0|n0|mac_n1|result~16_combout\ & ((\layer0|n0|mac_n1|Add1~1\) # (GND)))
-- \layer0|n0|mac_n1|Add1~3\ = CARRY((!\layer0|n0|mac_n1|Add1~1\) # (!\layer0|n0|mac_n1|result~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|result~16_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~1\,
	combout => \layer0|n0|mac_n1|Add1~2_combout\,
	cout => \layer0|n0|mac_n1|Add1~3\);

-- Location: LCCOMB_X43_Y53_N20
\layer0|n0|mac_n1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~4_combout\ = (\layer0|n0|mac_n1|result~15_combout\ & (\layer0|n0|mac_n1|Add1~3\ $ (GND))) # (!\layer0|n0|mac_n1|result~15_combout\ & (!\layer0|n0|mac_n1|Add1~3\ & VCC))
-- \layer0|n0|mac_n1|Add1~5\ = CARRY((\layer0|n0|mac_n1|result~15_combout\ & !\layer0|n0|mac_n1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|result~15_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~3\,
	combout => \layer0|n0|mac_n1|Add1~4_combout\,
	cout => \layer0|n0|mac_n1|Add1~5\);

-- Location: LCCOMB_X43_Y53_N22
\layer0|n0|mac_n1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~6_combout\ = (\layer0|n0|mac_n1|result~14_combout\ & (!\layer0|n0|mac_n1|Add1~5\)) # (!\layer0|n0|mac_n1|result~14_combout\ & ((\layer0|n0|mac_n1|Add1~5\) # (GND)))
-- \layer0|n0|mac_n1|Add1~7\ = CARRY((!\layer0|n0|mac_n1|Add1~5\) # (!\layer0|n0|mac_n1|result~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|result~14_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~5\,
	combout => \layer0|n0|mac_n1|Add1~6_combout\,
	cout => \layer0|n0|mac_n1|Add1~7\);

-- Location: LCCOMB_X43_Y53_N24
\layer0|n0|mac_n1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~8_combout\ = (\layer0|n0|mac_n1|result~13_combout\ & (\layer0|n0|mac_n1|Add1~7\ $ (GND))) # (!\layer0|n0|mac_n1|result~13_combout\ & (!\layer0|n0|mac_n1|Add1~7\ & VCC))
-- \layer0|n0|mac_n1|Add1~9\ = CARRY((\layer0|n0|mac_n1|result~13_combout\ & !\layer0|n0|mac_n1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|result~13_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~7\,
	combout => \layer0|n0|mac_n1|Add1~8_combout\,
	cout => \layer0|n0|mac_n1|Add1~9\);

-- Location: LCCOMB_X43_Y53_N26
\layer0|n0|mac_n1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~10_combout\ = (\layer0|n0|mac_n1|result~12_combout\ & (!\layer0|n0|mac_n1|Add1~9\)) # (!\layer0|n0|mac_n1|result~12_combout\ & ((\layer0|n0|mac_n1|Add1~9\) # (GND)))
-- \layer0|n0|mac_n1|Add1~11\ = CARRY((!\layer0|n0|mac_n1|Add1~9\) # (!\layer0|n0|mac_n1|result~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|result~12_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~9\,
	combout => \layer0|n0|mac_n1|Add1~10_combout\,
	cout => \layer0|n0|mac_n1|Add1~11\);

-- Location: LCCOMB_X43_Y53_N28
\layer0|n0|mac_n1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~12_combout\ = (\layer0|n0|mac_n1|result~11_combout\ & (\layer0|n0|mac_n1|Add1~11\ $ (GND))) # (!\layer0|n0|mac_n1|result~11_combout\ & (!\layer0|n0|mac_n1|Add1~11\ & VCC))
-- \layer0|n0|mac_n1|Add1~13\ = CARRY((\layer0|n0|mac_n1|result~11_combout\ & !\layer0|n0|mac_n1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|result~11_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~11\,
	combout => \layer0|n0|mac_n1|Add1~12_combout\,
	cout => \layer0|n0|mac_n1|Add1~13\);

-- Location: LCCOMB_X43_Y53_N30
\layer0|n0|mac_n1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~14_combout\ = (\layer0|n0|mac_n1|result~10_combout\ & (!\layer0|n0|mac_n1|Add1~13\)) # (!\layer0|n0|mac_n1|result~10_combout\ & ((\layer0|n0|mac_n1|Add1~13\) # (GND)))
-- \layer0|n0|mac_n1|Add1~15\ = CARRY((!\layer0|n0|mac_n1|Add1~13\) # (!\layer0|n0|mac_n1|result~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|result~10_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~13\,
	combout => \layer0|n0|mac_n1|Add1~14_combout\,
	cout => \layer0|n0|mac_n1|Add1~15\);

-- Location: LCCOMB_X43_Y52_N0
\layer0|n0|mac_n1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~16_combout\ = (\layer0|n0|mac_n1|result~9_combout\ & (\layer0|n0|mac_n1|Add1~15\ $ (GND))) # (!\layer0|n0|mac_n1|result~9_combout\ & (!\layer0|n0|mac_n1|Add1~15\ & VCC))
-- \layer0|n0|mac_n1|Add1~17\ = CARRY((\layer0|n0|mac_n1|result~9_combout\ & !\layer0|n0|mac_n1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|result~9_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~15\,
	combout => \layer0|n0|mac_n1|Add1~16_combout\,
	cout => \layer0|n0|mac_n1|Add1~17\);

-- Location: LCCOMB_X43_Y52_N2
\layer0|n0|mac_n1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~18_combout\ = (\layer0|n0|mac_n1|result~8_combout\ & (!\layer0|n0|mac_n1|Add1~17\)) # (!\layer0|n0|mac_n1|result~8_combout\ & ((\layer0|n0|mac_n1|Add1~17\) # (GND)))
-- \layer0|n0|mac_n1|Add1~19\ = CARRY((!\layer0|n0|mac_n1|Add1~17\) # (!\layer0|n0|mac_n1|result~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|result~8_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~17\,
	combout => \layer0|n0|mac_n1|Add1~18_combout\,
	cout => \layer0|n0|mac_n1|Add1~19\);

-- Location: LCCOMB_X43_Y52_N4
\layer0|n0|mac_n1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~20_combout\ = (\layer0|n0|mac_n1|result~7_combout\ & (\layer0|n0|mac_n1|Add1~19\ $ (GND))) # (!\layer0|n0|mac_n1|result~7_combout\ & (!\layer0|n0|mac_n1|Add1~19\ & VCC))
-- \layer0|n0|mac_n1|Add1~21\ = CARRY((\layer0|n0|mac_n1|result~7_combout\ & !\layer0|n0|mac_n1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|result~7_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~19\,
	combout => \layer0|n0|mac_n1|Add1~20_combout\,
	cout => \layer0|n0|mac_n1|Add1~21\);

-- Location: LCCOMB_X43_Y52_N6
\layer0|n0|mac_n1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~22_combout\ = (\layer0|n0|mac_n1|result~6_combout\ & (!\layer0|n0|mac_n1|Add1~21\)) # (!\layer0|n0|mac_n1|result~6_combout\ & ((\layer0|n0|mac_n1|Add1~21\) # (GND)))
-- \layer0|n0|mac_n1|Add1~23\ = CARRY((!\layer0|n0|mac_n1|Add1~21\) # (!\layer0|n0|mac_n1|result~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|result~6_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~21\,
	combout => \layer0|n0|mac_n1|Add1~22_combout\,
	cout => \layer0|n0|mac_n1|Add1~23\);

-- Location: LCCOMB_X43_Y52_N8
\layer0|n0|mac_n1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~24_combout\ = (\layer0|n0|mac_n1|result~5_combout\ & (\layer0|n0|mac_n1|Add1~23\ $ (GND))) # (!\layer0|n0|mac_n1|result~5_combout\ & (!\layer0|n0|mac_n1|Add1~23\ & VCC))
-- \layer0|n0|mac_n1|Add1~25\ = CARRY((\layer0|n0|mac_n1|result~5_combout\ & !\layer0|n0|mac_n1|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|result~5_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~23\,
	combout => \layer0|n0|mac_n1|Add1~24_combout\,
	cout => \layer0|n0|mac_n1|Add1~25\);

-- Location: LCCOMB_X43_Y52_N10
\layer0|n0|mac_n1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~26_combout\ = (\layer0|n0|mac_n1|result~4_combout\ & (!\layer0|n0|mac_n1|Add1~25\)) # (!\layer0|n0|mac_n1|result~4_combout\ & ((\layer0|n0|mac_n1|Add1~25\) # (GND)))
-- \layer0|n0|mac_n1|Add1~27\ = CARRY((!\layer0|n0|mac_n1|Add1~25\) # (!\layer0|n0|mac_n1|result~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|result~4_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~25\,
	combout => \layer0|n0|mac_n1|Add1~26_combout\,
	cout => \layer0|n0|mac_n1|Add1~27\);

-- Location: LCCOMB_X43_Y52_N12
\layer0|n0|mac_n1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~28_combout\ = (\layer0|n0|mac_n1|result~3_combout\ & (\layer0|n0|mac_n1|Add1~27\ $ (GND))) # (!\layer0|n0|mac_n1|result~3_combout\ & (!\layer0|n0|mac_n1|Add1~27\ & VCC))
-- \layer0|n0|mac_n1|Add1~29\ = CARRY((\layer0|n0|mac_n1|result~3_combout\ & !\layer0|n0|mac_n1|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|result~3_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~27\,
	combout => \layer0|n0|mac_n1|Add1~28_combout\,
	cout => \layer0|n0|mac_n1|Add1~29\);

-- Location: LCCOMB_X43_Y52_N14
\layer0|n0|mac_n1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~30_combout\ = (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\ & (!\layer0|n0|mac_n1|Add1~29\)) # (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\ & ((\layer0|n0|mac_n1|Add1~29\) # (GND)))
-- \layer0|n0|mac_n1|Add1~31\ = CARRY((!\layer0|n0|mac_n1|Add1~29\) # (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add1~29\,
	combout => \layer0|n0|mac_n1|Add1~30_combout\,
	cout => \layer0|n0|mac_n1|Add1~31\);

-- Location: LCCOMB_X40_Y52_N16
\layer0|n0|mac_n1|rounds~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|rounds~0_combout\ = (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT6\) # ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT5\) # ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT2\) # 
-- (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~dataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~dataout\,
	combout => \layer0|n0|mac_n1|rounds~0_combout\);

-- Location: LCCOMB_X40_Y52_N22
\layer0|n0|mac_n1|rounds~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|rounds~1_combout\ = (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT7\) # ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT3\) # ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT1\) # 
-- (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \layer0|n0|mac_n1|rounds~1_combout\);

-- Location: LCCOMB_X40_Y52_N20
\layer0|n0|mac_n1|rounds~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|rounds~2_combout\ = (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT9\) # ((\layer0|n0|mac_n1|rounds~0_combout\) # ((\layer0|n0|mac_n1|rounds~1_combout\) # (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \layer0|n0|mac_n1|rounds~0_combout\,
	datac => \layer0|n0|mac_n1|rounds~1_combout\,
	datad => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \layer0|n0|mac_n1|rounds~2_combout\);

-- Location: LCCOMB_X40_Y52_N30
\layer0|n0|mac_n1|round_overflow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|round_overflow~0_combout\ = (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\layer0|n0|mac_n1|rounds~2_combout\) # (\layer0|n0|mac_n1|result~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|rounds~2_combout\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => \layer0|n0|mac_n1|result~2_combout\,
	combout => \layer0|n0|mac_n1|round_overflow~0_combout\);

-- Location: LCCOMB_X43_Y52_N16
\layer0|n0|mac_n1|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add1~32_combout\ = \layer0|n0|mac_n1|Add1~31\ $ (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	cin => \layer0|n0|mac_n1|Add1~31\,
	combout => \layer0|n0|mac_n1|Add1~32_combout\);

-- Location: LCCOMB_X43_Y53_N10
\layer0|n0|mac_n1|result~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~18_combout\ = (\layer0|n0|mac_n1|Add1~6_combout\) # ((\layer0|n0|mac_n1|Add1~12_combout\) # ((\layer0|n0|mac_n1|Add1~10_combout\) # (\layer0|n0|mac_n1|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Add1~6_combout\,
	datab => \layer0|n0|mac_n1|Add1~12_combout\,
	datac => \layer0|n0|mac_n1|Add1~10_combout\,
	datad => \layer0|n0|mac_n1|Add1~8_combout\,
	combout => \layer0|n0|mac_n1|result~18_combout\);

-- Location: LCCOMB_X43_Y52_N24
\layer0|n0|mac_n1|result~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~19_combout\ = (\layer0|n0|mac_n1|Add1~14_combout\) # ((\layer0|n0|mac_n1|Add1~16_combout\) # ((\layer0|n0|mac_n1|Add1~20_combout\) # (\layer0|n0|mac_n1|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Add1~14_combout\,
	datab => \layer0|n0|mac_n1|Add1~16_combout\,
	datac => \layer0|n0|mac_n1|Add1~20_combout\,
	datad => \layer0|n0|mac_n1|Add1~18_combout\,
	combout => \layer0|n0|mac_n1|result~19_combout\);

-- Location: LCCOMB_X43_Y52_N30
\layer0|n0|mac_n1|result~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~20_combout\ = (\layer0|n0|mac_n1|Add1~22_combout\) # ((\layer0|n0|mac_n1|Add1~24_combout\) # ((\layer0|n0|mac_n1|Add1~26_combout\) # (\layer0|n0|mac_n1|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Add1~22_combout\,
	datab => \layer0|n0|mac_n1|Add1~24_combout\,
	datac => \layer0|n0|mac_n1|Add1~26_combout\,
	datad => \layer0|n0|mac_n1|Add1~28_combout\,
	combout => \layer0|n0|mac_n1|result~20_combout\);

-- Location: LCCOMB_X43_Y53_N0
\layer0|n0|mac_n1|result~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~17_combout\ = (\layer0|n0|mac_n1|Add1~2_combout\) # ((\layer0|n0|mac_n1|Add1~0_combout\) # ((\layer0|n0|mac_n1|Add1~4_combout\) # (\layer0|n0|mac_n1|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Add1~2_combout\,
	datab => \layer0|n0|mac_n1|Add1~0_combout\,
	datac => \layer0|n0|mac_n1|Add1~4_combout\,
	datad => \layer0|n0|mac_n1|Add1~30_combout\,
	combout => \layer0|n0|mac_n1|result~17_combout\);

-- Location: LCCOMB_X42_Y52_N18
\layer0|n0|mac_n1|result~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~21_combout\ = (\layer0|n0|mac_n1|result~18_combout\) # ((\layer0|n0|mac_n1|result~19_combout\) # ((\layer0|n0|mac_n1|result~20_combout\) # (\layer0|n0|mac_n1|result~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|result~18_combout\,
	datab => \layer0|n0|mac_n1|result~19_combout\,
	datac => \layer0|n0|mac_n1|result~20_combout\,
	datad => \layer0|n0|mac_n1|result~17_combout\,
	combout => \layer0|n0|mac_n1|result~21_combout\);

-- Location: LCCOMB_X42_Y52_N20
\layer0|n0|mac_n1|round_overflow~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|round_overflow~1_combout\ = (\layer0|n0|mac_n1|Add1~32_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\ $ ((\layer0|n0|mac_n1|Add1~30_combout\)))) # (!\layer0|n0|mac_n1|Add1~32_combout\ & 
-- (\layer0|n0|mac_n1|result~21_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\ $ (\layer0|n0|mac_n1|Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datab => \layer0|n0|mac_n1|Add1~32_combout\,
	datac => \layer0|n0|mac_n1|Add1~30_combout\,
	datad => \layer0|n0|mac_n1|result~21_combout\,
	combout => \layer0|n0|mac_n1|round_overflow~1_combout\);

-- Location: LCCOMB_X42_Y52_N6
\layer0|n0|mac_n1|r_mult[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[3]~3_combout\ = (\layer0|n0|mac_n1|round_overflow~0_combout\ & (\layer0|n0|mac_n1|result~1_combout\ & !\layer0|n0|mac_n1|round_overflow~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|round_overflow~0_combout\,
	datac => \layer0|n0|mac_n1|result~1_combout\,
	datad => \layer0|n0|mac_n1|round_overflow~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[3]~3_combout\);

-- Location: LCCOMB_X42_Y52_N24
\layer0|n0|mac_n1|r_mult[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[4]~4_combout\ = (\layer0|n0|mac_n1|r_mult[3]~3_combout\ & ((\layer0|n0|mac_n1|Add1~30_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~3_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|Add1~30_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~3_combout\,
	combout => \layer0|n0|mac_n1|r_mult[4]~4_combout\);

-- Location: LCCOMB_X41_Y52_N14
\layer0|n0|mac_n1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~30_combout\ = (\layer0|n0|mac_n1|r_data_out\(4) & ((\layer0|n0|mac_n1|r_mult[4]~4_combout\ & (\layer0|n0|mac_n1|Add0~29\ & VCC)) # (!\layer0|n0|mac_n1|r_mult[4]~4_combout\ & (!\layer0|n0|mac_n1|Add0~29\)))) # 
-- (!\layer0|n0|mac_n1|r_data_out\(4) & ((\layer0|n0|mac_n1|r_mult[4]~4_combout\ & (!\layer0|n0|mac_n1|Add0~29\)) # (!\layer0|n0|mac_n1|r_mult[4]~4_combout\ & ((\layer0|n0|mac_n1|Add0~29\) # (GND)))))
-- \layer0|n0|mac_n1|Add0~31\ = CARRY((\layer0|n0|mac_n1|r_data_out\(4) & (!\layer0|n0|mac_n1|r_mult[4]~4_combout\ & !\layer0|n0|mac_n1|Add0~29\)) # (!\layer0|n0|mac_n1|r_data_out\(4) & ((!\layer0|n0|mac_n1|Add0~29\) # 
-- (!\layer0|n0|mac_n1|r_mult[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out\(4),
	datab => \layer0|n0|mac_n1|r_mult[4]~4_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~29\,
	combout => \layer0|n0|mac_n1|Add0~30_combout\,
	cout => \layer0|n0|mac_n1|Add0~31\);

-- Location: LCCOMB_X42_Y53_N24
\layer0|n0|mac_n1|r_mult[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[4]~5_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\layer0|n0|mac_n1|rounds~2_combout\) # (\layer0|n0|mac_n1|result~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|rounds~2_combout\,
	datab => \layer0|n0|mac_n1|result~1_combout\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => \layer0|n0|mac_n1|result~2_combout\,
	combout => \layer0|n0|mac_n1|r_mult[4]~5_combout\);

-- Location: LCCOMB_X42_Y52_N2
\layer0|n0|mac_n1|r_mult[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[3]~6_combout\ = (\layer0|n0|mac_n1|r_mult[4]~5_combout\ & ((\layer0|n0|mac_n1|Add1~28_combout\))) # (!\layer0|n0|mac_n1|r_mult[4]~5_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datac => \layer0|n0|mac_n1|Add1~28_combout\,
	datad => \layer0|n0|mac_n1|r_mult[4]~5_combout\,
	combout => \layer0|n0|mac_n1|r_mult[3]~6_combout\);

-- Location: LCCOMB_X42_Y52_N10
\layer0|n0|mac_n1|r_mult[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[3]~1_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & ((!\layer0|n0|mac_n1|round_overflow~1_combout\) # (!\layer0|n0|mac_n1|round_overflow~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|round_overflow~0_combout\,
	datac => \layer0|n0|mac_n1|result~1_combout\,
	datad => \layer0|n0|mac_n1|round_overflow~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[3]~1_combout\);

-- Location: LCCOMB_X42_Y52_N28
\layer0|n0|mac_n1|r_mult[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[3]~7_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[3]~6_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datab => \layer0|n0|mac_n1|r_mult[3]~6_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[3]~7_combout\);

-- Location: LCCOMB_X42_Y52_N22
\layer0|n0|mac_n1|r_mult[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[2]~8_combout\ = (\layer0|n0|mac_n1|r_mult[4]~5_combout\ & ((\layer0|n0|mac_n1|Add1~26_combout\))) # (!\layer0|n0|mac_n1|r_mult[4]~5_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datac => \layer0|n0|mac_n1|Add1~26_combout\,
	datad => \layer0|n0|mac_n1|r_mult[4]~5_combout\,
	combout => \layer0|n0|mac_n1|r_mult[2]~8_combout\);

-- Location: LCCOMB_X42_Y52_N16
\layer0|n0|mac_n1|r_mult[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[2]~9_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[2]~8_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|r_mult[2]~8_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[2]~9_combout\);

-- Location: LCCOMB_X42_Y52_N30
\layer0|n0|mac_n1|r_mult[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[1]~10_combout\ = (\layer0|n0|mac_n1|r_mult[4]~5_combout\ & ((\layer0|n0|mac_n1|Add1~24_combout\))) # (!\layer0|n0|mac_n1|r_mult[4]~5_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datac => \layer0|n0|mac_n1|Add1~24_combout\,
	datad => \layer0|n0|mac_n1|r_mult[4]~5_combout\,
	combout => \layer0|n0|mac_n1|r_mult[1]~10_combout\);

-- Location: LCCOMB_X42_Y52_N12
\layer0|n0|mac_n1|r_mult[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[1]~11_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[1]~10_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|r_mult[1]~10_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[1]~11_combout\);

-- Location: LCCOMB_X42_Y52_N14
\layer0|n0|mac_n1|r_mult[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[0]~12_combout\ = (\layer0|n0|mac_n1|r_mult[4]~5_combout\ & ((\layer0|n0|mac_n1|Add1~22_combout\))) # (!\layer0|n0|mac_n1|r_mult[4]~5_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datac => \layer0|n0|mac_n1|r_mult[4]~5_combout\,
	datad => \layer0|n0|mac_n1|Add1~22_combout\,
	combout => \layer0|n0|mac_n1|r_mult[0]~12_combout\);

-- Location: LCCOMB_X42_Y52_N4
\layer0|n0|mac_n1|r_mult[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[0]~13_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[0]~12_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|r_mult[0]~12_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[0]~13_combout\);

-- Location: LCCOMB_X42_Y53_N30
\layer0|n0|mac_n1|r_mult[-1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-1]~14_combout\ = (\layer0|n0|mac_n1|r_mult[4]~5_combout\ & ((\layer0|n0|mac_n1|Add1~20_combout\))) # (!\layer0|n0|mac_n1|r_mult[4]~5_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datac => \layer0|n0|mac_n1|Add1~20_combout\,
	datad => \layer0|n0|mac_n1|r_mult[4]~5_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-1]~14_combout\);

-- Location: LCCOMB_X42_Y52_N26
\layer0|n0|mac_n1|r_mult[-1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-1]~15_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[-1]~14_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|r_mult[-1]~14_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-1]~15_combout\);

-- Location: LCCOMB_X40_Y52_N8
\layer0|n0|mac_n1|r_mult[-2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-2]~16_combout\ = (\layer0|n0|mac_n1|r_mult[4]~5_combout\ & ((\layer0|n0|mac_n1|Add1~18_combout\))) # (!\layer0|n0|mac_n1|r_mult[4]~5_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datac => \layer0|n0|mac_n1|Add1~18_combout\,
	datad => \layer0|n0|mac_n1|r_mult[4]~5_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-2]~16_combout\);

-- Location: LCCOMB_X40_Y52_N6
\layer0|n0|mac_n1|r_mult[-2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-2]~17_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[-2]~16_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|r_mult[-2]~16_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-2]~17_combout\);

-- Location: LCCOMB_X40_Y52_N28
\layer0|n0|mac_n1|r_mult[-3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-3]~18_combout\ = (\layer0|n0|mac_n1|r_mult[4]~5_combout\ & ((\layer0|n0|mac_n1|Add1~16_combout\))) # (!\layer0|n0|mac_n1|r_mult[4]~5_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datac => \layer0|n0|mac_n1|Add1~16_combout\,
	datad => \layer0|n0|mac_n1|r_mult[4]~5_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-3]~18_combout\);

-- Location: LCCOMB_X40_Y52_N14
\layer0|n0|mac_n1|r_mult[-3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-3]~19_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (\layer0|n0|mac_n1|r_mult[-3]~18_combout\)) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_mult[-3]~18_combout\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-3]~19_combout\);

-- Location: LCCOMB_X42_Y53_N12
\layer0|n0|mac_n1|r_mult[-4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-4]~20_combout\ = (\layer0|n0|mac_n1|r_mult[4]~5_combout\ & ((\layer0|n0|mac_n1|Add1~14_combout\))) # (!\layer0|n0|mac_n1|r_mult[4]~5_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datac => \layer0|n0|mac_n1|Add1~14_combout\,
	datad => \layer0|n0|mac_n1|r_mult[4]~5_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-4]~20_combout\);

-- Location: LCCOMB_X41_Y53_N8
\layer0|n0|mac_n1|r_mult[-4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-4]~21_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[-4]~20_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|r_mult[-4]~20_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-4]~21_combout\);

-- Location: LCCOMB_X42_Y53_N22
\layer0|n0|mac_n1|r_mult[-5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-5]~22_combout\ = (\layer0|n0|mac_n1|r_mult[4]~5_combout\ & ((\layer0|n0|mac_n1|Add1~12_combout\))) # (!\layer0|n0|mac_n1|r_mult[4]~5_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_mult[4]~5_combout\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => \layer0|n0|mac_n1|Add1~12_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-5]~22_combout\);

-- Location: LCCOMB_X41_Y53_N2
\layer0|n0|mac_n1|r_mult[-5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-5]~23_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[-5]~22_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datab => \layer0|n0|mac_n1|r_mult[-5]~22_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-5]~23_combout\);

-- Location: LCCOMB_X42_Y53_N20
\layer0|n0|mac_n1|r_mult[-6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-6]~24_combout\ = (\layer0|n0|mac_n1|r_mult[4]~5_combout\ & ((\layer0|n0|mac_n1|Add1~10_combout\))) # (!\layer0|n0|mac_n1|r_mult[4]~5_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_mult[4]~5_combout\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => \layer0|n0|mac_n1|Add1~10_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-6]~24_combout\);

-- Location: LCCOMB_X41_Y53_N4
\layer0|n0|mac_n1|r_mult[-6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-6]~25_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[-6]~24_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|r_mult[-6]~24_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-6]~25_combout\);

-- Location: LCCOMB_X40_Y52_N4
\layer0|n0|mac_n1|r_mult[-7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-7]~26_combout\ = (\layer0|n0|mac_n1|round_overflow~0_combout\ & ((\layer0|n0|mac_n1|result~1_combout\ & (\layer0|n0|mac_n1|Add1~8_combout\)) # (!\layer0|n0|mac_n1|result~1_combout\ & 
-- ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT15\))))) # (!\layer0|n0|mac_n1|round_overflow~0_combout\ & (((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Add1~8_combout\,
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datac => \layer0|n0|mac_n1|round_overflow~0_combout\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-7]~26_combout\);

-- Location: LCCOMB_X40_Y52_N2
\layer0|n0|mac_n1|r_mult[-7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-7]~27_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[-7]~26_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|r_mult[-7]~26_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-7]~27_combout\);

-- Location: LCCOMB_X40_Y52_N0
\layer0|n0|mac_n1|r_mult[-8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-8]~28_combout\ = (\layer0|n0|mac_n1|round_overflow~0_combout\ & ((\layer0|n0|mac_n1|result~1_combout\ & (\layer0|n0|mac_n1|Add1~6_combout\)) # (!\layer0|n0|mac_n1|result~1_combout\ & 
-- ((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT14\))))) # (!\layer0|n0|mac_n1|round_overflow~0_combout\ & (((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Add1~6_combout\,
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datac => \layer0|n0|mac_n1|round_overflow~0_combout\,
	datad => \layer0|n0|mac_n1|result~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-8]~28_combout\);

-- Location: LCCOMB_X41_Y53_N10
\layer0|n0|mac_n1|r_mult[-8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-8]~29_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[-8]~28_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|r_mult[-8]~28_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-8]~29_combout\);

-- Location: LCCOMB_X40_Y52_N26
\layer0|n0|mac_n1|r_mult[-9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-9]~30_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & ((\layer0|n0|mac_n1|round_overflow~0_combout\ & ((\layer0|n0|mac_n1|Add1~4_combout\))) # (!\layer0|n0|mac_n1|round_overflow~0_combout\ & 
-- (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT13\)))) # (!\layer0|n0|mac_n1|result~1_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \layer0|n0|mac_n1|result~1_combout\,
	datac => \layer0|n0|mac_n1|round_overflow~0_combout\,
	datad => \layer0|n0|mac_n1|Add1~4_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-9]~30_combout\);

-- Location: LCCOMB_X41_Y53_N0
\layer0|n0|mac_n1|r_mult[-9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-9]~31_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[-9]~30_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|r_mult[-9]~30_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-9]~31_combout\);

-- Location: LCCOMB_X42_Y53_N14
\layer0|n0|mac_n1|r_mult[-10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-10]~32_combout\ = (\layer0|n0|mac_n1|round_overflow~0_combout\ & ((\layer0|n0|mac_n1|result~1_combout\ & ((\layer0|n0|mac_n1|Add1~2_combout\))) # (!\layer0|n0|mac_n1|result~1_combout\ & 
-- (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT12\)))) # (!\layer0|n0|mac_n1|round_overflow~0_combout\ & (((\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|round_overflow~0_combout\,
	datab => \layer0|n0|mac_n1|result~1_combout\,
	datac => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \layer0|n0|mac_n1|Add1~2_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-10]~32_combout\);

-- Location: LCCOMB_X41_Y53_N14
\layer0|n0|mac_n1|r_mult[-10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-10]~33_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[-10]~32_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|r_mult[-10]~32_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-10]~33_combout\);

-- Location: LCCOMB_X42_Y52_N8
\layer0|n0|mac_n1|r_mult[-11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-11]~0_combout\ = (\layer0|n0|mac_n1|result~1_combout\ & ((\layer0|n0|mac_n1|round_overflow~0_combout\ & ((\layer0|n0|mac_n1|Add1~0_combout\))) # (!\layer0|n0|mac_n1|round_overflow~0_combout\ & 
-- (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT11\)))) # (!\layer0|n0|mac_n1|result~1_combout\ & (\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|result~1_combout\,
	datab => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datac => \layer0|n0|mac_n1|Add1~0_combout\,
	datad => \layer0|n0|mac_n1|round_overflow~0_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-11]~0_combout\);

-- Location: LCCOMB_X42_Y52_N0
\layer0|n0|mac_n1|r_mult[-11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_mult[-11]~2_combout\ = (\layer0|n0|mac_n1|r_mult[3]~1_combout\ & ((\layer0|n0|mac_n1|r_mult[-11]~0_combout\))) # (!\layer0|n0|mac_n1|r_mult[3]~1_combout\ & (!\layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datac => \layer0|n0|mac_n1|r_mult[-11]~0_combout\,
	datad => \layer0|n0|mac_n1|r_mult[3]~1_combout\,
	combout => \layer0|n0|mac_n1|r_mult[-11]~2_combout\);

-- Location: LCCOMB_X41_Y53_N16
\layer0|n0|mac_n1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~0_combout\ = (\layer0|n0|mac_n1|r_data_out[-11]~q\ & (\layer0|n0|mac_n1|r_mult[-11]~2_combout\ $ (VCC))) # (!\layer0|n0|mac_n1|r_data_out[-11]~q\ & (\layer0|n0|mac_n1|r_mult[-11]~2_combout\ & VCC))
-- \layer0|n0|mac_n1|Add0~1\ = CARRY((\layer0|n0|mac_n1|r_data_out[-11]~q\ & \layer0|n0|mac_n1|r_mult[-11]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out[-11]~q\,
	datab => \layer0|n0|mac_n1|r_mult[-11]~2_combout\,
	datad => VCC,
	combout => \layer0|n0|mac_n1|Add0~0_combout\,
	cout => \layer0|n0|mac_n1|Add0~1\);

-- Location: LCCOMB_X40_Y53_N0
\layer0|n0|mac_n1|result~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~22_combout\ = (\layer0|n0|mac_n1|Add0~0_combout\ & ((\layer0|n0|mac_n1|Add0~32_combout\) # (\layer0|n0|mac_n1|Add0~30_combout\))) # (!\layer0|n0|mac_n1|Add0~0_combout\ & (\layer0|n0|mac_n1|Add0~32_combout\ & 
-- \layer0|n0|mac_n1|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Add0~0_combout\,
	datac => \layer0|n0|mac_n1|Add0~32_combout\,
	datad => \layer0|n0|mac_n1|Add0~30_combout\,
	combout => \layer0|n0|mac_n1|result~22_combout\);

-- Location: CLKCTRL_G4
\i_rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_rst~inputclkctrl_outclk\);

-- Location: FF_X40_Y53_N1
\layer0|n0|mac_n1|r_data_out[-11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~22_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out[-11]~q\);

-- Location: LCCOMB_X41_Y53_N18
\layer0|n0|mac_n1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~2_combout\ = (\layer0|n0|mac_n1|r_data_out[-10]~q\ & ((\layer0|n0|mac_n1|r_mult[-10]~33_combout\ & (\layer0|n0|mac_n1|Add0~1\ & VCC)) # (!\layer0|n0|mac_n1|r_mult[-10]~33_combout\ & (!\layer0|n0|mac_n1|Add0~1\)))) # 
-- (!\layer0|n0|mac_n1|r_data_out[-10]~q\ & ((\layer0|n0|mac_n1|r_mult[-10]~33_combout\ & (!\layer0|n0|mac_n1|Add0~1\)) # (!\layer0|n0|mac_n1|r_mult[-10]~33_combout\ & ((\layer0|n0|mac_n1|Add0~1\) # (GND)))))
-- \layer0|n0|mac_n1|Add0~3\ = CARRY((\layer0|n0|mac_n1|r_data_out[-10]~q\ & (!\layer0|n0|mac_n1|r_mult[-10]~33_combout\ & !\layer0|n0|mac_n1|Add0~1\)) # (!\layer0|n0|mac_n1|r_data_out[-10]~q\ & ((!\layer0|n0|mac_n1|Add0~1\) # 
-- (!\layer0|n0|mac_n1|r_mult[-10]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out[-10]~q\,
	datab => \layer0|n0|mac_n1|r_mult[-10]~33_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~1\,
	combout => \layer0|n0|mac_n1|Add0~2_combout\,
	cout => \layer0|n0|mac_n1|Add0~3\);

-- Location: LCCOMB_X41_Y52_N30
\layer0|n0|mac_n1|result~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~36_combout\ = (\layer0|n0|mac_n1|Add0~2_combout\ & ((\layer0|n0|mac_n1|Add0~30_combout\) # (\layer0|n0|mac_n1|Add0~32_combout\))) # (!\layer0|n0|mac_n1|Add0~2_combout\ & (\layer0|n0|mac_n1|Add0~30_combout\ & 
-- \layer0|n0|mac_n1|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Add0~2_combout\,
	datac => \layer0|n0|mac_n1|Add0~30_combout\,
	datad => \layer0|n0|mac_n1|Add0~32_combout\,
	combout => \layer0|n0|mac_n1|result~36_combout\);

-- Location: FF_X41_Y52_N31
\layer0|n0|mac_n1|r_data_out[-10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~36_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out[-10]~q\);

-- Location: LCCOMB_X41_Y53_N20
\layer0|n0|mac_n1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~4_combout\ = ((\layer0|n0|mac_n1|r_data_out[-9]~q\ $ (\layer0|n0|mac_n1|r_mult[-9]~31_combout\ $ (!\layer0|n0|mac_n1|Add0~3\)))) # (GND)
-- \layer0|n0|mac_n1|Add0~5\ = CARRY((\layer0|n0|mac_n1|r_data_out[-9]~q\ & ((\layer0|n0|mac_n1|r_mult[-9]~31_combout\) # (!\layer0|n0|mac_n1|Add0~3\))) # (!\layer0|n0|mac_n1|r_data_out[-9]~q\ & (\layer0|n0|mac_n1|r_mult[-9]~31_combout\ & 
-- !\layer0|n0|mac_n1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out[-9]~q\,
	datab => \layer0|n0|mac_n1|r_mult[-9]~31_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~3\,
	combout => \layer0|n0|mac_n1|Add0~4_combout\,
	cout => \layer0|n0|mac_n1|Add0~5\);

-- Location: LCCOMB_X40_Y53_N8
\layer0|n0|mac_n1|result~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~35_combout\ = (\layer0|n0|mac_n1|Add0~4_combout\ & ((\layer0|n0|mac_n1|Add0~32_combout\) # (\layer0|n0|mac_n1|Add0~30_combout\))) # (!\layer0|n0|mac_n1|Add0~4_combout\ & (\layer0|n0|mac_n1|Add0~32_combout\ & 
-- \layer0|n0|mac_n1|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Add0~4_combout\,
	datac => \layer0|n0|mac_n1|Add0~32_combout\,
	datad => \layer0|n0|mac_n1|Add0~30_combout\,
	combout => \layer0|n0|mac_n1|result~35_combout\);

-- Location: FF_X40_Y53_N9
\layer0|n0|mac_n1|r_data_out[-9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~35_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out[-9]~q\);

-- Location: LCCOMB_X41_Y53_N22
\layer0|n0|mac_n1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~6_combout\ = (\layer0|n0|mac_n1|r_mult[-8]~29_combout\ & ((\layer0|n0|mac_n1|r_data_out[-8]~q\ & (\layer0|n0|mac_n1|Add0~5\ & VCC)) # (!\layer0|n0|mac_n1|r_data_out[-8]~q\ & (!\layer0|n0|mac_n1|Add0~5\)))) # 
-- (!\layer0|n0|mac_n1|r_mult[-8]~29_combout\ & ((\layer0|n0|mac_n1|r_data_out[-8]~q\ & (!\layer0|n0|mac_n1|Add0~5\)) # (!\layer0|n0|mac_n1|r_data_out[-8]~q\ & ((\layer0|n0|mac_n1|Add0~5\) # (GND)))))
-- \layer0|n0|mac_n1|Add0~7\ = CARRY((\layer0|n0|mac_n1|r_mult[-8]~29_combout\ & (!\layer0|n0|mac_n1|r_data_out[-8]~q\ & !\layer0|n0|mac_n1|Add0~5\)) # (!\layer0|n0|mac_n1|r_mult[-8]~29_combout\ & ((!\layer0|n0|mac_n1|Add0~5\) # 
-- (!\layer0|n0|mac_n1|r_data_out[-8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_mult[-8]~29_combout\,
	datab => \layer0|n0|mac_n1|r_data_out[-8]~q\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~5\,
	combout => \layer0|n0|mac_n1|Add0~6_combout\,
	cout => \layer0|n0|mac_n1|Add0~7\);

-- Location: LCCOMB_X40_Y53_N18
\layer0|n0|mac_n1|result~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~34_combout\ = (\layer0|n0|mac_n1|Add0~6_combout\ & ((\layer0|n0|mac_n1|Add0~32_combout\) # (\layer0|n0|mac_n1|Add0~30_combout\))) # (!\layer0|n0|mac_n1|Add0~6_combout\ & (\layer0|n0|mac_n1|Add0~32_combout\ & 
-- \layer0|n0|mac_n1|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Add0~6_combout\,
	datac => \layer0|n0|mac_n1|Add0~32_combout\,
	datad => \layer0|n0|mac_n1|Add0~30_combout\,
	combout => \layer0|n0|mac_n1|result~34_combout\);

-- Location: FF_X40_Y53_N19
\layer0|n0|mac_n1|r_data_out[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~34_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out[-8]~q\);

-- Location: LCCOMB_X41_Y53_N24
\layer0|n0|mac_n1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~8_combout\ = ((\layer0|n0|mac_n1|r_mult[-7]~27_combout\ $ (\layer0|n0|mac_n1|r_data_out[-7]~q\ $ (!\layer0|n0|mac_n1|Add0~7\)))) # (GND)
-- \layer0|n0|mac_n1|Add0~9\ = CARRY((\layer0|n0|mac_n1|r_mult[-7]~27_combout\ & ((\layer0|n0|mac_n1|r_data_out[-7]~q\) # (!\layer0|n0|mac_n1|Add0~7\))) # (!\layer0|n0|mac_n1|r_mult[-7]~27_combout\ & (\layer0|n0|mac_n1|r_data_out[-7]~q\ & 
-- !\layer0|n0|mac_n1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_mult[-7]~27_combout\,
	datab => \layer0|n0|mac_n1|r_data_out[-7]~q\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~7\,
	combout => \layer0|n0|mac_n1|Add0~8_combout\,
	cout => \layer0|n0|mac_n1|Add0~9\);

-- Location: LCCOMB_X40_Y53_N12
\layer0|n0|mac_n1|result~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~33_combout\ = (\layer0|n0|mac_n1|Add0~8_combout\ & ((\layer0|n0|mac_n1|Add0~32_combout\) # (\layer0|n0|mac_n1|Add0~30_combout\))) # (!\layer0|n0|mac_n1|Add0~8_combout\ & (\layer0|n0|mac_n1|Add0~32_combout\ & 
-- \layer0|n0|mac_n1|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Add0~8_combout\,
	datac => \layer0|n0|mac_n1|Add0~32_combout\,
	datad => \layer0|n0|mac_n1|Add0~30_combout\,
	combout => \layer0|n0|mac_n1|result~33_combout\);

-- Location: FF_X40_Y53_N13
\layer0|n0|mac_n1|r_data_out[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~33_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out[-7]~q\);

-- Location: LCCOMB_X41_Y53_N26
\layer0|n0|mac_n1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~10_combout\ = (\layer0|n0|mac_n1|r_data_out[-6]~q\ & ((\layer0|n0|mac_n1|r_mult[-6]~25_combout\ & (\layer0|n0|mac_n1|Add0~9\ & VCC)) # (!\layer0|n0|mac_n1|r_mult[-6]~25_combout\ & (!\layer0|n0|mac_n1|Add0~9\)))) # 
-- (!\layer0|n0|mac_n1|r_data_out[-6]~q\ & ((\layer0|n0|mac_n1|r_mult[-6]~25_combout\ & (!\layer0|n0|mac_n1|Add0~9\)) # (!\layer0|n0|mac_n1|r_mult[-6]~25_combout\ & ((\layer0|n0|mac_n1|Add0~9\) # (GND)))))
-- \layer0|n0|mac_n1|Add0~11\ = CARRY((\layer0|n0|mac_n1|r_data_out[-6]~q\ & (!\layer0|n0|mac_n1|r_mult[-6]~25_combout\ & !\layer0|n0|mac_n1|Add0~9\)) # (!\layer0|n0|mac_n1|r_data_out[-6]~q\ & ((!\layer0|n0|mac_n1|Add0~9\) # 
-- (!\layer0|n0|mac_n1|r_mult[-6]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out[-6]~q\,
	datab => \layer0|n0|mac_n1|r_mult[-6]~25_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~9\,
	combout => \layer0|n0|mac_n1|Add0~10_combout\,
	cout => \layer0|n0|mac_n1|Add0~11\);

-- Location: LCCOMB_X40_Y53_N14
\layer0|n0|mac_n1|result~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~32_combout\ = (\layer0|n0|mac_n1|Add0~10_combout\ & ((\layer0|n0|mac_n1|Add0~32_combout\) # (\layer0|n0|mac_n1|Add0~30_combout\))) # (!\layer0|n0|mac_n1|Add0~10_combout\ & (\layer0|n0|mac_n1|Add0~32_combout\ & 
-- \layer0|n0|mac_n1|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Add0~10_combout\,
	datac => \layer0|n0|mac_n1|Add0~32_combout\,
	datad => \layer0|n0|mac_n1|Add0~30_combout\,
	combout => \layer0|n0|mac_n1|result~32_combout\);

-- Location: FF_X40_Y53_N15
\layer0|n0|mac_n1|r_data_out[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~32_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out[-6]~q\);

-- Location: LCCOMB_X41_Y53_N28
\layer0|n0|mac_n1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~12_combout\ = ((\layer0|n0|mac_n1|r_data_out[-5]~q\ $ (\layer0|n0|mac_n1|r_mult[-5]~23_combout\ $ (!\layer0|n0|mac_n1|Add0~11\)))) # (GND)
-- \layer0|n0|mac_n1|Add0~13\ = CARRY((\layer0|n0|mac_n1|r_data_out[-5]~q\ & ((\layer0|n0|mac_n1|r_mult[-5]~23_combout\) # (!\layer0|n0|mac_n1|Add0~11\))) # (!\layer0|n0|mac_n1|r_data_out[-5]~q\ & (\layer0|n0|mac_n1|r_mult[-5]~23_combout\ & 
-- !\layer0|n0|mac_n1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out[-5]~q\,
	datab => \layer0|n0|mac_n1|r_mult[-5]~23_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~11\,
	combout => \layer0|n0|mac_n1|Add0~12_combout\,
	cout => \layer0|n0|mac_n1|Add0~13\);

-- Location: LCCOMB_X41_Y53_N6
\layer0|n0|mac_n1|result~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~31_combout\ = (\layer0|n0|mac_n1|Add0~12_combout\ & ((\layer0|n0|mac_n1|Add0~30_combout\) # (\layer0|n0|mac_n1|Add0~32_combout\))) # (!\layer0|n0|mac_n1|Add0~12_combout\ & (\layer0|n0|mac_n1|Add0~30_combout\ & 
-- \layer0|n0|mac_n1|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Add0~12_combout\,
	datac => \layer0|n0|mac_n1|Add0~30_combout\,
	datad => \layer0|n0|mac_n1|Add0~32_combout\,
	combout => \layer0|n0|mac_n1|result~31_combout\);

-- Location: FF_X41_Y53_N7
\layer0|n0|mac_n1|r_data_out[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~31_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out[-5]~q\);

-- Location: LCCOMB_X41_Y53_N30
\layer0|n0|mac_n1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~14_combout\ = (\layer0|n0|mac_n1|r_data_out[-4]~q\ & ((\layer0|n0|mac_n1|r_mult[-4]~21_combout\ & (\layer0|n0|mac_n1|Add0~13\ & VCC)) # (!\layer0|n0|mac_n1|r_mult[-4]~21_combout\ & (!\layer0|n0|mac_n1|Add0~13\)))) # 
-- (!\layer0|n0|mac_n1|r_data_out[-4]~q\ & ((\layer0|n0|mac_n1|r_mult[-4]~21_combout\ & (!\layer0|n0|mac_n1|Add0~13\)) # (!\layer0|n0|mac_n1|r_mult[-4]~21_combout\ & ((\layer0|n0|mac_n1|Add0~13\) # (GND)))))
-- \layer0|n0|mac_n1|Add0~15\ = CARRY((\layer0|n0|mac_n1|r_data_out[-4]~q\ & (!\layer0|n0|mac_n1|r_mult[-4]~21_combout\ & !\layer0|n0|mac_n1|Add0~13\)) # (!\layer0|n0|mac_n1|r_data_out[-4]~q\ & ((!\layer0|n0|mac_n1|Add0~13\) # 
-- (!\layer0|n0|mac_n1|r_mult[-4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out[-4]~q\,
	datab => \layer0|n0|mac_n1|r_mult[-4]~21_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~13\,
	combout => \layer0|n0|mac_n1|Add0~14_combout\,
	cout => \layer0|n0|mac_n1|Add0~15\);

-- Location: LCCOMB_X41_Y53_N12
\layer0|n0|mac_n1|result~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~30_combout\ = (\layer0|n0|mac_n1|Add0~14_combout\ & ((\layer0|n0|mac_n1|Add0~30_combout\) # (\layer0|n0|mac_n1|Add0~32_combout\))) # (!\layer0|n0|mac_n1|Add0~14_combout\ & (\layer0|n0|mac_n1|Add0~30_combout\ & 
-- \layer0|n0|mac_n1|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Add0~14_combout\,
	datac => \layer0|n0|mac_n1|Add0~30_combout\,
	datad => \layer0|n0|mac_n1|Add0~32_combout\,
	combout => \layer0|n0|mac_n1|result~30_combout\);

-- Location: FF_X41_Y53_N13
\layer0|n0|mac_n1|r_data_out[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~30_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out[-4]~q\);

-- Location: LCCOMB_X41_Y52_N0
\layer0|n0|mac_n1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~16_combout\ = ((\layer0|n0|mac_n1|r_mult[-3]~19_combout\ $ (\layer0|n0|mac_n1|r_data_out[-3]~q\ $ (!\layer0|n0|mac_n1|Add0~15\)))) # (GND)
-- \layer0|n0|mac_n1|Add0~17\ = CARRY((\layer0|n0|mac_n1|r_mult[-3]~19_combout\ & ((\layer0|n0|mac_n1|r_data_out[-3]~q\) # (!\layer0|n0|mac_n1|Add0~15\))) # (!\layer0|n0|mac_n1|r_mult[-3]~19_combout\ & (\layer0|n0|mac_n1|r_data_out[-3]~q\ & 
-- !\layer0|n0|mac_n1|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_mult[-3]~19_combout\,
	datab => \layer0|n0|mac_n1|r_data_out[-3]~q\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~15\,
	combout => \layer0|n0|mac_n1|Add0~16_combout\,
	cout => \layer0|n0|mac_n1|Add0~17\);

-- Location: LCCOMB_X41_Y52_N20
\layer0|n0|mac_n1|result~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~29_combout\ = (\layer0|n0|mac_n1|Add0~16_combout\ & ((\layer0|n0|mac_n1|Add0~30_combout\) # (\layer0|n0|mac_n1|Add0~32_combout\))) # (!\layer0|n0|mac_n1|Add0~16_combout\ & (\layer0|n0|mac_n1|Add0~30_combout\ & 
-- \layer0|n0|mac_n1|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Add0~16_combout\,
	datac => \layer0|n0|mac_n1|Add0~30_combout\,
	datad => \layer0|n0|mac_n1|Add0~32_combout\,
	combout => \layer0|n0|mac_n1|result~29_combout\);

-- Location: FF_X41_Y52_N21
\layer0|n0|mac_n1|r_data_out[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~29_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out[-3]~q\);

-- Location: LCCOMB_X41_Y52_N2
\layer0|n0|mac_n1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~18_combout\ = (\layer0|n0|mac_n1|r_data_out[-2]~q\ & ((\layer0|n0|mac_n1|r_mult[-2]~17_combout\ & (\layer0|n0|mac_n1|Add0~17\ & VCC)) # (!\layer0|n0|mac_n1|r_mult[-2]~17_combout\ & (!\layer0|n0|mac_n1|Add0~17\)))) # 
-- (!\layer0|n0|mac_n1|r_data_out[-2]~q\ & ((\layer0|n0|mac_n1|r_mult[-2]~17_combout\ & (!\layer0|n0|mac_n1|Add0~17\)) # (!\layer0|n0|mac_n1|r_mult[-2]~17_combout\ & ((\layer0|n0|mac_n1|Add0~17\) # (GND)))))
-- \layer0|n0|mac_n1|Add0~19\ = CARRY((\layer0|n0|mac_n1|r_data_out[-2]~q\ & (!\layer0|n0|mac_n1|r_mult[-2]~17_combout\ & !\layer0|n0|mac_n1|Add0~17\)) # (!\layer0|n0|mac_n1|r_data_out[-2]~q\ & ((!\layer0|n0|mac_n1|Add0~17\) # 
-- (!\layer0|n0|mac_n1|r_mult[-2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out[-2]~q\,
	datab => \layer0|n0|mac_n1|r_mult[-2]~17_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~17\,
	combout => \layer0|n0|mac_n1|Add0~18_combout\,
	cout => \layer0|n0|mac_n1|Add0~19\);

-- Location: LCCOMB_X41_Y52_N26
\layer0|n0|mac_n1|result~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~28_combout\ = (\layer0|n0|mac_n1|Add0~18_combout\ & ((\layer0|n0|mac_n1|Add0~30_combout\) # (\layer0|n0|mac_n1|Add0~32_combout\))) # (!\layer0|n0|mac_n1|Add0~18_combout\ & (\layer0|n0|mac_n1|Add0~30_combout\ & 
-- \layer0|n0|mac_n1|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Add0~18_combout\,
	datac => \layer0|n0|mac_n1|Add0~30_combout\,
	datad => \layer0|n0|mac_n1|Add0~32_combout\,
	combout => \layer0|n0|mac_n1|result~28_combout\);

-- Location: FF_X41_Y52_N27
\layer0|n0|mac_n1|r_data_out[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~28_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out[-2]~q\);

-- Location: LCCOMB_X41_Y52_N4
\layer0|n0|mac_n1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~20_combout\ = ((\layer0|n0|mac_n1|r_data_out[-1]~q\ $ (\layer0|n0|mac_n1|r_mult[-1]~15_combout\ $ (!\layer0|n0|mac_n1|Add0~19\)))) # (GND)
-- \layer0|n0|mac_n1|Add0~21\ = CARRY((\layer0|n0|mac_n1|r_data_out[-1]~q\ & ((\layer0|n0|mac_n1|r_mult[-1]~15_combout\) # (!\layer0|n0|mac_n1|Add0~19\))) # (!\layer0|n0|mac_n1|r_data_out[-1]~q\ & (\layer0|n0|mac_n1|r_mult[-1]~15_combout\ & 
-- !\layer0|n0|mac_n1|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out[-1]~q\,
	datab => \layer0|n0|mac_n1|r_mult[-1]~15_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~19\,
	combout => \layer0|n0|mac_n1|Add0~20_combout\,
	cout => \layer0|n0|mac_n1|Add0~21\);

-- Location: LCCOMB_X41_Y52_N24
\layer0|n0|mac_n1|result~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~27_combout\ = (\layer0|n0|mac_n1|Add0~20_combout\ & ((\layer0|n0|mac_n1|Add0~30_combout\) # (\layer0|n0|mac_n1|Add0~32_combout\))) # (!\layer0|n0|mac_n1|Add0~20_combout\ & (\layer0|n0|mac_n1|Add0~30_combout\ & 
-- \layer0|n0|mac_n1|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Add0~20_combout\,
	datac => \layer0|n0|mac_n1|Add0~30_combout\,
	datad => \layer0|n0|mac_n1|Add0~32_combout\,
	combout => \layer0|n0|mac_n1|result~27_combout\);

-- Location: FF_X41_Y52_N25
\layer0|n0|mac_n1|r_data_out[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~27_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out[-1]~q\);

-- Location: LCCOMB_X41_Y52_N6
\layer0|n0|mac_n1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~22_combout\ = (\layer0|n0|mac_n1|r_mult[0]~13_combout\ & ((\layer0|n0|mac_n1|r_data_out\(0) & (\layer0|n0|mac_n1|Add0~21\ & VCC)) # (!\layer0|n0|mac_n1|r_data_out\(0) & (!\layer0|n0|mac_n1|Add0~21\)))) # 
-- (!\layer0|n0|mac_n1|r_mult[0]~13_combout\ & ((\layer0|n0|mac_n1|r_data_out\(0) & (!\layer0|n0|mac_n1|Add0~21\)) # (!\layer0|n0|mac_n1|r_data_out\(0) & ((\layer0|n0|mac_n1|Add0~21\) # (GND)))))
-- \layer0|n0|mac_n1|Add0~23\ = CARRY((\layer0|n0|mac_n1|r_mult[0]~13_combout\ & (!\layer0|n0|mac_n1|r_data_out\(0) & !\layer0|n0|mac_n1|Add0~21\)) # (!\layer0|n0|mac_n1|r_mult[0]~13_combout\ & ((!\layer0|n0|mac_n1|Add0~21\) # 
-- (!\layer0|n0|mac_n1|r_data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_mult[0]~13_combout\,
	datab => \layer0|n0|mac_n1|r_data_out\(0),
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~21\,
	combout => \layer0|n0|mac_n1|Add0~22_combout\,
	cout => \layer0|n0|mac_n1|Add0~23\);

-- Location: LCCOMB_X41_Y52_N18
\layer0|n0|mac_n1|result~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~26_combout\ = (\layer0|n0|mac_n1|Add0~22_combout\ & ((\layer0|n0|mac_n1|Add0~30_combout\) # (\layer0|n0|mac_n1|Add0~32_combout\))) # (!\layer0|n0|mac_n1|Add0~22_combout\ & (\layer0|n0|mac_n1|Add0~30_combout\ & 
-- \layer0|n0|mac_n1|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|Add0~22_combout\,
	datac => \layer0|n0|mac_n1|Add0~30_combout\,
	datad => \layer0|n0|mac_n1|Add0~32_combout\,
	combout => \layer0|n0|mac_n1|result~26_combout\);

-- Location: FF_X41_Y52_N19
\layer0|n0|mac_n1|r_data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~26_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out\(0));

-- Location: LCCOMB_X41_Y52_N8
\layer0|n0|mac_n1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~24_combout\ = ((\layer0|n0|mac_n1|r_data_out\(1) $ (\layer0|n0|mac_n1|r_mult[1]~11_combout\ $ (!\layer0|n0|mac_n1|Add0~23\)))) # (GND)
-- \layer0|n0|mac_n1|Add0~25\ = CARRY((\layer0|n0|mac_n1|r_data_out\(1) & ((\layer0|n0|mac_n1|r_mult[1]~11_combout\) # (!\layer0|n0|mac_n1|Add0~23\))) # (!\layer0|n0|mac_n1|r_data_out\(1) & (\layer0|n0|mac_n1|r_mult[1]~11_combout\ & 
-- !\layer0|n0|mac_n1|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out\(1),
	datab => \layer0|n0|mac_n1|r_mult[1]~11_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~23\,
	combout => \layer0|n0|mac_n1|Add0~24_combout\,
	cout => \layer0|n0|mac_n1|Add0~25\);

-- Location: LCCOMB_X41_Y52_N28
\layer0|n0|mac_n1|result~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~25_combout\ = (\layer0|n0|mac_n1|Add0~24_combout\ & ((\layer0|n0|mac_n1|Add0~30_combout\) # (\layer0|n0|mac_n1|Add0~32_combout\))) # (!\layer0|n0|mac_n1|Add0~24_combout\ & (\layer0|n0|mac_n1|Add0~30_combout\ & 
-- \layer0|n0|mac_n1|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Add0~24_combout\,
	datac => \layer0|n0|mac_n1|Add0~30_combout\,
	datad => \layer0|n0|mac_n1|Add0~32_combout\,
	combout => \layer0|n0|mac_n1|result~25_combout\);

-- Location: FF_X41_Y52_N29
\layer0|n0|mac_n1|r_data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~25_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out\(1));

-- Location: LCCOMB_X41_Y52_N10
\layer0|n0|mac_n1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~26_combout\ = (\layer0|n0|mac_n1|r_data_out\(2) & ((\layer0|n0|mac_n1|r_mult[2]~9_combout\ & (\layer0|n0|mac_n1|Add0~25\ & VCC)) # (!\layer0|n0|mac_n1|r_mult[2]~9_combout\ & (!\layer0|n0|mac_n1|Add0~25\)))) # 
-- (!\layer0|n0|mac_n1|r_data_out\(2) & ((\layer0|n0|mac_n1|r_mult[2]~9_combout\ & (!\layer0|n0|mac_n1|Add0~25\)) # (!\layer0|n0|mac_n1|r_mult[2]~9_combout\ & ((\layer0|n0|mac_n1|Add0~25\) # (GND)))))
-- \layer0|n0|mac_n1|Add0~27\ = CARRY((\layer0|n0|mac_n1|r_data_out\(2) & (!\layer0|n0|mac_n1|r_mult[2]~9_combout\ & !\layer0|n0|mac_n1|Add0~25\)) # (!\layer0|n0|mac_n1|r_data_out\(2) & ((!\layer0|n0|mac_n1|Add0~25\) # 
-- (!\layer0|n0|mac_n1|r_mult[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out\(2),
	datab => \layer0|n0|mac_n1|r_mult[2]~9_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~25\,
	combout => \layer0|n0|mac_n1|Add0~26_combout\,
	cout => \layer0|n0|mac_n1|Add0~27\);

-- Location: LCCOMB_X41_Y52_N22
\layer0|n0|mac_n1|result~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~24_combout\ = (\layer0|n0|mac_n1|Add0~32_combout\ & ((\layer0|n0|mac_n1|Add0~30_combout\) # (\layer0|n0|mac_n1|Add0~26_combout\))) # (!\layer0|n0|mac_n1|Add0~32_combout\ & (\layer0|n0|mac_n1|Add0~30_combout\ & 
-- \layer0|n0|mac_n1|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Add0~32_combout\,
	datac => \layer0|n0|mac_n1|Add0~30_combout\,
	datad => \layer0|n0|mac_n1|Add0~26_combout\,
	combout => \layer0|n0|mac_n1|result~24_combout\);

-- Location: FF_X41_Y52_N23
\layer0|n0|mac_n1|r_data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~24_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out\(2));

-- Location: LCCOMB_X41_Y52_N12
\layer0|n0|mac_n1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~28_combout\ = ((\layer0|n0|mac_n1|r_data_out\(3) $ (\layer0|n0|mac_n1|r_mult[3]~7_combout\ $ (!\layer0|n0|mac_n1|Add0~27\)))) # (GND)
-- \layer0|n0|mac_n1|Add0~29\ = CARRY((\layer0|n0|mac_n1|r_data_out\(3) & ((\layer0|n0|mac_n1|r_mult[3]~7_combout\) # (!\layer0|n0|mac_n1|Add0~27\))) # (!\layer0|n0|mac_n1|r_data_out\(3) & (\layer0|n0|mac_n1|r_mult[3]~7_combout\ & 
-- !\layer0|n0|mac_n1|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out\(3),
	datab => \layer0|n0|mac_n1|r_mult[3]~7_combout\,
	datad => VCC,
	cin => \layer0|n0|mac_n1|Add0~27\,
	combout => \layer0|n0|mac_n1|Add0~28_combout\,
	cout => \layer0|n0|mac_n1|Add0~29\);

-- Location: LCCOMB_X40_Y52_N10
\layer0|n0|mac_n1|result~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|result~23_combout\ = (\layer0|n0|mac_n1|Add0~30_combout\ & ((\layer0|n0|mac_n1|Add0~28_combout\) # (\layer0|n0|mac_n1|Add0~32_combout\))) # (!\layer0|n0|mac_n1|Add0~30_combout\ & (\layer0|n0|mac_n1|Add0~28_combout\ & 
-- \layer0|n0|mac_n1|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|Add0~30_combout\,
	datac => \layer0|n0|mac_n1|Add0~28_combout\,
	datad => \layer0|n0|mac_n1|Add0~32_combout\,
	combout => \layer0|n0|mac_n1|result~23_combout\);

-- Location: FF_X40_Y52_N11
\layer0|n0|mac_n1|r_data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|result~23_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out\(3));

-- Location: LCCOMB_X41_Y52_N16
\layer0|n0|mac_n1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|Add0~32_combout\ = \layer0|n0|mac_n1|r_data_out\(4) $ (\layer0|n0|mac_n1|Add0~31\ $ (\layer0|n0|mac_n1|r_mult[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_data_out\(4),
	datad => \layer0|n0|mac_n1|r_mult[4]~4_combout\,
	cin => \layer0|n0|mac_n1|Add0~31\,
	combout => \layer0|n0|mac_n1|Add0~32_combout\);

-- Location: LCCOMB_X40_Y52_N24
\layer0|n0|mac_n1|r_data_out[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|mac_n1|r_data_out[4]~0_combout\ = !\layer0|n0|mac_n1|Add0~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|mac_n1|Add0~32_combout\,
	combout => \layer0|n0|mac_n1|r_data_out[4]~0_combout\);

-- Location: FF_X40_Y52_N25
\layer0|n0|mac_n1|r_data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|mac_n1|r_data_out[4]~0_combout\,
	clrn => \ALT_INV_i_rst~inputclkctrl_outclk\,
	ena => \layer0|n0|r_mac_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|mac_n1|r_data_out\(4));

-- Location: LCCOMB_X40_Y56_N0
\layer0|n0|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~0_combout\ = \layer0|n0|mac_n1|r_data_out[-10]~q\ $ (VCC)
-- \layer0|n0|Add1~1\ = CARRY(\layer0|n0|mac_n1|r_data_out[-10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_data_out[-10]~q\,
	datad => VCC,
	combout => \layer0|n0|Add1~0_combout\,
	cout => \layer0|n0|Add1~1\);

-- Location: LCCOMB_X40_Y56_N2
\layer0|n0|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~2_combout\ = (\layer0|n0|mac_n1|r_data_out[-9]~q\ & (\layer0|n0|Add1~1\ & VCC)) # (!\layer0|n0|mac_n1|r_data_out[-9]~q\ & (!\layer0|n0|Add1~1\))
-- \layer0|n0|Add1~3\ = CARRY((!\layer0|n0|mac_n1|r_data_out[-9]~q\ & !\layer0|n0|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_data_out[-9]~q\,
	datad => VCC,
	cin => \layer0|n0|Add1~1\,
	combout => \layer0|n0|Add1~2_combout\,
	cout => \layer0|n0|Add1~3\);

-- Location: LCCOMB_X40_Y56_N4
\layer0|n0|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~4_combout\ = (\layer0|n0|mac_n1|r_data_out[-8]~q\ & (\layer0|n0|Add1~3\ $ (GND))) # (!\layer0|n0|mac_n1|r_data_out[-8]~q\ & (!\layer0|n0|Add1~3\ & VCC))
-- \layer0|n0|Add1~5\ = CARRY((\layer0|n0|mac_n1|r_data_out[-8]~q\ & !\layer0|n0|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out[-8]~q\,
	datad => VCC,
	cin => \layer0|n0|Add1~3\,
	combout => \layer0|n0|Add1~4_combout\,
	cout => \layer0|n0|Add1~5\);

-- Location: LCCOMB_X40_Y56_N6
\layer0|n0|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~6_combout\ = (\layer0|n0|mac_n1|r_data_out[-7]~q\ & (!\layer0|n0|Add1~5\)) # (!\layer0|n0|mac_n1|r_data_out[-7]~q\ & ((\layer0|n0|Add1~5\) # (GND)))
-- \layer0|n0|Add1~7\ = CARRY((!\layer0|n0|Add1~5\) # (!\layer0|n0|mac_n1|r_data_out[-7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_data_out[-7]~q\,
	datad => VCC,
	cin => \layer0|n0|Add1~5\,
	combout => \layer0|n0|Add1~6_combout\,
	cout => \layer0|n0|Add1~7\);

-- Location: LCCOMB_X40_Y56_N8
\layer0|n0|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~8_combout\ = (\layer0|n0|mac_n1|r_data_out[-6]~q\ & ((GND) # (!\layer0|n0|Add1~7\))) # (!\layer0|n0|mac_n1|r_data_out[-6]~q\ & (\layer0|n0|Add1~7\ $ (GND)))
-- \layer0|n0|Add1~9\ = CARRY((\layer0|n0|mac_n1|r_data_out[-6]~q\) # (!\layer0|n0|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out[-6]~q\,
	datad => VCC,
	cin => \layer0|n0|Add1~7\,
	combout => \layer0|n0|Add1~8_combout\,
	cout => \layer0|n0|Add1~9\);

-- Location: LCCOMB_X40_Y56_N10
\layer0|n0|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~10_combout\ = (\layer0|n0|mac_n1|r_data_out[-5]~q\ & (!\layer0|n0|Add1~9\)) # (!\layer0|n0|mac_n1|r_data_out[-5]~q\ & ((\layer0|n0|Add1~9\) # (GND)))
-- \layer0|n0|Add1~11\ = CARRY((!\layer0|n0|Add1~9\) # (!\layer0|n0|mac_n1|r_data_out[-5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out[-5]~q\,
	datad => VCC,
	cin => \layer0|n0|Add1~9\,
	combout => \layer0|n0|Add1~10_combout\,
	cout => \layer0|n0|Add1~11\);

-- Location: LCCOMB_X40_Y56_N12
\layer0|n0|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~12_combout\ = (\layer0|n0|mac_n1|r_data_out[-4]~q\ & (\layer0|n0|Add1~11\ $ (GND))) # (!\layer0|n0|mac_n1|r_data_out[-4]~q\ & (!\layer0|n0|Add1~11\ & VCC))
-- \layer0|n0|Add1~13\ = CARRY((\layer0|n0|mac_n1|r_data_out[-4]~q\ & !\layer0|n0|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_data_out[-4]~q\,
	datad => VCC,
	cin => \layer0|n0|Add1~11\,
	combout => \layer0|n0|Add1~12_combout\,
	cout => \layer0|n0|Add1~13\);

-- Location: LCCOMB_X40_Y56_N14
\layer0|n0|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~14_combout\ = (\layer0|n0|mac_n1|r_data_out[-3]~q\ & (!\layer0|n0|Add1~13\)) # (!\layer0|n0|mac_n1|r_data_out[-3]~q\ & ((\layer0|n0|Add1~13\) # (GND)))
-- \layer0|n0|Add1~15\ = CARRY((!\layer0|n0|Add1~13\) # (!\layer0|n0|mac_n1|r_data_out[-3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_data_out[-3]~q\,
	datad => VCC,
	cin => \layer0|n0|Add1~13\,
	combout => \layer0|n0|Add1~14_combout\,
	cout => \layer0|n0|Add1~15\);

-- Location: LCCOMB_X40_Y56_N16
\layer0|n0|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~16_combout\ = (\layer0|n0|mac_n1|r_data_out[-2]~q\ & (\layer0|n0|Add1~15\ $ (GND))) # (!\layer0|n0|mac_n1|r_data_out[-2]~q\ & (!\layer0|n0|Add1~15\ & VCC))
-- \layer0|n0|Add1~17\ = CARRY((\layer0|n0|mac_n1|r_data_out[-2]~q\ & !\layer0|n0|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_data_out[-2]~q\,
	datad => VCC,
	cin => \layer0|n0|Add1~15\,
	combout => \layer0|n0|Add1~16_combout\,
	cout => \layer0|n0|Add1~17\);

-- Location: LCCOMB_X40_Y56_N18
\layer0|n0|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~18_combout\ = (\layer0|n0|mac_n1|r_data_out[-1]~q\ & (!\layer0|n0|Add1~17\)) # (!\layer0|n0|mac_n1|r_data_out[-1]~q\ & ((\layer0|n0|Add1~17\) # (GND)))
-- \layer0|n0|Add1~19\ = CARRY((!\layer0|n0|Add1~17\) # (!\layer0|n0|mac_n1|r_data_out[-1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_data_out[-1]~q\,
	datad => VCC,
	cin => \layer0|n0|Add1~17\,
	combout => \layer0|n0|Add1~18_combout\,
	cout => \layer0|n0|Add1~19\);

-- Location: LCCOMB_X40_Y56_N20
\layer0|n0|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~20_combout\ = (\layer0|n0|mac_n1|r_data_out\(0) & (\layer0|n0|Add1~19\ $ (GND))) # (!\layer0|n0|mac_n1|r_data_out\(0) & (!\layer0|n0|Add1~19\ & VCC))
-- \layer0|n0|Add1~21\ = CARRY((\layer0|n0|mac_n1|r_data_out\(0) & !\layer0|n0|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_data_out\(0),
	datad => VCC,
	cin => \layer0|n0|Add1~19\,
	combout => \layer0|n0|Add1~20_combout\,
	cout => \layer0|n0|Add1~21\);

-- Location: LCCOMB_X40_Y56_N22
\layer0|n0|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~22_combout\ = (\layer0|n0|mac_n1|r_data_out\(1) & (!\layer0|n0|Add1~21\)) # (!\layer0|n0|mac_n1|r_data_out\(1) & ((\layer0|n0|Add1~21\) # (GND)))
-- \layer0|n0|Add1~23\ = CARRY((!\layer0|n0|Add1~21\) # (!\layer0|n0|mac_n1|r_data_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|mac_n1|r_data_out\(1),
	datad => VCC,
	cin => \layer0|n0|Add1~21\,
	combout => \layer0|n0|Add1~22_combout\,
	cout => \layer0|n0|Add1~23\);

-- Location: LCCOMB_X40_Y56_N24
\layer0|n0|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~24_combout\ = (\layer0|n0|mac_n1|r_data_out\(2) & (\layer0|n0|Add1~23\ $ (GND))) # (!\layer0|n0|mac_n1|r_data_out\(2) & (!\layer0|n0|Add1~23\ & VCC))
-- \layer0|n0|Add1~25\ = CARRY((\layer0|n0|mac_n1|r_data_out\(2) & !\layer0|n0|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_data_out\(2),
	datad => VCC,
	cin => \layer0|n0|Add1~23\,
	combout => \layer0|n0|Add1~24_combout\,
	cout => \layer0|n0|Add1~25\);

-- Location: LCCOMB_X40_Y56_N26
\layer0|n0|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~26_combout\ = (\layer0|n0|mac_n1|r_data_out\(3) & (!\layer0|n0|Add1~25\)) # (!\layer0|n0|mac_n1|r_data_out\(3) & ((\layer0|n0|Add1~25\) # (GND)))
-- \layer0|n0|Add1~27\ = CARRY((!\layer0|n0|Add1~25\) # (!\layer0|n0|mac_n1|r_data_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_data_out\(3),
	datad => VCC,
	cin => \layer0|n0|Add1~25\,
	combout => \layer0|n0|Add1~26_combout\,
	cout => \layer0|n0|Add1~27\);

-- Location: LCCOMB_X40_Y56_N28
\layer0|n0|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~28_combout\ = (\layer0|n0|mac_n1|r_data_out\(4) & (\layer0|n0|Add1~27\ $ (GND))) # (!\layer0|n0|mac_n1|r_data_out\(4) & (!\layer0|n0|Add1~27\ & VCC))
-- \layer0|n0|Add1~29\ = CARRY((\layer0|n0|mac_n1|r_data_out\(4) & !\layer0|n0|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_data_out\(4),
	datad => VCC,
	cin => \layer0|n0|Add1~27\,
	combout => \layer0|n0|Add1~28_combout\,
	cout => \layer0|n0|Add1~29\);

-- Location: LCCOMB_X40_Y56_N30
\layer0|n0|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Add1~30_combout\ = \layer0|n0|Add1~29\ $ (!\layer0|n0|mac_n1|r_data_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|mac_n1|r_data_out\(4),
	cin => \layer0|n0|Add1~29\,
	combout => \layer0|n0|Add1~30_combout\);

-- Location: LCCOMB_X39_Y56_N26
\layer0|n0|r_bias[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_bias[15]~0_combout\ = !\layer0|n0|Add1~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|Add1~30_combout\,
	combout => \layer0|n0|r_bias[15]~0_combout\);

-- Location: FF_X39_Y56_N27
\layer0|n0|r_bias[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_bias[15]~0_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(15));

-- Location: FF_X38_Y56_N11
\layer0|n0|r_relu_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_bias\(15),
	sload => VCC,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(15));

-- Location: LCCOMB_X39_Y56_N24
\layer0|n0|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~0_combout\ = (\layer0|n0|mac_n1|r_data_out[-11]~q\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~28_combout\))) # (!\layer0|n0|mac_n1|r_data_out[-11]~q\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|mac_n1|r_data_out[-11]~q\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~28_combout\,
	combout => \layer0|n0|result~0_combout\);

-- Location: FF_X39_Y56_N25
\layer0|n0|r_bias[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~0_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(0));

-- Location: LCCOMB_X38_Y56_N4
\layer0|n0|r_relu_in[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_relu_in[0]~feeder_combout\ = \layer0|n0|r_bias\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|r_bias\(0),
	combout => \layer0|n0|r_relu_in[0]~feeder_combout\);

-- Location: FF_X38_Y56_N5
\layer0|n0|r_relu_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_relu_in[0]~feeder_combout\,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(0));

-- Location: LCCOMB_X38_Y60_N24
\layer0|n0|act_relu|r_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~0_combout\ = (!\layer0|n0|r_relu_in\(15) & \layer0|n0|r_relu_in\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_relu_in\(15),
	datad => \layer0|n0|r_relu_in\(0),
	combout => \layer0|n0|act_relu|r_out~0_combout\);

-- Location: LCCOMB_X36_Y60_N16
\layer0|n0|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|Selector36~0_combout\ = (\layer0|n0|r_sm.s_relu~q\) # ((\layer0|n0|r_relu_enable~q\ & !\layer0|n0|r_sm.s_wait_relu~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_sm.s_relu~q\,
	datac => \layer0|n0|r_relu_enable~q\,
	datad => \layer0|n0|r_sm.s_wait_relu~q\,
	combout => \layer0|n0|Selector36~0_combout\);

-- Location: FF_X36_Y60_N17
\layer0|n0|r_relu_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|Selector36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_enable~q\);

-- Location: FF_X38_Y60_N25
\layer0|n0|act_relu|r_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~0_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(0));

-- Location: LCCOMB_X39_Y56_N0
\layer0|n0|result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~1_combout\ = (\layer0|n0|Add1~0_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~28_combout\))) # (!\layer0|n0|Add1~0_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|Add1~0_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~28_combout\,
	combout => \layer0|n0|result~1_combout\);

-- Location: FF_X39_Y56_N1
\layer0|n0|r_bias[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~1_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(1));

-- Location: FF_X38_Y56_N29
\layer0|n0|r_relu_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_bias\(1),
	sload => VCC,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(1));

-- Location: LCCOMB_X38_Y60_N6
\layer0|n0|act_relu|r_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~1_combout\ = (\layer0|n0|r_relu_in\(1) & !\layer0|n0|r_relu_in\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_relu_in\(1),
	datac => \layer0|n0|r_relu_in\(15),
	combout => \layer0|n0|act_relu|r_out~1_combout\);

-- Location: FF_X38_Y60_N7
\layer0|n0|act_relu|r_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~1_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(1));

-- Location: LCCOMB_X39_Y56_N14
\layer0|n0|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~2_combout\ = (\layer0|n0|Add1~2_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~28_combout\))) # (!\layer0|n0|Add1~2_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|Add1~2_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~28_combout\,
	combout => \layer0|n0|result~2_combout\);

-- Location: FF_X39_Y56_N15
\layer0|n0|r_bias[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~2_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(2));

-- Location: FF_X38_Y56_N7
\layer0|n0|r_relu_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_bias\(2),
	sload => VCC,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(2));

-- Location: LCCOMB_X38_Y60_N20
\layer0|n0|act_relu|r_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~2_combout\ = (!\layer0|n0|r_relu_in\(15) & \layer0|n0|r_relu_in\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_relu_in\(15),
	datad => \layer0|n0|r_relu_in\(2),
	combout => \layer0|n0|act_relu|r_out~2_combout\);

-- Location: FF_X38_Y60_N21
\layer0|n0|act_relu|r_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~2_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(2));

-- Location: LCCOMB_X39_Y56_N20
\layer0|n0|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~3_combout\ = (\layer0|n0|Add1~4_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~28_combout\))) # (!\layer0|n0|Add1~4_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|Add1~4_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~28_combout\,
	combout => \layer0|n0|result~3_combout\);

-- Location: FF_X39_Y56_N21
\layer0|n0|r_bias[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~3_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(3));

-- Location: FF_X38_Y56_N1
\layer0|n0|r_relu_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_bias\(3),
	sload => VCC,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(3));

-- Location: LCCOMB_X38_Y60_N14
\layer0|n0|act_relu|r_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~3_combout\ = (\layer0|n0|r_relu_in\(3) & !\layer0|n0|r_relu_in\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_relu_in\(3),
	datac => \layer0|n0|r_relu_in\(15),
	combout => \layer0|n0|act_relu|r_out~3_combout\);

-- Location: FF_X38_Y60_N15
\layer0|n0|act_relu|r_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~3_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(3));

-- Location: LCCOMB_X39_Y56_N30
\layer0|n0|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~4_combout\ = (\layer0|n0|Add1~6_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~28_combout\))) # (!\layer0|n0|Add1~6_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|Add1~6_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~28_combout\,
	combout => \layer0|n0|result~4_combout\);

-- Location: FF_X39_Y56_N31
\layer0|n0|r_bias[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~4_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(4));

-- Location: FF_X38_Y56_N15
\layer0|n0|r_relu_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_bias\(4),
	sload => VCC,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(4));

-- Location: LCCOMB_X38_Y60_N8
\layer0|n0|act_relu|r_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~4_combout\ = (\layer0|n0|r_relu_in\(4) & !\layer0|n0|r_relu_in\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_relu_in\(4),
	datac => \layer0|n0|r_relu_in\(15),
	combout => \layer0|n0|act_relu|r_out~4_combout\);

-- Location: FF_X38_Y60_N9
\layer0|n0|act_relu|r_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~4_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(4));

-- Location: LCCOMB_X39_Y56_N8
\layer0|n0|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~5_combout\ = (\layer0|n0|Add1~8_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~28_combout\))) # (!\layer0|n0|Add1~8_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|Add1~8_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~28_combout\,
	combout => \layer0|n0|result~5_combout\);

-- Location: FF_X39_Y56_N9
\layer0|n0|r_bias[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~5_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(5));

-- Location: FF_X38_Y56_N9
\layer0|n0|r_relu_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_bias\(5),
	sload => VCC,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(5));

-- Location: LCCOMB_X38_Y60_N10
\layer0|n0|act_relu|r_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~5_combout\ = (\layer0|n0|r_relu_in\(5) & !\layer0|n0|r_relu_in\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|r_relu_in\(5),
	datac => \layer0|n0|r_relu_in\(15),
	combout => \layer0|n0|act_relu|r_out~5_combout\);

-- Location: FF_X38_Y60_N11
\layer0|n0|act_relu|r_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~5_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(5));

-- Location: LCCOMB_X39_Y56_N10
\layer0|n0|result~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~6_combout\ = (\layer0|n0|Add1~10_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~28_combout\))) # (!\layer0|n0|Add1~10_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|Add1~10_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~28_combout\,
	combout => \layer0|n0|result~6_combout\);

-- Location: FF_X39_Y56_N11
\layer0|n0|r_bias[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~6_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(6));

-- Location: FF_X38_Y56_N31
\layer0|n0|r_relu_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_bias\(6),
	sload => VCC,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(6));

-- Location: LCCOMB_X38_Y60_N16
\layer0|n0|act_relu|r_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~6_combout\ = (\layer0|n0|r_relu_in\(6) & !\layer0|n0|r_relu_in\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|r_relu_in\(6),
	datac => \layer0|n0|r_relu_in\(15),
	combout => \layer0|n0|act_relu|r_out~6_combout\);

-- Location: FF_X38_Y60_N17
\layer0|n0|act_relu|r_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~6_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(6));

-- Location: LCCOMB_X39_Y56_N12
\layer0|n0|result~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~7_combout\ = (\layer0|n0|Add1~12_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~28_combout\))) # (!\layer0|n0|Add1~12_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|Add1~12_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~28_combout\,
	combout => \layer0|n0|result~7_combout\);

-- Location: FF_X39_Y56_N13
\layer0|n0|r_bias[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~7_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(7));

-- Location: FF_X38_Y56_N21
\layer0|n0|r_relu_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \layer0|n0|r_bias\(7),
	sload => VCC,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(7));

-- Location: LCCOMB_X38_Y60_N26
\layer0|n0|act_relu|r_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~7_combout\ = (!\layer0|n0|r_relu_in\(15) & \layer0|n0|r_relu_in\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_relu_in\(15),
	datad => \layer0|n0|r_relu_in\(7),
	combout => \layer0|n0|act_relu|r_out~7_combout\);

-- Location: FF_X38_Y60_N27
\layer0|n0|act_relu|r_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~7_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(7));

-- Location: LCCOMB_X39_Y56_N18
\layer0|n0|result~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~8_combout\ = (\layer0|n0|Add1~14_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~28_combout\))) # (!\layer0|n0|Add1~14_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|Add1~14_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~28_combout\,
	combout => \layer0|n0|result~8_combout\);

-- Location: FF_X39_Y56_N19
\layer0|n0|r_bias[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~8_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(8));

-- Location: LCCOMB_X38_Y56_N18
\layer0|n0|r_relu_in[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_relu_in[8]~feeder_combout\ = \layer0|n0|r_bias\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|r_bias\(8),
	combout => \layer0|n0|r_relu_in[8]~feeder_combout\);

-- Location: FF_X38_Y56_N19
\layer0|n0|r_relu_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_relu_in[8]~feeder_combout\,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(8));

-- Location: LCCOMB_X38_Y60_N4
\layer0|n0|act_relu|r_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~8_combout\ = (!\layer0|n0|r_relu_in\(15) & \layer0|n0|r_relu_in\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_relu_in\(15),
	datad => \layer0|n0|r_relu_in\(8),
	combout => \layer0|n0|act_relu|r_out~8_combout\);

-- Location: FF_X38_Y60_N5
\layer0|n0|act_relu|r_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~8_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(8));

-- Location: LCCOMB_X39_Y56_N16
\layer0|n0|result~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~9_combout\ = (\layer0|n0|Add1~16_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~28_combout\))) # (!\layer0|n0|Add1~16_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|Add1~16_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~28_combout\,
	combout => \layer0|n0|result~9_combout\);

-- Location: FF_X39_Y56_N17
\layer0|n0|r_bias[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~9_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(9));

-- Location: LCCOMB_X38_Y56_N24
\layer0|n0|r_relu_in[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_relu_in[9]~feeder_combout\ = \layer0|n0|r_bias\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|r_bias\(9),
	combout => \layer0|n0|r_relu_in[9]~feeder_combout\);

-- Location: FF_X38_Y56_N25
\layer0|n0|r_relu_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_relu_in[9]~feeder_combout\,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(9));

-- Location: LCCOMB_X38_Y60_N30
\layer0|n0|act_relu|r_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~9_combout\ = (!\layer0|n0|r_relu_in\(15) & \layer0|n0|r_relu_in\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_relu_in\(15),
	datad => \layer0|n0|r_relu_in\(9),
	combout => \layer0|n0|act_relu|r_out~9_combout\);

-- Location: FF_X38_Y60_N31
\layer0|n0|act_relu|r_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~9_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(9));

-- Location: LCCOMB_X39_Y56_N22
\layer0|n0|result~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~10_combout\ = (\layer0|n0|Add1~18_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~28_combout\))) # (!\layer0|n0|Add1~18_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|Add1~18_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~28_combout\,
	combout => \layer0|n0|result~10_combout\);

-- Location: FF_X39_Y56_N23
\layer0|n0|r_bias[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~10_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(10));

-- Location: LCCOMB_X38_Y56_N2
\layer0|n0|r_relu_in[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_relu_in[10]~feeder_combout\ = \layer0|n0|r_bias\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|r_bias\(10),
	combout => \layer0|n0|r_relu_in[10]~feeder_combout\);

-- Location: FF_X38_Y56_N3
\layer0|n0|r_relu_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_relu_in[10]~feeder_combout\,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(10));

-- Location: LCCOMB_X38_Y60_N28
\layer0|n0|act_relu|r_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~10_combout\ = (!\layer0|n0|r_relu_in\(15) & \layer0|n0|r_relu_in\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_relu_in\(15),
	datad => \layer0|n0|r_relu_in\(10),
	combout => \layer0|n0|act_relu|r_out~10_combout\);

-- Location: FF_X38_Y60_N29
\layer0|n0|act_relu|r_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~10_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(10));

-- Location: LCCOMB_X39_Y56_N28
\layer0|n0|result~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~11_combout\ = (\layer0|n0|Add1~20_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~28_combout\))) # (!\layer0|n0|Add1~20_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \layer0|n0|Add1~20_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~28_combout\,
	combout => \layer0|n0|result~11_combout\);

-- Location: FF_X39_Y56_N29
\layer0|n0|r_bias[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~11_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(11));

-- Location: LCCOMB_X38_Y56_N12
\layer0|n0|r_relu_in[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_relu_in[11]~feeder_combout\ = \layer0|n0|r_bias\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|r_bias\(11),
	combout => \layer0|n0|r_relu_in[11]~feeder_combout\);

-- Location: FF_X38_Y56_N13
\layer0|n0|r_relu_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_relu_in[11]~feeder_combout\,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(11));

-- Location: LCCOMB_X38_Y60_N22
\layer0|n0|act_relu|r_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~11_combout\ = (!\layer0|n0|r_relu_in\(15) & \layer0|n0|r_relu_in\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_relu_in\(15),
	datad => \layer0|n0|r_relu_in\(11),
	combout => \layer0|n0|act_relu|r_out~11_combout\);

-- Location: FF_X38_Y60_N23
\layer0|n0|act_relu|r_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~11_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(11));

-- Location: LCCOMB_X39_Y56_N6
\layer0|n0|result~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~12_combout\ = (\layer0|n0|Add1~22_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~28_combout\))) # (!\layer0|n0|Add1~22_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|Add1~22_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~28_combout\,
	combout => \layer0|n0|result~12_combout\);

-- Location: FF_X39_Y56_N7
\layer0|n0|r_bias[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~12_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(12));

-- Location: LCCOMB_X38_Y56_N22
\layer0|n0|r_relu_in[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_relu_in[12]~feeder_combout\ = \layer0|n0|r_bias\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|r_bias\(12),
	combout => \layer0|n0|r_relu_in[12]~feeder_combout\);

-- Location: FF_X38_Y56_N23
\layer0|n0|r_relu_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_relu_in[12]~feeder_combout\,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(12));

-- Location: LCCOMB_X38_Y60_N12
\layer0|n0|act_relu|r_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~12_combout\ = (!\layer0|n0|r_relu_in\(15) & \layer0|n0|r_relu_in\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_relu_in\(15),
	datad => \layer0|n0|r_relu_in\(12),
	combout => \layer0|n0|act_relu|r_out~12_combout\);

-- Location: FF_X38_Y60_N13
\layer0|n0|act_relu|r_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~12_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(12));

-- Location: LCCOMB_X39_Y56_N4
\layer0|n0|result~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~13_combout\ = (\layer0|n0|Add1~28_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~24_combout\))) # (!\layer0|n0|Add1~28_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|Add1~28_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~24_combout\,
	combout => \layer0|n0|result~13_combout\);

-- Location: FF_X39_Y56_N5
\layer0|n0|r_bias[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~13_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(13));

-- Location: LCCOMB_X38_Y56_N16
\layer0|n0|r_relu_in[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_relu_in[13]~feeder_combout\ = \layer0|n0|r_bias\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|r_bias\(13),
	combout => \layer0|n0|r_relu_in[13]~feeder_combout\);

-- Location: FF_X38_Y56_N17
\layer0|n0|r_relu_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_relu_in[13]~feeder_combout\,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(13));

-- Location: LCCOMB_X38_Y60_N18
\layer0|n0|act_relu|r_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~13_combout\ = (!\layer0|n0|r_relu_in\(15) & \layer0|n0|r_relu_in\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_relu_in\(15),
	datad => \layer0|n0|r_relu_in\(13),
	combout => \layer0|n0|act_relu|r_out~13_combout\);

-- Location: FF_X38_Y60_N19
\layer0|n0|act_relu|r_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~13_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(13));

-- Location: LCCOMB_X39_Y56_N2
\layer0|n0|result~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|result~14_combout\ = (\layer0|n0|Add1~28_combout\ & ((\layer0|n0|Add1~30_combout\) # (\layer0|n0|Add1~26_combout\))) # (!\layer0|n0|Add1~28_combout\ & (\layer0|n0|Add1~30_combout\ & \layer0|n0|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \layer0|n0|Add1~28_combout\,
	datac => \layer0|n0|Add1~30_combout\,
	datad => \layer0|n0|Add1~26_combout\,
	combout => \layer0|n0|result~14_combout\);

-- Location: FF_X39_Y56_N3
\layer0|n0|r_bias[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|result~14_combout\,
	ena => \layer0|n0|r_sm.s_bias~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_bias\(14));

-- Location: LCCOMB_X38_Y56_N26
\layer0|n0|r_relu_in[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|r_relu_in[14]~feeder_combout\ = \layer0|n0|r_bias\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \layer0|n0|r_bias\(14),
	combout => \layer0|n0|r_relu_in[14]~feeder_combout\);

-- Location: FF_X38_Y56_N27
\layer0|n0|r_relu_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|r_relu_in[14]~feeder_combout\,
	ena => \layer0|n0|r_sm.s_relu~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|r_relu_in\(14));

-- Location: LCCOMB_X38_Y60_N0
\layer0|n0|act_relu|r_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \layer0|n0|act_relu|r_out~14_combout\ = (!\layer0|n0|r_relu_in\(15) & \layer0|n0|r_relu_in\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \layer0|n0|r_relu_in\(15),
	datad => \layer0|n0|r_relu_in\(14),
	combout => \layer0|n0|act_relu|r_out~14_combout\);

-- Location: FF_X38_Y60_N1
\layer0|n0|act_relu|r_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \layer0|n0|act_relu|r_out~14_combout\,
	ena => \layer0|n0|r_relu_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \layer0|n0|act_relu|r_out\(14));

-- Location: IOIBUF_X102_Y73_N8
\i_ft_1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(0),
	o => \i_ft_1[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\i_ft_1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(1),
	o => \i_ft_1[1]~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\i_ft_1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(2),
	o => \i_ft_1[2]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\i_ft_1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(3),
	o => \i_ft_1[3]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\i_ft_1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(4),
	o => \i_ft_1[4]~input_o\);

-- Location: IOIBUF_X115_Y19_N1
\i_ft_1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(5),
	o => \i_ft_1[5]~input_o\);

-- Location: IOIBUF_X105_Y73_N8
\i_ft_1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(6),
	o => \i_ft_1[6]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\i_ft_1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(7),
	o => \i_ft_1[7]~input_o\);

-- Location: IOIBUF_X0_Y58_N15
\i_ft_1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(8),
	o => \i_ft_1[8]~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\i_ft_1[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(9),
	o => \i_ft_1[9]~input_o\);

-- Location: IOIBUF_X115_Y69_N15
\i_ft_1[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(10),
	o => \i_ft_1[10]~input_o\);

-- Location: IOIBUF_X83_Y0_N22
\i_ft_1[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(11),
	o => \i_ft_1[11]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\i_ft_1[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(12),
	o => \i_ft_1[12]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\i_ft_1[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(13),
	o => \i_ft_1[13]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\i_ft_1[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(14),
	o => \i_ft_1[14]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\i_ft_1[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_1(15),
	o => \i_ft_1[15]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\i_ft_2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(0),
	o => \i_ft_2[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\i_ft_2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(1),
	o => \i_ft_2[1]~input_o\);

-- Location: IOIBUF_X115_Y22_N1
\i_ft_2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(2),
	o => \i_ft_2[2]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\i_ft_2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(3),
	o => \i_ft_2[3]~input_o\);

-- Location: IOIBUF_X74_Y0_N15
\i_ft_2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(4),
	o => \i_ft_2[4]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\i_ft_2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(5),
	o => \i_ft_2[5]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\i_ft_2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(6),
	o => \i_ft_2[6]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\i_ft_2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(7),
	o => \i_ft_2[7]~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\i_ft_2[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(8),
	o => \i_ft_2[8]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\i_ft_2[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(9),
	o => \i_ft_2[9]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\i_ft_2[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(10),
	o => \i_ft_2[10]~input_o\);

-- Location: IOIBUF_X98_Y0_N15
\i_ft_2[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(11),
	o => \i_ft_2[11]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\i_ft_2[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(12),
	o => \i_ft_2[12]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\i_ft_2[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(13),
	o => \i_ft_2[13]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\i_ft_2[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(14),
	o => \i_ft_2[14]~input_o\);

-- Location: IOIBUF_X105_Y0_N8
\i_ft_2[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_2(15),
	o => \i_ft_2[15]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\i_ft_3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(0),
	o => \i_ft_3[0]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\i_ft_3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(1),
	o => \i_ft_3[1]~input_o\);

-- Location: IOIBUF_X102_Y0_N22
\i_ft_3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(2),
	o => \i_ft_3[2]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\i_ft_3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(3),
	o => \i_ft_3[3]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\i_ft_3[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(4),
	o => \i_ft_3[4]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\i_ft_3[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(5),
	o => \i_ft_3[5]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\i_ft_3[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(6),
	o => \i_ft_3[6]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\i_ft_3[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(7),
	o => \i_ft_3[7]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\i_ft_3[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(8),
	o => \i_ft_3[8]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\i_ft_3[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(9),
	o => \i_ft_3[9]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\i_ft_3[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(10),
	o => \i_ft_3[10]~input_o\);

-- Location: IOIBUF_X115_Y35_N15
\i_ft_3[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(11),
	o => \i_ft_3[11]~input_o\);

-- Location: IOIBUF_X13_Y73_N22
\i_ft_3[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(12),
	o => \i_ft_3[12]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\i_ft_3[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(13),
	o => \i_ft_3[13]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\i_ft_3[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(14),
	o => \i_ft_3[14]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\i_ft_3[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_3(15),
	o => \i_ft_3[15]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\i_ft_4[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(0),
	o => \i_ft_4[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\i_ft_4[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(1),
	o => \i_ft_4[1]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\i_ft_4[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(2),
	o => \i_ft_4[2]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\i_ft_4[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(3),
	o => \i_ft_4[3]~input_o\);

-- Location: IOIBUF_X115_Y30_N8
\i_ft_4[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(4),
	o => \i_ft_4[4]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\i_ft_4[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(5),
	o => \i_ft_4[5]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\i_ft_4[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(6),
	o => \i_ft_4[6]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\i_ft_4[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(7),
	o => \i_ft_4[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\i_ft_4[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(8),
	o => \i_ft_4[8]~input_o\);

-- Location: IOIBUF_X115_Y57_N22
\i_ft_4[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(9),
	o => \i_ft_4[9]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\i_ft_4[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(10),
	o => \i_ft_4[10]~input_o\);

-- Location: IOIBUF_X9_Y73_N1
\i_ft_4[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(11),
	o => \i_ft_4[11]~input_o\);

-- Location: IOIBUF_X115_Y37_N22
\i_ft_4[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(12),
	o => \i_ft_4[12]~input_o\);

-- Location: IOIBUF_X115_Y37_N15
\i_ft_4[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(13),
	o => \i_ft_4[13]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\i_ft_4[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(14),
	o => \i_ft_4[14]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\i_ft_4[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_4(15),
	o => \i_ft_4[15]~input_o\);

-- Location: IOIBUF_X115_Y17_N8
\i_ft_5[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(0),
	o => \i_ft_5[0]~input_o\);

-- Location: IOIBUF_X115_Y37_N8
\i_ft_5[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(1),
	o => \i_ft_5[1]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\i_ft_5[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(2),
	o => \i_ft_5[2]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\i_ft_5[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(3),
	o => \i_ft_5[3]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\i_ft_5[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(4),
	o => \i_ft_5[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\i_ft_5[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(5),
	o => \i_ft_5[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\i_ft_5[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(6),
	o => \i_ft_5[6]~input_o\);

-- Location: IOIBUF_X115_Y64_N8
\i_ft_5[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(7),
	o => \i_ft_5[7]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\i_ft_5[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(8),
	o => \i_ft_5[8]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\i_ft_5[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(9),
	o => \i_ft_5[9]~input_o\);

-- Location: IOIBUF_X0_Y61_N22
\i_ft_5[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(10),
	o => \i_ft_5[10]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\i_ft_5[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(11),
	o => \i_ft_5[11]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\i_ft_5[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(12),
	o => \i_ft_5[12]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\i_ft_5[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(13),
	o => \i_ft_5[13]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\i_ft_5[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(14),
	o => \i_ft_5[14]~input_o\);

-- Location: IOIBUF_X115_Y65_N22
\i_ft_5[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_ft_5(15),
	o => \i_ft_5[15]~input_o\);

ww_o_class_0(0) <= \o_class_0[0]~output_o\;

ww_o_class_0(1) <= \o_class_0[1]~output_o\;

ww_o_class_0(2) <= \o_class_0[2]~output_o\;

ww_o_class_0(3) <= \o_class_0[3]~output_o\;

ww_o_class_0(4) <= \o_class_0[4]~output_o\;

ww_o_class_0(5) <= \o_class_0[5]~output_o\;

ww_o_class_0(6) <= \o_class_0[6]~output_o\;

ww_o_class_0(7) <= \o_class_0[7]~output_o\;

ww_o_class_0(8) <= \o_class_0[8]~output_o\;

ww_o_class_0(9) <= \o_class_0[9]~output_o\;

ww_o_class_0(10) <= \o_class_0[10]~output_o\;

ww_o_class_0(11) <= \o_class_0[11]~output_o\;

ww_o_class_0(12) <= \o_class_0[12]~output_o\;

ww_o_class_0(13) <= \o_class_0[13]~output_o\;

ww_o_class_0(14) <= \o_class_0[14]~output_o\;

ww_o_class_0(15) <= \o_class_0[15]~output_o\;

ww_o_class_1(0) <= \o_class_1[0]~output_o\;

ww_o_class_1(1) <= \o_class_1[1]~output_o\;

ww_o_class_1(2) <= \o_class_1[2]~output_o\;

ww_o_class_1(3) <= \o_class_1[3]~output_o\;

ww_o_class_1(4) <= \o_class_1[4]~output_o\;

ww_o_class_1(5) <= \o_class_1[5]~output_o\;

ww_o_class_1(6) <= \o_class_1[6]~output_o\;

ww_o_class_1(7) <= \o_class_1[7]~output_o\;

ww_o_class_1(8) <= \o_class_1[8]~output_o\;

ww_o_class_1(9) <= \o_class_1[9]~output_o\;

ww_o_class_1(10) <= \o_class_1[10]~output_o\;

ww_o_class_1(11) <= \o_class_1[11]~output_o\;

ww_o_class_1(12) <= \o_class_1[12]~output_o\;

ww_o_class_1(13) <= \o_class_1[13]~output_o\;

ww_o_class_1(14) <= \o_class_1[14]~output_o\;

ww_o_class_1(15) <= \o_class_1[15]~output_o\;

ww_o_class_2(0) <= \o_class_2[0]~output_o\;

ww_o_class_2(1) <= \o_class_2[1]~output_o\;

ww_o_class_2(2) <= \o_class_2[2]~output_o\;

ww_o_class_2(3) <= \o_class_2[3]~output_o\;

ww_o_class_2(4) <= \o_class_2[4]~output_o\;

ww_o_class_2(5) <= \o_class_2[5]~output_o\;

ww_o_class_2(6) <= \o_class_2[6]~output_o\;

ww_o_class_2(7) <= \o_class_2[7]~output_o\;

ww_o_class_2(8) <= \o_class_2[8]~output_o\;

ww_o_class_2(9) <= \o_class_2[9]~output_o\;

ww_o_class_2(10) <= \o_class_2[10]~output_o\;

ww_o_class_2(11) <= \o_class_2[11]~output_o\;

ww_o_class_2(12) <= \o_class_2[12]~output_o\;

ww_o_class_2(13) <= \o_class_2[13]~output_o\;

ww_o_class_2(14) <= \o_class_2[14]~output_o\;

ww_o_class_2(15) <= \o_class_2[15]~output_o\;

ww_o_class_3(0) <= \o_class_3[0]~output_o\;

ww_o_class_3(1) <= \o_class_3[1]~output_o\;

ww_o_class_3(2) <= \o_class_3[2]~output_o\;

ww_o_class_3(3) <= \o_class_3[3]~output_o\;

ww_o_class_3(4) <= \o_class_3[4]~output_o\;

ww_o_class_3(5) <= \o_class_3[5]~output_o\;

ww_o_class_3(6) <= \o_class_3[6]~output_o\;

ww_o_class_3(7) <= \o_class_3[7]~output_o\;

ww_o_class_3(8) <= \o_class_3[8]~output_o\;

ww_o_class_3(9) <= \o_class_3[9]~output_o\;

ww_o_class_3(10) <= \o_class_3[10]~output_o\;

ww_o_class_3(11) <= \o_class_3[11]~output_o\;

ww_o_class_3(12) <= \o_class_3[12]~output_o\;

ww_o_class_3(13) <= \o_class_3[13]~output_o\;

ww_o_class_3(14) <= \o_class_3[14]~output_o\;

ww_o_class_3(15) <= \o_class_3[15]~output_o\;

ww_o_class_4(0) <= \o_class_4[0]~output_o\;

ww_o_class_4(1) <= \o_class_4[1]~output_o\;

ww_o_class_4(2) <= \o_class_4[2]~output_o\;

ww_o_class_4(3) <= \o_class_4[3]~output_o\;

ww_o_class_4(4) <= \o_class_4[4]~output_o\;

ww_o_class_4(5) <= \o_class_4[5]~output_o\;

ww_o_class_4(6) <= \o_class_4[6]~output_o\;

ww_o_class_4(7) <= \o_class_4[7]~output_o\;

ww_o_class_4(8) <= \o_class_4[8]~output_o\;

ww_o_class_4(9) <= \o_class_4[9]~output_o\;

ww_o_class_4(10) <= \o_class_4[10]~output_o\;

ww_o_class_4(11) <= \o_class_4[11]~output_o\;

ww_o_class_4(12) <= \o_class_4[12]~output_o\;

ww_o_class_4(13) <= \o_class_4[13]~output_o\;

ww_o_class_4(14) <= \o_class_4[14]~output_o\;

ww_o_class_4(15) <= \o_class_4[15]~output_o\;

ww_o_class_5(0) <= \o_class_5[0]~output_o\;

ww_o_class_5(1) <= \o_class_5[1]~output_o\;

ww_o_class_5(2) <= \o_class_5[2]~output_o\;

ww_o_class_5(3) <= \o_class_5[3]~output_o\;

ww_o_class_5(4) <= \o_class_5[4]~output_o\;

ww_o_class_5(5) <= \o_class_5[5]~output_o\;

ww_o_class_5(6) <= \o_class_5[6]~output_o\;

ww_o_class_5(7) <= \o_class_5[7]~output_o\;

ww_o_class_5(8) <= \o_class_5[8]~output_o\;

ww_o_class_5(9) <= \o_class_5[9]~output_o\;

ww_o_class_5(10) <= \o_class_5[10]~output_o\;

ww_o_class_5(11) <= \o_class_5[11]~output_o\;

ww_o_class_5(12) <= \o_class_5[12]~output_o\;

ww_o_class_5(13) <= \o_class_5[13]~output_o\;

ww_o_class_5(14) <= \o_class_5[14]~output_o\;

ww_o_class_5(15) <= \o_class_5[15]~output_o\;
END structure;


