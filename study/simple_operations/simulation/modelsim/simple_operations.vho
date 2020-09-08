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

-- DATE "09/08/2020 14:49:23"

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
	i_rx : IN std_logic;
	o_rx_full : OUT std_logic;
	o_rx_empty : OUT std_logic;
	o_tx : OUT std_logic;
	o_tx_full : OUT std_logic;
	o_tx_empty : OUT std_logic;
	o_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END simple_operations;

-- Design Ports Information
-- o_rx_full	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_rx_empty	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tx	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tx_full	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tx_empty	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst_sync	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rx	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_i_rx : std_logic;
SIGNAL ww_o_rx_full : std_logic;
SIGNAL ww_o_rx_empty : std_logic;
SIGNAL ww_o_tx : std_logic;
SIGNAL ww_o_tx_full : std_logic;
SIGNAL ww_o_tx_empty : std_logic;
SIGNAL ww_o_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_rx_full~output_o\ : std_logic;
SIGNAL \o_rx_empty~output_o\ : std_logic;
SIGNAL \o_tx~output_o\ : std_logic;
SIGNAL \o_tx_full~output_o\ : std_logic;
SIGNAL \o_tx_empty~output_o\ : std_logic;
SIGNAL \o_data[0]~output_o\ : std_logic;
SIGNAL \o_data[1]~output_o\ : std_logic;
SIGNAL \o_data[2]~output_o\ : std_logic;
SIGNAL \o_data[3]~output_o\ : std_logic;
SIGNAL \o_data[4]~output_o\ : std_logic;
SIGNAL \o_data[5]~output_o\ : std_logic;
SIGNAL \o_data[6]~output_o\ : std_logic;
SIGNAL \o_data[7]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[0]~13_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector14~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector16~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector14~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector15~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector15~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector14~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector14~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector19~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Equal0~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[10]~39_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Equal0~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Equal0~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[10]~40_combout\ : std_logic;
SIGNAL \i_rx~input_o\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_data_r~q\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_data~q\ : std_logic;
SIGNAL \uart_unit|receiver|Selector19~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ : std_logic;
SIGNAL \uart_unit|receiver|Selector0~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[10]~41_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Equal0~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[10]~42_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[0]~14\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[1]~15_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[1]~16\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[2]~17_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[2]~18\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[3]~19_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[3]~20\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[4]~21_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[4]~22\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[5]~23_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[5]~24\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[6]~25_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[6]~26\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[7]~27_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[7]~28\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[8]~29_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[8]~30\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[9]~31_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[9]~32\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[10]~33_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[10]~34\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[11]~35_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[11]~36\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[12]~37_combout\ : std_logic;
SIGNAL \uart_unit|receiver|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|LessThan1~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|LessThan1~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~8_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_stop_bit~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main~7_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \uart_unit|receiver|Selector17~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_idle~q\ : std_logic;
SIGNAL \uart_unit|receiver|Selector18~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_start_bit~q\ : std_logic;
SIGNAL \uart_unit|receiver|Selector0~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_dv~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[0]~5_combout\ : std_logic;
SIGNAL \i_rst_sync~input_o\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[2]~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[0]~6\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[1]~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[1]~8\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[2]~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[2]~10\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[3]~12\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[4]~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Equal2~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Equal3~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[0]~13_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main~7_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[0]~5_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \i_rst~input_o\ : std_logic;
SIGNAL \r_sm_main.s_get_fifo_data~q\ : std_logic;
SIGNAL \r_sm_main.s_calculus~feeder_combout\ : std_logic;
SIGNAL \r_sm_main.s_calculus~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[1]~8\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[2]~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[2]~10\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[3]~12\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[4]~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Equal3~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Equal2~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \r_sm_main.s_put_fifo_data~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \r_wr_tx~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[2]~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[0]~6\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[1]~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Equal3~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector19~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main.s_idle~q\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[7]~35_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[0]~14\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[1]~15_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[1]~16\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[2]~17_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[2]~18\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[3]~19_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[3]~20\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[4]~21_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[4]~22\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[5]~23_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[5]~24\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[6]~25_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[6]~26\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[7]~27_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[7]~28\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[8]~29_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[8]~30\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[9]~31_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[9]~32\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[10]~33_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[10]~34\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[11]~36_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|LessThan1~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|LessThan1~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[11]~37\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[12]~38_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|LessThan1~3_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector20~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector18~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector18~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector17~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector17~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector21~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector2~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector2~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_tx_done~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|p_control~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[3]~11_combout\ : std_logic;
SIGNAL \r_tx_data[0]~0_combout\ : std_logic;
SIGNAL \r_sm_main.s_clear~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \r_sm_main.s_idle~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \r_rd_rx~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|p_control~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[3]~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Equal2~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_wr_index~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_wr_index[3]~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_wr_index[3]~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_wr_index~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add2~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_wr_index~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add2~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_wr_index~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Equal1~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add3~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add3~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~24_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~15_combout\ : std_logic;
SIGNAL \r_data[0]~8_combout\ : std_logic;
SIGNAL \r_data[0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[0]~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index[3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index[1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add3~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|p_control~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Equal1~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add3~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index[1]~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index[1]~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add2~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index[1]~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add2~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~24_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~15_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[1]~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[2]~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~4_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[3]~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~5_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[4]~4_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~6_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[5]~5_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~7_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[6]~6_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[7]~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~16_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \r_data[0]~9\ : std_logic;
SIGNAL \r_data[1]~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~17_combout\ : std_logic;
SIGNAL \r_data[1]~11\ : std_logic;
SIGNAL \r_data[2]~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~18_combout\ : std_logic;
SIGNAL \r_data[2]~13\ : std_logic;
SIGNAL \r_data[3]~14_combout\ : std_logic;
SIGNAL \r_data[3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~19_combout\ : std_logic;
SIGNAL \r_tx_data[0]~1_combout\ : std_logic;
SIGNAL \r_tx_data[0]~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \r_tx_data[0]~feeder_combout\ : std_logic;
SIGNAL \r_tx_data[1]~feeder_combout\ : std_logic;
SIGNAL \r_tx_data[2]~feeder_combout\ : std_logic;
SIGNAL \r_data[3]~15\ : std_logic;
SIGNAL \r_data[4]~16_combout\ : std_logic;
SIGNAL \r_data[4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~20_combout\ : std_logic;
SIGNAL \r_tx_data[4]~feeder_combout\ : std_logic;
SIGNAL \r_data[4]~17\ : std_logic;
SIGNAL \r_data[5]~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~21_combout\ : std_logic;
SIGNAL \r_tx_data[5]~feeder_combout\ : std_logic;
SIGNAL \r_data[5]~19\ : std_logic;
SIGNAL \r_data[6]~20_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~22_combout\ : std_logic;
SIGNAL \r_tx_data[6]~feeder_combout\ : std_logic;
SIGNAL \r_data[6]~21\ : std_logic;
SIGNAL \r_data[7]~22_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~23_combout\ : std_logic;
SIGNAL \r_tx_data[7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~23_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector20~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~20_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~21_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~22_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Mux0~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Mux0~3_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector1~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~17_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~18_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Mux0~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~16_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Mux0~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector1~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector1~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|o_tx_serial~q\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_fifo_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_fifo_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_unit|transmitter|r_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\ : std_logic_vector(0 TO 24);
SIGNAL \uart_unit|transmitter|r_tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL r_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_unit|transmitter|r_bit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\ : std_logic_vector(0 TO 24);
SIGNAL \uart_unit|receiver|r_rx_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_wr_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_rd_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|receiver|r_bit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL r_tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_wr_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_rd_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_i_rst_sync~input_o\ : std_logic;
SIGNAL \ALT_INV_r_sm_main.s_calculus~q\ : std_logic;

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
ww_i_rx <= i_rx;
o_rx_full <= ww_o_rx_full;
o_rx_empty <= ww_o_rx_empty;
o_tx <= ww_o_tx;
o_tx_full <= ww_o_tx_full;
o_tx_empty <= ww_o_tx_empty;
o_data <= ww_o_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\uart_unit|receiver|r_rx_byte\(7) & \uart_unit|receiver|r_rx_byte\(6) & \uart_unit|receiver|r_rx_byte\(5) & \uart_unit|receiver|r_rx_byte\(4) & \uart_unit|receiver|r_rx_byte\(3) & \uart_unit|receiver|r_rx_byte\(2) & 
\uart_unit|receiver|r_rx_byte\(1) & \uart_unit|receiver|r_rx_byte\(0));

\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\uart_unit|fifo_rx|r_wr_index\(3) & \uart_unit|fifo_rx|r_wr_index\(2) & \uart_unit|fifo_rx|r_wr_index\(1) & \uart_unit|fifo_rx|r_wr_index\(0));

\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\uart_unit|fifo_rx|r_rd_index~5_combout\ & \uart_unit|fifo_rx|r_rd_index~4_combout\ & \uart_unit|fifo_rx|r_rd_index~3_combout\ & \uart_unit|fifo_rx|r_rd_index~0_combout\);

\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
r_tx_data(7) & r_tx_data(6) & r_tx_data(5) & r_tx_data(4) & r_tx_data(3) & r_tx_data(2) & r_tx_data(1) & r_tx_data(0));

\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\uart_unit|fifo_tx|r_wr_index\(3) & \uart_unit|fifo_tx|r_wr_index\(2) & \uart_unit|fifo_tx|r_wr_index\(1) & \uart_unit|fifo_tx|r_wr_index\(0));

\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\uart_unit|fifo_tx|r_rd_index~6_combout\ & \uart_unit|fifo_tx|r_rd_index~5_combout\ & \uart_unit|fifo_tx|r_rd_index~3_combout\ & \uart_unit|fifo_tx|r_rd_index~0_combout\);

\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
\uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\ <= NOT \uart_unit|transmitter|r_sm_main.s_cleanup~q\;
\uart_unit|fifo_tx|ALT_INV_Equal2~0_combout\ <= NOT \uart_unit|fifo_tx|Equal2~0_combout\;
\uart_unit|fifo_rx|ALT_INV_Equal3~0_combout\ <= NOT \uart_unit|fifo_rx|Equal3~0_combout\;
\ALT_INV_i_rst_sync~input_o\ <= NOT \i_rst_sync~input_o\;
\ALT_INV_r_sm_main.s_calculus~q\ <= NOT \r_sm_main.s_calculus~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X83_Y73_N2
\o_rx_full~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_rx|Equal2~1_combout\,
	devoe => ww_devoe,
	o => \o_rx_full~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\o_rx_empty~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_rx|ALT_INV_Equal3~0_combout\,
	devoe => ww_devoe,
	o => \o_rx_empty~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\o_tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|transmitter|o_tx_serial~q\,
	devoe => ww_devoe,
	o => \o_tx~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\o_tx_full~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_tx|ALT_INV_Equal2~0_combout\,
	devoe => ww_devoe,
	o => \o_tx_full~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\o_tx_empty~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_tx|Equal3~1_combout\,
	devoe => ww_devoe,
	o => \o_tx_empty~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\o_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_rx|r_fifo_data~16_combout\,
	devoe => ww_devoe,
	o => \o_data[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\o_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_rx|r_fifo_data~17_combout\,
	devoe => ww_devoe,
	o => \o_data[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\o_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_rx|r_fifo_data~18_combout\,
	devoe => ww_devoe,
	o => \o_data[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\o_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_rx|r_fifo_data~19_combout\,
	devoe => ww_devoe,
	o => \o_data[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\o_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_rx|r_fifo_data~20_combout\,
	devoe => ww_devoe,
	o => \o_data[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\o_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_rx|r_fifo_data~21_combout\,
	devoe => ww_devoe,
	o => \o_data[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\o_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_rx|r_fifo_data~22_combout\,
	devoe => ww_devoe,
	o => \o_data[6]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\o_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_rx|r_fifo_data~23_combout\,
	devoe => ww_devoe,
	o => \o_data[7]~output_o\);

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

-- Location: LCCOMB_X75_Y62_N2
\uart_unit|receiver|r_clk_count[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[0]~13_combout\ = \uart_unit|receiver|r_clk_count\(0) $ (VCC)
-- \uart_unit|receiver|r_clk_count[0]~14\ = CARRY(\uart_unit|receiver|r_clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(0),
	datad => VCC,
	combout => \uart_unit|receiver|r_clk_count[0]~13_combout\,
	cout => \uart_unit|receiver|r_clk_count[0]~14\);

-- Location: LCCOMB_X75_Y60_N10
\uart_unit|receiver|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector14~0_combout\ = (!\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & \uart_unit|receiver|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datad => \uart_unit|receiver|r_sm_main.s_idle~q\,
	combout => \uart_unit|receiver|Selector14~0_combout\);

-- Location: LCCOMB_X75_Y60_N14
\uart_unit|receiver|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector16~0_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & ((\uart_unit|receiver|r_bit_index\(0) $ (\uart_unit|receiver|LessThan1~2_combout\)))) # (!\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & 
-- (\uart_unit|receiver|r_sm_main.s_idle~q\ & (\uart_unit|receiver|r_bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datab => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datac => \uart_unit|receiver|r_bit_index\(0),
	datad => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|Selector16~0_combout\);

-- Location: FF_X75_Y60_N15
\uart_unit|receiver|r_bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_bit_index\(0));

-- Location: LCCOMB_X76_Y60_N2
\uart_unit|receiver|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector14~2_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (\uart_unit|receiver|r_bit_index\(2) & ((!\uart_unit|receiver|r_bit_index\(0)) # (!\uart_unit|receiver|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datab => \uart_unit|receiver|r_bit_index\(2),
	datac => \uart_unit|receiver|LessThan1~2_combout\,
	datad => \uart_unit|receiver|r_bit_index\(0),
	combout => \uart_unit|receiver|Selector14~2_combout\);

-- Location: LCCOMB_X75_Y60_N6
\uart_unit|receiver|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector15~2_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (\uart_unit|receiver|r_bit_index\(1) $ (((\uart_unit|receiver|r_bit_index\(0) & \uart_unit|receiver|LessThan1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datab => \uart_unit|receiver|r_bit_index\(1),
	datac => \uart_unit|receiver|r_bit_index\(0),
	datad => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|Selector15~2_combout\);

-- Location: LCCOMB_X75_Y60_N16
\uart_unit|receiver|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector15~3_combout\ = (\uart_unit|receiver|Selector15~2_combout\) # ((!\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (\uart_unit|receiver|r_sm_main.s_idle~q\ & \uart_unit|receiver|r_bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datab => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Selector15~2_combout\,
	combout => \uart_unit|receiver|Selector15~3_combout\);

-- Location: FF_X75_Y60_N17
\uart_unit|receiver|r_bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_bit_index\(1));

-- Location: LCCOMB_X76_Y60_N18
\uart_unit|receiver|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~0_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & \uart_unit|receiver|LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|Decoder0~0_combout\);

-- Location: LCCOMB_X76_Y60_N20
\uart_unit|receiver|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector14~1_combout\ = (\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|Decoder0~0_combout\ & (\uart_unit|receiver|r_bit_index\(2) $ (\uart_unit|receiver|r_bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(2),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Selector14~1_combout\);

-- Location: LCCOMB_X76_Y60_N28
\uart_unit|receiver|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector14~3_combout\ = (\uart_unit|receiver|Selector14~2_combout\) # ((\uart_unit|receiver|Selector14~1_combout\) # ((\uart_unit|receiver|Selector14~0_combout\ & \uart_unit|receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Selector14~0_combout\,
	datab => \uart_unit|receiver|Selector14~2_combout\,
	datac => \uart_unit|receiver|r_bit_index\(2),
	datad => \uart_unit|receiver|Selector14~1_combout\,
	combout => \uart_unit|receiver|Selector14~3_combout\);

-- Location: FF_X76_Y60_N29
\uart_unit|receiver|r_bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_bit_index\(2));

-- Location: LCCOMB_X75_Y60_N12
\uart_unit|receiver|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector19~0_combout\ = (\uart_unit|receiver|LessThan1~2_combout\ & (\uart_unit|receiver|r_bit_index\(2) & (\uart_unit|receiver|r_bit_index\(0) & \uart_unit|receiver|r_bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|LessThan1~2_combout\,
	datab => \uart_unit|receiver|r_bit_index\(2),
	datac => \uart_unit|receiver|r_bit_index\(0),
	datad => \uart_unit|receiver|r_bit_index\(1),
	combout => \uart_unit|receiver|Selector19~0_combout\);

-- Location: LCCOMB_X76_Y62_N4
\uart_unit|receiver|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal0~2_combout\ = (!\uart_unit|receiver|r_clk_count\(12) & (\uart_unit|receiver|r_clk_count\(11) & (!\uart_unit|receiver|r_clk_count\(1) & !\uart_unit|receiver|r_clk_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(12),
	datab => \uart_unit|receiver|r_clk_count\(11),
	datac => \uart_unit|receiver|r_clk_count\(1),
	datad => \uart_unit|receiver|r_clk_count\(0),
	combout => \uart_unit|receiver|Equal0~2_combout\);

-- Location: LCCOMB_X75_Y60_N24
\uart_unit|receiver|r_clk_count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[10]~39_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_start_bit~q\ & \uart_unit|receiver|r_clk_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_start_bit~q\,
	datac => \uart_unit|receiver|r_clk_count\(2),
	combout => \uart_unit|receiver|r_clk_count[10]~39_combout\);

-- Location: LCCOMB_X75_Y62_N30
\uart_unit|receiver|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal0~1_combout\ = (\uart_unit|receiver|r_clk_count\(5) & (!\uart_unit|receiver|r_clk_count\(6) & (!\uart_unit|receiver|r_clk_count\(10) & \uart_unit|receiver|r_clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(5),
	datab => \uart_unit|receiver|r_clk_count\(6),
	datac => \uart_unit|receiver|r_clk_count\(10),
	datad => \uart_unit|receiver|r_clk_count\(9),
	combout => \uart_unit|receiver|Equal0~1_combout\);

-- Location: LCCOMB_X75_Y62_N28
\uart_unit|receiver|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal0~0_combout\ = (!\uart_unit|receiver|r_clk_count\(4) & (!\uart_unit|receiver|r_clk_count\(7) & (\uart_unit|receiver|r_clk_count\(3) & !\uart_unit|receiver|r_clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(4),
	datab => \uart_unit|receiver|r_clk_count\(7),
	datac => \uart_unit|receiver|r_clk_count\(3),
	datad => \uart_unit|receiver|r_clk_count\(8),
	combout => \uart_unit|receiver|Equal0~0_combout\);

-- Location: LCCOMB_X75_Y60_N4
\uart_unit|receiver|r_clk_count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[10]~40_combout\ = (\uart_unit|receiver|Equal0~2_combout\ & (\uart_unit|receiver|r_clk_count[10]~39_combout\ & (\uart_unit|receiver|Equal0~1_combout\ & \uart_unit|receiver|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Equal0~2_combout\,
	datab => \uart_unit|receiver|r_clk_count[10]~39_combout\,
	datac => \uart_unit|receiver|Equal0~1_combout\,
	datad => \uart_unit|receiver|Equal0~0_combout\,
	combout => \uart_unit|receiver|r_clk_count[10]~40_combout\);

-- Location: IOIBUF_X27_Y73_N8
\i_rx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rx,
	o => \i_rx~input_o\);

-- Location: FF_X75_Y60_N9
\uart_unit|receiver|r_rx_data_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_rx~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_data_r~q\);

-- Location: FF_X75_Y60_N29
\uart_unit|receiver|r_rx_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_rx_data_r~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_data~q\);

-- Location: LCCOMB_X75_Y60_N26
\uart_unit|receiver|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector19~1_combout\ = (\uart_unit|receiver|Selector19~0_combout\ & (\uart_unit|receiver|r_clk_count[10]~40_combout\ & ((!\uart_unit|receiver|r_rx_data~q\)))) # (!\uart_unit|receiver|Selector19~0_combout\ & 
-- ((\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\) # ((\uart_unit|receiver|r_clk_count[10]~40_combout\ & !\uart_unit|receiver|r_rx_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Selector19~0_combout\,
	datab => \uart_unit|receiver|r_clk_count[10]~40_combout\,
	datac => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datad => \uart_unit|receiver|r_rx_data~q\,
	combout => \uart_unit|receiver|Selector19~1_combout\);

-- Location: FF_X75_Y60_N27
\uart_unit|receiver|r_sm_main.s_rx_data_bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\);

-- Location: LCCOMB_X75_Y60_N8
\uart_unit|receiver|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector0~0_combout\ = (!\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & !\uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datad => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\,
	combout => \uart_unit|receiver|Selector0~0_combout\);

-- Location: LCCOMB_X75_Y60_N0
\uart_unit|receiver|r_clk_count[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[10]~41_combout\ = ((\uart_unit|receiver|r_clk_count[10]~40_combout\) # ((!\uart_unit|receiver|Selector0~0_combout\ & \uart_unit|receiver|LessThan1~2_combout\))) # (!\uart_unit|receiver|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Selector0~0_combout\,
	datab => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datac => \uart_unit|receiver|r_clk_count[10]~40_combout\,
	datad => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|r_clk_count[10]~41_combout\);

-- Location: LCCOMB_X75_Y60_N18
\uart_unit|receiver|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal0~3_combout\ = (\uart_unit|receiver|r_clk_count\(2) & (\uart_unit|receiver|Equal0~1_combout\ & (\uart_unit|receiver|Equal0~2_combout\ & \uart_unit|receiver|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(2),
	datab => \uart_unit|receiver|Equal0~1_combout\,
	datac => \uart_unit|receiver|Equal0~2_combout\,
	datad => \uart_unit|receiver|Equal0~0_combout\,
	combout => \uart_unit|receiver|Equal0~3_combout\);

-- Location: LCCOMB_X75_Y60_N28
\uart_unit|receiver|r_clk_count[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[10]~42_combout\ = (!\uart_unit|receiver|r_sm_main.s_cleanup~q\ & (((!\uart_unit|receiver|Equal0~3_combout\) # (!\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|r_sm_main.s_rx_start_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_cleanup~q\,
	datab => \uart_unit|receiver|r_sm_main.s_rx_start_bit~q\,
	datac => \uart_unit|receiver|r_rx_data~q\,
	datad => \uart_unit|receiver|Equal0~3_combout\,
	combout => \uart_unit|receiver|r_clk_count[10]~42_combout\);

-- Location: FF_X75_Y62_N3
\uart_unit|receiver|r_clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[0]~13_combout\,
	sclr => \uart_unit|receiver|r_clk_count[10]~41_combout\,
	ena => \uart_unit|receiver|r_clk_count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(0));

-- Location: LCCOMB_X75_Y62_N4
\uart_unit|receiver|r_clk_count[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[1]~15_combout\ = (\uart_unit|receiver|r_clk_count\(1) & (!\uart_unit|receiver|r_clk_count[0]~14\)) # (!\uart_unit|receiver|r_clk_count\(1) & ((\uart_unit|receiver|r_clk_count[0]~14\) # (GND)))
-- \uart_unit|receiver|r_clk_count[1]~16\ = CARRY((!\uart_unit|receiver|r_clk_count[0]~14\) # (!\uart_unit|receiver|r_clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(1),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[0]~14\,
	combout => \uart_unit|receiver|r_clk_count[1]~15_combout\,
	cout => \uart_unit|receiver|r_clk_count[1]~16\);

-- Location: FF_X75_Y62_N5
\uart_unit|receiver|r_clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[1]~15_combout\,
	sclr => \uart_unit|receiver|r_clk_count[10]~41_combout\,
	ena => \uart_unit|receiver|r_clk_count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(1));

-- Location: LCCOMB_X75_Y62_N6
\uart_unit|receiver|r_clk_count[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[2]~17_combout\ = (\uart_unit|receiver|r_clk_count\(2) & (\uart_unit|receiver|r_clk_count[1]~16\ $ (GND))) # (!\uart_unit|receiver|r_clk_count\(2) & (!\uart_unit|receiver|r_clk_count[1]~16\ & VCC))
-- \uart_unit|receiver|r_clk_count[2]~18\ = CARRY((\uart_unit|receiver|r_clk_count\(2) & !\uart_unit|receiver|r_clk_count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(2),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[1]~16\,
	combout => \uart_unit|receiver|r_clk_count[2]~17_combout\,
	cout => \uart_unit|receiver|r_clk_count[2]~18\);

-- Location: FF_X75_Y62_N7
\uart_unit|receiver|r_clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[2]~17_combout\,
	sclr => \uart_unit|receiver|r_clk_count[10]~41_combout\,
	ena => \uart_unit|receiver|r_clk_count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(2));

-- Location: LCCOMB_X75_Y62_N8
\uart_unit|receiver|r_clk_count[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[3]~19_combout\ = (\uart_unit|receiver|r_clk_count\(3) & (!\uart_unit|receiver|r_clk_count[2]~18\)) # (!\uart_unit|receiver|r_clk_count\(3) & ((\uart_unit|receiver|r_clk_count[2]~18\) # (GND)))
-- \uart_unit|receiver|r_clk_count[3]~20\ = CARRY((!\uart_unit|receiver|r_clk_count[2]~18\) # (!\uart_unit|receiver|r_clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(3),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[2]~18\,
	combout => \uart_unit|receiver|r_clk_count[3]~19_combout\,
	cout => \uart_unit|receiver|r_clk_count[3]~20\);

-- Location: FF_X75_Y62_N9
\uart_unit|receiver|r_clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[3]~19_combout\,
	sclr => \uart_unit|receiver|r_clk_count[10]~41_combout\,
	ena => \uart_unit|receiver|r_clk_count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(3));

-- Location: LCCOMB_X75_Y62_N10
\uart_unit|receiver|r_clk_count[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[4]~21_combout\ = (\uart_unit|receiver|r_clk_count\(4) & (\uart_unit|receiver|r_clk_count[3]~20\ $ (GND))) # (!\uart_unit|receiver|r_clk_count\(4) & (!\uart_unit|receiver|r_clk_count[3]~20\ & VCC))
-- \uart_unit|receiver|r_clk_count[4]~22\ = CARRY((\uart_unit|receiver|r_clk_count\(4) & !\uart_unit|receiver|r_clk_count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(4),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[3]~20\,
	combout => \uart_unit|receiver|r_clk_count[4]~21_combout\,
	cout => \uart_unit|receiver|r_clk_count[4]~22\);

-- Location: FF_X75_Y62_N11
\uart_unit|receiver|r_clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[4]~21_combout\,
	sclr => \uart_unit|receiver|r_clk_count[10]~41_combout\,
	ena => \uart_unit|receiver|r_clk_count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(4));

-- Location: LCCOMB_X75_Y62_N12
\uart_unit|receiver|r_clk_count[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[5]~23_combout\ = (\uart_unit|receiver|r_clk_count\(5) & (!\uart_unit|receiver|r_clk_count[4]~22\)) # (!\uart_unit|receiver|r_clk_count\(5) & ((\uart_unit|receiver|r_clk_count[4]~22\) # (GND)))
-- \uart_unit|receiver|r_clk_count[5]~24\ = CARRY((!\uart_unit|receiver|r_clk_count[4]~22\) # (!\uart_unit|receiver|r_clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(5),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[4]~22\,
	combout => \uart_unit|receiver|r_clk_count[5]~23_combout\,
	cout => \uart_unit|receiver|r_clk_count[5]~24\);

-- Location: FF_X75_Y62_N13
\uart_unit|receiver|r_clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[5]~23_combout\,
	sclr => \uart_unit|receiver|r_clk_count[10]~41_combout\,
	ena => \uart_unit|receiver|r_clk_count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(5));

-- Location: LCCOMB_X75_Y62_N14
\uart_unit|receiver|r_clk_count[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[6]~25_combout\ = (\uart_unit|receiver|r_clk_count\(6) & (\uart_unit|receiver|r_clk_count[5]~24\ $ (GND))) # (!\uart_unit|receiver|r_clk_count\(6) & (!\uart_unit|receiver|r_clk_count[5]~24\ & VCC))
-- \uart_unit|receiver|r_clk_count[6]~26\ = CARRY((\uart_unit|receiver|r_clk_count\(6) & !\uart_unit|receiver|r_clk_count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(6),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[5]~24\,
	combout => \uart_unit|receiver|r_clk_count[6]~25_combout\,
	cout => \uart_unit|receiver|r_clk_count[6]~26\);

-- Location: FF_X75_Y62_N15
\uart_unit|receiver|r_clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[6]~25_combout\,
	sclr => \uart_unit|receiver|r_clk_count[10]~41_combout\,
	ena => \uart_unit|receiver|r_clk_count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(6));

-- Location: LCCOMB_X75_Y62_N16
\uart_unit|receiver|r_clk_count[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[7]~27_combout\ = (\uart_unit|receiver|r_clk_count\(7) & (!\uart_unit|receiver|r_clk_count[6]~26\)) # (!\uart_unit|receiver|r_clk_count\(7) & ((\uart_unit|receiver|r_clk_count[6]~26\) # (GND)))
-- \uart_unit|receiver|r_clk_count[7]~28\ = CARRY((!\uart_unit|receiver|r_clk_count[6]~26\) # (!\uart_unit|receiver|r_clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(7),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[6]~26\,
	combout => \uart_unit|receiver|r_clk_count[7]~27_combout\,
	cout => \uart_unit|receiver|r_clk_count[7]~28\);

-- Location: FF_X75_Y62_N17
\uart_unit|receiver|r_clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[7]~27_combout\,
	sclr => \uart_unit|receiver|r_clk_count[10]~41_combout\,
	ena => \uart_unit|receiver|r_clk_count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(7));

-- Location: LCCOMB_X75_Y62_N18
\uart_unit|receiver|r_clk_count[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[8]~29_combout\ = (\uart_unit|receiver|r_clk_count\(8) & (\uart_unit|receiver|r_clk_count[7]~28\ $ (GND))) # (!\uart_unit|receiver|r_clk_count\(8) & (!\uart_unit|receiver|r_clk_count[7]~28\ & VCC))
-- \uart_unit|receiver|r_clk_count[8]~30\ = CARRY((\uart_unit|receiver|r_clk_count\(8) & !\uart_unit|receiver|r_clk_count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(8),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[7]~28\,
	combout => \uart_unit|receiver|r_clk_count[8]~29_combout\,
	cout => \uart_unit|receiver|r_clk_count[8]~30\);

-- Location: FF_X75_Y62_N19
\uart_unit|receiver|r_clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[8]~29_combout\,
	sclr => \uart_unit|receiver|r_clk_count[10]~41_combout\,
	ena => \uart_unit|receiver|r_clk_count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(8));

-- Location: LCCOMB_X75_Y62_N20
\uart_unit|receiver|r_clk_count[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[9]~31_combout\ = (\uart_unit|receiver|r_clk_count\(9) & (!\uart_unit|receiver|r_clk_count[8]~30\)) # (!\uart_unit|receiver|r_clk_count\(9) & ((\uart_unit|receiver|r_clk_count[8]~30\) # (GND)))
-- \uart_unit|receiver|r_clk_count[9]~32\ = CARRY((!\uart_unit|receiver|r_clk_count[8]~30\) # (!\uart_unit|receiver|r_clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(9),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[8]~30\,
	combout => \uart_unit|receiver|r_clk_count[9]~31_combout\,
	cout => \uart_unit|receiver|r_clk_count[9]~32\);

-- Location: FF_X75_Y62_N21
\uart_unit|receiver|r_clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[9]~31_combout\,
	sclr => \uart_unit|receiver|r_clk_count[10]~41_combout\,
	ena => \uart_unit|receiver|r_clk_count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(9));

-- Location: LCCOMB_X75_Y62_N22
\uart_unit|receiver|r_clk_count[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[10]~33_combout\ = (\uart_unit|receiver|r_clk_count\(10) & (\uart_unit|receiver|r_clk_count[9]~32\ $ (GND))) # (!\uart_unit|receiver|r_clk_count\(10) & (!\uart_unit|receiver|r_clk_count[9]~32\ & VCC))
-- \uart_unit|receiver|r_clk_count[10]~34\ = CARRY((\uart_unit|receiver|r_clk_count\(10) & !\uart_unit|receiver|r_clk_count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(10),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[9]~32\,
	combout => \uart_unit|receiver|r_clk_count[10]~33_combout\,
	cout => \uart_unit|receiver|r_clk_count[10]~34\);

-- Location: FF_X75_Y62_N23
\uart_unit|receiver|r_clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[10]~33_combout\,
	sclr => \uart_unit|receiver|r_clk_count[10]~41_combout\,
	ena => \uart_unit|receiver|r_clk_count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(10));

-- Location: LCCOMB_X75_Y62_N24
\uart_unit|receiver|r_clk_count[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[11]~35_combout\ = (\uart_unit|receiver|r_clk_count\(11) & (!\uart_unit|receiver|r_clk_count[10]~34\)) # (!\uart_unit|receiver|r_clk_count\(11) & ((\uart_unit|receiver|r_clk_count[10]~34\) # (GND)))
-- \uart_unit|receiver|r_clk_count[11]~36\ = CARRY((!\uart_unit|receiver|r_clk_count[10]~34\) # (!\uart_unit|receiver|r_clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(11),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[10]~34\,
	combout => \uart_unit|receiver|r_clk_count[11]~35_combout\,
	cout => \uart_unit|receiver|r_clk_count[11]~36\);

-- Location: FF_X75_Y62_N25
\uart_unit|receiver|r_clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[11]~35_combout\,
	sclr => \uart_unit|receiver|r_clk_count[10]~41_combout\,
	ena => \uart_unit|receiver|r_clk_count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(11));

-- Location: LCCOMB_X75_Y62_N26
\uart_unit|receiver|r_clk_count[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[12]~37_combout\ = \uart_unit|receiver|r_clk_count\(12) $ (!\uart_unit|receiver|r_clk_count[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(12),
	cin => \uart_unit|receiver|r_clk_count[11]~36\,
	combout => \uart_unit|receiver|r_clk_count[12]~37_combout\);

-- Location: FF_X75_Y62_N27
\uart_unit|receiver|r_clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[12]~37_combout\,
	sclr => \uart_unit|receiver|r_clk_count[10]~41_combout\,
	ena => \uart_unit|receiver|r_clk_count[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(12));

-- Location: LCCOMB_X75_Y62_N0
\uart_unit|receiver|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|LessThan1~0_combout\ = ((!\uart_unit|receiver|r_clk_count\(5) & ((!\uart_unit|receiver|r_clk_count\(3)) # (!\uart_unit|receiver|r_clk_count\(4))))) # (!\uart_unit|receiver|r_clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(4),
	datab => \uart_unit|receiver|r_clk_count\(6),
	datac => \uart_unit|receiver|r_clk_count\(3),
	datad => \uart_unit|receiver|r_clk_count\(5),
	combout => \uart_unit|receiver|LessThan1~0_combout\);

-- Location: LCCOMB_X76_Y62_N30
\uart_unit|receiver|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|LessThan1~1_combout\ = (\uart_unit|receiver|r_clk_count\(7)) # ((\uart_unit|receiver|r_clk_count\(9)) # ((\uart_unit|receiver|r_clk_count\(8)) # (!\uart_unit|receiver|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(7),
	datab => \uart_unit|receiver|r_clk_count\(9),
	datac => \uart_unit|receiver|LessThan1~0_combout\,
	datad => \uart_unit|receiver|r_clk_count\(8),
	combout => \uart_unit|receiver|LessThan1~1_combout\);

-- Location: LCCOMB_X76_Y62_N20
\uart_unit|receiver|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|LessThan1~2_combout\ = (\uart_unit|receiver|r_clk_count\(12) & ((\uart_unit|receiver|r_clk_count\(11)) # ((\uart_unit|receiver|r_clk_count\(10) & \uart_unit|receiver|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(12),
	datab => \uart_unit|receiver|r_clk_count\(10),
	datac => \uart_unit|receiver|LessThan1~1_combout\,
	datad => \uart_unit|receiver|r_clk_count\(11),
	combout => \uart_unit|receiver|LessThan1~2_combout\);

-- Location: LCCOMB_X76_Y60_N10
\uart_unit|receiver|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~8_combout\ = (\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|r_bit_index\(2) & (\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(2),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~8_combout\);

-- Location: LCCOMB_X76_Y60_N22
\uart_unit|receiver|r_sm_main.s_rx_stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_sm_main.s_rx_stop_bit~0_combout\ = (\uart_unit|receiver|Decoder0~8_combout\) # ((!\uart_unit|receiver|LessThan1~2_combout\ & \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|LessThan1~2_combout\,
	datac => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\,
	datad => \uart_unit|receiver|Decoder0~8_combout\,
	combout => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~0_combout\);

-- Location: FF_X76_Y60_N23
\uart_unit|receiver|r_sm_main.s_rx_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\);

-- Location: LCCOMB_X75_Y60_N20
\uart_unit|receiver|r_sm_main~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_sm_main~7_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\ & \uart_unit|receiver|LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\,
	datad => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|r_sm_main~7_combout\);

-- Location: FF_X75_Y60_N21
\uart_unit|receiver|r_sm_main.s_cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_sm_main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_sm_main.s_cleanup~q\);

-- Location: LCCOMB_X75_Y60_N2
\uart_unit|receiver|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector17~0_combout\ = (!\uart_unit|receiver|r_sm_main.s_cleanup~q\ & (((!\uart_unit|receiver|r_clk_count[10]~40_combout\ & \uart_unit|receiver|r_sm_main.s_idle~q\)) # (!\uart_unit|receiver|r_rx_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_cleanup~q\,
	datab => \uart_unit|receiver|r_clk_count[10]~40_combout\,
	datac => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datad => \uart_unit|receiver|r_rx_data~q\,
	combout => \uart_unit|receiver|Selector17~0_combout\);

-- Location: FF_X75_Y60_N3
\uart_unit|receiver|r_sm_main.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_sm_main.s_idle~q\);

-- Location: LCCOMB_X75_Y60_N22
\uart_unit|receiver|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector18~0_combout\ = (\uart_unit|receiver|r_sm_main.s_idle~q\ & (((\uart_unit|receiver|r_sm_main.s_rx_start_bit~q\ & !\uart_unit|receiver|Equal0~3_combout\)))) # (!\uart_unit|receiver|r_sm_main.s_idle~q\ & 
-- (((\uart_unit|receiver|r_sm_main.s_rx_start_bit~q\ & !\uart_unit|receiver|Equal0~3_combout\)) # (!\uart_unit|receiver|r_rx_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_sm_main.s_rx_start_bit~q\,
	datad => \uart_unit|receiver|Equal0~3_combout\,
	combout => \uart_unit|receiver|Selector18~0_combout\);

-- Location: FF_X75_Y60_N23
\uart_unit|receiver|r_sm_main.s_rx_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_sm_main.s_rx_start_bit~q\);

-- Location: LCCOMB_X75_Y60_N30
\uart_unit|receiver|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector0~1_combout\ = (\uart_unit|receiver|r_sm_main~7_combout\) # ((\uart_unit|receiver|r_rx_dv~q\ & ((\uart_unit|receiver|r_sm_main.s_rx_start_bit~q\) # (!\uart_unit|receiver|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_start_bit~q\,
	datab => \uart_unit|receiver|r_sm_main~7_combout\,
	datac => \uart_unit|receiver|r_rx_dv~q\,
	datad => \uart_unit|receiver|Selector0~0_combout\,
	combout => \uart_unit|receiver|Selector0~1_combout\);

-- Location: FF_X75_Y60_N31
\uart_unit|receiver|r_rx_dv\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_dv~q\);

-- Location: LCCOMB_X83_Y60_N6
\uart_unit|fifo_rx|r_fifo_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_count[0]~5_combout\ = \uart_unit|fifo_rx|r_fifo_count\(0) $ (VCC)
-- \uart_unit|fifo_rx|r_fifo_count[0]~6\ = CARRY(\uart_unit|fifo_rx|r_fifo_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(0),
	datad => VCC,
	combout => \uart_unit|fifo_rx|r_fifo_count[0]~5_combout\,
	cout => \uart_unit|fifo_rx|r_fifo_count[0]~6\);

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

-- Location: LCCOMB_X83_Y60_N18
\uart_unit|fifo_rx|r_fifo_count[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_count[2]~13_combout\ = (\uart_unit|receiver|r_rx_dv~q\ $ (\r_rd_rx~q\)) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_rx_dv~q\,
	datac => \i_rst_sync~input_o\,
	datad => \r_rd_rx~q\,
	combout => \uart_unit|fifo_rx|r_fifo_count[2]~13_combout\);

-- Location: FF_X83_Y60_N7
\uart_unit|fifo_rx|r_fifo_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_count[0]~5_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \uart_unit|fifo_rx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(0));

-- Location: LCCOMB_X83_Y60_N8
\uart_unit|fifo_rx|r_fifo_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_count[1]~7_combout\ = (\uart_unit|fifo_rx|r_fifo_count\(1) & ((\uart_unit|fifo_rx|p_control~0_combout\ & (!\uart_unit|fifo_rx|r_fifo_count[0]~6\)) # (!\uart_unit|fifo_rx|p_control~0_combout\ & 
-- (\uart_unit|fifo_rx|r_fifo_count[0]~6\ & VCC)))) # (!\uart_unit|fifo_rx|r_fifo_count\(1) & ((\uart_unit|fifo_rx|p_control~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_count[0]~6\) # (GND))) # (!\uart_unit|fifo_rx|p_control~0_combout\ & 
-- (!\uart_unit|fifo_rx|r_fifo_count[0]~6\))))
-- \uart_unit|fifo_rx|r_fifo_count[1]~8\ = CARRY((\uart_unit|fifo_rx|r_fifo_count\(1) & (\uart_unit|fifo_rx|p_control~0_combout\ & !\uart_unit|fifo_rx|r_fifo_count[0]~6\)) # (!\uart_unit|fifo_rx|r_fifo_count\(1) & ((\uart_unit|fifo_rx|p_control~0_combout\) # 
-- (!\uart_unit|fifo_rx|r_fifo_count[0]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(1),
	datab => \uart_unit|fifo_rx|p_control~0_combout\,
	datad => VCC,
	cin => \uart_unit|fifo_rx|r_fifo_count[0]~6\,
	combout => \uart_unit|fifo_rx|r_fifo_count[1]~7_combout\,
	cout => \uart_unit|fifo_rx|r_fifo_count[1]~8\);

-- Location: FF_X83_Y60_N9
\uart_unit|fifo_rx|r_fifo_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_count[1]~7_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \uart_unit|fifo_rx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(1));

-- Location: LCCOMB_X83_Y60_N10
\uart_unit|fifo_rx|r_fifo_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_count[2]~9_combout\ = ((\uart_unit|fifo_rx|r_fifo_count\(2) $ (\uart_unit|fifo_rx|p_control~0_combout\ $ (\uart_unit|fifo_rx|r_fifo_count[1]~8\)))) # (GND)
-- \uart_unit|fifo_rx|r_fifo_count[2]~10\ = CARRY((\uart_unit|fifo_rx|r_fifo_count\(2) & ((!\uart_unit|fifo_rx|r_fifo_count[1]~8\) # (!\uart_unit|fifo_rx|p_control~0_combout\))) # (!\uart_unit|fifo_rx|r_fifo_count\(2) & 
-- (!\uart_unit|fifo_rx|p_control~0_combout\ & !\uart_unit|fifo_rx|r_fifo_count[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(2),
	datab => \uart_unit|fifo_rx|p_control~0_combout\,
	datad => VCC,
	cin => \uart_unit|fifo_rx|r_fifo_count[1]~8\,
	combout => \uart_unit|fifo_rx|r_fifo_count[2]~9_combout\,
	cout => \uart_unit|fifo_rx|r_fifo_count[2]~10\);

-- Location: FF_X83_Y60_N11
\uart_unit|fifo_rx|r_fifo_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_count[2]~9_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \uart_unit|fifo_rx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(2));

-- Location: LCCOMB_X83_Y60_N12
\uart_unit|fifo_rx|r_fifo_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_count[3]~11_combout\ = (\uart_unit|fifo_rx|r_fifo_count\(3) & ((\uart_unit|fifo_rx|p_control~0_combout\ & (!\uart_unit|fifo_rx|r_fifo_count[2]~10\)) # (!\uart_unit|fifo_rx|p_control~0_combout\ & 
-- (\uart_unit|fifo_rx|r_fifo_count[2]~10\ & VCC)))) # (!\uart_unit|fifo_rx|r_fifo_count\(3) & ((\uart_unit|fifo_rx|p_control~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_count[2]~10\) # (GND))) # (!\uart_unit|fifo_rx|p_control~0_combout\ & 
-- (!\uart_unit|fifo_rx|r_fifo_count[2]~10\))))
-- \uart_unit|fifo_rx|r_fifo_count[3]~12\ = CARRY((\uart_unit|fifo_rx|r_fifo_count\(3) & (\uart_unit|fifo_rx|p_control~0_combout\ & !\uart_unit|fifo_rx|r_fifo_count[2]~10\)) # (!\uart_unit|fifo_rx|r_fifo_count\(3) & ((\uart_unit|fifo_rx|p_control~0_combout\) 
-- # (!\uart_unit|fifo_rx|r_fifo_count[2]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(3),
	datab => \uart_unit|fifo_rx|p_control~0_combout\,
	datad => VCC,
	cin => \uart_unit|fifo_rx|r_fifo_count[2]~10\,
	combout => \uart_unit|fifo_rx|r_fifo_count[3]~11_combout\,
	cout => \uart_unit|fifo_rx|r_fifo_count[3]~12\);

-- Location: LCCOMB_X83_Y60_N14
\uart_unit|fifo_rx|r_fifo_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_count[4]~14_combout\ = \uart_unit|fifo_rx|r_fifo_count\(4) $ (\uart_unit|fifo_rx|r_fifo_count[3]~12\ $ (\uart_unit|fifo_rx|p_control~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_fifo_count\(4),
	datad => \uart_unit|fifo_rx|p_control~0_combout\,
	cin => \uart_unit|fifo_rx|r_fifo_count[3]~12\,
	combout => \uart_unit|fifo_rx|r_fifo_count[4]~14_combout\);

-- Location: FF_X83_Y60_N15
\uart_unit|fifo_rx|r_fifo_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_count[4]~14_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \uart_unit|fifo_rx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(4));

-- Location: LCCOMB_X83_Y60_N24
\uart_unit|fifo_rx|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Equal2~0_combout\ = (!\uart_unit|fifo_rx|r_fifo_count\(2) & (!\uart_unit|fifo_rx|r_fifo_count\(4) & !\uart_unit|fifo_rx|r_fifo_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(2),
	datac => \uart_unit|fifo_rx|r_fifo_count\(4),
	datad => \uart_unit|fifo_rx|r_fifo_count\(0),
	combout => \uart_unit|fifo_rx|Equal2~0_combout\);

-- Location: LCCOMB_X82_Y60_N16
\uart_unit|fifo_rx|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Equal3~0_combout\ = (\uart_unit|fifo_rx|r_fifo_count\(1)) # ((\uart_unit|fifo_rx|r_fifo_count\(3)) # (!\uart_unit|fifo_rx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(1),
	datab => \uart_unit|fifo_rx|r_fifo_count\(3),
	datad => \uart_unit|fifo_rx|Equal2~0_combout\,
	combout => \uart_unit|fifo_rx|Equal3~0_combout\);

-- Location: LCCOMB_X81_Y62_N2
\uart_unit|transmitter|r_clk_count[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[0]~13_combout\ = \uart_unit|transmitter|r_clk_count\(0) $ (VCC)
-- \uart_unit|transmitter|r_clk_count[0]~14\ = CARRY(\uart_unit|transmitter|r_clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(0),
	datad => VCC,
	combout => \uart_unit|transmitter|r_clk_count[0]~13_combout\,
	cout => \uart_unit|transmitter|r_clk_count[0]~14\);

-- Location: LCCOMB_X79_Y63_N18
\uart_unit|transmitter|r_sm_main~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_sm_main~7_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\ & !\uart_unit|transmitter|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	datad => \uart_unit|transmitter|LessThan1~3_combout\,
	combout => \uart_unit|transmitter|r_sm_main~7_combout\);

-- Location: FF_X79_Y63_N19
\uart_unit|transmitter|r_sm_main.s_cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_sm_main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_sm_main.s_cleanup~q\);

-- Location: LCCOMB_X80_Y61_N16
\uart_unit|fifo_tx|r_fifo_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[0]~5_combout\ = \uart_unit|fifo_tx|r_fifo_count\(0) $ (VCC)
-- \uart_unit|fifo_tx|r_fifo_count[0]~6\ = CARRY(\uart_unit|fifo_tx|r_fifo_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|r_fifo_count\(0),
	datad => VCC,
	combout => \uart_unit|fifo_tx|r_fifo_count[0]~5_combout\,
	cout => \uart_unit|fifo_tx|r_fifo_count[0]~6\);

-- Location: LCCOMB_X83_Y60_N30
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\r_sm_main.s_idle~q\ & ((\uart_unit|fifo_rx|r_fifo_count\(3)) # ((\uart_unit|fifo_rx|r_fifo_count\(1)) # (!\uart_unit|fifo_rx|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(3),
	datab => \r_sm_main.s_idle~q\,
	datac => \uart_unit|fifo_rx|Equal2~0_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_count\(1),
	combout => \Selector0~1_combout\);

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

-- Location: FF_X83_Y60_N31
\r_sm_main.s_get_fifo_data\ : dffeas
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
	q => \r_sm_main.s_get_fifo_data~q\);

-- Location: LCCOMB_X80_Y60_N28
\r_sm_main.s_calculus~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sm_main.s_calculus~feeder_combout\ = \r_sm_main.s_get_fifo_data~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_sm_main.s_get_fifo_data~q\,
	combout => \r_sm_main.s_calculus~feeder_combout\);

-- Location: FF_X80_Y60_N29
\r_sm_main.s_calculus\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sm_main.s_calculus~feeder_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm_main.s_calculus~q\);

-- Location: LCCOMB_X80_Y61_N18
\uart_unit|fifo_tx|r_fifo_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[1]~7_combout\ = (\uart_unit|fifo_tx|r_fifo_count\(1) & ((\uart_unit|fifo_tx|p_control~0_combout\ & (!\uart_unit|fifo_tx|r_fifo_count[0]~6\)) # (!\uart_unit|fifo_tx|p_control~0_combout\ & 
-- (\uart_unit|fifo_tx|r_fifo_count[0]~6\ & VCC)))) # (!\uart_unit|fifo_tx|r_fifo_count\(1) & ((\uart_unit|fifo_tx|p_control~0_combout\ & ((\uart_unit|fifo_tx|r_fifo_count[0]~6\) # (GND))) # (!\uart_unit|fifo_tx|p_control~0_combout\ & 
-- (!\uart_unit|fifo_tx|r_fifo_count[0]~6\))))
-- \uart_unit|fifo_tx|r_fifo_count[1]~8\ = CARRY((\uart_unit|fifo_tx|r_fifo_count\(1) & (\uart_unit|fifo_tx|p_control~0_combout\ & !\uart_unit|fifo_tx|r_fifo_count[0]~6\)) # (!\uart_unit|fifo_tx|r_fifo_count\(1) & ((\uart_unit|fifo_tx|p_control~0_combout\) # 
-- (!\uart_unit|fifo_tx|r_fifo_count[0]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_count\(1),
	datab => \uart_unit|fifo_tx|p_control~0_combout\,
	datad => VCC,
	cin => \uart_unit|fifo_tx|r_fifo_count[0]~6\,
	combout => \uart_unit|fifo_tx|r_fifo_count[1]~7_combout\,
	cout => \uart_unit|fifo_tx|r_fifo_count[1]~8\);

-- Location: LCCOMB_X80_Y61_N20
\uart_unit|fifo_tx|r_fifo_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[2]~9_combout\ = ((\uart_unit|fifo_tx|p_control~0_combout\ $ (\uart_unit|fifo_tx|r_fifo_count\(2) $ (\uart_unit|fifo_tx|r_fifo_count[1]~8\)))) # (GND)
-- \uart_unit|fifo_tx|r_fifo_count[2]~10\ = CARRY((\uart_unit|fifo_tx|p_control~0_combout\ & (\uart_unit|fifo_tx|r_fifo_count\(2) & !\uart_unit|fifo_tx|r_fifo_count[1]~8\)) # (!\uart_unit|fifo_tx|p_control~0_combout\ & ((\uart_unit|fifo_tx|r_fifo_count\(2)) 
-- # (!\uart_unit|fifo_tx|r_fifo_count[1]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|p_control~0_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_count\(2),
	datad => VCC,
	cin => \uart_unit|fifo_tx|r_fifo_count[1]~8\,
	combout => \uart_unit|fifo_tx|r_fifo_count[2]~9_combout\,
	cout => \uart_unit|fifo_tx|r_fifo_count[2]~10\);

-- Location: FF_X80_Y61_N21
\uart_unit|fifo_tx|r_fifo_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_count[2]~9_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \uart_unit|fifo_tx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_count\(2));

-- Location: LCCOMB_X80_Y61_N22
\uart_unit|fifo_tx|r_fifo_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[3]~11_combout\ = (\uart_unit|fifo_tx|r_fifo_count\(3) & ((\uart_unit|fifo_tx|p_control~0_combout\ & (!\uart_unit|fifo_tx|r_fifo_count[2]~10\)) # (!\uart_unit|fifo_tx|p_control~0_combout\ & 
-- (\uart_unit|fifo_tx|r_fifo_count[2]~10\ & VCC)))) # (!\uart_unit|fifo_tx|r_fifo_count\(3) & ((\uart_unit|fifo_tx|p_control~0_combout\ & ((\uart_unit|fifo_tx|r_fifo_count[2]~10\) # (GND))) # (!\uart_unit|fifo_tx|p_control~0_combout\ & 
-- (!\uart_unit|fifo_tx|r_fifo_count[2]~10\))))
-- \uart_unit|fifo_tx|r_fifo_count[3]~12\ = CARRY((\uart_unit|fifo_tx|r_fifo_count\(3) & (\uart_unit|fifo_tx|p_control~0_combout\ & !\uart_unit|fifo_tx|r_fifo_count[2]~10\)) # (!\uart_unit|fifo_tx|r_fifo_count\(3) & ((\uart_unit|fifo_tx|p_control~0_combout\) 
-- # (!\uart_unit|fifo_tx|r_fifo_count[2]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_count\(3),
	datab => \uart_unit|fifo_tx|p_control~0_combout\,
	datad => VCC,
	cin => \uart_unit|fifo_tx|r_fifo_count[2]~10\,
	combout => \uart_unit|fifo_tx|r_fifo_count[3]~11_combout\,
	cout => \uart_unit|fifo_tx|r_fifo_count[3]~12\);

-- Location: LCCOMB_X80_Y61_N24
\uart_unit|fifo_tx|r_fifo_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[4]~14_combout\ = \uart_unit|fifo_tx|p_control~0_combout\ $ (\uart_unit|fifo_tx|r_fifo_count[3]~12\ $ (\uart_unit|fifo_tx|r_fifo_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|p_control~0_combout\,
	datad => \uart_unit|fifo_tx|r_fifo_count\(4),
	cin => \uart_unit|fifo_tx|r_fifo_count[3]~12\,
	combout => \uart_unit|fifo_tx|r_fifo_count[4]~14_combout\);

-- Location: FF_X80_Y61_N25
\uart_unit|fifo_tx|r_fifo_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_count[4]~14_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \uart_unit|fifo_tx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_count\(4));

-- Location: LCCOMB_X80_Y61_N28
\uart_unit|fifo_tx|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Equal3~0_combout\ = (!\uart_unit|fifo_tx|r_fifo_count\(4) & (!\uart_unit|fifo_tx|r_fifo_count\(2) & !\uart_unit|fifo_tx|r_fifo_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|r_fifo_count\(4),
	datac => \uart_unit|fifo_tx|r_fifo_count\(2),
	datad => \uart_unit|fifo_tx|r_fifo_count\(0),
	combout => \uart_unit|fifo_tx|Equal3~0_combout\);

-- Location: LCCOMB_X80_Y60_N8
\uart_unit|fifo_tx|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Equal2~0_combout\ = ((!\uart_unit|fifo_tx|r_fifo_count\(1)) # (!\uart_unit|fifo_tx|Equal3~0_combout\)) # (!\uart_unit|fifo_tx|r_fifo_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_count\(3),
	datac => \uart_unit|fifo_tx|Equal3~0_combout\,
	datad => \uart_unit|fifo_tx|r_fifo_count\(1),
	combout => \uart_unit|fifo_tx|Equal2~0_combout\);

-- Location: LCCOMB_X80_Y60_N4
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\r_sm_main.s_calculus~q\) # ((!\uart_unit|fifo_tx|Equal2~0_combout\ & \r_sm_main.s_put_fifo_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm_main.s_calculus~q\,
	datab => \uart_unit|fifo_tx|Equal2~0_combout\,
	datac => \r_sm_main.s_put_fifo_data~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X80_Y60_N5
\r_sm_main.s_put_fifo_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm_main.s_put_fifo_data~q\);

-- Location: LCCOMB_X80_Y60_N0
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\r_tx_data[0]~0_combout\) # ((\r_wr_tx~q\ & ((\r_sm_main.s_put_fifo_data~q\) # (!\r_sm_main.s_clear~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm_main.s_clear~q\,
	datab => \r_sm_main.s_put_fifo_data~q\,
	datac => \r_wr_tx~q\,
	datad => \r_tx_data[0]~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X80_Y60_N1
r_wr_tx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_wr_tx~q\);

-- Location: LCCOMB_X80_Y61_N2
\uart_unit|fifo_tx|r_fifo_count[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[2]~13_combout\ = (\uart_unit|transmitter|r_tx_done~q\ $ (\r_wr_tx~q\)) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_tx_done~q\,
	datac => \r_wr_tx~q\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_tx|r_fifo_count[2]~13_combout\);

-- Location: FF_X80_Y61_N17
\uart_unit|fifo_tx|r_fifo_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_count[0]~5_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \uart_unit|fifo_tx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_count\(0));

-- Location: FF_X80_Y61_N19
\uart_unit|fifo_tx|r_fifo_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_count[1]~7_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \uart_unit|fifo_tx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_count\(1));

-- Location: LCCOMB_X80_Y61_N14
\uart_unit|fifo_tx|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Equal3~1_combout\ = (!\uart_unit|fifo_tx|r_fifo_count\(1) & (!\uart_unit|fifo_tx|r_fifo_count\(3) & \uart_unit|fifo_tx|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_count\(1),
	datac => \uart_unit|fifo_tx|r_fifo_count\(3),
	datad => \uart_unit|fifo_tx|Equal3~0_combout\,
	combout => \uart_unit|fifo_tx|Equal3~1_combout\);

-- Location: LCCOMB_X79_Y63_N14
\uart_unit|transmitter|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector19~0_combout\ = (!\uart_unit|transmitter|r_sm_main.s_cleanup~q\ & ((\uart_unit|transmitter|r_sm_main.s_idle~q\) # (!\uart_unit|fifo_tx|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_sm_main.s_cleanup~q\,
	datac => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datad => \uart_unit|fifo_tx|Equal3~1_combout\,
	combout => \uart_unit|transmitter|Selector19~0_combout\);

-- Location: FF_X79_Y63_N15
\uart_unit|transmitter|r_sm_main.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_sm_main.s_idle~q\);

-- Location: LCCOMB_X80_Y62_N10
\uart_unit|transmitter|r_clk_count[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[7]~35_combout\ = (!\uart_unit|transmitter|LessThan1~3_combout\) # (!\uart_unit|transmitter|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datad => \uart_unit|transmitter|LessThan1~3_combout\,
	combout => \uart_unit|transmitter|r_clk_count[7]~35_combout\);

-- Location: FF_X81_Y62_N3
\uart_unit|transmitter|r_clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[0]~13_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[7]~35_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(0));

-- Location: LCCOMB_X81_Y62_N4
\uart_unit|transmitter|r_clk_count[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[1]~15_combout\ = (\uart_unit|transmitter|r_clk_count\(1) & (!\uart_unit|transmitter|r_clk_count[0]~14\)) # (!\uart_unit|transmitter|r_clk_count\(1) & ((\uart_unit|transmitter|r_clk_count[0]~14\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[1]~16\ = CARRY((!\uart_unit|transmitter|r_clk_count[0]~14\) # (!\uart_unit|transmitter|r_clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(1),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[0]~14\,
	combout => \uart_unit|transmitter|r_clk_count[1]~15_combout\,
	cout => \uart_unit|transmitter|r_clk_count[1]~16\);

-- Location: FF_X81_Y62_N5
\uart_unit|transmitter|r_clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[1]~15_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[7]~35_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(1));

-- Location: LCCOMB_X81_Y62_N6
\uart_unit|transmitter|r_clk_count[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[2]~17_combout\ = (\uart_unit|transmitter|r_clk_count\(2) & (\uart_unit|transmitter|r_clk_count[1]~16\ $ (GND))) # (!\uart_unit|transmitter|r_clk_count\(2) & (!\uart_unit|transmitter|r_clk_count[1]~16\ & VCC))
-- \uart_unit|transmitter|r_clk_count[2]~18\ = CARRY((\uart_unit|transmitter|r_clk_count\(2) & !\uart_unit|transmitter|r_clk_count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(2),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[1]~16\,
	combout => \uart_unit|transmitter|r_clk_count[2]~17_combout\,
	cout => \uart_unit|transmitter|r_clk_count[2]~18\);

-- Location: FF_X81_Y62_N7
\uart_unit|transmitter|r_clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[2]~17_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[7]~35_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(2));

-- Location: LCCOMB_X81_Y62_N8
\uart_unit|transmitter|r_clk_count[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[3]~19_combout\ = (\uart_unit|transmitter|r_clk_count\(3) & (!\uart_unit|transmitter|r_clk_count[2]~18\)) # (!\uart_unit|transmitter|r_clk_count\(3) & ((\uart_unit|transmitter|r_clk_count[2]~18\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[3]~20\ = CARRY((!\uart_unit|transmitter|r_clk_count[2]~18\) # (!\uart_unit|transmitter|r_clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(3),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[2]~18\,
	combout => \uart_unit|transmitter|r_clk_count[3]~19_combout\,
	cout => \uart_unit|transmitter|r_clk_count[3]~20\);

-- Location: FF_X81_Y62_N9
\uart_unit|transmitter|r_clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[3]~19_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[7]~35_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(3));

-- Location: LCCOMB_X81_Y62_N10
\uart_unit|transmitter|r_clk_count[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[4]~21_combout\ = (\uart_unit|transmitter|r_clk_count\(4) & (\uart_unit|transmitter|r_clk_count[3]~20\ $ (GND))) # (!\uart_unit|transmitter|r_clk_count\(4) & (!\uart_unit|transmitter|r_clk_count[3]~20\ & VCC))
-- \uart_unit|transmitter|r_clk_count[4]~22\ = CARRY((\uart_unit|transmitter|r_clk_count\(4) & !\uart_unit|transmitter|r_clk_count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(4),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[3]~20\,
	combout => \uart_unit|transmitter|r_clk_count[4]~21_combout\,
	cout => \uart_unit|transmitter|r_clk_count[4]~22\);

-- Location: FF_X81_Y62_N11
\uart_unit|transmitter|r_clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[4]~21_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[7]~35_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(4));

-- Location: LCCOMB_X81_Y62_N12
\uart_unit|transmitter|r_clk_count[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[5]~23_combout\ = (\uart_unit|transmitter|r_clk_count\(5) & (!\uart_unit|transmitter|r_clk_count[4]~22\)) # (!\uart_unit|transmitter|r_clk_count\(5) & ((\uart_unit|transmitter|r_clk_count[4]~22\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[5]~24\ = CARRY((!\uart_unit|transmitter|r_clk_count[4]~22\) # (!\uart_unit|transmitter|r_clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(5),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[4]~22\,
	combout => \uart_unit|transmitter|r_clk_count[5]~23_combout\,
	cout => \uart_unit|transmitter|r_clk_count[5]~24\);

-- Location: FF_X81_Y62_N13
\uart_unit|transmitter|r_clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[5]~23_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[7]~35_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(5));

-- Location: LCCOMB_X81_Y62_N14
\uart_unit|transmitter|r_clk_count[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[6]~25_combout\ = (\uart_unit|transmitter|r_clk_count\(6) & (\uart_unit|transmitter|r_clk_count[5]~24\ $ (GND))) # (!\uart_unit|transmitter|r_clk_count\(6) & (!\uart_unit|transmitter|r_clk_count[5]~24\ & VCC))
-- \uart_unit|transmitter|r_clk_count[6]~26\ = CARRY((\uart_unit|transmitter|r_clk_count\(6) & !\uart_unit|transmitter|r_clk_count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(6),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[5]~24\,
	combout => \uart_unit|transmitter|r_clk_count[6]~25_combout\,
	cout => \uart_unit|transmitter|r_clk_count[6]~26\);

-- Location: FF_X81_Y62_N15
\uart_unit|transmitter|r_clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[6]~25_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[7]~35_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(6));

-- Location: LCCOMB_X81_Y62_N16
\uart_unit|transmitter|r_clk_count[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[7]~27_combout\ = (\uart_unit|transmitter|r_clk_count\(7) & (!\uart_unit|transmitter|r_clk_count[6]~26\)) # (!\uart_unit|transmitter|r_clk_count\(7) & ((\uart_unit|transmitter|r_clk_count[6]~26\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[7]~28\ = CARRY((!\uart_unit|transmitter|r_clk_count[6]~26\) # (!\uart_unit|transmitter|r_clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(7),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[6]~26\,
	combout => \uart_unit|transmitter|r_clk_count[7]~27_combout\,
	cout => \uart_unit|transmitter|r_clk_count[7]~28\);

-- Location: FF_X81_Y62_N17
\uart_unit|transmitter|r_clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[7]~27_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[7]~35_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(7));

-- Location: LCCOMB_X81_Y62_N18
\uart_unit|transmitter|r_clk_count[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[8]~29_combout\ = (\uart_unit|transmitter|r_clk_count\(8) & (\uart_unit|transmitter|r_clk_count[7]~28\ $ (GND))) # (!\uart_unit|transmitter|r_clk_count\(8) & (!\uart_unit|transmitter|r_clk_count[7]~28\ & VCC))
-- \uart_unit|transmitter|r_clk_count[8]~30\ = CARRY((\uart_unit|transmitter|r_clk_count\(8) & !\uart_unit|transmitter|r_clk_count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(8),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[7]~28\,
	combout => \uart_unit|transmitter|r_clk_count[8]~29_combout\,
	cout => \uart_unit|transmitter|r_clk_count[8]~30\);

-- Location: FF_X81_Y62_N19
\uart_unit|transmitter|r_clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[8]~29_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[7]~35_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(8));

-- Location: LCCOMB_X81_Y62_N20
\uart_unit|transmitter|r_clk_count[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[9]~31_combout\ = (\uart_unit|transmitter|r_clk_count\(9) & (!\uart_unit|transmitter|r_clk_count[8]~30\)) # (!\uart_unit|transmitter|r_clk_count\(9) & ((\uart_unit|transmitter|r_clk_count[8]~30\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[9]~32\ = CARRY((!\uart_unit|transmitter|r_clk_count[8]~30\) # (!\uart_unit|transmitter|r_clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(9),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[8]~30\,
	combout => \uart_unit|transmitter|r_clk_count[9]~31_combout\,
	cout => \uart_unit|transmitter|r_clk_count[9]~32\);

-- Location: FF_X81_Y62_N21
\uart_unit|transmitter|r_clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[9]~31_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[7]~35_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(9));

-- Location: LCCOMB_X81_Y62_N22
\uart_unit|transmitter|r_clk_count[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[10]~33_combout\ = (\uart_unit|transmitter|r_clk_count\(10) & (\uart_unit|transmitter|r_clk_count[9]~32\ $ (GND))) # (!\uart_unit|transmitter|r_clk_count\(10) & (!\uart_unit|transmitter|r_clk_count[9]~32\ & VCC))
-- \uart_unit|transmitter|r_clk_count[10]~34\ = CARRY((\uart_unit|transmitter|r_clk_count\(10) & !\uart_unit|transmitter|r_clk_count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(10),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[9]~32\,
	combout => \uart_unit|transmitter|r_clk_count[10]~33_combout\,
	cout => \uart_unit|transmitter|r_clk_count[10]~34\);

-- Location: FF_X81_Y62_N23
\uart_unit|transmitter|r_clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[10]~33_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[7]~35_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(10));

-- Location: LCCOMB_X81_Y62_N24
\uart_unit|transmitter|r_clk_count[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[11]~36_combout\ = (\uart_unit|transmitter|r_clk_count\(11) & (!\uart_unit|transmitter|r_clk_count[10]~34\)) # (!\uart_unit|transmitter|r_clk_count\(11) & ((\uart_unit|transmitter|r_clk_count[10]~34\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[11]~37\ = CARRY((!\uart_unit|transmitter|r_clk_count[10]~34\) # (!\uart_unit|transmitter|r_clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(11),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[10]~34\,
	combout => \uart_unit|transmitter|r_clk_count[11]~36_combout\,
	cout => \uart_unit|transmitter|r_clk_count[11]~37\);

-- Location: FF_X81_Y62_N25
\uart_unit|transmitter|r_clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[11]~36_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[7]~35_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(11));

-- Location: LCCOMB_X80_Y62_N26
\uart_unit|transmitter|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|LessThan1~0_combout\ = (!\uart_unit|transmitter|r_clk_count\(11) & !\uart_unit|transmitter|r_clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(11),
	datad => \uart_unit|transmitter|r_clk_count\(10),
	combout => \uart_unit|transmitter|LessThan1~0_combout\);

-- Location: LCCOMB_X81_Y62_N28
\uart_unit|transmitter|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|LessThan1~2_combout\ = (!\uart_unit|transmitter|r_clk_count\(9) & (!\uart_unit|transmitter|r_clk_count\(7) & (!\uart_unit|transmitter|r_clk_count\(11) & !\uart_unit|transmitter|r_clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(9),
	datab => \uart_unit|transmitter|r_clk_count\(7),
	datac => \uart_unit|transmitter|r_clk_count\(11),
	datad => \uart_unit|transmitter|r_clk_count\(8),
	combout => \uart_unit|transmitter|LessThan1~2_combout\);

-- Location: LCCOMB_X81_Y62_N0
\uart_unit|transmitter|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|LessThan1~1_combout\ = ((!\uart_unit|transmitter|r_clk_count\(5) & ((!\uart_unit|transmitter|r_clk_count\(4)) # (!\uart_unit|transmitter|r_clk_count\(3))))) # (!\uart_unit|transmitter|r_clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(5),
	datab => \uart_unit|transmitter|r_clk_count\(3),
	datac => \uart_unit|transmitter|r_clk_count\(6),
	datad => \uart_unit|transmitter|r_clk_count\(4),
	combout => \uart_unit|transmitter|LessThan1~1_combout\);

-- Location: LCCOMB_X81_Y62_N26
\uart_unit|transmitter|r_clk_count[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[12]~38_combout\ = \uart_unit|transmitter|r_clk_count\(12) $ (!\uart_unit|transmitter|r_clk_count[11]~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(12),
	cin => \uart_unit|transmitter|r_clk_count[11]~37\,
	combout => \uart_unit|transmitter|r_clk_count[12]~38_combout\);

-- Location: FF_X81_Y62_N27
\uart_unit|transmitter|r_clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[12]~38_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[7]~35_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(12));

-- Location: LCCOMB_X80_Y62_N0
\uart_unit|transmitter|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|LessThan1~3_combout\ = (\uart_unit|transmitter|LessThan1~0_combout\) # (((\uart_unit|transmitter|LessThan1~2_combout\ & \uart_unit|transmitter|LessThan1~1_combout\)) # (!\uart_unit|transmitter|r_clk_count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|LessThan1~0_combout\,
	datab => \uart_unit|transmitter|LessThan1~2_combout\,
	datac => \uart_unit|transmitter|LessThan1~1_combout\,
	datad => \uart_unit|transmitter|r_clk_count\(12),
	combout => \uart_unit|transmitter|LessThan1~3_combout\);

-- Location: LCCOMB_X79_Y63_N22
\uart_unit|transmitter|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector20~1_combout\ = (\uart_unit|fifo_tx|Equal3~1_combout\ & (((\uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\ & \uart_unit|transmitter|LessThan1~3_combout\)))) # (!\uart_unit|fifo_tx|Equal3~1_combout\ & 
-- (((\uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\ & \uart_unit|transmitter|LessThan1~3_combout\)) # (!\uart_unit|transmitter|r_sm_main.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Equal3~1_combout\,
	datab => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datac => \uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\,
	datad => \uart_unit|transmitter|LessThan1~3_combout\,
	combout => \uart_unit|transmitter|Selector20~1_combout\);

-- Location: FF_X79_Y63_N23
\uart_unit|transmitter|r_sm_main.s_tx_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\);

-- Location: LCCOMB_X81_Y62_N30
\uart_unit|transmitter|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector18~0_combout\ = (!\uart_unit|transmitter|LessThan1~0_combout\ & (\uart_unit|transmitter|r_clk_count\(12) & ((!\uart_unit|transmitter|LessThan1~1_combout\) # (!\uart_unit|transmitter|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|LessThan1~0_combout\,
	datab => \uart_unit|transmitter|LessThan1~2_combout\,
	datac => \uart_unit|transmitter|r_clk_count\(12),
	datad => \uart_unit|transmitter|LessThan1~1_combout\,
	combout => \uart_unit|transmitter|Selector18~0_combout\);

-- Location: LCCOMB_X79_Y63_N20
\uart_unit|transmitter|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector18~1_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & ((\uart_unit|transmitter|r_bit_index\(0) $ (\uart_unit|transmitter|Selector18~0_combout\)))) # (!\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & 
-- (\uart_unit|transmitter|r_sm_main.s_idle~q\ & (\uart_unit|transmitter|r_bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datab => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datac => \uart_unit|transmitter|r_bit_index\(0),
	datad => \uart_unit|transmitter|Selector18~0_combout\,
	combout => \uart_unit|transmitter|Selector18~1_combout\);

-- Location: FF_X79_Y63_N21
\uart_unit|transmitter|r_bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_bit_index\(0));

-- Location: LCCOMB_X79_Y63_N6
\uart_unit|transmitter|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector17~0_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & ((\uart_unit|transmitter|r_bit_index\(0)))) # (!\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & (\uart_unit|transmitter|r_sm_main.s_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datac => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datad => \uart_unit|transmitter|r_bit_index\(0),
	combout => \uart_unit|transmitter|Selector17~0_combout\);

-- Location: LCCOMB_X79_Y63_N30
\uart_unit|transmitter|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector17~1_combout\ = (\uart_unit|transmitter|Selector17~0_combout\ & (\uart_unit|transmitter|r_bit_index\(1) $ (((\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & !\uart_unit|transmitter|LessThan1~3_combout\))))) # 
-- (!\uart_unit|transmitter|Selector17~0_combout\ & (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & (\uart_unit|transmitter|r_bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector17~0_combout\,
	datab => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \uart_unit|transmitter|r_bit_index\(1),
	datad => \uart_unit|transmitter|LessThan1~3_combout\,
	combout => \uart_unit|transmitter|Selector17~1_combout\);

-- Location: FF_X79_Y63_N31
\uart_unit|transmitter|r_bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_bit_index\(1));

-- Location: LCCOMB_X79_Y63_N0
\uart_unit|transmitter|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~0_combout\ = (\uart_unit|transmitter|r_bit_index\(0) & (\uart_unit|transmitter|r_bit_index\(1) & !\uart_unit|transmitter|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_bit_index\(0),
	datac => \uart_unit|transmitter|r_bit_index\(1),
	datad => \uart_unit|transmitter|LessThan1~3_combout\,
	combout => \uart_unit|transmitter|Selector16~0_combout\);

-- Location: LCCOMB_X79_Y63_N2
\uart_unit|transmitter|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~1_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & ((\uart_unit|transmitter|r_bit_index\(2) $ (\uart_unit|transmitter|Selector16~0_combout\)))) # (!\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & 
-- (\uart_unit|transmitter|r_sm_main.s_idle~q\ & (\uart_unit|transmitter|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datab => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datac => \uart_unit|transmitter|r_bit_index\(2),
	datad => \uart_unit|transmitter|Selector16~0_combout\,
	combout => \uart_unit|transmitter|Selector16~1_combout\);

-- Location: FF_X79_Y63_N3
\uart_unit|transmitter|r_bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_bit_index\(2));

-- Location: LCCOMB_X79_Y63_N16
\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\ = (\uart_unit|transmitter|r_bit_index\(1) & (\uart_unit|transmitter|r_bit_index\(2) & (\uart_unit|transmitter|r_bit_index\(0) & !\uart_unit|transmitter|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_bit_index\(1),
	datab => \uart_unit|transmitter|r_bit_index\(2),
	datac => \uart_unit|transmitter|r_bit_index\(0),
	datad => \uart_unit|transmitter|LessThan1~3_combout\,
	combout => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\);

-- Location: LCCOMB_X79_Y63_N4
\uart_unit|transmitter|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector21~0_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\ & (((!\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\ & \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\)) # 
-- (!\uart_unit|transmitter|LessThan1~3_combout\))) # (!\uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\ & (!\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\ & (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\,
	datab => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\,
	datac => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datad => \uart_unit|transmitter|LessThan1~3_combout\,
	combout => \uart_unit|transmitter|Selector21~0_combout\);

-- Location: FF_X79_Y63_N5
\uart_unit|transmitter|r_sm_main.s_tx_data_bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\);

-- Location: LCCOMB_X79_Y63_N10
\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~1_combout\ = (\uart_unit|transmitter|LessThan1~3_combout\ & ((\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\) # ((\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & 
-- \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\)))) # (!\uart_unit|transmitter|LessThan1~3_combout\ & (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & ((\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|LessThan1~3_combout\,
	datab => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	datad => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\,
	combout => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~1_combout\);

-- Location: FF_X79_Y63_N11
\uart_unit|transmitter|r_sm_main.s_tx_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\);

-- Location: LCCOMB_X79_Y63_N26
\uart_unit|transmitter|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector2~0_combout\ = (\uart_unit|transmitter|r_tx_done~q\ & ((\uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\) # ((\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\) # (\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\,
	datab => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \uart_unit|transmitter|r_tx_done~q\,
	datad => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	combout => \uart_unit|transmitter|Selector2~0_combout\);

-- Location: LCCOMB_X79_Y63_N8
\uart_unit|transmitter|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector2~1_combout\ = (\uart_unit|transmitter|Selector2~0_combout\) # ((\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\ & !\uart_unit|transmitter|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	datac => \uart_unit|transmitter|Selector2~0_combout\,
	datad => \uart_unit|transmitter|LessThan1~3_combout\,
	combout => \uart_unit|transmitter|Selector2~1_combout\);

-- Location: FF_X79_Y63_N9
\uart_unit|transmitter|r_tx_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_tx_done~q\);

-- Location: LCCOMB_X80_Y61_N12
\uart_unit|fifo_tx|p_control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|p_control~0_combout\ = (!\uart_unit|transmitter|r_tx_done~q\ & \r_wr_tx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_tx_done~q\,
	datac => \r_wr_tx~q\,
	combout => \uart_unit|fifo_tx|p_control~0_combout\);

-- Location: FF_X80_Y61_N23
\uart_unit|fifo_tx|r_fifo_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_count[3]~11_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \uart_unit|fifo_tx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_count\(3));

-- Location: LCCOMB_X80_Y60_N2
\r_tx_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[0]~0_combout\ = (\r_sm_main.s_put_fifo_data~q\ & (((!\uart_unit|fifo_tx|r_fifo_count\(1)) # (!\uart_unit|fifo_tx|Equal3~0_combout\)) # (!\uart_unit|fifo_tx|r_fifo_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_count\(3),
	datab => \r_sm_main.s_put_fifo_data~q\,
	datac => \uart_unit|fifo_tx|Equal3~0_combout\,
	datad => \uart_unit|fifo_tx|r_fifo_count\(1),
	combout => \r_tx_data[0]~0_combout\);

-- Location: FF_X80_Y60_N3
\r_sm_main.s_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_tx_data[0]~0_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm_main.s_clear~q\);

-- Location: LCCOMB_X83_Y60_N28
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\r_sm_main.s_clear~q\ & ((\uart_unit|fifo_rx|Equal3~0_combout\) # (\r_sm_main.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Equal3~0_combout\,
	datac => \r_sm_main.s_idle~q\,
	datad => \r_sm_main.s_clear~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X83_Y60_N29
\r_sm_main.s_idle\ : dffeas
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
	q => \r_sm_main.s_idle~q\);

-- Location: LCCOMB_X83_Y60_N16
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\r_sm_main.s_idle~q\ & (((\r_rd_rx~q\ & !\r_sm_main.s_get_fifo_data~q\)))) # (!\r_sm_main.s_idle~q\ & (\uart_unit|fifo_rx|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Equal3~0_combout\,
	datab => \r_sm_main.s_idle~q\,
	datac => \r_rd_rx~q\,
	datad => \r_sm_main.s_get_fifo_data~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X83_Y60_N17
r_rd_rx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_rd_rx~q\);

-- Location: LCCOMB_X83_Y60_N4
\uart_unit|fifo_rx|p_control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|p_control~0_combout\ = (\uart_unit|receiver|r_rx_dv~q\ & !\r_rd_rx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_rx_dv~q\,
	datad => \r_rd_rx~q\,
	combout => \uart_unit|fifo_rx|p_control~0_combout\);

-- Location: FF_X83_Y60_N13
\uart_unit|fifo_rx|r_fifo_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_count[3]~11_combout\,
	sclr => \ALT_INV_i_rst_sync~input_o\,
	ena => \uart_unit|fifo_rx|r_fifo_count[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(3));

-- Location: LCCOMB_X83_Y60_N26
\uart_unit|fifo_rx|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Equal2~1_combout\ = (\uart_unit|fifo_rx|r_fifo_count\(3) & (\uart_unit|fifo_rx|Equal2~0_combout\ & \uart_unit|fifo_rx|r_fifo_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(3),
	datac => \uart_unit|fifo_rx|Equal2~0_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_count\(1),
	combout => \uart_unit|fifo_rx|Equal2~1_combout\);

-- Location: LCCOMB_X79_Y61_N30
\uart_unit|fifo_tx|r_wr_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_wr_index~0_combout\ = (!\uart_unit|fifo_tx|r_wr_index\(0) & \i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_tx|r_wr_index\(0),
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_tx|r_wr_index~0_combout\);

-- Location: LCCOMB_X79_Y61_N16
\uart_unit|fifo_tx|r_wr_index[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_wr_index[3]~1_combout\ = ((\uart_unit|fifo_tx|Equal2~0_combout\ & \r_wr_tx~q\)) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Equal2~0_combout\,
	datab => \i_rst_sync~input_o\,
	datad => \r_wr_tx~q\,
	combout => \uart_unit|fifo_tx|r_wr_index[3]~1_combout\);

-- Location: FF_X79_Y61_N31
\uart_unit|fifo_tx|r_wr_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_wr_index~0_combout\,
	ena => \uart_unit|fifo_tx|r_wr_index[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_wr_index\(0));

-- Location: LCCOMB_X79_Y61_N22
\uart_unit|fifo_tx|r_wr_index[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_wr_index[3]~2_combout\ = (\uart_unit|fifo_tx|r_wr_index\(2)) # (((\uart_unit|fifo_tx|r_wr_index\(1)) # (!\uart_unit|fifo_tx|r_wr_index\(0))) # (!\uart_unit|fifo_tx|r_wr_index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_wr_index\(2),
	datab => \uart_unit|fifo_tx|r_wr_index\(3),
	datac => \uart_unit|fifo_tx|r_wr_index\(0),
	datad => \uart_unit|fifo_tx|r_wr_index\(1),
	combout => \uart_unit|fifo_tx|r_wr_index[3]~2_combout\);

-- Location: LCCOMB_X79_Y61_N8
\uart_unit|fifo_tx|r_wr_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_wr_index~3_combout\ = (\uart_unit|fifo_tx|r_wr_index[3]~2_combout\ & (\i_rst_sync~input_o\ & (\uart_unit|fifo_tx|r_wr_index\(0) $ (\uart_unit|fifo_tx|r_wr_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_wr_index\(0),
	datab => \uart_unit|fifo_tx|r_wr_index[3]~2_combout\,
	datac => \uart_unit|fifo_tx|r_wr_index\(1),
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_tx|r_wr_index~3_combout\);

-- Location: FF_X79_Y61_N9
\uart_unit|fifo_tx|r_wr_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_wr_index~3_combout\,
	ena => \uart_unit|fifo_tx|r_wr_index[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_wr_index\(1));

-- Location: LCCOMB_X79_Y61_N20
\uart_unit|fifo_tx|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add2~0_combout\ = \uart_unit|fifo_tx|r_wr_index\(2) $ (((\uart_unit|fifo_tx|r_wr_index\(0) & \uart_unit|fifo_tx|r_wr_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_wr_index\(0),
	datab => \uart_unit|fifo_tx|r_wr_index\(2),
	datad => \uart_unit|fifo_tx|r_wr_index\(1),
	combout => \uart_unit|fifo_tx|Add2~0_combout\);

-- Location: LCCOMB_X79_Y61_N26
\uart_unit|fifo_tx|r_wr_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_wr_index~4_combout\ = (\uart_unit|fifo_tx|Add2~0_combout\ & (\uart_unit|fifo_tx|r_wr_index[3]~2_combout\ & \i_rst_sync~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|Add2~0_combout\,
	datac => \uart_unit|fifo_tx|r_wr_index[3]~2_combout\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_tx|r_wr_index~4_combout\);

-- Location: FF_X79_Y61_N27
\uart_unit|fifo_tx|r_wr_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_wr_index~4_combout\,
	ena => \uart_unit|fifo_tx|r_wr_index[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_wr_index\(2));

-- Location: LCCOMB_X79_Y61_N0
\uart_unit|fifo_tx|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add2~1_combout\ = \uart_unit|fifo_tx|r_wr_index\(3) $ (((\uart_unit|fifo_tx|r_wr_index\(0) & (\uart_unit|fifo_tx|r_wr_index\(2) & \uart_unit|fifo_tx|r_wr_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_wr_index\(0),
	datab => \uart_unit|fifo_tx|r_wr_index\(2),
	datac => \uart_unit|fifo_tx|r_wr_index\(3),
	datad => \uart_unit|fifo_tx|r_wr_index\(1),
	combout => \uart_unit|fifo_tx|Add2~1_combout\);

-- Location: LCCOMB_X79_Y61_N4
\uart_unit|fifo_tx|r_wr_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_wr_index~5_combout\ = (\uart_unit|fifo_tx|Add2~1_combout\ & (\uart_unit|fifo_tx|r_wr_index[3]~2_combout\ & \i_rst_sync~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|Add2~1_combout\,
	datac => \uart_unit|fifo_tx|r_wr_index[3]~2_combout\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_tx|r_wr_index~5_combout\);

-- Location: FF_X79_Y61_N5
\uart_unit|fifo_tx|r_wr_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_wr_index~5_combout\,
	ena => \uart_unit|fifo_tx|r_wr_index[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_wr_index\(3));

-- Location: FF_X79_Y61_N17
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_tx|r_wr_index\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(7));

-- Location: LCCOMB_X80_Y61_N8
\uart_unit|fifo_tx|r_rd_index~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index~1_combout\ = (\i_rst_sync~input_o\ & ((\uart_unit|fifo_tx|Equal3~1_combout\) # (!\uart_unit|transmitter|r_tx_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_tx_done~q\,
	datac => \uart_unit|fifo_tx|Equal3~1_combout\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_tx|r_rd_index~1_combout\);

-- Location: LCCOMB_X80_Y61_N6
\uart_unit|fifo_tx|r_rd_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index~0_combout\ = (\i_rst_sync~input_o\ & (\uart_unit|fifo_tx|r_rd_index\(0) $ (((!\uart_unit|fifo_tx|Equal3~1_combout\ & \uart_unit|transmitter|r_tx_done~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Equal3~1_combout\,
	datab => \uart_unit|transmitter|r_tx_done~q\,
	datac => \uart_unit|fifo_tx|r_rd_index\(0),
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_tx|r_rd_index~0_combout\);

-- Location: FF_X80_Y61_N7
\uart_unit|fifo_tx|r_rd_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_rd_index~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_rd_index\(0));

-- Location: FF_X80_Y61_N27
\uart_unit|fifo_tx|r_rd_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_rd_index~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_rd_index\(3));

-- Location: LCCOMB_X80_Y61_N30
\uart_unit|fifo_tx|r_rd_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index~4_combout\ = (\uart_unit|transmitter|r_tx_done~q\ & (!\uart_unit|fifo_tx|Equal3~1_combout\ & \i_rst_sync~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_tx_done~q\,
	datac => \uart_unit|fifo_tx|Equal3~1_combout\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_tx|r_rd_index~4_combout\);

-- Location: LCCOMB_X80_Y61_N10
\uart_unit|fifo_tx|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Equal1~0_combout\ = (\uart_unit|fifo_tx|r_rd_index\(0) & (!\uart_unit|fifo_tx|r_rd_index\(2) & (\uart_unit|fifo_tx|r_rd_index\(3) & !\uart_unit|fifo_tx|r_rd_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_rd_index\(0),
	datab => \uart_unit|fifo_tx|r_rd_index\(2),
	datac => \uart_unit|fifo_tx|r_rd_index\(3),
	datad => \uart_unit|fifo_tx|r_rd_index\(1),
	combout => \uart_unit|fifo_tx|Equal1~0_combout\);

-- Location: LCCOMB_X80_Y61_N0
\uart_unit|fifo_tx|r_rd_index~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index~2_combout\ = (!\uart_unit|fifo_tx|Equal1~0_combout\ & (\i_rst_sync~input_o\ & (!\uart_unit|fifo_tx|Equal3~1_combout\ & \uart_unit|transmitter|r_tx_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Equal1~0_combout\,
	datab => \i_rst_sync~input_o\,
	datac => \uart_unit|fifo_tx|Equal3~1_combout\,
	datad => \uart_unit|transmitter|r_tx_done~q\,
	combout => \uart_unit|fifo_tx|r_rd_index~2_combout\);

-- Location: LCCOMB_X79_Y61_N10
\uart_unit|fifo_tx|r_rd_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index~3_combout\ = (\uart_unit|fifo_tx|r_rd_index\(1) & ((\uart_unit|fifo_tx|r_rd_index~1_combout\) # ((!\uart_unit|fifo_tx|r_rd_index\(0) & \uart_unit|fifo_tx|r_rd_index~2_combout\)))) # (!\uart_unit|fifo_tx|r_rd_index\(1) & 
-- (\uart_unit|fifo_tx|r_rd_index\(0) & (\uart_unit|fifo_tx|r_rd_index~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_rd_index\(0),
	datab => \uart_unit|fifo_tx|r_rd_index~2_combout\,
	datac => \uart_unit|fifo_tx|r_rd_index\(1),
	datad => \uart_unit|fifo_tx|r_rd_index~1_combout\,
	combout => \uart_unit|fifo_tx|r_rd_index~3_combout\);

-- Location: FF_X79_Y61_N11
\uart_unit|fifo_tx|r_rd_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_rd_index~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_rd_index\(1));

-- Location: LCCOMB_X79_Y61_N18
\uart_unit|fifo_tx|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add3~0_combout\ = \uart_unit|fifo_tx|r_rd_index\(2) $ (((\uart_unit|fifo_tx|r_rd_index\(1) & \uart_unit|fifo_tx|r_rd_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_rd_index\(1),
	datab => \uart_unit|fifo_tx|r_rd_index\(2),
	datad => \uart_unit|fifo_tx|r_rd_index\(0),
	combout => \uart_unit|fifo_tx|Add3~0_combout\);

-- Location: LCCOMB_X79_Y61_N14
\uart_unit|fifo_tx|r_rd_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index~5_combout\ = (\uart_unit|fifo_tx|r_rd_index~4_combout\ & ((\uart_unit|fifo_tx|Add3~0_combout\) # ((\uart_unit|fifo_tx|r_rd_index\(2) & \uart_unit|fifo_tx|r_rd_index~1_combout\)))) # (!\uart_unit|fifo_tx|r_rd_index~4_combout\ 
-- & (\uart_unit|fifo_tx|r_rd_index\(2) & (\uart_unit|fifo_tx|r_rd_index~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_rd_index~4_combout\,
	datab => \uart_unit|fifo_tx|r_rd_index\(2),
	datac => \uart_unit|fifo_tx|r_rd_index~1_combout\,
	datad => \uart_unit|fifo_tx|Add3~0_combout\,
	combout => \uart_unit|fifo_tx|r_rd_index~5_combout\);

-- Location: FF_X79_Y61_N29
\uart_unit|fifo_tx|r_rd_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_tx|r_rd_index~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_rd_index\(2));

-- Location: LCCOMB_X79_Y61_N28
\uart_unit|fifo_tx|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add3~1_combout\ = \uart_unit|fifo_tx|r_rd_index\(3) $ (((\uart_unit|fifo_tx|r_rd_index\(0) & (\uart_unit|fifo_tx|r_rd_index\(2) & \uart_unit|fifo_tx|r_rd_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_rd_index\(0),
	datab => \uart_unit|fifo_tx|r_rd_index\(3),
	datac => \uart_unit|fifo_tx|r_rd_index\(2),
	datad => \uart_unit|fifo_tx|r_rd_index\(1),
	combout => \uart_unit|fifo_tx|Add3~1_combout\);

-- Location: LCCOMB_X80_Y61_N26
\uart_unit|fifo_tx|r_rd_index~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index~6_combout\ = (\uart_unit|fifo_tx|r_rd_index~1_combout\ & ((\uart_unit|fifo_tx|r_rd_index\(3)) # ((\uart_unit|fifo_tx|Add3~1_combout\ & \uart_unit|fifo_tx|r_rd_index~2_combout\)))) # (!\uart_unit|fifo_tx|r_rd_index~1_combout\ 
-- & (\uart_unit|fifo_tx|Add3~1_combout\ & ((\uart_unit|fifo_tx|r_rd_index~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_rd_index~1_combout\,
	datab => \uart_unit|fifo_tx|Add3~1_combout\,
	datac => \uart_unit|fifo_tx|r_rd_index\(3),
	datad => \uart_unit|fifo_tx|r_rd_index~2_combout\,
	combout => \uart_unit|fifo_tx|r_rd_index~6_combout\);

-- Location: FF_X79_Y61_N21
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_tx|r_rd_index~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(8));

-- Location: FF_X79_Y61_N25
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_tx|r_rd_index~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(6));

-- Location: FF_X79_Y61_N13
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_tx|r_wr_index\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(5));

-- Location: LCCOMB_X79_Y61_N24
\uart_unit|fifo_tx|r_fifo_data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~14_combout\ = (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(7) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(8) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(6) $ (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(5))))) # 
-- (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(7) & (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(8) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(6) $ (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(7),
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(8),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(6),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(5),
	combout => \uart_unit|fifo_tx|r_fifo_data~14_combout\);

-- Location: LCCOMB_X79_Y61_N2
\uart_unit|fifo_tx|r_fifo_data~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~24_combout\ = (\i_rst_sync~input_o\ & \r_wr_tx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_rst_sync~input_o\,
	datad => \r_wr_tx~q\,
	combout => \uart_unit|fifo_tx|r_fifo_data~24_combout\);

-- Location: FF_X79_Y61_N3
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(0));

-- Location: FF_X79_Y61_N23
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_tx|r_wr_index\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(1));

-- Location: FF_X79_Y61_N19
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_tx|r_wr_index\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(3));

-- Location: FF_X79_Y61_N7
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_tx|r_rd_index~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(4));

-- Location: LCCOMB_X80_Y61_N4
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[2]~feeder_combout\ = \uart_unit|fifo_tx|r_rd_index~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_tx|r_rd_index~0_combout\,
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X80_Y61_N5
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(2));

-- Location: LCCOMB_X79_Y61_N6
\uart_unit|fifo_tx|r_fifo_data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~13_combout\ = (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(1) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(2) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(3) $ (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(4))))) # 
-- (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(1) & (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(2) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(3) $ (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(1),
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(3),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(4),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(2),
	combout => \uart_unit|fifo_tx|r_fifo_data~13_combout\);

-- Location: LCCOMB_X79_Y61_N12
\uart_unit|fifo_tx|r_fifo_data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~15_combout\ = (\uart_unit|fifo_tx|r_fifo_data~14_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(0) & \uart_unit|fifo_tx|r_fifo_data~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~14_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(0),
	datad => \uart_unit|fifo_tx|r_fifo_data~13_combout\,
	combout => \uart_unit|fifo_tx|r_fifo_data~15_combout\);

-- Location: LCCOMB_X80_Y60_N10
\r_data[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data[0]~8_combout\ = r_data(0) $ (VCC)
-- \r_data[0]~9\ = CARRY(r_data(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data(0),
	datad => VCC,
	combout => \r_data[0]~8_combout\,
	cout => \r_data[0]~9\);

-- Location: LCCOMB_X77_Y60_N18
\r_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data[0]~feeder_combout\ = \r_data[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_data[0]~8_combout\,
	combout => \r_data[0]~feeder_combout\);

-- Location: LCCOMB_X77_Y60_N12
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X77_Y60_N13
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(10));

-- Location: LCCOMB_X76_Y60_N8
\uart_unit|receiver|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~1_combout\ = (!\uart_unit|receiver|r_bit_index\(0) & (!\uart_unit|receiver|r_bit_index\(2) & (!\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(2),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~1_combout\);

-- Location: LCCOMB_X77_Y60_N30
\uart_unit|receiver|r_rx_byte[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[0]~0_combout\ = (\uart_unit|receiver|Decoder0~1_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~1_combout\ & ((\uart_unit|receiver|r_rx_byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(0),
	datad => \uart_unit|receiver|Decoder0~1_combout\,
	combout => \uart_unit|receiver|r_rx_byte[0]~0_combout\);

-- Location: FF_X77_Y60_N31
\uart_unit|receiver|r_rx_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(0));

-- Location: LCCOMB_X77_Y60_N2
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[9]~feeder_combout\ = \uart_unit|receiver|r_rx_byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_rx_byte\(0),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X77_Y60_N3
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(9));

-- Location: LCCOMB_X82_Y60_N18
\uart_unit|fifo_rx|r_rd_index[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index[3]~feeder_combout\ = \uart_unit|fifo_rx|r_rd_index~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_rx|r_rd_index~5_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index[3]~feeder_combout\);

-- Location: FF_X82_Y60_N19
\uart_unit|fifo_rx|r_rd_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_rd_index[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_rd_index\(3));

-- Location: LCCOMB_X82_Y60_N28
\uart_unit|fifo_rx|r_rd_index~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~1_combout\ = (\i_rst_sync~input_o\ & ((!\uart_unit|fifo_rx|Equal3~0_combout\) # (!\r_rd_rx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_sync~input_o\,
	datab => \r_rd_rx~q\,
	datad => \uart_unit|fifo_rx|Equal3~0_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index~1_combout\);

-- Location: LCCOMB_X82_Y60_N4
\uart_unit|fifo_rx|r_rd_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~0_combout\ = (\i_rst_sync~input_o\ & (\uart_unit|fifo_rx|r_rd_index\(0) $ (((\r_rd_rx~q\ & \uart_unit|fifo_rx|Equal3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index\(0),
	datab => \r_rd_rx~q\,
	datac => \i_rst_sync~input_o\,
	datad => \uart_unit|fifo_rx|Equal3~0_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index~0_combout\);

-- Location: FF_X82_Y60_N17
\uart_unit|fifo_rx|r_rd_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_rx|r_rd_index~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_rd_index\(0));

-- Location: LCCOMB_X82_Y60_N0
\uart_unit|fifo_rx|r_rd_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~3_combout\ = (\uart_unit|fifo_rx|r_rd_index\(1) & ((\uart_unit|fifo_rx|r_rd_index~1_combout\) # ((!\uart_unit|fifo_rx|r_rd_index\(0) & \uart_unit|fifo_rx|r_rd_index~2_combout\)))) # (!\uart_unit|fifo_rx|r_rd_index\(1) & 
-- (\uart_unit|fifo_rx|r_rd_index\(0) & (\uart_unit|fifo_rx|r_rd_index~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index\(0),
	datab => \uart_unit|fifo_rx|r_rd_index\(1),
	datac => \uart_unit|fifo_rx|r_rd_index~2_combout\,
	datad => \uart_unit|fifo_rx|r_rd_index~1_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index~3_combout\);

-- Location: LCCOMB_X82_Y60_N8
\uart_unit|fifo_rx|r_rd_index[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index[1]~feeder_combout\ = \uart_unit|fifo_rx|r_rd_index~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_rx|r_rd_index~3_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index[1]~feeder_combout\);

-- Location: FF_X82_Y60_N9
\uart_unit|fifo_rx|r_rd_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_rd_index[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_rd_index\(1));

-- Location: LCCOMB_X82_Y60_N2
\uart_unit|fifo_rx|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add3~0_combout\ = \uart_unit|fifo_rx|r_rd_index\(2) $ (((\uart_unit|fifo_rx|r_rd_index\(0) & \uart_unit|fifo_rx|r_rd_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index\(2),
	datab => \uart_unit|fifo_rx|r_rd_index\(0),
	datad => \uart_unit|fifo_rx|r_rd_index\(1),
	combout => \uart_unit|fifo_rx|Add3~0_combout\);

-- Location: LCCOMB_X82_Y60_N14
\uart_unit|fifo_rx|p_control~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|p_control~1_combout\ = (\r_rd_rx~q\ & ((\uart_unit|fifo_rx|r_fifo_count\(3)) # ((\uart_unit|fifo_rx|r_fifo_count\(1)) # (!\uart_unit|fifo_rx|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_rd_rx~q\,
	datab => \uart_unit|fifo_rx|r_fifo_count\(3),
	datac => \uart_unit|fifo_rx|r_fifo_count\(1),
	datad => \uart_unit|fifo_rx|Equal2~0_combout\,
	combout => \uart_unit|fifo_rx|p_control~1_combout\);

-- Location: LCCOMB_X82_Y60_N30
\uart_unit|fifo_rx|r_rd_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~4_combout\ = (\i_rst_sync~input_o\ & ((\uart_unit|fifo_rx|p_control~1_combout\ & (\uart_unit|fifo_rx|Add3~0_combout\)) # (!\uart_unit|fifo_rx|p_control~1_combout\ & ((\uart_unit|fifo_rx|r_rd_index\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_sync~input_o\,
	datab => \uart_unit|fifo_rx|Add3~0_combout\,
	datac => \uart_unit|fifo_rx|r_rd_index\(2),
	datad => \uart_unit|fifo_rx|p_control~1_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index~4_combout\);

-- Location: FF_X82_Y60_N31
\uart_unit|fifo_rx|r_rd_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_rd_index~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_rd_index\(2));

-- Location: LCCOMB_X82_Y60_N12
\uart_unit|fifo_rx|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Equal1~0_combout\ = (\uart_unit|fifo_rx|r_rd_index\(0) & (!\uart_unit|fifo_rx|r_rd_index\(1) & (!\uart_unit|fifo_rx|r_rd_index\(2) & \uart_unit|fifo_rx|r_rd_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index\(0),
	datab => \uart_unit|fifo_rx|r_rd_index\(1),
	datac => \uart_unit|fifo_rx|r_rd_index\(2),
	datad => \uart_unit|fifo_rx|r_rd_index\(3),
	combout => \uart_unit|fifo_rx|Equal1~0_combout\);

-- Location: LCCOMB_X82_Y60_N22
\uart_unit|fifo_rx|r_rd_index~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~2_combout\ = (\i_rst_sync~input_o\ & (\r_rd_rx~q\ & (!\uart_unit|fifo_rx|Equal1~0_combout\ & \uart_unit|fifo_rx|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_sync~input_o\,
	datab => \r_rd_rx~q\,
	datac => \uart_unit|fifo_rx|Equal1~0_combout\,
	datad => \uart_unit|fifo_rx|Equal3~0_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index~2_combout\);

-- Location: LCCOMB_X82_Y60_N20
\uart_unit|fifo_rx|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add3~1_combout\ = \uart_unit|fifo_rx|r_rd_index\(3) $ (((\uart_unit|fifo_rx|r_rd_index\(0) & (\uart_unit|fifo_rx|r_rd_index\(1) & \uart_unit|fifo_rx|r_rd_index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index\(0),
	datab => \uart_unit|fifo_rx|r_rd_index\(1),
	datac => \uart_unit|fifo_rx|r_rd_index\(2),
	datad => \uart_unit|fifo_rx|r_rd_index\(3),
	combout => \uart_unit|fifo_rx|Add3~1_combout\);

-- Location: LCCOMB_X82_Y60_N26
\uart_unit|fifo_rx|r_rd_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~5_combout\ = (\uart_unit|fifo_rx|r_rd_index\(3) & ((\uart_unit|fifo_rx|r_rd_index~1_combout\) # ((\uart_unit|fifo_rx|r_rd_index~2_combout\ & \uart_unit|fifo_rx|Add3~1_combout\)))) # (!\uart_unit|fifo_rx|r_rd_index\(3) & 
-- (((\uart_unit|fifo_rx|r_rd_index~2_combout\ & \uart_unit|fifo_rx|Add3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index\(3),
	datab => \uart_unit|fifo_rx|r_rd_index~1_combout\,
	datac => \uart_unit|fifo_rx|r_rd_index~2_combout\,
	datad => \uart_unit|fifo_rx|Add3~1_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index~5_combout\);

-- Location: FF_X82_Y60_N3
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_rx|r_rd_index~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(8));

-- Location: FF_X82_Y60_N29
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_rx|r_rd_index~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(6));

-- Location: LCCOMB_X81_Y60_N10
\uart_unit|fifo_rx|r_wr_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index~0_combout\ = (!\uart_unit|fifo_rx|r_wr_index\(0) & \i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_rx|r_wr_index\(0),
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_rx|r_wr_index~0_combout\);

-- Location: LCCOMB_X82_Y60_N24
\uart_unit|fifo_rx|r_wr_index[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index[1]~1_combout\ = (\i_rst_sync~input_o\ & ((\uart_unit|fifo_rx|r_fifo_count\(3)) # (!\uart_unit|receiver|r_rx_dv~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_sync~input_o\,
	datac => \uart_unit|fifo_rx|r_fifo_count\(3),
	datad => \uart_unit|receiver|r_rx_dv~q\,
	combout => \uart_unit|fifo_rx|r_wr_index[1]~1_combout\);

-- Location: LCCOMB_X82_Y60_N10
\uart_unit|fifo_rx|r_wr_index[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index[1]~2_combout\ = ((\uart_unit|receiver|r_rx_dv~q\ & ((!\uart_unit|fifo_rx|Equal2~0_combout\) # (!\uart_unit|fifo_rx|r_fifo_count\(1))))) # (!\uart_unit|fifo_rx|r_wr_index[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_rx_dv~q\,
	datab => \uart_unit|fifo_rx|r_wr_index[1]~1_combout\,
	datac => \uart_unit|fifo_rx|r_fifo_count\(1),
	datad => \uart_unit|fifo_rx|Equal2~0_combout\,
	combout => \uart_unit|fifo_rx|r_wr_index[1]~2_combout\);

-- Location: FF_X81_Y60_N11
\uart_unit|fifo_rx|r_wr_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_wr_index~0_combout\,
	ena => \uart_unit|fifo_rx|r_wr_index[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_wr_index\(0));

-- Location: LCCOMB_X81_Y60_N28
\uart_unit|fifo_rx|r_wr_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index~4_combout\ = (\uart_unit|fifo_rx|r_wr_index[1]~3_combout\ & (\i_rst_sync~input_o\ & (\uart_unit|fifo_rx|r_wr_index\(0) $ (\uart_unit|fifo_rx|r_wr_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_wr_index[1]~3_combout\,
	datab => \uart_unit|fifo_rx|r_wr_index\(0),
	datac => \uart_unit|fifo_rx|r_wr_index\(1),
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_rx|r_wr_index~4_combout\);

-- Location: FF_X81_Y60_N29
\uart_unit|fifo_rx|r_wr_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_wr_index~4_combout\,
	ena => \uart_unit|fifo_rx|r_wr_index[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_wr_index\(1));

-- Location: LCCOMB_X81_Y60_N6
\uart_unit|fifo_rx|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add2~1_combout\ = \uart_unit|fifo_rx|r_wr_index\(3) $ (((\uart_unit|fifo_rx|r_wr_index\(0) & (\uart_unit|fifo_rx|r_wr_index\(2) & \uart_unit|fifo_rx|r_wr_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_wr_index\(0),
	datab => \uart_unit|fifo_rx|r_wr_index\(3),
	datac => \uart_unit|fifo_rx|r_wr_index\(2),
	datad => \uart_unit|fifo_rx|r_wr_index\(1),
	combout => \uart_unit|fifo_rx|Add2~1_combout\);

-- Location: LCCOMB_X81_Y60_N14
\uart_unit|fifo_rx|r_wr_index~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index~6_combout\ = (\uart_unit|fifo_rx|r_wr_index[1]~3_combout\ & (\i_rst_sync~input_o\ & \uart_unit|fifo_rx|Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_wr_index[1]~3_combout\,
	datab => \i_rst_sync~input_o\,
	datad => \uart_unit|fifo_rx|Add2~1_combout\,
	combout => \uart_unit|fifo_rx|r_wr_index~6_combout\);

-- Location: FF_X81_Y60_N15
\uart_unit|fifo_rx|r_wr_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_wr_index~6_combout\,
	ena => \uart_unit|fifo_rx|r_wr_index[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_wr_index\(3));

-- Location: LCCOMB_X81_Y60_N12
\uart_unit|fifo_rx|r_wr_index[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index[1]~3_combout\ = (((\uart_unit|fifo_rx|r_wr_index\(2)) # (\uart_unit|fifo_rx|r_wr_index\(1))) # (!\uart_unit|fifo_rx|r_wr_index\(3))) # (!\uart_unit|fifo_rx|r_wr_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_wr_index\(0),
	datab => \uart_unit|fifo_rx|r_wr_index\(3),
	datac => \uart_unit|fifo_rx|r_wr_index\(2),
	datad => \uart_unit|fifo_rx|r_wr_index\(1),
	combout => \uart_unit|fifo_rx|r_wr_index[1]~3_combout\);

-- Location: LCCOMB_X81_Y60_N22
\uart_unit|fifo_rx|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add2~0_combout\ = \uart_unit|fifo_rx|r_wr_index\(2) $ (((\uart_unit|fifo_rx|r_wr_index\(0) & \uart_unit|fifo_rx|r_wr_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_wr_index\(0),
	datac => \uart_unit|fifo_rx|r_wr_index\(2),
	datad => \uart_unit|fifo_rx|r_wr_index\(1),
	combout => \uart_unit|fifo_rx|Add2~0_combout\);

-- Location: LCCOMB_X81_Y60_N30
\uart_unit|fifo_rx|r_wr_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index~5_combout\ = (\uart_unit|fifo_rx|r_wr_index[1]~3_combout\ & (\uart_unit|fifo_rx|Add2~0_combout\ & \i_rst_sync~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_wr_index[1]~3_combout\,
	datac => \uart_unit|fifo_rx|Add2~0_combout\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_rx|r_wr_index~5_combout\);

-- Location: FF_X81_Y60_N31
\uart_unit|fifo_rx|r_wr_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_wr_index~5_combout\,
	ena => \uart_unit|fifo_rx|r_wr_index[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_wr_index\(2));

-- Location: FF_X81_Y60_N27
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_rx|r_wr_index\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(5));

-- Location: FF_X81_Y60_N25
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_rx|r_wr_index\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(7));

-- Location: LCCOMB_X81_Y60_N26
\uart_unit|fifo_rx|r_fifo_data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~14_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(8) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(7) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(6) $ (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(5))))) # 
-- (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(8) & (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(7) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(6) $ (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(8),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(6),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(5),
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(7),
	combout => \uart_unit|fifo_rx|r_fifo_data~14_combout\);

-- Location: LCCOMB_X81_Y60_N8
\uart_unit|fifo_rx|r_fifo_data~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~24_combout\ = (\uart_unit|receiver|r_rx_dv~q\ & \i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_rx_dv~q\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_rx|r_fifo_data~24_combout\);

-- Location: FF_X81_Y60_N9
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0));

-- Location: FF_X82_Y60_N5
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_rd_index~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(2));

-- Location: FF_X81_Y60_N17
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_rx|r_wr_index\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(1));

-- Location: FF_X81_Y60_N19
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_rx|r_wr_index\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(3));

-- Location: LCCOMB_X82_Y60_N6
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder_combout\ = \uart_unit|fifo_rx|r_rd_index~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_rx|r_rd_index~3_combout\,
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder_combout\);

-- Location: FF_X82_Y60_N7
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(4));

-- Location: LCCOMB_X81_Y60_N18
\uart_unit|fifo_rx|r_fifo_data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~13_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(2) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(1) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(3) $ (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(4))))) # 
-- (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(2) & (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(1) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(3) $ (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(2),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(1),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(3),
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(4),
	combout => \uart_unit|fifo_rx|r_fifo_data~13_combout\);

-- Location: LCCOMB_X81_Y60_N16
\uart_unit|fifo_rx|r_fifo_data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~15_combout\ = (\uart_unit|fifo_rx|r_fifo_data~14_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0) & \uart_unit|fifo_rx|r_fifo_data~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \uart_unit|fifo_rx|r_fifo_data~15_combout\);

-- Location: LCCOMB_X76_Y60_N14
\uart_unit|receiver|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~2_combout\ = (\uart_unit|receiver|r_bit_index\(0) & (!\uart_unit|receiver|r_bit_index\(2) & (!\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(2),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~2_combout\);

-- Location: LCCOMB_X77_Y60_N28
\uart_unit|receiver|r_rx_byte[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[1]~1_combout\ = (\uart_unit|receiver|Decoder0~2_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~2_combout\ & ((\uart_unit|receiver|r_rx_byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(1),
	datad => \uart_unit|receiver|Decoder0~2_combout\,
	combout => \uart_unit|receiver|r_rx_byte[1]~1_combout\);

-- Location: FF_X77_Y60_N29
\uart_unit|receiver|r_rx_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(1));

-- Location: LCCOMB_X76_Y60_N12
\uart_unit|receiver|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~3_combout\ = (!\uart_unit|receiver|r_bit_index\(0) & (!\uart_unit|receiver|r_bit_index\(2) & (\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(2),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~3_combout\);

-- Location: LCCOMB_X76_Y60_N4
\uart_unit|receiver|r_rx_byte[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[2]~2_combout\ = (\uart_unit|receiver|Decoder0~3_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~3_combout\ & ((\uart_unit|receiver|r_rx_byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(2),
	datad => \uart_unit|receiver|Decoder0~3_combout\,
	combout => \uart_unit|receiver|r_rx_byte[2]~2_combout\);

-- Location: FF_X76_Y60_N5
\uart_unit|receiver|r_rx_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(2));

-- Location: LCCOMB_X76_Y60_N30
\uart_unit|receiver|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~4_combout\ = (\uart_unit|receiver|r_bit_index\(0) & (!\uart_unit|receiver|r_bit_index\(2) & (\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(2),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~4_combout\);

-- Location: LCCOMB_X77_Y60_N14
\uart_unit|receiver|r_rx_byte[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[3]~3_combout\ = (\uart_unit|receiver|Decoder0~4_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~4_combout\ & ((\uart_unit|receiver|r_rx_byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(3),
	datad => \uart_unit|receiver|Decoder0~4_combout\,
	combout => \uart_unit|receiver|r_rx_byte[3]~3_combout\);

-- Location: FF_X77_Y60_N15
\uart_unit|receiver|r_rx_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(3));

-- Location: LCCOMB_X76_Y60_N24
\uart_unit|receiver|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~5_combout\ = (!\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|r_bit_index\(2) & (!\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(2),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~5_combout\);

-- Location: LCCOMB_X77_Y60_N24
\uart_unit|receiver|r_rx_byte[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[4]~4_combout\ = (\uart_unit|receiver|Decoder0~5_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~5_combout\ & ((\uart_unit|receiver|r_rx_byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(4),
	datad => \uart_unit|receiver|Decoder0~5_combout\,
	combout => \uart_unit|receiver|r_rx_byte[4]~4_combout\);

-- Location: FF_X77_Y60_N25
\uart_unit|receiver|r_rx_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(4));

-- Location: LCCOMB_X76_Y60_N6
\uart_unit|receiver|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~6_combout\ = (\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|r_bit_index\(2) & (!\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(2),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~6_combout\);

-- Location: LCCOMB_X76_Y60_N26
\uart_unit|receiver|r_rx_byte[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[5]~5_combout\ = (\uart_unit|receiver|Decoder0~6_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~6_combout\ & ((\uart_unit|receiver|r_rx_byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(5),
	datad => \uart_unit|receiver|Decoder0~6_combout\,
	combout => \uart_unit|receiver|r_rx_byte[5]~5_combout\);

-- Location: FF_X76_Y60_N27
\uart_unit|receiver|r_rx_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(5));

-- Location: LCCOMB_X76_Y60_N0
\uart_unit|receiver|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~7_combout\ = (!\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|r_bit_index\(2) & (\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(2),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~7_combout\);

-- Location: LCCOMB_X76_Y60_N16
\uart_unit|receiver|r_rx_byte[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[6]~6_combout\ = (\uart_unit|receiver|Decoder0~7_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~7_combout\ & ((\uart_unit|receiver|r_rx_byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(6),
	datad => \uart_unit|receiver|Decoder0~7_combout\,
	combout => \uart_unit|receiver|r_rx_byte[6]~6_combout\);

-- Location: FF_X76_Y60_N17
\uart_unit|receiver|r_rx_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(6));

-- Location: LCCOMB_X77_Y60_N6
\uart_unit|receiver|r_rx_byte[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[7]~7_combout\ = (\uart_unit|receiver|Decoder0~8_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~8_combout\ & ((\uart_unit|receiver|r_rx_byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(7),
	datad => \uart_unit|receiver|Decoder0~8_combout\,
	combout => \uart_unit|receiver|r_rx_byte[7]~7_combout\);

-- Location: FF_X77_Y60_N7
\uart_unit|receiver|r_rx_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(7));

-- Location: M9K_X78_Y60_N0
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/simple_operations.ram0_fifo_1ff8f9ef.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "uart:uart_unit|fifo:fifo_rx|altsyncram:r_fifo_data_rtl_0|altsyncram_noh1:auto_generated|ALTSYNCRAM",
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
	portawe => \uart_unit|fifo_rx|r_fifo_data~24_combout\,
	portbre => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	portadatain => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X77_Y60_N22
\uart_unit|fifo_rx|r_fifo_data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~16_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(10) & ((\uart_unit|fifo_rx|r_fifo_data~15_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(9))) # (!\uart_unit|fifo_rx|r_fifo_data~15_combout\ & 
-- ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\))))) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(10) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(10),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(9),
	datac => \uart_unit|fifo_rx|r_fifo_data~15_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \uart_unit|fifo_rx|r_fifo_data~16_combout\);

-- Location: LCCOMB_X79_Y60_N22
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\r_sm_main.s_calculus~q\) # (\r_sm_main.s_get_fifo_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm_main.s_calculus~q\,
	datad => \r_sm_main.s_get_fifo_data~q\,
	combout => \WideOr3~0_combout\);

-- Location: FF_X77_Y60_N19
\r_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_data[0]~feeder_combout\,
	asdata => \uart_unit|fifo_rx|r_fifo_data~16_combout\,
	clrn => \i_rst~input_o\,
	sload => \ALT_INV_r_sm_main.s_calculus~q\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(0));

-- Location: LCCOMB_X80_Y60_N12
\r_data[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data[1]~10_combout\ = (r_data(1) & (!\r_data[0]~9\)) # (!r_data(1) & ((\r_data[0]~9\) # (GND)))
-- \r_data[1]~11\ = CARRY((!\r_data[0]~9\) # (!r_data(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_data(1),
	datad => VCC,
	cin => \r_data[0]~9\,
	combout => \r_data[1]~10_combout\,
	cout => \r_data[1]~11\);

-- Location: LCCOMB_X79_Y60_N14
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X79_Y60_N15
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(12));

-- Location: LCCOMB_X79_Y60_N4
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\ = \uart_unit|receiver|r_rx_byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_rx_byte\(1),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X79_Y60_N5
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(11));

-- Location: LCCOMB_X80_Y60_N26
\uart_unit|fifo_rx|r_fifo_data~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~17_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(12) & ((\uart_unit|fifo_rx|r_fifo_data~15_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(11))) # (!\uart_unit|fifo_rx|r_fifo_data~15_combout\ & 
-- ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\))))) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(12) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(12),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(11),
	datac => \uart_unit|fifo_rx|r_fifo_data~15_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\,
	combout => \uart_unit|fifo_rx|r_fifo_data~17_combout\);

-- Location: FF_X80_Y60_N13
\r_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_data[1]~10_combout\,
	asdata => \uart_unit|fifo_rx|r_fifo_data~17_combout\,
	clrn => \i_rst~input_o\,
	sload => \ALT_INV_r_sm_main.s_calculus~q\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(1));

-- Location: LCCOMB_X80_Y60_N14
\r_data[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data[2]~12_combout\ = (r_data(2) & (\r_data[1]~11\ $ (GND))) # (!r_data(2) & (!\r_data[1]~11\ & VCC))
-- \r_data[2]~13\ = CARRY((r_data(2) & !\r_data[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_data(2),
	datad => VCC,
	cin => \r_data[1]~11\,
	combout => \r_data[2]~12_combout\,
	cout => \r_data[2]~13\);

-- Location: LCCOMB_X79_Y60_N2
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X79_Y60_N3
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(14));

-- Location: FF_X79_Y60_N17
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_rx_byte\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(13));

-- Location: LCCOMB_X79_Y60_N16
\uart_unit|fifo_rx|r_fifo_data~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~18_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(14) & ((\uart_unit|fifo_rx|r_fifo_data~15_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(13)))) # (!\uart_unit|fifo_rx|r_fifo_data~15_combout\ & 
-- (\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\)))) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(14) & (((\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(14),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(13),
	datad => \uart_unit|fifo_rx|r_fifo_data~15_combout\,
	combout => \uart_unit|fifo_rx|r_fifo_data~18_combout\);

-- Location: FF_X80_Y60_N15
\r_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_data[2]~12_combout\,
	asdata => \uart_unit|fifo_rx|r_fifo_data~18_combout\,
	clrn => \i_rst~input_o\,
	sload => \ALT_INV_r_sm_main.s_calculus~q\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(2));

-- Location: LCCOMB_X80_Y60_N16
\r_data[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data[3]~14_combout\ = (r_data(3) & (!\r_data[2]~13\)) # (!r_data(3) & ((\r_data[2]~13\) # (GND)))
-- \r_data[3]~15\ = CARRY((!\r_data[2]~13\) # (!r_data(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_data(3),
	datad => VCC,
	cin => \r_data[2]~13\,
	combout => \r_data[3]~14_combout\,
	cout => \r_data[3]~15\);

-- Location: LCCOMB_X77_Y60_N16
\r_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data[3]~feeder_combout\ = \r_data[3]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_data[3]~14_combout\,
	combout => \r_data[3]~feeder_combout\);

-- Location: LCCOMB_X77_Y60_N26
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X77_Y60_N27
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(16));

-- Location: LCCOMB_X77_Y60_N0
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[15]~feeder_combout\ = \uart_unit|receiver|r_rx_byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_rx_byte\(3),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X77_Y60_N1
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(15));

-- Location: LCCOMB_X77_Y60_N8
\uart_unit|fifo_rx|r_fifo_data~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~19_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(16) & ((\uart_unit|fifo_rx|r_fifo_data~15_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(15))) # (!\uart_unit|fifo_rx|r_fifo_data~15_combout\ & 
-- ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\))))) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(16) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(16),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(15),
	datac => \uart_unit|fifo_rx|r_fifo_data~15_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\,
	combout => \uart_unit|fifo_rx|r_fifo_data~19_combout\);

-- Location: FF_X77_Y60_N17
\r_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_data[3]~feeder_combout\,
	asdata => \uart_unit|fifo_rx|r_fifo_data~19_combout\,
	clrn => \i_rst~input_o\,
	sload => \ALT_INV_r_sm_main.s_calculus~q\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(3));

-- Location: LCCOMB_X81_Y60_N20
\r_tx_data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[0]~1_combout\ = (!\uart_unit|fifo_tx|r_fifo_count\(1)) # (!\uart_unit|fifo_tx|r_fifo_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_tx|r_fifo_count\(3),
	datad => \uart_unit|fifo_tx|r_fifo_count\(1),
	combout => \r_tx_data[0]~1_combout\);

-- Location: LCCOMB_X80_Y60_N6
\r_tx_data[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[0]~2_combout\ = (\r_sm_main.s_put_fifo_data~q\ & (\i_rst~input_o\ & ((\r_tx_data[0]~1_combout\) # (!\uart_unit|fifo_tx|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_tx_data[0]~1_combout\,
	datab => \r_sm_main.s_put_fifo_data~q\,
	datac => \uart_unit|fifo_tx|Equal3~0_combout\,
	datad => \i_rst~input_o\,
	combout => \r_tx_data[0]~2_combout\);

-- Location: FF_X80_Y62_N27
\r_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_data(3),
	sload => VCC,
	ena => \r_tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(3));

-- Location: FF_X80_Y62_N9
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_tx_data(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(15));

-- Location: LCCOMB_X77_Y62_N4
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X77_Y62_N5
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(16));

-- Location: LCCOMB_X80_Y62_N22
\r_tx_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[0]~feeder_combout\ = r_data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data(0),
	combout => \r_tx_data[0]~feeder_combout\);

-- Location: FF_X80_Y62_N23
\r_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_tx_data[0]~feeder_combout\,
	ena => \r_tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(0));

-- Location: LCCOMB_X80_Y62_N12
\r_tx_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[1]~feeder_combout\ = r_data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data(1),
	combout => \r_tx_data[1]~feeder_combout\);

-- Location: FF_X80_Y62_N13
\r_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_tx_data[1]~feeder_combout\,
	ena => \r_tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(1));

-- Location: LCCOMB_X80_Y62_N16
\r_tx_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[2]~feeder_combout\ = r_data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data(2),
	combout => \r_tx_data[2]~feeder_combout\);

-- Location: FF_X80_Y62_N17
\r_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_tx_data[2]~feeder_combout\,
	ena => \r_tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(2));

-- Location: LCCOMB_X80_Y60_N18
\r_data[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data[4]~16_combout\ = (r_data(4) & (\r_data[3]~15\ $ (GND))) # (!r_data(4) & (!\r_data[3]~15\ & VCC))
-- \r_data[4]~17\ = CARRY((r_data(4) & !\r_data[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_data(4),
	datad => VCC,
	cin => \r_data[3]~15\,
	combout => \r_data[4]~16_combout\,
	cout => \r_data[4]~17\);

-- Location: LCCOMB_X77_Y60_N20
\r_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data[4]~feeder_combout\ = \r_data[4]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_data[4]~16_combout\,
	combout => \r_data[4]~feeder_combout\);

-- Location: LCCOMB_X77_Y60_N10
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\ = \uart_unit|receiver|r_rx_byte\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_rx_byte\(4),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X77_Y60_N11
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(17));

-- Location: LCCOMB_X79_Y60_N12
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X79_Y60_N13
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(18));

-- Location: LCCOMB_X77_Y60_N4
\uart_unit|fifo_rx|r_fifo_data~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~20_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(18) & ((\uart_unit|fifo_rx|r_fifo_data~15_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(17))) # (!\uart_unit|fifo_rx|r_fifo_data~15_combout\ & 
-- ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\))))) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(18) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(17),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(18),
	datac => \uart_unit|fifo_rx|r_fifo_data~15_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\,
	combout => \uart_unit|fifo_rx|r_fifo_data~20_combout\);

-- Location: FF_X77_Y60_N21
\r_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_data[4]~feeder_combout\,
	asdata => \uart_unit|fifo_rx|r_fifo_data~20_combout\,
	clrn => \i_rst~input_o\,
	sload => \ALT_INV_r_sm_main.s_calculus~q\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(4));

-- Location: LCCOMB_X80_Y62_N20
\r_tx_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[4]~feeder_combout\ = r_data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data(4),
	combout => \r_tx_data[4]~feeder_combout\);

-- Location: FF_X80_Y62_N21
\r_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_tx_data[4]~feeder_combout\,
	ena => \r_tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(4));

-- Location: LCCOMB_X80_Y60_N20
\r_data[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data[5]~18_combout\ = (r_data(5) & (!\r_data[4]~17\)) # (!r_data(5) & ((\r_data[4]~17\) # (GND)))
-- \r_data[5]~19\ = CARRY((!\r_data[4]~17\) # (!r_data(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_data(5),
	datad => VCC,
	cin => \r_data[4]~17\,
	combout => \r_data[5]~18_combout\,
	cout => \r_data[5]~19\);

-- Location: LCCOMB_X79_Y60_N28
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X79_Y60_N29
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(20));

-- Location: FF_X79_Y60_N27
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_rx_byte\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(19));

-- Location: LCCOMB_X79_Y60_N26
\uart_unit|fifo_rx|r_fifo_data~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~21_combout\ = (\uart_unit|fifo_rx|r_fifo_data~15_combout\ & (((\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(19))))) # (!\uart_unit|fifo_rx|r_fifo_data~15_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(20) & 
-- ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\))) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(20) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data~15_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(20),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(19),
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\,
	combout => \uart_unit|fifo_rx|r_fifo_data~21_combout\);

-- Location: FF_X80_Y60_N21
\r_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_data[5]~18_combout\,
	asdata => \uart_unit|fifo_rx|r_fifo_data~21_combout\,
	clrn => \i_rst~input_o\,
	sload => \ALT_INV_r_sm_main.s_calculus~q\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(5));

-- Location: LCCOMB_X80_Y62_N28
\r_tx_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[5]~feeder_combout\ = r_data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_data(5),
	combout => \r_tx_data[5]~feeder_combout\);

-- Location: FF_X80_Y62_N29
\r_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_tx_data[5]~feeder_combout\,
	ena => \r_tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(5));

-- Location: LCCOMB_X80_Y60_N22
\r_data[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data[6]~20_combout\ = (r_data(6) & (\r_data[5]~19\ $ (GND))) # (!r_data(6) & (!\r_data[5]~19\ & VCC))
-- \r_data[6]~21\ = CARRY((r_data(6) & !\r_data[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_data(6),
	datad => VCC,
	cin => \r_data[5]~19\,
	combout => \r_data[6]~20_combout\,
	cout => \r_data[6]~21\);

-- Location: LCCOMB_X79_Y60_N24
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X79_Y60_N25
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(22));

-- Location: FF_X79_Y60_N7
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_rx_byte\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(21));

-- Location: LCCOMB_X79_Y60_N6
\uart_unit|fifo_rx|r_fifo_data~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~22_combout\ = (\uart_unit|fifo_rx|r_fifo_data~15_combout\ & (((\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(21))))) # (!\uart_unit|fifo_rx|r_fifo_data~15_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(22) & 
-- ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\))) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(22) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data~15_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(22),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(21),
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\,
	combout => \uart_unit|fifo_rx|r_fifo_data~22_combout\);

-- Location: FF_X80_Y60_N23
\r_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_data[6]~20_combout\,
	asdata => \uart_unit|fifo_rx|r_fifo_data~22_combout\,
	clrn => \i_rst~input_o\,
	sload => \ALT_INV_r_sm_main.s_calculus~q\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(6));

-- Location: LCCOMB_X80_Y62_N2
\r_tx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[6]~feeder_combout\ = r_data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_data(6),
	combout => \r_tx_data[6]~feeder_combout\);

-- Location: FF_X80_Y62_N3
\r_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_tx_data[6]~feeder_combout\,
	ena => \r_tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(6));

-- Location: LCCOMB_X80_Y60_N24
\r_data[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_data[7]~22_combout\ = \r_data[6]~21\ $ (r_data(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_data(7),
	cin => \r_data[6]~21\,
	combout => \r_data[7]~22_combout\);

-- Location: LCCOMB_X79_Y60_N20
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X79_Y60_N21
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(24));

-- Location: FF_X79_Y60_N19
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_rx_byte\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(23));

-- Location: LCCOMB_X79_Y60_N18
\uart_unit|fifo_rx|r_fifo_data~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~23_combout\ = (\uart_unit|fifo_rx|r_fifo_data~15_combout\ & (((\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(23))))) # (!\uart_unit|fifo_rx|r_fifo_data~15_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(24) & 
-- ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\))) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(24) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data~15_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(24),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(23),
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\,
	combout => \uart_unit|fifo_rx|r_fifo_data~23_combout\);

-- Location: FF_X80_Y60_N25
\r_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_data[7]~22_combout\,
	asdata => \uart_unit|fifo_rx|r_fifo_data~23_combout\,
	clrn => \i_rst~input_o\,
	sload => \ALT_INV_r_sm_main.s_calculus~q\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(7));

-- Location: LCCOMB_X80_Y62_N4
\r_tx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[7]~feeder_combout\ = r_data(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data(7),
	combout => \r_tx_data[7]~feeder_combout\);

-- Location: FF_X80_Y62_N5
\r_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_tx_data[7]~feeder_combout\,
	ena => \r_tx_data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(7));

-- Location: M9K_X78_Y62_N0
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/simple_operations.ram0_fifo_1ff8f9ef.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "uart:uart_unit|fifo:fifo_tx|altsyncram:r_fifo_data_rtl_0|altsyncram_noh1:auto_generated|ALTSYNCRAM",
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
	portawe => \uart_unit|fifo_tx|r_fifo_data~24_combout\,
	portbre => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	portadatain => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X79_Y62_N12
\uart_unit|fifo_tx|r_fifo_data~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~23_combout\ = (\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(15))) # (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & ((\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(16) & 
-- ((\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\))) # (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(16) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(15),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(16),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\,
	combout => \uart_unit|fifo_tx|r_fifo_data~23_combout\);

-- Location: LCCOMB_X80_Y60_N30
\uart_unit|transmitter|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector20~0_combout\ = (!\uart_unit|transmitter|r_sm_main.s_idle~q\ & ((\uart_unit|fifo_tx|r_fifo_count\(3)) # ((\uart_unit|fifo_tx|r_fifo_count\(1)) # (!\uart_unit|fifo_tx|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_count\(3),
	datab => \uart_unit|fifo_tx|r_fifo_count\(1),
	datac => \uart_unit|fifo_tx|Equal3~0_combout\,
	datad => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	combout => \uart_unit|transmitter|Selector20~0_combout\);

-- Location: FF_X79_Y62_N13
\uart_unit|transmitter|r_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data~23_combout\,
	ena => \uart_unit|transmitter|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_tx_data\(3));

-- Location: LCCOMB_X77_Y62_N24
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X77_Y62_N25
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(14));

-- Location: LCCOMB_X80_Y62_N30
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\ = r_tx_data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_tx_data(2),
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X80_Y62_N31
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(13));

-- Location: LCCOMB_X79_Y62_N0
\uart_unit|fifo_tx|r_fifo_data~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~20_combout\ = (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(14) & ((\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(13))) # (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & 
-- ((\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\))))) # (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(14) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(14),
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(13),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\,
	datad => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	combout => \uart_unit|fifo_tx|r_fifo_data~20_combout\);

-- Location: FF_X79_Y62_N1
\uart_unit|transmitter|r_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data~20_combout\,
	ena => \uart_unit|transmitter|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_tx_data\(2));

-- Location: LCCOMB_X79_Y62_N6
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X79_Y62_N7
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(12));

-- Location: LCCOMB_X80_Y62_N24
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\ = r_tx_data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_tx_data(1),
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X80_Y62_N25
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(11));

-- Location: LCCOMB_X79_Y62_N22
\uart_unit|fifo_tx|r_fifo_data~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~21_combout\ = (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(12) & ((\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(11))) # (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & 
-- ((\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\))))) # (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(12) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(12),
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(11),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\,
	datad => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	combout => \uart_unit|fifo_tx|r_fifo_data~21_combout\);

-- Location: FF_X79_Y62_N23
\uart_unit|transmitter|r_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data~21_combout\,
	ena => \uart_unit|transmitter|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_tx_data\(1));

-- Location: FF_X80_Y62_N11
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_tx_data(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(9));

-- Location: LCCOMB_X77_Y62_N26
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X77_Y62_N27
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(10));

-- Location: LCCOMB_X79_Y62_N16
\uart_unit|fifo_tx|r_fifo_data~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~22_combout\ = (\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(9))) # (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & ((\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(10) & 
-- ((\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(10) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(9),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(10),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \uart_unit|fifo_tx|r_fifo_data~22_combout\);

-- Location: FF_X79_Y62_N17
\uart_unit|transmitter|r_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data~22_combout\,
	ena => \uart_unit|transmitter|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_tx_data\(0));

-- Location: LCCOMB_X79_Y62_N10
\uart_unit|transmitter|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Mux0~2_combout\ = (\uart_unit|transmitter|r_bit_index\(1) & (((\uart_unit|transmitter|r_bit_index\(0))))) # (!\uart_unit|transmitter|r_bit_index\(1) & ((\uart_unit|transmitter|r_bit_index\(0) & 
-- (\uart_unit|transmitter|r_tx_data\(1))) # (!\uart_unit|transmitter|r_bit_index\(0) & ((\uart_unit|transmitter|r_tx_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_tx_data\(1),
	datab => \uart_unit|transmitter|r_tx_data\(0),
	datac => \uart_unit|transmitter|r_bit_index\(1),
	datad => \uart_unit|transmitter|r_bit_index\(0),
	combout => \uart_unit|transmitter|Mux0~2_combout\);

-- Location: LCCOMB_X79_Y62_N18
\uart_unit|transmitter|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Mux0~3_combout\ = (\uart_unit|transmitter|r_bit_index\(1) & ((\uart_unit|transmitter|Mux0~2_combout\ & (\uart_unit|transmitter|r_tx_data\(3))) # (!\uart_unit|transmitter|Mux0~2_combout\ & ((\uart_unit|transmitter|r_tx_data\(2)))))) 
-- # (!\uart_unit|transmitter|r_bit_index\(1) & (((\uart_unit|transmitter|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_tx_data\(3),
	datab => \uart_unit|transmitter|r_tx_data\(2),
	datac => \uart_unit|transmitter|r_bit_index\(1),
	datad => \uart_unit|transmitter|Mux0~2_combout\,
	combout => \uart_unit|transmitter|Mux0~3_combout\);

-- Location: LCCOMB_X79_Y63_N12
\uart_unit|transmitter|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector1~1_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\) # ((!\uart_unit|transmitter|r_bit_index\(2) & (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & \uart_unit|transmitter|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	datab => \uart_unit|transmitter|r_bit_index\(2),
	datac => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datad => \uart_unit|transmitter|Mux0~3_combout\,
	combout => \uart_unit|transmitter|Selector1~1_combout\);

-- Location: FF_X80_Y62_N7
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_tx_data(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(23));

-- Location: LCCOMB_X77_Y62_N30
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X77_Y62_N31
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(24));

-- Location: LCCOMB_X79_Y62_N24
\uart_unit|fifo_tx|r_fifo_data~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~19_combout\ = (\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(23))) # (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & ((\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(24) & 
-- ((\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\))) # (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(24) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(23),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(24),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\,
	combout => \uart_unit|fifo_tx|r_fifo_data~19_combout\);

-- Location: FF_X79_Y62_N25
\uart_unit|transmitter|r_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data~19_combout\,
	ena => \uart_unit|transmitter|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_tx_data\(7));

-- Location: LCCOMB_X80_Y62_N14
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\ = r_tx_data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_tx_data(5),
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X80_Y62_N15
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(19));

-- Location: LCCOMB_X77_Y62_N12
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X77_Y62_N13
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(20));

-- Location: LCCOMB_X79_Y62_N30
\uart_unit|fifo_tx|r_fifo_data~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~17_combout\ = (\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(19))) # (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & ((\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(20) & 
-- ((\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\))) # (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(20) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(19),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(20),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\,
	combout => \uart_unit|fifo_tx|r_fifo_data~17_combout\);

-- Location: FF_X79_Y62_N31
\uart_unit|transmitter|r_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data~17_combout\,
	ena => \uart_unit|transmitter|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_tx_data\(5));

-- Location: LCCOMB_X79_Y62_N8
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X79_Y62_N9
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(18));

-- Location: LCCOMB_X79_Y62_N14
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\ = r_tx_data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_tx_data(4),
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X79_Y62_N15
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(17));

-- Location: LCCOMB_X79_Y62_N20
\uart_unit|fifo_tx|r_fifo_data~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~18_combout\ = (\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (((\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(17))))) # (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & ((\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(18) & 
-- ((\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\))) # (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(18) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(18),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(17),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\,
	combout => \uart_unit|fifo_tx|r_fifo_data~18_combout\);

-- Location: FF_X79_Y62_N21
\uart_unit|transmitter|r_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data~18_combout\,
	ena => \uart_unit|transmitter|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_tx_data\(4));

-- Location: LCCOMB_X79_Y62_N26
\uart_unit|transmitter|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Mux0~0_combout\ = (\uart_unit|transmitter|r_bit_index\(1) & (((\uart_unit|transmitter|r_bit_index\(0))))) # (!\uart_unit|transmitter|r_bit_index\(1) & ((\uart_unit|transmitter|r_bit_index\(0) & 
-- (\uart_unit|transmitter|r_tx_data\(5))) # (!\uart_unit|transmitter|r_bit_index\(0) & ((\uart_unit|transmitter|r_tx_data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_tx_data\(5),
	datab => \uart_unit|transmitter|r_tx_data\(4),
	datac => \uart_unit|transmitter|r_bit_index\(1),
	datad => \uart_unit|transmitter|r_bit_index\(0),
	combout => \uart_unit|transmitter|Mux0~0_combout\);

-- Location: LCCOMB_X80_Y62_N18
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[21]~feeder_combout\ = r_tx_data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_tx_data(6),
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[21]~feeder_combout\);

-- Location: FF_X80_Y62_N19
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(21));

-- Location: LCCOMB_X79_Y62_N4
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X79_Y62_N5
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(22));

-- Location: LCCOMB_X79_Y62_N28
\uart_unit|fifo_tx|r_fifo_data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~16_combout\ = (\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(21))) # (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & ((\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(22) & 
-- ((\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\))) # (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(22) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(21),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(22),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\,
	combout => \uart_unit|fifo_tx|r_fifo_data~16_combout\);

-- Location: FF_X79_Y62_N29
\uart_unit|transmitter|r_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data~16_combout\,
	ena => \uart_unit|transmitter|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_tx_data\(6));

-- Location: LCCOMB_X79_Y62_N2
\uart_unit|transmitter|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Mux0~1_combout\ = (\uart_unit|transmitter|r_bit_index\(1) & ((\uart_unit|transmitter|Mux0~0_combout\ & (\uart_unit|transmitter|r_tx_data\(7))) # (!\uart_unit|transmitter|Mux0~0_combout\ & ((\uart_unit|transmitter|r_tx_data\(6)))))) 
-- # (!\uart_unit|transmitter|r_bit_index\(1) & (((\uart_unit|transmitter|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_bit_index\(1),
	datab => \uart_unit|transmitter|r_tx_data\(7),
	datac => \uart_unit|transmitter|Mux0~0_combout\,
	datad => \uart_unit|transmitter|r_tx_data\(6),
	combout => \uart_unit|transmitter|Mux0~1_combout\);

-- Location: LCCOMB_X79_Y63_N28
\uart_unit|transmitter|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector1~0_combout\ = ((\uart_unit|transmitter|Mux0~1_combout\ & (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & \uart_unit|transmitter|r_bit_index\(2)))) # (!\uart_unit|transmitter|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Mux0~1_combout\,
	datab => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datac => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datad => \uart_unit|transmitter|r_bit_index\(2),
	combout => \uart_unit|transmitter|Selector1~0_combout\);

-- Location: LCCOMB_X79_Y63_N24
\uart_unit|transmitter|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector1~2_combout\ = (\uart_unit|transmitter|Selector1~1_combout\) # ((\uart_unit|transmitter|Selector1~0_combout\) # ((\uart_unit|transmitter|r_sm_main.s_cleanup~q\ & \uart_unit|transmitter|o_tx_serial~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector1~1_combout\,
	datab => \uart_unit|transmitter|r_sm_main.s_cleanup~q\,
	datac => \uart_unit|transmitter|o_tx_serial~q\,
	datad => \uart_unit|transmitter|Selector1~0_combout\,
	combout => \uart_unit|transmitter|Selector1~2_combout\);

-- Location: FF_X79_Y63_N25
\uart_unit|transmitter|o_tx_serial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|o_tx_serial~q\);

ww_o_rx_full <= \o_rx_full~output_o\;

ww_o_rx_empty <= \o_rx_empty~output_o\;

ww_o_tx <= \o_tx~output_o\;

ww_o_tx_full <= \o_tx_full~output_o\;

ww_o_tx_empty <= \o_tx_empty~output_o\;

ww_o_data(0) <= \o_data[0]~output_o\;

ww_o_data(1) <= \o_data[1]~output_o\;

ww_o_data(2) <= \o_data[2]~output_o\;

ww_o_data(3) <= \o_data[3]~output_o\;

ww_o_data(4) <= \o_data[4]~output_o\;

ww_o_data(5) <= \o_data[5]~output_o\;

ww_o_data(6) <= \o_data[6]~output_o\;

ww_o_data(7) <= \o_data[7]~output_o\;
END structure;


