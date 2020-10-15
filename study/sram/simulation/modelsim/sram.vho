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

-- DATE "10/14/2020 22:33:45"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	sram IS
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
	o_addr : OUT std_logic_vector(19 DOWNTO 0);
	o_data : OUT std_logic_vector(15 DOWNTO 0);
	o_we : OUT std_logic;
	o_ce : OUT std_logic;
	o_oe : OUT std_logic;
	o_ub : OUT std_logic;
	o_lb : OUT std_logic;
	o_leds : OUT std_logic_vector(15 DOWNTO 0)
	);
END sram;

-- Design Ports Information
-- o_rx_full	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_rx_empty	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tx	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tx_full	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tx_empty	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[7]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[10]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_addr[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[2]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[3]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[5]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[6]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[7]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[8]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[9]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[10]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[11]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[12]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[13]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[14]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[15]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_we	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ce	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_oe	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ub	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_lb	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_leds[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst_sync	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rx	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sram IS
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
SIGNAL ww_o_addr : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_o_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_we : std_logic;
SIGNAL ww_o_ce : std_logic;
SIGNAL ww_o_oe : std_logic;
SIGNAL ww_o_ub : std_logic;
SIGNAL ww_o_lb : std_logic;
SIGNAL ww_o_leds : std_logic_vector(15 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_rx_full~output_o\ : std_logic;
SIGNAL \o_rx_empty~output_o\ : std_logic;
SIGNAL \o_tx~output_o\ : std_logic;
SIGNAL \o_tx_full~output_o\ : std_logic;
SIGNAL \o_tx_empty~output_o\ : std_logic;
SIGNAL \o_addr[0]~output_o\ : std_logic;
SIGNAL \o_addr[1]~output_o\ : std_logic;
SIGNAL \o_addr[2]~output_o\ : std_logic;
SIGNAL \o_addr[3]~output_o\ : std_logic;
SIGNAL \o_addr[4]~output_o\ : std_logic;
SIGNAL \o_addr[5]~output_o\ : std_logic;
SIGNAL \o_addr[6]~output_o\ : std_logic;
SIGNAL \o_addr[7]~output_o\ : std_logic;
SIGNAL \o_addr[8]~output_o\ : std_logic;
SIGNAL \o_addr[9]~output_o\ : std_logic;
SIGNAL \o_addr[10]~output_o\ : std_logic;
SIGNAL \o_addr[11]~output_o\ : std_logic;
SIGNAL \o_addr[12]~output_o\ : std_logic;
SIGNAL \o_addr[13]~output_o\ : std_logic;
SIGNAL \o_addr[14]~output_o\ : std_logic;
SIGNAL \o_addr[15]~output_o\ : std_logic;
SIGNAL \o_addr[16]~output_o\ : std_logic;
SIGNAL \o_addr[17]~output_o\ : std_logic;
SIGNAL \o_addr[18]~output_o\ : std_logic;
SIGNAL \o_addr[19]~output_o\ : std_logic;
SIGNAL \o_data[0]~output_o\ : std_logic;
SIGNAL \o_data[1]~output_o\ : std_logic;
SIGNAL \o_data[2]~output_o\ : std_logic;
SIGNAL \o_data[3]~output_o\ : std_logic;
SIGNAL \o_data[4]~output_o\ : std_logic;
SIGNAL \o_data[5]~output_o\ : std_logic;
SIGNAL \o_data[6]~output_o\ : std_logic;
SIGNAL \o_data[7]~output_o\ : std_logic;
SIGNAL \o_data[8]~output_o\ : std_logic;
SIGNAL \o_data[9]~output_o\ : std_logic;
SIGNAL \o_data[10]~output_o\ : std_logic;
SIGNAL \o_data[11]~output_o\ : std_logic;
SIGNAL \o_data[12]~output_o\ : std_logic;
SIGNAL \o_data[13]~output_o\ : std_logic;
SIGNAL \o_data[14]~output_o\ : std_logic;
SIGNAL \o_data[15]~output_o\ : std_logic;
SIGNAL \o_we~output_o\ : std_logic;
SIGNAL \o_ce~output_o\ : std_logic;
SIGNAL \o_oe~output_o\ : std_logic;
SIGNAL \o_ub~output_o\ : std_logic;
SIGNAL \o_lb~output_o\ : std_logic;
SIGNAL \o_leds[0]~output_o\ : std_logic;
SIGNAL \o_leds[1]~output_o\ : std_logic;
SIGNAL \o_leds[2]~output_o\ : std_logic;
SIGNAL \o_leds[3]~output_o\ : std_logic;
SIGNAL \o_leds[4]~output_o\ : std_logic;
SIGNAL \o_leds[5]~output_o\ : std_logic;
SIGNAL \o_leds[6]~output_o\ : std_logic;
SIGNAL \o_leds[7]~output_o\ : std_logic;
SIGNAL \o_leds[8]~output_o\ : std_logic;
SIGNAL \o_leds[9]~output_o\ : std_logic;
SIGNAL \o_leds[10]~output_o\ : std_logic;
SIGNAL \o_leds[11]~output_o\ : std_logic;
SIGNAL \o_leds[12]~output_o\ : std_logic;
SIGNAL \o_leds[13]~output_o\ : std_logic;
SIGNAL \o_leds[14]~output_o\ : std_logic;
SIGNAL \o_leds[15]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[0]~13_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[2]~18\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[3]~19_combout\ : std_logic;
SIGNAL \uart_unit|receiver|LessThan1~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|LessThan1~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main~7_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \i_rx~input_o\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_data_r~feeder_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_data_r~q\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_data~q\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[7]~41_combout\ : std_logic;
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
SIGNAL \uart_unit|receiver|Selector19~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|LessThan1~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector15~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector15~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector19~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector19~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ : std_logic;
SIGNAL \uart_unit|receiver|Selector16~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector16~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector14~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector14~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector14~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_stop_bit~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_stop_bit~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\ : std_logic;
SIGNAL \uart_unit|receiver|Selector0~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[7]~40_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[0]~14\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[1]~15_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[1]~16\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[2]~17_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Equal0~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Equal0~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Equal0~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Equal0~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[7]~39_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector17~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_idle~q\ : std_logic;
SIGNAL \uart_unit|receiver|Selector18~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_start_bit~q\ : std_logic;
SIGNAL \uart_unit|receiver|Selector0~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_dv~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[0]~5_combout\ : std_logic;
SIGNAL \i_rst_sync~input_o\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[0]~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[0]~6\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[1]~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[1]~8\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[2]~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[2]~10\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[3]~12\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[4]~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Equal2~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \i_rst~input_o\ : std_logic;
SIGNAL \r_sm.s_get_fifo_data~q\ : std_logic;
SIGNAL \r_sm.s_process~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal2~13_combout\ : std_logic;
SIGNAL \Equal2~14_combout\ : std_logic;
SIGNAL \r_index[2]~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~6_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[3]~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index[3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|p_control~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Equal3~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index[0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index[1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add3~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index[2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Equal1~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add3~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index[3]~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add2~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index[3]~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add2~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~13_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[0]~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~8_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[1]~7_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~7_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[2]~6_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[4]~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[5]~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~5_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[6]~4_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~4_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[7]~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \r_index[31]~1_combout\ : std_logic;
SIGNAL \r_index[31]~2_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \r_index[31]~0_combout\ : std_logic;
SIGNAL \r_index[31]~3_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \r_index[5]~5_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Equal2~11_combout\ : std_logic;
SIGNAL \Equal2~12_combout\ : std_logic;
SIGNAL \r_sm~9_combout\ : std_logic;
SIGNAL \r_sm.s_write_sram~q\ : std_logic;
SIGNAL \r_sm.s_clear~feeder_combout\ : std_logic;
SIGNAL \r_sm.s_clear~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \r_sm.s_idle~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \r_rd_rx~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|p_control~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[3]~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Equal2~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[0]~13_combout\ : std_logic;
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
SIGNAL \uart_unit|transmitter|r_clk_count[11]~35_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|LessThan1~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|LessThan1~4_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[11]~36\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[12]~37_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main~7_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[0]~5_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector20~0_combout\ : std_logic;
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
SIGNAL \uart_unit|transmitter|Selector2~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector2~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_tx_done~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[1]~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[0]~6\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[1]~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[1]~8\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[2]~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[2]~10\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[3]~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[3]~12\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[4]~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Equal2~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Equal3~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector19~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main.s_idle~q\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[6]~39_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[0]~14\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[1]~15_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[1]~16\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[2]~17_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[2]~18\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[3]~19_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|LessThan1~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|LessThan1~3_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector1~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|o_tx_serial~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Equal2~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \r_addr[0]~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \r_addr[1]~1_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \r_addr[2]~2_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \r_addr[3]~3_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \r_addr[4]~4_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \r_addr[5]~5_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \r_addr[6]~6_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \r_addr[7]~7_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \r_addr[8]~8_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \r_addr[9]~9_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \r_addr[10]~10_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Decoder0~16_combout\ : std_logic;
SIGNAL \r_addr[11]~11_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Decoder0~17_combout\ : std_logic;
SIGNAL \Decoder0~18_combout\ : std_logic;
SIGNAL \r_addr[12]~12_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Decoder0~19_combout\ : std_logic;
SIGNAL \r_addr[13]~13_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Decoder0~20_combout\ : std_logic;
SIGNAL \r_addr[14]~14_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Decoder0~21_combout\ : std_logic;
SIGNAL \r_addr[15]~15_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Decoder0~22_combout\ : std_logic;
SIGNAL \r_addr[16]~16_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Decoder0~23_combout\ : std_logic;
SIGNAL \r_addr[17]~17_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Decoder0~24_combout\ : std_logic;
SIGNAL \r_addr[18]~18_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Decoder0~25_combout\ : std_logic;
SIGNAL \r_addr[19]~19_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Decoder1~30_combout\ : std_logic;
SIGNAL \r_sram_data[0]~0_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Decoder1~31_combout\ : std_logic;
SIGNAL \Decoder1~35_combout\ : std_logic;
SIGNAL \r_sram_data[1]~1_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Decoder1~36_combout\ : std_logic;
SIGNAL \r_sram_data[2]~2_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Decoder1~37_combout\ : std_logic;
SIGNAL \r_sram_data[3]~3_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Decoder1~38_combout\ : std_logic;
SIGNAL \r_sram_data[4]~4_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Decoder1~32_combout\ : std_logic;
SIGNAL \Decoder1~39_combout\ : std_logic;
SIGNAL \r_sram_data[5]~5_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Decoder1~40_combout\ : std_logic;
SIGNAL \r_sram_data[6]~6_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Decoder1~41_combout\ : std_logic;
SIGNAL \r_sram_data[7]~7_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Decoder1~42_combout\ : std_logic;
SIGNAL \r_sram_data[8]~8_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Decoder1~33_combout\ : std_logic;
SIGNAL \Decoder1~43_combout\ : std_logic;
SIGNAL \r_sram_data[9]~9_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Decoder1~44_combout\ : std_logic;
SIGNAL \r_sram_data[10]~10_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Decoder1~45_combout\ : std_logic;
SIGNAL \r_sram_data[11]~11_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Decoder1~46_combout\ : std_logic;
SIGNAL \r_sram_data[12]~12_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Decoder1~34_combout\ : std_logic;
SIGNAL \Decoder1~47_combout\ : std_logic;
SIGNAL \r_sram_data[13]~13_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Decoder1~48_combout\ : std_logic;
SIGNAL \r_sram_data[14]~14_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Decoder1~49_combout\ : std_logic;
SIGNAL \r_sram_data[15]~15_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL r_sram_data : std_logic_vector(15 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_fifo_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_fifo_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_unit|transmitter|r_bit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL r_addr : std_logic_vector(19 DOWNTO 0);
SIGNAL r_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_unit|transmitter|r_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL r_index : std_logic_vector(31 DOWNTO 0);
SIGNAL \uart_unit|receiver|r_rx_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\ : std_logic_vector(0 TO 24);
SIGNAL \uart_unit|receiver|r_bit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_wr_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_rd_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_i_rst_sync~input_o\ : std_logic;
SIGNAL \ALT_INV_r_sm.s_process~q\ : std_logic;
SIGNAL \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|ALT_INV_Equal3~0_combout\ : std_logic;

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
o_addr <= ww_o_addr;
o_data <= ww_o_data;
o_we <= ww_o_we;
o_ce <= ww_o_ce;
o_oe <= ww_o_oe;
o_ub <= ww_o_ub;
o_lb <= ww_o_lb;
o_leds <= ww_o_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\uart_unit|receiver|r_rx_byte\(7) & \uart_unit|receiver|r_rx_byte\(6) & \uart_unit|receiver|r_rx_byte\(5) & \uart_unit|receiver|r_rx_byte\(4) & \uart_unit|receiver|r_rx_byte\(3) & \uart_unit|receiver|r_rx_byte\(2) & 
\uart_unit|receiver|r_rx_byte\(1) & \uart_unit|receiver|r_rx_byte\(0));

\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\uart_unit|fifo_rx|r_wr_index\(3) & \uart_unit|fifo_rx|r_wr_index\(2) & \uart_unit|fifo_rx|r_wr_index\(1) & \uart_unit|fifo_rx|r_wr_index\(0));

\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\uart_unit|fifo_rx|r_rd_index~5_combout\ & \uart_unit|fifo_rx|r_rd_index~3_combout\ & \uart_unit|fifo_rx|r_rd_index~2_combout\ & \uart_unit|fifo_rx|r_rd_index~0_combout\);

\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\ <= \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
\ALT_INV_i_rst_sync~input_o\ <= NOT \i_rst_sync~input_o\;
\ALT_INV_r_sm.s_process~q\ <= NOT \r_sm.s_process~q\;
\uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\ <= NOT \uart_unit|transmitter|r_sm_main.s_cleanup~q\;
\uart_unit|fifo_rx|ALT_INV_Equal3~0_combout\ <= NOT \uart_unit|fifo_rx|Equal3~0_combout\;
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
	i => \uart_unit|fifo_tx|Equal2~1_combout\,
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
	i => \uart_unit|fifo_tx|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \o_tx_empty~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\o_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(0),
	devoe => ww_devoe,
	o => \o_addr[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\o_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(1),
	devoe => ww_devoe,
	o => \o_addr[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\o_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(2),
	devoe => ww_devoe,
	o => \o_addr[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\o_addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(3),
	devoe => ww_devoe,
	o => \o_addr[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\o_addr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(4),
	devoe => ww_devoe,
	o => \o_addr[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\o_addr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(5),
	devoe => ww_devoe,
	o => \o_addr[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\o_addr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(6),
	devoe => ww_devoe,
	o => \o_addr[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\o_addr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(7),
	devoe => ww_devoe,
	o => \o_addr[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\o_addr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(8),
	devoe => ww_devoe,
	o => \o_addr[8]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\o_addr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(9),
	devoe => ww_devoe,
	o => \o_addr[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\o_addr[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(10),
	devoe => ww_devoe,
	o => \o_addr[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\o_addr[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(11),
	devoe => ww_devoe,
	o => \o_addr[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\o_addr[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(12),
	devoe => ww_devoe,
	o => \o_addr[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\o_addr[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(13),
	devoe => ww_devoe,
	o => \o_addr[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\o_addr[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(14),
	devoe => ww_devoe,
	o => \o_addr[14]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\o_addr[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(15),
	devoe => ww_devoe,
	o => \o_addr[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\o_addr[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(16),
	devoe => ww_devoe,
	o => \o_addr[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\o_addr[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(17),
	devoe => ww_devoe,
	o => \o_addr[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\o_addr[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(18),
	devoe => ww_devoe,
	o => \o_addr[18]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\o_addr[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_addr(19),
	devoe => ww_devoe,
	o => \o_addr[19]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\o_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(0),
	devoe => ww_devoe,
	o => \o_data[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\o_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(1),
	devoe => ww_devoe,
	o => \o_data[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\o_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(2),
	devoe => ww_devoe,
	o => \o_data[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\o_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(3),
	devoe => ww_devoe,
	o => \o_data[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\o_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(4),
	devoe => ww_devoe,
	o => \o_data[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\o_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(5),
	devoe => ww_devoe,
	o => \o_data[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\o_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(6),
	devoe => ww_devoe,
	o => \o_data[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\o_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(7),
	devoe => ww_devoe,
	o => \o_data[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\o_data[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(8),
	devoe => ww_devoe,
	o => \o_data[8]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\o_data[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(9),
	devoe => ww_devoe,
	o => \o_data[9]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\o_data[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(10),
	devoe => ww_devoe,
	o => \o_data[10]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\o_data[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(11),
	devoe => ww_devoe,
	o => \o_data[11]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\o_data[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(12),
	devoe => ww_devoe,
	o => \o_data[12]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\o_data[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(13),
	devoe => ww_devoe,
	o => \o_data[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\o_data[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(14),
	devoe => ww_devoe,
	o => \o_data[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\o_data[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(15),
	devoe => ww_devoe,
	o => \o_data[15]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\o_we~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_we~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\o_ce~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ce~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\o_oe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_oe~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\o_ub~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_ub~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\o_lb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_lb~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\o_leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(0),
	devoe => ww_devoe,
	o => \o_leds[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\o_leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(1),
	devoe => ww_devoe,
	o => \o_leds[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\o_leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(2),
	devoe => ww_devoe,
	o => \o_leds[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\o_leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(3),
	devoe => ww_devoe,
	o => \o_leds[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\o_leds[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(4),
	devoe => ww_devoe,
	o => \o_leds[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\o_leds[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(5),
	devoe => ww_devoe,
	o => \o_leds[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\o_leds[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(6),
	devoe => ww_devoe,
	o => \o_leds[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\o_leds[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(7),
	devoe => ww_devoe,
	o => \o_leds[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\o_leds[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(8),
	devoe => ww_devoe,
	o => \o_leds[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\o_leds[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(9),
	devoe => ww_devoe,
	o => \o_leds[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\o_leds[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(10),
	devoe => ww_devoe,
	o => \o_leds[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\o_leds[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(11),
	devoe => ww_devoe,
	o => \o_leds[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\o_leds[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(12),
	devoe => ww_devoe,
	o => \o_leds[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\o_leds[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(13),
	devoe => ww_devoe,
	o => \o_leds[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\o_leds[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(14),
	devoe => ww_devoe,
	o => \o_leds[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\o_leds[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sram_data(15),
	devoe => ww_devoe,
	o => \o_leds[15]~output_o\);

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

-- Location: LCCOMB_X35_Y47_N6
\uart_unit|receiver|r_clk_count[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[0]~13_combout\ = \uart_unit|receiver|r_clk_count\(0) $ (VCC)
-- \uart_unit|receiver|r_clk_count[0]~14\ = CARRY(\uart_unit|receiver|r_clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(0),
	datad => VCC,
	combout => \uart_unit|receiver|r_clk_count[0]~13_combout\,
	cout => \uart_unit|receiver|r_clk_count[0]~14\);

-- Location: LCCOMB_X35_Y47_N10
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

-- Location: LCCOMB_X35_Y47_N12
\uart_unit|receiver|r_clk_count[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[3]~19_combout\ = (\uart_unit|receiver|r_clk_count\(3) & (!\uart_unit|receiver|r_clk_count[2]~18\)) # (!\uart_unit|receiver|r_clk_count\(3) & ((\uart_unit|receiver|r_clk_count[2]~18\) # (GND)))
-- \uart_unit|receiver|r_clk_count[3]~20\ = CARRY((!\uart_unit|receiver|r_clk_count[2]~18\) # (!\uart_unit|receiver|r_clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(3),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[2]~18\,
	combout => \uart_unit|receiver|r_clk_count[3]~19_combout\,
	cout => \uart_unit|receiver|r_clk_count[3]~20\);

-- Location: LCCOMB_X36_Y47_N22
\uart_unit|receiver|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|LessThan1~1_combout\ = (!\uart_unit|receiver|r_clk_count\(9) & (!\uart_unit|receiver|r_clk_count\(11) & (!\uart_unit|receiver|r_clk_count\(7) & !\uart_unit|receiver|r_clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(9),
	datab => \uart_unit|receiver|r_clk_count\(11),
	datac => \uart_unit|receiver|r_clk_count\(7),
	datad => \uart_unit|receiver|r_clk_count\(8),
	combout => \uart_unit|receiver|LessThan1~1_combout\);

-- Location: LCCOMB_X36_Y47_N28
\uart_unit|receiver|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|LessThan1~0_combout\ = ((!\uart_unit|receiver|r_clk_count\(5) & ((!\uart_unit|receiver|r_clk_count\(3)) # (!\uart_unit|receiver|r_clk_count\(4))))) # (!\uart_unit|receiver|r_clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(4),
	datab => \uart_unit|receiver|r_clk_count\(6),
	datac => \uart_unit|receiver|r_clk_count\(5),
	datad => \uart_unit|receiver|r_clk_count\(3),
	combout => \uart_unit|receiver|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y47_N24
\uart_unit|receiver|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|LessThan1~2_combout\ = (\uart_unit|receiver|r_clk_count\(10) & (((\uart_unit|receiver|LessThan1~1_combout\ & \uart_unit|receiver|LessThan1~0_combout\)))) # (!\uart_unit|receiver|r_clk_count\(10) & 
-- (((\uart_unit|receiver|LessThan1~1_combout\ & \uart_unit|receiver|LessThan1~0_combout\)) # (!\uart_unit|receiver|r_clk_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(10),
	datab => \uart_unit|receiver|r_clk_count\(11),
	datac => \uart_unit|receiver|LessThan1~1_combout\,
	datad => \uart_unit|receiver|LessThan1~0_combout\,
	combout => \uart_unit|receiver|LessThan1~2_combout\);

-- Location: LCCOMB_X34_Y47_N16
\uart_unit|receiver|r_sm_main~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_sm_main~7_combout\ = (\uart_unit|receiver|r_clk_count\(12) & (\uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\ & !\uart_unit|receiver|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(12),
	datac => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\,
	datad => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|r_sm_main~7_combout\);

-- Location: FF_X34_Y47_N17
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

-- Location: LCCOMB_X34_Y47_N14
\uart_unit|receiver|r_rx_data_r~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_data_r~feeder_combout\ = \i_rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_rx~input_o\,
	combout => \uart_unit|receiver|r_rx_data_r~feeder_combout\);

-- Location: FF_X34_Y47_N15
\uart_unit|receiver|r_rx_data_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_data_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_data_r~q\);

-- Location: FF_X34_Y47_N19
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

-- Location: LCCOMB_X34_Y47_N18
\uart_unit|receiver|r_clk_count[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[7]~41_combout\ = (!\uart_unit|receiver|r_sm_main.s_cleanup~q\ & (((!\uart_unit|receiver|Equal0~3_combout\) # (!\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|r_sm_main.s_rx_start_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_start_bit~q\,
	datab => \uart_unit|receiver|r_sm_main.s_cleanup~q\,
	datac => \uart_unit|receiver|r_rx_data~q\,
	datad => \uart_unit|receiver|Equal0~3_combout\,
	combout => \uart_unit|receiver|r_clk_count[7]~41_combout\);

-- Location: FF_X35_Y47_N13
\uart_unit|receiver|r_clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[3]~19_combout\,
	sclr => \uart_unit|receiver|r_clk_count[7]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(3));

-- Location: LCCOMB_X35_Y47_N14
\uart_unit|receiver|r_clk_count[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[4]~21_combout\ = (\uart_unit|receiver|r_clk_count\(4) & (\uart_unit|receiver|r_clk_count[3]~20\ $ (GND))) # (!\uart_unit|receiver|r_clk_count\(4) & (!\uart_unit|receiver|r_clk_count[3]~20\ & VCC))
-- \uart_unit|receiver|r_clk_count[4]~22\ = CARRY((\uart_unit|receiver|r_clk_count\(4) & !\uart_unit|receiver|r_clk_count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(4),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[3]~20\,
	combout => \uart_unit|receiver|r_clk_count[4]~21_combout\,
	cout => \uart_unit|receiver|r_clk_count[4]~22\);

-- Location: FF_X35_Y47_N15
\uart_unit|receiver|r_clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[4]~21_combout\,
	sclr => \uart_unit|receiver|r_clk_count[7]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(4));

-- Location: LCCOMB_X35_Y47_N16
\uart_unit|receiver|r_clk_count[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[5]~23_combout\ = (\uart_unit|receiver|r_clk_count\(5) & (!\uart_unit|receiver|r_clk_count[4]~22\)) # (!\uart_unit|receiver|r_clk_count\(5) & ((\uart_unit|receiver|r_clk_count[4]~22\) # (GND)))
-- \uart_unit|receiver|r_clk_count[5]~24\ = CARRY((!\uart_unit|receiver|r_clk_count[4]~22\) # (!\uart_unit|receiver|r_clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(5),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[4]~22\,
	combout => \uart_unit|receiver|r_clk_count[5]~23_combout\,
	cout => \uart_unit|receiver|r_clk_count[5]~24\);

-- Location: FF_X35_Y47_N17
\uart_unit|receiver|r_clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[5]~23_combout\,
	sclr => \uart_unit|receiver|r_clk_count[7]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(5));

-- Location: LCCOMB_X35_Y47_N18
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

-- Location: FF_X35_Y47_N19
\uart_unit|receiver|r_clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[6]~25_combout\,
	sclr => \uart_unit|receiver|r_clk_count[7]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(6));

-- Location: LCCOMB_X35_Y47_N20
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

-- Location: FF_X35_Y47_N21
\uart_unit|receiver|r_clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[7]~27_combout\,
	sclr => \uart_unit|receiver|r_clk_count[7]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(7));

-- Location: LCCOMB_X35_Y47_N22
\uart_unit|receiver|r_clk_count[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[8]~29_combout\ = (\uart_unit|receiver|r_clk_count\(8) & (\uart_unit|receiver|r_clk_count[7]~28\ $ (GND))) # (!\uart_unit|receiver|r_clk_count\(8) & (!\uart_unit|receiver|r_clk_count[7]~28\ & VCC))
-- \uart_unit|receiver|r_clk_count[8]~30\ = CARRY((\uart_unit|receiver|r_clk_count\(8) & !\uart_unit|receiver|r_clk_count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(8),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[7]~28\,
	combout => \uart_unit|receiver|r_clk_count[8]~29_combout\,
	cout => \uart_unit|receiver|r_clk_count[8]~30\);

-- Location: FF_X35_Y47_N23
\uart_unit|receiver|r_clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[8]~29_combout\,
	sclr => \uart_unit|receiver|r_clk_count[7]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(8));

-- Location: LCCOMB_X35_Y47_N24
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

-- Location: FF_X35_Y47_N25
\uart_unit|receiver|r_clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[9]~31_combout\,
	sclr => \uart_unit|receiver|r_clk_count[7]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(9));

-- Location: LCCOMB_X35_Y47_N26
\uart_unit|receiver|r_clk_count[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[10]~33_combout\ = (\uart_unit|receiver|r_clk_count\(10) & (\uart_unit|receiver|r_clk_count[9]~32\ $ (GND))) # (!\uart_unit|receiver|r_clk_count\(10) & (!\uart_unit|receiver|r_clk_count[9]~32\ & VCC))
-- \uart_unit|receiver|r_clk_count[10]~34\ = CARRY((\uart_unit|receiver|r_clk_count\(10) & !\uart_unit|receiver|r_clk_count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(10),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[9]~32\,
	combout => \uart_unit|receiver|r_clk_count[10]~33_combout\,
	cout => \uart_unit|receiver|r_clk_count[10]~34\);

-- Location: FF_X35_Y47_N27
\uart_unit|receiver|r_clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[10]~33_combout\,
	sclr => \uart_unit|receiver|r_clk_count[7]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(10));

-- Location: LCCOMB_X35_Y47_N28
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

-- Location: FF_X35_Y47_N29
\uart_unit|receiver|r_clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[11]~35_combout\,
	sclr => \uart_unit|receiver|r_clk_count[7]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(11));

-- Location: LCCOMB_X35_Y47_N30
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

-- Location: FF_X35_Y47_N31
\uart_unit|receiver|r_clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[12]~37_combout\,
	sclr => \uart_unit|receiver|r_clk_count[7]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(12));

-- Location: LCCOMB_X34_Y47_N2
\uart_unit|receiver|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector19~0_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & ((\uart_unit|receiver|LessThan1~2_combout\) # (!\uart_unit|receiver|r_clk_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(12),
	datac => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datad => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|Selector19~0_combout\);

-- Location: LCCOMB_X34_Y47_N24
\uart_unit|receiver|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|LessThan1~3_combout\ = (\uart_unit|receiver|r_clk_count\(12) & !\uart_unit|receiver|LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(12),
	datad => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|LessThan1~3_combout\);

-- Location: LCCOMB_X33_Y47_N18
\uart_unit|receiver|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector15~2_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (\uart_unit|receiver|r_bit_index\(1) $ (((\uart_unit|receiver|r_bit_index\(0) & \uart_unit|receiver|LessThan1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(1),
	datab => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \uart_unit|receiver|r_bit_index\(0),
	datad => \uart_unit|receiver|LessThan1~3_combout\,
	combout => \uart_unit|receiver|Selector15~2_combout\);

-- Location: LCCOMB_X33_Y47_N22
\uart_unit|receiver|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector15~3_combout\ = (\uart_unit|receiver|Selector15~2_combout\) # ((\uart_unit|receiver|r_sm_main.s_idle~q\ & (!\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & \uart_unit|receiver|r_bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datab => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Selector15~2_combout\,
	combout => \uart_unit|receiver|Selector15~3_combout\);

-- Location: FF_X33_Y47_N23
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

-- Location: LCCOMB_X33_Y47_N4
\uart_unit|receiver|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector19~1_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (((!\uart_unit|receiver|r_bit_index\(1)) # (!\uart_unit|receiver|r_bit_index\(0))) # (!\uart_unit|receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(2),
	datab => \uart_unit|receiver|r_bit_index\(0),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	combout => \uart_unit|receiver|Selector19~1_combout\);

-- Location: LCCOMB_X34_Y47_N28
\uart_unit|receiver|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector19~2_combout\ = (\uart_unit|receiver|Selector19~0_combout\) # ((\uart_unit|receiver|Selector19~1_combout\) # ((\uart_unit|receiver|r_clk_count[7]~39_combout\ & !\uart_unit|receiver|r_rx_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count[7]~39_combout\,
	datab => \uart_unit|receiver|Selector19~0_combout\,
	datac => \uart_unit|receiver|Selector19~1_combout\,
	datad => \uart_unit|receiver|r_rx_data~q\,
	combout => \uart_unit|receiver|Selector19~2_combout\);

-- Location: FF_X34_Y47_N29
\uart_unit|receiver|r_sm_main.s_rx_data_bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\);

-- Location: LCCOMB_X34_Y47_N10
\uart_unit|receiver|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector16~0_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & ((\uart_unit|receiver|r_clk_count\(12)))) # (!\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (\uart_unit|receiver|r_sm_main.s_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datad => \uart_unit|receiver|r_clk_count\(12),
	combout => \uart_unit|receiver|Selector16~0_combout\);

-- Location: LCCOMB_X34_Y47_N0
\uart_unit|receiver|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector16~1_combout\ = (\uart_unit|receiver|Selector16~0_combout\ & (\uart_unit|receiver|r_bit_index\(0) $ (((\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & !\uart_unit|receiver|LessThan1~2_combout\))))) # 
-- (!\uart_unit|receiver|Selector16~0_combout\ & (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (\uart_unit|receiver|r_bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Selector16~0_combout\,
	datab => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \uart_unit|receiver|r_bit_index\(0),
	datad => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|Selector16~1_combout\);

-- Location: FF_X34_Y47_N1
\uart_unit|receiver|r_bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_bit_index\(0));

-- Location: LCCOMB_X33_Y47_N0
\uart_unit|receiver|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~0_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (\uart_unit|receiver|r_clk_count\(12) & !\uart_unit|receiver|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \uart_unit|receiver|r_clk_count\(12),
	datad => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|Decoder0~0_combout\);

-- Location: LCCOMB_X33_Y47_N20
\uart_unit|receiver|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector14~0_combout\ = (\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|Decoder0~0_combout\ & (\uart_unit|receiver|r_bit_index\(2) $ (\uart_unit|receiver|r_bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(2),
	datab => \uart_unit|receiver|r_bit_index\(0),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Selector14~0_combout\);

-- Location: LCCOMB_X33_Y47_N10
\uart_unit|receiver|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector14~1_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (((!\uart_unit|receiver|LessThan1~3_combout\) # (!\uart_unit|receiver|r_bit_index\(0))))) # (!\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & 
-- (\uart_unit|receiver|r_sm_main.s_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datab => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \uart_unit|receiver|r_bit_index\(0),
	datad => \uart_unit|receiver|LessThan1~3_combout\,
	combout => \uart_unit|receiver|Selector14~1_combout\);

-- Location: LCCOMB_X33_Y47_N12
\uart_unit|receiver|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector14~2_combout\ = (\uart_unit|receiver|Selector14~0_combout\) # ((\uart_unit|receiver|r_bit_index\(2) & \uart_unit|receiver|Selector14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|Selector14~0_combout\,
	datac => \uart_unit|receiver|r_bit_index\(2),
	datad => \uart_unit|receiver|Selector14~1_combout\,
	combout => \uart_unit|receiver|Selector14~2_combout\);

-- Location: FF_X33_Y47_N13
\uart_unit|receiver|r_bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_bit_index\(2));

-- Location: LCCOMB_X33_Y47_N26
\uart_unit|receiver|r_sm_main.s_rx_stop_bit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_sm_main.s_rx_stop_bit~2_combout\ = (\uart_unit|receiver|r_bit_index\(2) & (\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(2),
	datab => \uart_unit|receiver|r_bit_index\(0),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~2_combout\);

-- Location: LCCOMB_X34_Y47_N8
\uart_unit|receiver|r_sm_main.s_rx_stop_bit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_sm_main.s_rx_stop_bit~3_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_stop_bit~2_combout\) # ((\uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\ & ((\uart_unit|receiver|LessThan1~2_combout\) # (!\uart_unit|receiver|r_clk_count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~2_combout\,
	datab => \uart_unit|receiver|r_clk_count\(12),
	datac => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\,
	datad => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~3_combout\);

-- Location: FF_X34_Y47_N9
\uart_unit|receiver|r_sm_main.s_rx_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\);

-- Location: LCCOMB_X34_Y47_N26
\uart_unit|receiver|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector0~0_combout\ = (!\uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\ & !\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\,
	datad => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	combout => \uart_unit|receiver|Selector0~0_combout\);

-- Location: LCCOMB_X34_Y47_N6
\uart_unit|receiver|r_clk_count[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[7]~40_combout\ = ((\uart_unit|receiver|r_clk_count[7]~39_combout\) # ((!\uart_unit|receiver|Selector0~0_combout\ & \uart_unit|receiver|LessThan1~3_combout\))) # (!\uart_unit|receiver|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Selector0~0_combout\,
	datab => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datac => \uart_unit|receiver|r_clk_count[7]~39_combout\,
	datad => \uart_unit|receiver|LessThan1~3_combout\,
	combout => \uart_unit|receiver|r_clk_count[7]~40_combout\);

-- Location: FF_X35_Y47_N7
\uart_unit|receiver|r_clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[0]~13_combout\,
	sclr => \uart_unit|receiver|r_clk_count[7]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(0));

-- Location: LCCOMB_X35_Y47_N8
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

-- Location: FF_X35_Y47_N9
\uart_unit|receiver|r_clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[1]~15_combout\,
	sclr => \uart_unit|receiver|r_clk_count[7]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(1));

-- Location: FF_X35_Y47_N11
\uart_unit|receiver|r_clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[2]~17_combout\,
	sclr => \uart_unit|receiver|r_clk_count[7]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[7]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(2));

-- Location: LCCOMB_X35_Y47_N0
\uart_unit|receiver|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal0~0_combout\ = (!\uart_unit|receiver|r_clk_count\(8) & (!\uart_unit|receiver|r_clk_count\(7) & (!\uart_unit|receiver|r_clk_count\(4) & \uart_unit|receiver|r_clk_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(8),
	datab => \uart_unit|receiver|r_clk_count\(7),
	datac => \uart_unit|receiver|r_clk_count\(4),
	datad => \uart_unit|receiver|r_clk_count\(3),
	combout => \uart_unit|receiver|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y47_N2
\uart_unit|receiver|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal0~2_combout\ = (!\uart_unit|receiver|r_clk_count\(0) & (!\uart_unit|receiver|r_clk_count\(1) & (!\uart_unit|receiver|r_clk_count\(12) & \uart_unit|receiver|r_clk_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(0),
	datab => \uart_unit|receiver|r_clk_count\(1),
	datac => \uart_unit|receiver|r_clk_count\(12),
	datad => \uart_unit|receiver|r_clk_count\(11),
	combout => \uart_unit|receiver|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y47_N26
\uart_unit|receiver|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal0~1_combout\ = (!\uart_unit|receiver|r_clk_count\(10) & (\uart_unit|receiver|r_clk_count\(9) & (\uart_unit|receiver|r_clk_count\(5) & !\uart_unit|receiver|r_clk_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(10),
	datab => \uart_unit|receiver|r_clk_count\(9),
	datac => \uart_unit|receiver|r_clk_count\(5),
	datad => \uart_unit|receiver|r_clk_count\(6),
	combout => \uart_unit|receiver|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y47_N4
\uart_unit|receiver|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal0~3_combout\ = (\uart_unit|receiver|r_clk_count\(2) & (\uart_unit|receiver|Equal0~0_combout\ & (\uart_unit|receiver|Equal0~2_combout\ & \uart_unit|receiver|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(2),
	datab => \uart_unit|receiver|Equal0~0_combout\,
	datac => \uart_unit|receiver|Equal0~2_combout\,
	datad => \uart_unit|receiver|Equal0~1_combout\,
	combout => \uart_unit|receiver|Equal0~3_combout\);

-- Location: LCCOMB_X34_Y47_N30
\uart_unit|receiver|r_clk_count[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[7]~39_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_start_bit~q\ & \uart_unit|receiver|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_sm_main.s_rx_start_bit~q\,
	datad => \uart_unit|receiver|Equal0~3_combout\,
	combout => \uart_unit|receiver|r_clk_count[7]~39_combout\);

-- Location: LCCOMB_X34_Y47_N20
\uart_unit|receiver|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector17~0_combout\ = (!\uart_unit|receiver|r_sm_main.s_cleanup~q\ & (((!\uart_unit|receiver|r_clk_count[7]~39_combout\ & \uart_unit|receiver|r_sm_main.s_idle~q\)) # (!\uart_unit|receiver|r_rx_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count[7]~39_combout\,
	datab => \uart_unit|receiver|r_sm_main.s_cleanup~q\,
	datac => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datad => \uart_unit|receiver|r_rx_data~q\,
	combout => \uart_unit|receiver|Selector17~0_combout\);

-- Location: FF_X34_Y47_N21
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

-- Location: LCCOMB_X34_Y47_N22
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

-- Location: FF_X34_Y47_N23
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

-- Location: LCCOMB_X34_Y47_N4
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

-- Location: FF_X34_Y47_N5
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

-- Location: LCCOMB_X42_Y43_N6
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

-- Location: LCCOMB_X42_Y43_N16
\uart_unit|fifo_rx|r_fifo_count[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_count[0]~13_combout\ = (\uart_unit|receiver|r_rx_dv~q\ $ (\r_rd_rx~q\)) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_dv~q\,
	datac => \i_rst_sync~input_o\,
	datad => \r_rd_rx~q\,
	combout => \uart_unit|fifo_rx|r_fifo_count[0]~13_combout\);

-- Location: FF_X42_Y43_N7
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
	ena => \uart_unit|fifo_rx|r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(0));

-- Location: LCCOMB_X42_Y43_N8
\uart_unit|fifo_rx|r_fifo_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_count[1]~7_combout\ = (\uart_unit|fifo_rx|p_control~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_count\(1) & (!\uart_unit|fifo_rx|r_fifo_count[0]~6\)) # (!\uart_unit|fifo_rx|r_fifo_count\(1) & ((\uart_unit|fifo_rx|r_fifo_count[0]~6\) 
-- # (GND))))) # (!\uart_unit|fifo_rx|p_control~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_count\(1) & (\uart_unit|fifo_rx|r_fifo_count[0]~6\ & VCC)) # (!\uart_unit|fifo_rx|r_fifo_count\(1) & (!\uart_unit|fifo_rx|r_fifo_count[0]~6\))))
-- \uart_unit|fifo_rx|r_fifo_count[1]~8\ = CARRY((\uart_unit|fifo_rx|p_control~0_combout\ & ((!\uart_unit|fifo_rx|r_fifo_count[0]~6\) # (!\uart_unit|fifo_rx|r_fifo_count\(1)))) # (!\uart_unit|fifo_rx|p_control~0_combout\ & 
-- (!\uart_unit|fifo_rx|r_fifo_count\(1) & !\uart_unit|fifo_rx|r_fifo_count[0]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|p_control~0_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_count\(1),
	datad => VCC,
	cin => \uart_unit|fifo_rx|r_fifo_count[0]~6\,
	combout => \uart_unit|fifo_rx|r_fifo_count[1]~7_combout\,
	cout => \uart_unit|fifo_rx|r_fifo_count[1]~8\);

-- Location: FF_X42_Y43_N9
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
	ena => \uart_unit|fifo_rx|r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(1));

-- Location: LCCOMB_X42_Y43_N10
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

-- Location: FF_X42_Y43_N11
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
	ena => \uart_unit|fifo_rx|r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(2));

-- Location: LCCOMB_X42_Y43_N12
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

-- Location: LCCOMB_X42_Y43_N14
\uart_unit|fifo_rx|r_fifo_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_count[4]~14_combout\ = \uart_unit|fifo_rx|p_control~0_combout\ $ (\uart_unit|fifo_rx|r_fifo_count\(4) $ (\uart_unit|fifo_rx|r_fifo_count[3]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|p_control~0_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_count\(4),
	cin => \uart_unit|fifo_rx|r_fifo_count[3]~12\,
	combout => \uart_unit|fifo_rx|r_fifo_count[4]~14_combout\);

-- Location: FF_X42_Y43_N15
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
	ena => \uart_unit|fifo_rx|r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(4));

-- Location: LCCOMB_X42_Y43_N20
\uart_unit|fifo_rx|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Equal2~0_combout\ = (!\uart_unit|fifo_rx|r_fifo_count\(0) & (!\uart_unit|fifo_rx|r_fifo_count\(4) & !\uart_unit|fifo_rx|r_fifo_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(0),
	datac => \uart_unit|fifo_rx|r_fifo_count\(4),
	datad => \uart_unit|fifo_rx|r_fifo_count\(2),
	combout => \uart_unit|fifo_rx|Equal2~0_combout\);

-- Location: LCCOMB_X42_Y43_N22
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\r_sm.s_idle~q\ & (((\uart_unit|fifo_rx|r_fifo_count\(1)) # (\uart_unit|fifo_rx|r_fifo_count\(3))) # (!\uart_unit|fifo_rx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_idle~q\,
	datab => \uart_unit|fifo_rx|Equal2~0_combout\,
	datac => \uart_unit|fifo_rx|r_fifo_count\(1),
	datad => \uart_unit|fifo_rx|r_fifo_count\(3),
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

-- Location: FF_X42_Y43_N23
\r_sm.s_get_fifo_data\ : dffeas
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
	q => \r_sm.s_get_fifo_data~q\);

-- Location: FF_X30_Y40_N31
\r_sm.s_process\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_sm.s_get_fifo_data~q\,
	clrn => \i_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm.s_process~q\);

-- Location: LCCOMB_X31_Y40_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = r_index(0) $ (VCC)
-- \Add1~1\ = CARRY(r_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_index(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X31_Y40_N1
\r_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(0));

-- Location: LCCOMB_X31_Y40_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (r_index(1) & (!\Add1~1\)) # (!r_index(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!r_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X31_Y40_N3
\r_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(1));

-- Location: LCCOMB_X31_Y40_N4
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

-- Location: LCCOMB_X29_Y40_N16
\Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (!r_index(2) & (!r_index(3) & (r_index(1) & r_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(3),
	datac => r_index(1),
	datad => r_index(0),
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X31_Y39_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (r_index(27) & (!\Add1~53\)) # (!r_index(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!r_index(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X31_Y39_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (r_index(28) & (\Add1~55\ $ (GND))) # (!r_index(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((r_index(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X31_Y39_N25
\r_index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(28));

-- Location: LCCOMB_X31_Y39_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (r_index(29) & (!\Add1~57\)) # (!r_index(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!r_index(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X31_Y39_N27
\r_index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~58_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(29));

-- Location: LCCOMB_X31_Y39_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (r_index(30) & (\Add1~59\ $ (GND))) # (!r_index(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((r_index(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: FF_X31_Y39_N29
\r_index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~60_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(30));

-- Location: LCCOMB_X31_Y39_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = r_index(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: FF_X31_Y39_N31
\r_index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~62_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(31));

-- Location: LCCOMB_X29_Y40_N24
\Equal2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~13_combout\ = (r_index(5) & (!r_index(31) & !r_index(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_index(5),
	datac => r_index(31),
	datad => r_index(4),
	combout => \Equal2~13_combout\);

-- Location: LCCOMB_X30_Y40_N4
\Equal2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~14_combout\ = (\Equal2~10_combout\ & (\Equal2~12_combout\ & \Equal2~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Equal2~12_combout\,
	datad => \Equal2~13_combout\,
	combout => \Equal2~14_combout\);

-- Location: LCCOMB_X29_Y40_N26
\r_index[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_index[2]~4_combout\ = (\r_index[31]~3_combout\ & (\Add1~4_combout\ & ((!\Equal2~14_combout\)))) # (!\r_index[31]~3_combout\ & (((r_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_index[31]~3_combout\,
	datab => \Add1~4_combout\,
	datac => r_index(2),
	datad => \Equal2~14_combout\,
	combout => \r_index[2]~4_combout\);

-- Location: FF_X29_Y40_N27
\r_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_index[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(2));

-- Location: LCCOMB_X31_Y40_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (r_index(3) & (!\Add1~5\)) # (!r_index(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!r_index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X31_Y40_N7
\r_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(3));

-- Location: LCCOMB_X31_Y40_N8
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

-- Location: FF_X31_Y40_N9
\r_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(4));

-- Location: LCCOMB_X29_Y40_N30
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!r_index(2) & (!r_index(3) & ((!r_index(0)) # (!r_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(3),
	datac => r_index(1),
	datad => r_index(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y40_N10
\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!r_index(8) & (!r_index(9) & (!r_index(10) & !r_index(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(8),
	datab => r_index(9),
	datac => r_index(10),
	datad => r_index(7),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X30_Y40_N26
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (!r_index(13) & (!r_index(14) & (!r_index(12) & !r_index(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(13),
	datab => r_index(14),
	datac => r_index(12),
	datad => r_index(11),
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X30_Y40_N18
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!r_index(16) & (!r_index(18) & (!r_index(17) & !r_index(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(16),
	datab => r_index(18),
	datac => r_index(17),
	datad => r_index(15),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X30_Y40_N22
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!r_index(20) & (!r_index(21) & (!r_index(22) & !r_index(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(20),
	datab => r_index(21),
	datac => r_index(22),
	datad => r_index(19),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X30_Y40_N0
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!r_index(23) & (!r_index(26) & (!r_index(24) & !r_index(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(23),
	datab => r_index(26),
	datac => r_index(24),
	datad => r_index(25),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X30_Y40_N24
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (\Equal2~4_combout\ & (\Equal2~3_combout\ & (\Equal2~2_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X29_Y40_N20
\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!r_index(6) & (\Equal2~6_combout\ & \Equal2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(6),
	datac => \Equal2~6_combout\,
	datad => \Equal2~5_combout\,
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X29_Y40_N14
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!r_index(5) & (\Equal2~7_combout\ & ((\LessThan0~0_combout\) # (!r_index(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(4),
	datab => r_index(5),
	datac => \LessThan0~0_combout\,
	datad => \Equal2~7_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y40_N22
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ((\LessThan0~0_combout\ & !r_index(4))) # (!r_index(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_index(5),
	datac => \LessThan0~0_combout\,
	datad => r_index(4),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X33_Y47_N16
\uart_unit|receiver|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~6_combout\ = (!\uart_unit|receiver|r_bit_index\(2) & (\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(2),
	datab => \uart_unit|receiver|r_bit_index\(0),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~6_combout\);

-- Location: LCCOMB_X36_Y47_N12
\uart_unit|receiver|r_rx_byte[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[3]~5_combout\ = (\uart_unit|receiver|Decoder0~6_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~6_combout\ & ((\uart_unit|receiver|r_rx_byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(3),
	datad => \uart_unit|receiver|Decoder0~6_combout\,
	combout => \uart_unit|receiver|r_rx_byte[3]~5_combout\);

-- Location: FF_X36_Y47_N13
\uart_unit|receiver|r_rx_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(3));

-- Location: FF_X38_Y43_N5
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_rx_byte\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(15));

-- Location: LCCOMB_X39_Y43_N4
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

-- Location: FF_X39_Y43_N5
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

-- Location: LCCOMB_X40_Y43_N22
\uart_unit|fifo_rx|r_fifo_data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~15_combout\ = (\i_rst_sync~input_o\ & \uart_unit|receiver|r_rx_dv~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_sync~input_o\,
	datad => \uart_unit|receiver|r_rx_dv~q\,
	combout => \uart_unit|fifo_rx|r_fifo_data~15_combout\);

-- Location: FF_X40_Y43_N23
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0));

-- Location: LCCOMB_X41_Y43_N12
\uart_unit|fifo_rx|r_rd_index[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index[3]~feeder_combout\ = \uart_unit|fifo_rx|r_rd_index~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_rx|r_rd_index~5_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index[3]~feeder_combout\);

-- Location: FF_X41_Y43_N13
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

-- Location: LCCOMB_X42_Y43_N24
\uart_unit|fifo_rx|p_control~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|p_control~1_combout\ = (\r_rd_rx~q\ & ((\uart_unit|fifo_rx|r_fifo_count\(3)) # ((\uart_unit|fifo_rx|r_fifo_count\(1)) # (!\uart_unit|fifo_rx|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(3),
	datab => \r_rd_rx~q\,
	datac => \uart_unit|fifo_rx|r_fifo_count\(1),
	datad => \uart_unit|fifo_rx|Equal2~0_combout\,
	combout => \uart_unit|fifo_rx|p_control~1_combout\);

-- Location: LCCOMB_X42_Y43_N4
\uart_unit|fifo_rx|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Equal3~0_combout\ = (\uart_unit|fifo_rx|r_fifo_count\(3)) # ((\uart_unit|fifo_rx|r_fifo_count\(1)) # (!\uart_unit|fifo_rx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(3),
	datac => \uart_unit|fifo_rx|r_fifo_count\(1),
	datad => \uart_unit|fifo_rx|Equal2~0_combout\,
	combout => \uart_unit|fifo_rx|Equal3~0_combout\);

-- Location: LCCOMB_X42_Y43_N26
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

-- Location: LCCOMB_X42_Y43_N28
\uart_unit|fifo_rx|r_rd_index[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index[0]~feeder_combout\ = \uart_unit|fifo_rx|r_rd_index~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_rx|r_rd_index~0_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index[0]~feeder_combout\);

-- Location: FF_X42_Y43_N29
\uart_unit|fifo_rx|r_rd_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_rd_index[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_rd_index\(0));

-- Location: LCCOMB_X41_Y43_N6
\uart_unit|fifo_rx|r_rd_index~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~1_combout\ = (\uart_unit|fifo_rx|p_control~1_combout\ & (!\uart_unit|fifo_rx|Equal1~0_combout\ & (\uart_unit|fifo_rx|r_rd_index\(1) $ (\uart_unit|fifo_rx|r_rd_index\(0))))) # (!\uart_unit|fifo_rx|p_control~1_combout\ & 
-- (\uart_unit|fifo_rx|r_rd_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index\(1),
	datab => \uart_unit|fifo_rx|r_rd_index\(0),
	datac => \uart_unit|fifo_rx|Equal1~0_combout\,
	datad => \uart_unit|fifo_rx|p_control~1_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index~1_combout\);

-- Location: LCCOMB_X41_Y43_N8
\uart_unit|fifo_rx|r_rd_index~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~2_combout\ = (\i_rst_sync~input_o\ & \uart_unit|fifo_rx|r_rd_index~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_sync~input_o\,
	datad => \uart_unit|fifo_rx|r_rd_index~1_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index~2_combout\);

-- Location: LCCOMB_X41_Y43_N18
\uart_unit|fifo_rx|r_rd_index[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index[1]~feeder_combout\ = \uart_unit|fifo_rx|r_rd_index~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_rx|r_rd_index~2_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index[1]~feeder_combout\);

-- Location: FF_X41_Y43_N19
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

-- Location: LCCOMB_X41_Y43_N10
\uart_unit|fifo_rx|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add3~0_combout\ = (\uart_unit|fifo_rx|r_rd_index\(1) & \uart_unit|fifo_rx|r_rd_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_rd_index\(1),
	datad => \uart_unit|fifo_rx|r_rd_index\(0),
	combout => \uart_unit|fifo_rx|Add3~0_combout\);

-- Location: LCCOMB_X41_Y43_N24
\uart_unit|fifo_rx|r_rd_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~3_combout\ = (\i_rst_sync~input_o\ & (\uart_unit|fifo_rx|r_rd_index\(2) $ (((\uart_unit|fifo_rx|Add3~0_combout\ & \uart_unit|fifo_rx|p_control~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Add3~0_combout\,
	datab => \uart_unit|fifo_rx|r_rd_index\(2),
	datac => \i_rst_sync~input_o\,
	datad => \uart_unit|fifo_rx|p_control~1_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index~3_combout\);

-- Location: LCCOMB_X41_Y43_N14
\uart_unit|fifo_rx|r_rd_index[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index[2]~feeder_combout\ = \uart_unit|fifo_rx|r_rd_index~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_rx|r_rd_index~3_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index[2]~feeder_combout\);

-- Location: FF_X41_Y43_N15
\uart_unit|fifo_rx|r_rd_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_rd_index[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_rd_index\(2));

-- Location: LCCOMB_X41_Y43_N16
\uart_unit|fifo_rx|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Equal1~0_combout\ = (\uart_unit|fifo_rx|r_rd_index\(3) & (!\uart_unit|fifo_rx|r_rd_index\(1) & (!\uart_unit|fifo_rx|r_rd_index\(2) & \uart_unit|fifo_rx|r_rd_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index\(3),
	datab => \uart_unit|fifo_rx|r_rd_index\(1),
	datac => \uart_unit|fifo_rx|r_rd_index\(2),
	datad => \uart_unit|fifo_rx|r_rd_index\(0),
	combout => \uart_unit|fifo_rx|Equal1~0_combout\);

-- Location: LCCOMB_X41_Y43_N22
\uart_unit|fifo_rx|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add3~1_combout\ = \uart_unit|fifo_rx|r_rd_index\(3) $ (((\uart_unit|fifo_rx|r_rd_index\(1) & (\uart_unit|fifo_rx|r_rd_index\(2) & \uart_unit|fifo_rx|r_rd_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index\(3),
	datab => \uart_unit|fifo_rx|r_rd_index\(1),
	datac => \uart_unit|fifo_rx|r_rd_index\(2),
	datad => \uart_unit|fifo_rx|r_rd_index\(0),
	combout => \uart_unit|fifo_rx|Add3~1_combout\);

-- Location: LCCOMB_X41_Y43_N20
\uart_unit|fifo_rx|r_rd_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~4_combout\ = (!\uart_unit|fifo_rx|Equal1~0_combout\ & (\uart_unit|fifo_rx|Add3~1_combout\ & \uart_unit|fifo_rx|p_control~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|Equal1~0_combout\,
	datac => \uart_unit|fifo_rx|Add3~1_combout\,
	datad => \uart_unit|fifo_rx|p_control~1_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index~4_combout\);

-- Location: LCCOMB_X41_Y43_N2
\uart_unit|fifo_rx|r_rd_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~5_combout\ = (\i_rst_sync~input_o\ & ((\uart_unit|fifo_rx|r_rd_index~4_combout\) # ((\uart_unit|fifo_rx|r_rd_index\(3) & !\uart_unit|fifo_rx|p_control~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index\(3),
	datab => \uart_unit|fifo_rx|p_control~1_combout\,
	datac => \i_rst_sync~input_o\,
	datad => \uart_unit|fifo_rx|r_rd_index~4_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index~5_combout\);

-- Location: LCCOMB_X41_Y43_N30
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[8]~feeder_combout\ = \uart_unit|fifo_rx|r_rd_index~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_rx|r_rd_index~5_combout\,
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X41_Y43_N31
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(8));

-- Location: LCCOMB_X40_Y43_N8
\uart_unit|fifo_rx|r_wr_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index~0_combout\ = (\i_rst_sync~input_o\ & !\uart_unit|fifo_rx|r_wr_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_rst_sync~input_o\,
	datac => \uart_unit|fifo_rx|r_wr_index\(0),
	combout => \uart_unit|fifo_rx|r_wr_index~0_combout\);

-- Location: LCCOMB_X42_Y43_N18
\uart_unit|fifo_rx|r_wr_index[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index[3]~1_combout\ = ((\uart_unit|receiver|r_rx_dv~q\ & !\uart_unit|fifo_rx|Equal2~1_combout\)) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_rst_sync~input_o\,
	datac => \uart_unit|receiver|r_rx_dv~q\,
	datad => \uart_unit|fifo_rx|Equal2~1_combout\,
	combout => \uart_unit|fifo_rx|r_wr_index[3]~1_combout\);

-- Location: FF_X40_Y43_N9
\uart_unit|fifo_rx|r_wr_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_wr_index~0_combout\,
	ena => \uart_unit|fifo_rx|r_wr_index[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_wr_index\(0));

-- Location: LCCOMB_X40_Y43_N6
\uart_unit|fifo_rx|r_wr_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index~3_combout\ = (\i_rst_sync~input_o\ & (\uart_unit|fifo_rx|r_wr_index[3]~2_combout\ & (\uart_unit|fifo_rx|r_wr_index\(0) $ (\uart_unit|fifo_rx|r_wr_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_wr_index\(0),
	datab => \i_rst_sync~input_o\,
	datac => \uart_unit|fifo_rx|r_wr_index\(1),
	datad => \uart_unit|fifo_rx|r_wr_index[3]~2_combout\,
	combout => \uart_unit|fifo_rx|r_wr_index~3_combout\);

-- Location: FF_X40_Y43_N7
\uart_unit|fifo_rx|r_wr_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_wr_index~3_combout\,
	ena => \uart_unit|fifo_rx|r_wr_index[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_wr_index\(1));

-- Location: LCCOMB_X40_Y43_N12
\uart_unit|fifo_rx|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add2~1_combout\ = \uart_unit|fifo_rx|r_wr_index\(3) $ (((\uart_unit|fifo_rx|r_wr_index\(1) & (\uart_unit|fifo_rx|r_wr_index\(2) & \uart_unit|fifo_rx|r_wr_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_wr_index\(1),
	datab => \uart_unit|fifo_rx|r_wr_index\(2),
	datac => \uart_unit|fifo_rx|r_wr_index\(0),
	datad => \uart_unit|fifo_rx|r_wr_index\(3),
	combout => \uart_unit|fifo_rx|Add2~1_combout\);

-- Location: LCCOMB_X40_Y43_N2
\uart_unit|fifo_rx|r_wr_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index~5_combout\ = (\uart_unit|fifo_rx|Add2~1_combout\ & (\i_rst_sync~input_o\ & \uart_unit|fifo_rx|r_wr_index[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Add2~1_combout\,
	datac => \i_rst_sync~input_o\,
	datad => \uart_unit|fifo_rx|r_wr_index[3]~2_combout\,
	combout => \uart_unit|fifo_rx|r_wr_index~5_combout\);

-- Location: FF_X40_Y43_N3
\uart_unit|fifo_rx|r_wr_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_wr_index~5_combout\,
	ena => \uart_unit|fifo_rx|r_wr_index[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_wr_index\(3));

-- Location: LCCOMB_X40_Y43_N24
\uart_unit|fifo_rx|r_wr_index[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index[3]~2_combout\ = (\uart_unit|fifo_rx|r_wr_index\(1)) # ((\uart_unit|fifo_rx|r_wr_index\(2)) # ((!\uart_unit|fifo_rx|r_wr_index\(3)) # (!\uart_unit|fifo_rx|r_wr_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_wr_index\(1),
	datab => \uart_unit|fifo_rx|r_wr_index\(2),
	datac => \uart_unit|fifo_rx|r_wr_index\(0),
	datad => \uart_unit|fifo_rx|r_wr_index\(3),
	combout => \uart_unit|fifo_rx|r_wr_index[3]~2_combout\);

-- Location: LCCOMB_X40_Y43_N18
\uart_unit|fifo_rx|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add2~0_combout\ = \uart_unit|fifo_rx|r_wr_index\(2) $ (((\uart_unit|fifo_rx|r_wr_index\(0) & \uart_unit|fifo_rx|r_wr_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_wr_index\(2),
	datac => \uart_unit|fifo_rx|r_wr_index\(0),
	datad => \uart_unit|fifo_rx|r_wr_index\(1),
	combout => \uart_unit|fifo_rx|Add2~0_combout\);

-- Location: LCCOMB_X40_Y43_N28
\uart_unit|fifo_rx|r_wr_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index~4_combout\ = (\uart_unit|fifo_rx|r_wr_index[3]~2_combout\ & (\i_rst_sync~input_o\ & \uart_unit|fifo_rx|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_wr_index[3]~2_combout\,
	datac => \i_rst_sync~input_o\,
	datad => \uart_unit|fifo_rx|Add2~0_combout\,
	combout => \uart_unit|fifo_rx|r_wr_index~4_combout\);

-- Location: FF_X40_Y43_N29
\uart_unit|fifo_rx|r_wr_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_wr_index~4_combout\,
	ena => \uart_unit|fifo_rx|r_wr_index[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_wr_index\(2));

-- Location: LCCOMB_X40_Y43_N4
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[5]~feeder_combout\ = \uart_unit|fifo_rx|r_wr_index\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_rx|r_wr_index\(2),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X40_Y43_N5
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(5));

-- Location: FF_X40_Y43_N11
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

-- Location: LCCOMB_X41_Y43_N4
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[6]~feeder_combout\ = \uart_unit|fifo_rx|r_rd_index~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_rx|r_rd_index~3_combout\,
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X41_Y43_N5
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(6));

-- Location: LCCOMB_X40_Y43_N10
\uart_unit|fifo_rx|r_fifo_data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~14_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(8) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(7) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(5) $ (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(6))))) # 
-- (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(8) & (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(7) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(5) $ (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(8),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(5),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(7),
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(6),
	combout => \uart_unit|fifo_rx|r_fifo_data~14_combout\);

-- Location: LCCOMB_X40_Y43_N30
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\ = \uart_unit|fifo_rx|r_wr_index\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_rx|r_wr_index\(1),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X40_Y43_N31
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(3));

-- Location: FF_X40_Y43_N21
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

-- Location: FF_X40_Y43_N17
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[2]\ : dffeas
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
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(2));

-- Location: LCCOMB_X41_Y43_N28
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder_combout\ = \uart_unit|fifo_rx|r_rd_index~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_rx|r_rd_index~2_combout\,
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder_combout\);

-- Location: FF_X41_Y43_N29
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

-- Location: LCCOMB_X40_Y43_N16
\uart_unit|fifo_rx|r_fifo_data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~13_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(3) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(4) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(1) $ (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(2))))) # 
-- (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(3) & (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(4) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(1) $ (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(3),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(1),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(2),
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(4),
	combout => \uart_unit|fifo_rx|r_fifo_data~13_combout\);

-- Location: LCCOMB_X39_Y43_N14
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(16) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(16),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datac => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X33_Y47_N6
\uart_unit|receiver|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~1_combout\ = (!\uart_unit|receiver|r_bit_index\(2) & (!\uart_unit|receiver|r_bit_index\(0) & (!\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(2),
	datab => \uart_unit|receiver|r_bit_index\(0),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~1_combout\);

-- Location: LCCOMB_X36_Y47_N4
\uart_unit|receiver|r_rx_byte[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[0]~0_combout\ = (\uart_unit|receiver|Decoder0~1_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~1_combout\ & ((\uart_unit|receiver|r_rx_byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(0),
	datad => \uart_unit|receiver|Decoder0~1_combout\,
	combout => \uart_unit|receiver|r_rx_byte[0]~0_combout\);

-- Location: FF_X36_Y47_N5
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

-- Location: LCCOMB_X33_Y47_N8
\uart_unit|receiver|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~8_combout\ = (!\uart_unit|receiver|r_bit_index\(2) & (\uart_unit|receiver|r_bit_index\(0) & (!\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(2),
	datab => \uart_unit|receiver|r_bit_index\(0),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~8_combout\);

-- Location: LCCOMB_X36_Y47_N8
\uart_unit|receiver|r_rx_byte[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[1]~7_combout\ = (\uart_unit|receiver|Decoder0~8_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~8_combout\ & ((\uart_unit|receiver|r_rx_byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(1),
	datad => \uart_unit|receiver|Decoder0~8_combout\,
	combout => \uart_unit|receiver|r_rx_byte[1]~7_combout\);

-- Location: FF_X36_Y47_N9
\uart_unit|receiver|r_rx_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(1));

-- Location: LCCOMB_X33_Y47_N2
\uart_unit|receiver|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~7_combout\ = (!\uart_unit|receiver|r_bit_index\(2) & (!\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(2),
	datab => \uart_unit|receiver|r_bit_index\(0),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~7_combout\);

-- Location: LCCOMB_X36_Y47_N14
\uart_unit|receiver|r_rx_byte[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[2]~6_combout\ = (\uart_unit|receiver|Decoder0~7_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~7_combout\ & ((\uart_unit|receiver|r_rx_byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(2),
	datad => \uart_unit|receiver|Decoder0~7_combout\,
	combout => \uart_unit|receiver|r_rx_byte[2]~6_combout\);

-- Location: FF_X36_Y47_N15
\uart_unit|receiver|r_rx_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(2));

-- Location: LCCOMB_X33_Y47_N30
\uart_unit|receiver|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~3_combout\ = (\uart_unit|receiver|r_bit_index\(2) & (!\uart_unit|receiver|r_bit_index\(0) & (!\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(2),
	datab => \uart_unit|receiver|r_bit_index\(0),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~3_combout\);

-- Location: LCCOMB_X36_Y47_N20
\uart_unit|receiver|r_rx_byte[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[4]~2_combout\ = (\uart_unit|receiver|Decoder0~3_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~3_combout\ & ((\uart_unit|receiver|r_rx_byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(4),
	datad => \uart_unit|receiver|Decoder0~3_combout\,
	combout => \uart_unit|receiver|r_rx_byte[4]~2_combout\);

-- Location: FF_X36_Y47_N21
\uart_unit|receiver|r_rx_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(4));

-- Location: LCCOMB_X33_Y47_N28
\uart_unit|receiver|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~2_combout\ = (\uart_unit|receiver|r_bit_index\(2) & (\uart_unit|receiver|r_bit_index\(0) & (!\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(2),
	datab => \uart_unit|receiver|r_bit_index\(0),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~2_combout\);

-- Location: LCCOMB_X36_Y47_N10
\uart_unit|receiver|r_rx_byte[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[5]~1_combout\ = (\uart_unit|receiver|Decoder0~2_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~2_combout\ & ((\uart_unit|receiver|r_rx_byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(5),
	datad => \uart_unit|receiver|Decoder0~2_combout\,
	combout => \uart_unit|receiver|r_rx_byte[5]~1_combout\);

-- Location: FF_X36_Y47_N11
\uart_unit|receiver|r_rx_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(5));

-- Location: LCCOMB_X33_Y47_N14
\uart_unit|receiver|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~5_combout\ = (\uart_unit|receiver|r_bit_index\(2) & (!\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(2),
	datab => \uart_unit|receiver|r_bit_index\(0),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~5_combout\);

-- Location: LCCOMB_X34_Y47_N12
\uart_unit|receiver|r_rx_byte[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[6]~4_combout\ = (\uart_unit|receiver|Decoder0~5_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~5_combout\ & ((\uart_unit|receiver|r_rx_byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(6),
	datad => \uart_unit|receiver|Decoder0~5_combout\,
	combout => \uart_unit|receiver|r_rx_byte[6]~4_combout\);

-- Location: FF_X34_Y47_N13
\uart_unit|receiver|r_rx_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(6));

-- Location: LCCOMB_X33_Y47_N24
\uart_unit|receiver|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~4_combout\ = (\uart_unit|receiver|r_bit_index\(2) & (\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|r_bit_index\(1) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(2),
	datab => \uart_unit|receiver|r_bit_index\(0),
	datac => \uart_unit|receiver|r_bit_index\(1),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~4_combout\);

-- Location: LCCOMB_X36_Y47_N18
\uart_unit|receiver|r_rx_byte[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[7]~3_combout\ = (\uart_unit|receiver|Decoder0~4_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~4_combout\ & ((\uart_unit|receiver|r_rx_byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(7),
	datad => \uart_unit|receiver|Decoder0~4_combout\,
	combout => \uart_unit|receiver|r_rx_byte[7]~3_combout\);

-- Location: FF_X36_Y47_N19
\uart_unit|receiver|r_rx_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_rx_byte[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_rx_byte\(7));

-- Location: M9K_X37_Y43_N0
\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/sram.ram0_fifo_1ff8f9ef.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "uart:uart_unit|fifo:fifo_rx|altsyncram:r_fifo_data_rtl_0|altsyncram_tcg1:auto_generated|ALTSYNCRAM",
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
	portawe => \uart_unit|fifo_rx|r_fifo_data~15_combout\,
	portbre => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	portadatain => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X38_Y43_N12
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector6~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\))) # (!\Selector6~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_get_fifo_data~q\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(15),
	datac => \Selector6~0_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X38_Y43_N8
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\r_sm.s_get_fifo_data~q\) # (\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_get_fifo_data~q\,
	datad => \r_sm.s_clear~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X38_Y43_N13
\r_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(3));

-- Location: LCCOMB_X36_Y43_N6
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

-- Location: FF_X36_Y43_N7
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

-- Location: LCCOMB_X39_Y43_N16
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

-- Location: FF_X39_Y43_N17
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

-- Location: LCCOMB_X39_Y43_N18
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(12) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(12),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datac => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X38_Y43_N16
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector8~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\))) # (!\Selector8~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_get_fifo_data~q\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(11),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\,
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X38_Y43_N17
\r_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector8~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(1));

-- Location: FF_X38_Y43_N9
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

-- Location: LCCOMB_X39_Y43_N8
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

-- Location: FF_X39_Y43_N9
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

-- Location: LCCOMB_X39_Y43_N30
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(14) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(14),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datac => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X38_Y43_N30
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector7~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\))) # (!\Selector7~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_get_fifo_data~q\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(13),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X38_Y43_N31
\r_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(2));

-- Location: LCCOMB_X39_Y43_N20
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

-- Location: FF_X39_Y43_N21
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

-- Location: LCCOMB_X39_Y43_N2
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(20) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(20),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datac => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X38_Y43_N2
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\ = \uart_unit|receiver|r_rx_byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_rx_byte\(5),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X38_Y43_N3
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(19));

-- Location: LCCOMB_X38_Y43_N22
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector4~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\))) # (!\Selector4~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(19),
	datac => \r_sm.s_get_fifo_data~q\,
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\,
	combout => \Selector4~1_combout\);

-- Location: FF_X38_Y43_N23
\r_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(5));

-- Location: LCCOMB_X38_Y43_N24
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\ = \uart_unit|receiver|r_rx_byte\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_rx_byte\(4),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X38_Y43_N25
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

-- Location: LCCOMB_X39_Y43_N0
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

-- Location: FF_X39_Y43_N1
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

-- Location: LCCOMB_X39_Y43_N10
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(18) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(18),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datac => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X38_Y43_N28
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector5~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\))) # (!\Selector5~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_get_fifo_data~q\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(17),
	datac => \Selector5~0_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\,
	combout => \Selector5~1_combout\);

-- Location: FF_X38_Y43_N29
\r_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(4));

-- Location: LCCOMB_X39_Y43_N24
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

-- Location: FF_X39_Y43_N25
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

-- Location: LCCOMB_X39_Y43_N22
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(24) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(24),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datac => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X36_Y43_N12
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[23]~feeder_combout\ = \uart_unit|receiver|r_rx_byte\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_rx_byte\(7),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X36_Y43_N13
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(23));

-- Location: LCCOMB_X38_Y43_N26
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector2~1_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\))) # (!\Selector2~1_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_get_fifo_data~q\,
	datab => \Selector2~1_combout\,
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(23),
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\,
	combout => \Selector2~2_combout\);

-- Location: FF_X38_Y43_N27
\r_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector2~2_combout\,
	clrn => \i_rst~input_o\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(7));

-- Location: LCCOMB_X39_Y43_N12
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

-- Location: FF_X39_Y43_N13
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

-- Location: LCCOMB_X39_Y43_N6
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(22) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(22),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datac => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X38_Y43_N14
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[21]~feeder_combout\ = \uart_unit|receiver|r_rx_byte\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_rx_byte\(6),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[21]~feeder_combout\);

-- Location: FF_X38_Y43_N15
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(21));

-- Location: LCCOMB_X38_Y43_N20
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector3~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\))) # (!\Selector3~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(21),
	datac => \r_sm.s_get_fifo_data~q\,
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\,
	combout => \Selector3~1_combout\);

-- Location: FF_X38_Y43_N21
\r_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(6));

-- Location: LCCOMB_X38_Y43_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (r_data(5) & (r_data(4) & (!r_data(7) & !r_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data(5),
	datab => r_data(4),
	datac => r_data(7),
	datad => r_data(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X38_Y43_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!r_data(3) & (!r_data(1) & (!r_data(2) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data(3),
	datab => r_data(1),
	datac => r_data(2),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X30_Y40_N14
\r_index[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_index[31]~1_combout\ = (\LessThan2~0_combout\ & (\Equal2~12_combout\ & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~0_combout\,
	datac => \Equal2~12_combout\,
	datad => \Equal0~1_combout\,
	combout => \r_index[31]~1_combout\);

-- Location: LCCOMB_X30_Y40_N2
\r_index[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_index[31]~2_combout\ = (\Equal2~14_combout\) # ((!\LessThan0~1_combout\ & \r_index[31]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datac => \r_index[31]~1_combout\,
	datad => \Equal2~14_combout\,
	combout => \r_index[31]~2_combout\);

-- Location: LCCOMB_X30_Y39_N0
\Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!r_index(30) & (!r_index(29) & !r_index(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_index(30),
	datac => r_index(29),
	datad => r_index(28),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X30_Y40_N12
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!r_index(27) & \LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_index(27),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y40_N20
\r_index[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_index[31]~0_combout\ = (\Equal0~1_combout\ & ((r_index(31)) # ((\Equal2~8_combout\ & \LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => r_index(31),
	datac => \Equal2~8_combout\,
	datad => \LessThan0~2_combout\,
	combout => \r_index[31]~0_combout\);

-- Location: LCCOMB_X30_Y40_N30
\r_index[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_index[31]~3_combout\ = (\i_rst~input_o\ & (\r_sm.s_process~q\ & ((\r_index[31]~2_combout\) # (\r_index[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst~input_o\,
	datab => \r_index[31]~2_combout\,
	datac => \r_sm.s_process~q\,
	datad => \r_index[31]~0_combout\,
	combout => \r_index[31]~3_combout\);

-- Location: LCCOMB_X31_Y40_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (r_index(5) & (!\Add1~9\)) # (!r_index(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!r_index(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X29_Y40_N4
\r_index[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_index[5]~5_combout\ = (\r_index[31]~3_combout\ & (\Add1~10_combout\ & ((!\Equal2~14_combout\)))) # (!\r_index[31]~3_combout\ & (((r_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_index[31]~3_combout\,
	datab => \Add1~10_combout\,
	datac => r_index(5),
	datad => \Equal2~14_combout\,
	combout => \r_index[5]~5_combout\);

-- Location: FF_X29_Y40_N5
\r_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_index[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(5));

-- Location: LCCOMB_X31_Y40_N12
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

-- Location: FF_X31_Y40_N13
\r_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(6));

-- Location: LCCOMB_X31_Y40_N14
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

-- Location: FF_X31_Y40_N15
\r_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(7));

-- Location: LCCOMB_X31_Y40_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (r_index(8) & (\Add1~15\ $ (GND))) # (!r_index(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((r_index(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X31_Y40_N17
\r_index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(8));

-- Location: LCCOMB_X31_Y40_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (r_index(9) & (!\Add1~17\)) # (!r_index(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!r_index(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X31_Y40_N19
\r_index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(9));

-- Location: LCCOMB_X31_Y40_N20
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

-- Location: FF_X31_Y40_N21
\r_index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(10));

-- Location: LCCOMB_X31_Y40_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (r_index(11) & (!\Add1~21\)) # (!r_index(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!r_index(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X31_Y40_N23
\r_index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(11));

-- Location: LCCOMB_X31_Y40_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (r_index(12) & (\Add1~23\ $ (GND))) # (!r_index(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((r_index(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X31_Y40_N25
\r_index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~24_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(12));

-- Location: LCCOMB_X31_Y40_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (r_index(13) & (!\Add1~25\)) # (!r_index(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!r_index(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X31_Y40_N27
\r_index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(13));

-- Location: LCCOMB_X31_Y40_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (r_index(14) & (\Add1~27\ $ (GND))) # (!r_index(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((r_index(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X31_Y40_N29
\r_index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(14));

-- Location: LCCOMB_X31_Y40_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (r_index(15) & (!\Add1~29\)) # (!r_index(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!r_index(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X31_Y40_N31
\r_index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(15));

-- Location: LCCOMB_X31_Y39_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (r_index(16) & (\Add1~31\ $ (GND))) # (!r_index(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((r_index(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X30_Y40_N13
\r_index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Add1~32_combout\,
	sload => VCC,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(16));

-- Location: LCCOMB_X31_Y39_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (r_index(17) & (!\Add1~33\)) # (!r_index(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!r_index(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X30_Y40_N19
\r_index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Add1~34_combout\,
	sload => VCC,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(17));

-- Location: LCCOMB_X31_Y39_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (r_index(18) & (\Add1~35\ $ (GND))) # (!r_index(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((r_index(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X30_Y40_N5
\r_index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Add1~36_combout\,
	sload => VCC,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(18));

-- Location: LCCOMB_X31_Y39_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (r_index(19) & (!\Add1~37\)) # (!r_index(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!r_index(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X31_Y39_N7
\r_index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(19));

-- Location: LCCOMB_X31_Y39_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (r_index(20) & (\Add1~39\ $ (GND))) # (!r_index(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((r_index(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X31_Y39_N9
\r_index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~40_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(20));

-- Location: LCCOMB_X31_Y39_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (r_index(21) & (!\Add1~41\)) # (!r_index(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!r_index(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X31_Y40_N11
\r_index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Add1~42_combout\,
	sload => VCC,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(21));

-- Location: LCCOMB_X31_Y39_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (r_index(22) & (\Add1~43\ $ (GND))) # (!r_index(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((r_index(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X30_Y40_N23
\r_index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Add1~44_combout\,
	sload => VCC,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(22));

-- Location: LCCOMB_X31_Y39_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (r_index(23) & (!\Add1~45\)) # (!r_index(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!r_index(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X31_Y39_N15
\r_index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~46_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(23));

-- Location: LCCOMB_X31_Y39_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (r_index(24) & (\Add1~47\ $ (GND))) # (!r_index(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((r_index(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X30_Y40_N1
\r_index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Add1~48_combout\,
	sload => VCC,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(24));

-- Location: LCCOMB_X31_Y39_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (r_index(25) & (!\Add1~49\)) # (!r_index(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!r_index(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X31_Y39_N19
\r_index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~50_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(25));

-- Location: LCCOMB_X31_Y39_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (r_index(26) & (\Add1~51\ $ (GND))) # (!r_index(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((r_index(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X31_Y39_N21
\r_index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~52_combout\,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(26));

-- Location: FF_X31_Y40_N5
\r_index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Add1~54_combout\,
	sload => VCC,
	ena => \r_index[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(27));

-- Location: LCCOMB_X32_Y40_N28
\Equal2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~11_combout\ = (!r_index(27) & !r_index(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_index(27),
	datad => r_index(6),
	combout => \Equal2~11_combout\);

-- Location: LCCOMB_X30_Y40_N8
\Equal2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~12_combout\ = (\Equal2~11_combout\ & (\Equal2~5_combout\ & (\Equal2~8_combout\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~11_combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal2~8_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~12_combout\);

-- Location: LCCOMB_X32_Y40_N14
\r_sm~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sm~9_combout\ = (\Equal2~12_combout\ & (\r_sm.s_process~q\ & (\Equal2~10_combout\ & \Equal2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~12_combout\,
	datab => \r_sm.s_process~q\,
	datac => \Equal2~10_combout\,
	datad => \Equal2~13_combout\,
	combout => \r_sm~9_combout\);

-- Location: FF_X32_Y40_N15
\r_sm.s_write_sram\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sm~9_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm.s_write_sram~q\);

-- Location: LCCOMB_X32_Y40_N24
\r_sm.s_clear~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sm.s_clear~feeder_combout\ = \r_sm.s_write_sram~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_write_sram~q\,
	combout => \r_sm.s_clear~feeder_combout\);

-- Location: FF_X32_Y40_N25
\r_sm.s_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sm.s_clear~feeder_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm.s_clear~q\);

-- Location: LCCOMB_X38_Y43_N10
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\r_sm.s_clear~q\) # ((!\r_sm.s_idle~q\ & !\uart_unit|fifo_rx|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_idle~q\,
	datab => \r_sm.s_clear~q\,
	datad => \uart_unit|fifo_rx|Equal3~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X33_Y40_N16
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\Selector1~0_combout\ & ((\Equal2~14_combout\) # (!\r_sm.s_process~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_process~q\,
	datac => \Selector1~0_combout\,
	datad => \Equal2~14_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X33_Y40_N17
\r_sm.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sm.s_idle~q\);

-- Location: LCCOMB_X42_Y43_N0
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\r_sm.s_idle~q\ & (!\r_sm.s_get_fifo_data~q\ & (\r_rd_rx~q\))) # (!\r_sm.s_idle~q\ & (((\uart_unit|fifo_rx|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_idle~q\,
	datab => \r_sm.s_get_fifo_data~q\,
	datac => \r_rd_rx~q\,
	datad => \uart_unit|fifo_rx|Equal3~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X42_Y43_N1
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

-- Location: LCCOMB_X42_Y43_N30
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

-- Location: FF_X42_Y43_N13
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
	ena => \uart_unit|fifo_rx|r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(3));

-- Location: LCCOMB_X42_Y43_N2
\uart_unit|fifo_rx|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Equal2~1_combout\ = (\uart_unit|fifo_rx|r_fifo_count\(3) & (\uart_unit|fifo_rx|r_fifo_count\(1) & \uart_unit|fifo_rx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(3),
	datac => \uart_unit|fifo_rx|r_fifo_count\(1),
	datad => \uart_unit|fifo_rx|Equal2~0_combout\,
	combout => \uart_unit|fifo_rx|Equal2~1_combout\);

-- Location: LCCOMB_X109_Y71_N6
\uart_unit|transmitter|r_clk_count[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[0]~13_combout\ = \uart_unit|transmitter|r_clk_count\(0) $ (VCC)
-- \uart_unit|transmitter|r_clk_count[0]~14\ = CARRY(\uart_unit|transmitter|r_clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(0),
	datad => VCC,
	combout => \uart_unit|transmitter|r_clk_count[0]~13_combout\,
	cout => \uart_unit|transmitter|r_clk_count[0]~14\);

-- Location: LCCOMB_X109_Y71_N12
\uart_unit|transmitter|r_clk_count[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[3]~19_combout\ = (\uart_unit|transmitter|r_clk_count\(3) & (!\uart_unit|transmitter|r_clk_count[2]~18\)) # (!\uart_unit|transmitter|r_clk_count\(3) & ((\uart_unit|transmitter|r_clk_count[2]~18\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[3]~20\ = CARRY((!\uart_unit|transmitter|r_clk_count[2]~18\) # (!\uart_unit|transmitter|r_clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(3),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[2]~18\,
	combout => \uart_unit|transmitter|r_clk_count[3]~19_combout\,
	cout => \uart_unit|transmitter|r_clk_count[3]~20\);

-- Location: LCCOMB_X109_Y71_N14
\uart_unit|transmitter|r_clk_count[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[4]~21_combout\ = (\uart_unit|transmitter|r_clk_count\(4) & (\uart_unit|transmitter|r_clk_count[3]~20\ $ (GND))) # (!\uart_unit|transmitter|r_clk_count\(4) & (!\uart_unit|transmitter|r_clk_count[3]~20\ & VCC))
-- \uart_unit|transmitter|r_clk_count[4]~22\ = CARRY((\uart_unit|transmitter|r_clk_count\(4) & !\uart_unit|transmitter|r_clk_count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(4),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[3]~20\,
	combout => \uart_unit|transmitter|r_clk_count[4]~21_combout\,
	cout => \uart_unit|transmitter|r_clk_count[4]~22\);

-- Location: FF_X109_Y71_N15
\uart_unit|transmitter|r_clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[4]~21_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[6]~39_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(4));

-- Location: LCCOMB_X109_Y71_N16
\uart_unit|transmitter|r_clk_count[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[5]~23_combout\ = (\uart_unit|transmitter|r_clk_count\(5) & (!\uart_unit|transmitter|r_clk_count[4]~22\)) # (!\uart_unit|transmitter|r_clk_count\(5) & ((\uart_unit|transmitter|r_clk_count[4]~22\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[5]~24\ = CARRY((!\uart_unit|transmitter|r_clk_count[4]~22\) # (!\uart_unit|transmitter|r_clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(5),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[4]~22\,
	combout => \uart_unit|transmitter|r_clk_count[5]~23_combout\,
	cout => \uart_unit|transmitter|r_clk_count[5]~24\);

-- Location: FF_X109_Y71_N17
\uart_unit|transmitter|r_clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[5]~23_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[6]~39_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(5));

-- Location: LCCOMB_X109_Y71_N18
\uart_unit|transmitter|r_clk_count[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[6]~25_combout\ = (\uart_unit|transmitter|r_clk_count\(6) & (\uart_unit|transmitter|r_clk_count[5]~24\ $ (GND))) # (!\uart_unit|transmitter|r_clk_count\(6) & (!\uart_unit|transmitter|r_clk_count[5]~24\ & VCC))
-- \uart_unit|transmitter|r_clk_count[6]~26\ = CARRY((\uart_unit|transmitter|r_clk_count\(6) & !\uart_unit|transmitter|r_clk_count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(6),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[5]~24\,
	combout => \uart_unit|transmitter|r_clk_count[6]~25_combout\,
	cout => \uart_unit|transmitter|r_clk_count[6]~26\);

-- Location: FF_X109_Y71_N19
\uart_unit|transmitter|r_clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[6]~25_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[6]~39_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(6));

-- Location: LCCOMB_X109_Y71_N20
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

-- Location: FF_X109_Y71_N21
\uart_unit|transmitter|r_clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[7]~27_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[6]~39_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(7));

-- Location: LCCOMB_X109_Y71_N22
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

-- Location: FF_X109_Y71_N23
\uart_unit|transmitter|r_clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[8]~29_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[6]~39_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(8));

-- Location: LCCOMB_X109_Y71_N24
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

-- Location: FF_X109_Y71_N25
\uart_unit|transmitter|r_clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[9]~31_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[6]~39_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(9));

-- Location: LCCOMB_X109_Y71_N26
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

-- Location: FF_X109_Y71_N27
\uart_unit|transmitter|r_clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[10]~33_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[6]~39_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(10));

-- Location: LCCOMB_X109_Y71_N28
\uart_unit|transmitter|r_clk_count[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[11]~35_combout\ = (\uart_unit|transmitter|r_clk_count\(11) & (!\uart_unit|transmitter|r_clk_count[10]~34\)) # (!\uart_unit|transmitter|r_clk_count\(11) & ((\uart_unit|transmitter|r_clk_count[10]~34\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[11]~36\ = CARRY((!\uart_unit|transmitter|r_clk_count[10]~34\) # (!\uart_unit|transmitter|r_clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(11),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[10]~34\,
	combout => \uart_unit|transmitter|r_clk_count[11]~35_combout\,
	cout => \uart_unit|transmitter|r_clk_count[11]~36\);

-- Location: FF_X109_Y71_N29
\uart_unit|transmitter|r_clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[11]~35_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[6]~39_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(11));

-- Location: LCCOMB_X109_Y71_N2
\uart_unit|transmitter|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|LessThan1~1_combout\ = (!\uart_unit|transmitter|r_clk_count\(7) & (!\uart_unit|transmitter|r_clk_count\(11) & (!\uart_unit|transmitter|r_clk_count\(8) & !\uart_unit|transmitter|r_clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(7),
	datab => \uart_unit|transmitter|r_clk_count\(11),
	datac => \uart_unit|transmitter|r_clk_count\(8),
	datad => \uart_unit|transmitter|r_clk_count\(9),
	combout => \uart_unit|transmitter|LessThan1~1_combout\);

-- Location: LCCOMB_X109_Y71_N4
\uart_unit|transmitter|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|LessThan1~4_combout\ = (\uart_unit|transmitter|r_clk_count\(10) & (((\uart_unit|transmitter|LessThan1~1_combout\ & \uart_unit|transmitter|LessThan1~0_combout\)))) # (!\uart_unit|transmitter|r_clk_count\(10) & 
-- (((\uart_unit|transmitter|LessThan1~1_combout\ & \uart_unit|transmitter|LessThan1~0_combout\)) # (!\uart_unit|transmitter|r_clk_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(10),
	datab => \uart_unit|transmitter|r_clk_count\(11),
	datac => \uart_unit|transmitter|LessThan1~1_combout\,
	datad => \uart_unit|transmitter|LessThan1~0_combout\,
	combout => \uart_unit|transmitter|LessThan1~4_combout\);

-- Location: LCCOMB_X109_Y71_N30
\uart_unit|transmitter|r_clk_count[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[12]~37_combout\ = \uart_unit|transmitter|r_clk_count[11]~36\ $ (!\uart_unit|transmitter|r_clk_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|transmitter|r_clk_count\(12),
	cin => \uart_unit|transmitter|r_clk_count[11]~36\,
	combout => \uart_unit|transmitter|r_clk_count[12]~37_combout\);

-- Location: FF_X109_Y71_N31
\uart_unit|transmitter|r_clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[12]~37_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[6]~39_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(12));

-- Location: LCCOMB_X110_Y71_N28
\uart_unit|transmitter|r_sm_main~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_sm_main~7_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\ & (!\uart_unit|transmitter|LessThan1~4_combout\ & \uart_unit|transmitter|r_clk_count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	datab => \uart_unit|transmitter|LessThan1~4_combout\,
	datac => \uart_unit|transmitter|r_clk_count\(12),
	combout => \uart_unit|transmitter|r_sm_main~7_combout\);

-- Location: FF_X110_Y71_N29
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

-- Location: LCCOMB_X111_Y71_N16
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

-- Location: LCCOMB_X110_Y71_N22
\uart_unit|transmitter|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector20~0_combout\ = (\uart_unit|fifo_tx|Equal3~0_combout\ & (((\uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\ & \uart_unit|transmitter|LessThan1~3_combout\)))) # (!\uart_unit|fifo_tx|Equal3~0_combout\ & 
-- (((\uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\ & \uart_unit|transmitter|LessThan1~3_combout\)) # (!\uart_unit|transmitter|r_sm_main.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Equal3~0_combout\,
	datab => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datac => \uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\,
	datad => \uart_unit|transmitter|LessThan1~3_combout\,
	combout => \uart_unit|transmitter|Selector20~0_combout\);

-- Location: FF_X110_Y71_N23
\uart_unit|transmitter|r_sm_main.s_tx_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\);

-- Location: LCCOMB_X110_Y71_N30
\uart_unit|transmitter|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector18~0_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & (\uart_unit|transmitter|r_clk_count\(12))) # (!\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & ((\uart_unit|transmitter|r_sm_main.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(12),
	datac => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datad => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	combout => \uart_unit|transmitter|Selector18~0_combout\);

-- Location: LCCOMB_X110_Y71_N18
\uart_unit|transmitter|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector18~1_combout\ = (\uart_unit|transmitter|Selector18~0_combout\ & (\uart_unit|transmitter|r_bit_index\(0) $ (((!\uart_unit|transmitter|LessThan1~4_combout\ & \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\))))) # 
-- (!\uart_unit|transmitter|Selector18~0_combout\ & (((\uart_unit|transmitter|r_bit_index\(0) & \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector18~0_combout\,
	datab => \uart_unit|transmitter|LessThan1~4_combout\,
	datac => \uart_unit|transmitter|r_bit_index\(0),
	datad => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	combout => \uart_unit|transmitter|Selector18~1_combout\);

-- Location: FF_X110_Y71_N19
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

-- Location: LCCOMB_X110_Y71_N12
\uart_unit|transmitter|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector17~0_combout\ = (\uart_unit|transmitter|LessThan1~3_combout\) # (!\uart_unit|transmitter|r_bit_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_bit_index\(0),
	datad => \uart_unit|transmitter|LessThan1~3_combout\,
	combout => \uart_unit|transmitter|Selector17~0_combout\);

-- Location: LCCOMB_X110_Y71_N4
\uart_unit|transmitter|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector17~1_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & ((\uart_unit|transmitter|r_bit_index\(1) $ (!\uart_unit|transmitter|Selector17~0_combout\)))) # (!\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & 
-- (\uart_unit|transmitter|r_sm_main.s_idle~q\ & (\uart_unit|transmitter|r_bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datab => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \uart_unit|transmitter|r_bit_index\(1),
	datad => \uart_unit|transmitter|Selector17~0_combout\,
	combout => \uart_unit|transmitter|Selector17~1_combout\);

-- Location: FF_X110_Y71_N5
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

-- Location: LCCOMB_X110_Y71_N2
\uart_unit|transmitter|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~0_combout\ = (\uart_unit|transmitter|r_bit_index\(1) & (\uart_unit|transmitter|r_bit_index\(0) & (!\uart_unit|transmitter|LessThan1~4_combout\ & \uart_unit|transmitter|r_clk_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_bit_index\(1),
	datab => \uart_unit|transmitter|r_bit_index\(0),
	datac => \uart_unit|transmitter|LessThan1~4_combout\,
	datad => \uart_unit|transmitter|r_clk_count\(12),
	combout => \uart_unit|transmitter|Selector16~0_combout\);

-- Location: LCCOMB_X110_Y71_N10
\uart_unit|transmitter|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~1_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & ((\uart_unit|transmitter|r_bit_index\(2) $ (\uart_unit|transmitter|Selector16~0_combout\)))) # (!\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & 
-- (\uart_unit|transmitter|r_sm_main.s_idle~q\ & (\uart_unit|transmitter|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datab => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \uart_unit|transmitter|r_bit_index\(2),
	datad => \uart_unit|transmitter|Selector16~0_combout\,
	combout => \uart_unit|transmitter|Selector16~1_combout\);

-- Location: FF_X110_Y71_N11
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

-- Location: LCCOMB_X110_Y71_N16
\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\ = (\uart_unit|transmitter|r_bit_index\(2) & (\uart_unit|transmitter|r_bit_index\(0) & (\uart_unit|transmitter|r_bit_index\(1) & !\uart_unit|transmitter|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_bit_index\(2),
	datab => \uart_unit|transmitter|r_bit_index\(0),
	datac => \uart_unit|transmitter|r_bit_index\(1),
	datad => \uart_unit|transmitter|LessThan1~3_combout\,
	combout => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\);

-- Location: LCCOMB_X110_Y71_N0
\uart_unit|transmitter|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector21~0_combout\ = (\uart_unit|transmitter|LessThan1~3_combout\ & (((\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & !\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\)))) # 
-- (!\uart_unit|transmitter|LessThan1~3_combout\ & ((\uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\) # ((\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & !\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|LessThan1~3_combout\,
	datab => \uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\,
	datac => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datad => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\,
	combout => \uart_unit|transmitter|Selector21~0_combout\);

-- Location: FF_X110_Y71_N1
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

-- Location: LCCOMB_X110_Y71_N24
\uart_unit|transmitter|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector2~0_combout\ = (\uart_unit|transmitter|r_tx_done~q\ & ((\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\) # ((\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\) # (\uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	datab => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \uart_unit|transmitter|r_tx_done~q\,
	datad => \uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\,
	combout => \uart_unit|transmitter|Selector2~0_combout\);

-- Location: LCCOMB_X110_Y71_N14
\uart_unit|transmitter|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector2~1_combout\ = (\uart_unit|transmitter|Selector2~0_combout\) # ((\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\ & (\uart_unit|transmitter|r_clk_count\(12) & !\uart_unit|transmitter|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	datab => \uart_unit|transmitter|r_clk_count\(12),
	datac => \uart_unit|transmitter|LessThan1~4_combout\,
	datad => \uart_unit|transmitter|Selector2~0_combout\,
	combout => \uart_unit|transmitter|Selector2~1_combout\);

-- Location: FF_X110_Y71_N15
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

-- Location: LCCOMB_X111_Y71_N2
\uart_unit|fifo_tx|r_fifo_count[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[1]~13_combout\ = (\uart_unit|transmitter|r_tx_done~q\) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_sync~input_o\,
	datad => \uart_unit|transmitter|r_tx_done~q\,
	combout => \uart_unit|fifo_tx|r_fifo_count[1]~13_combout\);

-- Location: FF_X111_Y71_N17
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
	ena => \uart_unit|fifo_tx|r_fifo_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_count\(0));

-- Location: LCCOMB_X111_Y71_N18
\uart_unit|fifo_tx|r_fifo_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[1]~7_combout\ = (\uart_unit|fifo_tx|r_fifo_count\(1) & (\uart_unit|fifo_tx|r_fifo_count[0]~6\ & VCC)) # (!\uart_unit|fifo_tx|r_fifo_count\(1) & (!\uart_unit|fifo_tx|r_fifo_count[0]~6\))
-- \uart_unit|fifo_tx|r_fifo_count[1]~8\ = CARRY((!\uart_unit|fifo_tx|r_fifo_count\(1) & !\uart_unit|fifo_tx|r_fifo_count[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|r_fifo_count\(1),
	datad => VCC,
	cin => \uart_unit|fifo_tx|r_fifo_count[0]~6\,
	combout => \uart_unit|fifo_tx|r_fifo_count[1]~7_combout\,
	cout => \uart_unit|fifo_tx|r_fifo_count[1]~8\);

-- Location: FF_X111_Y71_N19
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
	ena => \uart_unit|fifo_tx|r_fifo_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_count\(1));

-- Location: LCCOMB_X111_Y71_N20
\uart_unit|fifo_tx|r_fifo_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[2]~9_combout\ = (\uart_unit|fifo_tx|r_fifo_count\(2) & ((GND) # (!\uart_unit|fifo_tx|r_fifo_count[1]~8\))) # (!\uart_unit|fifo_tx|r_fifo_count\(2) & (\uart_unit|fifo_tx|r_fifo_count[1]~8\ $ (GND)))
-- \uart_unit|fifo_tx|r_fifo_count[2]~10\ = CARRY((\uart_unit|fifo_tx|r_fifo_count\(2)) # (!\uart_unit|fifo_tx|r_fifo_count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|r_fifo_count\(2),
	datad => VCC,
	cin => \uart_unit|fifo_tx|r_fifo_count[1]~8\,
	combout => \uart_unit|fifo_tx|r_fifo_count[2]~9_combout\,
	cout => \uart_unit|fifo_tx|r_fifo_count[2]~10\);

-- Location: FF_X111_Y71_N21
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
	ena => \uart_unit|fifo_tx|r_fifo_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_count\(2));

-- Location: LCCOMB_X111_Y71_N22
\uart_unit|fifo_tx|r_fifo_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[3]~11_combout\ = (\uart_unit|fifo_tx|r_fifo_count\(3) & (\uart_unit|fifo_tx|r_fifo_count[2]~10\ & VCC)) # (!\uart_unit|fifo_tx|r_fifo_count\(3) & (!\uart_unit|fifo_tx|r_fifo_count[2]~10\))
-- \uart_unit|fifo_tx|r_fifo_count[3]~12\ = CARRY((!\uart_unit|fifo_tx|r_fifo_count\(3) & !\uart_unit|fifo_tx|r_fifo_count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_count\(3),
	datad => VCC,
	cin => \uart_unit|fifo_tx|r_fifo_count[2]~10\,
	combout => \uart_unit|fifo_tx|r_fifo_count[3]~11_combout\,
	cout => \uart_unit|fifo_tx|r_fifo_count[3]~12\);

-- Location: FF_X111_Y71_N23
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
	ena => \uart_unit|fifo_tx|r_fifo_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_count\(3));

-- Location: LCCOMB_X111_Y71_N24
\uart_unit|fifo_tx|r_fifo_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[4]~14_combout\ = \uart_unit|fifo_tx|r_fifo_count[3]~12\ $ (\uart_unit|fifo_tx|r_fifo_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_tx|r_fifo_count\(4),
	cin => \uart_unit|fifo_tx|r_fifo_count[3]~12\,
	combout => \uart_unit|fifo_tx|r_fifo_count[4]~14_combout\);

-- Location: FF_X111_Y71_N25
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
	ena => \uart_unit|fifo_tx|r_fifo_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_count\(4));

-- Location: LCCOMB_X111_Y71_N28
\uart_unit|fifo_tx|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Equal2~0_combout\ = (!\uart_unit|fifo_tx|r_fifo_count\(2) & (!\uart_unit|fifo_tx|r_fifo_count\(4) & !\uart_unit|fifo_tx|r_fifo_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|r_fifo_count\(2),
	datac => \uart_unit|fifo_tx|r_fifo_count\(4),
	datad => \uart_unit|fifo_tx|r_fifo_count\(0),
	combout => \uart_unit|fifo_tx|Equal2~0_combout\);

-- Location: LCCOMB_X111_Y71_N8
\uart_unit|fifo_tx|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Equal3~0_combout\ = (!\uart_unit|fifo_tx|r_fifo_count\(1) & (!\uart_unit|fifo_tx|r_fifo_count\(3) & \uart_unit|fifo_tx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|r_fifo_count\(1),
	datac => \uart_unit|fifo_tx|r_fifo_count\(3),
	datad => \uart_unit|fifo_tx|Equal2~0_combout\,
	combout => \uart_unit|fifo_tx|Equal3~0_combout\);

-- Location: LCCOMB_X108_Y71_N0
\uart_unit|transmitter|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector19~0_combout\ = (!\uart_unit|transmitter|r_sm_main.s_cleanup~q\ & ((\uart_unit|transmitter|r_sm_main.s_idle~q\) # (!\uart_unit|fifo_tx|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_cleanup~q\,
	datac => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datad => \uart_unit|fifo_tx|Equal3~0_combout\,
	combout => \uart_unit|transmitter|Selector19~0_combout\);

-- Location: FF_X108_Y71_N1
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

-- Location: LCCOMB_X108_Y71_N6
\uart_unit|transmitter|r_clk_count[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[6]~39_combout\ = ((\uart_unit|transmitter|r_clk_count\(12) & !\uart_unit|transmitter|LessThan1~4_combout\)) # (!\uart_unit|transmitter|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datac => \uart_unit|transmitter|r_clk_count\(12),
	datad => \uart_unit|transmitter|LessThan1~4_combout\,
	combout => \uart_unit|transmitter|r_clk_count[6]~39_combout\);

-- Location: FF_X109_Y71_N7
\uart_unit|transmitter|r_clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[0]~13_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[6]~39_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(0));

-- Location: LCCOMB_X109_Y71_N8
\uart_unit|transmitter|r_clk_count[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[1]~15_combout\ = (\uart_unit|transmitter|r_clk_count\(1) & (!\uart_unit|transmitter|r_clk_count[0]~14\)) # (!\uart_unit|transmitter|r_clk_count\(1) & ((\uart_unit|transmitter|r_clk_count[0]~14\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[1]~16\ = CARRY((!\uart_unit|transmitter|r_clk_count[0]~14\) # (!\uart_unit|transmitter|r_clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(1),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[0]~14\,
	combout => \uart_unit|transmitter|r_clk_count[1]~15_combout\,
	cout => \uart_unit|transmitter|r_clk_count[1]~16\);

-- Location: FF_X109_Y71_N9
\uart_unit|transmitter|r_clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[1]~15_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[6]~39_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(1));

-- Location: LCCOMB_X109_Y71_N10
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

-- Location: FF_X109_Y71_N11
\uart_unit|transmitter|r_clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[2]~17_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[6]~39_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(2));

-- Location: FF_X109_Y71_N13
\uart_unit|transmitter|r_clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[3]~19_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[6]~39_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(3));

-- Location: LCCOMB_X109_Y71_N0
\uart_unit|transmitter|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|LessThan1~0_combout\ = ((!\uart_unit|transmitter|r_clk_count\(5) & ((!\uart_unit|transmitter|r_clk_count\(4)) # (!\uart_unit|transmitter|r_clk_count\(3))))) # (!\uart_unit|transmitter|r_clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(3),
	datab => \uart_unit|transmitter|r_clk_count\(5),
	datac => \uart_unit|transmitter|r_clk_count\(4),
	datad => \uart_unit|transmitter|r_clk_count\(6),
	combout => \uart_unit|transmitter|LessThan1~0_combout\);

-- Location: LCCOMB_X110_Y71_N8
\uart_unit|transmitter|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|LessThan1~2_combout\ = (!\uart_unit|transmitter|r_clk_count\(10) & !\uart_unit|transmitter|r_clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|transmitter|r_clk_count\(10),
	datad => \uart_unit|transmitter|r_clk_count\(11),
	combout => \uart_unit|transmitter|LessThan1~2_combout\);

-- Location: LCCOMB_X110_Y71_N6
\uart_unit|transmitter|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|LessThan1~3_combout\ = ((\uart_unit|transmitter|LessThan1~2_combout\) # ((\uart_unit|transmitter|LessThan1~0_combout\ & \uart_unit|transmitter|LessThan1~1_combout\))) # (!\uart_unit|transmitter|r_clk_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|LessThan1~0_combout\,
	datab => \uart_unit|transmitter|r_clk_count\(12),
	datac => \uart_unit|transmitter|LessThan1~2_combout\,
	datad => \uart_unit|transmitter|LessThan1~1_combout\,
	combout => \uart_unit|transmitter|LessThan1~3_combout\);

-- Location: LCCOMB_X110_Y71_N26
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

-- Location: FF_X110_Y71_N27
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

-- Location: LCCOMB_X110_Y71_N20
\uart_unit|transmitter|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector1~0_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\) # (((\uart_unit|transmitter|o_tx_serial~q\ & \uart_unit|transmitter|r_sm_main.s_cleanup~q\)) # (!\uart_unit|transmitter|r_sm_main.s_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	datab => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datac => \uart_unit|transmitter|o_tx_serial~q\,
	datad => \uart_unit|transmitter|r_sm_main.s_cleanup~q\,
	combout => \uart_unit|transmitter|Selector1~0_combout\);

-- Location: FF_X110_Y71_N21
\uart_unit|transmitter|o_tx_serial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|o_tx_serial~q\);

-- Location: LCCOMB_X111_Y71_N30
\uart_unit|fifo_tx|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Equal2~1_combout\ = (\uart_unit|fifo_tx|r_fifo_count\(1) & (\uart_unit|fifo_tx|r_fifo_count\(3) & \uart_unit|fifo_tx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|r_fifo_count\(1),
	datac => \uart_unit|fifo_tx|r_fifo_count\(3),
	datad => \uart_unit|fifo_tx|Equal2~0_combout\,
	combout => \uart_unit|fifo_tx|Equal2~1_combout\);

-- Location: FF_X38_Y43_N11
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_rx_byte\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(9));

-- Location: LCCOMB_X39_Y43_N28
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

-- Location: FF_X39_Y43_N29
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

-- Location: LCCOMB_X39_Y43_N26
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(10) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(10),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datac => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X38_Y43_N0
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector9~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\Selector9~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(9),
	datab => \Selector9~0_combout\,
	datac => \r_sm.s_get_fifo_data~q\,
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Selector9~1_combout\);

-- Location: FF_X38_Y43_N1
\r_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector9~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(0));

-- Location: LCCOMB_X38_Y43_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (r_data(0)) # (!\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_data(0),
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X29_Y39_N10
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!r_index(0) & !r_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_index(0),
	datad => r_index(1),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X29_Y41_N4
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!r_index(3) & !r_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_index(3),
	datad => r_index(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X30_Y38_N10
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\Decoder0~0_combout\ & (!r_index(4) & (\Equal2~0_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => r_index(4),
	datac => \Equal2~0_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X30_Y38_N0
\r_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[0]~0_combout\ = (\Decoder0~1_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~1_combout\ & ((r_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(0),
	datad => \Decoder0~1_combout\,
	combout => \r_addr[0]~0_combout\);

-- Location: LCCOMB_X30_Y38_N8
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (r_addr(0) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_addr(0),
	datad => \r_sm.s_clear~q\,
	combout => \Selector29~0_combout\);

-- Location: FF_X30_Y38_N1
\r_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[0]~0_combout\,
	asdata => \Selector29~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(0));

-- Location: LCCOMB_X32_Y40_N18
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (r_index(0) & !r_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_index(0),
	datad => r_index(1),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X27_Y40_N16
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\Decoder0~2_combout\ & (!r_index(4) & (\Equal2~0_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => r_index(4),
	datac => \Equal2~0_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X27_Y40_N12
\r_addr[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[1]~1_combout\ = (\Decoder0~3_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~3_combout\ & ((r_addr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(1),
	datad => \Decoder0~3_combout\,
	combout => \r_addr[1]~1_combout\);

-- Location: LCCOMB_X27_Y40_N22
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_clear~q\,
	datad => r_addr(1),
	combout => \Selector28~0_combout\);

-- Location: FF_X27_Y40_N13
\r_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[1]~1_combout\,
	asdata => \Selector28~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(1));

-- Location: LCCOMB_X29_Y39_N20
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!r_index(0) & r_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_index(0),
	datad => r_index(1),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X30_Y38_N18
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (\Decoder0~4_combout\ & (!r_index(4) & (\Equal2~0_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~4_combout\,
	datab => r_index(4),
	datac => \Equal2~0_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X30_Y38_N26
\r_addr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[2]~2_combout\ = (\Decoder0~5_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~5_combout\ & ((r_addr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(2),
	datad => \Decoder0~5_combout\,
	combout => \r_addr[2]~2_combout\);

-- Location: LCCOMB_X30_Y38_N28
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (r_addr(2) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_addr(2),
	datad => \r_sm.s_clear~q\,
	combout => \Selector27~0_combout\);

-- Location: FF_X30_Y38_N27
\r_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[2]~2_combout\,
	asdata => \Selector27~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(2));

-- Location: LCCOMB_X29_Y39_N30
\Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (r_index(0) & r_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_index(0),
	datad => r_index(1),
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X29_Y39_N12
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (\Equal2~0_combout\ & (!r_index(4) & (\Equal2~9_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => r_index(4),
	datac => \Equal2~9_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X29_Y39_N0
\r_addr[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[3]~3_combout\ = (\Decoder0~6_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~6_combout\ & ((r_addr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(3),
	datad => \Decoder0~6_combout\,
	combout => \r_addr[3]~3_combout\);

-- Location: LCCOMB_X29_Y39_N26
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (r_addr(3) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_addr(3),
	datad => \r_sm.s_clear~q\,
	combout => \Selector26~0_combout\);

-- Location: FF_X29_Y39_N1
\r_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[3]~3_combout\,
	asdata => \Selector26~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(3));

-- Location: LCCOMB_X30_Y41_N28
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!r_index(3) & r_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_index(3),
	datad => r_index(2),
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X28_Y40_N6
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!r_index(4) & (\Decoder0~0_combout\ & (\Decoder0~7_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(4),
	datab => \Decoder0~0_combout\,
	datac => \Decoder0~7_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X28_Y40_N12
\r_addr[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[4]~4_combout\ = (\Decoder0~8_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~8_combout\ & ((r_addr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_addr(4),
	datad => \Decoder0~8_combout\,
	combout => \r_addr[4]~4_combout\);

-- Location: LCCOMB_X28_Y40_N8
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_clear~q\,
	datad => r_addr(4),
	combout => \Selector25~0_combout\);

-- Location: FF_X28_Y40_N13
\r_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[4]~4_combout\,
	asdata => \Selector25~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(4));

-- Location: LCCOMB_X28_Y40_N18
\Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (\Decoder0~7_combout\ & (!r_index(4) & (\Decoder0~2_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~7_combout\,
	datab => r_index(4),
	datac => \Decoder0~2_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X28_Y40_N10
\r_addr[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[5]~5_combout\ = (\Decoder0~9_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~9_combout\ & ((r_addr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_addr(5),
	datad => \Decoder0~9_combout\,
	combout => \r_addr[5]~5_combout\);

-- Location: LCCOMB_X28_Y40_N4
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_clear~q\,
	datad => r_addr(5),
	combout => \Selector24~0_combout\);

-- Location: FF_X28_Y40_N11
\r_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[5]~5_combout\,
	asdata => \Selector24~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(5));

-- Location: LCCOMB_X30_Y38_N30
\Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (\Decoder0~4_combout\ & (!r_index(4) & (\Decoder0~7_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~4_combout\,
	datab => r_index(4),
	datac => \Decoder0~7_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X30_Y38_N16
\r_addr[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[6]~6_combout\ = (\Decoder0~10_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~10_combout\ & ((r_addr(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(6),
	datad => \Decoder0~10_combout\,
	combout => \r_addr[6]~6_combout\);

-- Location: LCCOMB_X30_Y38_N20
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (r_addr(6) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_addr(6),
	datad => \r_sm.s_clear~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X30_Y38_N17
\r_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[6]~6_combout\,
	asdata => \Selector23~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(6));

-- Location: LCCOMB_X29_Y39_N28
\Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (\Decoder0~7_combout\ & (!r_index(4) & (\Equal2~9_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~7_combout\,
	datab => r_index(4),
	datac => \Equal2~9_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X29_Y39_N6
\r_addr[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[7]~7_combout\ = (\Decoder0~11_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~11_combout\ & ((r_addr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(7),
	datad => \Decoder0~11_combout\,
	combout => \r_addr[7]~7_combout\);

-- Location: LCCOMB_X29_Y39_N22
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (r_addr(7) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(7),
	datad => \r_sm.s_clear~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X29_Y39_N7
\r_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[7]~7_combout\,
	asdata => \Selector22~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(7));

-- Location: LCCOMB_X28_Y40_N2
\Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (r_index(3) & !r_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_index(3),
	datad => r_index(2),
	combout => \Decoder0~12_combout\);

-- Location: LCCOMB_X28_Y40_N16
\Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (!r_index(4) & (\Decoder0~12_combout\ & (\Decoder0~0_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(4),
	datab => \Decoder0~12_combout\,
	datac => \Decoder0~0_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~13_combout\);

-- Location: LCCOMB_X28_Y40_N28
\r_addr[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[8]~8_combout\ = (\Decoder0~13_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~13_combout\ & ((r_addr(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_addr(8),
	datad => \Decoder0~13_combout\,
	combout => \r_addr[8]~8_combout\);

-- Location: LCCOMB_X28_Y40_N22
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_clear~q\,
	datad => r_addr(8),
	combout => \Selector21~0_combout\);

-- Location: FF_X28_Y40_N29
\r_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[8]~8_combout\,
	asdata => \Selector21~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(8));

-- Location: LCCOMB_X28_Y40_N20
\Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (!r_index(4) & (\Decoder0~12_combout\ & (\Decoder0~2_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(4),
	datab => \Decoder0~12_combout\,
	datac => \Decoder0~2_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~14_combout\);

-- Location: LCCOMB_X28_Y40_N26
\r_addr[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[9]~9_combout\ = (\Decoder0~14_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~14_combout\ & ((r_addr(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_addr(9),
	datad => \Decoder0~14_combout\,
	combout => \r_addr[9]~9_combout\);

-- Location: LCCOMB_X28_Y40_N30
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_clear~q\,
	datac => r_addr(9),
	combout => \Selector20~0_combout\);

-- Location: FF_X28_Y40_N27
\r_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[9]~9_combout\,
	asdata => \Selector20~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(9));

-- Location: LCCOMB_X29_Y38_N18
\Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (!r_index(4) & (\Decoder0~12_combout\ & (\r_index[31]~0_combout\ & \Decoder0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(4),
	datab => \Decoder0~12_combout\,
	datac => \r_index[31]~0_combout\,
	datad => \Decoder0~4_combout\,
	combout => \Decoder0~15_combout\);

-- Location: LCCOMB_X29_Y38_N16
\r_addr[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[10]~10_combout\ = (\Decoder0~15_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~15_combout\ & ((r_addr(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(10),
	datad => \Decoder0~15_combout\,
	combout => \r_addr[10]~10_combout\);

-- Location: LCCOMB_X29_Y38_N4
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_clear~q\,
	datad => r_addr(10),
	combout => \Selector19~0_combout\);

-- Location: FF_X29_Y38_N17
\r_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[10]~10_combout\,
	asdata => \Selector19~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(10));

-- Location: LCCOMB_X29_Y38_N26
\Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~16_combout\ = (\Equal2~9_combout\ & (\Decoder0~12_combout\ & (\r_index[31]~0_combout\ & !r_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datab => \Decoder0~12_combout\,
	datac => \r_index[31]~0_combout\,
	datad => r_index(4),
	combout => \Decoder0~16_combout\);

-- Location: LCCOMB_X29_Y38_N30
\r_addr[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[11]~11_combout\ = (\Decoder0~16_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~16_combout\ & ((r_addr(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(11),
	datad => \Decoder0~16_combout\,
	combout => \r_addr[11]~11_combout\);

-- Location: LCCOMB_X29_Y38_N8
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (r_addr(11) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(11),
	datac => \r_sm.s_clear~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X29_Y38_N31
\r_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[11]~11_combout\,
	asdata => \Selector18~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(11));

-- Location: LCCOMB_X30_Y41_N30
\Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~17_combout\ = (r_index(3) & r_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_index(3),
	datad => r_index(2),
	combout => \Decoder0~17_combout\);

-- Location: LCCOMB_X29_Y38_N2
\Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~18_combout\ = (\Decoder0~17_combout\ & (\Decoder0~0_combout\ & (\r_index[31]~0_combout\ & !r_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~17_combout\,
	datab => \Decoder0~0_combout\,
	datac => \r_index[31]~0_combout\,
	datad => r_index(4),
	combout => \Decoder0~18_combout\);

-- Location: LCCOMB_X29_Y38_N24
\r_addr[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[12]~12_combout\ = (\Decoder0~18_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~18_combout\ & ((r_addr(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(12),
	datad => \Decoder0~18_combout\,
	combout => \r_addr[12]~12_combout\);

-- Location: LCCOMB_X29_Y38_N20
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_clear~q\,
	datad => r_addr(12),
	combout => \Selector17~0_combout\);

-- Location: FF_X29_Y38_N25
\r_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[12]~12_combout\,
	asdata => \Selector17~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(12));

-- Location: LCCOMB_X27_Y40_N28
\Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~19_combout\ = (\Decoder0~2_combout\ & (!r_index(4) & (\Decoder0~17_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => r_index(4),
	datac => \Decoder0~17_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~19_combout\);

-- Location: LCCOMB_X27_Y40_N30
\r_addr[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[13]~13_combout\ = (\Decoder0~19_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~19_combout\ & ((r_addr(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(13),
	datad => \Decoder0~19_combout\,
	combout => \r_addr[13]~13_combout\);

-- Location: LCCOMB_X26_Y40_N16
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (r_addr(13) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_addr(13),
	datad => \r_sm.s_clear~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X27_Y40_N31
\r_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[13]~13_combout\,
	asdata => \Selector16~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(13));

-- Location: LCCOMB_X29_Y38_N10
\Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~20_combout\ = (\Decoder0~17_combout\ & (\Decoder0~4_combout\ & (\r_index[31]~0_combout\ & !r_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~17_combout\,
	datab => \Decoder0~4_combout\,
	datac => \r_index[31]~0_combout\,
	datad => r_index(4),
	combout => \Decoder0~20_combout\);

-- Location: LCCOMB_X29_Y38_N22
\r_addr[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[14]~14_combout\ = (\Decoder0~20_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~20_combout\ & ((r_addr(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(14),
	datad => \Decoder0~20_combout\,
	combout => \r_addr[14]~14_combout\);

-- Location: LCCOMB_X29_Y38_N12
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (r_addr(14) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(14),
	datac => \r_sm.s_clear~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X29_Y38_N23
\r_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[14]~14_combout\,
	asdata => \Selector15~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(14));

-- Location: LCCOMB_X29_Y38_N6
\Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~21_combout\ = (\Decoder0~17_combout\ & (\Equal2~9_combout\ & (\r_index[31]~0_combout\ & !r_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~17_combout\,
	datab => \Equal2~9_combout\,
	datac => \r_index[31]~0_combout\,
	datad => r_index(4),
	combout => \Decoder0~21_combout\);

-- Location: LCCOMB_X29_Y38_N0
\r_addr[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[15]~15_combout\ = (\Decoder0~21_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~21_combout\ & ((r_addr(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(15),
	datad => \Decoder0~21_combout\,
	combout => \r_addr[15]~15_combout\);

-- Location: LCCOMB_X29_Y38_N28
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_clear~q\,
	datad => r_addr(15),
	combout => \Selector14~0_combout\);

-- Location: FF_X29_Y38_N1
\r_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[15]~15_combout\,
	asdata => \Selector14~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(15));

-- Location: LCCOMB_X30_Y38_N6
\Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~22_combout\ = (\Decoder0~0_combout\ & (r_index(4) & (\Equal2~0_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => r_index(4),
	datac => \Equal2~0_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~22_combout\);

-- Location: LCCOMB_X30_Y38_N14
\r_addr[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[16]~16_combout\ = (\Decoder0~22_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~22_combout\ & ((r_addr(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(16),
	datad => \Decoder0~22_combout\,
	combout => \r_addr[16]~16_combout\);

-- Location: LCCOMB_X30_Y38_N4
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (r_addr(16) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_addr(16),
	datad => \r_sm.s_clear~q\,
	combout => \Selector13~0_combout\);

-- Location: FF_X30_Y38_N15
\r_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[16]~16_combout\,
	asdata => \Selector13~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(16));

-- Location: LCCOMB_X27_Y40_N2
\Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~23_combout\ = (\Decoder0~2_combout\ & (r_index(4) & (\Equal2~0_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => r_index(4),
	datac => \Equal2~0_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~23_combout\);

-- Location: LCCOMB_X27_Y40_N20
\r_addr[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[17]~17_combout\ = (\Decoder0~23_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~23_combout\ & ((r_addr(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(17),
	datad => \Decoder0~23_combout\,
	combout => \r_addr[17]~17_combout\);

-- Location: LCCOMB_X26_Y40_N6
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (r_addr(17) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_addr(17),
	datad => \r_sm.s_clear~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X27_Y40_N21
\r_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[17]~17_combout\,
	asdata => \Selector12~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(17));

-- Location: LCCOMB_X30_Y38_N2
\Decoder0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~24_combout\ = (\Decoder0~4_combout\ & (r_index(4) & (\Equal2~0_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~4_combout\,
	datab => r_index(4),
	datac => \Equal2~0_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~24_combout\);

-- Location: LCCOMB_X30_Y38_N12
\r_addr[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[18]~18_combout\ = (\Decoder0~24_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~24_combout\ & ((r_addr(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(18),
	datad => \Decoder0~24_combout\,
	combout => \r_addr[18]~18_combout\);

-- Location: LCCOMB_X30_Y38_N24
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (r_addr(18) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(18),
	datad => \r_sm.s_clear~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X30_Y38_N13
\r_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[18]~18_combout\,
	asdata => \Selector11~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(18));

-- Location: LCCOMB_X29_Y39_N24
\Decoder0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~25_combout\ = (\Equal2~0_combout\ & (r_index(4) & (\Equal2~9_combout\ & \r_index[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => r_index(4),
	datac => \Equal2~9_combout\,
	datad => \r_index[31]~0_combout\,
	combout => \Decoder0~25_combout\);

-- Location: LCCOMB_X29_Y39_N8
\r_addr[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[19]~19_combout\ = (\Decoder0~25_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~25_combout\ & ((r_addr(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(19),
	datad => \Decoder0~25_combout\,
	combout => \r_addr[19]~19_combout\);

-- Location: LCCOMB_X29_Y39_N14
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (r_addr(19) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_addr(19),
	datad => \r_sm.s_clear~q\,
	combout => \Selector10~0_combout\);

-- Location: FF_X29_Y39_N9
\r_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[19]~19_combout\,
	asdata => \Selector10~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(19));

-- Location: LCCOMB_X28_Y40_N24
\Decoder1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~30_combout\ = (\Equal2~10_combout\ & (!r_index(31) & (!\LessThan0~2_combout\ & \r_index[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => r_index(31),
	datac => \LessThan0~2_combout\,
	datad => \r_index[31]~1_combout\,
	combout => \Decoder1~30_combout\);

-- Location: LCCOMB_X28_Y40_N0
\r_sram_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[0]~0_combout\ = (\Decoder1~30_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~30_combout\ & ((r_sram_data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_sram_data(0),
	datad => \Decoder1~30_combout\,
	combout => \r_sram_data[0]~0_combout\);

-- Location: LCCOMB_X28_Y40_N14
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (r_sram_data(0) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_sram_data(0),
	datac => \r_sm.s_clear~q\,
	combout => \Selector45~0_combout\);

-- Location: FF_X28_Y40_N1
\r_sram_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[0]~0_combout\,
	asdata => \Selector45~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(0));

-- Location: LCCOMB_X30_Y40_N16
\Decoder1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~31_combout\ = (\Decoder0~7_combout\ & (!r_index(31) & (\r_index[31]~1_combout\ & !\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~7_combout\,
	datab => r_index(31),
	datac => \r_index[31]~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Decoder1~31_combout\);

-- Location: LCCOMB_X32_Y40_N16
\Decoder1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~35_combout\ = (!r_index(1) & (!r_index(0) & \Decoder1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datac => r_index(0),
	datad => \Decoder1~31_combout\,
	combout => \Decoder1~35_combout\);

-- Location: LCCOMB_X32_Y40_N12
\r_sram_data[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[1]~1_combout\ = (\Decoder1~35_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~35_combout\ & ((r_sram_data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_sram_data(1),
	datad => \Decoder1~35_combout\,
	combout => \r_sram_data[1]~1_combout\);

-- Location: LCCOMB_X32_Y40_N30
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (!\r_sm.s_clear~q\ & r_sram_data(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => r_sram_data(1),
	combout => \Selector44~0_combout\);

-- Location: FF_X32_Y40_N13
\r_sram_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[1]~1_combout\,
	asdata => \Selector44~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(1));

-- Location: LCCOMB_X32_Y40_N2
\Decoder1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~36_combout\ = (!r_index(1) & (r_index(0) & \Decoder1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datac => r_index(0),
	datad => \Decoder1~31_combout\,
	combout => \Decoder1~36_combout\);

-- Location: LCCOMB_X32_Y40_N26
\r_sram_data[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[2]~2_combout\ = (\Decoder1~36_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~36_combout\ & ((r_sram_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_sram_data(2),
	datad => \Decoder1~36_combout\,
	combout => \r_sram_data[2]~2_combout\);

-- Location: LCCOMB_X32_Y40_N4
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (!\r_sm.s_clear~q\ & r_sram_data(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datac => r_sram_data(2),
	combout => \Selector43~0_combout\);

-- Location: FF_X32_Y40_N27
\r_sram_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[2]~2_combout\,
	asdata => \Selector43~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(2));

-- Location: LCCOMB_X32_Y40_N20
\Decoder1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~37_combout\ = (r_index(1) & (!r_index(0) & \Decoder1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datac => r_index(0),
	datad => \Decoder1~31_combout\,
	combout => \Decoder1~37_combout\);

-- Location: LCCOMB_X32_Y40_N0
\r_sram_data[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[3]~3_combout\ = (\Decoder1~37_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~37_combout\ & ((r_sram_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_sram_data(3),
	datad => \Decoder1~37_combout\,
	combout => \r_sram_data[3]~3_combout\);

-- Location: LCCOMB_X32_Y40_N22
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (!\r_sm.s_clear~q\ & r_sram_data(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => r_sram_data(3),
	combout => \Selector42~0_combout\);

-- Location: FF_X32_Y40_N1
\r_sram_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[3]~3_combout\,
	asdata => \Selector42~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(3));

-- Location: LCCOMB_X32_Y40_N6
\Decoder1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~38_combout\ = (r_index(1) & (r_index(0) & \Decoder1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datac => r_index(0),
	datad => \Decoder1~31_combout\,
	combout => \Decoder1~38_combout\);

-- Location: LCCOMB_X32_Y40_N10
\r_sram_data[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[4]~4_combout\ = (\Decoder1~38_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~38_combout\ & ((r_sram_data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_sram_data(4),
	datad => \Decoder1~38_combout\,
	combout => \r_sram_data[4]~4_combout\);

-- Location: LCCOMB_X32_Y40_N8
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (!\r_sm.s_clear~q\ & r_sram_data(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => r_sram_data(4),
	combout => \Selector41~0_combout\);

-- Location: FF_X32_Y40_N11
\r_sram_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[4]~4_combout\,
	asdata => \Selector41~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(4));

-- Location: LCCOMB_X30_Y40_N6
\Decoder1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~32_combout\ = (!r_index(31) & (\Decoder0~12_combout\ & (\r_index[31]~1_combout\ & !\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(31),
	datab => \Decoder0~12_combout\,
	datac => \r_index[31]~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Decoder1~32_combout\);

-- Location: LCCOMB_X33_Y40_N18
\Decoder1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~39_combout\ = (!r_index(0) & (!r_index(1) & \Decoder1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datac => r_index(1),
	datad => \Decoder1~32_combout\,
	combout => \Decoder1~39_combout\);

-- Location: LCCOMB_X33_Y40_N24
\r_sram_data[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[5]~5_combout\ = (\Decoder1~39_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~39_combout\ & ((r_sram_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_sram_data(5),
	datad => \Decoder1~39_combout\,
	combout => \r_sram_data[5]~5_combout\);

-- Location: LCCOMB_X33_Y40_N22
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (!\r_sm.s_clear~q\ & r_sram_data(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => r_sram_data(5),
	combout => \Selector40~0_combout\);

-- Location: FF_X33_Y40_N25
\r_sram_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[5]~5_combout\,
	asdata => \Selector40~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(5));

-- Location: LCCOMB_X27_Y40_N10
\Decoder1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~40_combout\ = (!r_index(1) & (r_index(0) & \Decoder1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datac => r_index(0),
	datad => \Decoder1~32_combout\,
	combout => \Decoder1~40_combout\);

-- Location: LCCOMB_X27_Y40_N14
\r_sram_data[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[6]~6_combout\ = (\Decoder1~40_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~40_combout\ & ((r_sram_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_sram_data(6),
	datad => \Decoder1~40_combout\,
	combout => \r_sram_data[6]~6_combout\);

-- Location: LCCOMB_X27_Y40_N8
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (r_sram_data(6) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_sram_data(6),
	datac => \r_sm.s_clear~q\,
	combout => \Selector39~0_combout\);

-- Location: FF_X27_Y40_N15
\r_sram_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[6]~6_combout\,
	asdata => \Selector39~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(6));

-- Location: LCCOMB_X27_Y40_N24
\Decoder1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~41_combout\ = (r_index(1) & (!r_index(0) & \Decoder1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datac => r_index(0),
	datad => \Decoder1~32_combout\,
	combout => \Decoder1~41_combout\);

-- Location: LCCOMB_X27_Y40_N0
\r_sram_data[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[7]~7_combout\ = (\Decoder1~41_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~41_combout\ & ((r_sram_data(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_sram_data(7),
	datad => \Decoder1~41_combout\,
	combout => \r_sram_data[7]~7_combout\);

-- Location: LCCOMB_X27_Y40_N26
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (!\r_sm.s_clear~q\ & r_sram_data(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_clear~q\,
	datad => r_sram_data(7),
	combout => \Selector38~0_combout\);

-- Location: FF_X27_Y40_N1
\r_sram_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[7]~7_combout\,
	asdata => \Selector38~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(7));

-- Location: LCCOMB_X27_Y40_N18
\Decoder1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~42_combout\ = (r_index(1) & (r_index(0) & \Decoder1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datac => r_index(0),
	datad => \Decoder1~32_combout\,
	combout => \Decoder1~42_combout\);

-- Location: LCCOMB_X27_Y40_N6
\r_sram_data[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[8]~8_combout\ = (\Decoder1~42_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~42_combout\ & ((r_sram_data(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_sram_data(8),
	datad => \Decoder1~42_combout\,
	combout => \r_sram_data[8]~8_combout\);

-- Location: LCCOMB_X27_Y40_N4
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (!\r_sm.s_clear~q\ & r_sram_data(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_clear~q\,
	datad => r_sram_data(8),
	combout => \Selector37~0_combout\);

-- Location: FF_X27_Y40_N7
\r_sram_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[8]~8_combout\,
	asdata => \Selector37~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(8));

-- Location: LCCOMB_X30_Y40_N28
\Decoder1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~33_combout\ = (\Decoder0~17_combout\ & (!r_index(31) & (\r_index[31]~1_combout\ & !\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~17_combout\,
	datab => r_index(31),
	datac => \r_index[31]~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Decoder1~33_combout\);

-- Location: LCCOMB_X33_Y40_N12
\Decoder1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~43_combout\ = (!r_index(0) & (!r_index(1) & \Decoder1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datac => r_index(1),
	datad => \Decoder1~33_combout\,
	combout => \Decoder1~43_combout\);

-- Location: LCCOMB_X33_Y40_N30
\r_sram_data[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[9]~9_combout\ = (\Decoder1~43_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~43_combout\ & ((r_sram_data(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_sram_data(9),
	datad => \Decoder1~43_combout\,
	combout => \r_sram_data[9]~9_combout\);

-- Location: LCCOMB_X33_Y40_N4
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (r_sram_data(9) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_sram_data(9),
	datad => \r_sm.s_clear~q\,
	combout => \Selector36~0_combout\);

-- Location: FF_X33_Y40_N31
\r_sram_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[9]~9_combout\,
	asdata => \Selector36~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(9));

-- Location: LCCOMB_X33_Y40_N6
\Decoder1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~44_combout\ = (r_index(0) & (!r_index(1) & \Decoder1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datac => r_index(1),
	datad => \Decoder1~33_combout\,
	combout => \Decoder1~44_combout\);

-- Location: LCCOMB_X33_Y40_N20
\r_sram_data[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[10]~10_combout\ = (\Decoder1~44_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~44_combout\ & ((r_sram_data(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_sram_data(10),
	datad => \Decoder1~44_combout\,
	combout => \r_sram_data[10]~10_combout\);

-- Location: LCCOMB_X33_Y40_N26
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (!\r_sm.s_clear~q\ & r_sram_data(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => r_sram_data(10),
	combout => \Selector35~0_combout\);

-- Location: FF_X33_Y40_N21
\r_sram_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[10]~10_combout\,
	asdata => \Selector35~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(10));

-- Location: LCCOMB_X33_Y40_N28
\Decoder1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~45_combout\ = (!r_index(0) & (r_index(1) & \Decoder1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datac => r_index(1),
	datad => \Decoder1~33_combout\,
	combout => \Decoder1~45_combout\);

-- Location: LCCOMB_X33_Y40_N2
\r_sram_data[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[11]~11_combout\ = (\Decoder1~45_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~45_combout\ & ((r_sram_data(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_sram_data(11),
	datad => \Decoder1~45_combout\,
	combout => \r_sram_data[11]~11_combout\);

-- Location: LCCOMB_X33_Y40_N8
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (!\r_sm.s_clear~q\ & r_sram_data(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => r_sram_data(11),
	combout => \Selector34~0_combout\);

-- Location: FF_X33_Y40_N3
\r_sram_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[11]~11_combout\,
	asdata => \Selector34~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(11));

-- Location: LCCOMB_X33_Y40_N10
\Decoder1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~46_combout\ = (r_index(0) & (r_index(1) & \Decoder1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datac => r_index(1),
	datad => \Decoder1~33_combout\,
	combout => \Decoder1~46_combout\);

-- Location: LCCOMB_X33_Y40_N0
\r_sram_data[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[12]~12_combout\ = (\Decoder1~46_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~46_combout\ & ((r_sram_data(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_sram_data(12),
	datad => \Decoder1~46_combout\,
	combout => \r_sram_data[12]~12_combout\);

-- Location: LCCOMB_X33_Y40_N14
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (!\r_sm.s_clear~q\ & r_sram_data(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => r_sram_data(12),
	combout => \Selector33~0_combout\);

-- Location: FF_X33_Y40_N1
\r_sram_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[12]~12_combout\,
	asdata => \Selector33~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(12));

-- Location: LCCOMB_X29_Y40_N0
\Decoder1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~34_combout\ = (!r_index(31) & (\r_index[31]~1_combout\ & (!\LessThan0~2_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(31),
	datab => \r_index[31]~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Equal2~0_combout\,
	combout => \Decoder1~34_combout\);

-- Location: LCCOMB_X29_Y40_N18
\Decoder1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~47_combout\ = (!r_index(0) & (!r_index(1) & \Decoder1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datac => r_index(1),
	datad => \Decoder1~34_combout\,
	combout => \Decoder1~47_combout\);

-- Location: LCCOMB_X29_Y40_N8
\r_sram_data[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[13]~13_combout\ = (\Decoder1~47_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~47_combout\ & ((r_sram_data(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_sram_data(13),
	datad => \Decoder1~47_combout\,
	combout => \r_sram_data[13]~13_combout\);

-- Location: LCCOMB_X29_Y40_N2
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (r_sram_data(13) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_sram_data(13),
	datad => \r_sm.s_clear~q\,
	combout => \Selector32~0_combout\);

-- Location: FF_X29_Y40_N9
\r_sram_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[13]~13_combout\,
	asdata => \Selector32~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(13));

-- Location: LCCOMB_X29_Y40_N28
\Decoder1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~48_combout\ = (r_index(0) & (!r_index(1) & \Decoder1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datac => r_index(1),
	datad => \Decoder1~34_combout\,
	combout => \Decoder1~48_combout\);

-- Location: LCCOMB_X29_Y40_N6
\r_sram_data[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[14]~14_combout\ = (\Decoder1~48_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~48_combout\ & ((r_sram_data(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_sram_data(14),
	datad => \Decoder1~48_combout\,
	combout => \r_sram_data[14]~14_combout\);

-- Location: LCCOMB_X26_Y40_N28
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (r_sram_data(14) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_sram_data(14),
	datad => \r_sm.s_clear~q\,
	combout => \Selector31~0_combout\);

-- Location: FF_X29_Y40_N7
\r_sram_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[14]~14_combout\,
	asdata => \Selector31~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(14));

-- Location: LCCOMB_X29_Y40_N10
\Decoder1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~49_combout\ = (!r_index(0) & (r_index(1) & \Decoder1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datac => r_index(1),
	datad => \Decoder1~34_combout\,
	combout => \Decoder1~49_combout\);

-- Location: LCCOMB_X29_Y40_N12
\r_sram_data[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[15]~15_combout\ = (\Decoder1~49_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~49_combout\ & ((r_sram_data(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_sram_data(15),
	datad => \Decoder1~49_combout\,
	combout => \r_sram_data[15]~15_combout\);

-- Location: LCCOMB_X26_Y40_N22
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (r_sram_data(15) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_sram_data(15),
	datad => \r_sm.s_clear~q\,
	combout => \Selector30~0_combout\);

-- Location: FF_X29_Y40_N13
\r_sram_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[15]~15_combout\,
	asdata => \Selector30~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(15));

ww_o_rx_full <= \o_rx_full~output_o\;

ww_o_rx_empty <= \o_rx_empty~output_o\;

ww_o_tx <= \o_tx~output_o\;

ww_o_tx_full <= \o_tx_full~output_o\;

ww_o_tx_empty <= \o_tx_empty~output_o\;

ww_o_addr(0) <= \o_addr[0]~output_o\;

ww_o_addr(1) <= \o_addr[1]~output_o\;

ww_o_addr(2) <= \o_addr[2]~output_o\;

ww_o_addr(3) <= \o_addr[3]~output_o\;

ww_o_addr(4) <= \o_addr[4]~output_o\;

ww_o_addr(5) <= \o_addr[5]~output_o\;

ww_o_addr(6) <= \o_addr[6]~output_o\;

ww_o_addr(7) <= \o_addr[7]~output_o\;

ww_o_addr(8) <= \o_addr[8]~output_o\;

ww_o_addr(9) <= \o_addr[9]~output_o\;

ww_o_addr(10) <= \o_addr[10]~output_o\;

ww_o_addr(11) <= \o_addr[11]~output_o\;

ww_o_addr(12) <= \o_addr[12]~output_o\;

ww_o_addr(13) <= \o_addr[13]~output_o\;

ww_o_addr(14) <= \o_addr[14]~output_o\;

ww_o_addr(15) <= \o_addr[15]~output_o\;

ww_o_addr(16) <= \o_addr[16]~output_o\;

ww_o_addr(17) <= \o_addr[17]~output_o\;

ww_o_addr(18) <= \o_addr[18]~output_o\;

ww_o_addr(19) <= \o_addr[19]~output_o\;

ww_o_data(0) <= \o_data[0]~output_o\;

ww_o_data(1) <= \o_data[1]~output_o\;

ww_o_data(2) <= \o_data[2]~output_o\;

ww_o_data(3) <= \o_data[3]~output_o\;

ww_o_data(4) <= \o_data[4]~output_o\;

ww_o_data(5) <= \o_data[5]~output_o\;

ww_o_data(6) <= \o_data[6]~output_o\;

ww_o_data(7) <= \o_data[7]~output_o\;

ww_o_data(8) <= \o_data[8]~output_o\;

ww_o_data(9) <= \o_data[9]~output_o\;

ww_o_data(10) <= \o_data[10]~output_o\;

ww_o_data(11) <= \o_data[11]~output_o\;

ww_o_data(12) <= \o_data[12]~output_o\;

ww_o_data(13) <= \o_data[13]~output_o\;

ww_o_data(14) <= \o_data[14]~output_o\;

ww_o_data(15) <= \o_data[15]~output_o\;

ww_o_we <= \o_we~output_o\;

ww_o_ce <= \o_ce~output_o\;

ww_o_oe <= \o_oe~output_o\;

ww_o_ub <= \o_ub~output_o\;

ww_o_lb <= \o_lb~output_o\;

ww_o_leds(0) <= \o_leds[0]~output_o\;

ww_o_leds(1) <= \o_leds[1]~output_o\;

ww_o_leds(2) <= \o_leds[2]~output_o\;

ww_o_leds(3) <= \o_leds[3]~output_o\;

ww_o_leds(4) <= \o_leds[4]~output_o\;

ww_o_leds(5) <= \o_leds[5]~output_o\;

ww_o_leds(6) <= \o_leds[6]~output_o\;

ww_o_leds(7) <= \o_leds[7]~output_o\;

ww_o_leds(8) <= \o_leds[8]~output_o\;

ww_o_leds(9) <= \o_leds[9]~output_o\;

ww_o_leds(10) <= \o_leds[10]~output_o\;

ww_o_leds(11) <= \o_leds[11]~output_o\;

ww_o_leds(12) <= \o_leds[12]~output_o\;

ww_o_leds(13) <= \o_leds[13]~output_o\;

ww_o_leds(14) <= \o_leds[14]~output_o\;

ww_o_leds(15) <= \o_leds[15]~output_o\;
END structure;


