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

-- DATE "08/10/2020 22:58:04"

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

ENTITY 	simple_operations IS
    PORT (
	i_clk : IN std_logic;
	i_rst : IN std_logic;
	i_rst_sync : IN std_logic;
	o_status : OUT std_logic_vector(3 DOWNTO 0);
	i_fifo_rx_wr_en : IN std_logic;
	i_fifo_rx_wr_data : IN std_logic_vector(7 DOWNTO 0);
	o_fifo_rx_full : OUT std_logic;
	i_fifo_rx_rd_en : IN std_logic;
	o_fifo_rx_rd_data : OUT std_logic_vector(7 DOWNTO 0);
	o_fifo_rx_empty : OUT std_logic;
	i_fifo_tx_wr_en : IN std_logic;
	i_fifo_tx_wr_data : IN std_logic_vector(7 DOWNTO 0);
	o_fifo_tx_full : OUT std_logic;
	i_fifo_tx_rd_en : IN std_logic;
	o_fifo_tx_rd_data : OUT std_logic_vector(7 DOWNTO 0);
	o_fifo_tx_empty : OUT std_logic;
	i_tx_dv : IN std_logic;
	tx_data : IN std_logic_vector(7 DOWNTO 0);
	o_tx_active : OUT std_logic;
	o_tx_serial : OUT std_logic;
	o_tx_done : OUT std_logic;
	i_rx_serial : IN std_logic;
	o_rx_dv : OUT std_logic;
	rx_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END simple_operations;

-- Design Ports Information
-- o_status[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_status[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_status[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_status[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_rx_wr_en	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_rx_wr_data[0]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_rx_wr_data[1]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_rx_wr_data[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_rx_wr_data[3]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_rx_wr_data[4]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_rx_wr_data[5]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_rx_wr_data[6]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_rx_wr_data[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_rx_full	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_rx_rd_en	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_rx_rd_data[0]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_rx_rd_data[1]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_rx_rd_data[2]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_rx_rd_data[3]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_rx_rd_data[4]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_rx_rd_data[5]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_rx_rd_data[6]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_rx_rd_data[7]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_rx_empty	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_tx_wr_en	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_tx_wr_data[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_tx_wr_data[1]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_tx_wr_data[2]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_tx_wr_data[3]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_tx_wr_data[4]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_tx_wr_data[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_tx_wr_data[6]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_tx_wr_data[7]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_tx_full	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fifo_tx_rd_en	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_tx_rd_data[0]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_tx_rd_data[1]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_tx_rd_data[2]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_tx_rd_data[3]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_tx_rd_data[4]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_tx_rd_data[5]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_tx_rd_data[6]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_tx_rd_data[7]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_tx_empty	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_tx_dv	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[0]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[1]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[2]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[3]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[4]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[6]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[7]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tx_active	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tx_serial	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tx_done	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_rx_dv	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst_sync	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rx_serial	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF simple_operations IS
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
SIGNAL ww_i_rst_sync : std_logic;
SIGNAL ww_o_status : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_fifo_rx_wr_en : std_logic;
SIGNAL ww_i_fifo_rx_wr_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_fifo_rx_full : std_logic;
SIGNAL ww_i_fifo_rx_rd_en : std_logic;
SIGNAL ww_o_fifo_rx_rd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_fifo_rx_empty : std_logic;
SIGNAL ww_i_fifo_tx_wr_en : std_logic;
SIGNAL ww_i_fifo_tx_wr_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_fifo_tx_full : std_logic;
SIGNAL ww_i_fifo_tx_rd_en : std_logic;
SIGNAL ww_o_fifo_tx_rd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_fifo_tx_empty : std_logic;
SIGNAL ww_i_tx_dv : std_logic;
SIGNAL ww_tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_tx_active : std_logic;
SIGNAL ww_o_tx_serial : std_logic;
SIGNAL ww_o_tx_done : std_logic;
SIGNAL ww_i_rx_serial : std_logic;
SIGNAL ww_o_rx_dv : std_logic;
SIGNAL ww_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_fifo_rx_wr_en~input_o\ : std_logic;
SIGNAL \i_fifo_rx_wr_data[0]~input_o\ : std_logic;
SIGNAL \i_fifo_rx_wr_data[1]~input_o\ : std_logic;
SIGNAL \i_fifo_rx_wr_data[2]~input_o\ : std_logic;
SIGNAL \i_fifo_rx_wr_data[3]~input_o\ : std_logic;
SIGNAL \i_fifo_rx_wr_data[4]~input_o\ : std_logic;
SIGNAL \i_fifo_rx_wr_data[5]~input_o\ : std_logic;
SIGNAL \i_fifo_rx_wr_data[6]~input_o\ : std_logic;
SIGNAL \i_fifo_rx_wr_data[7]~input_o\ : std_logic;
SIGNAL \i_fifo_rx_rd_en~input_o\ : std_logic;
SIGNAL \i_fifo_tx_wr_en~input_o\ : std_logic;
SIGNAL \i_fifo_tx_wr_data[0]~input_o\ : std_logic;
SIGNAL \i_fifo_tx_wr_data[1]~input_o\ : std_logic;
SIGNAL \i_fifo_tx_wr_data[2]~input_o\ : std_logic;
SIGNAL \i_fifo_tx_wr_data[3]~input_o\ : std_logic;
SIGNAL \i_fifo_tx_wr_data[4]~input_o\ : std_logic;
SIGNAL \i_fifo_tx_wr_data[5]~input_o\ : std_logic;
SIGNAL \i_fifo_tx_wr_data[6]~input_o\ : std_logic;
SIGNAL \i_fifo_tx_wr_data[7]~input_o\ : std_logic;
SIGNAL \i_fifo_tx_rd_en~input_o\ : std_logic;
SIGNAL \i_tx_dv~input_o\ : std_logic;
SIGNAL \tx_data[0]~input_o\ : std_logic;
SIGNAL \tx_data[1]~input_o\ : std_logic;
SIGNAL \tx_data[2]~input_o\ : std_logic;
SIGNAL \tx_data[3]~input_o\ : std_logic;
SIGNAL \tx_data[4]~input_o\ : std_logic;
SIGNAL \tx_data[5]~input_o\ : std_logic;
SIGNAL \tx_data[6]~input_o\ : std_logic;
SIGNAL \tx_data[7]~input_o\ : std_logic;
SIGNAL \o_status[0]~output_o\ : std_logic;
SIGNAL \o_status[1]~output_o\ : std_logic;
SIGNAL \o_status[2]~output_o\ : std_logic;
SIGNAL \o_status[3]~output_o\ : std_logic;
SIGNAL \o_fifo_rx_full~output_o\ : std_logic;
SIGNAL \o_fifo_rx_rd_data[0]~output_o\ : std_logic;
SIGNAL \o_fifo_rx_rd_data[1]~output_o\ : std_logic;
SIGNAL \o_fifo_rx_rd_data[2]~output_o\ : std_logic;
SIGNAL \o_fifo_rx_rd_data[3]~output_o\ : std_logic;
SIGNAL \o_fifo_rx_rd_data[4]~output_o\ : std_logic;
SIGNAL \o_fifo_rx_rd_data[5]~output_o\ : std_logic;
SIGNAL \o_fifo_rx_rd_data[6]~output_o\ : std_logic;
SIGNAL \o_fifo_rx_rd_data[7]~output_o\ : std_logic;
SIGNAL \o_fifo_rx_empty~output_o\ : std_logic;
SIGNAL \o_fifo_tx_full~output_o\ : std_logic;
SIGNAL \o_fifo_tx_rd_data[0]~output_o\ : std_logic;
SIGNAL \o_fifo_tx_rd_data[1]~output_o\ : std_logic;
SIGNAL \o_fifo_tx_rd_data[2]~output_o\ : std_logic;
SIGNAL \o_fifo_tx_rd_data[3]~output_o\ : std_logic;
SIGNAL \o_fifo_tx_rd_data[4]~output_o\ : std_logic;
SIGNAL \o_fifo_tx_rd_data[5]~output_o\ : std_logic;
SIGNAL \o_fifo_tx_rd_data[6]~output_o\ : std_logic;
SIGNAL \o_fifo_tx_rd_data[7]~output_o\ : std_logic;
SIGNAL \o_fifo_tx_empty~output_o\ : std_logic;
SIGNAL \o_tx_active~output_o\ : std_logic;
SIGNAL \o_tx_serial~output_o\ : std_logic;
SIGNAL \o_tx_done~output_o\ : std_logic;
SIGNAL \o_rx_dv~output_o\ : std_logic;
SIGNAL \rx_data[0]~output_o\ : std_logic;
SIGNAL \rx_data[1]~output_o\ : std_logic;
SIGNAL \rx_data[2]~output_o\ : std_logic;
SIGNAL \rx_data[3]~output_o\ : std_logic;
SIGNAL \rx_data[4]~output_o\ : std_logic;
SIGNAL \rx_data[5]~output_o\ : std_logic;
SIGNAL \rx_data[6]~output_o\ : std_logic;
SIGNAL \rx_data[7]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \delay_4[0]~78_combout\ : std_logic;
SIGNAL \i_rst~input_o\ : std_logic;
SIGNAL \delay_4[1]~26_combout\ : std_logic;
SIGNAL \delay_4[1]~27\ : std_logic;
SIGNAL \delay_4[2]~28_combout\ : std_logic;
SIGNAL \delay_4[2]~29\ : std_logic;
SIGNAL \delay_4[3]~30_combout\ : std_logic;
SIGNAL \delay_4[3]~31\ : std_logic;
SIGNAL \delay_4[4]~32_combout\ : std_logic;
SIGNAL \delay_4[4]~33\ : std_logic;
SIGNAL \delay_4[5]~34_combout\ : std_logic;
SIGNAL \delay_4[5]~35\ : std_logic;
SIGNAL \delay_4[6]~36_combout\ : std_logic;
SIGNAL \delay_4[6]~37\ : std_logic;
SIGNAL \delay_4[7]~38_combout\ : std_logic;
SIGNAL \delay_4[7]~39\ : std_logic;
SIGNAL \delay_4[8]~40_combout\ : std_logic;
SIGNAL \delay_4[8]~41\ : std_logic;
SIGNAL \delay_4[9]~42_combout\ : std_logic;
SIGNAL \delay_4[9]~43\ : std_logic;
SIGNAL \delay_4[10]~44_combout\ : std_logic;
SIGNAL \delay_4[10]~45\ : std_logic;
SIGNAL \delay_4[11]~46_combout\ : std_logic;
SIGNAL \delay_4[11]~47\ : std_logic;
SIGNAL \delay_4[12]~48_combout\ : std_logic;
SIGNAL \delay_4[12]~49\ : std_logic;
SIGNAL \delay_4[13]~50_combout\ : std_logic;
SIGNAL \delay_4[13]~51\ : std_logic;
SIGNAL \delay_4[14]~52_combout\ : std_logic;
SIGNAL \delay_4[14]~53\ : std_logic;
SIGNAL \delay_4[15]~54_combout\ : std_logic;
SIGNAL \delay_4[15]~55\ : std_logic;
SIGNAL \delay_4[16]~56_combout\ : std_logic;
SIGNAL \delay_4[16]~57\ : std_logic;
SIGNAL \delay_4[17]~58_combout\ : std_logic;
SIGNAL \delay_4[17]~59\ : std_logic;
SIGNAL \delay_4[18]~60_combout\ : std_logic;
SIGNAL \delay_4[18]~61\ : std_logic;
SIGNAL \delay_4[19]~62_combout\ : std_logic;
SIGNAL \delay_4[19]~63\ : std_logic;
SIGNAL \delay_4[20]~64_combout\ : std_logic;
SIGNAL \delay_4[20]~65\ : std_logic;
SIGNAL \delay_4[21]~66_combout\ : std_logic;
SIGNAL \delay_4[21]~67\ : std_logic;
SIGNAL \delay_4[22]~68_combout\ : std_logic;
SIGNAL \delay_4[22]~69\ : std_logic;
SIGNAL \delay_4[23]~70_combout\ : std_logic;
SIGNAL \delay_4[23]~71\ : std_logic;
SIGNAL \delay_4[24]~72_combout\ : std_logic;
SIGNAL \delay_4[24]~73\ : std_logic;
SIGNAL \delay_4[25]~74_combout\ : std_logic;
SIGNAL \delay_4[25]~75\ : std_logic;
SIGNAL \delay_4[26]~76_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~7_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \r_status[3]~5_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \r_status[3]~4_combout\ : std_logic;
SIGNAL \delay_3[0]~78_combout\ : std_logic;
SIGNAL \delay_3[1]~26_combout\ : std_logic;
SIGNAL \delay_3[1]~27\ : std_logic;
SIGNAL \delay_3[2]~28_combout\ : std_logic;
SIGNAL \delay_3[2]~29\ : std_logic;
SIGNAL \delay_3[3]~30_combout\ : std_logic;
SIGNAL \delay_3[3]~31\ : std_logic;
SIGNAL \delay_3[4]~32_combout\ : std_logic;
SIGNAL \delay_3[4]~33\ : std_logic;
SIGNAL \delay_3[5]~34_combout\ : std_logic;
SIGNAL \delay_3[5]~35\ : std_logic;
SIGNAL \delay_3[6]~36_combout\ : std_logic;
SIGNAL \delay_3[6]~37\ : std_logic;
SIGNAL \delay_3[7]~38_combout\ : std_logic;
SIGNAL \delay_3[7]~39\ : std_logic;
SIGNAL \delay_3[8]~40_combout\ : std_logic;
SIGNAL \delay_3[8]~41\ : std_logic;
SIGNAL \delay_3[9]~42_combout\ : std_logic;
SIGNAL \delay_3[9]~43\ : std_logic;
SIGNAL \delay_3[10]~44_combout\ : std_logic;
SIGNAL \delay_3[10]~45\ : std_logic;
SIGNAL \delay_3[11]~46_combout\ : std_logic;
SIGNAL \delay_3[11]~47\ : std_logic;
SIGNAL \delay_3[12]~48_combout\ : std_logic;
SIGNAL \delay_3[12]~49\ : std_logic;
SIGNAL \delay_3[13]~50_combout\ : std_logic;
SIGNAL \delay_3[13]~51\ : std_logic;
SIGNAL \delay_3[14]~52_combout\ : std_logic;
SIGNAL \delay_3[14]~53\ : std_logic;
SIGNAL \delay_3[15]~54_combout\ : std_logic;
SIGNAL \delay_3[15]~55\ : std_logic;
SIGNAL \delay_3[16]~56_combout\ : std_logic;
SIGNAL \delay_3[16]~57\ : std_logic;
SIGNAL \delay_3[17]~58_combout\ : std_logic;
SIGNAL \delay_3[17]~59\ : std_logic;
SIGNAL \delay_3[18]~60_combout\ : std_logic;
SIGNAL \delay_3[18]~61\ : std_logic;
SIGNAL \delay_3[19]~62_combout\ : std_logic;
SIGNAL \delay_3[19]~63\ : std_logic;
SIGNAL \delay_3[20]~64_combout\ : std_logic;
SIGNAL \delay_3[20]~65\ : std_logic;
SIGNAL \delay_3[21]~66_combout\ : std_logic;
SIGNAL \delay_3[21]~67\ : std_logic;
SIGNAL \delay_3[22]~68_combout\ : std_logic;
SIGNAL \delay_3[22]~69\ : std_logic;
SIGNAL \delay_3[23]~70_combout\ : std_logic;
SIGNAL \delay_3[23]~71\ : std_logic;
SIGNAL \delay_3[24]~72_combout\ : std_logic;
SIGNAL \delay_3[24]~73\ : std_logic;
SIGNAL \delay_3[25]~74_combout\ : std_logic;
SIGNAL \delay_3[25]~75\ : std_logic;
SIGNAL \delay_3[26]~76_combout\ : std_logic;
SIGNAL \r_fifo_data_out[0]~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \r_sm_main.s_clear~q\ : std_logic;
SIGNAL \r_fifo_tx_wr_data[0]~0_combout\ : std_logic;
SIGNAL \r_fifo_tx_wr_en~0_combout\ : std_logic;
SIGNAL \r_fifo_tx_wr_en~1_combout\ : std_logic;
SIGNAL \r_fifo_tx_wr_en~q\ : std_logic;
SIGNAL \fifo_tx|r_fifo_count[0]~5_combout\ : std_logic;
SIGNAL \i_rst_sync~input_o\ : std_logic;
SIGNAL \fifo_tx|r_fifo_count[2]~13_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_count[0]~6\ : std_logic;
SIGNAL \fifo_tx|r_fifo_count[1]~8\ : std_logic;
SIGNAL \fifo_tx|r_fifo_count[2]~9_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_count[2]~10\ : std_logic;
SIGNAL \fifo_tx|r_fifo_count[3]~11_combout\ : std_logic;
SIGNAL \transmitter|r_clk_count[0]~13_combout\ : std_logic;
SIGNAL \transmitter|Selector19~0_combout\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_idle~q\ : std_logic;
SIGNAL \transmitter|r_clk_count[11]~37\ : std_logic;
SIGNAL \transmitter|r_clk_count[12]~38_combout\ : std_logic;
SIGNAL \transmitter|r_clk_count[12]~35_combout\ : std_logic;
SIGNAL \transmitter|r_clk_count[0]~14\ : std_logic;
SIGNAL \transmitter|r_clk_count[1]~15_combout\ : std_logic;
SIGNAL \transmitter|r_clk_count[1]~16\ : std_logic;
SIGNAL \transmitter|r_clk_count[2]~17_combout\ : std_logic;
SIGNAL \transmitter|r_clk_count[2]~18\ : std_logic;
SIGNAL \transmitter|r_clk_count[3]~19_combout\ : std_logic;
SIGNAL \transmitter|r_clk_count[3]~20\ : std_logic;
SIGNAL \transmitter|r_clk_count[4]~21_combout\ : std_logic;
SIGNAL \transmitter|r_clk_count[4]~22\ : std_logic;
SIGNAL \transmitter|r_clk_count[5]~23_combout\ : std_logic;
SIGNAL \transmitter|r_clk_count[5]~24\ : std_logic;
SIGNAL \transmitter|r_clk_count[6]~25_combout\ : std_logic;
SIGNAL \transmitter|r_clk_count[6]~26\ : std_logic;
SIGNAL \transmitter|r_clk_count[7]~27_combout\ : std_logic;
SIGNAL \transmitter|r_clk_count[7]~28\ : std_logic;
SIGNAL \transmitter|r_clk_count[8]~29_combout\ : std_logic;
SIGNAL \transmitter|r_clk_count[8]~30\ : std_logic;
SIGNAL \transmitter|r_clk_count[9]~31_combout\ : std_logic;
SIGNAL \transmitter|r_clk_count[9]~32\ : std_logic;
SIGNAL \transmitter|r_clk_count[10]~33_combout\ : std_logic;
SIGNAL \transmitter|r_clk_count[10]~34\ : std_logic;
SIGNAL \transmitter|r_clk_count[11]~36_combout\ : std_logic;
SIGNAL \transmitter|LessThan1~2_combout\ : std_logic;
SIGNAL \transmitter|LessThan1~1_combout\ : std_logic;
SIGNAL \transmitter|LessThan1~4_combout\ : std_logic;
SIGNAL \transmitter|Selector18~0_combout\ : std_logic;
SIGNAL \transmitter|Selector18~1_combout\ : std_logic;
SIGNAL \transmitter|Selector17~0_combout\ : std_logic;
SIGNAL \transmitter|LessThan1~0_combout\ : std_logic;
SIGNAL \transmitter|LessThan1~3_combout\ : std_logic;
SIGNAL \transmitter|Selector17~1_combout\ : std_logic;
SIGNAL \transmitter|Selector16~0_combout\ : std_logic;
SIGNAL \transmitter|Selector16~1_combout\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_tx_stop_bit~0_combout\ : std_logic;
SIGNAL \transmitter|Selector20~0_combout\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_tx_start_bit~q\ : std_logic;
SIGNAL \transmitter|Selector21~0_combout\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_tx_data_bits~q\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_tx_stop_bit~1_combout\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_tx_stop_bit~q\ : std_logic;
SIGNAL \transmitter|r_sm_main~7_combout\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \transmitter|Selector2~0_combout\ : std_logic;
SIGNAL \transmitter|Selector2~1_combout\ : std_logic;
SIGNAL \transmitter|r_tx_done~q\ : std_logic;
SIGNAL \fifo_tx|r_fifo_count[3]~12\ : std_logic;
SIGNAL \fifo_tx|r_fifo_count[4]~14_combout\ : std_logic;
SIGNAL \fifo_tx|Equal3~0_combout\ : std_logic;
SIGNAL \r_tx_dv~0_combout\ : std_logic;
SIGNAL \r_tx_dv~q\ : std_logic;
SIGNAL \fifo_tx|p_control~0_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_count[1]~7_combout\ : std_logic;
SIGNAL \fifo_tx|Equal2~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \r_fifo_rx_rd_en~q\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[0]~5_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[1]~13_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[0]~6\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[1]~7_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[1]~8\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[2]~9_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[2]~10\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[3]~12\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[4]~14_combout\ : std_logic;
SIGNAL \fifo_rx|Equal2~0_combout\ : std_logic;
SIGNAL \fifo_rx|Equal2~1_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[0]~13_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[2]~18\ : std_logic;
SIGNAL \receiver|r_clk_count[3]~19_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[7]~28\ : std_logic;
SIGNAL \receiver|r_clk_count[8]~29_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[8]~30\ : std_logic;
SIGNAL \receiver|r_clk_count[9]~31_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[9]~32\ : std_logic;
SIGNAL \receiver|r_clk_count[10]~33_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[10]~34\ : std_logic;
SIGNAL \receiver|r_clk_count[11]~35_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[11]~36\ : std_logic;
SIGNAL \receiver|r_clk_count[12]~37_combout\ : std_logic;
SIGNAL \receiver|r_sm_main~7_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \i_rx_serial~input_o\ : std_logic;
SIGNAL \receiver|r_rx_data_r~q\ : std_logic;
SIGNAL \receiver|r_rx_data~q\ : std_logic;
SIGNAL \receiver|r_clk_count[0]~41_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[3]~20\ : std_logic;
SIGNAL \receiver|r_clk_count[4]~21_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[4]~22\ : std_logic;
SIGNAL \receiver|r_clk_count[5]~23_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[5]~24\ : std_logic;
SIGNAL \receiver|r_clk_count[6]~25_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[6]~26\ : std_logic;
SIGNAL \receiver|r_clk_count[7]~27_combout\ : std_logic;
SIGNAL \receiver|LessThan1~1_combout\ : std_logic;
SIGNAL \receiver|LessThan1~0_combout\ : std_logic;
SIGNAL \receiver|LessThan1~2_combout\ : std_logic;
SIGNAL \receiver|Selector16~0_combout\ : std_logic;
SIGNAL \receiver|Selector16~1_combout\ : std_logic;
SIGNAL \receiver|LessThan1~3_combout\ : std_logic;
SIGNAL \receiver|Selector15~2_combout\ : std_logic;
SIGNAL \receiver|Selector15~3_combout\ : std_logic;
SIGNAL \receiver|Selector14~0_combout\ : std_logic;
SIGNAL \receiver|Selector14~1_combout\ : std_logic;
SIGNAL \receiver|Selector14~2_combout\ : std_logic;
SIGNAL \receiver|Selector19~1_combout\ : std_logic;
SIGNAL \receiver|Selector19~0_combout\ : std_logic;
SIGNAL \receiver|Selector19~2_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_rx_data_bits~q\ : std_logic;
SIGNAL \receiver|Decoder0~0_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_rx_stop_bit~2_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_rx_stop_bit~3_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_rx_stop_bit~q\ : std_logic;
SIGNAL \receiver|Selector0~0_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[0]~40_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[0]~14\ : std_logic;
SIGNAL \receiver|r_clk_count[1]~15_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[1]~16\ : std_logic;
SIGNAL \receiver|r_clk_count[2]~17_combout\ : std_logic;
SIGNAL \receiver|Equal0~2_combout\ : std_logic;
SIGNAL \receiver|Equal0~0_combout\ : std_logic;
SIGNAL \receiver|Equal0~1_combout\ : std_logic;
SIGNAL \receiver|Equal0~3_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[0]~39_combout\ : std_logic;
SIGNAL \receiver|Selector17~0_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_idle~q\ : std_logic;
SIGNAL \receiver|Selector18~0_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_rx_start_bit~q\ : std_logic;
SIGNAL \receiver|Selector0~1_combout\ : std_logic;
SIGNAL \receiver|r_rx_dv~q\ : std_logic;
SIGNAL \r_fifo_rx_wr_en~0_combout\ : std_logic;
SIGNAL \r_fifo_rx_wr_en~q\ : std_logic;
SIGNAL \fifo_rx|p_control~0_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[3]~11_combout\ : std_logic;
SIGNAL \fifo_rx|Equal3~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \r_sm_main.s_idle~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \r_status[3]~2_combout\ : std_logic;
SIGNAL \r_status[3]~3_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \r_sm_main.s_get_fifo_data~q\ : std_logic;
SIGNAL \delay_1[0]~78_combout\ : std_logic;
SIGNAL \delay_1[1]~26_combout\ : std_logic;
SIGNAL \delay_1[1]~27\ : std_logic;
SIGNAL \delay_1[2]~28_combout\ : std_logic;
SIGNAL \delay_1[2]~29\ : std_logic;
SIGNAL \delay_1[3]~30_combout\ : std_logic;
SIGNAL \delay_1[3]~31\ : std_logic;
SIGNAL \delay_1[4]~32_combout\ : std_logic;
SIGNAL \delay_1[4]~33\ : std_logic;
SIGNAL \delay_1[5]~34_combout\ : std_logic;
SIGNAL \delay_1[5]~35\ : std_logic;
SIGNAL \delay_1[6]~36_combout\ : std_logic;
SIGNAL \delay_1[6]~37\ : std_logic;
SIGNAL \delay_1[7]~38_combout\ : std_logic;
SIGNAL \delay_1[7]~39\ : std_logic;
SIGNAL \delay_1[8]~40_combout\ : std_logic;
SIGNAL \delay_1[8]~41\ : std_logic;
SIGNAL \delay_1[9]~42_combout\ : std_logic;
SIGNAL \delay_1[9]~43\ : std_logic;
SIGNAL \delay_1[10]~44_combout\ : std_logic;
SIGNAL \delay_1[10]~45\ : std_logic;
SIGNAL \delay_1[11]~46_combout\ : std_logic;
SIGNAL \delay_1[11]~47\ : std_logic;
SIGNAL \delay_1[12]~48_combout\ : std_logic;
SIGNAL \delay_1[12]~49\ : std_logic;
SIGNAL \delay_1[13]~50_combout\ : std_logic;
SIGNAL \delay_1[13]~51\ : std_logic;
SIGNAL \delay_1[14]~52_combout\ : std_logic;
SIGNAL \delay_1[14]~53\ : std_logic;
SIGNAL \delay_1[15]~54_combout\ : std_logic;
SIGNAL \delay_1[15]~55\ : std_logic;
SIGNAL \delay_1[16]~56_combout\ : std_logic;
SIGNAL \delay_1[16]~57\ : std_logic;
SIGNAL \delay_1[17]~58_combout\ : std_logic;
SIGNAL \delay_1[17]~59\ : std_logic;
SIGNAL \delay_1[18]~60_combout\ : std_logic;
SIGNAL \delay_1[18]~61\ : std_logic;
SIGNAL \delay_1[19]~62_combout\ : std_logic;
SIGNAL \delay_1[19]~63\ : std_logic;
SIGNAL \delay_1[20]~64_combout\ : std_logic;
SIGNAL \delay_1[20]~65\ : std_logic;
SIGNAL \delay_1[21]~66_combout\ : std_logic;
SIGNAL \delay_1[21]~67\ : std_logic;
SIGNAL \delay_1[22]~68_combout\ : std_logic;
SIGNAL \delay_1[22]~69\ : std_logic;
SIGNAL \delay_1[23]~70_combout\ : std_logic;
SIGNAL \delay_1[23]~71\ : std_logic;
SIGNAL \delay_1[24]~72_combout\ : std_logic;
SIGNAL \delay_1[24]~73\ : std_logic;
SIGNAL \delay_1[25]~74_combout\ : std_logic;
SIGNAL \delay_1[25]~75\ : std_logic;
SIGNAL \delay_1[26]~76_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \r_status[3]~0_combout\ : std_logic;
SIGNAL \r_status[3]~1_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \r_sm_main.s_calculus~q\ : std_logic;
SIGNAL \delay_2[0]~78_combout\ : std_logic;
SIGNAL \delay_2[1]~26_combout\ : std_logic;
SIGNAL \delay_2[1]~27\ : std_logic;
SIGNAL \delay_2[2]~28_combout\ : std_logic;
SIGNAL \delay_2[2]~29\ : std_logic;
SIGNAL \delay_2[3]~30_combout\ : std_logic;
SIGNAL \delay_2[3]~31\ : std_logic;
SIGNAL \delay_2[4]~32_combout\ : std_logic;
SIGNAL \delay_2[4]~33\ : std_logic;
SIGNAL \delay_2[5]~34_combout\ : std_logic;
SIGNAL \delay_2[5]~35\ : std_logic;
SIGNAL \delay_2[6]~36_combout\ : std_logic;
SIGNAL \delay_2[6]~37\ : std_logic;
SIGNAL \delay_2[7]~38_combout\ : std_logic;
SIGNAL \delay_2[7]~39\ : std_logic;
SIGNAL \delay_2[8]~40_combout\ : std_logic;
SIGNAL \delay_2[8]~41\ : std_logic;
SIGNAL \delay_2[9]~42_combout\ : std_logic;
SIGNAL \delay_2[9]~43\ : std_logic;
SIGNAL \delay_2[10]~44_combout\ : std_logic;
SIGNAL \delay_2[10]~45\ : std_logic;
SIGNAL \delay_2[11]~46_combout\ : std_logic;
SIGNAL \delay_2[11]~47\ : std_logic;
SIGNAL \delay_2[12]~48_combout\ : std_logic;
SIGNAL \delay_2[12]~49\ : std_logic;
SIGNAL \delay_2[13]~50_combout\ : std_logic;
SIGNAL \delay_2[13]~51\ : std_logic;
SIGNAL \delay_2[14]~52_combout\ : std_logic;
SIGNAL \delay_2[14]~53\ : std_logic;
SIGNAL \delay_2[15]~54_combout\ : std_logic;
SIGNAL \delay_2[15]~55\ : std_logic;
SIGNAL \delay_2[16]~56_combout\ : std_logic;
SIGNAL \delay_2[16]~57\ : std_logic;
SIGNAL \delay_2[17]~58_combout\ : std_logic;
SIGNAL \delay_2[17]~59\ : std_logic;
SIGNAL \delay_2[18]~60_combout\ : std_logic;
SIGNAL \delay_2[18]~61\ : std_logic;
SIGNAL \delay_2[19]~62_combout\ : std_logic;
SIGNAL \delay_2[19]~63\ : std_logic;
SIGNAL \delay_2[20]~64_combout\ : std_logic;
SIGNAL \delay_2[20]~65\ : std_logic;
SIGNAL \delay_2[21]~66_combout\ : std_logic;
SIGNAL \delay_2[21]~67\ : std_logic;
SIGNAL \delay_2[22]~68_combout\ : std_logic;
SIGNAL \delay_2[22]~69\ : std_logic;
SIGNAL \delay_2[23]~70_combout\ : std_logic;
SIGNAL \delay_2[23]~71\ : std_logic;
SIGNAL \delay_2[24]~72_combout\ : std_logic;
SIGNAL \delay_2[24]~73\ : std_logic;
SIGNAL \delay_2[25]~74_combout\ : std_logic;
SIGNAL \delay_2[25]~75\ : std_logic;
SIGNAL \delay_2[26]~76_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \r_sm_main.s_put_fifo_data~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \r_status[3]~6_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \r_status[2]~8_combout\ : std_logic;
SIGNAL \r_status[3]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data~24_combout\ : std_logic;
SIGNAL \fifo_rx|r_rd_index~1_combout\ : std_logic;
SIGNAL \fifo_rx|r_rd_index~0_combout\ : std_logic;
SIGNAL \fifo_rx|Equal1~0_combout\ : std_logic;
SIGNAL \fifo_rx|r_rd_index~2_combout\ : std_logic;
SIGNAL \fifo_rx|r_rd_index~3_combout\ : std_logic;
SIGNAL \fifo_rx|Add3~0_combout\ : std_logic;
SIGNAL \fifo_rx|r_rd_index~4_combout\ : std_logic;
SIGNAL \fifo_rx|r_rd_index~5_combout\ : std_logic;
SIGNAL \fifo_rx|Add3~1_combout\ : std_logic;
SIGNAL \fifo_rx|r_rd_index~6_combout\ : std_logic;
SIGNAL \fifo_rx|r_wr_index~0_combout\ : std_logic;
SIGNAL \fifo_rx|r_wr_index[1]~1_combout\ : std_logic;
SIGNAL \fifo_rx|r_wr_index~3_combout\ : std_logic;
SIGNAL \fifo_rx|Add2~0_combout\ : std_logic;
SIGNAL \fifo_rx|r_wr_index~4_combout\ : std_logic;
SIGNAL \fifo_rx|r_wr_index[1]~2_combout\ : std_logic;
SIGNAL \fifo_rx|Add2~1_combout\ : std_logic;
SIGNAL \fifo_rx|r_wr_index~5_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data~14_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data~13_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data~15_combout\ : std_logic;
SIGNAL \receiver|Decoder0~1_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[0]~0_combout\ : std_logic;
SIGNAL \r_fifo_rx_wr_data[0]~feeder_combout\ : std_logic;
SIGNAL \r_fifo_rx_wr_data[0]~0_combout\ : std_logic;
SIGNAL \receiver|Decoder0~2_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[1]~1_combout\ : std_logic;
SIGNAL \r_fifo_rx_wr_data[1]~feeder_combout\ : std_logic;
SIGNAL \receiver|Decoder0~3_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[2]~2_combout\ : std_logic;
SIGNAL \r_fifo_rx_wr_data[2]~feeder_combout\ : std_logic;
SIGNAL \receiver|Decoder0~4_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[3]~3_combout\ : std_logic;
SIGNAL \r_fifo_rx_wr_data[3]~feeder_combout\ : std_logic;
SIGNAL \receiver|Decoder0~5_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[4]~4_combout\ : std_logic;
SIGNAL \r_fifo_rx_wr_data[4]~feeder_combout\ : std_logic;
SIGNAL \receiver|Decoder0~6_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[5]~5_combout\ : std_logic;
SIGNAL \r_fifo_rx_wr_data[5]~feeder_combout\ : std_logic;
SIGNAL \receiver|Decoder0~7_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[6]~6_combout\ : std_logic;
SIGNAL \r_fifo_rx_wr_data[6]~feeder_combout\ : std_logic;
SIGNAL \receiver|Decoder0~8_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[7]~7_combout\ : std_logic;
SIGNAL \r_fifo_rx_wr_data[7]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data~16_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data~17_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data~18_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data~19_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data~20_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data~21_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data~22_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \fifo_rx|r_fifo_data~23_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \r_fifo_data_in[0]~0_combout\ : std_logic;
SIGNAL \r_data_in[0]~feeder_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \p_calculus_fsm:aux[-7]~0_combout\ : std_logic;
SIGNAL \p_calculus_fsm:aux[-7]~q\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \r_fifo_data_out[0]~1_combout\ : std_logic;
SIGNAL \r_fifo_tx_wr_data[0]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data~24_combout\ : std_logic;
SIGNAL \fifo_tx|r_wr_index~0_combout\ : std_logic;
SIGNAL \fifo_tx|r_wr_index[1]~1_combout\ : std_logic;
SIGNAL \fifo_tx|Add2~0_combout\ : std_logic;
SIGNAL \fifo_tx|r_wr_index~4_combout\ : std_logic;
SIGNAL \fifo_tx|Add2~1_combout\ : std_logic;
SIGNAL \fifo_tx|r_wr_index~5_combout\ : std_logic;
SIGNAL \fifo_tx|r_wr_index[1]~2_combout\ : std_logic;
SIGNAL \fifo_tx|r_wr_index~3_combout\ : std_logic;
SIGNAL \fifo_tx|r_rd_index[0]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|Equal3~1_combout\ : std_logic;
SIGNAL \fifo_tx|r_rd_index~0_combout\ : std_logic;
SIGNAL \fifo_tx|Add3~0_combout\ : std_logic;
SIGNAL \fifo_tx|r_rd_index~4_combout\ : std_logic;
SIGNAL \fifo_tx|r_rd_index~1_combout\ : std_logic;
SIGNAL \fifo_tx|r_rd_index~5_combout\ : std_logic;
SIGNAL \fifo_tx|Add3~1_combout\ : std_logic;
SIGNAL \fifo_tx|r_rd_index~6_combout\ : std_logic;
SIGNAL \fifo_tx|Equal1~0_combout\ : std_logic;
SIGNAL \fifo_tx|r_rd_index~2_combout\ : std_logic;
SIGNAL \fifo_tx|r_rd_index~3_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \r_data_in[1]~feeder_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \p_calculus_fsm:aux[-6]~q\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \r_fifo_tx_wr_data[1]~feeder_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \p_calculus_fsm:aux[-5]~q\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \r_fifo_tx_wr_data[2]~feeder_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \p_calculus_fsm:aux[-4]~q\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \r_fifo_tx_wr_data[3]~feeder_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \r_data_in[4]~feeder_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \p_calculus_fsm:aux[-3]~q\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \r_fifo_tx_wr_data[4]~feeder_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \p_calculus_fsm:aux[-2]~q\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \r_fifo_tx_wr_data[5]~feeder_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \r_data_in[6]~feeder_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \p_calculus_fsm:aux[-1]~q\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \r_fifo_tx_wr_data[6]~feeder_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \r_data_in[7]~feeder_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \p_calculus_fsm:aux[0]~q\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \r_fifo_tx_wr_data[7]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data~13_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data~14_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data~15_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data~16_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data~17_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data~18_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data~19_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data~20_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data~21_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data~22_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \fifo_tx|r_fifo_data~23_combout\ : std_logic;
SIGNAL \transmitter|Selector0~0_combout\ : std_logic;
SIGNAL \transmitter|o_tx_active~q\ : std_logic;
SIGNAL \transmitter|Selector20~1_combout\ : std_logic;
SIGNAL \transmitter|Mux0~0_combout\ : std_logic;
SIGNAL \transmitter|r_tx_data[6]~feeder_combout\ : std_logic;
SIGNAL \transmitter|Mux0~1_combout\ : std_logic;
SIGNAL \transmitter|Selector1~0_combout\ : std_logic;
SIGNAL \transmitter|r_tx_data[2]~feeder_combout\ : std_logic;
SIGNAL \transmitter|r_tx_data[1]~feeder_combout\ : std_logic;
SIGNAL \transmitter|Mux0~2_combout\ : std_logic;
SIGNAL \transmitter|Mux0~3_combout\ : std_logic;
SIGNAL \transmitter|Selector1~1_combout\ : std_logic;
SIGNAL \transmitter|Selector1~2_combout\ : std_logic;
SIGNAL \transmitter|o_tx_serial~q\ : std_logic;
SIGNAL \fifo_tx|r_fifo_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \transmitter|r_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \fifo_rx|r_fifo_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL r_status : std_logic_vector(3 DOWNTO 0);
SIGNAL delay_2 : std_logic_vector(26 DOWNTO 0);
SIGNAL delay_1 : std_logic_vector(26 DOWNTO 0);
SIGNAL delay_3 : std_logic_vector(26 DOWNTO 0);
SIGNAL \receiver|r_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL delay_4 : std_logic_vector(26 DOWNTO 0);
SIGNAL \fifo_rx|r_fifo_data_rtl_0_bypass\ : std_logic_vector(0 TO 24);
SIGNAL \receiver|r_bit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \fifo_tx|r_fifo_data_rtl_0_bypass\ : std_logic_vector(0 TO 24);
SIGNAL r_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL r_fifo_rx_wr_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \fifo_rx|r_wr_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fifo_rx|r_rd_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL r_fifo_tx_wr_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \fifo_tx|r_wr_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fifo_tx|r_rd_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \transmitter|r_tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \transmitter|r_bit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL r_fifo_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL \receiver|r_rx_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL r_fifo_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL r_tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_r_status : std_logic_vector(3 DOWNTO 0);
SIGNAL \fifo_tx|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \fifo_tx|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \transmitter|ALT_INV_r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \ALT_INV_i_rst_sync~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clk <= i_clk;
ww_i_rst <= i_rst;
ww_i_rst_sync <= i_rst_sync;
o_status <= ww_o_status;
ww_i_fifo_rx_wr_en <= i_fifo_rx_wr_en;
ww_i_fifo_rx_wr_data <= i_fifo_rx_wr_data;
o_fifo_rx_full <= ww_o_fifo_rx_full;
ww_i_fifo_rx_rd_en <= i_fifo_rx_rd_en;
o_fifo_rx_rd_data <= ww_o_fifo_rx_rd_data;
o_fifo_rx_empty <= ww_o_fifo_rx_empty;
ww_i_fifo_tx_wr_en <= i_fifo_tx_wr_en;
ww_i_fifo_tx_wr_data <= i_fifo_tx_wr_data;
o_fifo_tx_full <= ww_o_fifo_tx_full;
ww_i_fifo_tx_rd_en <= i_fifo_tx_rd_en;
o_fifo_tx_rd_data <= ww_o_fifo_tx_rd_data;
o_fifo_tx_empty <= ww_o_fifo_tx_empty;
ww_i_tx_dv <= i_tx_dv;
ww_tx_data <= tx_data;
o_tx_active <= ww_o_tx_active;
o_tx_serial <= ww_o_tx_serial;
o_tx_done <= ww_o_tx_done;
ww_i_rx_serial <= i_rx_serial;
o_rx_dv <= ww_o_rx_dv;
rx_data <= ww_rx_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
r_fifo_rx_wr_data(7) & r_fifo_rx_wr_data(6) & r_fifo_rx_wr_data(5) & r_fifo_rx_wr_data(4) & r_fifo_rx_wr_data(3) & r_fifo_rx_wr_data(2) & r_fifo_rx_wr_data(1) & r_fifo_rx_wr_data(0));

\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\fifo_rx|r_wr_index\(3) & \fifo_rx|r_wr_index\(2) & \fifo_rx|r_wr_index\(1) & \fifo_rx|r_wr_index\(0));

\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\fifo_rx|r_rd_index~6_combout\ & \fifo_rx|r_rd_index~5_combout\ & \fifo_rx|r_rd_index~3_combout\ & \fifo_rx|r_rd_index~0_combout\);

\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\ <= \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\ <= \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\ <= \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\ <= \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ <= \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\ <= \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\ <= \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
r_fifo_tx_wr_data(7) & r_fifo_tx_wr_data(6) & r_fifo_tx_wr_data(5) & r_fifo_tx_wr_data(4) & r_fifo_tx_wr_data(3) & r_fifo_tx_wr_data(2) & r_fifo_tx_wr_data(1) & r_fifo_tx_wr_data(0));

\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\fifo_tx|r_wr_index\(3) & \fifo_tx|r_wr_index\(2) & \fifo_tx|r_wr_index\(1) & \fifo_tx|r_wr_index\(0));

\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\fifo_tx|r_rd_index~6_combout\ & \fifo_tx|r_rd_index~5_combout\ & \fifo_tx|r_rd_index~3_combout\ & \fifo_tx|r_rd_index~0_combout\);

\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\ <= \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\ <= \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\ <= \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\ <= \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ <= \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\ <= \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\ <= \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
ALT_INV_r_status(3) <= NOT r_status(3);
ALT_INV_r_status(2) <= NOT r_status(2);
ALT_INV_r_status(1) <= NOT r_status(1);
ALT_INV_r_status(0) <= NOT r_status(0);
\fifo_tx|ALT_INV_Equal3~1_combout\ <= NOT \fifo_tx|Equal3~1_combout\;
\fifo_tx|ALT_INV_Equal2~0_combout\ <= NOT \fifo_tx|Equal2~0_combout\;
\transmitter|ALT_INV_r_sm_main.s_cleanup~q\ <= NOT \transmitter|r_sm_main.s_cleanup~q\;
\ALT_INV_i_rst_sync~input_o\ <= NOT \i_rst_sync~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X87_Y73_N9
\o_status[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_r_status(0),
	devoe => ww_devoe,
	o => \o_status[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\o_status[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_r_status(1),
	devoe => ww_devoe,
	o => \o_status[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\o_status[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_r_status(2),
	devoe => ww_devoe,
	o => \o_status[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\o_status[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_r_status(3),
	devoe => ww_devoe,
	o => \o_status[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\o_fifo_rx_full~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_rx|Equal2~1_combout\,
	devoe => ww_devoe,
	o => \o_fifo_rx_full~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\o_fifo_rx_rd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_rx|r_fifo_data~16_combout\,
	devoe => ww_devoe,
	o => \o_fifo_rx_rd_data[0]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\o_fifo_rx_rd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_rx|r_fifo_data~17_combout\,
	devoe => ww_devoe,
	o => \o_fifo_rx_rd_data[1]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\o_fifo_rx_rd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_rx|r_fifo_data~18_combout\,
	devoe => ww_devoe,
	o => \o_fifo_rx_rd_data[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\o_fifo_rx_rd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_rx|r_fifo_data~19_combout\,
	devoe => ww_devoe,
	o => \o_fifo_rx_rd_data[3]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\o_fifo_rx_rd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_rx|r_fifo_data~20_combout\,
	devoe => ww_devoe,
	o => \o_fifo_rx_rd_data[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\o_fifo_rx_rd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_rx|r_fifo_data~21_combout\,
	devoe => ww_devoe,
	o => \o_fifo_rx_rd_data[5]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\o_fifo_rx_rd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_rx|r_fifo_data~22_combout\,
	devoe => ww_devoe,
	o => \o_fifo_rx_rd_data[6]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\o_fifo_rx_rd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_rx|r_fifo_data~23_combout\,
	devoe => ww_devoe,
	o => \o_fifo_rx_rd_data[7]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\o_fifo_rx_empty~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_rx|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \o_fifo_rx_empty~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\o_fifo_tx_full~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_tx|ALT_INV_Equal2~0_combout\,
	devoe => ww_devoe,
	o => \o_fifo_tx_full~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\o_fifo_tx_rd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_tx|r_fifo_data~16_combout\,
	devoe => ww_devoe,
	o => \o_fifo_tx_rd_data[0]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\o_fifo_tx_rd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_tx|r_fifo_data~17_combout\,
	devoe => ww_devoe,
	o => \o_fifo_tx_rd_data[1]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\o_fifo_tx_rd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_tx|r_fifo_data~18_combout\,
	devoe => ww_devoe,
	o => \o_fifo_tx_rd_data[2]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\o_fifo_tx_rd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_tx|r_fifo_data~19_combout\,
	devoe => ww_devoe,
	o => \o_fifo_tx_rd_data[3]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\o_fifo_tx_rd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_tx|r_fifo_data~20_combout\,
	devoe => ww_devoe,
	o => \o_fifo_tx_rd_data[4]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\o_fifo_tx_rd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_tx|r_fifo_data~21_combout\,
	devoe => ww_devoe,
	o => \o_fifo_tx_rd_data[5]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\o_fifo_tx_rd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_tx|r_fifo_data~22_combout\,
	devoe => ww_devoe,
	o => \o_fifo_tx_rd_data[6]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\o_fifo_tx_rd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_tx|r_fifo_data~23_combout\,
	devoe => ww_devoe,
	o => \o_fifo_tx_rd_data[7]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\o_fifo_tx_empty~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_tx|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \o_fifo_tx_empty~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\o_tx_active~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transmitter|o_tx_active~q\,
	devoe => ww_devoe,
	o => \o_tx_active~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\o_tx_serial~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transmitter|o_tx_serial~q\,
	devoe => ww_devoe,
	o => \o_tx_serial~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\o_tx_done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transmitter|r_tx_done~q\,
	devoe => ww_devoe,
	o => \o_tx_done~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\o_rx_dv~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver|r_rx_dv~q\,
	devoe => ww_devoe,
	o => \o_rx_dv~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\rx_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_data_in(0),
	devoe => ww_devoe,
	o => \rx_data[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\rx_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_data_in(1),
	devoe => ww_devoe,
	o => \rx_data[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\rx_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_data_in(2),
	devoe => ww_devoe,
	o => \rx_data[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\rx_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_data_in(3),
	devoe => ww_devoe,
	o => \rx_data[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\rx_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_data_in(4),
	devoe => ww_devoe,
	o => \rx_data[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\rx_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_data_in(5),
	devoe => ww_devoe,
	o => \rx_data[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\rx_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_data_in(6),
	devoe => ww_devoe,
	o => \rx_data[6]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\rx_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_data_in(7),
	devoe => ww_devoe,
	o => \rx_data[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\i_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X108_Y53_N0
\delay_4[0]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[0]~78_combout\ = delay_4(0) $ (\r_status[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_4(0),
	datad => \r_status[3]~5_combout\,
	combout => \delay_4[0]~78_combout\);

-- Location: IOIBUF_X115_Y40_N8
\i_rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rst,
	o => \i_rst~input_o\);

-- Location: FF_X108_Y53_N1
\delay_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[0]~78_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(0));

-- Location: LCCOMB_X108_Y53_N6
\delay_4[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[1]~26_combout\ = (delay_4(1) & (delay_4(0) $ (VCC))) # (!delay_4(1) & (delay_4(0) & VCC))
-- \delay_4[1]~27\ = CARRY((delay_4(1) & delay_4(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(1),
	datab => delay_4(0),
	datad => VCC,
	combout => \delay_4[1]~26_combout\,
	cout => \delay_4[1]~27\);

-- Location: FF_X108_Y53_N7
\delay_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[1]~26_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(1));

-- Location: LCCOMB_X108_Y53_N8
\delay_4[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[2]~28_combout\ = (delay_4(2) & (!\delay_4[1]~27\)) # (!delay_4(2) & ((\delay_4[1]~27\) # (GND)))
-- \delay_4[2]~29\ = CARRY((!\delay_4[1]~27\) # (!delay_4(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(2),
	datad => VCC,
	cin => \delay_4[1]~27\,
	combout => \delay_4[2]~28_combout\,
	cout => \delay_4[2]~29\);

-- Location: FF_X108_Y53_N9
\delay_4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[2]~28_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(2));

-- Location: LCCOMB_X108_Y53_N10
\delay_4[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[3]~30_combout\ = (delay_4(3) & (\delay_4[2]~29\ $ (GND))) # (!delay_4(3) & (!\delay_4[2]~29\ & VCC))
-- \delay_4[3]~31\ = CARRY((delay_4(3) & !\delay_4[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(3),
	datad => VCC,
	cin => \delay_4[2]~29\,
	combout => \delay_4[3]~30_combout\,
	cout => \delay_4[3]~31\);

-- Location: FF_X108_Y53_N11
\delay_4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[3]~30_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(3));

-- Location: LCCOMB_X108_Y53_N12
\delay_4[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[4]~32_combout\ = (delay_4(4) & (!\delay_4[3]~31\)) # (!delay_4(4) & ((\delay_4[3]~31\) # (GND)))
-- \delay_4[4]~33\ = CARRY((!\delay_4[3]~31\) # (!delay_4(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(4),
	datad => VCC,
	cin => \delay_4[3]~31\,
	combout => \delay_4[4]~32_combout\,
	cout => \delay_4[4]~33\);

-- Location: FF_X108_Y53_N13
\delay_4[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[4]~32_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(4));

-- Location: LCCOMB_X108_Y53_N14
\delay_4[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[5]~34_combout\ = (delay_4(5) & (\delay_4[4]~33\ $ (GND))) # (!delay_4(5) & (!\delay_4[4]~33\ & VCC))
-- \delay_4[5]~35\ = CARRY((delay_4(5) & !\delay_4[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(5),
	datad => VCC,
	cin => \delay_4[4]~33\,
	combout => \delay_4[5]~34_combout\,
	cout => \delay_4[5]~35\);

-- Location: FF_X108_Y53_N15
\delay_4[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[5]~34_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(5));

-- Location: LCCOMB_X108_Y53_N16
\delay_4[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[6]~36_combout\ = (delay_4(6) & (!\delay_4[5]~35\)) # (!delay_4(6) & ((\delay_4[5]~35\) # (GND)))
-- \delay_4[6]~37\ = CARRY((!\delay_4[5]~35\) # (!delay_4(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(6),
	datad => VCC,
	cin => \delay_4[5]~35\,
	combout => \delay_4[6]~36_combout\,
	cout => \delay_4[6]~37\);

-- Location: FF_X108_Y53_N17
\delay_4[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[6]~36_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(6));

-- Location: LCCOMB_X108_Y53_N18
\delay_4[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[7]~38_combout\ = (delay_4(7) & (\delay_4[6]~37\ $ (GND))) # (!delay_4(7) & (!\delay_4[6]~37\ & VCC))
-- \delay_4[7]~39\ = CARRY((delay_4(7) & !\delay_4[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(7),
	datad => VCC,
	cin => \delay_4[6]~37\,
	combout => \delay_4[7]~38_combout\,
	cout => \delay_4[7]~39\);

-- Location: FF_X108_Y53_N19
\delay_4[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[7]~38_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(7));

-- Location: LCCOMB_X108_Y53_N20
\delay_4[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[8]~40_combout\ = (delay_4(8) & (!\delay_4[7]~39\)) # (!delay_4(8) & ((\delay_4[7]~39\) # (GND)))
-- \delay_4[8]~41\ = CARRY((!\delay_4[7]~39\) # (!delay_4(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(8),
	datad => VCC,
	cin => \delay_4[7]~39\,
	combout => \delay_4[8]~40_combout\,
	cout => \delay_4[8]~41\);

-- Location: FF_X108_Y53_N21
\delay_4[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[8]~40_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(8));

-- Location: LCCOMB_X108_Y53_N22
\delay_4[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[9]~42_combout\ = (delay_4(9) & (\delay_4[8]~41\ $ (GND))) # (!delay_4(9) & (!\delay_4[8]~41\ & VCC))
-- \delay_4[9]~43\ = CARRY((delay_4(9) & !\delay_4[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(9),
	datad => VCC,
	cin => \delay_4[8]~41\,
	combout => \delay_4[9]~42_combout\,
	cout => \delay_4[9]~43\);

-- Location: FF_X108_Y53_N23
\delay_4[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[9]~42_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(9));

-- Location: LCCOMB_X108_Y53_N24
\delay_4[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[10]~44_combout\ = (delay_4(10) & (!\delay_4[9]~43\)) # (!delay_4(10) & ((\delay_4[9]~43\) # (GND)))
-- \delay_4[10]~45\ = CARRY((!\delay_4[9]~43\) # (!delay_4(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(10),
	datad => VCC,
	cin => \delay_4[9]~43\,
	combout => \delay_4[10]~44_combout\,
	cout => \delay_4[10]~45\);

-- Location: FF_X108_Y53_N25
\delay_4[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[10]~44_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(10));

-- Location: LCCOMB_X108_Y53_N26
\delay_4[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[11]~46_combout\ = (delay_4(11) & (\delay_4[10]~45\ $ (GND))) # (!delay_4(11) & (!\delay_4[10]~45\ & VCC))
-- \delay_4[11]~47\ = CARRY((delay_4(11) & !\delay_4[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(11),
	datad => VCC,
	cin => \delay_4[10]~45\,
	combout => \delay_4[11]~46_combout\,
	cout => \delay_4[11]~47\);

-- Location: FF_X108_Y53_N27
\delay_4[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[11]~46_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(11));

-- Location: LCCOMB_X108_Y53_N28
\delay_4[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[12]~48_combout\ = (delay_4(12) & (!\delay_4[11]~47\)) # (!delay_4(12) & ((\delay_4[11]~47\) # (GND)))
-- \delay_4[12]~49\ = CARRY((!\delay_4[11]~47\) # (!delay_4(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(12),
	datad => VCC,
	cin => \delay_4[11]~47\,
	combout => \delay_4[12]~48_combout\,
	cout => \delay_4[12]~49\);

-- Location: FF_X108_Y53_N29
\delay_4[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[12]~48_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(12));

-- Location: LCCOMB_X108_Y53_N30
\delay_4[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[13]~50_combout\ = (delay_4(13) & (\delay_4[12]~49\ $ (GND))) # (!delay_4(13) & (!\delay_4[12]~49\ & VCC))
-- \delay_4[13]~51\ = CARRY((delay_4(13) & !\delay_4[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(13),
	datad => VCC,
	cin => \delay_4[12]~49\,
	combout => \delay_4[13]~50_combout\,
	cout => \delay_4[13]~51\);

-- Location: FF_X108_Y53_N31
\delay_4[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[13]~50_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(13));

-- Location: LCCOMB_X108_Y52_N0
\delay_4[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[14]~52_combout\ = (delay_4(14) & (!\delay_4[13]~51\)) # (!delay_4(14) & ((\delay_4[13]~51\) # (GND)))
-- \delay_4[14]~53\ = CARRY((!\delay_4[13]~51\) # (!delay_4(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(14),
	datad => VCC,
	cin => \delay_4[13]~51\,
	combout => \delay_4[14]~52_combout\,
	cout => \delay_4[14]~53\);

-- Location: FF_X108_Y52_N1
\delay_4[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[14]~52_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(14));

-- Location: LCCOMB_X108_Y52_N2
\delay_4[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[15]~54_combout\ = (delay_4(15) & (\delay_4[14]~53\ $ (GND))) # (!delay_4(15) & (!\delay_4[14]~53\ & VCC))
-- \delay_4[15]~55\ = CARRY((delay_4(15) & !\delay_4[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(15),
	datad => VCC,
	cin => \delay_4[14]~53\,
	combout => \delay_4[15]~54_combout\,
	cout => \delay_4[15]~55\);

-- Location: FF_X108_Y52_N3
\delay_4[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[15]~54_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(15));

-- Location: LCCOMB_X108_Y52_N4
\delay_4[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[16]~56_combout\ = (delay_4(16) & (!\delay_4[15]~55\)) # (!delay_4(16) & ((\delay_4[15]~55\) # (GND)))
-- \delay_4[16]~57\ = CARRY((!\delay_4[15]~55\) # (!delay_4(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(16),
	datad => VCC,
	cin => \delay_4[15]~55\,
	combout => \delay_4[16]~56_combout\,
	cout => \delay_4[16]~57\);

-- Location: FF_X108_Y52_N5
\delay_4[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[16]~56_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(16));

-- Location: LCCOMB_X108_Y52_N6
\delay_4[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[17]~58_combout\ = (delay_4(17) & (\delay_4[16]~57\ $ (GND))) # (!delay_4(17) & (!\delay_4[16]~57\ & VCC))
-- \delay_4[17]~59\ = CARRY((delay_4(17) & !\delay_4[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(17),
	datad => VCC,
	cin => \delay_4[16]~57\,
	combout => \delay_4[17]~58_combout\,
	cout => \delay_4[17]~59\);

-- Location: FF_X108_Y52_N7
\delay_4[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[17]~58_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(17));

-- Location: LCCOMB_X108_Y52_N8
\delay_4[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[18]~60_combout\ = (delay_4(18) & (!\delay_4[17]~59\)) # (!delay_4(18) & ((\delay_4[17]~59\) # (GND)))
-- \delay_4[18]~61\ = CARRY((!\delay_4[17]~59\) # (!delay_4(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(18),
	datad => VCC,
	cin => \delay_4[17]~59\,
	combout => \delay_4[18]~60_combout\,
	cout => \delay_4[18]~61\);

-- Location: FF_X108_Y52_N9
\delay_4[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[18]~60_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(18));

-- Location: LCCOMB_X108_Y52_N10
\delay_4[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[19]~62_combout\ = (delay_4(19) & (\delay_4[18]~61\ $ (GND))) # (!delay_4(19) & (!\delay_4[18]~61\ & VCC))
-- \delay_4[19]~63\ = CARRY((delay_4(19) & !\delay_4[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(19),
	datad => VCC,
	cin => \delay_4[18]~61\,
	combout => \delay_4[19]~62_combout\,
	cout => \delay_4[19]~63\);

-- Location: FF_X108_Y52_N11
\delay_4[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[19]~62_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(19));

-- Location: LCCOMB_X108_Y52_N12
\delay_4[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[20]~64_combout\ = (delay_4(20) & (!\delay_4[19]~63\)) # (!delay_4(20) & ((\delay_4[19]~63\) # (GND)))
-- \delay_4[20]~65\ = CARRY((!\delay_4[19]~63\) # (!delay_4(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(20),
	datad => VCC,
	cin => \delay_4[19]~63\,
	combout => \delay_4[20]~64_combout\,
	cout => \delay_4[20]~65\);

-- Location: FF_X108_Y52_N13
\delay_4[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[20]~64_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(20));

-- Location: LCCOMB_X108_Y52_N14
\delay_4[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[21]~66_combout\ = (delay_4(21) & (\delay_4[20]~65\ $ (GND))) # (!delay_4(21) & (!\delay_4[20]~65\ & VCC))
-- \delay_4[21]~67\ = CARRY((delay_4(21) & !\delay_4[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(21),
	datad => VCC,
	cin => \delay_4[20]~65\,
	combout => \delay_4[21]~66_combout\,
	cout => \delay_4[21]~67\);

-- Location: FF_X108_Y52_N15
\delay_4[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[21]~66_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(21));

-- Location: LCCOMB_X108_Y52_N16
\delay_4[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[22]~68_combout\ = (delay_4(22) & (!\delay_4[21]~67\)) # (!delay_4(22) & ((\delay_4[21]~67\) # (GND)))
-- \delay_4[22]~69\ = CARRY((!\delay_4[21]~67\) # (!delay_4(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(22),
	datad => VCC,
	cin => \delay_4[21]~67\,
	combout => \delay_4[22]~68_combout\,
	cout => \delay_4[22]~69\);

-- Location: FF_X108_Y52_N17
\delay_4[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[22]~68_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(22));

-- Location: LCCOMB_X108_Y52_N18
\delay_4[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[23]~70_combout\ = (delay_4(23) & (\delay_4[22]~69\ $ (GND))) # (!delay_4(23) & (!\delay_4[22]~69\ & VCC))
-- \delay_4[23]~71\ = CARRY((delay_4(23) & !\delay_4[22]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(23),
	datad => VCC,
	cin => \delay_4[22]~69\,
	combout => \delay_4[23]~70_combout\,
	cout => \delay_4[23]~71\);

-- Location: FF_X108_Y52_N19
\delay_4[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[23]~70_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(23));

-- Location: LCCOMB_X108_Y52_N20
\delay_4[24]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[24]~72_combout\ = (delay_4(24) & (!\delay_4[23]~71\)) # (!delay_4(24) & ((\delay_4[23]~71\) # (GND)))
-- \delay_4[24]~73\ = CARRY((!\delay_4[23]~71\) # (!delay_4(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_4(24),
	datad => VCC,
	cin => \delay_4[23]~71\,
	combout => \delay_4[24]~72_combout\,
	cout => \delay_4[24]~73\);

-- Location: FF_X108_Y52_N21
\delay_4[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[24]~72_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(24));

-- Location: LCCOMB_X108_Y52_N22
\delay_4[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[25]~74_combout\ = (delay_4(25) & (\delay_4[24]~73\ $ (GND))) # (!delay_4(25) & (!\delay_4[24]~73\ & VCC))
-- \delay_4[25]~75\ = CARRY((delay_4(25) & !\delay_4[24]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(25),
	datad => VCC,
	cin => \delay_4[24]~73\,
	combout => \delay_4[25]~74_combout\,
	cout => \delay_4[25]~75\);

-- Location: FF_X108_Y52_N23
\delay_4[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[25]~74_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(25));

-- Location: LCCOMB_X108_Y52_N24
\delay_4[26]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_4[26]~76_combout\ = \delay_4[25]~75\ $ (delay_4(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => delay_4(26),
	cin => \delay_4[25]~75\,
	combout => \delay_4[26]~76_combout\);

-- Location: FF_X108_Y52_N25
\delay_4[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_4[26]~76_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_4(26));

-- Location: LCCOMB_X108_Y52_N28
\LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = (((!delay_4(16) & !delay_4(15))) # (!delay_4(18))) # (!delay_4(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(17),
	datab => delay_4(18),
	datac => delay_4(16),
	datad => delay_4(15),
	combout => \LessThan3~5_combout\);

-- Location: LCCOMB_X109_Y52_N0
\LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~6_combout\ = (((!delay_4(23)) # (!delay_4(22))) # (!delay_4(24))) # (!delay_4(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(21),
	datab => delay_4(24),
	datac => delay_4(22),
	datad => delay_4(23),
	combout => \LessThan3~6_combout\);

-- Location: LCCOMB_X109_Y52_N6
\LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (!delay_4(20) & (!delay_4(25) & !delay_4(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(20),
	datab => delay_4(25),
	datad => delay_4(19),
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X108_Y52_N30
\LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~7_combout\ = (delay_4(25) & (\LessThan3~5_combout\ & ((\LessThan3~4_combout\)))) # (!delay_4(25) & ((\LessThan3~6_combout\) # ((\LessThan3~5_combout\ & \LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(25),
	datab => \LessThan3~5_combout\,
	datac => \LessThan3~6_combout\,
	datad => \LessThan3~4_combout\,
	combout => \LessThan3~7_combout\);

-- Location: LCCOMB_X108_Y53_N4
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (((!delay_4(12)) # (!delay_4(9))) # (!delay_4(10))) # (!delay_4(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(11),
	datab => delay_4(10),
	datac => delay_4(9),
	datad => delay_4(12),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X108_Y53_N2
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!\LessThan3~1_combout\ & ((delay_4(8)) # ((delay_4(7) & delay_4(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(8),
	datab => delay_4(7),
	datac => \LessThan3~1_combout\,
	datad => delay_4(6),
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X108_Y52_N26
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!delay_4(20) & (!delay_4(13) & (!delay_4(25) & !delay_4(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(20),
	datab => delay_4(13),
	datac => delay_4(25),
	datad => delay_4(19),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X107_Y52_N0
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (!delay_4(16) & (!delay_4(14) & (!\LessThan3~2_combout\ & \LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(16),
	datab => delay_4(14),
	datac => \LessThan3~2_combout\,
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X107_Y52_N6
\r_status[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_status[3]~5_combout\ = (\r_sm_main.s_clear~q\ & (((\LessThan3~7_combout\) # (\LessThan3~3_combout\)) # (!delay_4(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(26),
	datab => \r_sm_main.s_clear~q\,
	datac => \LessThan3~7_combout\,
	datad => \LessThan3~3_combout\,
	combout => \r_status[3]~5_combout\);

-- Location: LCCOMB_X106_Y53_N30
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!delay_3(25) & (!delay_3(20) & (!delay_3(13) & !delay_3(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(25),
	datab => delay_3(20),
	datac => delay_3(13),
	datad => delay_3(19),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X106_Y54_N4
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (((!delay_3(12)) # (!delay_3(11))) # (!delay_3(10))) # (!delay_3(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(9),
	datab => delay_3(10),
	datac => delay_3(11),
	datad => delay_3(12),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X106_Y54_N2
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!\LessThan2~1_combout\ & ((delay_3(8)) # ((delay_3(7) & delay_3(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(7),
	datab => delay_3(6),
	datac => \LessThan2~1_combout\,
	datad => delay_3(8),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X107_Y52_N14
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!delay_3(14) & (!delay_3(16) & (\LessThan2~0_combout\ & !\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(14),
	datab => delay_3(16),
	datac => \LessThan2~0_combout\,
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X106_Y53_N26
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (((!delay_3(23)) # (!delay_3(21))) # (!delay_3(22))) # (!delay_3(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(24),
	datab => delay_3(22),
	datac => delay_3(21),
	datad => delay_3(23),
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X106_Y53_N28
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (!delay_3(20) & (!delay_3(25) & !delay_3(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(20),
	datac => delay_3(25),
	datad => delay_3(19),
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X107_Y53_N8
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (((!delay_3(15) & !delay_3(16))) # (!delay_3(18))) # (!delay_3(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(15),
	datab => delay_3(17),
	datac => delay_3(16),
	datad => delay_3(18),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X107_Y52_N12
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (delay_3(25) & (((\LessThan2~4_combout\ & \LessThan2~5_combout\)))) # (!delay_3(25) & ((\LessThan2~6_combout\) # ((\LessThan2~4_combout\ & \LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(25),
	datab => \LessThan2~6_combout\,
	datac => \LessThan2~4_combout\,
	datad => \LessThan2~5_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X107_Y52_N22
\r_status[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_status[3]~4_combout\ = (\r_sm_main.s_put_fifo_data~q\ & (((\LessThan2~3_combout\) # (\LessThan2~7_combout\)) # (!delay_3(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm_main.s_put_fifo_data~q\,
	datab => delay_3(26),
	datac => \LessThan2~3_combout\,
	datad => \LessThan2~7_combout\,
	combout => \r_status[3]~4_combout\);

-- Location: LCCOMB_X106_Y54_N0
\delay_3[0]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[0]~78_combout\ = \r_status[3]~4_combout\ $ (delay_3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_status[3]~4_combout\,
	datac => delay_3(0),
	combout => \delay_3[0]~78_combout\);

-- Location: FF_X106_Y54_N1
\delay_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[0]~78_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(0));

-- Location: LCCOMB_X106_Y54_N6
\delay_3[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[1]~26_combout\ = (delay_3(1) & (delay_3(0) $ (VCC))) # (!delay_3(1) & (delay_3(0) & VCC))
-- \delay_3[1]~27\ = CARRY((delay_3(1) & delay_3(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(1),
	datab => delay_3(0),
	datad => VCC,
	combout => \delay_3[1]~26_combout\,
	cout => \delay_3[1]~27\);

-- Location: FF_X106_Y54_N7
\delay_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[1]~26_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(1));

-- Location: LCCOMB_X106_Y54_N8
\delay_3[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[2]~28_combout\ = (delay_3(2) & (!\delay_3[1]~27\)) # (!delay_3(2) & ((\delay_3[1]~27\) # (GND)))
-- \delay_3[2]~29\ = CARRY((!\delay_3[1]~27\) # (!delay_3(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(2),
	datad => VCC,
	cin => \delay_3[1]~27\,
	combout => \delay_3[2]~28_combout\,
	cout => \delay_3[2]~29\);

-- Location: FF_X106_Y54_N9
\delay_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[2]~28_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(2));

-- Location: LCCOMB_X106_Y54_N10
\delay_3[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[3]~30_combout\ = (delay_3(3) & (\delay_3[2]~29\ $ (GND))) # (!delay_3(3) & (!\delay_3[2]~29\ & VCC))
-- \delay_3[3]~31\ = CARRY((delay_3(3) & !\delay_3[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(3),
	datad => VCC,
	cin => \delay_3[2]~29\,
	combout => \delay_3[3]~30_combout\,
	cout => \delay_3[3]~31\);

-- Location: FF_X106_Y54_N11
\delay_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[3]~30_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(3));

-- Location: LCCOMB_X106_Y54_N12
\delay_3[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[4]~32_combout\ = (delay_3(4) & (!\delay_3[3]~31\)) # (!delay_3(4) & ((\delay_3[3]~31\) # (GND)))
-- \delay_3[4]~33\ = CARRY((!\delay_3[3]~31\) # (!delay_3(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(4),
	datad => VCC,
	cin => \delay_3[3]~31\,
	combout => \delay_3[4]~32_combout\,
	cout => \delay_3[4]~33\);

-- Location: FF_X106_Y54_N13
\delay_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[4]~32_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(4));

-- Location: LCCOMB_X106_Y54_N14
\delay_3[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[5]~34_combout\ = (delay_3(5) & (\delay_3[4]~33\ $ (GND))) # (!delay_3(5) & (!\delay_3[4]~33\ & VCC))
-- \delay_3[5]~35\ = CARRY((delay_3(5) & !\delay_3[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(5),
	datad => VCC,
	cin => \delay_3[4]~33\,
	combout => \delay_3[5]~34_combout\,
	cout => \delay_3[5]~35\);

-- Location: FF_X106_Y54_N15
\delay_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[5]~34_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(5));

-- Location: LCCOMB_X106_Y54_N16
\delay_3[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[6]~36_combout\ = (delay_3(6) & (!\delay_3[5]~35\)) # (!delay_3(6) & ((\delay_3[5]~35\) # (GND)))
-- \delay_3[6]~37\ = CARRY((!\delay_3[5]~35\) # (!delay_3(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(6),
	datad => VCC,
	cin => \delay_3[5]~35\,
	combout => \delay_3[6]~36_combout\,
	cout => \delay_3[6]~37\);

-- Location: FF_X106_Y54_N17
\delay_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[6]~36_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(6));

-- Location: LCCOMB_X106_Y54_N18
\delay_3[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[7]~38_combout\ = (delay_3(7) & (\delay_3[6]~37\ $ (GND))) # (!delay_3(7) & (!\delay_3[6]~37\ & VCC))
-- \delay_3[7]~39\ = CARRY((delay_3(7) & !\delay_3[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(7),
	datad => VCC,
	cin => \delay_3[6]~37\,
	combout => \delay_3[7]~38_combout\,
	cout => \delay_3[7]~39\);

-- Location: FF_X106_Y54_N19
\delay_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[7]~38_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(7));

-- Location: LCCOMB_X106_Y54_N20
\delay_3[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[8]~40_combout\ = (delay_3(8) & (!\delay_3[7]~39\)) # (!delay_3(8) & ((\delay_3[7]~39\) # (GND)))
-- \delay_3[8]~41\ = CARRY((!\delay_3[7]~39\) # (!delay_3(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(8),
	datad => VCC,
	cin => \delay_3[7]~39\,
	combout => \delay_3[8]~40_combout\,
	cout => \delay_3[8]~41\);

-- Location: FF_X106_Y54_N21
\delay_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[8]~40_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(8));

-- Location: LCCOMB_X106_Y54_N22
\delay_3[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[9]~42_combout\ = (delay_3(9) & (\delay_3[8]~41\ $ (GND))) # (!delay_3(9) & (!\delay_3[8]~41\ & VCC))
-- \delay_3[9]~43\ = CARRY((delay_3(9) & !\delay_3[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(9),
	datad => VCC,
	cin => \delay_3[8]~41\,
	combout => \delay_3[9]~42_combout\,
	cout => \delay_3[9]~43\);

-- Location: FF_X106_Y54_N23
\delay_3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[9]~42_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(9));

-- Location: LCCOMB_X106_Y54_N24
\delay_3[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[10]~44_combout\ = (delay_3(10) & (!\delay_3[9]~43\)) # (!delay_3(10) & ((\delay_3[9]~43\) # (GND)))
-- \delay_3[10]~45\ = CARRY((!\delay_3[9]~43\) # (!delay_3(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(10),
	datad => VCC,
	cin => \delay_3[9]~43\,
	combout => \delay_3[10]~44_combout\,
	cout => \delay_3[10]~45\);

-- Location: FF_X106_Y54_N25
\delay_3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[10]~44_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(10));

-- Location: LCCOMB_X106_Y54_N26
\delay_3[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[11]~46_combout\ = (delay_3(11) & (\delay_3[10]~45\ $ (GND))) # (!delay_3(11) & (!\delay_3[10]~45\ & VCC))
-- \delay_3[11]~47\ = CARRY((delay_3(11) & !\delay_3[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(11),
	datad => VCC,
	cin => \delay_3[10]~45\,
	combout => \delay_3[11]~46_combout\,
	cout => \delay_3[11]~47\);

-- Location: FF_X106_Y54_N27
\delay_3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[11]~46_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(11));

-- Location: LCCOMB_X106_Y54_N28
\delay_3[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[12]~48_combout\ = (delay_3(12) & (!\delay_3[11]~47\)) # (!delay_3(12) & ((\delay_3[11]~47\) # (GND)))
-- \delay_3[12]~49\ = CARRY((!\delay_3[11]~47\) # (!delay_3(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(12),
	datad => VCC,
	cin => \delay_3[11]~47\,
	combout => \delay_3[12]~48_combout\,
	cout => \delay_3[12]~49\);

-- Location: FF_X106_Y54_N29
\delay_3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[12]~48_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(12));

-- Location: LCCOMB_X106_Y54_N30
\delay_3[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[13]~50_combout\ = (delay_3(13) & (\delay_3[12]~49\ $ (GND))) # (!delay_3(13) & (!\delay_3[12]~49\ & VCC))
-- \delay_3[13]~51\ = CARRY((delay_3(13) & !\delay_3[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(13),
	datad => VCC,
	cin => \delay_3[12]~49\,
	combout => \delay_3[13]~50_combout\,
	cout => \delay_3[13]~51\);

-- Location: FF_X106_Y54_N31
\delay_3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[13]~50_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(13));

-- Location: LCCOMB_X106_Y53_N0
\delay_3[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[14]~52_combout\ = (delay_3(14) & (!\delay_3[13]~51\)) # (!delay_3(14) & ((\delay_3[13]~51\) # (GND)))
-- \delay_3[14]~53\ = CARRY((!\delay_3[13]~51\) # (!delay_3(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(14),
	datad => VCC,
	cin => \delay_3[13]~51\,
	combout => \delay_3[14]~52_combout\,
	cout => \delay_3[14]~53\);

-- Location: FF_X106_Y53_N1
\delay_3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[14]~52_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(14));

-- Location: LCCOMB_X106_Y53_N2
\delay_3[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[15]~54_combout\ = (delay_3(15) & (\delay_3[14]~53\ $ (GND))) # (!delay_3(15) & (!\delay_3[14]~53\ & VCC))
-- \delay_3[15]~55\ = CARRY((delay_3(15) & !\delay_3[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(15),
	datad => VCC,
	cin => \delay_3[14]~53\,
	combout => \delay_3[15]~54_combout\,
	cout => \delay_3[15]~55\);

-- Location: FF_X106_Y53_N3
\delay_3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[15]~54_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(15));

-- Location: LCCOMB_X106_Y53_N4
\delay_3[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[16]~56_combout\ = (delay_3(16) & (!\delay_3[15]~55\)) # (!delay_3(16) & ((\delay_3[15]~55\) # (GND)))
-- \delay_3[16]~57\ = CARRY((!\delay_3[15]~55\) # (!delay_3(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(16),
	datad => VCC,
	cin => \delay_3[15]~55\,
	combout => \delay_3[16]~56_combout\,
	cout => \delay_3[16]~57\);

-- Location: FF_X106_Y53_N5
\delay_3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[16]~56_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(16));

-- Location: LCCOMB_X106_Y53_N6
\delay_3[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[17]~58_combout\ = (delay_3(17) & (\delay_3[16]~57\ $ (GND))) # (!delay_3(17) & (!\delay_3[16]~57\ & VCC))
-- \delay_3[17]~59\ = CARRY((delay_3(17) & !\delay_3[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(17),
	datad => VCC,
	cin => \delay_3[16]~57\,
	combout => \delay_3[17]~58_combout\,
	cout => \delay_3[17]~59\);

-- Location: FF_X106_Y53_N7
\delay_3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[17]~58_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(17));

-- Location: LCCOMB_X106_Y53_N8
\delay_3[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[18]~60_combout\ = (delay_3(18) & (!\delay_3[17]~59\)) # (!delay_3(18) & ((\delay_3[17]~59\) # (GND)))
-- \delay_3[18]~61\ = CARRY((!\delay_3[17]~59\) # (!delay_3(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(18),
	datad => VCC,
	cin => \delay_3[17]~59\,
	combout => \delay_3[18]~60_combout\,
	cout => \delay_3[18]~61\);

-- Location: FF_X106_Y53_N9
\delay_3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[18]~60_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(18));

-- Location: LCCOMB_X106_Y53_N10
\delay_3[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[19]~62_combout\ = (delay_3(19) & (\delay_3[18]~61\ $ (GND))) # (!delay_3(19) & (!\delay_3[18]~61\ & VCC))
-- \delay_3[19]~63\ = CARRY((delay_3(19) & !\delay_3[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(19),
	datad => VCC,
	cin => \delay_3[18]~61\,
	combout => \delay_3[19]~62_combout\,
	cout => \delay_3[19]~63\);

-- Location: FF_X106_Y53_N11
\delay_3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[19]~62_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(19));

-- Location: LCCOMB_X106_Y53_N12
\delay_3[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[20]~64_combout\ = (delay_3(20) & (!\delay_3[19]~63\)) # (!delay_3(20) & ((\delay_3[19]~63\) # (GND)))
-- \delay_3[20]~65\ = CARRY((!\delay_3[19]~63\) # (!delay_3(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(20),
	datad => VCC,
	cin => \delay_3[19]~63\,
	combout => \delay_3[20]~64_combout\,
	cout => \delay_3[20]~65\);

-- Location: FF_X106_Y53_N13
\delay_3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[20]~64_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(20));

-- Location: LCCOMB_X106_Y53_N14
\delay_3[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[21]~66_combout\ = (delay_3(21) & (\delay_3[20]~65\ $ (GND))) # (!delay_3(21) & (!\delay_3[20]~65\ & VCC))
-- \delay_3[21]~67\ = CARRY((delay_3(21) & !\delay_3[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(21),
	datad => VCC,
	cin => \delay_3[20]~65\,
	combout => \delay_3[21]~66_combout\,
	cout => \delay_3[21]~67\);

-- Location: FF_X106_Y53_N15
\delay_3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[21]~66_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(21));

-- Location: LCCOMB_X106_Y53_N16
\delay_3[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[22]~68_combout\ = (delay_3(22) & (!\delay_3[21]~67\)) # (!delay_3(22) & ((\delay_3[21]~67\) # (GND)))
-- \delay_3[22]~69\ = CARRY((!\delay_3[21]~67\) # (!delay_3(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(22),
	datad => VCC,
	cin => \delay_3[21]~67\,
	combout => \delay_3[22]~68_combout\,
	cout => \delay_3[22]~69\);

-- Location: FF_X106_Y53_N17
\delay_3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[22]~68_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(22));

-- Location: LCCOMB_X106_Y53_N18
\delay_3[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[23]~70_combout\ = (delay_3(23) & (\delay_3[22]~69\ $ (GND))) # (!delay_3(23) & (!\delay_3[22]~69\ & VCC))
-- \delay_3[23]~71\ = CARRY((delay_3(23) & !\delay_3[22]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(23),
	datad => VCC,
	cin => \delay_3[22]~69\,
	combout => \delay_3[23]~70_combout\,
	cout => \delay_3[23]~71\);

-- Location: FF_X106_Y53_N19
\delay_3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[23]~70_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(23));

-- Location: LCCOMB_X106_Y53_N20
\delay_3[24]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[24]~72_combout\ = (delay_3(24) & (!\delay_3[23]~71\)) # (!delay_3(24) & ((\delay_3[23]~71\) # (GND)))
-- \delay_3[24]~73\ = CARRY((!\delay_3[23]~71\) # (!delay_3(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_3(24),
	datad => VCC,
	cin => \delay_3[23]~71\,
	combout => \delay_3[24]~72_combout\,
	cout => \delay_3[24]~73\);

-- Location: FF_X106_Y53_N21
\delay_3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[24]~72_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(24));

-- Location: LCCOMB_X106_Y53_N22
\delay_3[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[25]~74_combout\ = (delay_3(25) & (\delay_3[24]~73\ $ (GND))) # (!delay_3(25) & (!\delay_3[24]~73\ & VCC))
-- \delay_3[25]~75\ = CARRY((delay_3(25) & !\delay_3[24]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_3(25),
	datad => VCC,
	cin => \delay_3[24]~73\,
	combout => \delay_3[25]~74_combout\,
	cout => \delay_3[25]~75\);

-- Location: FF_X106_Y53_N23
\delay_3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[25]~74_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(25));

-- Location: LCCOMB_X106_Y53_N24
\delay_3[26]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_3[26]~76_combout\ = \delay_3[25]~75\ $ (delay_3(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => delay_3(26),
	cin => \delay_3[25]~75\,
	combout => \delay_3[26]~76_combout\);

-- Location: FF_X106_Y53_N25
\delay_3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_3[26]~76_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_3(26));

-- Location: LCCOMB_X107_Y52_N16
\r_fifo_data_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_out[0]~0_combout\ = (\r_sm_main.s_put_fifo_data~q\ & (delay_3(26) & (!\LessThan2~3_combout\ & !\LessThan2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm_main.s_put_fifo_data~q\,
	datab => delay_3(26),
	datac => \LessThan2~3_combout\,
	datad => \LessThan2~7_combout\,
	combout => \r_fifo_data_out[0]~0_combout\);

-- Location: LCCOMB_X107_Y52_N28
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\r_status[3]~5_combout\) # ((\r_fifo_data_out[0]~0_combout\ & \fifo_tx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_status[3]~5_combout\,
	datab => \r_fifo_data_out[0]~0_combout\,
	datad => \fifo_tx|Equal2~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X107_Y52_N29
\r_sm_main.s_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm_main.s_clear~q\);

-- Location: LCCOMB_X107_Y52_N8
\r_fifo_tx_wr_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_tx_wr_data[0]~0_combout\ = (\fifo_tx|Equal2~0_combout\ & (\i_rst~input_o\ & \r_fifo_data_out[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tx|Equal2~0_combout\,
	datac => \i_rst~input_o\,
	datad => \r_fifo_data_out[0]~0_combout\,
	combout => \r_fifo_tx_wr_data[0]~0_combout\);

-- Location: LCCOMB_X107_Y52_N2
\r_fifo_tx_wr_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_tx_wr_en~0_combout\ = (\r_fifo_tx_wr_en~q\ & ((\r_status[3]~5_combout\) # ((!\r_sm_main.s_clear~q\) # (!\i_rst~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_status[3]~5_combout\,
	datab => \r_fifo_tx_wr_en~q\,
	datac => \i_rst~input_o\,
	datad => \r_sm_main.s_clear~q\,
	combout => \r_fifo_tx_wr_en~0_combout\);

-- Location: LCCOMB_X107_Y52_N24
\r_fifo_tx_wr_en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_tx_wr_en~1_combout\ = (\r_fifo_tx_wr_en~0_combout\) # ((!\r_sm_main.s_clear~q\ & \r_fifo_tx_wr_data[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm_main.s_clear~q\,
	datac => \r_fifo_tx_wr_data[0]~0_combout\,
	datad => \r_fifo_tx_wr_en~0_combout\,
	combout => \r_fifo_tx_wr_en~1_combout\);

-- Location: FF_X107_Y52_N25
r_fifo_tx_wr_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_tx_wr_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_fifo_tx_wr_en~q\);

-- Location: LCCOMB_X108_Y55_N16
\fifo_tx|r_fifo_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_count[0]~5_combout\ = \fifo_tx|r_fifo_count\(0) $ (VCC)
-- \fifo_tx|r_fifo_count[0]~6\ = CARRY(\fifo_tx|r_fifo_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tx|r_fifo_count\(0),
	datad => VCC,
	combout => \fifo_tx|r_fifo_count[0]~5_combout\,
	cout => \fifo_tx|r_fifo_count[0]~6\);

-- Location: IOIBUF_X115_Y53_N15
\i_rst_sync~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rst_sync,
	o => \i_rst_sync~input_o\);

-- Location: LCCOMB_X108_Y55_N14
\fifo_tx|r_fifo_count[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_count[2]~13_combout\ = (\r_fifo_tx_wr_en~q\ $ (\r_tx_dv~q\)) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_rst_sync~input_o\,
	datac => \r_fifo_tx_wr_en~q\,
	datad => \r_tx_dv~q\,
	combout => \fifo_tx|r_fifo_count[2]~13_combout\);

-- Location: FF_X108_Y55_N17
\fifo_tx|r_fifo_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_count[0]~5_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \fifo_tx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_count\(0));

-- Location: LCCOMB_X108_Y55_N18
\fifo_tx|r_fifo_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_count[1]~7_combout\ = (\fifo_tx|p_control~0_combout\ & ((\fifo_tx|r_fifo_count\(1) & (!\fifo_tx|r_fifo_count[0]~6\)) # (!\fifo_tx|r_fifo_count\(1) & ((\fifo_tx|r_fifo_count[0]~6\) # (GND))))) # (!\fifo_tx|p_control~0_combout\ & 
-- ((\fifo_tx|r_fifo_count\(1) & (\fifo_tx|r_fifo_count[0]~6\ & VCC)) # (!\fifo_tx|r_fifo_count\(1) & (!\fifo_tx|r_fifo_count[0]~6\))))
-- \fifo_tx|r_fifo_count[1]~8\ = CARRY((\fifo_tx|p_control~0_combout\ & ((!\fifo_tx|r_fifo_count[0]~6\) # (!\fifo_tx|r_fifo_count\(1)))) # (!\fifo_tx|p_control~0_combout\ & (!\fifo_tx|r_fifo_count\(1) & !\fifo_tx|r_fifo_count[0]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|p_control~0_combout\,
	datab => \fifo_tx|r_fifo_count\(1),
	datad => VCC,
	cin => \fifo_tx|r_fifo_count[0]~6\,
	combout => \fifo_tx|r_fifo_count[1]~7_combout\,
	cout => \fifo_tx|r_fifo_count[1]~8\);

-- Location: LCCOMB_X108_Y55_N20
\fifo_tx|r_fifo_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_count[2]~9_combout\ = ((\fifo_tx|p_control~0_combout\ $ (\fifo_tx|r_fifo_count\(2) $ (\fifo_tx|r_fifo_count[1]~8\)))) # (GND)
-- \fifo_tx|r_fifo_count[2]~10\ = CARRY((\fifo_tx|p_control~0_combout\ & (\fifo_tx|r_fifo_count\(2) & !\fifo_tx|r_fifo_count[1]~8\)) # (!\fifo_tx|p_control~0_combout\ & ((\fifo_tx|r_fifo_count\(2)) # (!\fifo_tx|r_fifo_count[1]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|p_control~0_combout\,
	datab => \fifo_tx|r_fifo_count\(2),
	datad => VCC,
	cin => \fifo_tx|r_fifo_count[1]~8\,
	combout => \fifo_tx|r_fifo_count[2]~9_combout\,
	cout => \fifo_tx|r_fifo_count[2]~10\);

-- Location: FF_X108_Y55_N21
\fifo_tx|r_fifo_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_count[2]~9_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \fifo_tx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_count\(2));

-- Location: LCCOMB_X108_Y55_N22
\fifo_tx|r_fifo_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_count[3]~11_combout\ = (\fifo_tx|r_fifo_count\(3) & ((\fifo_tx|p_control~0_combout\ & (!\fifo_tx|r_fifo_count[2]~10\)) # (!\fifo_tx|p_control~0_combout\ & (\fifo_tx|r_fifo_count[2]~10\ & VCC)))) # (!\fifo_tx|r_fifo_count\(3) & 
-- ((\fifo_tx|p_control~0_combout\ & ((\fifo_tx|r_fifo_count[2]~10\) # (GND))) # (!\fifo_tx|p_control~0_combout\ & (!\fifo_tx|r_fifo_count[2]~10\))))
-- \fifo_tx|r_fifo_count[3]~12\ = CARRY((\fifo_tx|r_fifo_count\(3) & (\fifo_tx|p_control~0_combout\ & !\fifo_tx|r_fifo_count[2]~10\)) # (!\fifo_tx|r_fifo_count\(3) & ((\fifo_tx|p_control~0_combout\) # (!\fifo_tx|r_fifo_count[2]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_fifo_count\(3),
	datab => \fifo_tx|p_control~0_combout\,
	datad => VCC,
	cin => \fifo_tx|r_fifo_count[2]~10\,
	combout => \fifo_tx|r_fifo_count[3]~11_combout\,
	cout => \fifo_tx|r_fifo_count[3]~12\);

-- Location: FF_X108_Y55_N23
\fifo_tx|r_fifo_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_count[3]~11_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \fifo_tx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_count\(3));

-- Location: LCCOMB_X107_Y57_N6
\transmitter|r_clk_count[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[0]~13_combout\ = \transmitter|r_clk_count\(0) $ (VCC)
-- \transmitter|r_clk_count[0]~14\ = CARRY(\transmitter|r_clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(0),
	datad => VCC,
	combout => \transmitter|r_clk_count[0]~13_combout\,
	cout => \transmitter|r_clk_count[0]~14\);

-- Location: LCCOMB_X105_Y57_N30
\transmitter|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector19~0_combout\ = (!\transmitter|r_sm_main.s_cleanup~q\ & ((\r_tx_dv~q\) # (\transmitter|r_sm_main.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_cleanup~q\,
	datab => \r_tx_dv~q\,
	datac => \transmitter|r_sm_main.s_idle~q\,
	combout => \transmitter|Selector19~0_combout\);

-- Location: FF_X105_Y57_N31
\transmitter|r_sm_main.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_sm_main.s_idle~q\);

-- Location: LCCOMB_X107_Y57_N28
\transmitter|r_clk_count[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[11]~36_combout\ = (\transmitter|r_clk_count\(11) & (!\transmitter|r_clk_count[10]~34\)) # (!\transmitter|r_clk_count\(11) & ((\transmitter|r_clk_count[10]~34\) # (GND)))
-- \transmitter|r_clk_count[11]~37\ = CARRY((!\transmitter|r_clk_count[10]~34\) # (!\transmitter|r_clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_clk_count\(11),
	datad => VCC,
	cin => \transmitter|r_clk_count[10]~34\,
	combout => \transmitter|r_clk_count[11]~36_combout\,
	cout => \transmitter|r_clk_count[11]~37\);

-- Location: LCCOMB_X107_Y57_N30
\transmitter|r_clk_count[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[12]~38_combout\ = \transmitter|r_clk_count\(12) $ (!\transmitter|r_clk_count[11]~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(12),
	cin => \transmitter|r_clk_count[11]~37\,
	combout => \transmitter|r_clk_count[12]~38_combout\);

-- Location: FF_X107_Y57_N31
\transmitter|r_clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[12]~38_combout\,
	sclr => \transmitter|r_clk_count[12]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(12));

-- Location: LCCOMB_X106_Y57_N16
\transmitter|r_clk_count[12]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[12]~35_combout\ = ((\transmitter|r_clk_count\(12) & !\transmitter|LessThan1~4_combout\)) # (!\transmitter|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_sm_main.s_idle~q\,
	datac => \transmitter|r_clk_count\(12),
	datad => \transmitter|LessThan1~4_combout\,
	combout => \transmitter|r_clk_count[12]~35_combout\);

-- Location: FF_X107_Y57_N7
\transmitter|r_clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[0]~13_combout\,
	sclr => \transmitter|r_clk_count[12]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(0));

-- Location: LCCOMB_X107_Y57_N8
\transmitter|r_clk_count[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[1]~15_combout\ = (\transmitter|r_clk_count\(1) & (!\transmitter|r_clk_count[0]~14\)) # (!\transmitter|r_clk_count\(1) & ((\transmitter|r_clk_count[0]~14\) # (GND)))
-- \transmitter|r_clk_count[1]~16\ = CARRY((!\transmitter|r_clk_count[0]~14\) # (!\transmitter|r_clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_clk_count\(1),
	datad => VCC,
	cin => \transmitter|r_clk_count[0]~14\,
	combout => \transmitter|r_clk_count[1]~15_combout\,
	cout => \transmitter|r_clk_count[1]~16\);

-- Location: FF_X107_Y57_N9
\transmitter|r_clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[1]~15_combout\,
	sclr => \transmitter|r_clk_count[12]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(1));

-- Location: LCCOMB_X107_Y57_N10
\transmitter|r_clk_count[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[2]~17_combout\ = (\transmitter|r_clk_count\(2) & (\transmitter|r_clk_count[1]~16\ $ (GND))) # (!\transmitter|r_clk_count\(2) & (!\transmitter|r_clk_count[1]~16\ & VCC))
-- \transmitter|r_clk_count[2]~18\ = CARRY((\transmitter|r_clk_count\(2) & !\transmitter|r_clk_count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(2),
	datad => VCC,
	cin => \transmitter|r_clk_count[1]~16\,
	combout => \transmitter|r_clk_count[2]~17_combout\,
	cout => \transmitter|r_clk_count[2]~18\);

-- Location: FF_X107_Y57_N11
\transmitter|r_clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[2]~17_combout\,
	sclr => \transmitter|r_clk_count[12]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(2));

-- Location: LCCOMB_X107_Y57_N12
\transmitter|r_clk_count[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[3]~19_combout\ = (\transmitter|r_clk_count\(3) & (!\transmitter|r_clk_count[2]~18\)) # (!\transmitter|r_clk_count\(3) & ((\transmitter|r_clk_count[2]~18\) # (GND)))
-- \transmitter|r_clk_count[3]~20\ = CARRY((!\transmitter|r_clk_count[2]~18\) # (!\transmitter|r_clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(3),
	datad => VCC,
	cin => \transmitter|r_clk_count[2]~18\,
	combout => \transmitter|r_clk_count[3]~19_combout\,
	cout => \transmitter|r_clk_count[3]~20\);

-- Location: FF_X107_Y57_N13
\transmitter|r_clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[3]~19_combout\,
	sclr => \transmitter|r_clk_count[12]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(3));

-- Location: LCCOMB_X107_Y57_N14
\transmitter|r_clk_count[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[4]~21_combout\ = (\transmitter|r_clk_count\(4) & (\transmitter|r_clk_count[3]~20\ $ (GND))) # (!\transmitter|r_clk_count\(4) & (!\transmitter|r_clk_count[3]~20\ & VCC))
-- \transmitter|r_clk_count[4]~22\ = CARRY((\transmitter|r_clk_count\(4) & !\transmitter|r_clk_count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_clk_count\(4),
	datad => VCC,
	cin => \transmitter|r_clk_count[3]~20\,
	combout => \transmitter|r_clk_count[4]~21_combout\,
	cout => \transmitter|r_clk_count[4]~22\);

-- Location: FF_X107_Y57_N15
\transmitter|r_clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[4]~21_combout\,
	sclr => \transmitter|r_clk_count[12]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(4));

-- Location: LCCOMB_X107_Y57_N16
\transmitter|r_clk_count[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[5]~23_combout\ = (\transmitter|r_clk_count\(5) & (!\transmitter|r_clk_count[4]~22\)) # (!\transmitter|r_clk_count\(5) & ((\transmitter|r_clk_count[4]~22\) # (GND)))
-- \transmitter|r_clk_count[5]~24\ = CARRY((!\transmitter|r_clk_count[4]~22\) # (!\transmitter|r_clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_clk_count\(5),
	datad => VCC,
	cin => \transmitter|r_clk_count[4]~22\,
	combout => \transmitter|r_clk_count[5]~23_combout\,
	cout => \transmitter|r_clk_count[5]~24\);

-- Location: FF_X107_Y57_N17
\transmitter|r_clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[5]~23_combout\,
	sclr => \transmitter|r_clk_count[12]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(5));

-- Location: LCCOMB_X107_Y57_N18
\transmitter|r_clk_count[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[6]~25_combout\ = (\transmitter|r_clk_count\(6) & (\transmitter|r_clk_count[5]~24\ $ (GND))) # (!\transmitter|r_clk_count\(6) & (!\transmitter|r_clk_count[5]~24\ & VCC))
-- \transmitter|r_clk_count[6]~26\ = CARRY((\transmitter|r_clk_count\(6) & !\transmitter|r_clk_count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_clk_count\(6),
	datad => VCC,
	cin => \transmitter|r_clk_count[5]~24\,
	combout => \transmitter|r_clk_count[6]~25_combout\,
	cout => \transmitter|r_clk_count[6]~26\);

-- Location: FF_X107_Y57_N19
\transmitter|r_clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[6]~25_combout\,
	sclr => \transmitter|r_clk_count[12]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(6));

-- Location: LCCOMB_X107_Y57_N20
\transmitter|r_clk_count[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[7]~27_combout\ = (\transmitter|r_clk_count\(7) & (!\transmitter|r_clk_count[6]~26\)) # (!\transmitter|r_clk_count\(7) & ((\transmitter|r_clk_count[6]~26\) # (GND)))
-- \transmitter|r_clk_count[7]~28\ = CARRY((!\transmitter|r_clk_count[6]~26\) # (!\transmitter|r_clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_clk_count\(7),
	datad => VCC,
	cin => \transmitter|r_clk_count[6]~26\,
	combout => \transmitter|r_clk_count[7]~27_combout\,
	cout => \transmitter|r_clk_count[7]~28\);

-- Location: FF_X107_Y57_N21
\transmitter|r_clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[7]~27_combout\,
	sclr => \transmitter|r_clk_count[12]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(7));

-- Location: LCCOMB_X107_Y57_N22
\transmitter|r_clk_count[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[8]~29_combout\ = (\transmitter|r_clk_count\(8) & (\transmitter|r_clk_count[7]~28\ $ (GND))) # (!\transmitter|r_clk_count\(8) & (!\transmitter|r_clk_count[7]~28\ & VCC))
-- \transmitter|r_clk_count[8]~30\ = CARRY((\transmitter|r_clk_count\(8) & !\transmitter|r_clk_count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(8),
	datad => VCC,
	cin => \transmitter|r_clk_count[7]~28\,
	combout => \transmitter|r_clk_count[8]~29_combout\,
	cout => \transmitter|r_clk_count[8]~30\);

-- Location: FF_X107_Y57_N23
\transmitter|r_clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[8]~29_combout\,
	sclr => \transmitter|r_clk_count[12]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(8));

-- Location: LCCOMB_X107_Y57_N24
\transmitter|r_clk_count[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[9]~31_combout\ = (\transmitter|r_clk_count\(9) & (!\transmitter|r_clk_count[8]~30\)) # (!\transmitter|r_clk_count\(9) & ((\transmitter|r_clk_count[8]~30\) # (GND)))
-- \transmitter|r_clk_count[9]~32\ = CARRY((!\transmitter|r_clk_count[8]~30\) # (!\transmitter|r_clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_clk_count\(9),
	datad => VCC,
	cin => \transmitter|r_clk_count[8]~30\,
	combout => \transmitter|r_clk_count[9]~31_combout\,
	cout => \transmitter|r_clk_count[9]~32\);

-- Location: FF_X107_Y57_N25
\transmitter|r_clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[9]~31_combout\,
	sclr => \transmitter|r_clk_count[12]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(9));

-- Location: LCCOMB_X107_Y57_N26
\transmitter|r_clk_count[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[10]~33_combout\ = (\transmitter|r_clk_count\(10) & (\transmitter|r_clk_count[9]~32\ $ (GND))) # (!\transmitter|r_clk_count\(10) & (!\transmitter|r_clk_count[9]~32\ & VCC))
-- \transmitter|r_clk_count[10]~34\ = CARRY((\transmitter|r_clk_count\(10) & !\transmitter|r_clk_count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(10),
	datad => VCC,
	cin => \transmitter|r_clk_count[9]~32\,
	combout => \transmitter|r_clk_count[10]~33_combout\,
	cout => \transmitter|r_clk_count[10]~34\);

-- Location: FF_X107_Y57_N27
\transmitter|r_clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[10]~33_combout\,
	sclr => \transmitter|r_clk_count[12]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(10));

-- Location: FF_X107_Y57_N29
\transmitter|r_clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[11]~36_combout\,
	sclr => \transmitter|r_clk_count[12]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(11));

-- Location: LCCOMB_X107_Y57_N2
\transmitter|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|LessThan1~2_combout\ = (!\transmitter|r_clk_count\(11) & (!\transmitter|r_clk_count\(7) & (!\transmitter|r_clk_count\(8) & !\transmitter|r_clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(11),
	datab => \transmitter|r_clk_count\(7),
	datac => \transmitter|r_clk_count\(8),
	datad => \transmitter|r_clk_count\(9),
	combout => \transmitter|LessThan1~2_combout\);

-- Location: LCCOMB_X107_Y57_N0
\transmitter|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|LessThan1~1_combout\ = ((!\transmitter|r_clk_count\(5) & ((!\transmitter|r_clk_count\(4)) # (!\transmitter|r_clk_count\(3))))) # (!\transmitter|r_clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(3),
	datab => \transmitter|r_clk_count\(6),
	datac => \transmitter|r_clk_count\(4),
	datad => \transmitter|r_clk_count\(5),
	combout => \transmitter|LessThan1~1_combout\);

-- Location: LCCOMB_X106_Y57_N28
\transmitter|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|LessThan1~4_combout\ = (\transmitter|LessThan1~2_combout\ & ((\transmitter|LessThan1~1_combout\) # ((!\transmitter|r_clk_count\(10) & !\transmitter|r_clk_count\(11))))) # (!\transmitter|LessThan1~2_combout\ & (!\transmitter|r_clk_count\(10) & 
-- ((!\transmitter|r_clk_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|LessThan1~2_combout\,
	datab => \transmitter|r_clk_count\(10),
	datac => \transmitter|LessThan1~1_combout\,
	datad => \transmitter|r_clk_count\(11),
	combout => \transmitter|LessThan1~4_combout\);

-- Location: LCCOMB_X106_Y57_N2
\transmitter|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector18~0_combout\ = (\transmitter|r_sm_main.s_tx_data_bits~q\ & ((\transmitter|r_clk_count\(12)))) # (!\transmitter|r_sm_main.s_tx_data_bits~q\ & (\transmitter|r_sm_main.s_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_sm_main.s_idle~q\,
	datac => \transmitter|r_clk_count\(12),
	datad => \transmitter|r_sm_main.s_tx_data_bits~q\,
	combout => \transmitter|Selector18~0_combout\);

-- Location: LCCOMB_X105_Y57_N26
\transmitter|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector18~1_combout\ = (\transmitter|Selector18~0_combout\ & (\transmitter|r_bit_index\(0) $ (((\transmitter|r_sm_main.s_tx_data_bits~q\ & !\transmitter|LessThan1~4_combout\))))) # (!\transmitter|Selector18~0_combout\ & 
-- (\transmitter|r_sm_main.s_tx_data_bits~q\ & (\transmitter|r_bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|Selector18~0_combout\,
	datab => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \transmitter|r_bit_index\(0),
	datad => \transmitter|LessThan1~4_combout\,
	combout => \transmitter|Selector18~1_combout\);

-- Location: FF_X105_Y57_N27
\transmitter|r_bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_bit_index\(0));

-- Location: LCCOMB_X105_Y57_N12
\transmitter|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector17~0_combout\ = (\transmitter|r_sm_main.s_tx_data_bits~q\ & (\transmitter|r_bit_index\(0))) # (!\transmitter|r_sm_main.s_tx_data_bits~q\ & ((\transmitter|r_sm_main.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_bit_index\(0),
	datab => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \transmitter|r_sm_main.s_idle~q\,
	combout => \transmitter|Selector17~0_combout\);

-- Location: LCCOMB_X106_Y57_N12
\transmitter|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|LessThan1~0_combout\ = (!\transmitter|r_clk_count\(10) & !\transmitter|r_clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_clk_count\(10),
	datad => \transmitter|r_clk_count\(11),
	combout => \transmitter|LessThan1~0_combout\);

-- Location: LCCOMB_X106_Y57_N18
\transmitter|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|LessThan1~3_combout\ = (\transmitter|LessThan1~0_combout\) # (((\transmitter|LessThan1~1_combout\ & \transmitter|LessThan1~2_combout\)) # (!\transmitter|r_clk_count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|LessThan1~0_combout\,
	datab => \transmitter|LessThan1~1_combout\,
	datac => \transmitter|r_clk_count\(12),
	datad => \transmitter|LessThan1~2_combout\,
	combout => \transmitter|LessThan1~3_combout\);

-- Location: LCCOMB_X105_Y57_N4
\transmitter|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector17~1_combout\ = (\transmitter|Selector17~0_combout\ & (\transmitter|r_bit_index\(1) $ (((\transmitter|r_sm_main.s_tx_data_bits~q\ & !\transmitter|LessThan1~3_combout\))))) # (!\transmitter|Selector17~0_combout\ & 
-- (\transmitter|r_sm_main.s_tx_data_bits~q\ & (\transmitter|r_bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|Selector17~0_combout\,
	datab => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \transmitter|r_bit_index\(1),
	datad => \transmitter|LessThan1~3_combout\,
	combout => \transmitter|Selector17~1_combout\);

-- Location: FF_X105_Y57_N5
\transmitter|r_bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_bit_index\(1));

-- Location: LCCOMB_X105_Y57_N2
\transmitter|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector16~0_combout\ = (\transmitter|r_bit_index\(1) & (\transmitter|r_bit_index\(0) & !\transmitter|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_bit_index\(1),
	datac => \transmitter|r_bit_index\(0),
	datad => \transmitter|LessThan1~3_combout\,
	combout => \transmitter|Selector16~0_combout\);

-- Location: LCCOMB_X105_Y57_N16
\transmitter|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector16~1_combout\ = (\transmitter|r_sm_main.s_tx_data_bits~q\ & ((\transmitter|r_bit_index\(2) $ (\transmitter|Selector16~0_combout\)))) # (!\transmitter|r_sm_main.s_tx_data_bits~q\ & (\transmitter|r_sm_main.s_idle~q\ & 
-- (\transmitter|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_idle~q\,
	datab => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \transmitter|r_bit_index\(2),
	datad => \transmitter|Selector16~0_combout\,
	combout => \transmitter|Selector16~1_combout\);

-- Location: FF_X105_Y57_N17
\transmitter|r_bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_bit_index\(2));

-- Location: LCCOMB_X105_Y57_N10
\transmitter|r_sm_main.s_tx_stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_sm_main.s_tx_stop_bit~0_combout\ = (\transmitter|r_bit_index\(0) & (\transmitter|r_bit_index\(2) & (\transmitter|r_bit_index\(1) & !\transmitter|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_bit_index\(0),
	datab => \transmitter|r_bit_index\(2),
	datac => \transmitter|r_bit_index\(1),
	datad => \transmitter|LessThan1~3_combout\,
	combout => \transmitter|r_sm_main.s_tx_stop_bit~0_combout\);

-- Location: LCCOMB_X105_Y57_N0
\transmitter|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector20~0_combout\ = (\transmitter|r_sm_main.s_idle~q\ & (((\transmitter|r_sm_main.s_tx_start_bit~q\ & \transmitter|LessThan1~3_combout\)))) # (!\transmitter|r_sm_main.s_idle~q\ & ((\r_tx_dv~q\) # ((\transmitter|r_sm_main.s_tx_start_bit~q\ 
-- & \transmitter|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_idle~q\,
	datab => \r_tx_dv~q\,
	datac => \transmitter|r_sm_main.s_tx_start_bit~q\,
	datad => \transmitter|LessThan1~3_combout\,
	combout => \transmitter|Selector20~0_combout\);

-- Location: FF_X105_Y57_N1
\transmitter|r_sm_main.s_tx_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_sm_main.s_tx_start_bit~q\);

-- Location: LCCOMB_X105_Y57_N14
\transmitter|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector21~0_combout\ = (\transmitter|r_sm_main.s_tx_stop_bit~0_combout\ & (\transmitter|r_sm_main.s_tx_start_bit~q\ & ((!\transmitter|LessThan1~3_combout\)))) # (!\transmitter|r_sm_main.s_tx_stop_bit~0_combout\ & 
-- ((\transmitter|r_sm_main.s_tx_data_bits~q\) # ((\transmitter|r_sm_main.s_tx_start_bit~q\ & !\transmitter|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_tx_stop_bit~0_combout\,
	datab => \transmitter|r_sm_main.s_tx_start_bit~q\,
	datac => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datad => \transmitter|LessThan1~3_combout\,
	combout => \transmitter|Selector21~0_combout\);

-- Location: FF_X105_Y57_N15
\transmitter|r_sm_main.s_tx_data_bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_sm_main.s_tx_data_bits~q\);

-- Location: LCCOMB_X106_Y57_N24
\transmitter|r_sm_main.s_tx_stop_bit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_sm_main.s_tx_stop_bit~1_combout\ = (\transmitter|r_sm_main.s_tx_data_bits~q\ & ((\transmitter|r_sm_main.s_tx_stop_bit~0_combout\) # ((\transmitter|LessThan1~3_combout\ & \transmitter|r_sm_main.s_tx_stop_bit~q\)))) # 
-- (!\transmitter|r_sm_main.s_tx_data_bits~q\ & (\transmitter|LessThan1~3_combout\ & (\transmitter|r_sm_main.s_tx_stop_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datab => \transmitter|LessThan1~3_combout\,
	datac => \transmitter|r_sm_main.s_tx_stop_bit~q\,
	datad => \transmitter|r_sm_main.s_tx_stop_bit~0_combout\,
	combout => \transmitter|r_sm_main.s_tx_stop_bit~1_combout\);

-- Location: FF_X106_Y57_N25
\transmitter|r_sm_main.s_tx_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_sm_main.s_tx_stop_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_sm_main.s_tx_stop_bit~q\);

-- Location: LCCOMB_X106_Y57_N6
\transmitter|r_sm_main~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_sm_main~7_combout\ = (!\transmitter|LessThan1~4_combout\ & (\transmitter|r_clk_count\(12) & \transmitter|r_sm_main.s_tx_stop_bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|LessThan1~4_combout\,
	datac => \transmitter|r_clk_count\(12),
	datad => \transmitter|r_sm_main.s_tx_stop_bit~q\,
	combout => \transmitter|r_sm_main~7_combout\);

-- Location: FF_X106_Y57_N7
\transmitter|r_sm_main.s_cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_sm_main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_sm_main.s_cleanup~q\);

-- Location: LCCOMB_X105_Y57_N8
\transmitter|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector2~0_combout\ = (\transmitter|r_tx_done~q\ & ((\transmitter|r_sm_main.s_tx_start_bit~q\) # ((\transmitter|r_sm_main.s_tx_data_bits~q\) # (\transmitter|r_sm_main.s_tx_stop_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_tx_done~q\,
	datab => \transmitter|r_sm_main.s_tx_start_bit~q\,
	datac => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datad => \transmitter|r_sm_main.s_tx_stop_bit~q\,
	combout => \transmitter|Selector2~0_combout\);

-- Location: LCCOMB_X105_Y57_N6
\transmitter|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector2~1_combout\ = (\transmitter|r_sm_main.s_cleanup~q\) # ((\transmitter|Selector2~0_combout\) # ((\transmitter|r_sm_main.s_tx_stop_bit~q\ & !\transmitter|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_cleanup~q\,
	datab => \transmitter|r_sm_main.s_tx_stop_bit~q\,
	datac => \transmitter|Selector2~0_combout\,
	datad => \transmitter|LessThan1~3_combout\,
	combout => \transmitter|Selector2~1_combout\);

-- Location: FF_X105_Y57_N7
\transmitter|r_tx_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_done~q\);

-- Location: LCCOMB_X108_Y55_N24
\fifo_tx|r_fifo_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_count[4]~14_combout\ = \fifo_tx|p_control~0_combout\ $ (\fifo_tx|r_fifo_count[3]~12\ $ (\fifo_tx|r_fifo_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|p_control~0_combout\,
	datad => \fifo_tx|r_fifo_count\(4),
	cin => \fifo_tx|r_fifo_count[3]~12\,
	combout => \fifo_tx|r_fifo_count[4]~14_combout\);

-- Location: FF_X108_Y55_N25
\fifo_tx|r_fifo_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_count[4]~14_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \fifo_tx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_count\(4));

-- Location: LCCOMB_X108_Y55_N28
\fifo_tx|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|Equal3~0_combout\ = (!\fifo_tx|r_fifo_count\(2) & (!\fifo_tx|r_fifo_count\(4) & !\fifo_tx|r_fifo_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tx|r_fifo_count\(2),
	datac => \fifo_tx|r_fifo_count\(4),
	datad => \fifo_tx|r_fifo_count\(0),
	combout => \fifo_tx|Equal3~0_combout\);

-- Location: LCCOMB_X107_Y55_N8
\r_tx_dv~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_dv~0_combout\ = (!\transmitter|r_tx_done~q\ & ((\fifo_tx|r_fifo_count\(3)) # ((\fifo_tx|r_fifo_count\(1)) # (!\fifo_tx|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_fifo_count\(3),
	datab => \fifo_tx|r_fifo_count\(1),
	datac => \transmitter|r_tx_done~q\,
	datad => \fifo_tx|Equal3~0_combout\,
	combout => \r_tx_dv~0_combout\);

-- Location: FF_X107_Y55_N9
r_tx_dv : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_tx_dv~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_tx_dv~q\);

-- Location: LCCOMB_X108_Y55_N12
\fifo_tx|p_control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|p_control~0_combout\ = (\r_fifo_tx_wr_en~q\ & !\r_tx_dv~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_fifo_tx_wr_en~q\,
	datad => \r_tx_dv~q\,
	combout => \fifo_tx|p_control~0_combout\);

-- Location: FF_X108_Y55_N19
\fifo_tx|r_fifo_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_count[1]~7_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \fifo_tx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_count\(1));

-- Location: LCCOMB_X108_Y55_N26
\fifo_tx|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|Equal2~0_combout\ = ((!\fifo_tx|Equal3~0_combout\) # (!\fifo_tx|r_fifo_count\(3))) # (!\fifo_tx|r_fifo_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tx|r_fifo_count\(1),
	datac => \fifo_tx|r_fifo_count\(3),
	datad => \fifo_tx|Equal3~0_combout\,
	combout => \fifo_tx|Equal2~0_combout\);

-- Location: LCCOMB_X109_Y52_N26
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\r_sm_main.s_get_fifo_data~q\) # ((\r_fifo_rx_rd_en~q\ & ((\r_sm_main.s_put_fifo_data~q\) # (!\r_sm_main.s_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm_main.s_put_fifo_data~q\,
	datab => \r_sm_main.s_idle~q\,
	datac => \r_sm_main.s_get_fifo_data~q\,
	datad => \r_fifo_rx_rd_en~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X109_Y52_N10
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\Selector9~0_combout\) # ((\r_fifo_rx_rd_en~q\ & \r_status[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector9~0_combout\,
	datac => \r_fifo_rx_rd_en~q\,
	datad => \r_status[3]~5_combout\,
	combout => \Selector9~1_combout\);

-- Location: FF_X109_Y52_N11
r_fifo_rx_rd_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector9~1_combout\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_fifo_rx_rd_en~q\);

-- Location: LCCOMB_X105_Y52_N6
\fifo_rx|r_fifo_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_count[0]~5_combout\ = \fifo_rx|r_fifo_count\(0) $ (VCC)
-- \fifo_rx|r_fifo_count[0]~6\ = CARRY(\fifo_rx|r_fifo_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_count\(0),
	datad => VCC,
	combout => \fifo_rx|r_fifo_count[0]~5_combout\,
	cout => \fifo_rx|r_fifo_count[0]~6\);

-- Location: LCCOMB_X105_Y52_N4
\fifo_rx|r_fifo_count[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_count[1]~13_combout\ = (\r_fifo_rx_wr_en~q\ $ (\r_fifo_rx_rd_en~q\)) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_fifo_rx_wr_en~q\,
	datac => \r_fifo_rx_rd_en~q\,
	datad => \i_rst_sync~input_o\,
	combout => \fifo_rx|r_fifo_count[1]~13_combout\);

-- Location: FF_X105_Y52_N7
\fifo_rx|r_fifo_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_count[0]~5_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \fifo_rx|r_fifo_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_count\(0));

-- Location: LCCOMB_X105_Y52_N8
\fifo_rx|r_fifo_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_count[1]~7_combout\ = (\fifo_rx|p_control~0_combout\ & ((\fifo_rx|r_fifo_count\(1) & (!\fifo_rx|r_fifo_count[0]~6\)) # (!\fifo_rx|r_fifo_count\(1) & ((\fifo_rx|r_fifo_count[0]~6\) # (GND))))) # (!\fifo_rx|p_control~0_combout\ & 
-- ((\fifo_rx|r_fifo_count\(1) & (\fifo_rx|r_fifo_count[0]~6\ & VCC)) # (!\fifo_rx|r_fifo_count\(1) & (!\fifo_rx|r_fifo_count[0]~6\))))
-- \fifo_rx|r_fifo_count[1]~8\ = CARRY((\fifo_rx|p_control~0_combout\ & ((!\fifo_rx|r_fifo_count[0]~6\) # (!\fifo_rx|r_fifo_count\(1)))) # (!\fifo_rx|p_control~0_combout\ & (!\fifo_rx|r_fifo_count\(1) & !\fifo_rx|r_fifo_count[0]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|p_control~0_combout\,
	datab => \fifo_rx|r_fifo_count\(1),
	datad => VCC,
	cin => \fifo_rx|r_fifo_count[0]~6\,
	combout => \fifo_rx|r_fifo_count[1]~7_combout\,
	cout => \fifo_rx|r_fifo_count[1]~8\);

-- Location: FF_X105_Y52_N9
\fifo_rx|r_fifo_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_count[1]~7_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \fifo_rx|r_fifo_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_count\(1));

-- Location: LCCOMB_X105_Y52_N10
\fifo_rx|r_fifo_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_count[2]~9_combout\ = ((\fifo_rx|p_control~0_combout\ $ (\fifo_rx|r_fifo_count\(2) $ (\fifo_rx|r_fifo_count[1]~8\)))) # (GND)
-- \fifo_rx|r_fifo_count[2]~10\ = CARRY((\fifo_rx|p_control~0_combout\ & (\fifo_rx|r_fifo_count\(2) & !\fifo_rx|r_fifo_count[1]~8\)) # (!\fifo_rx|p_control~0_combout\ & ((\fifo_rx|r_fifo_count\(2)) # (!\fifo_rx|r_fifo_count[1]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|p_control~0_combout\,
	datab => \fifo_rx|r_fifo_count\(2),
	datad => VCC,
	cin => \fifo_rx|r_fifo_count[1]~8\,
	combout => \fifo_rx|r_fifo_count[2]~9_combout\,
	cout => \fifo_rx|r_fifo_count[2]~10\);

-- Location: FF_X105_Y52_N11
\fifo_rx|r_fifo_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_count[2]~9_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \fifo_rx|r_fifo_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_count\(2));

-- Location: LCCOMB_X105_Y52_N12
\fifo_rx|r_fifo_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_count[3]~11_combout\ = (\fifo_rx|p_control~0_combout\ & ((\fifo_rx|r_fifo_count\(3) & (!\fifo_rx|r_fifo_count[2]~10\)) # (!\fifo_rx|r_fifo_count\(3) & ((\fifo_rx|r_fifo_count[2]~10\) # (GND))))) # (!\fifo_rx|p_control~0_combout\ & 
-- ((\fifo_rx|r_fifo_count\(3) & (\fifo_rx|r_fifo_count[2]~10\ & VCC)) # (!\fifo_rx|r_fifo_count\(3) & (!\fifo_rx|r_fifo_count[2]~10\))))
-- \fifo_rx|r_fifo_count[3]~12\ = CARRY((\fifo_rx|p_control~0_combout\ & ((!\fifo_rx|r_fifo_count[2]~10\) # (!\fifo_rx|r_fifo_count\(3)))) # (!\fifo_rx|p_control~0_combout\ & (!\fifo_rx|r_fifo_count\(3) & !\fifo_rx|r_fifo_count[2]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|p_control~0_combout\,
	datab => \fifo_rx|r_fifo_count\(3),
	datad => VCC,
	cin => \fifo_rx|r_fifo_count[2]~10\,
	combout => \fifo_rx|r_fifo_count[3]~11_combout\,
	cout => \fifo_rx|r_fifo_count[3]~12\);

-- Location: LCCOMB_X105_Y52_N14
\fifo_rx|r_fifo_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_count[4]~14_combout\ = \fifo_rx|p_control~0_combout\ $ (\fifo_rx|r_fifo_count\(4) $ (\fifo_rx|r_fifo_count[3]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|p_control~0_combout\,
	datab => \fifo_rx|r_fifo_count\(4),
	cin => \fifo_rx|r_fifo_count[3]~12\,
	combout => \fifo_rx|r_fifo_count[4]~14_combout\);

-- Location: FF_X105_Y52_N15
\fifo_rx|r_fifo_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_count[4]~14_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \fifo_rx|r_fifo_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_count\(4));

-- Location: LCCOMB_X105_Y52_N28
\fifo_rx|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|Equal2~0_combout\ = (!\fifo_rx|r_fifo_count\(0) & (!\fifo_rx|r_fifo_count\(4) & !\fifo_rx|r_fifo_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_count\(0),
	datac => \fifo_rx|r_fifo_count\(4),
	datad => \fifo_rx|r_fifo_count\(2),
	combout => \fifo_rx|Equal2~0_combout\);

-- Location: LCCOMB_X105_Y52_N30
\fifo_rx|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|Equal2~1_combout\ = (\fifo_rx|Equal2~0_combout\ & (\fifo_rx|r_fifo_count\(1) & \fifo_rx|r_fifo_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx|Equal2~0_combout\,
	datac => \fifo_rx|r_fifo_count\(1),
	datad => \fifo_rx|r_fifo_count\(3),
	combout => \fifo_rx|Equal2~1_combout\);

-- Location: LCCOMB_X98_Y55_N6
\receiver|r_clk_count[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[0]~13_combout\ = \receiver|r_clk_count\(0) $ (VCC)
-- \receiver|r_clk_count[0]~14\ = CARRY(\receiver|r_clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(0),
	datad => VCC,
	combout => \receiver|r_clk_count[0]~13_combout\,
	cout => \receiver|r_clk_count[0]~14\);

-- Location: LCCOMB_X98_Y55_N10
\receiver|r_clk_count[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[2]~17_combout\ = (\receiver|r_clk_count\(2) & (\receiver|r_clk_count[1]~16\ $ (GND))) # (!\receiver|r_clk_count\(2) & (!\receiver|r_clk_count[1]~16\ & VCC))
-- \receiver|r_clk_count[2]~18\ = CARRY((\receiver|r_clk_count\(2) & !\receiver|r_clk_count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(2),
	datad => VCC,
	cin => \receiver|r_clk_count[1]~16\,
	combout => \receiver|r_clk_count[2]~17_combout\,
	cout => \receiver|r_clk_count[2]~18\);

-- Location: LCCOMB_X98_Y55_N12
\receiver|r_clk_count[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[3]~19_combout\ = (\receiver|r_clk_count\(3) & (!\receiver|r_clk_count[2]~18\)) # (!\receiver|r_clk_count\(3) & ((\receiver|r_clk_count[2]~18\) # (GND)))
-- \receiver|r_clk_count[3]~20\ = CARRY((!\receiver|r_clk_count[2]~18\) # (!\receiver|r_clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(3),
	datad => VCC,
	cin => \receiver|r_clk_count[2]~18\,
	combout => \receiver|r_clk_count[3]~19_combout\,
	cout => \receiver|r_clk_count[3]~20\);

-- Location: LCCOMB_X98_Y55_N20
\receiver|r_clk_count[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[7]~27_combout\ = (\receiver|r_clk_count\(7) & (!\receiver|r_clk_count[6]~26\)) # (!\receiver|r_clk_count\(7) & ((\receiver|r_clk_count[6]~26\) # (GND)))
-- \receiver|r_clk_count[7]~28\ = CARRY((!\receiver|r_clk_count[6]~26\) # (!\receiver|r_clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(7),
	datad => VCC,
	cin => \receiver|r_clk_count[6]~26\,
	combout => \receiver|r_clk_count[7]~27_combout\,
	cout => \receiver|r_clk_count[7]~28\);

-- Location: LCCOMB_X98_Y55_N22
\receiver|r_clk_count[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[8]~29_combout\ = (\receiver|r_clk_count\(8) & (\receiver|r_clk_count[7]~28\ $ (GND))) # (!\receiver|r_clk_count\(8) & (!\receiver|r_clk_count[7]~28\ & VCC))
-- \receiver|r_clk_count[8]~30\ = CARRY((\receiver|r_clk_count\(8) & !\receiver|r_clk_count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(8),
	datad => VCC,
	cin => \receiver|r_clk_count[7]~28\,
	combout => \receiver|r_clk_count[8]~29_combout\,
	cout => \receiver|r_clk_count[8]~30\);

-- Location: FF_X98_Y55_N23
\receiver|r_clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[8]~29_combout\,
	sclr => \receiver|r_clk_count[0]~40_combout\,
	ena => \receiver|r_clk_count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(8));

-- Location: LCCOMB_X98_Y55_N24
\receiver|r_clk_count[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[9]~31_combout\ = (\receiver|r_clk_count\(9) & (!\receiver|r_clk_count[8]~30\)) # (!\receiver|r_clk_count\(9) & ((\receiver|r_clk_count[8]~30\) # (GND)))
-- \receiver|r_clk_count[9]~32\ = CARRY((!\receiver|r_clk_count[8]~30\) # (!\receiver|r_clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(9),
	datad => VCC,
	cin => \receiver|r_clk_count[8]~30\,
	combout => \receiver|r_clk_count[9]~31_combout\,
	cout => \receiver|r_clk_count[9]~32\);

-- Location: FF_X98_Y55_N25
\receiver|r_clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[9]~31_combout\,
	sclr => \receiver|r_clk_count[0]~40_combout\,
	ena => \receiver|r_clk_count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(9));

-- Location: LCCOMB_X98_Y55_N26
\receiver|r_clk_count[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[10]~33_combout\ = (\receiver|r_clk_count\(10) & (\receiver|r_clk_count[9]~32\ $ (GND))) # (!\receiver|r_clk_count\(10) & (!\receiver|r_clk_count[9]~32\ & VCC))
-- \receiver|r_clk_count[10]~34\ = CARRY((\receiver|r_clk_count\(10) & !\receiver|r_clk_count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(10),
	datad => VCC,
	cin => \receiver|r_clk_count[9]~32\,
	combout => \receiver|r_clk_count[10]~33_combout\,
	cout => \receiver|r_clk_count[10]~34\);

-- Location: FF_X98_Y55_N27
\receiver|r_clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[10]~33_combout\,
	sclr => \receiver|r_clk_count[0]~40_combout\,
	ena => \receiver|r_clk_count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(10));

-- Location: LCCOMB_X98_Y55_N28
\receiver|r_clk_count[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[11]~35_combout\ = (\receiver|r_clk_count\(11) & (!\receiver|r_clk_count[10]~34\)) # (!\receiver|r_clk_count\(11) & ((\receiver|r_clk_count[10]~34\) # (GND)))
-- \receiver|r_clk_count[11]~36\ = CARRY((!\receiver|r_clk_count[10]~34\) # (!\receiver|r_clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(11),
	datad => VCC,
	cin => \receiver|r_clk_count[10]~34\,
	combout => \receiver|r_clk_count[11]~35_combout\,
	cout => \receiver|r_clk_count[11]~36\);

-- Location: FF_X98_Y55_N29
\receiver|r_clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[11]~35_combout\,
	sclr => \receiver|r_clk_count[0]~40_combout\,
	ena => \receiver|r_clk_count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(11));

-- Location: LCCOMB_X98_Y55_N30
\receiver|r_clk_count[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[12]~37_combout\ = \receiver|r_clk_count\(12) $ (!\receiver|r_clk_count[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(12),
	cin => \receiver|r_clk_count[11]~36\,
	combout => \receiver|r_clk_count[12]~37_combout\);

-- Location: FF_X98_Y55_N31
\receiver|r_clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[12]~37_combout\,
	sclr => \receiver|r_clk_count[0]~40_combout\,
	ena => \receiver|r_clk_count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(12));

-- Location: LCCOMB_X99_Y55_N6
\receiver|r_sm_main~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_sm_main~7_combout\ = (\receiver|r_clk_count\(12) & (!\receiver|LessThan1~2_combout\ & \receiver|r_sm_main.s_rx_stop_bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(12),
	datac => \receiver|LessThan1~2_combout\,
	datad => \receiver|r_sm_main.s_rx_stop_bit~q\,
	combout => \receiver|r_sm_main~7_combout\);

-- Location: FF_X99_Y55_N7
\receiver|r_sm_main.s_cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_sm_main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_sm_main.s_cleanup~q\);

-- Location: IOIBUF_X27_Y73_N8
\i_rx_serial~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rx_serial,
	o => \i_rx_serial~input_o\);

-- Location: FF_X99_Y55_N15
\receiver|r_rx_data_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_rx_serial~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_data_r~q\);

-- Location: FF_X99_Y55_N25
\receiver|r_rx_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \receiver|r_rx_data_r~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_data~q\);

-- Location: LCCOMB_X99_Y55_N24
\receiver|r_clk_count[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[0]~41_combout\ = (!\receiver|r_sm_main.s_cleanup~q\ & (((!\receiver|Equal0~3_combout\) # (!\receiver|r_rx_data~q\)) # (!\receiver|r_sm_main.s_rx_start_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_rx_start_bit~q\,
	datab => \receiver|r_sm_main.s_cleanup~q\,
	datac => \receiver|r_rx_data~q\,
	datad => \receiver|Equal0~3_combout\,
	combout => \receiver|r_clk_count[0]~41_combout\);

-- Location: FF_X98_Y55_N13
\receiver|r_clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[3]~19_combout\,
	sclr => \receiver|r_clk_count[0]~40_combout\,
	ena => \receiver|r_clk_count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(3));

-- Location: LCCOMB_X98_Y55_N14
\receiver|r_clk_count[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[4]~21_combout\ = (\receiver|r_clk_count\(4) & (\receiver|r_clk_count[3]~20\ $ (GND))) # (!\receiver|r_clk_count\(4) & (!\receiver|r_clk_count[3]~20\ & VCC))
-- \receiver|r_clk_count[4]~22\ = CARRY((\receiver|r_clk_count\(4) & !\receiver|r_clk_count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(4),
	datad => VCC,
	cin => \receiver|r_clk_count[3]~20\,
	combout => \receiver|r_clk_count[4]~21_combout\,
	cout => \receiver|r_clk_count[4]~22\);

-- Location: FF_X98_Y55_N15
\receiver|r_clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[4]~21_combout\,
	sclr => \receiver|r_clk_count[0]~40_combout\,
	ena => \receiver|r_clk_count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(4));

-- Location: LCCOMB_X98_Y55_N16
\receiver|r_clk_count[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[5]~23_combout\ = (\receiver|r_clk_count\(5) & (!\receiver|r_clk_count[4]~22\)) # (!\receiver|r_clk_count\(5) & ((\receiver|r_clk_count[4]~22\) # (GND)))
-- \receiver|r_clk_count[5]~24\ = CARRY((!\receiver|r_clk_count[4]~22\) # (!\receiver|r_clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(5),
	datad => VCC,
	cin => \receiver|r_clk_count[4]~22\,
	combout => \receiver|r_clk_count[5]~23_combout\,
	cout => \receiver|r_clk_count[5]~24\);

-- Location: FF_X98_Y55_N17
\receiver|r_clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[5]~23_combout\,
	sclr => \receiver|r_clk_count[0]~40_combout\,
	ena => \receiver|r_clk_count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(5));

-- Location: LCCOMB_X98_Y55_N18
\receiver|r_clk_count[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[6]~25_combout\ = (\receiver|r_clk_count\(6) & (\receiver|r_clk_count[5]~24\ $ (GND))) # (!\receiver|r_clk_count\(6) & (!\receiver|r_clk_count[5]~24\ & VCC))
-- \receiver|r_clk_count[6]~26\ = CARRY((\receiver|r_clk_count\(6) & !\receiver|r_clk_count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(6),
	datad => VCC,
	cin => \receiver|r_clk_count[5]~24\,
	combout => \receiver|r_clk_count[6]~25_combout\,
	cout => \receiver|r_clk_count[6]~26\);

-- Location: FF_X98_Y55_N19
\receiver|r_clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[6]~25_combout\,
	sclr => \receiver|r_clk_count[0]~40_combout\,
	ena => \receiver|r_clk_count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(6));

-- Location: FF_X98_Y55_N21
\receiver|r_clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[7]~27_combout\,
	sclr => \receiver|r_clk_count[0]~40_combout\,
	ena => \receiver|r_clk_count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(7));

-- Location: LCCOMB_X97_Y55_N30
\receiver|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|LessThan1~1_combout\ = (!\receiver|r_clk_count\(7) & (!\receiver|r_clk_count\(8) & (!\receiver|r_clk_count\(9) & !\receiver|r_clk_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(7),
	datab => \receiver|r_clk_count\(8),
	datac => \receiver|r_clk_count\(9),
	datad => \receiver|r_clk_count\(11),
	combout => \receiver|LessThan1~1_combout\);

-- Location: LCCOMB_X97_Y55_N8
\receiver|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|LessThan1~0_combout\ = ((!\receiver|r_clk_count\(5) & ((!\receiver|r_clk_count\(4)) # (!\receiver|r_clk_count\(3))))) # (!\receiver|r_clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(3),
	datab => \receiver|r_clk_count\(6),
	datac => \receiver|r_clk_count\(4),
	datad => \receiver|r_clk_count\(5),
	combout => \receiver|LessThan1~0_combout\);

-- Location: LCCOMB_X97_Y55_N28
\receiver|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|LessThan1~2_combout\ = (\receiver|LessThan1~1_combout\ & ((\receiver|LessThan1~0_combout\) # ((!\receiver|r_clk_count\(11) & !\receiver|r_clk_count\(10))))) # (!\receiver|LessThan1~1_combout\ & (!\receiver|r_clk_count\(11) & 
-- ((!\receiver|r_clk_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|LessThan1~1_combout\,
	datab => \receiver|r_clk_count\(11),
	datac => \receiver|LessThan1~0_combout\,
	datad => \receiver|r_clk_count\(10),
	combout => \receiver|LessThan1~2_combout\);

-- Location: LCCOMB_X99_Y55_N16
\receiver|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector16~0_combout\ = (\receiver|r_sm_main.s_rx_data_bits~q\ & ((\receiver|r_clk_count\(12)))) # (!\receiver|r_sm_main.s_rx_data_bits~q\ & (\receiver|r_sm_main.s_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_idle~q\,
	datab => \receiver|r_clk_count\(12),
	datad => \receiver|r_sm_main.s_rx_data_bits~q\,
	combout => \receiver|Selector16~0_combout\);

-- Location: LCCOMB_X99_Y55_N4
\receiver|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector16~1_combout\ = (\receiver|Selector16~0_combout\ & (\receiver|r_bit_index\(0) $ (((!\receiver|LessThan1~2_combout\ & \receiver|r_sm_main.s_rx_data_bits~q\))))) # (!\receiver|Selector16~0_combout\ & (((\receiver|r_bit_index\(0) & 
-- \receiver|r_sm_main.s_rx_data_bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|LessThan1~2_combout\,
	datab => \receiver|Selector16~0_combout\,
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|r_sm_main.s_rx_data_bits~q\,
	combout => \receiver|Selector16~1_combout\);

-- Location: FF_X99_Y55_N5
\receiver|r_bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_bit_index\(0));

-- Location: LCCOMB_X99_Y55_N10
\receiver|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|LessThan1~3_combout\ = (!\receiver|LessThan1~2_combout\ & \receiver|r_clk_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|LessThan1~2_combout\,
	datad => \receiver|r_clk_count\(12),
	combout => \receiver|LessThan1~3_combout\);

-- Location: LCCOMB_X100_Y55_N2
\receiver|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector15~2_combout\ = (\receiver|r_sm_main.s_rx_data_bits~q\ & (\receiver|r_bit_index\(1) $ (((\receiver|r_bit_index\(0) & \receiver|LessThan1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_rx_data_bits~q\,
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|LessThan1~3_combout\,
	combout => \receiver|Selector15~2_combout\);

-- Location: LCCOMB_X100_Y55_N18
\receiver|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector15~3_combout\ = (\receiver|Selector15~2_combout\) # ((!\receiver|r_sm_main.s_rx_data_bits~q\ & (\receiver|r_bit_index\(1) & \receiver|r_sm_main.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_rx_data_bits~q\,
	datab => \receiver|Selector15~2_combout\,
	datac => \receiver|r_bit_index\(1),
	datad => \receiver|r_sm_main.s_idle~q\,
	combout => \receiver|Selector15~3_combout\);

-- Location: FF_X100_Y55_N19
\receiver|r_bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|Selector15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_bit_index\(1));

-- Location: LCCOMB_X100_Y55_N16
\receiver|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector14~0_combout\ = (\receiver|Decoder0~0_combout\ & (\receiver|r_bit_index\(0) & (\receiver|r_bit_index\(1) $ (\receiver|r_bit_index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Decoder0~0_combout\,
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|r_bit_index\(2),
	combout => \receiver|Selector14~0_combout\);

-- Location: LCCOMB_X100_Y55_N10
\receiver|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector14~1_combout\ = (\receiver|r_sm_main.s_rx_data_bits~q\ & (((!\receiver|LessThan1~3_combout\) # (!\receiver|r_bit_index\(0))))) # (!\receiver|r_sm_main.s_rx_data_bits~q\ & (\receiver|r_sm_main.s_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_idle~q\,
	datab => \receiver|r_bit_index\(0),
	datac => \receiver|r_sm_main.s_rx_data_bits~q\,
	datad => \receiver|LessThan1~3_combout\,
	combout => \receiver|Selector14~1_combout\);

-- Location: LCCOMB_X100_Y55_N0
\receiver|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector14~2_combout\ = (\receiver|Selector14~0_combout\) # ((\receiver|r_bit_index\(2) & \receiver|Selector14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|Selector14~0_combout\,
	datac => \receiver|r_bit_index\(2),
	datad => \receiver|Selector14~1_combout\,
	combout => \receiver|Selector14~2_combout\);

-- Location: FF_X100_Y55_N1
\receiver|r_bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_bit_index\(2));

-- Location: LCCOMB_X100_Y55_N4
\receiver|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector19~1_combout\ = (\receiver|r_sm_main.s_rx_data_bits~q\ & (((!\receiver|r_bit_index\(1)) # (!\receiver|r_bit_index\(0))) # (!\receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_rx_data_bits~q\,
	datab => \receiver|r_bit_index\(2),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|r_bit_index\(1),
	combout => \receiver|Selector19~1_combout\);

-- Location: LCCOMB_X99_Y55_N0
\receiver|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector19~0_combout\ = (\receiver|r_sm_main.s_rx_data_bits~q\ & ((\receiver|LessThan1~2_combout\) # (!\receiver|r_clk_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(12),
	datac => \receiver|LessThan1~2_combout\,
	datad => \receiver|r_sm_main.s_rx_data_bits~q\,
	combout => \receiver|Selector19~0_combout\);

-- Location: LCCOMB_X99_Y55_N20
\receiver|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector19~2_combout\ = (\receiver|Selector19~1_combout\) # ((\receiver|Selector19~0_combout\) # ((!\receiver|r_rx_data~q\ & \receiver|r_clk_count[0]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Selector19~1_combout\,
	datab => \receiver|r_rx_data~q\,
	datac => \receiver|r_clk_count[0]~39_combout\,
	datad => \receiver|Selector19~0_combout\,
	combout => \receiver|Selector19~2_combout\);

-- Location: FF_X99_Y55_N21
\receiver|r_sm_main.s_rx_data_bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|Selector19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_sm_main.s_rx_data_bits~q\);

-- Location: LCCOMB_X99_Y55_N2
\receiver|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~0_combout\ = (\receiver|r_clk_count\(12) & (!\receiver|LessThan1~2_combout\ & \receiver|r_sm_main.s_rx_data_bits~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(12),
	datac => \receiver|LessThan1~2_combout\,
	datad => \receiver|r_sm_main.s_rx_data_bits~q\,
	combout => \receiver|Decoder0~0_combout\);

-- Location: LCCOMB_X100_Y55_N26
\receiver|r_sm_main.s_rx_stop_bit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_sm_main.s_rx_stop_bit~2_combout\ = (\receiver|Decoder0~0_combout\ & (\receiver|r_bit_index\(1) & (\receiver|r_bit_index\(0) & \receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Decoder0~0_combout\,
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|r_bit_index\(2),
	combout => \receiver|r_sm_main.s_rx_stop_bit~2_combout\);

-- Location: LCCOMB_X99_Y55_N28
\receiver|r_sm_main.s_rx_stop_bit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_sm_main.s_rx_stop_bit~3_combout\ = (\receiver|r_sm_main.s_rx_stop_bit~2_combout\) # ((\receiver|r_sm_main.s_rx_stop_bit~q\ & ((\receiver|LessThan1~2_combout\) # (!\receiver|r_clk_count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|LessThan1~2_combout\,
	datab => \receiver|r_clk_count\(12),
	datac => \receiver|r_sm_main.s_rx_stop_bit~q\,
	datad => \receiver|r_sm_main.s_rx_stop_bit~2_combout\,
	combout => \receiver|r_sm_main.s_rx_stop_bit~3_combout\);

-- Location: FF_X99_Y55_N29
\receiver|r_sm_main.s_rx_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_sm_main.s_rx_stop_bit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_sm_main.s_rx_stop_bit~q\);

-- Location: LCCOMB_X99_Y55_N14
\receiver|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector0~0_combout\ = (!\receiver|r_sm_main.s_rx_stop_bit~q\ & !\receiver|r_sm_main.s_rx_data_bits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_sm_main.s_rx_stop_bit~q\,
	datad => \receiver|r_sm_main.s_rx_data_bits~q\,
	combout => \receiver|Selector0~0_combout\);

-- Location: LCCOMB_X99_Y55_N22
\receiver|r_clk_count[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[0]~40_combout\ = ((\receiver|r_clk_count[0]~39_combout\) # ((!\receiver|Selector0~0_combout\ & \receiver|LessThan1~3_combout\))) # (!\receiver|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_idle~q\,
	datab => \receiver|Selector0~0_combout\,
	datac => \receiver|r_clk_count[0]~39_combout\,
	datad => \receiver|LessThan1~3_combout\,
	combout => \receiver|r_clk_count[0]~40_combout\);

-- Location: FF_X98_Y55_N7
\receiver|r_clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[0]~13_combout\,
	sclr => \receiver|r_clk_count[0]~40_combout\,
	ena => \receiver|r_clk_count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(0));

-- Location: LCCOMB_X98_Y55_N8
\receiver|r_clk_count[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[1]~15_combout\ = (\receiver|r_clk_count\(1) & (!\receiver|r_clk_count[0]~14\)) # (!\receiver|r_clk_count\(1) & ((\receiver|r_clk_count[0]~14\) # (GND)))
-- \receiver|r_clk_count[1]~16\ = CARRY((!\receiver|r_clk_count[0]~14\) # (!\receiver|r_clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(1),
	datad => VCC,
	cin => \receiver|r_clk_count[0]~14\,
	combout => \receiver|r_clk_count[1]~15_combout\,
	cout => \receiver|r_clk_count[1]~16\);

-- Location: FF_X98_Y55_N9
\receiver|r_clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[1]~15_combout\,
	sclr => \receiver|r_clk_count[0]~40_combout\,
	ena => \receiver|r_clk_count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(1));

-- Location: FF_X98_Y55_N11
\receiver|r_clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[2]~17_combout\,
	sclr => \receiver|r_clk_count[0]~40_combout\,
	ena => \receiver|r_clk_count[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(2));

-- Location: LCCOMB_X98_Y55_N4
\receiver|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Equal0~2_combout\ = (!\receiver|r_clk_count\(0) & (!\receiver|r_clk_count\(1) & (!\receiver|r_clk_count\(12) & \receiver|r_clk_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(0),
	datab => \receiver|r_clk_count\(1),
	datac => \receiver|r_clk_count\(12),
	datad => \receiver|r_clk_count\(11),
	combout => \receiver|Equal0~2_combout\);

-- Location: LCCOMB_X98_Y55_N0
\receiver|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Equal0~0_combout\ = (!\receiver|r_clk_count\(8) & (!\receiver|r_clk_count\(7) & (!\receiver|r_clk_count\(4) & \receiver|r_clk_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(8),
	datab => \receiver|r_clk_count\(7),
	datac => \receiver|r_clk_count\(4),
	datad => \receiver|r_clk_count\(3),
	combout => \receiver|Equal0~0_combout\);

-- Location: LCCOMB_X98_Y55_N2
\receiver|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Equal0~1_combout\ = (\receiver|r_clk_count\(5) & (!\receiver|r_clk_count\(6) & (!\receiver|r_clk_count\(10) & \receiver|r_clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(5),
	datab => \receiver|r_clk_count\(6),
	datac => \receiver|r_clk_count\(10),
	datad => \receiver|r_clk_count\(9),
	combout => \receiver|Equal0~1_combout\);

-- Location: LCCOMB_X99_Y55_N18
\receiver|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Equal0~3_combout\ = (\receiver|r_clk_count\(2) & (\receiver|Equal0~2_combout\ & (\receiver|Equal0~0_combout\ & \receiver|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(2),
	datab => \receiver|Equal0~2_combout\,
	datac => \receiver|Equal0~0_combout\,
	datad => \receiver|Equal0~1_combout\,
	combout => \receiver|Equal0~3_combout\);

-- Location: LCCOMB_X99_Y55_N26
\receiver|r_clk_count[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[0]~39_combout\ = (\receiver|r_sm_main.s_rx_start_bit~q\ & \receiver|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|r_sm_main.s_rx_start_bit~q\,
	datad => \receiver|Equal0~3_combout\,
	combout => \receiver|r_clk_count[0]~39_combout\);

-- Location: LCCOMB_X99_Y55_N12
\receiver|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector17~0_combout\ = (!\receiver|r_sm_main.s_cleanup~q\ & (((!\receiver|r_clk_count[0]~39_combout\ & \receiver|r_sm_main.s_idle~q\)) # (!\receiver|r_rx_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count[0]~39_combout\,
	datab => \receiver|r_sm_main.s_cleanup~q\,
	datac => \receiver|r_sm_main.s_idle~q\,
	datad => \receiver|r_rx_data~q\,
	combout => \receiver|Selector17~0_combout\);

-- Location: FF_X99_Y55_N13
\receiver|r_sm_main.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_sm_main.s_idle~q\);

-- Location: LCCOMB_X99_Y55_N30
\receiver|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector18~0_combout\ = (\receiver|r_sm_main.s_idle~q\ & (!\receiver|Equal0~3_combout\ & (\receiver|r_sm_main.s_rx_start_bit~q\))) # (!\receiver|r_sm_main.s_idle~q\ & (((!\receiver|Equal0~3_combout\ & \receiver|r_sm_main.s_rx_start_bit~q\)) # 
-- (!\receiver|r_rx_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_idle~q\,
	datab => \receiver|Equal0~3_combout\,
	datac => \receiver|r_sm_main.s_rx_start_bit~q\,
	datad => \receiver|r_rx_data~q\,
	combout => \receiver|Selector18~0_combout\);

-- Location: FF_X99_Y55_N31
\receiver|r_sm_main.s_rx_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_sm_main.s_rx_start_bit~q\);

-- Location: LCCOMB_X99_Y55_N8
\receiver|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector0~1_combout\ = (\receiver|r_sm_main~7_combout\) # ((\receiver|r_rx_dv~q\ & ((\receiver|r_sm_main.s_rx_start_bit~q\) # (!\receiver|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_rx_start_bit~q\,
	datab => \receiver|Selector0~0_combout\,
	datac => \receiver|r_rx_dv~q\,
	datad => \receiver|r_sm_main~7_combout\,
	combout => \receiver|Selector0~1_combout\);

-- Location: FF_X99_Y55_N9
\receiver|r_rx_dv\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_dv~q\);

-- Location: LCCOMB_X105_Y52_N24
\r_fifo_rx_wr_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_rx_wr_en~0_combout\ = (\receiver|r_rx_dv~q\ & ((\r_fifo_rx_wr_en~q\) # (!\fifo_rx|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|Equal2~1_combout\,
	datac => \r_fifo_rx_wr_en~q\,
	datad => \receiver|r_rx_dv~q\,
	combout => \r_fifo_rx_wr_en~0_combout\);

-- Location: FF_X105_Y52_N25
r_fifo_rx_wr_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_rx_wr_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_fifo_rx_wr_en~q\);

-- Location: LCCOMB_X105_Y52_N22
\fifo_rx|p_control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|p_control~0_combout\ = (!\r_fifo_rx_rd_en~q\ & \r_fifo_rx_wr_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_fifo_rx_rd_en~q\,
	datad => \r_fifo_rx_wr_en~q\,
	combout => \fifo_rx|p_control~0_combout\);

-- Location: FF_X105_Y52_N13
\fifo_rx|r_fifo_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_count[3]~11_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \fifo_rx|r_fifo_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_count\(3));

-- Location: LCCOMB_X105_Y52_N16
\fifo_rx|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|Equal3~0_combout\ = (!\fifo_rx|r_fifo_count\(3) & (!\fifo_rx|r_fifo_count\(1) & \fifo_rx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_count\(3),
	datac => \fifo_rx|r_fifo_count\(1),
	datad => \fifo_rx|Equal2~0_combout\,
	combout => \fifo_rx|Equal3~0_combout\);

-- Location: LCCOMB_X107_Y52_N4
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (delay_4(26) & (\r_sm_main.s_clear~q\ & (!\LessThan3~7_combout\ & !\LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_4(26),
	datab => \r_sm_main.s_clear~q\,
	datac => \LessThan3~7_combout\,
	datad => \LessThan3~3_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X109_Y52_N20
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & ((\r_sm_main.s_idle~q\) # (!\fifo_rx|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|Equal3~0_combout\,
	datac => \r_sm_main.s_idle~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X109_Y52_N21
\r_sm_main.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm_main.s_idle~q\);

-- Location: LCCOMB_X105_Y53_N26
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!delay_1(23)) # (!delay_1(21))) # (!delay_1(22))) # (!delay_1(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(24),
	datab => delay_1(22),
	datac => delay_1(21),
	datad => delay_1(23),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X105_Y53_N28
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (delay_1(17) & (delay_1(18) & ((delay_1(16)) # (delay_1(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(17),
	datab => delay_1(16),
	datac => delay_1(18),
	datad => delay_1(15),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X105_Y53_N30
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~0_combout\) # ((!delay_1(20) & (!delay_1(19) & !\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(20),
	datab => delay_1(19),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X105_Y54_N4
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((!delay_1(8) & ((!delay_1(7)) # (!delay_1(6))))) # (!delay_1(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(9),
	datab => delay_1(6),
	datac => delay_1(7),
	datad => delay_1(8),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X105_Y54_N2
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((\LessThan0~3_combout\) # (!delay_1(12))) # (!delay_1(10))) # (!delay_1(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(11),
	datab => delay_1(10),
	datac => \LessThan0~3_combout\,
	datad => delay_1(12),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X105_Y52_N20
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!delay_1(20) & (!delay_1(16) & !delay_1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_1(20),
	datac => delay_1(16),
	datad => delay_1(19),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X105_Y52_N18
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!delay_1(14) & (!delay_1(13) & \LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(14),
	datac => delay_1(13),
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X105_Y52_N0
\r_status[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_status[3]~2_combout\ = (!delay_1(25) & ((\LessThan0~2_combout\) # ((\LessThan0~4_combout\ & \LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => delay_1(25),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~6_combout\,
	combout => \r_status[3]~2_combout\);

-- Location: LCCOMB_X105_Y52_N2
\r_status[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_status[3]~3_combout\ = (\r_sm_main.s_get_fifo_data~q\ & ((\r_status[3]~2_combout\) # (!delay_1(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_1(26),
	datac => \r_sm_main.s_get_fifo_data~q\,
	datad => \r_status[3]~2_combout\,
	combout => \r_status[3]~3_combout\);

-- Location: LCCOMB_X109_Y52_N24
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\r_status[3]~3_combout\) # ((!\r_sm_main.s_idle~q\ & !\fifo_rx|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm_main.s_idle~q\,
	datac => \r_status[3]~3_combout\,
	datad => \fifo_rx|Equal3~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X109_Y52_N25
\r_sm_main.s_get_fifo_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm_main.s_get_fifo_data~q\);

-- Location: LCCOMB_X105_Y54_N0
\delay_1[0]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[0]~78_combout\ = delay_1(0) $ (((\r_sm_main.s_get_fifo_data~q\ & ((\r_status[3]~2_combout\) # (!delay_1(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(26),
	datab => \r_sm_main.s_get_fifo_data~q\,
	datac => delay_1(0),
	datad => \r_status[3]~2_combout\,
	combout => \delay_1[0]~78_combout\);

-- Location: FF_X105_Y54_N1
\delay_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[0]~78_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(0));

-- Location: LCCOMB_X105_Y54_N6
\delay_1[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[1]~26_combout\ = (delay_1(1) & (delay_1(0) $ (VCC))) # (!delay_1(1) & (delay_1(0) & VCC))
-- \delay_1[1]~27\ = CARRY((delay_1(1) & delay_1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(1),
	datab => delay_1(0),
	datad => VCC,
	combout => \delay_1[1]~26_combout\,
	cout => \delay_1[1]~27\);

-- Location: FF_X105_Y54_N7
\delay_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[1]~26_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(1));

-- Location: LCCOMB_X105_Y54_N8
\delay_1[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[2]~28_combout\ = (delay_1(2) & (!\delay_1[1]~27\)) # (!delay_1(2) & ((\delay_1[1]~27\) # (GND)))
-- \delay_1[2]~29\ = CARRY((!\delay_1[1]~27\) # (!delay_1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(2),
	datad => VCC,
	cin => \delay_1[1]~27\,
	combout => \delay_1[2]~28_combout\,
	cout => \delay_1[2]~29\);

-- Location: FF_X105_Y54_N9
\delay_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[2]~28_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(2));

-- Location: LCCOMB_X105_Y54_N10
\delay_1[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[3]~30_combout\ = (delay_1(3) & (\delay_1[2]~29\ $ (GND))) # (!delay_1(3) & (!\delay_1[2]~29\ & VCC))
-- \delay_1[3]~31\ = CARRY((delay_1(3) & !\delay_1[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(3),
	datad => VCC,
	cin => \delay_1[2]~29\,
	combout => \delay_1[3]~30_combout\,
	cout => \delay_1[3]~31\);

-- Location: FF_X105_Y54_N11
\delay_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[3]~30_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(3));

-- Location: LCCOMB_X105_Y54_N12
\delay_1[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[4]~32_combout\ = (delay_1(4) & (!\delay_1[3]~31\)) # (!delay_1(4) & ((\delay_1[3]~31\) # (GND)))
-- \delay_1[4]~33\ = CARRY((!\delay_1[3]~31\) # (!delay_1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(4),
	datad => VCC,
	cin => \delay_1[3]~31\,
	combout => \delay_1[4]~32_combout\,
	cout => \delay_1[4]~33\);

-- Location: FF_X105_Y54_N13
\delay_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[4]~32_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(4));

-- Location: LCCOMB_X105_Y54_N14
\delay_1[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[5]~34_combout\ = (delay_1(5) & (\delay_1[4]~33\ $ (GND))) # (!delay_1(5) & (!\delay_1[4]~33\ & VCC))
-- \delay_1[5]~35\ = CARRY((delay_1(5) & !\delay_1[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(5),
	datad => VCC,
	cin => \delay_1[4]~33\,
	combout => \delay_1[5]~34_combout\,
	cout => \delay_1[5]~35\);

-- Location: FF_X105_Y54_N15
\delay_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[5]~34_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(5));

-- Location: LCCOMB_X105_Y54_N16
\delay_1[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[6]~36_combout\ = (delay_1(6) & (!\delay_1[5]~35\)) # (!delay_1(6) & ((\delay_1[5]~35\) # (GND)))
-- \delay_1[6]~37\ = CARRY((!\delay_1[5]~35\) # (!delay_1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(6),
	datad => VCC,
	cin => \delay_1[5]~35\,
	combout => \delay_1[6]~36_combout\,
	cout => \delay_1[6]~37\);

-- Location: FF_X105_Y54_N17
\delay_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[6]~36_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(6));

-- Location: LCCOMB_X105_Y54_N18
\delay_1[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[7]~38_combout\ = (delay_1(7) & (\delay_1[6]~37\ $ (GND))) # (!delay_1(7) & (!\delay_1[6]~37\ & VCC))
-- \delay_1[7]~39\ = CARRY((delay_1(7) & !\delay_1[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(7),
	datad => VCC,
	cin => \delay_1[6]~37\,
	combout => \delay_1[7]~38_combout\,
	cout => \delay_1[7]~39\);

-- Location: FF_X105_Y54_N19
\delay_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[7]~38_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(7));

-- Location: LCCOMB_X105_Y54_N20
\delay_1[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[8]~40_combout\ = (delay_1(8) & (!\delay_1[7]~39\)) # (!delay_1(8) & ((\delay_1[7]~39\) # (GND)))
-- \delay_1[8]~41\ = CARRY((!\delay_1[7]~39\) # (!delay_1(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(8),
	datad => VCC,
	cin => \delay_1[7]~39\,
	combout => \delay_1[8]~40_combout\,
	cout => \delay_1[8]~41\);

-- Location: FF_X105_Y54_N21
\delay_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[8]~40_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(8));

-- Location: LCCOMB_X105_Y54_N22
\delay_1[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[9]~42_combout\ = (delay_1(9) & (\delay_1[8]~41\ $ (GND))) # (!delay_1(9) & (!\delay_1[8]~41\ & VCC))
-- \delay_1[9]~43\ = CARRY((delay_1(9) & !\delay_1[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(9),
	datad => VCC,
	cin => \delay_1[8]~41\,
	combout => \delay_1[9]~42_combout\,
	cout => \delay_1[9]~43\);

-- Location: FF_X105_Y54_N23
\delay_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[9]~42_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(9));

-- Location: LCCOMB_X105_Y54_N24
\delay_1[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[10]~44_combout\ = (delay_1(10) & (!\delay_1[9]~43\)) # (!delay_1(10) & ((\delay_1[9]~43\) # (GND)))
-- \delay_1[10]~45\ = CARRY((!\delay_1[9]~43\) # (!delay_1(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(10),
	datad => VCC,
	cin => \delay_1[9]~43\,
	combout => \delay_1[10]~44_combout\,
	cout => \delay_1[10]~45\);

-- Location: FF_X105_Y54_N25
\delay_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[10]~44_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(10));

-- Location: LCCOMB_X105_Y54_N26
\delay_1[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[11]~46_combout\ = (delay_1(11) & (\delay_1[10]~45\ $ (GND))) # (!delay_1(11) & (!\delay_1[10]~45\ & VCC))
-- \delay_1[11]~47\ = CARRY((delay_1(11) & !\delay_1[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(11),
	datad => VCC,
	cin => \delay_1[10]~45\,
	combout => \delay_1[11]~46_combout\,
	cout => \delay_1[11]~47\);

-- Location: FF_X105_Y54_N27
\delay_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[11]~46_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(11));

-- Location: LCCOMB_X105_Y54_N28
\delay_1[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[12]~48_combout\ = (delay_1(12) & (!\delay_1[11]~47\)) # (!delay_1(12) & ((\delay_1[11]~47\) # (GND)))
-- \delay_1[12]~49\ = CARRY((!\delay_1[11]~47\) # (!delay_1(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(12),
	datad => VCC,
	cin => \delay_1[11]~47\,
	combout => \delay_1[12]~48_combout\,
	cout => \delay_1[12]~49\);

-- Location: FF_X105_Y54_N29
\delay_1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[12]~48_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(12));

-- Location: LCCOMB_X105_Y54_N30
\delay_1[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[13]~50_combout\ = (delay_1(13) & (\delay_1[12]~49\ $ (GND))) # (!delay_1(13) & (!\delay_1[12]~49\ & VCC))
-- \delay_1[13]~51\ = CARRY((delay_1(13) & !\delay_1[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(13),
	datad => VCC,
	cin => \delay_1[12]~49\,
	combout => \delay_1[13]~50_combout\,
	cout => \delay_1[13]~51\);

-- Location: FF_X105_Y54_N31
\delay_1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[13]~50_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(13));

-- Location: LCCOMB_X105_Y53_N0
\delay_1[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[14]~52_combout\ = (delay_1(14) & (!\delay_1[13]~51\)) # (!delay_1(14) & ((\delay_1[13]~51\) # (GND)))
-- \delay_1[14]~53\ = CARRY((!\delay_1[13]~51\) # (!delay_1(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(14),
	datad => VCC,
	cin => \delay_1[13]~51\,
	combout => \delay_1[14]~52_combout\,
	cout => \delay_1[14]~53\);

-- Location: FF_X105_Y53_N1
\delay_1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[14]~52_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(14));

-- Location: LCCOMB_X105_Y53_N2
\delay_1[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[15]~54_combout\ = (delay_1(15) & (\delay_1[14]~53\ $ (GND))) # (!delay_1(15) & (!\delay_1[14]~53\ & VCC))
-- \delay_1[15]~55\ = CARRY((delay_1(15) & !\delay_1[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(15),
	datad => VCC,
	cin => \delay_1[14]~53\,
	combout => \delay_1[15]~54_combout\,
	cout => \delay_1[15]~55\);

-- Location: FF_X105_Y53_N3
\delay_1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[15]~54_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(15));

-- Location: LCCOMB_X105_Y53_N4
\delay_1[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[16]~56_combout\ = (delay_1(16) & (!\delay_1[15]~55\)) # (!delay_1(16) & ((\delay_1[15]~55\) # (GND)))
-- \delay_1[16]~57\ = CARRY((!\delay_1[15]~55\) # (!delay_1(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(16),
	datad => VCC,
	cin => \delay_1[15]~55\,
	combout => \delay_1[16]~56_combout\,
	cout => \delay_1[16]~57\);

-- Location: FF_X105_Y53_N5
\delay_1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[16]~56_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(16));

-- Location: LCCOMB_X105_Y53_N6
\delay_1[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[17]~58_combout\ = (delay_1(17) & (\delay_1[16]~57\ $ (GND))) # (!delay_1(17) & (!\delay_1[16]~57\ & VCC))
-- \delay_1[17]~59\ = CARRY((delay_1(17) & !\delay_1[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(17),
	datad => VCC,
	cin => \delay_1[16]~57\,
	combout => \delay_1[17]~58_combout\,
	cout => \delay_1[17]~59\);

-- Location: FF_X105_Y53_N7
\delay_1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[17]~58_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(17));

-- Location: LCCOMB_X105_Y53_N8
\delay_1[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[18]~60_combout\ = (delay_1(18) & (!\delay_1[17]~59\)) # (!delay_1(18) & ((\delay_1[17]~59\) # (GND)))
-- \delay_1[18]~61\ = CARRY((!\delay_1[17]~59\) # (!delay_1(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(18),
	datad => VCC,
	cin => \delay_1[17]~59\,
	combout => \delay_1[18]~60_combout\,
	cout => \delay_1[18]~61\);

-- Location: FF_X105_Y53_N9
\delay_1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[18]~60_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(18));

-- Location: LCCOMB_X105_Y53_N10
\delay_1[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[19]~62_combout\ = (delay_1(19) & (\delay_1[18]~61\ $ (GND))) # (!delay_1(19) & (!\delay_1[18]~61\ & VCC))
-- \delay_1[19]~63\ = CARRY((delay_1(19) & !\delay_1[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(19),
	datad => VCC,
	cin => \delay_1[18]~61\,
	combout => \delay_1[19]~62_combout\,
	cout => \delay_1[19]~63\);

-- Location: FF_X105_Y53_N11
\delay_1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[19]~62_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(19));

-- Location: LCCOMB_X105_Y53_N12
\delay_1[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[20]~64_combout\ = (delay_1(20) & (!\delay_1[19]~63\)) # (!delay_1(20) & ((\delay_1[19]~63\) # (GND)))
-- \delay_1[20]~65\ = CARRY((!\delay_1[19]~63\) # (!delay_1(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(20),
	datad => VCC,
	cin => \delay_1[19]~63\,
	combout => \delay_1[20]~64_combout\,
	cout => \delay_1[20]~65\);

-- Location: FF_X105_Y53_N13
\delay_1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[20]~64_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(20));

-- Location: LCCOMB_X105_Y53_N14
\delay_1[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[21]~66_combout\ = (delay_1(21) & (\delay_1[20]~65\ $ (GND))) # (!delay_1(21) & (!\delay_1[20]~65\ & VCC))
-- \delay_1[21]~67\ = CARRY((delay_1(21) & !\delay_1[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(21),
	datad => VCC,
	cin => \delay_1[20]~65\,
	combout => \delay_1[21]~66_combout\,
	cout => \delay_1[21]~67\);

-- Location: FF_X105_Y53_N15
\delay_1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[21]~66_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(21));

-- Location: LCCOMB_X105_Y53_N16
\delay_1[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[22]~68_combout\ = (delay_1(22) & (!\delay_1[21]~67\)) # (!delay_1(22) & ((\delay_1[21]~67\) # (GND)))
-- \delay_1[22]~69\ = CARRY((!\delay_1[21]~67\) # (!delay_1(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(22),
	datad => VCC,
	cin => \delay_1[21]~67\,
	combout => \delay_1[22]~68_combout\,
	cout => \delay_1[22]~69\);

-- Location: FF_X105_Y53_N17
\delay_1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[22]~68_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(22));

-- Location: LCCOMB_X105_Y53_N18
\delay_1[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[23]~70_combout\ = (delay_1(23) & (\delay_1[22]~69\ $ (GND))) # (!delay_1(23) & (!\delay_1[22]~69\ & VCC))
-- \delay_1[23]~71\ = CARRY((delay_1(23) & !\delay_1[22]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(23),
	datad => VCC,
	cin => \delay_1[22]~69\,
	combout => \delay_1[23]~70_combout\,
	cout => \delay_1[23]~71\);

-- Location: FF_X105_Y53_N19
\delay_1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[23]~70_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(23));

-- Location: LCCOMB_X105_Y53_N20
\delay_1[24]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[24]~72_combout\ = (delay_1(24) & (!\delay_1[23]~71\)) # (!delay_1(24) & ((\delay_1[23]~71\) # (GND)))
-- \delay_1[24]~73\ = CARRY((!\delay_1[23]~71\) # (!delay_1(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_1(24),
	datad => VCC,
	cin => \delay_1[23]~71\,
	combout => \delay_1[24]~72_combout\,
	cout => \delay_1[24]~73\);

-- Location: FF_X105_Y53_N21
\delay_1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[24]~72_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(24));

-- Location: LCCOMB_X105_Y53_N22
\delay_1[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[25]~74_combout\ = (delay_1(25) & (\delay_1[24]~73\ $ (GND))) # (!delay_1(25) & (!\delay_1[24]~73\ & VCC))
-- \delay_1[25]~75\ = CARRY((delay_1(25) & !\delay_1[24]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(25),
	datad => VCC,
	cin => \delay_1[24]~73\,
	combout => \delay_1[25]~74_combout\,
	cout => \delay_1[25]~75\);

-- Location: FF_X105_Y53_N23
\delay_1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[25]~74_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(25));

-- Location: LCCOMB_X105_Y53_N24
\delay_1[26]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_1[26]~76_combout\ = \delay_1[25]~75\ $ (delay_1(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => delay_1(26),
	cin => \delay_1[25]~75\,
	combout => \delay_1[26]~76_combout\);

-- Location: FF_X105_Y53_N25
\delay_1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_1[26]~76_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_1(26));

-- Location: LCCOMB_X108_Y54_N6
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!delay_2(20) & (!delay_2(19) & (!delay_2(13) & !delay_2(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(20),
	datab => delay_2(19),
	datac => delay_2(13),
	datad => delay_2(16),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X109_Y55_N2
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ((!delay_2(10)) # (!delay_2(11))) # (!delay_2(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_2(12),
	datac => delay_2(11),
	datad => delay_2(10),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X109_Y55_N4
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ((!delay_2(8) & ((!delay_2(6)) # (!delay_2(7))))) # (!delay_2(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(9),
	datab => delay_2(7),
	datac => delay_2(8),
	datad => delay_2(6),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X108_Y54_N8
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\LessThan1~0_combout\ & (!delay_2(14) & ((\LessThan1~2_combout\) # (\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => delay_2(14),
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X109_Y54_N28
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (delay_2(17) & (delay_2(18) & ((delay_2(16)) # (delay_2(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(17),
	datab => delay_2(18),
	datac => delay_2(16),
	datad => delay_2(15),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X109_Y54_N30
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (((!delay_2(22)) # (!delay_2(21))) # (!delay_2(23))) # (!delay_2(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(24),
	datab => delay_2(23),
	datac => delay_2(21),
	datad => delay_2(22),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X109_Y54_N26
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (\LessThan1~4_combout\) # ((!delay_2(20) & (!\LessThan1~5_combout\ & !delay_2(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(20),
	datab => \LessThan1~5_combout\,
	datac => \LessThan1~4_combout\,
	datad => delay_2(19),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X108_Y54_N10
\r_status[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_status[3]~0_combout\ = (!delay_2(25) & ((\LessThan1~3_combout\) # (\LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_2(25),
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~6_combout\,
	combout => \r_status[3]~0_combout\);

-- Location: LCCOMB_X108_Y54_N28
\r_status[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_status[3]~1_combout\ = (\r_sm_main.s_calculus~q\ & ((\r_status[3]~0_combout\) # (!delay_2(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm_main.s_calculus~q\,
	datac => delay_2(26),
	datad => \r_status[3]~0_combout\,
	combout => \r_status[3]~1_combout\);

-- Location: LCCOMB_X107_Y54_N12
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\r_status[3]~1_combout\) # ((delay_1(26) & (\r_sm_main.s_get_fifo_data~q\ & !\r_status[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_1(26),
	datab => \r_sm_main.s_get_fifo_data~q\,
	datac => \r_status[3]~2_combout\,
	datad => \r_status[3]~1_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X107_Y54_N13
\r_sm_main.s_calculus\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm_main.s_calculus~q\);

-- Location: LCCOMB_X108_Y54_N22
\delay_2[0]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[0]~78_combout\ = delay_2(0) $ (((\r_sm_main.s_calculus~q\ & ((\r_status[3]~0_combout\) # (!delay_2(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm_main.s_calculus~q\,
	datab => delay_2(26),
	datac => delay_2(0),
	datad => \r_status[3]~0_combout\,
	combout => \delay_2[0]~78_combout\);

-- Location: FF_X108_Y54_N23
\delay_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[0]~78_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(0));

-- Location: LCCOMB_X109_Y55_N6
\delay_2[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[1]~26_combout\ = (delay_2(1) & (delay_2(0) $ (VCC))) # (!delay_2(1) & (delay_2(0) & VCC))
-- \delay_2[1]~27\ = CARRY((delay_2(1) & delay_2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(1),
	datab => delay_2(0),
	datad => VCC,
	combout => \delay_2[1]~26_combout\,
	cout => \delay_2[1]~27\);

-- Location: FF_X109_Y55_N7
\delay_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[1]~26_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(1));

-- Location: LCCOMB_X109_Y55_N8
\delay_2[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[2]~28_combout\ = (delay_2(2) & (!\delay_2[1]~27\)) # (!delay_2(2) & ((\delay_2[1]~27\) # (GND)))
-- \delay_2[2]~29\ = CARRY((!\delay_2[1]~27\) # (!delay_2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(2),
	datad => VCC,
	cin => \delay_2[1]~27\,
	combout => \delay_2[2]~28_combout\,
	cout => \delay_2[2]~29\);

-- Location: FF_X109_Y55_N9
\delay_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[2]~28_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(2));

-- Location: LCCOMB_X109_Y55_N10
\delay_2[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[3]~30_combout\ = (delay_2(3) & (\delay_2[2]~29\ $ (GND))) # (!delay_2(3) & (!\delay_2[2]~29\ & VCC))
-- \delay_2[3]~31\ = CARRY((delay_2(3) & !\delay_2[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(3),
	datad => VCC,
	cin => \delay_2[2]~29\,
	combout => \delay_2[3]~30_combout\,
	cout => \delay_2[3]~31\);

-- Location: FF_X109_Y55_N11
\delay_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[3]~30_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(3));

-- Location: LCCOMB_X109_Y55_N12
\delay_2[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[4]~32_combout\ = (delay_2(4) & (!\delay_2[3]~31\)) # (!delay_2(4) & ((\delay_2[3]~31\) # (GND)))
-- \delay_2[4]~33\ = CARRY((!\delay_2[3]~31\) # (!delay_2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(4),
	datad => VCC,
	cin => \delay_2[3]~31\,
	combout => \delay_2[4]~32_combout\,
	cout => \delay_2[4]~33\);

-- Location: FF_X109_Y55_N13
\delay_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[4]~32_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(4));

-- Location: LCCOMB_X109_Y55_N14
\delay_2[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[5]~34_combout\ = (delay_2(5) & (\delay_2[4]~33\ $ (GND))) # (!delay_2(5) & (!\delay_2[4]~33\ & VCC))
-- \delay_2[5]~35\ = CARRY((delay_2(5) & !\delay_2[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(5),
	datad => VCC,
	cin => \delay_2[4]~33\,
	combout => \delay_2[5]~34_combout\,
	cout => \delay_2[5]~35\);

-- Location: FF_X109_Y55_N15
\delay_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[5]~34_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(5));

-- Location: LCCOMB_X109_Y55_N16
\delay_2[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[6]~36_combout\ = (delay_2(6) & (!\delay_2[5]~35\)) # (!delay_2(6) & ((\delay_2[5]~35\) # (GND)))
-- \delay_2[6]~37\ = CARRY((!\delay_2[5]~35\) # (!delay_2(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(6),
	datad => VCC,
	cin => \delay_2[5]~35\,
	combout => \delay_2[6]~36_combout\,
	cout => \delay_2[6]~37\);

-- Location: FF_X109_Y55_N17
\delay_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[6]~36_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(6));

-- Location: LCCOMB_X109_Y55_N18
\delay_2[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[7]~38_combout\ = (delay_2(7) & (\delay_2[6]~37\ $ (GND))) # (!delay_2(7) & (!\delay_2[6]~37\ & VCC))
-- \delay_2[7]~39\ = CARRY((delay_2(7) & !\delay_2[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(7),
	datad => VCC,
	cin => \delay_2[6]~37\,
	combout => \delay_2[7]~38_combout\,
	cout => \delay_2[7]~39\);

-- Location: FF_X109_Y55_N19
\delay_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[7]~38_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(7));

-- Location: LCCOMB_X109_Y55_N20
\delay_2[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[8]~40_combout\ = (delay_2(8) & (!\delay_2[7]~39\)) # (!delay_2(8) & ((\delay_2[7]~39\) # (GND)))
-- \delay_2[8]~41\ = CARRY((!\delay_2[7]~39\) # (!delay_2(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(8),
	datad => VCC,
	cin => \delay_2[7]~39\,
	combout => \delay_2[8]~40_combout\,
	cout => \delay_2[8]~41\);

-- Location: FF_X109_Y55_N21
\delay_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[8]~40_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(8));

-- Location: LCCOMB_X109_Y55_N22
\delay_2[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[9]~42_combout\ = (delay_2(9) & (\delay_2[8]~41\ $ (GND))) # (!delay_2(9) & (!\delay_2[8]~41\ & VCC))
-- \delay_2[9]~43\ = CARRY((delay_2(9) & !\delay_2[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(9),
	datad => VCC,
	cin => \delay_2[8]~41\,
	combout => \delay_2[9]~42_combout\,
	cout => \delay_2[9]~43\);

-- Location: FF_X109_Y55_N23
\delay_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[9]~42_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(9));

-- Location: LCCOMB_X109_Y55_N24
\delay_2[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[10]~44_combout\ = (delay_2(10) & (!\delay_2[9]~43\)) # (!delay_2(10) & ((\delay_2[9]~43\) # (GND)))
-- \delay_2[10]~45\ = CARRY((!\delay_2[9]~43\) # (!delay_2(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(10),
	datad => VCC,
	cin => \delay_2[9]~43\,
	combout => \delay_2[10]~44_combout\,
	cout => \delay_2[10]~45\);

-- Location: FF_X109_Y55_N25
\delay_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[10]~44_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(10));

-- Location: LCCOMB_X109_Y55_N26
\delay_2[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[11]~46_combout\ = (delay_2(11) & (\delay_2[10]~45\ $ (GND))) # (!delay_2(11) & (!\delay_2[10]~45\ & VCC))
-- \delay_2[11]~47\ = CARRY((delay_2(11) & !\delay_2[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(11),
	datad => VCC,
	cin => \delay_2[10]~45\,
	combout => \delay_2[11]~46_combout\,
	cout => \delay_2[11]~47\);

-- Location: FF_X109_Y55_N27
\delay_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[11]~46_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(11));

-- Location: LCCOMB_X109_Y55_N28
\delay_2[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[12]~48_combout\ = (delay_2(12) & (!\delay_2[11]~47\)) # (!delay_2(12) & ((\delay_2[11]~47\) # (GND)))
-- \delay_2[12]~49\ = CARRY((!\delay_2[11]~47\) # (!delay_2(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(12),
	datad => VCC,
	cin => \delay_2[11]~47\,
	combout => \delay_2[12]~48_combout\,
	cout => \delay_2[12]~49\);

-- Location: FF_X109_Y55_N29
\delay_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[12]~48_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(12));

-- Location: LCCOMB_X109_Y55_N30
\delay_2[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[13]~50_combout\ = (delay_2(13) & (\delay_2[12]~49\ $ (GND))) # (!delay_2(13) & (!\delay_2[12]~49\ & VCC))
-- \delay_2[13]~51\ = CARRY((delay_2(13) & !\delay_2[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(13),
	datad => VCC,
	cin => \delay_2[12]~49\,
	combout => \delay_2[13]~50_combout\,
	cout => \delay_2[13]~51\);

-- Location: FF_X109_Y55_N31
\delay_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[13]~50_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(13));

-- Location: LCCOMB_X109_Y54_N0
\delay_2[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[14]~52_combout\ = (delay_2(14) & (!\delay_2[13]~51\)) # (!delay_2(14) & ((\delay_2[13]~51\) # (GND)))
-- \delay_2[14]~53\ = CARRY((!\delay_2[13]~51\) # (!delay_2(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(14),
	datad => VCC,
	cin => \delay_2[13]~51\,
	combout => \delay_2[14]~52_combout\,
	cout => \delay_2[14]~53\);

-- Location: FF_X109_Y54_N1
\delay_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[14]~52_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(14));

-- Location: LCCOMB_X109_Y54_N2
\delay_2[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[15]~54_combout\ = (delay_2(15) & (\delay_2[14]~53\ $ (GND))) # (!delay_2(15) & (!\delay_2[14]~53\ & VCC))
-- \delay_2[15]~55\ = CARRY((delay_2(15) & !\delay_2[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(15),
	datad => VCC,
	cin => \delay_2[14]~53\,
	combout => \delay_2[15]~54_combout\,
	cout => \delay_2[15]~55\);

-- Location: FF_X109_Y54_N3
\delay_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[15]~54_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(15));

-- Location: LCCOMB_X109_Y54_N4
\delay_2[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[16]~56_combout\ = (delay_2(16) & (!\delay_2[15]~55\)) # (!delay_2(16) & ((\delay_2[15]~55\) # (GND)))
-- \delay_2[16]~57\ = CARRY((!\delay_2[15]~55\) # (!delay_2(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(16),
	datad => VCC,
	cin => \delay_2[15]~55\,
	combout => \delay_2[16]~56_combout\,
	cout => \delay_2[16]~57\);

-- Location: FF_X109_Y54_N5
\delay_2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[16]~56_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(16));

-- Location: LCCOMB_X109_Y54_N6
\delay_2[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[17]~58_combout\ = (delay_2(17) & (\delay_2[16]~57\ $ (GND))) # (!delay_2(17) & (!\delay_2[16]~57\ & VCC))
-- \delay_2[17]~59\ = CARRY((delay_2(17) & !\delay_2[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(17),
	datad => VCC,
	cin => \delay_2[16]~57\,
	combout => \delay_2[17]~58_combout\,
	cout => \delay_2[17]~59\);

-- Location: FF_X109_Y54_N7
\delay_2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[17]~58_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(17));

-- Location: LCCOMB_X109_Y54_N8
\delay_2[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[18]~60_combout\ = (delay_2(18) & (!\delay_2[17]~59\)) # (!delay_2(18) & ((\delay_2[17]~59\) # (GND)))
-- \delay_2[18]~61\ = CARRY((!\delay_2[17]~59\) # (!delay_2(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(18),
	datad => VCC,
	cin => \delay_2[17]~59\,
	combout => \delay_2[18]~60_combout\,
	cout => \delay_2[18]~61\);

-- Location: FF_X109_Y54_N9
\delay_2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[18]~60_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(18));

-- Location: LCCOMB_X109_Y54_N10
\delay_2[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[19]~62_combout\ = (delay_2(19) & (\delay_2[18]~61\ $ (GND))) # (!delay_2(19) & (!\delay_2[18]~61\ & VCC))
-- \delay_2[19]~63\ = CARRY((delay_2(19) & !\delay_2[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(19),
	datad => VCC,
	cin => \delay_2[18]~61\,
	combout => \delay_2[19]~62_combout\,
	cout => \delay_2[19]~63\);

-- Location: FF_X109_Y54_N11
\delay_2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[19]~62_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(19));

-- Location: LCCOMB_X109_Y54_N12
\delay_2[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[20]~64_combout\ = (delay_2(20) & (!\delay_2[19]~63\)) # (!delay_2(20) & ((\delay_2[19]~63\) # (GND)))
-- \delay_2[20]~65\ = CARRY((!\delay_2[19]~63\) # (!delay_2(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(20),
	datad => VCC,
	cin => \delay_2[19]~63\,
	combout => \delay_2[20]~64_combout\,
	cout => \delay_2[20]~65\);

-- Location: FF_X109_Y54_N13
\delay_2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[20]~64_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(20));

-- Location: LCCOMB_X109_Y54_N14
\delay_2[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[21]~66_combout\ = (delay_2(21) & (\delay_2[20]~65\ $ (GND))) # (!delay_2(21) & (!\delay_2[20]~65\ & VCC))
-- \delay_2[21]~67\ = CARRY((delay_2(21) & !\delay_2[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(21),
	datad => VCC,
	cin => \delay_2[20]~65\,
	combout => \delay_2[21]~66_combout\,
	cout => \delay_2[21]~67\);

-- Location: FF_X109_Y54_N15
\delay_2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[21]~66_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(21));

-- Location: LCCOMB_X109_Y54_N16
\delay_2[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[22]~68_combout\ = (delay_2(22) & (!\delay_2[21]~67\)) # (!delay_2(22) & ((\delay_2[21]~67\) # (GND)))
-- \delay_2[22]~69\ = CARRY((!\delay_2[21]~67\) # (!delay_2(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(22),
	datad => VCC,
	cin => \delay_2[21]~67\,
	combout => \delay_2[22]~68_combout\,
	cout => \delay_2[22]~69\);

-- Location: FF_X109_Y54_N17
\delay_2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[22]~68_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(22));

-- Location: LCCOMB_X109_Y54_N18
\delay_2[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[23]~70_combout\ = (delay_2(23) & (\delay_2[22]~69\ $ (GND))) # (!delay_2(23) & (!\delay_2[22]~69\ & VCC))
-- \delay_2[23]~71\ = CARRY((delay_2(23) & !\delay_2[22]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(23),
	datad => VCC,
	cin => \delay_2[22]~69\,
	combout => \delay_2[23]~70_combout\,
	cout => \delay_2[23]~71\);

-- Location: FF_X109_Y54_N19
\delay_2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[23]~70_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(23));

-- Location: LCCOMB_X109_Y54_N20
\delay_2[24]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[24]~72_combout\ = (delay_2(24) & (!\delay_2[23]~71\)) # (!delay_2(24) & ((\delay_2[23]~71\) # (GND)))
-- \delay_2[24]~73\ = CARRY((!\delay_2[23]~71\) # (!delay_2(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_2(24),
	datad => VCC,
	cin => \delay_2[23]~71\,
	combout => \delay_2[24]~72_combout\,
	cout => \delay_2[24]~73\);

-- Location: FF_X109_Y54_N21
\delay_2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[24]~72_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(24));

-- Location: LCCOMB_X109_Y54_N22
\delay_2[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[25]~74_combout\ = (delay_2(25) & (\delay_2[24]~73\ $ (GND))) # (!delay_2(25) & (!\delay_2[24]~73\ & VCC))
-- \delay_2[25]~75\ = CARRY((delay_2(25) & !\delay_2[24]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_2(25),
	datad => VCC,
	cin => \delay_2[24]~73\,
	combout => \delay_2[25]~74_combout\,
	cout => \delay_2[25]~75\);

-- Location: FF_X109_Y54_N23
\delay_2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[25]~74_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(25));

-- Location: LCCOMB_X109_Y54_N24
\delay_2[26]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \delay_2[26]~76_combout\ = \delay_2[25]~75\ $ (delay_2(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => delay_2(26),
	cin => \delay_2[25]~75\,
	combout => \delay_2[26]~76_combout\);

-- Location: FF_X109_Y54_N25
\delay_2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \delay_2[26]~76_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_2(26));

-- Location: LCCOMB_X108_Y54_N30
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (delay_2(26) & \r_sm_main.s_calculus~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_2(26),
	datad => \r_sm_main.s_calculus~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X108_Y54_N4
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\ & ((delay_2(25)) # ((!\LessThan1~3_combout\ & !\LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => delay_2(25),
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~6_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X108_Y54_N16
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\r_status[3]~4_combout\) # ((\Selector3~1_combout\) # ((!\fifo_tx|Equal2~0_combout\ & \r_sm_main.s_put_fifo_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|Equal2~0_combout\,
	datab => \r_status[3]~4_combout\,
	datac => \r_sm_main.s_put_fifo_data~q\,
	datad => \Selector3~1_combout\,
	combout => \Selector3~2_combout\);

-- Location: FF_X108_Y54_N17
\r_sm_main.s_put_fifo_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector3~2_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm_main.s_put_fifo_data~q\);

-- Location: LCCOMB_X107_Y54_N0
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\r_sm_main.s_put_fifo_data~q\) # ((\r_sm_main.s_get_fifo_data~q\) # (\r_sm_main.s_clear~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm_main.s_put_fifo_data~q\,
	datab => \r_sm_main.s_get_fifo_data~q\,
	datac => \r_sm_main.s_clear~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X107_Y54_N30
\r_status[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_status[3]~6_combout\ = (!\r_status[3]~3_combout\ & (!\r_status[3]~1_combout\ & (!\r_status[3]~4_combout\ & !\r_status[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_status[3]~3_combout\,
	datab => \r_status[3]~1_combout\,
	datac => \r_status[3]~4_combout\,
	datad => \r_status[3]~5_combout\,
	combout => \r_status[3]~6_combout\);

-- Location: FF_X107_Y54_N1
\r_status[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_status(0));

-- Location: LCCOMB_X107_Y54_N22
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\r_sm_main.s_calculus~q\ & !\r_sm_main.s_get_fifo_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm_main.s_calculus~q\,
	datac => \r_sm_main.s_get_fifo_data~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X107_Y54_N23
\r_status[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_status(1));

-- Location: LCCOMB_X107_Y54_N4
\r_status[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_status[2]~8_combout\ = !\r_sm_main.s_put_fifo_data~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_sm_main.s_put_fifo_data~q\,
	combout => \r_status[2]~8_combout\);

-- Location: FF_X107_Y54_N5
\r_status[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_status[2]~8_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_status(2));

-- Location: LCCOMB_X107_Y54_N10
\r_status[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_status[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \r_status[3]~feeder_combout\);

-- Location: FF_X107_Y54_N11
\r_status[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_status[3]~feeder_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_status[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_status(3));

-- Location: LCCOMB_X107_Y52_N26
\fifo_rx|r_fifo_data_rtl_0_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_rx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X107_Y52_N27
\fifo_rx|r_fifo_data_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(10));

-- Location: LCCOMB_X103_Y51_N12
\fifo_rx|r_fifo_data~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data~24_combout\ = (\r_fifo_rx_wr_en~q\ & \i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_fifo_rx_wr_en~q\,
	datad => \i_rst_sync~input_o\,
	combout => \fifo_rx|r_fifo_data~24_combout\);

-- Location: FF_X103_Y51_N13
\fifo_rx|r_fifo_data_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_data~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(0));

-- Location: LCCOMB_X109_Y52_N12
\fifo_rx|r_rd_index~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_rd_index~1_combout\ = (\i_rst_sync~input_o\ & ((\fifo_rx|Equal3~0_combout\) # (!\r_fifo_rx_rd_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_fifo_rx_rd_en~q\,
	datac => \i_rst_sync~input_o\,
	datad => \fifo_rx|Equal3~0_combout\,
	combout => \fifo_rx|r_rd_index~1_combout\);

-- Location: LCCOMB_X109_Y52_N22
\fifo_rx|r_rd_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_rd_index~0_combout\ = (\i_rst_sync~input_o\ & (\fifo_rx|r_rd_index\(0) $ (((\r_fifo_rx_rd_en~q\ & !\fifo_rx|Equal3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_fifo_rx_rd_en~q\,
	datab => \fifo_rx|r_rd_index\(0),
	datac => \i_rst_sync~input_o\,
	datad => \fifo_rx|Equal3~0_combout\,
	combout => \fifo_rx|r_rd_index~0_combout\);

-- Location: FF_X109_Y52_N17
\fifo_rx|r_rd_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \fifo_rx|r_rd_index~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_rd_index\(0));

-- Location: FF_X109_Y52_N3
\fifo_rx|r_rd_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_rd_index~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_rd_index\(3));

-- Location: LCCOMB_X109_Y52_N28
\fifo_rx|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|Equal1~0_combout\ = (!\fifo_rx|r_rd_index\(2) & (\fifo_rx|r_rd_index\(0) & (!\fifo_rx|r_rd_index\(1) & \fifo_rx|r_rd_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_rd_index\(2),
	datab => \fifo_rx|r_rd_index\(0),
	datac => \fifo_rx|r_rd_index\(1),
	datad => \fifo_rx|r_rd_index\(3),
	combout => \fifo_rx|Equal1~0_combout\);

-- Location: LCCOMB_X109_Y52_N18
\fifo_rx|r_rd_index~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_rd_index~2_combout\ = (\r_fifo_rx_rd_en~q\ & (!\fifo_rx|Equal1~0_combout\ & (\i_rst_sync~input_o\ & !\fifo_rx|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_fifo_rx_rd_en~q\,
	datab => \fifo_rx|Equal1~0_combout\,
	datac => \i_rst_sync~input_o\,
	datad => \fifo_rx|Equal3~0_combout\,
	combout => \fifo_rx|r_rd_index~2_combout\);

-- Location: LCCOMB_X109_Y52_N8
\fifo_rx|r_rd_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_rd_index~3_combout\ = (\fifo_rx|r_rd_index\(1) & ((\fifo_rx|r_rd_index~1_combout\) # ((!\fifo_rx|r_rd_index\(0) & \fifo_rx|r_rd_index~2_combout\)))) # (!\fifo_rx|r_rd_index\(1) & (((\fifo_rx|r_rd_index\(0) & \fifo_rx|r_rd_index~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_rd_index~1_combout\,
	datab => \fifo_rx|r_rd_index\(0),
	datac => \fifo_rx|r_rd_index\(1),
	datad => \fifo_rx|r_rd_index~2_combout\,
	combout => \fifo_rx|r_rd_index~3_combout\);

-- Location: FF_X109_Y52_N9
\fifo_rx|r_rd_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_rd_index~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_rd_index\(1));

-- Location: LCCOMB_X109_Y52_N14
\fifo_rx|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|Add3~0_combout\ = \fifo_rx|r_rd_index\(2) $ (((\fifo_rx|r_rd_index\(1) & \fifo_rx|r_rd_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx|r_rd_index\(1),
	datac => \fifo_rx|r_rd_index\(2),
	datad => \fifo_rx|r_rd_index\(0),
	combout => \fifo_rx|Add3~0_combout\);

-- Location: LCCOMB_X109_Y52_N4
\fifo_rx|r_rd_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_rd_index~4_combout\ = (\r_fifo_rx_rd_en~q\ & (\i_rst_sync~input_o\ & !\fifo_rx|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_fifo_rx_rd_en~q\,
	datac => \i_rst_sync~input_o\,
	datad => \fifo_rx|Equal3~0_combout\,
	combout => \fifo_rx|r_rd_index~4_combout\);

-- Location: LCCOMB_X109_Y52_N30
\fifo_rx|r_rd_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_rd_index~5_combout\ = (\fifo_rx|r_rd_index\(2) & ((\fifo_rx|r_rd_index~1_combout\) # ((\fifo_rx|Add3~0_combout\ & \fifo_rx|r_rd_index~4_combout\)))) # (!\fifo_rx|r_rd_index\(2) & (\fifo_rx|Add3~0_combout\ & (\fifo_rx|r_rd_index~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_rd_index\(2),
	datab => \fifo_rx|Add3~0_combout\,
	datac => \fifo_rx|r_rd_index~4_combout\,
	datad => \fifo_rx|r_rd_index~1_combout\,
	combout => \fifo_rx|r_rd_index~5_combout\);

-- Location: FF_X109_Y52_N15
\fifo_rx|r_rd_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \fifo_rx|r_rd_index~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_rd_index\(2));

-- Location: LCCOMB_X109_Y52_N16
\fifo_rx|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|Add3~1_combout\ = \fifo_rx|r_rd_index\(3) $ (((\fifo_rx|r_rd_index\(2) & (\fifo_rx|r_rd_index\(1) & \fifo_rx|r_rd_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_rd_index\(2),
	datab => \fifo_rx|r_rd_index\(1),
	datac => \fifo_rx|r_rd_index\(0),
	datad => \fifo_rx|r_rd_index\(3),
	combout => \fifo_rx|Add3~1_combout\);

-- Location: LCCOMB_X109_Y52_N2
\fifo_rx|r_rd_index~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_rd_index~6_combout\ = (\fifo_rx|Add3~1_combout\ & ((\fifo_rx|r_rd_index~2_combout\) # ((\fifo_rx|r_rd_index\(3) & \fifo_rx|r_rd_index~1_combout\)))) # (!\fifo_rx|Add3~1_combout\ & (((\fifo_rx|r_rd_index\(3) & \fifo_rx|r_rd_index~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|Add3~1_combout\,
	datab => \fifo_rx|r_rd_index~2_combout\,
	datac => \fifo_rx|r_rd_index\(3),
	datad => \fifo_rx|r_rd_index~1_combout\,
	combout => \fifo_rx|r_rd_index~6_combout\);

-- Location: FF_X103_Y51_N27
\fifo_rx|r_fifo_data_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \fifo_rx|r_rd_index~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(8));

-- Location: LCCOMB_X103_Y51_N14
\fifo_rx|r_wr_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_wr_index~0_combout\ = (!\fifo_rx|r_wr_index\(0) & \i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_rx|r_wr_index\(0),
	datad => \i_rst_sync~input_o\,
	combout => \fifo_rx|r_wr_index~0_combout\);

-- Location: LCCOMB_X103_Y51_N26
\fifo_rx|r_wr_index[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_wr_index[1]~1_combout\ = ((\r_fifo_rx_wr_en~q\ & !\fifo_rx|Equal2~1_combout\)) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_fifo_rx_wr_en~q\,
	datab => \i_rst_sync~input_o\,
	datad => \fifo_rx|Equal2~1_combout\,
	combout => \fifo_rx|r_wr_index[1]~1_combout\);

-- Location: FF_X103_Y51_N15
\fifo_rx|r_wr_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_wr_index~0_combout\,
	ena => \fifo_rx|r_wr_index[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_wr_index\(0));

-- Location: LCCOMB_X103_Y51_N24
\fifo_rx|r_wr_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_wr_index~3_combout\ = (\fifo_rx|r_wr_index[1]~2_combout\ & (\i_rst_sync~input_o\ & (\fifo_rx|r_wr_index\(0) $ (\fifo_rx|r_wr_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_wr_index[1]~2_combout\,
	datab => \fifo_rx|r_wr_index\(0),
	datac => \fifo_rx|r_wr_index\(1),
	datad => \i_rst_sync~input_o\,
	combout => \fifo_rx|r_wr_index~3_combout\);

-- Location: FF_X103_Y51_N25
\fifo_rx|r_wr_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_wr_index~3_combout\,
	ena => \fifo_rx|r_wr_index[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_wr_index\(1));

-- Location: LCCOMB_X103_Y51_N6
\fifo_rx|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|Add2~0_combout\ = \fifo_rx|r_wr_index\(2) $ (((\fifo_rx|r_wr_index\(0) & \fifo_rx|r_wr_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx|r_wr_index\(2),
	datac => \fifo_rx|r_wr_index\(0),
	datad => \fifo_rx|r_wr_index\(1),
	combout => \fifo_rx|Add2~0_combout\);

-- Location: LCCOMB_X103_Y51_N2
\fifo_rx|r_wr_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_wr_index~4_combout\ = (\fifo_rx|Add2~0_combout\ & (\fifo_rx|r_wr_index[1]~2_combout\ & \i_rst_sync~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|Add2~0_combout\,
	datac => \fifo_rx|r_wr_index[1]~2_combout\,
	datad => \i_rst_sync~input_o\,
	combout => \fifo_rx|r_wr_index~4_combout\);

-- Location: FF_X103_Y51_N3
\fifo_rx|r_wr_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_wr_index~4_combout\,
	ena => \fifo_rx|r_wr_index[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_wr_index\(2));

-- Location: LCCOMB_X103_Y51_N30
\fifo_rx|r_wr_index[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_wr_index[1]~2_combout\ = ((\fifo_rx|r_wr_index\(2)) # ((\fifo_rx|r_wr_index\(1)) # (!\fifo_rx|r_wr_index\(0)))) # (!\fifo_rx|r_wr_index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_wr_index\(3),
	datab => \fifo_rx|r_wr_index\(2),
	datac => \fifo_rx|r_wr_index\(0),
	datad => \fifo_rx|r_wr_index\(1),
	combout => \fifo_rx|r_wr_index[1]~2_combout\);

-- Location: LCCOMB_X103_Y51_N4
\fifo_rx|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|Add2~1_combout\ = \fifo_rx|r_wr_index\(3) $ (((\fifo_rx|r_wr_index\(2) & (\fifo_rx|r_wr_index\(0) & \fifo_rx|r_wr_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_wr_index\(3),
	datab => \fifo_rx|r_wr_index\(2),
	datac => \fifo_rx|r_wr_index\(0),
	datad => \fifo_rx|r_wr_index\(1),
	combout => \fifo_rx|Add2~1_combout\);

-- Location: LCCOMB_X103_Y51_N22
\fifo_rx|r_wr_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_wr_index~5_combout\ = (\fifo_rx|r_wr_index[1]~2_combout\ & (\fifo_rx|Add2~1_combout\ & \i_rst_sync~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_wr_index[1]~2_combout\,
	datac => \fifo_rx|Add2~1_combout\,
	datad => \i_rst_sync~input_o\,
	combout => \fifo_rx|r_wr_index~5_combout\);

-- Location: FF_X103_Y51_N23
\fifo_rx|r_wr_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_wr_index~5_combout\,
	ena => \fifo_rx|r_wr_index[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_wr_index\(3));

-- Location: FF_X103_Y51_N1
\fifo_rx|r_fifo_data_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \fifo_rx|r_wr_index\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(7));

-- Location: FF_X103_Y51_N9
\fifo_rx|r_fifo_data_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \fifo_rx|r_rd_index~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(6));

-- Location: LCCOMB_X103_Y51_N20
\fifo_rx|r_fifo_data_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data_rtl_0_bypass[5]~feeder_combout\ = \fifo_rx|r_wr_index\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_rx|r_wr_index\(2),
	combout => \fifo_rx|r_fifo_data_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X103_Y51_N21
\fifo_rx|r_fifo_data_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_data_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(5));

-- Location: LCCOMB_X103_Y51_N8
\fifo_rx|r_fifo_data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data~14_combout\ = (\fifo_rx|r_fifo_data_rtl_0_bypass\(8) & (\fifo_rx|r_fifo_data_rtl_0_bypass\(7) & (\fifo_rx|r_fifo_data_rtl_0_bypass\(6) $ (!\fifo_rx|r_fifo_data_rtl_0_bypass\(5))))) # (!\fifo_rx|r_fifo_data_rtl_0_bypass\(8) & 
-- (!\fifo_rx|r_fifo_data_rtl_0_bypass\(7) & (\fifo_rx|r_fifo_data_rtl_0_bypass\(6) $ (!\fifo_rx|r_fifo_data_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_data_rtl_0_bypass\(8),
	datab => \fifo_rx|r_fifo_data_rtl_0_bypass\(7),
	datac => \fifo_rx|r_fifo_data_rtl_0_bypass\(6),
	datad => \fifo_rx|r_fifo_data_rtl_0_bypass\(5),
	combout => \fifo_rx|r_fifo_data~14_combout\);

-- Location: FF_X103_Y51_N11
\fifo_rx|r_fifo_data_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \fifo_rx|r_wr_index\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(1));

-- Location: LCCOMB_X103_Y51_N28
\fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder_combout\ = \fifo_rx|r_rd_index~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_rx|r_rd_index~3_combout\,
	combout => \fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder_combout\);

-- Location: FF_X103_Y51_N29
\fifo_rx|r_fifo_data_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(4));

-- Location: FF_X103_Y51_N17
\fifo_rx|r_fifo_data_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \fifo_rx|r_rd_index~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(2));

-- Location: LCCOMB_X103_Y51_N18
\fifo_rx|r_fifo_data_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\ = \fifo_rx|r_wr_index\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_rx|r_wr_index\(1),
	combout => \fifo_rx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X103_Y51_N19
\fifo_rx|r_fifo_data_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(3));

-- Location: LCCOMB_X103_Y51_N16
\fifo_rx|r_fifo_data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data~13_combout\ = (\fifo_rx|r_fifo_data_rtl_0_bypass\(1) & (\fifo_rx|r_fifo_data_rtl_0_bypass\(2) & (\fifo_rx|r_fifo_data_rtl_0_bypass\(4) $ (!\fifo_rx|r_fifo_data_rtl_0_bypass\(3))))) # (!\fifo_rx|r_fifo_data_rtl_0_bypass\(1) & 
-- (!\fifo_rx|r_fifo_data_rtl_0_bypass\(2) & (\fifo_rx|r_fifo_data_rtl_0_bypass\(4) $ (!\fifo_rx|r_fifo_data_rtl_0_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_data_rtl_0_bypass\(1),
	datab => \fifo_rx|r_fifo_data_rtl_0_bypass\(4),
	datac => \fifo_rx|r_fifo_data_rtl_0_bypass\(2),
	datad => \fifo_rx|r_fifo_data_rtl_0_bypass\(3),
	combout => \fifo_rx|r_fifo_data~13_combout\);

-- Location: LCCOMB_X103_Y51_N10
\fifo_rx|r_fifo_data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data~15_combout\ = (\fifo_rx|r_fifo_data_rtl_0_bypass\(0) & (\fifo_rx|r_fifo_data~14_combout\ & \fifo_rx|r_fifo_data~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datab => \fifo_rx|r_fifo_data~14_combout\,
	datad => \fifo_rx|r_fifo_data~13_combout\,
	combout => \fifo_rx|r_fifo_data~15_combout\);

-- Location: LCCOMB_X100_Y55_N6
\receiver|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~1_combout\ = (\receiver|Decoder0~0_combout\ & (!\receiver|r_bit_index\(1) & (!\receiver|r_bit_index\(0) & !\receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Decoder0~0_combout\,
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|r_bit_index\(2),
	combout => \receiver|Decoder0~1_combout\);

-- Location: LCCOMB_X100_Y55_N28
\receiver|r_rx_byte[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_rx_byte[0]~0_combout\ = (\receiver|Decoder0~1_combout\ & (\receiver|r_rx_data~q\)) # (!\receiver|Decoder0~1_combout\ & ((\receiver|r_rx_byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_rx_data~q\,
	datac => \receiver|r_rx_byte\(0),
	datad => \receiver|Decoder0~1_combout\,
	combout => \receiver|r_rx_byte[0]~0_combout\);

-- Location: FF_X100_Y55_N29
\receiver|r_rx_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(0));

-- Location: LCCOMB_X101_Y51_N0
\r_fifo_rx_wr_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_rx_wr_data[0]~feeder_combout\ = \receiver|r_rx_byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver|r_rx_byte\(0),
	combout => \r_fifo_rx_wr_data[0]~feeder_combout\);

-- Location: LCCOMB_X105_Y52_N26
\r_fifo_rx_wr_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_rx_wr_data[0]~0_combout\ = (\receiver|r_rx_dv~q\ & (((!\fifo_rx|r_fifo_count\(1)) # (!\fifo_rx|Equal2~0_combout\)) # (!\fifo_rx|r_fifo_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_count\(3),
	datab => \fifo_rx|Equal2~0_combout\,
	datac => \fifo_rx|r_fifo_count\(1),
	datad => \receiver|r_rx_dv~q\,
	combout => \r_fifo_rx_wr_data[0]~0_combout\);

-- Location: FF_X101_Y51_N1
\r_fifo_rx_wr_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_rx_wr_data[0]~feeder_combout\,
	ena => \r_fifo_rx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_rx_wr_data(0));

-- Location: FF_X107_Y52_N21
\fifo_rx|r_fifo_data_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_rx_wr_data(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(9));

-- Location: LCCOMB_X100_Y55_N12
\receiver|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~2_combout\ = (\receiver|Decoder0~0_combout\ & (!\receiver|r_bit_index\(1) & (\receiver|r_bit_index\(0) & !\receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Decoder0~0_combout\,
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|r_bit_index\(2),
	combout => \receiver|Decoder0~2_combout\);

-- Location: LCCOMB_X101_Y55_N20
\receiver|r_rx_byte[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_rx_byte[1]~1_combout\ = (\receiver|Decoder0~2_combout\ & (\receiver|r_rx_data~q\)) # (!\receiver|Decoder0~2_combout\ & ((\receiver|r_rx_byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_data~q\,
	datac => \receiver|r_rx_byte\(1),
	datad => \receiver|Decoder0~2_combout\,
	combout => \receiver|r_rx_byte[1]~1_combout\);

-- Location: FF_X101_Y55_N21
\receiver|r_rx_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(1));

-- Location: LCCOMB_X105_Y51_N28
\r_fifo_rx_wr_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_rx_wr_data[1]~feeder_combout\ = \receiver|r_rx_byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver|r_rx_byte\(1),
	combout => \r_fifo_rx_wr_data[1]~feeder_combout\);

-- Location: FF_X105_Y51_N29
\r_fifo_rx_wr_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_rx_wr_data[1]~feeder_combout\,
	ena => \r_fifo_rx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_rx_wr_data(1));

-- Location: LCCOMB_X100_Y55_N14
\receiver|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~3_combout\ = (\receiver|Decoder0~0_combout\ & (\receiver|r_bit_index\(1) & (!\receiver|r_bit_index\(0) & !\receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Decoder0~0_combout\,
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|r_bit_index\(2),
	combout => \receiver|Decoder0~3_combout\);

-- Location: LCCOMB_X101_Y55_N10
\receiver|r_rx_byte[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_rx_byte[2]~2_combout\ = (\receiver|Decoder0~3_combout\ & (\receiver|r_rx_data~q\)) # (!\receiver|Decoder0~3_combout\ & ((\receiver|r_rx_byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_data~q\,
	datac => \receiver|r_rx_byte\(2),
	datad => \receiver|Decoder0~3_combout\,
	combout => \receiver|r_rx_byte[2]~2_combout\);

-- Location: FF_X101_Y55_N11
\receiver|r_rx_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(2));

-- Location: LCCOMB_X105_Y51_N16
\r_fifo_rx_wr_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_rx_wr_data[2]~feeder_combout\ = \receiver|r_rx_byte\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver|r_rx_byte\(2),
	combout => \r_fifo_rx_wr_data[2]~feeder_combout\);

-- Location: FF_X105_Y51_N17
\r_fifo_rx_wr_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_rx_wr_data[2]~feeder_combout\,
	ena => \r_fifo_rx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_rx_wr_data(2));

-- Location: LCCOMB_X100_Y55_N8
\receiver|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~4_combout\ = (\receiver|Decoder0~0_combout\ & (\receiver|r_bit_index\(1) & (\receiver|r_bit_index\(0) & !\receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Decoder0~0_combout\,
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|r_bit_index\(2),
	combout => \receiver|Decoder0~4_combout\);

-- Location: LCCOMB_X101_Y55_N4
\receiver|r_rx_byte[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_rx_byte[3]~3_combout\ = (\receiver|Decoder0~4_combout\ & (\receiver|r_rx_data~q\)) # (!\receiver|Decoder0~4_combout\ & ((\receiver|r_rx_byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_data~q\,
	datac => \receiver|r_rx_byte\(3),
	datad => \receiver|Decoder0~4_combout\,
	combout => \receiver|r_rx_byte[3]~3_combout\);

-- Location: FF_X101_Y55_N5
\receiver|r_rx_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(3));

-- Location: LCCOMB_X105_Y51_N4
\r_fifo_rx_wr_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_rx_wr_data[3]~feeder_combout\ = \receiver|r_rx_byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver|r_rx_byte\(3),
	combout => \r_fifo_rx_wr_data[3]~feeder_combout\);

-- Location: FF_X105_Y51_N5
\r_fifo_rx_wr_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_rx_wr_data[3]~feeder_combout\,
	ena => \r_fifo_rx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_rx_wr_data(3));

-- Location: LCCOMB_X100_Y55_N30
\receiver|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~5_combout\ = (\receiver|Decoder0~0_combout\ & (!\receiver|r_bit_index\(1) & (!\receiver|r_bit_index\(0) & \receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Decoder0~0_combout\,
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|r_bit_index\(2),
	combout => \receiver|Decoder0~5_combout\);

-- Location: LCCOMB_X101_Y55_N18
\receiver|r_rx_byte[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_rx_byte[4]~4_combout\ = (\receiver|Decoder0~5_combout\ & (\receiver|r_rx_data~q\)) # (!\receiver|Decoder0~5_combout\ & ((\receiver|r_rx_byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_data~q\,
	datac => \receiver|r_rx_byte\(4),
	datad => \receiver|Decoder0~5_combout\,
	combout => \receiver|r_rx_byte[4]~4_combout\);

-- Location: FF_X101_Y55_N19
\receiver|r_rx_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(4));

-- Location: LCCOMB_X105_Y51_N6
\r_fifo_rx_wr_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_rx_wr_data[4]~feeder_combout\ = \receiver|r_rx_byte\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver|r_rx_byte\(4),
	combout => \r_fifo_rx_wr_data[4]~feeder_combout\);

-- Location: FF_X105_Y51_N7
\r_fifo_rx_wr_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_rx_wr_data[4]~feeder_combout\,
	ena => \r_fifo_rx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_rx_wr_data(4));

-- Location: LCCOMB_X100_Y55_N24
\receiver|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~6_combout\ = (\receiver|Decoder0~0_combout\ & (!\receiver|r_bit_index\(1) & (\receiver|r_bit_index\(0) & \receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Decoder0~0_combout\,
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|r_bit_index\(2),
	combout => \receiver|Decoder0~6_combout\);

-- Location: LCCOMB_X101_Y55_N12
\receiver|r_rx_byte[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_rx_byte[5]~5_combout\ = (\receiver|Decoder0~6_combout\ & (\receiver|r_rx_data~q\)) # (!\receiver|Decoder0~6_combout\ & ((\receiver|r_rx_byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_data~q\,
	datac => \receiver|r_rx_byte\(5),
	datad => \receiver|Decoder0~6_combout\,
	combout => \receiver|r_rx_byte[5]~5_combout\);

-- Location: FF_X101_Y55_N13
\receiver|r_rx_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(5));

-- Location: LCCOMB_X105_Y51_N20
\r_fifo_rx_wr_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_rx_wr_data[5]~feeder_combout\ = \receiver|r_rx_byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver|r_rx_byte\(5),
	combout => \r_fifo_rx_wr_data[5]~feeder_combout\);

-- Location: FF_X105_Y51_N21
\r_fifo_rx_wr_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_rx_wr_data[5]~feeder_combout\,
	ena => \r_fifo_rx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_rx_wr_data(5));

-- Location: LCCOMB_X100_Y55_N22
\receiver|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~7_combout\ = (\receiver|Decoder0~0_combout\ & (\receiver|r_bit_index\(1) & (!\receiver|r_bit_index\(0) & \receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Decoder0~0_combout\,
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|r_bit_index\(2),
	combout => \receiver|Decoder0~7_combout\);

-- Location: LCCOMB_X101_Y55_N6
\receiver|r_rx_byte[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_rx_byte[6]~6_combout\ = (\receiver|Decoder0~7_combout\ & (\receiver|r_rx_data~q\)) # (!\receiver|Decoder0~7_combout\ & ((\receiver|r_rx_byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_data~q\,
	datac => \receiver|r_rx_byte\(6),
	datad => \receiver|Decoder0~7_combout\,
	combout => \receiver|r_rx_byte[6]~6_combout\);

-- Location: FF_X101_Y55_N7
\receiver|r_rx_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(6));

-- Location: LCCOMB_X105_Y51_N18
\r_fifo_rx_wr_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_rx_wr_data[6]~feeder_combout\ = \receiver|r_rx_byte\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|r_rx_byte\(6),
	combout => \r_fifo_rx_wr_data[6]~feeder_combout\);

-- Location: FF_X105_Y51_N19
\r_fifo_rx_wr_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_rx_wr_data[6]~feeder_combout\,
	ena => \r_fifo_rx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_rx_wr_data(6));

-- Location: LCCOMB_X100_Y55_N20
\receiver|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~8_combout\ = (\receiver|Decoder0~0_combout\ & (\receiver|r_bit_index\(1) & (\receiver|r_bit_index\(0) & \receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Decoder0~0_combout\,
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|r_bit_index\(2),
	combout => \receiver|Decoder0~8_combout\);

-- Location: LCCOMB_X101_Y55_N28
\receiver|r_rx_byte[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_rx_byte[7]~7_combout\ = (\receiver|Decoder0~8_combout\ & (\receiver|r_rx_data~q\)) # (!\receiver|Decoder0~8_combout\ & ((\receiver|r_rx_byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_data~q\,
	datac => \receiver|r_rx_byte\(7),
	datad => \receiver|Decoder0~8_combout\,
	combout => \receiver|r_rx_byte[7]~7_combout\);

-- Location: FF_X101_Y55_N29
\receiver|r_rx_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(7));

-- Location: LCCOMB_X101_Y51_N6
\r_fifo_rx_wr_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_rx_wr_data[7]~feeder_combout\ = \receiver|r_rx_byte\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver|r_rx_byte\(7),
	combout => \r_fifo_rx_wr_data[7]~feeder_combout\);

-- Location: FF_X101_Y51_N7
\r_fifo_rx_wr_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_rx_wr_data[7]~feeder_combout\,
	ena => \r_fifo_rx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_rx_wr_data(7));

-- Location: M9K_X104_Y51_N0
\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/simple_operations.ram0_fifo_1ff8f9ef.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fifo:fifo_rx|altsyncram:r_fifo_data_rtl_0|altsyncram_noh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 10,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 10,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \fifo_rx|r_fifo_data~24_combout\,
	portbre => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	portadatain => \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X107_Y52_N20
\fifo_rx|r_fifo_data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data~16_combout\ = (\fifo_rx|r_fifo_data_rtl_0_bypass\(10) & ((\fifo_rx|r_fifo_data~15_combout\ & (\fifo_rx|r_fifo_data_rtl_0_bypass\(9))) # (!\fifo_rx|r_fifo_data~15_combout\ & 
-- ((\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\))))) # (!\fifo_rx|r_fifo_data_rtl_0_bypass\(10) & (((\fifo_rx|r_fifo_data_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_data_rtl_0_bypass\(10),
	datab => \fifo_rx|r_fifo_data~15_combout\,
	datac => \fifo_rx|r_fifo_data_rtl_0_bypass\(9),
	datad => \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \fifo_rx|r_fifo_data~16_combout\);

-- Location: LCCOMB_X107_Y51_N18
\fifo_rx|r_fifo_data_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_rx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X107_Y51_N19
\fifo_rx|r_fifo_data_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(12));

-- Location: FF_X107_Y51_N1
\fifo_rx|r_fifo_data_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_rx_wr_data(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(11));

-- Location: LCCOMB_X107_Y51_N0
\fifo_rx|r_fifo_data~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data~17_combout\ = (\fifo_rx|r_fifo_data~15_combout\ & (((\fifo_rx|r_fifo_data_rtl_0_bypass\(11))))) # (!\fifo_rx|r_fifo_data~15_combout\ & ((\fifo_rx|r_fifo_data_rtl_0_bypass\(12) & 
-- ((\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\))) # (!\fifo_rx|r_fifo_data_rtl_0_bypass\(12) & (\fifo_rx|r_fifo_data_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_data~15_combout\,
	datab => \fifo_rx|r_fifo_data_rtl_0_bypass\(12),
	datac => \fifo_rx|r_fifo_data_rtl_0_bypass\(11),
	datad => \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\,
	combout => \fifo_rx|r_fifo_data~17_combout\);

-- Location: FF_X105_Y51_N9
\fifo_rx|r_fifo_data_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_rx_wr_data(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(13));

-- Location: LCCOMB_X105_Y51_N0
\fifo_rx|r_fifo_data_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_rx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X105_Y51_N1
\fifo_rx|r_fifo_data_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(14));

-- Location: LCCOMB_X105_Y51_N8
\fifo_rx|r_fifo_data~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data~18_combout\ = (\fifo_rx|r_fifo_data~15_combout\ & (((\fifo_rx|r_fifo_data_rtl_0_bypass\(13))))) # (!\fifo_rx|r_fifo_data~15_combout\ & ((\fifo_rx|r_fifo_data_rtl_0_bypass\(14) & 
-- (\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\)) # (!\fifo_rx|r_fifo_data_rtl_0_bypass\(14) & ((\fifo_rx|r_fifo_data_rtl_0_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\,
	datab => \fifo_rx|r_fifo_data~15_combout\,
	datac => \fifo_rx|r_fifo_data_rtl_0_bypass\(13),
	datad => \fifo_rx|r_fifo_data_rtl_0_bypass\(14),
	combout => \fifo_rx|r_fifo_data~18_combout\);

-- Location: LCCOMB_X105_Y51_N10
\fifo_rx|r_fifo_data_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_rx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X105_Y51_N11
\fifo_rx|r_fifo_data_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(16));

-- Location: FF_X105_Y51_N31
\fifo_rx|r_fifo_data_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_rx_wr_data(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(15));

-- Location: LCCOMB_X105_Y51_N30
\fifo_rx|r_fifo_data~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data~19_combout\ = (\fifo_rx|r_fifo_data_rtl_0_bypass\(16) & ((\fifo_rx|r_fifo_data~15_combout\ & (\fifo_rx|r_fifo_data_rtl_0_bypass\(15))) # (!\fifo_rx|r_fifo_data~15_combout\ & 
-- ((\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\))))) # (!\fifo_rx|r_fifo_data_rtl_0_bypass\(16) & (((\fifo_rx|r_fifo_data_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_data_rtl_0_bypass\(16),
	datab => \fifo_rx|r_fifo_data~15_combout\,
	datac => \fifo_rx|r_fifo_data_rtl_0_bypass\(15),
	datad => \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\,
	combout => \fifo_rx|r_fifo_data~19_combout\);

-- Location: LCCOMB_X105_Y51_N22
\fifo_rx|r_fifo_data_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_rx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X105_Y51_N23
\fifo_rx|r_fifo_data_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(18));

-- Location: FF_X105_Y51_N15
\fifo_rx|r_fifo_data_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_rx_wr_data(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(17));

-- Location: LCCOMB_X105_Y51_N14
\fifo_rx|r_fifo_data~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data~20_combout\ = (\fifo_rx|r_fifo_data_rtl_0_bypass\(18) & ((\fifo_rx|r_fifo_data~15_combout\ & (\fifo_rx|r_fifo_data_rtl_0_bypass\(17))) # (!\fifo_rx|r_fifo_data~15_combout\ & 
-- ((\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\))))) # (!\fifo_rx|r_fifo_data_rtl_0_bypass\(18) & (((\fifo_rx|r_fifo_data_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_data_rtl_0_bypass\(18),
	datab => \fifo_rx|r_fifo_data~15_combout\,
	datac => \fifo_rx|r_fifo_data_rtl_0_bypass\(17),
	datad => \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\,
	combout => \fifo_rx|r_fifo_data~20_combout\);

-- Location: LCCOMB_X105_Y51_N26
\fifo_rx|r_fifo_data_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_rx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X105_Y51_N27
\fifo_rx|r_fifo_data_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(20));

-- Location: FF_X105_Y51_N25
\fifo_rx|r_fifo_data_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_rx_wr_data(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(19));

-- Location: LCCOMB_X105_Y51_N24
\fifo_rx|r_fifo_data~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data~21_combout\ = (\fifo_rx|r_fifo_data_rtl_0_bypass\(20) & ((\fifo_rx|r_fifo_data~15_combout\ & (\fifo_rx|r_fifo_data_rtl_0_bypass\(19))) # (!\fifo_rx|r_fifo_data~15_combout\ & 
-- ((\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\))))) # (!\fifo_rx|r_fifo_data_rtl_0_bypass\(20) & (((\fifo_rx|r_fifo_data_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_data_rtl_0_bypass\(20),
	datab => \fifo_rx|r_fifo_data~15_combout\,
	datac => \fifo_rx|r_fifo_data_rtl_0_bypass\(19),
	datad => \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\,
	combout => \fifo_rx|r_fifo_data~21_combout\);

-- Location: LCCOMB_X105_Y51_N12
\fifo_rx|r_fifo_data_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_rx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X105_Y51_N13
\fifo_rx|r_fifo_data_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(22));

-- Location: FF_X105_Y51_N3
\fifo_rx|r_fifo_data_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_rx_wr_data(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(21));

-- Location: LCCOMB_X105_Y51_N2
\fifo_rx|r_fifo_data~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data~22_combout\ = (\fifo_rx|r_fifo_data_rtl_0_bypass\(22) & ((\fifo_rx|r_fifo_data~15_combout\ & (\fifo_rx|r_fifo_data_rtl_0_bypass\(21))) # (!\fifo_rx|r_fifo_data~15_combout\ & 
-- ((\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\))))) # (!\fifo_rx|r_fifo_data_rtl_0_bypass\(22) & (((\fifo_rx|r_fifo_data_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_data_rtl_0_bypass\(22),
	datab => \fifo_rx|r_fifo_data~15_combout\,
	datac => \fifo_rx|r_fifo_data_rtl_0_bypass\(21),
	datad => \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\,
	combout => \fifo_rx|r_fifo_data~22_combout\);

-- Location: LCCOMB_X107_Y51_N14
\fifo_rx|r_fifo_data_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_rx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X107_Y51_N15
\fifo_rx|r_fifo_data_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(24));

-- Location: FF_X107_Y51_N13
\fifo_rx|r_fifo_data_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_rx_wr_data(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_data_rtl_0_bypass\(23));

-- Location: LCCOMB_X107_Y51_N12
\fifo_rx|r_fifo_data~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_data~23_combout\ = (\fifo_rx|r_fifo_data~15_combout\ & (((\fifo_rx|r_fifo_data_rtl_0_bypass\(23))))) # (!\fifo_rx|r_fifo_data~15_combout\ & ((\fifo_rx|r_fifo_data_rtl_0_bypass\(24) & 
-- ((\fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\))) # (!\fifo_rx|r_fifo_data_rtl_0_bypass\(24) & (\fifo_rx|r_fifo_data_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_data~15_combout\,
	datab => \fifo_rx|r_fifo_data_rtl_0_bypass\(24),
	datac => \fifo_rx|r_fifo_data_rtl_0_bypass\(23),
	datad => \fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\,
	combout => \fifo_rx|r_fifo_data~23_combout\);

-- Location: LCCOMB_X103_Y55_N30
\fifo_tx|r_fifo_data_rtl_0_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X103_Y55_N31
\fifo_tx|r_fifo_data_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(10));

-- Location: LCCOMB_X107_Y52_N18
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\r_sm_main.s_clear~q\ & \fifo_rx|r_fifo_data~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm_main.s_clear~q\,
	datad => \fifo_rx|r_fifo_data~16_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X107_Y52_N30
\r_fifo_data_in[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_in[0]~0_combout\ = (\i_rst~input_o\ & (!\r_status[3]~5_combout\ & ((\r_sm_main.s_get_fifo_data~q\) # (\r_sm_main.s_clear~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm_main.s_get_fifo_data~q\,
	datab => \r_sm_main.s_clear~q\,
	datac => \i_rst~input_o\,
	datad => \r_status[3]~5_combout\,
	combout => \r_fifo_data_in[0]~0_combout\);

-- Location: FF_X107_Y52_N19
\r_fifo_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \r_fifo_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_in(0));

-- Location: LCCOMB_X106_Y51_N28
\r_data_in[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data_in[0]~feeder_combout\ = r_fifo_data_in(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_data_in(0),
	combout => \r_data_in[0]~feeder_combout\);

-- Location: LCCOMB_X106_Y51_N4
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\r_status[3]~2_combout\ & (\r_sm_main.s_get_fifo_data~q\ & delay_1(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_status[3]~2_combout\,
	datab => \r_sm_main.s_get_fifo_data~q\,
	datad => delay_1(26),
	combout => \Selector2~0_combout\);

-- Location: FF_X106_Y51_N29
\r_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_data_in[0]~feeder_combout\,
	clrn => \i_rst~input_o\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_in(0));

-- Location: LCCOMB_X106_Y52_N12
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (r_data_in(0) & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_data_in(0),
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X106_Y52_N4
\p_calculus_fsm:aux[-7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_calculus_fsm:aux[-7]~0_combout\ = (\i_rst~input_o\ & ((\Selector3~1_combout\) # (\Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \i_rst~input_o\,
	datad => \Selector0~0_combout\,
	combout => \p_calculus_fsm:aux[-7]~0_combout\);

-- Location: FF_X106_Y52_N13
\p_calculus_fsm:aux[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	ena => \p_calculus_fsm:aux[-7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_calculus_fsm:aux[-7]~q\);

-- Location: LCCOMB_X107_Y52_N10
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\p_calculus_fsm:aux[-7]~q\ & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_calculus_fsm:aux[-7]~q\,
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X106_Y52_N24
\r_fifo_data_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_out[0]~1_combout\ = (\i_rst~input_o\ & ((\Selector0~0_combout\) # (\r_fifo_data_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \i_rst~input_o\,
	datad => \r_fifo_data_out[0]~0_combout\,
	combout => \r_fifo_data_out[0]~1_combout\);

-- Location: FF_X106_Y52_N25
\r_fifo_data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Selector33~0_combout\,
	sload => VCC,
	ena => \r_fifo_data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_out(0));

-- Location: LCCOMB_X106_Y55_N8
\r_fifo_tx_wr_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_tx_wr_data[0]~feeder_combout\ = r_fifo_data_out(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_fifo_data_out(0),
	combout => \r_fifo_tx_wr_data[0]~feeder_combout\);

-- Location: FF_X106_Y55_N9
\r_fifo_tx_wr_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_tx_wr_data[0]~feeder_combout\,
	ena => \r_fifo_tx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_tx_wr_data(0));

-- Location: LCCOMB_X103_Y55_N28
\fifo_tx|r_fifo_data_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[9]~feeder_combout\ = r_fifo_tx_wr_data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_fifo_tx_wr_data(0),
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X103_Y55_N29
\fifo_tx|r_fifo_data_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(9));

-- Location: LCCOMB_X108_Y55_N4
\fifo_tx|r_fifo_data~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data~24_combout\ = (\i_rst_sync~input_o\ & \r_fifo_tx_wr_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_rst_sync~input_o\,
	datac => \r_fifo_tx_wr_en~q\,
	combout => \fifo_tx|r_fifo_data~24_combout\);

-- Location: LCCOMB_X107_Y55_N6
\fifo_tx|r_wr_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_wr_index~0_combout\ = (\i_rst_sync~input_o\ & !\fifo_tx|r_wr_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_rst_sync~input_o\,
	datac => \fifo_tx|r_wr_index\(0),
	combout => \fifo_tx|r_wr_index~0_combout\);

-- Location: LCCOMB_X108_Y55_N0
\fifo_tx|r_wr_index[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_wr_index[1]~1_combout\ = ((\r_fifo_tx_wr_en~q\ & \fifo_tx|Equal2~0_combout\)) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_rst_sync~input_o\,
	datac => \r_fifo_tx_wr_en~q\,
	datad => \fifo_tx|Equal2~0_combout\,
	combout => \fifo_tx|r_wr_index[1]~1_combout\);

-- Location: FF_X107_Y55_N7
\fifo_tx|r_wr_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_wr_index~0_combout\,
	ena => \fifo_tx|r_wr_index[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_wr_index\(0));

-- Location: LCCOMB_X107_Y55_N12
\fifo_tx|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|Add2~0_combout\ = \fifo_tx|r_wr_index\(2) $ (((\fifo_tx|r_wr_index\(1) & \fifo_tx|r_wr_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_wr_index\(2),
	datab => \fifo_tx|r_wr_index\(1),
	datad => \fifo_tx|r_wr_index\(0),
	combout => \fifo_tx|Add2~0_combout\);

-- Location: LCCOMB_X107_Y55_N22
\fifo_tx|r_wr_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_wr_index~4_combout\ = (\fifo_tx|Add2~0_combout\ & (\i_rst_sync~input_o\ & \fifo_tx|r_wr_index[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|Add2~0_combout\,
	datac => \i_rst_sync~input_o\,
	datad => \fifo_tx|r_wr_index[1]~2_combout\,
	combout => \fifo_tx|r_wr_index~4_combout\);

-- Location: FF_X107_Y55_N23
\fifo_tx|r_wr_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_wr_index~4_combout\,
	ena => \fifo_tx|r_wr_index[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_wr_index\(2));

-- Location: LCCOMB_X107_Y55_N14
\fifo_tx|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|Add2~1_combout\ = \fifo_tx|r_wr_index\(3) $ (((\fifo_tx|r_wr_index\(0) & (\fifo_tx|r_wr_index\(2) & \fifo_tx|r_wr_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_wr_index\(0),
	datab => \fifo_tx|r_wr_index\(3),
	datac => \fifo_tx|r_wr_index\(2),
	datad => \fifo_tx|r_wr_index\(1),
	combout => \fifo_tx|Add2~1_combout\);

-- Location: LCCOMB_X107_Y55_N0
\fifo_tx|r_wr_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_wr_index~5_combout\ = (\fifo_tx|r_wr_index[1]~2_combout\ & (\i_rst_sync~input_o\ & \fifo_tx|Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_wr_index[1]~2_combout\,
	datab => \i_rst_sync~input_o\,
	datac => \fifo_tx|Add2~1_combout\,
	combout => \fifo_tx|r_wr_index~5_combout\);

-- Location: FF_X107_Y55_N1
\fifo_tx|r_wr_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_wr_index~5_combout\,
	ena => \fifo_tx|r_wr_index[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_wr_index\(3));

-- Location: LCCOMB_X107_Y55_N10
\fifo_tx|r_wr_index[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_wr_index[1]~2_combout\ = (((\fifo_tx|r_wr_index\(2)) # (\fifo_tx|r_wr_index\(1))) # (!\fifo_tx|r_wr_index\(3))) # (!\fifo_tx|r_wr_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_wr_index\(0),
	datab => \fifo_tx|r_wr_index\(3),
	datac => \fifo_tx|r_wr_index\(2),
	datad => \fifo_tx|r_wr_index\(1),
	combout => \fifo_tx|r_wr_index[1]~2_combout\);

-- Location: LCCOMB_X107_Y55_N16
\fifo_tx|r_wr_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_wr_index~3_combout\ = (\fifo_tx|r_wr_index[1]~2_combout\ & (\i_rst_sync~input_o\ & (\fifo_tx|r_wr_index\(1) $ (\fifo_tx|r_wr_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_wr_index[1]~2_combout\,
	datab => \i_rst_sync~input_o\,
	datac => \fifo_tx|r_wr_index\(1),
	datad => \fifo_tx|r_wr_index\(0),
	combout => \fifo_tx|r_wr_index~3_combout\);

-- Location: FF_X107_Y55_N17
\fifo_tx|r_wr_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_wr_index~3_combout\,
	ena => \fifo_tx|r_wr_index[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_wr_index\(1));

-- Location: LCCOMB_X103_Y55_N18
\fifo_tx|r_rd_index[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_rd_index[0]~feeder_combout\ = \fifo_tx|r_rd_index~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_tx|r_rd_index~0_combout\,
	combout => \fifo_tx|r_rd_index[0]~feeder_combout\);

-- Location: FF_X103_Y55_N19
\fifo_tx|r_rd_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_rd_index[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_rd_index\(0));

-- Location: LCCOMB_X108_Y55_N10
\fifo_tx|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|Equal3~1_combout\ = (!\fifo_tx|r_fifo_count\(1) & (!\fifo_tx|r_fifo_count\(3) & \fifo_tx|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tx|r_fifo_count\(1),
	datac => \fifo_tx|r_fifo_count\(3),
	datad => \fifo_tx|Equal3~0_combout\,
	combout => \fifo_tx|Equal3~1_combout\);

-- Location: LCCOMB_X103_Y55_N0
\fifo_tx|r_rd_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_rd_index~0_combout\ = (\i_rst_sync~input_o\ & (\fifo_tx|r_rd_index\(0) $ (((\r_tx_dv~q\ & !\fifo_tx|Equal3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_tx_dv~q\,
	datab => \fifo_tx|r_rd_index\(0),
	datac => \i_rst_sync~input_o\,
	datad => \fifo_tx|Equal3~1_combout\,
	combout => \fifo_tx|r_rd_index~0_combout\);

-- Location: FF_X103_Y55_N23
\fifo_tx|r_rd_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_rd_index~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_rd_index\(1));

-- Location: LCCOMB_X103_Y55_N10
\fifo_tx|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|Add3~0_combout\ = \fifo_tx|r_rd_index\(2) $ (((\fifo_tx|r_rd_index\(1) & \fifo_tx|r_rd_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_rd_index\(1),
	datab => \fifo_tx|r_rd_index\(0),
	datad => \fifo_tx|r_rd_index\(2),
	combout => \fifo_tx|Add3~0_combout\);

-- Location: LCCOMB_X103_Y55_N16
\fifo_tx|r_rd_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_rd_index~4_combout\ = (\r_tx_dv~q\ & (\i_rst_sync~input_o\ & !\fifo_tx|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_tx_dv~q\,
	datab => \i_rst_sync~input_o\,
	datad => \fifo_tx|Equal3~1_combout\,
	combout => \fifo_tx|r_rd_index~4_combout\);

-- Location: LCCOMB_X103_Y55_N2
\fifo_tx|r_rd_index~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_rd_index~1_combout\ = (\i_rst_sync~input_o\ & ((\fifo_tx|Equal3~1_combout\) # (!\r_tx_dv~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_tx_dv~q\,
	datac => \i_rst_sync~input_o\,
	datad => \fifo_tx|Equal3~1_combout\,
	combout => \fifo_tx|r_rd_index~1_combout\);

-- Location: LCCOMB_X103_Y55_N8
\fifo_tx|r_rd_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_rd_index~5_combout\ = (\fifo_tx|Add3~0_combout\ & ((\fifo_tx|r_rd_index~4_combout\) # ((\fifo_tx|r_rd_index\(2) & \fifo_tx|r_rd_index~1_combout\)))) # (!\fifo_tx|Add3~0_combout\ & (((\fifo_tx|r_rd_index\(2) & \fifo_tx|r_rd_index~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|Add3~0_combout\,
	datab => \fifo_tx|r_rd_index~4_combout\,
	datac => \fifo_tx|r_rd_index\(2),
	datad => \fifo_tx|r_rd_index~1_combout\,
	combout => \fifo_tx|r_rd_index~5_combout\);

-- Location: FF_X103_Y55_N9
\fifo_tx|r_rd_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_rd_index~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_rd_index\(2));

-- Location: LCCOMB_X103_Y55_N14
\fifo_tx|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|Add3~1_combout\ = \fifo_tx|r_rd_index\(3) $ (((\fifo_tx|r_rd_index\(1) & (\fifo_tx|r_rd_index\(0) & \fifo_tx|r_rd_index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_rd_index\(1),
	datab => \fifo_tx|r_rd_index\(0),
	datac => \fifo_tx|r_rd_index\(3),
	datad => \fifo_tx|r_rd_index\(2),
	combout => \fifo_tx|Add3~1_combout\);

-- Location: LCCOMB_X103_Y55_N4
\fifo_tx|r_rd_index~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_rd_index~6_combout\ = (\fifo_tx|r_rd_index~2_combout\ & ((\fifo_tx|Add3~1_combout\) # ((\fifo_tx|r_rd_index\(3) & \fifo_tx|r_rd_index~1_combout\)))) # (!\fifo_tx|r_rd_index~2_combout\ & (((\fifo_tx|r_rd_index\(3) & 
-- \fifo_tx|r_rd_index~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_rd_index~2_combout\,
	datab => \fifo_tx|Add3~1_combout\,
	datac => \fifo_tx|r_rd_index\(3),
	datad => \fifo_tx|r_rd_index~1_combout\,
	combout => \fifo_tx|r_rd_index~6_combout\);

-- Location: FF_X103_Y55_N5
\fifo_tx|r_rd_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_rd_index~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_rd_index\(3));

-- Location: LCCOMB_X103_Y55_N26
\fifo_tx|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|Equal1~0_combout\ = (!\fifo_tx|r_rd_index\(1) & (\fifo_tx|r_rd_index\(0) & (\fifo_tx|r_rd_index\(3) & !\fifo_tx|r_rd_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_rd_index\(1),
	datab => \fifo_tx|r_rd_index\(0),
	datac => \fifo_tx|r_rd_index\(3),
	datad => \fifo_tx|r_rd_index\(2),
	combout => \fifo_tx|Equal1~0_combout\);

-- Location: LCCOMB_X103_Y55_N12
\fifo_tx|r_rd_index~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_rd_index~2_combout\ = (!\fifo_tx|Equal1~0_combout\ & (\r_tx_dv~q\ & (\i_rst_sync~input_o\ & !\fifo_tx|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|Equal1~0_combout\,
	datab => \r_tx_dv~q\,
	datac => \i_rst_sync~input_o\,
	datad => \fifo_tx|Equal3~1_combout\,
	combout => \fifo_tx|r_rd_index~2_combout\);

-- Location: LCCOMB_X103_Y55_N22
\fifo_tx|r_rd_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_rd_index~3_combout\ = (\fifo_tx|r_rd_index\(1) & ((\fifo_tx|r_rd_index~1_combout\) # ((\fifo_tx|r_rd_index~2_combout\ & !\fifo_tx|r_rd_index\(0))))) # (!\fifo_tx|r_rd_index\(1) & (\fifo_tx|r_rd_index~2_combout\ & (\fifo_tx|r_rd_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_rd_index~2_combout\,
	datab => \fifo_tx|r_rd_index\(0),
	datac => \fifo_tx|r_rd_index\(1),
	datad => \fifo_tx|r_rd_index~1_combout\,
	combout => \fifo_tx|r_rd_index~3_combout\);

-- Location: LCCOMB_X107_Y51_N24
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\r_sm_main.s_clear~q\ & \fifo_rx|r_fifo_data~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm_main.s_clear~q\,
	datad => \fifo_rx|r_fifo_data~17_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X107_Y51_N25
\r_fifo_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \r_fifo_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_in(1));

-- Location: LCCOMB_X106_Y51_N14
\r_data_in[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data_in[1]~feeder_combout\ = r_fifo_data_in(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_data_in(1),
	combout => \r_data_in[1]~feeder_combout\);

-- Location: FF_X106_Y51_N15
\r_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_data_in[1]~feeder_combout\,
	clrn => \i_rst~input_o\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_in(1));

-- Location: LCCOMB_X106_Y52_N30
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (r_data_in(1) & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data_in(1),
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X106_Y52_N31
\p_calculus_fsm:aux[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	ena => \p_calculus_fsm:aux[-7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_calculus_fsm:aux[-6]~q\);

-- Location: LCCOMB_X106_Y52_N6
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\p_calculus_fsm:aux[-6]~q\ & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p_calculus_fsm:aux[-6]~q\,
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector32~0_combout\);

-- Location: FF_X106_Y52_N7
\r_fifo_data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	ena => \r_fifo_data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_out(1));

-- Location: LCCOMB_X106_Y55_N10
\r_fifo_tx_wr_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_tx_wr_data[1]~feeder_combout\ = r_fifo_data_out(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_fifo_data_out(1),
	combout => \r_fifo_tx_wr_data[1]~feeder_combout\);

-- Location: FF_X106_Y55_N11
\r_fifo_tx_wr_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_tx_wr_data[1]~feeder_combout\,
	ena => \r_fifo_tx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_tx_wr_data(1));

-- Location: LCCOMB_X106_Y51_N8
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (!\r_sm_main.s_clear~q\ & \fifo_rx|r_fifo_data~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm_main.s_clear~q\,
	datad => \fifo_rx|r_fifo_data~18_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X106_Y51_N9
\r_fifo_data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \r_fifo_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_in(2));

-- Location: FF_X106_Y51_N5
\r_data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_data_in(2),
	clrn => \i_rst~input_o\,
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_in(2));

-- Location: LCCOMB_X106_Y52_N28
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (r_data_in(2) & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_data_in(2),
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X106_Y52_N29
\p_calculus_fsm:aux[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	ena => \p_calculus_fsm:aux[-7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_calculus_fsm:aux[-5]~q\);

-- Location: LCCOMB_X106_Y52_N20
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\p_calculus_fsm:aux[-5]~q\ & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p_calculus_fsm:aux[-5]~q\,
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector31~0_combout\);

-- Location: FF_X106_Y52_N21
\r_fifo_data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector31~0_combout\,
	ena => \r_fifo_data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_out(2));

-- Location: LCCOMB_X106_Y55_N16
\r_fifo_tx_wr_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_tx_wr_data[2]~feeder_combout\ = r_fifo_data_out(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_data_out(2),
	combout => \r_fifo_tx_wr_data[2]~feeder_combout\);

-- Location: FF_X106_Y55_N17
\r_fifo_tx_wr_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_tx_wr_data[2]~feeder_combout\,
	ena => \r_fifo_tx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_tx_wr_data(2));

-- Location: LCCOMB_X106_Y51_N22
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\r_sm_main.s_clear~q\ & \fifo_rx|r_fifo_data~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm_main.s_clear~q\,
	datad => \fifo_rx|r_fifo_data~19_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X106_Y51_N23
\r_fifo_data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	ena => \r_fifo_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_in(3));

-- Location: FF_X106_Y51_N11
\r_data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_data_in(3),
	clrn => \i_rst~input_o\,
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_in(3));

-- Location: LCCOMB_X106_Y52_N14
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (r_data_in(3) & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data_in(3),
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X106_Y52_N15
\p_calculus_fsm:aux[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	ena => \p_calculus_fsm:aux[-7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_calculus_fsm:aux[-4]~q\);

-- Location: LCCOMB_X106_Y52_N18
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\p_calculus_fsm:aux[-4]~q\ & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p_calculus_fsm:aux[-4]~q\,
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector30~0_combout\);

-- Location: FF_X106_Y52_N19
\r_fifo_data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector30~0_combout\,
	ena => \r_fifo_data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_out(3));

-- Location: LCCOMB_X106_Y55_N26
\r_fifo_tx_wr_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_tx_wr_data[3]~feeder_combout\ = r_fifo_data_out(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_data_out(3),
	combout => \r_fifo_tx_wr_data[3]~feeder_combout\);

-- Location: FF_X106_Y55_N27
\r_fifo_tx_wr_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_tx_wr_data[3]~feeder_combout\,
	ena => \r_fifo_tx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_tx_wr_data(3));

-- Location: LCCOMB_X106_Y51_N24
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (!\r_sm_main.s_clear~q\ & \fifo_rx|r_fifo_data~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm_main.s_clear~q\,
	datad => \fifo_rx|r_fifo_data~20_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X106_Y51_N25
\r_fifo_data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	ena => \r_fifo_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_in(4));

-- Location: LCCOMB_X106_Y51_N20
\r_data_in[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data_in[4]~feeder_combout\ = r_fifo_data_in(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_data_in(4),
	combout => \r_data_in[4]~feeder_combout\);

-- Location: FF_X106_Y51_N21
\r_data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_data_in[4]~feeder_combout\,
	clrn => \i_rst~input_o\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_in(4));

-- Location: LCCOMB_X106_Y51_N10
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (r_data_in(4) & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_data_in(4),
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X106_Y52_N5
\p_calculus_fsm:aux[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Selector21~0_combout\,
	sload => VCC,
	ena => \p_calculus_fsm:aux[-7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_calculus_fsm:aux[-3]~q\);

-- Location: LCCOMB_X106_Y52_N0
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\p_calculus_fsm:aux[-3]~q\ & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p_calculus_fsm:aux[-3]~q\,
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector29~0_combout\);

-- Location: FF_X106_Y52_N1
\r_fifo_data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector29~0_combout\,
	ena => \r_fifo_data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_out(4));

-- Location: LCCOMB_X106_Y55_N28
\r_fifo_tx_wr_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_tx_wr_data[4]~feeder_combout\ = r_fifo_data_out(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_data_out(4),
	combout => \r_fifo_tx_wr_data[4]~feeder_combout\);

-- Location: FF_X106_Y55_N29
\r_fifo_tx_wr_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_tx_wr_data[4]~feeder_combout\,
	ena => \r_fifo_tx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_tx_wr_data(4));

-- Location: LCCOMB_X106_Y51_N26
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\r_sm_main.s_clear~q\ & \fifo_rx|r_fifo_data~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm_main.s_clear~q\,
	datad => \fifo_rx|r_fifo_data~21_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X106_Y51_N27
\r_fifo_data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	ena => \r_fifo_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_in(5));

-- Location: FF_X106_Y51_N31
\r_data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_data_in(5),
	clrn => \i_rst~input_o\,
	sload => VCC,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_in(5));

-- Location: LCCOMB_X106_Y52_N26
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (r_data_in(5) & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_data_in(5),
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X106_Y52_N27
\p_calculus_fsm:aux[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \p_calculus_fsm:aux[-7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_calculus_fsm:aux[-2]~q\);

-- Location: LCCOMB_X106_Y52_N10
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\p_calculus_fsm:aux[-2]~q\ & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p_calculus_fsm:aux[-2]~q\,
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector28~0_combout\);

-- Location: FF_X106_Y52_N11
\r_fifo_data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector28~0_combout\,
	ena => \r_fifo_data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_out(5));

-- Location: LCCOMB_X106_Y55_N18
\r_fifo_tx_wr_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_tx_wr_data[5]~feeder_combout\ = r_fifo_data_out(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_data_out(5),
	combout => \r_fifo_tx_wr_data[5]~feeder_combout\);

-- Location: FF_X106_Y55_N19
\r_fifo_tx_wr_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_tx_wr_data[5]~feeder_combout\,
	ena => \r_fifo_tx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_tx_wr_data(5));

-- Location: LCCOMB_X106_Y51_N12
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\r_sm_main.s_clear~q\ & \fifo_rx|r_fifo_data~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm_main.s_clear~q\,
	datad => \fifo_rx|r_fifo_data~22_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X106_Y51_N13
\r_fifo_data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	ena => \r_fifo_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_in(6));

-- Location: LCCOMB_X106_Y51_N0
\r_data_in[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data_in[6]~feeder_combout\ = r_fifo_data_in(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_data_in(6),
	combout => \r_data_in[6]~feeder_combout\);

-- Location: FF_X106_Y51_N1
\r_data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_data_in[6]~feeder_combout\,
	clrn => \i_rst~input_o\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_in(6));

-- Location: LCCOMB_X106_Y52_N8
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (r_data_in(6) & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_data_in(6),
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X106_Y52_N9
\p_calculus_fsm:aux[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \p_calculus_fsm:aux[-7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_calculus_fsm:aux[-1]~q\);

-- Location: LCCOMB_X106_Y52_N16
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\p_calculus_fsm:aux[-1]~q\ & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p_calculus_fsm:aux[-1]~q\,
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector27~0_combout\);

-- Location: FF_X106_Y52_N17
\r_fifo_data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector27~0_combout\,
	ena => \r_fifo_data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_out(6));

-- Location: LCCOMB_X106_Y55_N4
\r_fifo_tx_wr_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_tx_wr_data[6]~feeder_combout\ = r_fifo_data_out(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_data_out(6),
	combout => \r_fifo_tx_wr_data[6]~feeder_combout\);

-- Location: FF_X106_Y55_N5
\r_fifo_tx_wr_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_tx_wr_data[6]~feeder_combout\,
	ena => \r_fifo_tx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_tx_wr_data(6));

-- Location: LCCOMB_X107_Y51_N2
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\r_sm_main.s_clear~q\ & \fifo_rx|r_fifo_data~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm_main.s_clear~q\,
	datad => \fifo_rx|r_fifo_data~23_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X107_Y51_N3
\r_fifo_data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \r_fifo_data_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_in(7));

-- Location: LCCOMB_X106_Y51_N18
\r_data_in[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data_in[7]~feeder_combout\ = r_fifo_data_in(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_data_in(7),
	combout => \r_data_in[7]~feeder_combout\);

-- Location: FF_X106_Y51_N19
\r_data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_data_in[7]~feeder_combout\,
	clrn => \i_rst~input_o\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_in(7));

-- Location: LCCOMB_X106_Y52_N22
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (r_data_in(7) & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data_in(7),
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X106_Y52_N23
\p_calculus_fsm:aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \p_calculus_fsm:aux[-7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_calculus_fsm:aux[0]~q\);

-- Location: LCCOMB_X106_Y52_N2
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\p_calculus_fsm:aux[0]~q\ & !\r_sm_main.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p_calculus_fsm:aux[0]~q\,
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector26~0_combout\);

-- Location: FF_X106_Y52_N3
\r_fifo_data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	ena => \r_fifo_data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_out(7));

-- Location: LCCOMB_X106_Y55_N14
\r_fifo_tx_wr_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_tx_wr_data[7]~feeder_combout\ = r_fifo_data_out(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_data_out(7),
	combout => \r_fifo_tx_wr_data[7]~feeder_combout\);

-- Location: FF_X106_Y55_N15
\r_fifo_tx_wr_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_tx_wr_data[7]~feeder_combout\,
	ena => \r_fifo_tx_wr_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_tx_wr_data(7));

-- Location: M9K_X104_Y55_N0
\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/simple_operations.ram0_fifo_1ff8f9ef.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fifo:fifo_tx|altsyncram:r_fifo_data_rtl_0|altsyncram_noh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 10,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 10,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \fifo_tx|r_fifo_data~24_combout\,
	portbre => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	portadatain => \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X108_Y55_N5
\fifo_tx|r_fifo_data_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(0));

-- Location: FF_X103_Y55_N17
\fifo_tx|r_fifo_data_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \fifo_tx|r_rd_index~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(4));

-- Location: LCCOMB_X107_Y55_N18
\fifo_tx|r_fifo_data_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\ = \fifo_tx|r_wr_index\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_tx|r_wr_index\(1),
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X107_Y55_N19
\fifo_tx|r_fifo_data_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(3));

-- Location: FF_X107_Y55_N25
\fifo_tx|r_fifo_data_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \fifo_tx|r_rd_index~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(2));

-- Location: LCCOMB_X107_Y55_N28
\fifo_tx|r_fifo_data_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[1]~feeder_combout\ = \fifo_tx|r_wr_index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_tx|r_wr_index\(0),
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X107_Y55_N29
\fifo_tx|r_fifo_data_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(1));

-- Location: LCCOMB_X107_Y55_N24
\fifo_tx|r_fifo_data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data~13_combout\ = (\fifo_tx|r_fifo_data_rtl_0_bypass\(4) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(3) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(2) $ (!\fifo_tx|r_fifo_data_rtl_0_bypass\(1))))) # (!\fifo_tx|r_fifo_data_rtl_0_bypass\(4) & 
-- (!\fifo_tx|r_fifo_data_rtl_0_bypass\(3) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(2) $ (!\fifo_tx|r_fifo_data_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_fifo_data_rtl_0_bypass\(4),
	datab => \fifo_tx|r_fifo_data_rtl_0_bypass\(3),
	datac => \fifo_tx|r_fifo_data_rtl_0_bypass\(2),
	datad => \fifo_tx|r_fifo_data_rtl_0_bypass\(1),
	combout => \fifo_tx|r_fifo_data~13_combout\);

-- Location: FF_X103_Y55_N11
\fifo_tx|r_fifo_data_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \fifo_tx|r_rd_index~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(8));

-- Location: LCCOMB_X103_Y55_N20
\fifo_tx|r_fifo_data_rtl_0_bypass[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[6]~feeder_combout\ = \fifo_tx|r_rd_index~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_tx|r_rd_index~5_combout\,
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X103_Y55_N21
\fifo_tx|r_fifo_data_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(6));

-- Location: FF_X107_Y55_N3
\fifo_tx|r_fifo_data_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \fifo_tx|r_wr_index\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(5));

-- Location: LCCOMB_X107_Y55_N20
\fifo_tx|r_fifo_data_rtl_0_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[7]~feeder_combout\ = \fifo_tx|r_wr_index\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_tx|r_wr_index\(3),
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[7]~feeder_combout\);

-- Location: FF_X107_Y55_N21
\fifo_tx|r_fifo_data_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(7));

-- Location: LCCOMB_X107_Y55_N2
\fifo_tx|r_fifo_data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data~14_combout\ = (\fifo_tx|r_fifo_data_rtl_0_bypass\(8) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(7) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(6) $ (!\fifo_tx|r_fifo_data_rtl_0_bypass\(5))))) # (!\fifo_tx|r_fifo_data_rtl_0_bypass\(8) & 
-- (!\fifo_tx|r_fifo_data_rtl_0_bypass\(7) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(6) $ (!\fifo_tx|r_fifo_data_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_fifo_data_rtl_0_bypass\(8),
	datab => \fifo_tx|r_fifo_data_rtl_0_bypass\(6),
	datac => \fifo_tx|r_fifo_data_rtl_0_bypass\(5),
	datad => \fifo_tx|r_fifo_data_rtl_0_bypass\(7),
	combout => \fifo_tx|r_fifo_data~14_combout\);

-- Location: LCCOMB_X107_Y55_N26
\fifo_tx|r_fifo_data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data~15_combout\ = (\fifo_tx|r_fifo_data_rtl_0_bypass\(0) & (\fifo_tx|r_fifo_data~13_combout\ & \fifo_tx|r_fifo_data~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_fifo_data_rtl_0_bypass\(0),
	datab => \fifo_tx|r_fifo_data~13_combout\,
	datad => \fifo_tx|r_fifo_data~14_combout\,
	combout => \fifo_tx|r_fifo_data~15_combout\);

-- Location: LCCOMB_X103_Y55_N6
\fifo_tx|r_fifo_data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data~16_combout\ = (\fifo_tx|r_fifo_data_rtl_0_bypass\(10) & ((\fifo_tx|r_fifo_data~15_combout\ & (\fifo_tx|r_fifo_data_rtl_0_bypass\(9))) # (!\fifo_tx|r_fifo_data~15_combout\ & 
-- ((\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\))))) # (!\fifo_tx|r_fifo_data_rtl_0_bypass\(10) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_fifo_data_rtl_0_bypass\(10),
	datab => \fifo_tx|r_fifo_data_rtl_0_bypass\(9),
	datac => \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \fifo_tx|r_fifo_data~15_combout\,
	combout => \fifo_tx|r_fifo_data~16_combout\);

-- Location: LCCOMB_X106_Y55_N0
\fifo_tx|r_fifo_data_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\ = r_fifo_tx_wr_data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_tx_wr_data(1),
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X106_Y55_N1
\fifo_tx|r_fifo_data_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(11));

-- Location: LCCOMB_X105_Y57_N28
\fifo_tx|r_fifo_data_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X105_Y57_N29
\fifo_tx|r_fifo_data_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(12));

-- Location: LCCOMB_X105_Y55_N18
\fifo_tx|r_fifo_data~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data~17_combout\ = (\fifo_tx|r_fifo_data~15_combout\ & (\fifo_tx|r_fifo_data_rtl_0_bypass\(11))) # (!\fifo_tx|r_fifo_data~15_combout\ & ((\fifo_tx|r_fifo_data_rtl_0_bypass\(12) & ((\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\))) 
-- # (!\fifo_tx|r_fifo_data_rtl_0_bypass\(12) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_fifo_data~15_combout\,
	datab => \fifo_tx|r_fifo_data_rtl_0_bypass\(11),
	datac => \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\,
	datad => \fifo_tx|r_fifo_data_rtl_0_bypass\(12),
	combout => \fifo_tx|r_fifo_data~17_combout\);

-- Location: LCCOMB_X106_Y55_N22
\fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\ = r_fifo_tx_wr_data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_tx_wr_data(2),
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X106_Y55_N23
\fifo_tx|r_fifo_data_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(13));

-- Location: LCCOMB_X103_Y55_N24
\fifo_tx|r_fifo_data_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X103_Y55_N25
\fifo_tx|r_fifo_data_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(14));

-- Location: LCCOMB_X105_Y55_N20
\fifo_tx|r_fifo_data~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data~18_combout\ = (\fifo_tx|r_fifo_data~15_combout\ & (\fifo_tx|r_fifo_data_rtl_0_bypass\(13))) # (!\fifo_tx|r_fifo_data~15_combout\ & ((\fifo_tx|r_fifo_data_rtl_0_bypass\(14) & ((\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\))) 
-- # (!\fifo_tx|r_fifo_data_rtl_0_bypass\(14) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_fifo_data~15_combout\,
	datab => \fifo_tx|r_fifo_data_rtl_0_bypass\(13),
	datac => \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\,
	datad => \fifo_tx|r_fifo_data_rtl_0_bypass\(14),
	combout => \fifo_tx|r_fifo_data~18_combout\);

-- Location: LCCOMB_X105_Y56_N16
\fifo_tx|r_fifo_data_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X105_Y56_N17
\fifo_tx|r_fifo_data_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(16));

-- Location: FF_X106_Y55_N13
\fifo_tx|r_fifo_data_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_tx_wr_data(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(15));

-- Location: LCCOMB_X105_Y55_N14
\fifo_tx|r_fifo_data~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data~19_combout\ = (\fifo_tx|r_fifo_data_rtl_0_bypass\(16) & ((\fifo_tx|r_fifo_data~15_combout\ & (\fifo_tx|r_fifo_data_rtl_0_bypass\(15))) # (!\fifo_tx|r_fifo_data~15_combout\ & 
-- ((\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\))))) # (!\fifo_tx|r_fifo_data_rtl_0_bypass\(16) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_fifo_data_rtl_0_bypass\(16),
	datab => \fifo_tx|r_fifo_data_rtl_0_bypass\(15),
	datac => \fifo_tx|r_fifo_data~15_combout\,
	datad => \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\,
	combout => \fifo_tx|r_fifo_data~19_combout\);

-- Location: LCCOMB_X105_Y56_N26
\fifo_tx|r_fifo_data_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X105_Y56_N27
\fifo_tx|r_fifo_data_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(18));

-- Location: LCCOMB_X106_Y55_N2
\fifo_tx|r_fifo_data_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\ = r_fifo_tx_wr_data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_tx_wr_data(4),
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X106_Y55_N3
\fifo_tx|r_fifo_data_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(17));

-- Location: LCCOMB_X105_Y55_N30
\fifo_tx|r_fifo_data~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data~20_combout\ = (\fifo_tx|r_fifo_data_rtl_0_bypass\(18) & ((\fifo_tx|r_fifo_data~15_combout\ & (\fifo_tx|r_fifo_data_rtl_0_bypass\(17))) # (!\fifo_tx|r_fifo_data~15_combout\ & 
-- ((\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\))))) # (!\fifo_tx|r_fifo_data_rtl_0_bypass\(18) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_fifo_data_rtl_0_bypass\(18),
	datab => \fifo_tx|r_fifo_data_rtl_0_bypass\(17),
	datac => \fifo_tx|r_fifo_data~15_combout\,
	datad => \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\,
	combout => \fifo_tx|r_fifo_data~20_combout\);

-- Location: LCCOMB_X106_Y55_N30
\fifo_tx|r_fifo_data_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X106_Y55_N31
\fifo_tx|r_fifo_data_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(20));

-- Location: LCCOMB_X106_Y55_N24
\fifo_tx|r_fifo_data_rtl_0_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\ = r_fifo_tx_wr_data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_fifo_tx_wr_data(5),
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X106_Y55_N25
\fifo_tx|r_fifo_data_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(19));

-- Location: LCCOMB_X105_Y55_N22
\fifo_tx|r_fifo_data~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data~21_combout\ = (\fifo_tx|r_fifo_data_rtl_0_bypass\(20) & ((\fifo_tx|r_fifo_data~15_combout\ & (\fifo_tx|r_fifo_data_rtl_0_bypass\(19))) # (!\fifo_tx|r_fifo_data~15_combout\ & 
-- ((\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\))))) # (!\fifo_tx|r_fifo_data_rtl_0_bypass\(20) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_fifo_data_rtl_0_bypass\(20),
	datab => \fifo_tx|r_fifo_data_rtl_0_bypass\(19),
	datac => \fifo_tx|r_fifo_data~15_combout\,
	datad => \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\,
	combout => \fifo_tx|r_fifo_data~21_combout\);

-- Location: FF_X106_Y55_N21
\fifo_tx|r_fifo_data_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_tx_wr_data(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(21));

-- Location: LCCOMB_X105_Y56_N8
\fifo_tx|r_fifo_data_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X105_Y56_N9
\fifo_tx|r_fifo_data_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(22));

-- Location: LCCOMB_X105_Y55_N10
\fifo_tx|r_fifo_data~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data~22_combout\ = (\fifo_tx|r_fifo_data_rtl_0_bypass\(22) & ((\fifo_tx|r_fifo_data~15_combout\ & (\fifo_tx|r_fifo_data_rtl_0_bypass\(21))) # (!\fifo_tx|r_fifo_data~15_combout\ & 
-- ((\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\))))) # (!\fifo_tx|r_fifo_data_rtl_0_bypass\(22) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_fifo_data_rtl_0_bypass\(21),
	datab => \fifo_tx|r_fifo_data_rtl_0_bypass\(22),
	datac => \fifo_tx|r_fifo_data~15_combout\,
	datad => \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\,
	combout => \fifo_tx|r_fifo_data~22_combout\);

-- Location: FF_X106_Y55_N7
\fifo_tx|r_fifo_data_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_fifo_tx_wr_data(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(23));

-- Location: LCCOMB_X105_Y56_N30
\fifo_tx|r_fifo_data_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \fifo_tx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X105_Y56_N31
\fifo_tx|r_fifo_data_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tx|r_fifo_data_rtl_0_bypass\(24));

-- Location: LCCOMB_X105_Y55_N4
\fifo_tx|r_fifo_data~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tx|r_fifo_data~23_combout\ = (\fifo_tx|r_fifo_data_rtl_0_bypass\(24) & ((\fifo_tx|r_fifo_data~15_combout\ & (\fifo_tx|r_fifo_data_rtl_0_bypass\(23))) # (!\fifo_tx|r_fifo_data~15_combout\ & 
-- ((\fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\))))) # (!\fifo_tx|r_fifo_data_rtl_0_bypass\(24) & (\fifo_tx|r_fifo_data_rtl_0_bypass\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tx|r_fifo_data_rtl_0_bypass\(23),
	datab => \fifo_tx|r_fifo_data_rtl_0_bypass\(24),
	datac => \fifo_tx|r_fifo_data~15_combout\,
	datad => \fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\,
	combout => \fifo_tx|r_fifo_data~23_combout\);

-- Location: LCCOMB_X105_Y57_N22
\transmitter|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector0~0_combout\ = (\transmitter|r_sm_main.s_tx_start_bit~q\) # ((\transmitter|o_tx_active~q\ & ((\transmitter|r_sm_main.s_tx_data_bits~q\) # (\transmitter|r_sm_main.s_tx_stop_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_tx_start_bit~q\,
	datab => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \transmitter|o_tx_active~q\,
	datad => \transmitter|r_sm_main.s_tx_stop_bit~q\,
	combout => \transmitter|Selector0~0_combout\);

-- Location: FF_X105_Y57_N23
\transmitter|o_tx_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|o_tx_active~q\);

-- Location: FF_X105_Y55_N23
\r_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data~21_combout\,
	ena => \fifo_tx|ALT_INV_Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(5));

-- Location: LCCOMB_X105_Y55_N28
\transmitter|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector20~1_combout\ = (!\transmitter|r_sm_main.s_idle~q\ & \r_tx_dv~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \transmitter|r_sm_main.s_idle~q\,
	datad => \r_tx_dv~q\,
	combout => \transmitter|Selector20~1_combout\);

-- Location: FF_X105_Y55_N1
\transmitter|r_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_tx_data(5),
	sload => VCC,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(5));

-- Location: FF_X105_Y55_N31
\r_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data~20_combout\,
	ena => \fifo_tx|ALT_INV_Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(4));

-- Location: FF_X105_Y55_N13
\transmitter|r_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_tx_data(4),
	sload => VCC,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(4));

-- Location: LCCOMB_X105_Y55_N12
\transmitter|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Mux0~0_combout\ = (\transmitter|r_bit_index\(0) & ((\transmitter|r_tx_data\(5)) # ((\transmitter|r_bit_index\(1))))) # (!\transmitter|r_bit_index\(0) & (((\transmitter|r_tx_data\(4) & !\transmitter|r_bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_bit_index\(0),
	datab => \transmitter|r_tx_data\(5),
	datac => \transmitter|r_tx_data\(4),
	datad => \transmitter|r_bit_index\(1),
	combout => \transmitter|Mux0~0_combout\);

-- Location: FF_X105_Y55_N11
\r_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data~22_combout\,
	ena => \fifo_tx|ALT_INV_Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(6));

-- Location: LCCOMB_X105_Y55_N16
\transmitter|r_tx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_tx_data[6]~feeder_combout\ = r_tx_data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_tx_data(6),
	combout => \transmitter|r_tx_data[6]~feeder_combout\);

-- Location: FF_X105_Y55_N17
\transmitter|r_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_tx_data[6]~feeder_combout\,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(6));

-- Location: FF_X105_Y55_N5
\r_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data~23_combout\,
	ena => \fifo_tx|ALT_INV_Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(7));

-- Location: FF_X105_Y55_N25
\transmitter|r_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_tx_data(7),
	sload => VCC,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(7));

-- Location: LCCOMB_X105_Y55_N24
\transmitter|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Mux0~1_combout\ = (\transmitter|Mux0~0_combout\ & (((\transmitter|r_tx_data\(7)) # (!\transmitter|r_bit_index\(1))))) # (!\transmitter|Mux0~0_combout\ & (\transmitter|r_tx_data\(6) & ((\transmitter|r_bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|Mux0~0_combout\,
	datab => \transmitter|r_tx_data\(6),
	datac => \transmitter|r_tx_data\(7),
	datad => \transmitter|r_bit_index\(1),
	combout => \transmitter|Mux0~1_combout\);

-- Location: LCCOMB_X105_Y57_N24
\transmitter|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector1~0_combout\ = ((\transmitter|r_bit_index\(2) & (\transmitter|r_sm_main.s_tx_data_bits~q\ & \transmitter|Mux0~1_combout\))) # (!\transmitter|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_idle~q\,
	datab => \transmitter|r_bit_index\(2),
	datac => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datad => \transmitter|Mux0~1_combout\,
	combout => \transmitter|Selector1~0_combout\);

-- Location: FF_X105_Y55_N21
\r_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data~18_combout\,
	ena => \fifo_tx|ALT_INV_Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(2));

-- Location: LCCOMB_X105_Y55_N26
\transmitter|r_tx_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_tx_data[2]~feeder_combout\ = r_tx_data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_tx_data(2),
	combout => \transmitter|r_tx_data[2]~feeder_combout\);

-- Location: FF_X105_Y55_N27
\transmitter|r_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_tx_data[2]~feeder_combout\,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(2));

-- Location: FF_X103_Y55_N7
\r_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data~16_combout\,
	ena => \fifo_tx|ALT_INV_Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(0));

-- Location: FF_X105_Y55_N3
\transmitter|r_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_tx_data(0),
	sload => VCC,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(0));

-- Location: FF_X105_Y55_N19
\r_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data~17_combout\,
	ena => \fifo_tx|ALT_INV_Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(1));

-- Location: LCCOMB_X105_Y55_N6
\transmitter|r_tx_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_tx_data[1]~feeder_combout\ = r_tx_data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_tx_data(1),
	combout => \transmitter|r_tx_data[1]~feeder_combout\);

-- Location: FF_X105_Y55_N7
\transmitter|r_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|r_tx_data[1]~feeder_combout\,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(1));

-- Location: LCCOMB_X105_Y55_N2
\transmitter|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Mux0~2_combout\ = (\transmitter|r_bit_index\(0) & ((\transmitter|r_bit_index\(1)) # ((\transmitter|r_tx_data\(1))))) # (!\transmitter|r_bit_index\(0) & (!\transmitter|r_bit_index\(1) & (\transmitter|r_tx_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_bit_index\(0),
	datab => \transmitter|r_bit_index\(1),
	datac => \transmitter|r_tx_data\(0),
	datad => \transmitter|r_tx_data\(1),
	combout => \transmitter|Mux0~2_combout\);

-- Location: FF_X105_Y55_N15
\r_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_tx|r_fifo_data~19_combout\,
	ena => \fifo_tx|ALT_INV_Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(3));

-- Location: FF_X105_Y55_N9
\transmitter|r_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_tx_data(3),
	sload => VCC,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(3));

-- Location: LCCOMB_X105_Y55_N8
\transmitter|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Mux0~3_combout\ = (\transmitter|Mux0~2_combout\ & (((\transmitter|r_tx_data\(3)) # (!\transmitter|r_bit_index\(1))))) # (!\transmitter|Mux0~2_combout\ & (\transmitter|r_tx_data\(2) & ((\transmitter|r_bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_tx_data\(2),
	datab => \transmitter|Mux0~2_combout\,
	datac => \transmitter|r_tx_data\(3),
	datad => \transmitter|r_bit_index\(1),
	combout => \transmitter|Mux0~3_combout\);

-- Location: LCCOMB_X105_Y57_N18
\transmitter|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector1~1_combout\ = (\transmitter|r_sm_main.s_tx_stop_bit~q\) # ((\transmitter|Mux0~3_combout\ & (\transmitter|r_sm_main.s_tx_data_bits~q\ & !\transmitter|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|Mux0~3_combout\,
	datab => \transmitter|r_sm_main.s_tx_stop_bit~q\,
	datac => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datad => \transmitter|r_bit_index\(2),
	combout => \transmitter|Selector1~1_combout\);

-- Location: LCCOMB_X105_Y57_N20
\transmitter|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector1~2_combout\ = (\transmitter|Selector1~0_combout\) # ((\transmitter|Selector1~1_combout\) # ((\transmitter|r_sm_main.s_cleanup~q\ & \transmitter|o_tx_serial~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_cleanup~q\,
	datab => \transmitter|Selector1~0_combout\,
	datac => \transmitter|o_tx_serial~q\,
	datad => \transmitter|Selector1~1_combout\,
	combout => \transmitter|Selector1~2_combout\);

-- Location: FF_X105_Y57_N21
\transmitter|o_tx_serial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \transmitter|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|o_tx_serial~q\);

-- Location: IOIBUF_X11_Y73_N8
\i_fifo_rx_wr_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_rx_wr_en,
	o => \i_fifo_rx_wr_en~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\i_fifo_rx_wr_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_rx_wr_data(0),
	o => \i_fifo_rx_wr_data[0]~input_o\);

-- Location: IOIBUF_X115_Y8_N22
\i_fifo_rx_wr_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_rx_wr_data(1),
	o => \i_fifo_rx_wr_data[1]~input_o\);

-- Location: IOIBUF_X115_Y32_N8
\i_fifo_rx_wr_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_rx_wr_data(2),
	o => \i_fifo_rx_wr_data[2]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\i_fifo_rx_wr_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_rx_wr_data(3),
	o => \i_fifo_rx_wr_data[3]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\i_fifo_rx_wr_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_rx_wr_data(4),
	o => \i_fifo_rx_wr_data[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\i_fifo_rx_wr_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_rx_wr_data(5),
	o => \i_fifo_rx_wr_data[5]~input_o\);

-- Location: IOIBUF_X115_Y62_N15
\i_fifo_rx_wr_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_rx_wr_data(6),
	o => \i_fifo_rx_wr_data[6]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\i_fifo_rx_wr_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_rx_wr_data(7),
	o => \i_fifo_rx_wr_data[7]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\i_fifo_rx_rd_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_rx_rd_en,
	o => \i_fifo_rx_rd_en~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\i_fifo_tx_wr_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_tx_wr_en,
	o => \i_fifo_tx_wr_en~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\i_fifo_tx_wr_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_tx_wr_data(0),
	o => \i_fifo_tx_wr_data[0]~input_o\);

-- Location: IOIBUF_X115_Y22_N22
\i_fifo_tx_wr_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_tx_wr_data(1),
	o => \i_fifo_tx_wr_data[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\i_fifo_tx_wr_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_tx_wr_data(2),
	o => \i_fifo_tx_wr_data[2]~input_o\);

-- Location: IOIBUF_X107_Y0_N8
\i_fifo_tx_wr_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_tx_wr_data(3),
	o => \i_fifo_tx_wr_data[3]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\i_fifo_tx_wr_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_tx_wr_data(4),
	o => \i_fifo_tx_wr_data[4]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\i_fifo_tx_wr_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_tx_wr_data(5),
	o => \i_fifo_tx_wr_data[5]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\i_fifo_tx_wr_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_tx_wr_data(6),
	o => \i_fifo_tx_wr_data[6]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\i_fifo_tx_wr_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_tx_wr_data(7),
	o => \i_fifo_tx_wr_data[7]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\i_fifo_tx_rd_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fifo_tx_rd_en,
	o => \i_fifo_tx_rd_en~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\i_tx_dv~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_tx_dv,
	o => \i_tx_dv~input_o\);

-- Location: IOIBUF_X115_Y69_N22
\tx_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(0),
	o => \tx_data[0]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\tx_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(1),
	o => \tx_data[1]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\tx_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(2),
	o => \tx_data[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\tx_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(3),
	o => \tx_data[3]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\tx_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(4),
	o => \tx_data[4]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\tx_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(5),
	o => \tx_data[5]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\tx_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(6),
	o => \tx_data[6]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\tx_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(7),
	o => \tx_data[7]~input_o\);

ww_o_status(0) <= \o_status[0]~output_o\;

ww_o_status(1) <= \o_status[1]~output_o\;

ww_o_status(2) <= \o_status[2]~output_o\;

ww_o_status(3) <= \o_status[3]~output_o\;

ww_o_fifo_rx_full <= \o_fifo_rx_full~output_o\;

ww_o_fifo_rx_rd_data(0) <= \o_fifo_rx_rd_data[0]~output_o\;

ww_o_fifo_rx_rd_data(1) <= \o_fifo_rx_rd_data[1]~output_o\;

ww_o_fifo_rx_rd_data(2) <= \o_fifo_rx_rd_data[2]~output_o\;

ww_o_fifo_rx_rd_data(3) <= \o_fifo_rx_rd_data[3]~output_o\;

ww_o_fifo_rx_rd_data(4) <= \o_fifo_rx_rd_data[4]~output_o\;

ww_o_fifo_rx_rd_data(5) <= \o_fifo_rx_rd_data[5]~output_o\;

ww_o_fifo_rx_rd_data(6) <= \o_fifo_rx_rd_data[6]~output_o\;

ww_o_fifo_rx_rd_data(7) <= \o_fifo_rx_rd_data[7]~output_o\;

ww_o_fifo_rx_empty <= \o_fifo_rx_empty~output_o\;

ww_o_fifo_tx_full <= \o_fifo_tx_full~output_o\;

ww_o_fifo_tx_rd_data(0) <= \o_fifo_tx_rd_data[0]~output_o\;

ww_o_fifo_tx_rd_data(1) <= \o_fifo_tx_rd_data[1]~output_o\;

ww_o_fifo_tx_rd_data(2) <= \o_fifo_tx_rd_data[2]~output_o\;

ww_o_fifo_tx_rd_data(3) <= \o_fifo_tx_rd_data[3]~output_o\;

ww_o_fifo_tx_rd_data(4) <= \o_fifo_tx_rd_data[4]~output_o\;

ww_o_fifo_tx_rd_data(5) <= \o_fifo_tx_rd_data[5]~output_o\;

ww_o_fifo_tx_rd_data(6) <= \o_fifo_tx_rd_data[6]~output_o\;

ww_o_fifo_tx_rd_data(7) <= \o_fifo_tx_rd_data[7]~output_o\;

ww_o_fifo_tx_empty <= \o_fifo_tx_empty~output_o\;

ww_o_tx_active <= \o_tx_active~output_o\;

ww_o_tx_serial <= \o_tx_serial~output_o\;

ww_o_tx_done <= \o_tx_done~output_o\;

ww_o_rx_dv <= \o_rx_dv~output_o\;

ww_rx_data(0) <= \rx_data[0]~output_o\;

ww_rx_data(1) <= \rx_data[1]~output_o\;

ww_rx_data(2) <= \rx_data[2]~output_o\;

ww_rx_data(3) <= \rx_data[3]~output_o\;

ww_rx_data(4) <= \rx_data[4]~output_o\;

ww_rx_data(5) <= \rx_data[5]~output_o\;

ww_rx_data(6) <= \rx_data[6]~output_o\;

ww_rx_data(7) <= \rx_data[7]~output_o\;
END structure;


