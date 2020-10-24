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

-- DATE "10/18/2020 14:47:52"

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
	o_rx_full : BUFFER std_logic;
	o_rx_empty : BUFFER std_logic;
	o_tx : BUFFER std_logic;
	o_tx_full : BUFFER std_logic;
	o_tx_empty : BUFFER std_logic;
	o_addr : BUFFER std_logic_vector(19 DOWNTO 0);
	o_data : BUFFER std_logic_vector(15 DOWNTO 0);
	o_we : BUFFER std_logic;
	o_ce : BUFFER std_logic;
	o_oe : BUFFER std_logic;
	o_ub : BUFFER std_logic;
	o_lb : BUFFER std_logic
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
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
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
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_rst~input_o\ : std_logic;
SIGNAL \r_sm.s_process~q\ : std_logic;
SIGNAL \r_sram_data[0]~0_combout\ : std_logic;
SIGNAL \i_rx~input_o\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_data_r~feeder_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_data_r~q\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_data~q\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[0]~13_combout\ : std_logic;
SIGNAL \uart_unit|receiver|LessThan1~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|LessThan1~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|LessThan1~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector15~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector15~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector14~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector14~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector14~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_stop_bit~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_stop_bit~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main~7_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \uart_unit|receiver|Equal0~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Equal0~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Equal0~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Equal0~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector18~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_start_bit~q\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[12]~39_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector17~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_idle~q\ : std_logic;
SIGNAL \uart_unit|receiver|Selector0~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[12]~40_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_clk_count[12]~41_combout\ : std_logic;
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
SIGNAL \uart_unit|receiver|Selector19~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector19~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector19~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ : std_logic;
SIGNAL \uart_unit|receiver|Selector16~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector16~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Decoder0~6_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_byte[3]~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[0]~5_combout\ : std_logic;
SIGNAL \i_rst_sync~input_o\ : std_logic;
SIGNAL \uart_unit|receiver|Selector0~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_rx_dv~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[3]~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[0]~6\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[1]~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[1]~8\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[2]~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[2]~10\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[3]~12\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[4]~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Equal2~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Equal3~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add3~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|p_control~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Equal1~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add3~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_rd_index~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index[0]~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index[0]~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add2~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add2~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_index~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data~13_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
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
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \r_wr_tx~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[21]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \r_index[0]~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \r_index[5]~3_combout\ : std_logic;
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
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \p_write_sram~0_combout\ : std_logic;
SIGNAL \p_write_sram~1_combout\ : std_logic;
SIGNAL \p_write_sram~2_combout\ : std_logic;
SIGNAL \r_index[27]~0_combout\ : std_logic;
SIGNAL \r_index[31]~1_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \r_index[2]~2_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \r_sm~9_combout\ : std_logic;
SIGNAL \r_sm.s_write_sram~q\ : std_logic;
SIGNAL \r_sm.s_clear~feeder_combout\ : std_logic;
SIGNAL \r_sm.s_clear~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \r_sm.s_idle~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \r_sm.s_get_fifo_data~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \r_rd_rx~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|p_control~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_count[3]~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Equal2~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \r_wr_tx~q\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[0]~13_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[11]~37\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[12]~38_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[11]~21_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[0]~14\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[1]~15_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[1]~16\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[2]~17_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[2]~18\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[3]~19_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[3]~20\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[4]~22_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[4]~23\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[5]~24_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[5]~25\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[6]~26_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[6]~27\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[7]~28_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[7]~29\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[8]~30_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[8]~31\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[9]~32_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[9]~33\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[10]~34_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[10]~35\ : std_logic;
SIGNAL \uart_unit|transmitter|r_clk_count[11]~36_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|LessThan1~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|LessThan1~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector2~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector2~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_tx_done~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|p_control~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count[0]~5_combout\ : std_logic;
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
SIGNAL \uart_unit|transmitter|r_sm_main~7_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index[3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Equal1~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add3~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|p_control~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add3~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_rd_index~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_wr_index~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Equal2~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_wr_index[1]~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_wr_index~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add2~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_wr_index~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_wr_index[1]~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add2~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_wr_index~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~24_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \r_tx_data[1]~0_combout\ : std_logic;
SIGNAL \r_tx_data[1]~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~19_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector20~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~17_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Mux0~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Mux0~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector1~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~23_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~20_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~21_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_data~22_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Mux0~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Mux0~3_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector1~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector1~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|o_tx_serial~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Decoder0~27_combout\ : std_logic;
SIGNAL \Decoder0~25_combout\ : std_logic;
SIGNAL \Decoder0~26_combout\ : std_logic;
SIGNAL \Decoder0~44_combout\ : std_logic;
SIGNAL \r_addr[0]~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Decoder0~28_combout\ : std_logic;
SIGNAL \Decoder0~45_combout\ : std_logic;
SIGNAL \r_addr[1]~1_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Decoder0~29_combout\ : std_logic;
SIGNAL \Decoder0~46_combout\ : std_logic;
SIGNAL \r_addr[2]~2_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Decoder0~30_combout\ : std_logic;
SIGNAL \Decoder0~47_combout\ : std_logic;
SIGNAL \r_addr[3]~3_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Decoder0~31_combout\ : std_logic;
SIGNAL \r_addr[4]~4_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Decoder0~32_combout\ : std_logic;
SIGNAL \r_addr[5]~5_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Decoder0~33_combout\ : std_logic;
SIGNAL \r_addr[6]~6_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Decoder0~34_combout\ : std_logic;
SIGNAL \r_addr[7]~7_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Decoder0~35_combout\ : std_logic;
SIGNAL \r_addr[8]~8_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Decoder0~36_combout\ : std_logic;
SIGNAL \r_addr[9]~9_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Decoder0~37_combout\ : std_logic;
SIGNAL \r_addr[10]~10_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Decoder0~38_combout\ : std_logic;
SIGNAL \r_addr[11]~11_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Decoder0~39_combout\ : std_logic;
SIGNAL \r_addr[12]~12_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Decoder0~40_combout\ : std_logic;
SIGNAL \r_addr[13]~13_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Decoder0~41_combout\ : std_logic;
SIGNAL \r_addr[14]~14_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Decoder0~42_combout\ : std_logic;
SIGNAL \r_addr[15]~15_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Decoder0~24_combout\ : std_logic;
SIGNAL \Decoder0~43_combout\ : std_logic;
SIGNAL \Decoder0~48_combout\ : std_logic;
SIGNAL \r_addr[16]~16_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Decoder0~49_combout\ : std_logic;
SIGNAL \r_addr[17]~17_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Decoder0~50_combout\ : std_logic;
SIGNAL \r_addr[18]~18_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Decoder0~51_combout\ : std_logic;
SIGNAL \r_addr[19]~19_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Decoder1~6_combout\ : std_logic;
SIGNAL \r_sram_data[0]~1_combout\ : std_logic;
SIGNAL \Decoder1~10_combout\ : std_logic;
SIGNAL \Decoder1~7_combout\ : std_logic;
SIGNAL \r_sram_data[1]~2_combout\ : std_logic;
SIGNAL \r_sram_data[2]~3_combout\ : std_logic;
SIGNAL \r_sram_data[3]~4_combout\ : std_logic;
SIGNAL \Decoder1~8_combout\ : std_logic;
SIGNAL \r_sram_data[4]~5_combout\ : std_logic;
SIGNAL \r_sram_data[5]~6_combout\ : std_logic;
SIGNAL \r_sram_data[6]~7_combout\ : std_logic;
SIGNAL \r_sram_data[7]~8_combout\ : std_logic;
SIGNAL \Decoder1~11_combout\ : std_logic;
SIGNAL \Decoder1~9_combout\ : std_logic;
SIGNAL \r_sram_data[8]~9_combout\ : std_logic;
SIGNAL \r_sram_data[9]~10_combout\ : std_logic;
SIGNAL \r_sram_data[10]~11_combout\ : std_logic;
SIGNAL \r_sram_data[11]~12_combout\ : std_logic;
SIGNAL \Decoder1~12_combout\ : std_logic;
SIGNAL \r_sram_data[12]~13_combout\ : std_logic;
SIGNAL \r_sram_data[13]~14_combout\ : std_logic;
SIGNAL \r_sram_data[14]~15_combout\ : std_logic;
SIGNAL \r_sram_data[15]~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_fifo_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL r_sram_data : std_logic_vector(15 DOWNTO 0);
SIGNAL \uart_unit|receiver|r_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_fifo_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_unit|transmitter|r_tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL r_addr : std_logic_vector(19 DOWNTO 0);
SIGNAL \uart_unit|transmitter|r_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \uart_unit|transmitter|r_bit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_rd_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL r_data : std_logic_vector(7 DOWNTO 0);
SIGNAL r_index : std_logic_vector(31 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\ : std_logic_vector(0 TO 24);
SIGNAL \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\ : std_logic_vector(0 TO 24);
SIGNAL \uart_unit|receiver|r_bit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_wr_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL r_tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_unit|receiver|r_rx_byte\ : std_logic_vector(7 DOWNTO 0);
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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & r_tx_data(1) & r_tx_data(1) & \~GND~combout\);

\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\uart_unit|fifo_tx|r_wr_index\(3) & \uart_unit|fifo_tx|r_wr_index\(2) & \uart_unit|fifo_tx|r_wr_index\(1) & \uart_unit|fifo_tx|r_wr_index\(0));

\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\uart_unit|fifo_tx|r_rd_index~5_combout\ & \uart_unit|fifo_tx|r_rd_index~4_combout\ & \uart_unit|fifo_tx|r_rd_index~3_combout\ & \uart_unit|fifo_tx|r_rd_index~0_combout\);

\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\ <= \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

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

-- Location: FF_X17_Y10_N1
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

-- Location: LCCOMB_X17_Y10_N8
\r_sram_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[0]~0_combout\ = (\r_sm.s_process~q\ & \i_rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_process~q\,
	datad => \i_rst~input_o\,
	combout => \r_sram_data[0]~0_combout\);

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

-- Location: LCCOMB_X35_Y19_N22
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

-- Location: FF_X35_Y19_N23
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

-- Location: FF_X35_Y19_N21
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

-- Location: LCCOMB_X40_Y19_N4
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

-- Location: LCCOMB_X40_Y19_N30
\uart_unit|receiver|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|LessThan1~1_combout\ = (!\uart_unit|receiver|r_clk_count\(9) & (!\uart_unit|receiver|r_clk_count\(7) & (!\uart_unit|receiver|r_clk_count\(11) & !\uart_unit|receiver|r_clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(9),
	datab => \uart_unit|receiver|r_clk_count\(7),
	datac => \uart_unit|receiver|r_clk_count\(11),
	datad => \uart_unit|receiver|r_clk_count\(8),
	combout => \uart_unit|receiver|LessThan1~1_combout\);

-- Location: LCCOMB_X40_Y19_N0
\uart_unit|receiver|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|LessThan1~0_combout\ = ((!\uart_unit|receiver|r_clk_count\(5) & ((!\uart_unit|receiver|r_clk_count\(4)) # (!\uart_unit|receiver|r_clk_count\(3))))) # (!\uart_unit|receiver|r_clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(3),
	datab => \uart_unit|receiver|r_clk_count\(6),
	datac => \uart_unit|receiver|r_clk_count\(5),
	datad => \uart_unit|receiver|r_clk_count\(4),
	combout => \uart_unit|receiver|LessThan1~0_combout\);

-- Location: LCCOMB_X39_Y19_N24
\uart_unit|receiver|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|LessThan1~2_combout\ = (\uart_unit|receiver|LessThan1~1_combout\ & ((\uart_unit|receiver|LessThan1~0_combout\) # ((!\uart_unit|receiver|r_clk_count\(11) & !\uart_unit|receiver|r_clk_count\(10))))) # 
-- (!\uart_unit|receiver|LessThan1~1_combout\ & (!\uart_unit|receiver|r_clk_count\(11) & ((!\uart_unit|receiver|r_clk_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|LessThan1~1_combout\,
	datab => \uart_unit|receiver|r_clk_count\(11),
	datac => \uart_unit|receiver|LessThan1~0_combout\,
	datad => \uart_unit|receiver|r_clk_count\(10),
	combout => \uart_unit|receiver|LessThan1~2_combout\);

-- Location: LCCOMB_X39_Y19_N28
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

-- Location: LCCOMB_X35_Y19_N0
\uart_unit|receiver|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector15~2_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (\uart_unit|receiver|r_bit_index\(1) $ (((\uart_unit|receiver|r_bit_index\(0) & \uart_unit|receiver|LessThan1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(1),
	datac => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datad => \uart_unit|receiver|LessThan1~3_combout\,
	combout => \uart_unit|receiver|Selector15~2_combout\);

-- Location: LCCOMB_X35_Y19_N2
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

-- Location: FF_X35_Y19_N3
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

-- Location: LCCOMB_X35_Y19_N12
\uart_unit|receiver|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector14~1_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (((!\uart_unit|receiver|LessThan1~3_combout\)) # (!\uart_unit|receiver|r_bit_index\(0)))) # (!\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & 
-- (((\uart_unit|receiver|r_sm_main.s_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datad => \uart_unit|receiver|LessThan1~3_combout\,
	combout => \uart_unit|receiver|Selector14~1_combout\);

-- Location: LCCOMB_X38_Y19_N10
\uart_unit|receiver|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~0_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (\uart_unit|receiver|r_clk_count\(12) & !\uart_unit|receiver|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \uart_unit|receiver|r_clk_count\(12),
	datad => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|Decoder0~0_combout\);

-- Location: LCCOMB_X35_Y19_N18
\uart_unit|receiver|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector14~0_combout\ = (\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|Decoder0~0_combout\ & (\uart_unit|receiver|r_bit_index\(1) $ (\uart_unit|receiver|r_bit_index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(1),
	datac => \uart_unit|receiver|r_bit_index\(2),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Selector14~0_combout\);

-- Location: LCCOMB_X35_Y19_N8
\uart_unit|receiver|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector14~2_combout\ = (\uart_unit|receiver|Selector14~0_combout\) # ((\uart_unit|receiver|Selector14~1_combout\ & \uart_unit|receiver|r_bit_index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Selector14~1_combout\,
	datac => \uart_unit|receiver|r_bit_index\(2),
	datad => \uart_unit|receiver|Selector14~0_combout\,
	combout => \uart_unit|receiver|Selector14~2_combout\);

-- Location: FF_X35_Y19_N9
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

-- Location: LCCOMB_X38_Y19_N28
\uart_unit|receiver|r_sm_main.s_rx_stop_bit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_sm_main.s_rx_stop_bit~2_combout\ = (\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|r_bit_index\(1) & (\uart_unit|receiver|r_bit_index\(2) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(1),
	datac => \uart_unit|receiver|r_bit_index\(2),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~2_combout\);

-- Location: LCCOMB_X38_Y19_N30
\uart_unit|receiver|r_sm_main.s_rx_stop_bit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_sm_main.s_rx_stop_bit~3_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_stop_bit~2_combout\) # ((\uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\ & ((\uart_unit|receiver|LessThan1~2_combout\) # (!\uart_unit|receiver|r_clk_count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(12),
	datab => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~2_combout\,
	datac => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\,
	datad => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~3_combout\);

-- Location: FF_X38_Y19_N31
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

-- Location: LCCOMB_X38_Y19_N12
\uart_unit|receiver|r_sm_main~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_sm_main~7_combout\ = (!\uart_unit|receiver|LessThan1~2_combout\ & (\uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\ & \uart_unit|receiver|r_clk_count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|LessThan1~2_combout\,
	datac => \uart_unit|receiver|r_sm_main.s_rx_stop_bit~q\,
	datad => \uart_unit|receiver|r_clk_count\(12),
	combout => \uart_unit|receiver|r_sm_main~7_combout\);

-- Location: FF_X38_Y19_N13
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

-- Location: LCCOMB_X39_Y19_N22
\uart_unit|receiver|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal0~2_combout\ = (!\uart_unit|receiver|r_clk_count\(0) & (\uart_unit|receiver|r_clk_count\(11) & (!\uart_unit|receiver|r_clk_count\(12) & !\uart_unit|receiver|r_clk_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(0),
	datab => \uart_unit|receiver|r_clk_count\(11),
	datac => \uart_unit|receiver|r_clk_count\(12),
	datad => \uart_unit|receiver|r_clk_count\(1),
	combout => \uart_unit|receiver|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y19_N16
\uart_unit|receiver|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal0~0_combout\ = (!\uart_unit|receiver|r_clk_count\(8) & (\uart_unit|receiver|r_clk_count\(3) & (!\uart_unit|receiver|r_clk_count\(4) & !\uart_unit|receiver|r_clk_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(8),
	datab => \uart_unit|receiver|r_clk_count\(3),
	datac => \uart_unit|receiver|r_clk_count\(4),
	datad => \uart_unit|receiver|r_clk_count\(7),
	combout => \uart_unit|receiver|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y19_N2
\uart_unit|receiver|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal0~1_combout\ = (\uart_unit|receiver|r_clk_count\(9) & (!\uart_unit|receiver|r_clk_count\(6) & (\uart_unit|receiver|r_clk_count\(5) & !\uart_unit|receiver|r_clk_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(9),
	datab => \uart_unit|receiver|r_clk_count\(6),
	datac => \uart_unit|receiver|r_clk_count\(5),
	datad => \uart_unit|receiver|r_clk_count\(10),
	combout => \uart_unit|receiver|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y19_N12
\uart_unit|receiver|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal0~3_combout\ = (\uart_unit|receiver|Equal0~2_combout\ & (\uart_unit|receiver|Equal0~0_combout\ & (\uart_unit|receiver|r_clk_count\(2) & \uart_unit|receiver|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Equal0~2_combout\,
	datab => \uart_unit|receiver|Equal0~0_combout\,
	datac => \uart_unit|receiver|r_clk_count\(2),
	datad => \uart_unit|receiver|Equal0~1_combout\,
	combout => \uart_unit|receiver|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y19_N26
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

-- Location: FF_X39_Y19_N27
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

-- Location: LCCOMB_X39_Y19_N18
\uart_unit|receiver|r_clk_count[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[12]~39_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_start_bit~q\ & \uart_unit|receiver|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_sm_main.s_rx_start_bit~q\,
	datad => \uart_unit|receiver|Equal0~3_combout\,
	combout => \uart_unit|receiver|r_clk_count[12]~39_combout\);

-- Location: LCCOMB_X38_Y19_N14
\uart_unit|receiver|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector17~0_combout\ = (!\uart_unit|receiver|r_sm_main.s_cleanup~q\ & (((\uart_unit|receiver|r_sm_main.s_idle~q\ & !\uart_unit|receiver|r_clk_count[12]~39_combout\)) # (!\uart_unit|receiver|r_rx_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_rx_data~q\,
	datab => \uart_unit|receiver|r_sm_main.s_cleanup~q\,
	datac => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datad => \uart_unit|receiver|r_clk_count[12]~39_combout\,
	combout => \uart_unit|receiver|Selector17~0_combout\);

-- Location: FF_X38_Y19_N15
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

-- Location: LCCOMB_X38_Y19_N16
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

-- Location: LCCOMB_X39_Y19_N6
\uart_unit|receiver|r_clk_count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[12]~40_combout\ = ((\uart_unit|receiver|r_clk_count[12]~39_combout\) # ((\uart_unit|receiver|LessThan1~3_combout\ & !\uart_unit|receiver|Selector0~0_combout\))) # (!\uart_unit|receiver|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datab => \uart_unit|receiver|LessThan1~3_combout\,
	datac => \uart_unit|receiver|Selector0~0_combout\,
	datad => \uart_unit|receiver|r_clk_count[12]~39_combout\,
	combout => \uart_unit|receiver|r_clk_count[12]~40_combout\);

-- Location: LCCOMB_X39_Y19_N4
\uart_unit|receiver|r_clk_count[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[12]~41_combout\ = (!\uart_unit|receiver|r_sm_main.s_cleanup~q\ & (((!\uart_unit|receiver|Equal0~3_combout\) # (!\uart_unit|receiver|r_sm_main.s_rx_start_bit~q\)) # (!\uart_unit|receiver|r_rx_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_cleanup~q\,
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_sm_main.s_rx_start_bit~q\,
	datad => \uart_unit|receiver|Equal0~3_combout\,
	combout => \uart_unit|receiver|r_clk_count[12]~41_combout\);

-- Location: FF_X40_Y19_N5
\uart_unit|receiver|r_clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[0]~13_combout\,
	sclr => \uart_unit|receiver|r_clk_count[12]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(0));

-- Location: LCCOMB_X40_Y19_N6
\uart_unit|receiver|r_clk_count[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[1]~15_combout\ = (\uart_unit|receiver|r_clk_count\(1) & (!\uart_unit|receiver|r_clk_count[0]~14\)) # (!\uart_unit|receiver|r_clk_count\(1) & ((\uart_unit|receiver|r_clk_count[0]~14\) # (GND)))
-- \uart_unit|receiver|r_clk_count[1]~16\ = CARRY((!\uart_unit|receiver|r_clk_count[0]~14\) # (!\uart_unit|receiver|r_clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(1),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[0]~14\,
	combout => \uart_unit|receiver|r_clk_count[1]~15_combout\,
	cout => \uart_unit|receiver|r_clk_count[1]~16\);

-- Location: FF_X40_Y19_N7
\uart_unit|receiver|r_clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[1]~15_combout\,
	sclr => \uart_unit|receiver|r_clk_count[12]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(1));

-- Location: LCCOMB_X40_Y19_N8
\uart_unit|receiver|r_clk_count[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[2]~17_combout\ = (\uart_unit|receiver|r_clk_count\(2) & (\uart_unit|receiver|r_clk_count[1]~16\ $ (GND))) # (!\uart_unit|receiver|r_clk_count\(2) & (!\uart_unit|receiver|r_clk_count[1]~16\ & VCC))
-- \uart_unit|receiver|r_clk_count[2]~18\ = CARRY((\uart_unit|receiver|r_clk_count\(2) & !\uart_unit|receiver|r_clk_count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_clk_count\(2),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[1]~16\,
	combout => \uart_unit|receiver|r_clk_count[2]~17_combout\,
	cout => \uart_unit|receiver|r_clk_count[2]~18\);

-- Location: FF_X40_Y19_N9
\uart_unit|receiver|r_clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[2]~17_combout\,
	sclr => \uart_unit|receiver|r_clk_count[12]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(2));

-- Location: LCCOMB_X40_Y19_N10
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

-- Location: FF_X40_Y19_N11
\uart_unit|receiver|r_clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[3]~19_combout\,
	sclr => \uart_unit|receiver|r_clk_count[12]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(3));

-- Location: LCCOMB_X40_Y19_N12
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

-- Location: FF_X40_Y19_N13
\uart_unit|receiver|r_clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[4]~21_combout\,
	sclr => \uart_unit|receiver|r_clk_count[12]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(4));

-- Location: LCCOMB_X40_Y19_N14
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

-- Location: FF_X40_Y19_N15
\uart_unit|receiver|r_clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[5]~23_combout\,
	sclr => \uart_unit|receiver|r_clk_count[12]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(5));

-- Location: LCCOMB_X40_Y19_N16
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

-- Location: FF_X40_Y19_N17
\uart_unit|receiver|r_clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[6]~25_combout\,
	sclr => \uart_unit|receiver|r_clk_count[12]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(6));

-- Location: LCCOMB_X40_Y19_N18
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

-- Location: FF_X40_Y19_N19
\uart_unit|receiver|r_clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[7]~27_combout\,
	sclr => \uart_unit|receiver|r_clk_count[12]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(7));

-- Location: LCCOMB_X40_Y19_N20
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

-- Location: FF_X40_Y19_N21
\uart_unit|receiver|r_clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[8]~29_combout\,
	sclr => \uart_unit|receiver|r_clk_count[12]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(8));

-- Location: LCCOMB_X40_Y19_N22
\uart_unit|receiver|r_clk_count[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[9]~31_combout\ = (\uart_unit|receiver|r_clk_count\(9) & (!\uart_unit|receiver|r_clk_count[8]~30\)) # (!\uart_unit|receiver|r_clk_count\(9) & ((\uart_unit|receiver|r_clk_count[8]~30\) # (GND)))
-- \uart_unit|receiver|r_clk_count[9]~32\ = CARRY((!\uart_unit|receiver|r_clk_count[8]~30\) # (!\uart_unit|receiver|r_clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(9),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[8]~30\,
	combout => \uart_unit|receiver|r_clk_count[9]~31_combout\,
	cout => \uart_unit|receiver|r_clk_count[9]~32\);

-- Location: FF_X40_Y19_N23
\uart_unit|receiver|r_clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[9]~31_combout\,
	sclr => \uart_unit|receiver|r_clk_count[12]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(9));

-- Location: LCCOMB_X40_Y19_N24
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

-- Location: FF_X40_Y19_N25
\uart_unit|receiver|r_clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[10]~33_combout\,
	sclr => \uart_unit|receiver|r_clk_count[12]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(10));

-- Location: LCCOMB_X40_Y19_N26
\uart_unit|receiver|r_clk_count[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[11]~35_combout\ = (\uart_unit|receiver|r_clk_count\(11) & (!\uart_unit|receiver|r_clk_count[10]~34\)) # (!\uart_unit|receiver|r_clk_count\(11) & ((\uart_unit|receiver|r_clk_count[10]~34\) # (GND)))
-- \uart_unit|receiver|r_clk_count[11]~36\ = CARRY((!\uart_unit|receiver|r_clk_count[10]~34\) # (!\uart_unit|receiver|r_clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_clk_count\(11),
	datad => VCC,
	cin => \uart_unit|receiver|r_clk_count[10]~34\,
	combout => \uart_unit|receiver|r_clk_count[11]~35_combout\,
	cout => \uart_unit|receiver|r_clk_count[11]~36\);

-- Location: FF_X40_Y19_N27
\uart_unit|receiver|r_clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[11]~35_combout\,
	sclr => \uart_unit|receiver|r_clk_count[12]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(11));

-- Location: LCCOMB_X40_Y19_N28
\uart_unit|receiver|r_clk_count[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_clk_count[12]~37_combout\ = \uart_unit|receiver|r_clk_count[11]~36\ $ (!\uart_unit|receiver|r_clk_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_clk_count\(12),
	cin => \uart_unit|receiver|r_clk_count[11]~36\,
	combout => \uart_unit|receiver|r_clk_count[12]~37_combout\);

-- Location: FF_X40_Y19_N29
\uart_unit|receiver|r_clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_clk_count[12]~37_combout\,
	sclr => \uart_unit|receiver|r_clk_count[12]~40_combout\,
	ena => \uart_unit|receiver|r_clk_count[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_clk_count\(12));

-- Location: LCCOMB_X38_Y19_N18
\uart_unit|receiver|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector19~0_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & ((\uart_unit|receiver|LessThan1~2_combout\) # (!\uart_unit|receiver|r_clk_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datab => \uart_unit|receiver|r_clk_count\(12),
	datad => \uart_unit|receiver|LessThan1~2_combout\,
	combout => \uart_unit|receiver|Selector19~0_combout\);

-- Location: LCCOMB_X38_Y19_N8
\uart_unit|receiver|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector19~1_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (((!\uart_unit|receiver|r_bit_index\(2)) # (!\uart_unit|receiver|r_bit_index\(1))) # (!\uart_unit|receiver|r_bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(1),
	datac => \uart_unit|receiver|r_bit_index\(2),
	datad => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	combout => \uart_unit|receiver|Selector19~1_combout\);

-- Location: LCCOMB_X38_Y19_N6
\uart_unit|receiver|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector19~2_combout\ = (\uart_unit|receiver|Selector19~0_combout\) # ((\uart_unit|receiver|Selector19~1_combout\) # ((!\uart_unit|receiver|r_rx_data~q\ & \uart_unit|receiver|r_clk_count[12]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_rx_data~q\,
	datab => \uart_unit|receiver|Selector19~0_combout\,
	datac => \uart_unit|receiver|Selector19~1_combout\,
	datad => \uart_unit|receiver|r_clk_count[12]~39_combout\,
	combout => \uart_unit|receiver|Selector19~2_combout\);

-- Location: FF_X38_Y19_N7
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

-- Location: LCCOMB_X38_Y19_N26
\uart_unit|receiver|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector16~0_combout\ = (\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & ((\uart_unit|receiver|r_clk_count\(12)))) # (!\uart_unit|receiver|r_sm_main.s_rx_data_bits~q\ & (\uart_unit|receiver|r_sm_main.s_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \uart_unit|receiver|r_sm_main.s_idle~q\,
	datad => \uart_unit|receiver|r_clk_count\(12),
	combout => \uart_unit|receiver|Selector16~0_combout\);

-- Location: LCCOMB_X38_Y19_N24
\uart_unit|receiver|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector16~1_combout\ = (\uart_unit|receiver|Selector16~0_combout\ & (\uart_unit|receiver|r_bit_index\(0) $ (((!\uart_unit|receiver|LessThan1~2_combout\ & \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\))))) # 
-- (!\uart_unit|receiver|Selector16~0_combout\ & (((\uart_unit|receiver|r_bit_index\(0) & \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Selector16~0_combout\,
	datab => \uart_unit|receiver|LessThan1~2_combout\,
	datac => \uart_unit|receiver|r_bit_index\(0),
	datad => \uart_unit|receiver|r_sm_main.s_rx_data_bits~q\,
	combout => \uart_unit|receiver|Selector16~1_combout\);

-- Location: FF_X38_Y19_N25
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

-- Location: LCCOMB_X35_Y19_N10
\uart_unit|receiver|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~6_combout\ = (\uart_unit|receiver|r_bit_index\(0) & (\uart_unit|receiver|r_bit_index\(1) & (!\uart_unit|receiver|r_bit_index\(2) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(1),
	datac => \uart_unit|receiver|r_bit_index\(2),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~6_combout\);

-- Location: LCCOMB_X35_Y19_N4
\uart_unit|receiver|r_rx_byte[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[3]~5_combout\ = (\uart_unit|receiver|Decoder0~6_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~6_combout\ & ((\uart_unit|receiver|r_rx_byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(3),
	datad => \uart_unit|receiver|Decoder0~6_combout\,
	combout => \uart_unit|receiver|r_rx_byte[3]~5_combout\);

-- Location: FF_X35_Y19_N5
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

-- Location: FF_X36_Y15_N1
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

-- Location: LCCOMB_X33_Y14_N6
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

-- Location: LCCOMB_X38_Y19_N20
\uart_unit|receiver|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector0~1_combout\ = (\uart_unit|receiver|r_sm_main~7_combout\) # ((\uart_unit|receiver|r_rx_dv~q\ & ((\uart_unit|receiver|r_sm_main.s_rx_start_bit~q\) # (!\uart_unit|receiver|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_sm_main.s_rx_start_bit~q\,
	datab => \uart_unit|receiver|Selector0~0_combout\,
	datac => \uart_unit|receiver|r_rx_dv~q\,
	datad => \uart_unit|receiver|r_sm_main~7_combout\,
	combout => \uart_unit|receiver|Selector0~1_combout\);

-- Location: FF_X38_Y19_N21
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

-- Location: LCCOMB_X33_Y14_N24
\uart_unit|fifo_rx|r_fifo_count[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_count[3]~13_combout\ = (\r_rd_rx~q\ $ (\uart_unit|receiver|r_rx_dv~q\)) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_rd_rx~q\,
	datac => \i_rst_sync~input_o\,
	datad => \uart_unit|receiver|r_rx_dv~q\,
	combout => \uart_unit|fifo_rx|r_fifo_count[3]~13_combout\);

-- Location: FF_X33_Y14_N7
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
	ena => \uart_unit|fifo_rx|r_fifo_count[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(0));

-- Location: LCCOMB_X33_Y14_N8
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

-- Location: FF_X33_Y14_N9
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
	ena => \uart_unit|fifo_rx|r_fifo_count[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(1));

-- Location: LCCOMB_X33_Y14_N10
\uart_unit|fifo_rx|r_fifo_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_count[2]~9_combout\ = ((\uart_unit|fifo_rx|p_control~0_combout\ $ (\uart_unit|fifo_rx|r_fifo_count\(2) $ (\uart_unit|fifo_rx|r_fifo_count[1]~8\)))) # (GND)
-- \uart_unit|fifo_rx|r_fifo_count[2]~10\ = CARRY((\uart_unit|fifo_rx|p_control~0_combout\ & (\uart_unit|fifo_rx|r_fifo_count\(2) & !\uart_unit|fifo_rx|r_fifo_count[1]~8\)) # (!\uart_unit|fifo_rx|p_control~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_count\(2)) 
-- # (!\uart_unit|fifo_rx|r_fifo_count[1]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|p_control~0_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_count\(2),
	datad => VCC,
	cin => \uart_unit|fifo_rx|r_fifo_count[1]~8\,
	combout => \uart_unit|fifo_rx|r_fifo_count[2]~9_combout\,
	cout => \uart_unit|fifo_rx|r_fifo_count[2]~10\);

-- Location: FF_X33_Y14_N11
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
	ena => \uart_unit|fifo_rx|r_fifo_count[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(2));

-- Location: LCCOMB_X33_Y14_N12
\uart_unit|fifo_rx|r_fifo_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_count[3]~11_combout\ = (\uart_unit|fifo_rx|p_control~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_count\(3) & (!\uart_unit|fifo_rx|r_fifo_count[2]~10\)) # (!\uart_unit|fifo_rx|r_fifo_count\(3) & 
-- ((\uart_unit|fifo_rx|r_fifo_count[2]~10\) # (GND))))) # (!\uart_unit|fifo_rx|p_control~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_count\(3) & (\uart_unit|fifo_rx|r_fifo_count[2]~10\ & VCC)) # (!\uart_unit|fifo_rx|r_fifo_count\(3) & 
-- (!\uart_unit|fifo_rx|r_fifo_count[2]~10\))))
-- \uart_unit|fifo_rx|r_fifo_count[3]~12\ = CARRY((\uart_unit|fifo_rx|p_control~0_combout\ & ((!\uart_unit|fifo_rx|r_fifo_count[2]~10\) # (!\uart_unit|fifo_rx|r_fifo_count\(3)))) # (!\uart_unit|fifo_rx|p_control~0_combout\ & 
-- (!\uart_unit|fifo_rx|r_fifo_count\(3) & !\uart_unit|fifo_rx|r_fifo_count[2]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|p_control~0_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_count\(3),
	datad => VCC,
	cin => \uart_unit|fifo_rx|r_fifo_count[2]~10\,
	combout => \uart_unit|fifo_rx|r_fifo_count[3]~11_combout\,
	cout => \uart_unit|fifo_rx|r_fifo_count[3]~12\);

-- Location: LCCOMB_X33_Y14_N14
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

-- Location: FF_X33_Y14_N15
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
	ena => \uart_unit|fifo_rx|r_fifo_count[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(4));

-- Location: LCCOMB_X33_Y14_N16
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

-- Location: LCCOMB_X33_Y14_N0
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

-- Location: LCCOMB_X39_Y15_N10
\uart_unit|fifo_rx|r_rd_index~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~1_combout\ = (\i_rst_sync~input_o\ & ((!\uart_unit|fifo_rx|Equal3~0_combout\) # (!\r_rd_rx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_rd_rx~q\,
	datac => \uart_unit|fifo_rx|Equal3~0_combout\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_rx|r_rd_index~1_combout\);

-- Location: LCCOMB_X39_Y15_N20
\uart_unit|fifo_rx|r_rd_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~0_combout\ = (\i_rst_sync~input_o\ & (\uart_unit|fifo_rx|r_rd_index\(0) $ (((\uart_unit|fifo_rx|Equal3~0_combout\ & \r_rd_rx~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Equal3~0_combout\,
	datab => \r_rd_rx~q\,
	datac => \uart_unit|fifo_rx|r_rd_index\(0),
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_rx|r_rd_index~0_combout\);

-- Location: FF_X39_Y15_N21
\uart_unit|fifo_rx|r_rd_index[0]\ : dffeas
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
	q => \uart_unit|fifo_rx|r_rd_index\(0));

-- Location: LCCOMB_X39_Y15_N22
\uart_unit|fifo_rx|r_rd_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~3_combout\ = (\uart_unit|fifo_rx|r_rd_index\(1) & ((\uart_unit|fifo_rx|r_rd_index~1_combout\) # ((!\uart_unit|fifo_rx|r_rd_index\(0) & \uart_unit|fifo_rx|r_rd_index~2_combout\)))) # (!\uart_unit|fifo_rx|r_rd_index\(1) & 
-- (\uart_unit|fifo_rx|r_rd_index\(0) & (\uart_unit|fifo_rx|r_rd_index~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index\(0),
	datab => \uart_unit|fifo_rx|r_rd_index~2_combout\,
	datac => \uart_unit|fifo_rx|r_rd_index\(1),
	datad => \uart_unit|fifo_rx|r_rd_index~1_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index~3_combout\);

-- Location: FF_X39_Y15_N23
\uart_unit|fifo_rx|r_rd_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_rd_index~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_rd_index\(1));

-- Location: LCCOMB_X39_Y15_N18
\uart_unit|fifo_rx|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add3~0_combout\ = \uart_unit|fifo_rx|r_rd_index\(2) $ (((\uart_unit|fifo_rx|r_rd_index\(0) & \uart_unit|fifo_rx|r_rd_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_rd_index\(0),
	datac => \uart_unit|fifo_rx|r_rd_index\(1),
	datad => \uart_unit|fifo_rx|r_rd_index\(2),
	combout => \uart_unit|fifo_rx|Add3~0_combout\);

-- Location: LCCOMB_X33_Y14_N18
\uart_unit|fifo_rx|p_control~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|p_control~1_combout\ = (\r_rd_rx~q\ & ((\uart_unit|fifo_rx|r_fifo_count\(3)) # ((\uart_unit|fifo_rx|r_fifo_count\(1)) # (!\uart_unit|fifo_rx|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(3),
	datab => \uart_unit|fifo_rx|r_fifo_count\(1),
	datac => \r_rd_rx~q\,
	datad => \uart_unit|fifo_rx|Equal2~0_combout\,
	combout => \uart_unit|fifo_rx|p_control~1_combout\);

-- Location: LCCOMB_X39_Y15_N28
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

-- Location: FF_X39_Y15_N29
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

-- Location: FF_X39_Y15_N25
\uart_unit|fifo_rx|r_rd_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_rd_index~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_rd_index\(3));

-- Location: LCCOMB_X39_Y15_N6
\uart_unit|fifo_rx|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Equal1~0_combout\ = (!\uart_unit|fifo_rx|r_rd_index\(2) & (\uart_unit|fifo_rx|r_rd_index\(3) & (!\uart_unit|fifo_rx|r_rd_index\(1) & \uart_unit|fifo_rx|r_rd_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index\(2),
	datab => \uart_unit|fifo_rx|r_rd_index\(3),
	datac => \uart_unit|fifo_rx|r_rd_index\(1),
	datad => \uart_unit|fifo_rx|r_rd_index\(0),
	combout => \uart_unit|fifo_rx|Equal1~0_combout\);

-- Location: LCCOMB_X39_Y15_N16
\uart_unit|fifo_rx|r_rd_index~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~2_combout\ = (!\uart_unit|fifo_rx|Equal1~0_combout\ & (\r_rd_rx~q\ & (\uart_unit|fifo_rx|Equal3~0_combout\ & \i_rst_sync~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Equal1~0_combout\,
	datab => \r_rd_rx~q\,
	datac => \uart_unit|fifo_rx|Equal3~0_combout\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_rx|r_rd_index~2_combout\);

-- Location: LCCOMB_X39_Y15_N0
\uart_unit|fifo_rx|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add3~1_combout\ = \uart_unit|fifo_rx|r_rd_index\(3) $ (((\uart_unit|fifo_rx|r_rd_index\(2) & (\uart_unit|fifo_rx|r_rd_index\(1) & \uart_unit|fifo_rx|r_rd_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index\(2),
	datab => \uart_unit|fifo_rx|r_rd_index\(3),
	datac => \uart_unit|fifo_rx|r_rd_index\(1),
	datad => \uart_unit|fifo_rx|r_rd_index\(0),
	combout => \uart_unit|fifo_rx|Add3~1_combout\);

-- Location: LCCOMB_X39_Y15_N24
\uart_unit|fifo_rx|r_rd_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_rd_index~5_combout\ = (\uart_unit|fifo_rx|r_rd_index~1_combout\ & ((\uart_unit|fifo_rx|r_rd_index\(3)) # ((\uart_unit|fifo_rx|r_rd_index~2_combout\ & \uart_unit|fifo_rx|Add3~1_combout\)))) # (!\uart_unit|fifo_rx|r_rd_index~1_combout\ 
-- & (\uart_unit|fifo_rx|r_rd_index~2_combout\ & ((\uart_unit|fifo_rx|Add3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_rd_index~1_combout\,
	datab => \uart_unit|fifo_rx|r_rd_index~2_combout\,
	datac => \uart_unit|fifo_rx|r_rd_index\(3),
	datad => \uart_unit|fifo_rx|Add3~1_combout\,
	combout => \uart_unit|fifo_rx|r_rd_index~5_combout\);

-- Location: LCCOMB_X39_Y15_N4
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

-- Location: FF_X39_Y15_N5
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

-- Location: LCCOMB_X38_Y15_N10
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

-- Location: LCCOMB_X38_Y15_N2
\uart_unit|fifo_rx|r_wr_index[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index[0]~1_combout\ = ((\uart_unit|receiver|r_rx_dv~q\ & !\uart_unit|fifo_rx|Equal2~1_combout\)) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_rst_sync~input_o\,
	datac => \uart_unit|receiver|r_rx_dv~q\,
	datad => \uart_unit|fifo_rx|Equal2~1_combout\,
	combout => \uart_unit|fifo_rx|r_wr_index[0]~1_combout\);

-- Location: FF_X38_Y15_N11
\uart_unit|fifo_rx|r_wr_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_wr_index~0_combout\,
	ena => \uart_unit|fifo_rx|r_wr_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_wr_index\(0));

-- Location: LCCOMB_X38_Y15_N16
\uart_unit|fifo_rx|r_wr_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index~3_combout\ = (\uart_unit|fifo_rx|r_wr_index[0]~2_combout\ & (\i_rst_sync~input_o\ & (\uart_unit|fifo_rx|r_wr_index\(0) $ (\uart_unit|fifo_rx|r_wr_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_wr_index\(0),
	datab => \uart_unit|fifo_rx|r_wr_index[0]~2_combout\,
	datac => \uart_unit|fifo_rx|r_wr_index\(1),
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_rx|r_wr_index~3_combout\);

-- Location: FF_X38_Y15_N17
\uart_unit|fifo_rx|r_wr_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_wr_index~3_combout\,
	ena => \uart_unit|fifo_rx|r_wr_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_wr_index\(1));

-- Location: LCCOMB_X38_Y15_N4
\uart_unit|fifo_rx|r_wr_index[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index[0]~2_combout\ = ((\uart_unit|fifo_rx|r_wr_index\(2)) # ((\uart_unit|fifo_rx|r_wr_index\(1)) # (!\uart_unit|fifo_rx|r_wr_index\(3)))) # (!\uart_unit|fifo_rx|r_wr_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_wr_index\(0),
	datab => \uart_unit|fifo_rx|r_wr_index\(2),
	datac => \uart_unit|fifo_rx|r_wr_index\(3),
	datad => \uart_unit|fifo_rx|r_wr_index\(1),
	combout => \uart_unit|fifo_rx|r_wr_index[0]~2_combout\);

-- Location: LCCOMB_X38_Y15_N26
\uart_unit|fifo_rx|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add2~0_combout\ = \uart_unit|fifo_rx|r_wr_index\(2) $ (((\uart_unit|fifo_rx|r_wr_index\(0) & \uart_unit|fifo_rx|r_wr_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_wr_index\(0),
	datab => \uart_unit|fifo_rx|r_wr_index\(2),
	datad => \uart_unit|fifo_rx|r_wr_index\(1),
	combout => \uart_unit|fifo_rx|Add2~0_combout\);

-- Location: LCCOMB_X38_Y15_N18
\uart_unit|fifo_rx|r_wr_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index~4_combout\ = (\uart_unit|fifo_rx|r_wr_index[0]~2_combout\ & (\uart_unit|fifo_rx|Add2~0_combout\ & \i_rst_sync~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_wr_index[0]~2_combout\,
	datac => \uart_unit|fifo_rx|Add2~0_combout\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_rx|r_wr_index~4_combout\);

-- Location: FF_X38_Y15_N19
\uart_unit|fifo_rx|r_wr_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_wr_index~4_combout\,
	ena => \uart_unit|fifo_rx|r_wr_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_wr_index\(2));

-- Location: LCCOMB_X38_Y15_N12
\uart_unit|fifo_rx|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add2~1_combout\ = \uart_unit|fifo_rx|r_wr_index\(3) $ (((\uart_unit|fifo_rx|r_wr_index\(0) & (\uart_unit|fifo_rx|r_wr_index\(2) & \uart_unit|fifo_rx|r_wr_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_wr_index\(0),
	datab => \uart_unit|fifo_rx|r_wr_index\(2),
	datac => \uart_unit|fifo_rx|r_wr_index\(3),
	datad => \uart_unit|fifo_rx|r_wr_index\(1),
	combout => \uart_unit|fifo_rx|Add2~1_combout\);

-- Location: LCCOMB_X38_Y15_N8
\uart_unit|fifo_rx|r_wr_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_index~5_combout\ = (\uart_unit|fifo_rx|Add2~1_combout\ & (\uart_unit|fifo_rx|r_wr_index[0]~2_combout\ & \i_rst_sync~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Add2~1_combout\,
	datac => \uart_unit|fifo_rx|r_wr_index[0]~2_combout\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_rx|r_wr_index~5_combout\);

-- Location: FF_X38_Y15_N9
\uart_unit|fifo_rx|r_wr_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_wr_index~5_combout\,
	ena => \uart_unit|fifo_rx|r_wr_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_wr_index\(3));

-- Location: FF_X38_Y15_N29
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

-- Location: FF_X38_Y15_N7
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

-- Location: LCCOMB_X39_Y15_N26
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[6]~feeder_combout\ = \uart_unit|fifo_rx|r_rd_index~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_rx|r_rd_index~4_combout\,
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X39_Y15_N27
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

-- Location: LCCOMB_X38_Y15_N6
\uart_unit|fifo_rx|r_fifo_data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~14_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(8) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(7) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(5) $ (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(6))))) # 
-- (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(8) & (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(7) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(5) $ (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(8),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(7),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(5),
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(6),
	combout => \uart_unit|fifo_rx|r_fifo_data~14_combout\);

-- Location: LCCOMB_X35_Y15_N28
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

-- Location: FF_X35_Y15_N29
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

-- Location: LCCOMB_X38_Y15_N24
\uart_unit|fifo_rx|r_fifo_data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~15_combout\ = (\uart_unit|receiver|r_rx_dv~q\ & \i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_rx_dv~q\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_rx|r_fifo_data~15_combout\);

-- Location: FF_X38_Y15_N25
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

-- Location: LCCOMB_X38_Y15_N14
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

-- Location: FF_X38_Y15_N15
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

-- Location: LCCOMB_X39_Y15_N8
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

-- Location: FF_X39_Y15_N9
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

-- Location: FF_X39_Y15_N31
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

-- Location: LCCOMB_X38_Y15_N20
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[1]~feeder_combout\ = \uart_unit|fifo_rx|r_wr_index\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_rx|r_wr_index\(0),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X38_Y15_N21
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(1));

-- Location: LCCOMB_X39_Y15_N30
\uart_unit|fifo_rx|r_fifo_data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data~13_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(3) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(4) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(2) $ (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(1))))) # 
-- (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(3) & (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(4) & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(2) $ (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(3),
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(4),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(2),
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(1),
	combout => \uart_unit|fifo_rx|r_fifo_data~13_combout\);

-- Location: LCCOMB_X35_Y15_N6
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(16) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(16),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X35_Y19_N28
\uart_unit|receiver|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Decoder0~1_combout\ = (!\uart_unit|receiver|r_bit_index\(0) & (!\uart_unit|receiver|r_bit_index\(1) & (!\uart_unit|receiver|r_bit_index\(2) & \uart_unit|receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_bit_index\(0),
	datab => \uart_unit|receiver|r_bit_index\(1),
	datac => \uart_unit|receiver|r_bit_index\(2),
	datad => \uart_unit|receiver|Decoder0~0_combout\,
	combout => \uart_unit|receiver|Decoder0~1_combout\);

-- Location: LCCOMB_X35_Y19_N6
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

-- Location: FF_X35_Y19_N7
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

-- Location: LCCOMB_X36_Y19_N16
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

-- Location: LCCOMB_X36_Y19_N28
\uart_unit|receiver|r_rx_byte[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[1]~7_combout\ = (\uart_unit|receiver|Decoder0~8_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~8_combout\ & ((\uart_unit|receiver|r_rx_byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(1),
	datad => \uart_unit|receiver|Decoder0~8_combout\,
	combout => \uart_unit|receiver|r_rx_byte[1]~7_combout\);

-- Location: FF_X36_Y19_N29
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

-- Location: LCCOMB_X36_Y19_N10
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

-- Location: LCCOMB_X36_Y19_N22
\uart_unit|receiver|r_rx_byte[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[2]~6_combout\ = (\uart_unit|receiver|Decoder0~7_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~7_combout\ & ((\uart_unit|receiver|r_rx_byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(2),
	datad => \uart_unit|receiver|Decoder0~7_combout\,
	combout => \uart_unit|receiver|r_rx_byte[2]~6_combout\);

-- Location: FF_X36_Y19_N23
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

-- Location: LCCOMB_X36_Y19_N12
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

-- Location: LCCOMB_X36_Y19_N8
\uart_unit|receiver|r_rx_byte[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[4]~2_combout\ = (\uart_unit|receiver|Decoder0~3_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~3_combout\ & ((\uart_unit|receiver|r_rx_byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(4),
	datad => \uart_unit|receiver|Decoder0~3_combout\,
	combout => \uart_unit|receiver|r_rx_byte[4]~2_combout\);

-- Location: FF_X36_Y19_N9
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

-- Location: LCCOMB_X36_Y19_N6
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

-- Location: LCCOMB_X36_Y19_N14
\uart_unit|receiver|r_rx_byte[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[5]~1_combout\ = (\uart_unit|receiver|Decoder0~2_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~2_combout\ & ((\uart_unit|receiver|r_rx_byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(5),
	datad => \uart_unit|receiver|Decoder0~2_combout\,
	combout => \uart_unit|receiver|r_rx_byte[5]~1_combout\);

-- Location: FF_X36_Y19_N15
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

-- Location: LCCOMB_X36_Y19_N24
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

-- Location: LCCOMB_X36_Y19_N4
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

-- Location: FF_X36_Y19_N5
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

-- Location: LCCOMB_X36_Y19_N2
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

-- Location: LCCOMB_X36_Y19_N26
\uart_unit|receiver|r_rx_byte[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_rx_byte[7]~3_combout\ = (\uart_unit|receiver|Decoder0~4_combout\ & (\uart_unit|receiver|r_rx_data~q\)) # (!\uart_unit|receiver|Decoder0~4_combout\ & ((\uart_unit|receiver|r_rx_byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_rx_data~q\,
	datac => \uart_unit|receiver|r_rx_byte\(7),
	datad => \uart_unit|receiver|Decoder0~4_combout\,
	combout => \uart_unit|receiver|r_rx_byte[7]~3_combout\);

-- Location: FF_X36_Y19_N27
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

-- Location: M9K_X37_Y15_N0
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

-- Location: LCCOMB_X36_Y15_N12
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector7~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\))) # (!\Selector7~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_get_fifo_data~q\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(15),
	datac => \Selector7~0_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X36_Y15_N0
\r_wr_tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_wr_tx~0_combout\ = (\r_sm.s_clear~q\) # (\r_sm.s_get_fifo_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => \r_sm.s_get_fifo_data~q\,
	combout => \r_wr_tx~0_combout\);

-- Location: FF_X36_Y15_N13
\r_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_wr_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(3));

-- Location: LCCOMB_X35_Y15_N24
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

-- Location: FF_X35_Y15_N25
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

-- Location: LCCOMB_X35_Y15_N18
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(12) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(12),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X36_Y15_N2
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

-- Location: FF_X36_Y15_N3
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

-- Location: LCCOMB_X36_Y15_N8
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector9~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\))) # (!\Selector9~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_get_fifo_data~q\,
	datab => \Selector9~0_combout\,
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(11),
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\,
	combout => \Selector9~1_combout\);

-- Location: FF_X36_Y15_N9
\r_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector9~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_wr_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(1));

-- Location: LCCOMB_X35_Y15_N12
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

-- Location: FF_X35_Y15_N13
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

-- Location: LCCOMB_X35_Y15_N14
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(14) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(14),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X36_Y15_N24
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\ = \uart_unit|receiver|r_rx_byte\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_rx_byte\(2),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X36_Y15_N25
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(13));

-- Location: LCCOMB_X36_Y15_N14
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector8~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\))) # (!\Selector8~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(13),
	datac => \r_sm.s_get_fifo_data~q\,
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\,
	combout => \Selector8~1_combout\);

-- Location: FF_X36_Y15_N15
\r_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector8~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_wr_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(2));

-- Location: LCCOMB_X36_Y15_N6
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\ = \uart_unit|receiver|r_rx_byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_rx_byte\(5),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[19]~feeder_combout\);

-- Location: FF_X36_Y15_N7
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

-- Location: LCCOMB_X35_Y15_N2
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

-- Location: FF_X35_Y15_N3
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

-- Location: LCCOMB_X35_Y15_N20
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(20) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(20),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X36_Y15_N26
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector5~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\))) # (!\Selector5~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(19),
	datab => \Selector5~0_combout\,
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\,
	datad => \r_sm.s_get_fifo_data~q\,
	combout => \Selector5~1_combout\);

-- Location: FF_X36_Y15_N27
\r_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_wr_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(5));

-- Location: LCCOMB_X36_Y15_N22
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

-- Location: FF_X36_Y15_N23
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

-- Location: LCCOMB_X35_Y15_N4
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

-- Location: FF_X35_Y15_N5
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

-- Location: LCCOMB_X35_Y15_N22
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(22) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(22),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X36_Y15_N20
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector4~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\))) # (!\Selector4~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(21),
	datab => \Selector4~0_combout\,
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\,
	datad => \r_sm.s_get_fifo_data~q\,
	combout => \Selector4~1_combout\);

-- Location: FF_X36_Y15_N21
\r_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_wr_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(6));

-- Location: LCCOMB_X34_Y15_N24
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

-- Location: FF_X34_Y15_N25
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

-- Location: LCCOMB_X35_Y15_N10
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(18) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(18),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X36_Y19_N21
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_rx_byte\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(17));

-- Location: LCCOMB_X36_Y15_N4
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector6~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\))) # (!\Selector6~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \r_sm.s_get_fifo_data~q\,
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(17),
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\,
	combout => \Selector6~1_combout\);

-- Location: FF_X36_Y15_N5
\r_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_wr_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(4));

-- Location: LCCOMB_X36_Y15_N16
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[23]~feeder_combout\ = \uart_unit|receiver|r_rx_byte\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_rx_byte\(7),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X36_Y15_N17
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

-- Location: LCCOMB_X35_Y15_N0
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

-- Location: FF_X35_Y15_N1
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

-- Location: LCCOMB_X35_Y15_N26
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(24) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(24),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X36_Y15_N18
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector3~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\))) # (!\Selector3~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(23),
	datab => \r_sm.s_get_fifo_data~q\,
	datac => \Selector3~0_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\,
	combout => \Selector3~1_combout\);

-- Location: FF_X36_Y15_N19
\r_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_wr_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(7));

-- Location: LCCOMB_X36_Y15_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (r_data(5) & (!r_data(6) & (r_data(4) & !r_data(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data(5),
	datab => r_data(6),
	datac => r_data(4),
	datad => r_data(7),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X36_Y15_N30
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

-- Location: LCCOMB_X18_Y9_N0
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

-- Location: LCCOMB_X18_Y10_N28
\r_index[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_index[0]~4_combout\ = (\r_index[31]~1_combout\ & (!\Equal2~10_combout\ & (\Add1~0_combout\))) # (!\r_index[31]~1_combout\ & (((r_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Add1~0_combout\,
	datac => r_index(0),
	datad => \r_index[31]~1_combout\,
	combout => \r_index[0]~4_combout\);

-- Location: FF_X18_Y10_N29
\r_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_index[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(0));

-- Location: LCCOMB_X18_Y9_N2
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

-- Location: FF_X18_Y9_N3
\r_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(1));

-- Location: LCCOMB_X18_Y9_N4
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

-- Location: LCCOMB_X18_Y9_N6
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

-- Location: FF_X18_Y9_N7
\r_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(3));

-- Location: LCCOMB_X18_Y9_N8
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

-- Location: FF_X18_Y9_N9
\r_index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(4));

-- Location: LCCOMB_X18_Y9_N10
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

-- Location: LCCOMB_X18_Y10_N14
\r_index[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_index[5]~3_combout\ = (\r_index[31]~1_combout\ & (!\Equal2~10_combout\ & (\Add1~10_combout\))) # (!\r_index[31]~1_combout\ & (((r_index(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Add1~10_combout\,
	datac => r_index(5),
	datad => \r_index[31]~1_combout\,
	combout => \r_index[5]~3_combout\);

-- Location: FF_X18_Y10_N15
\r_index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_index[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(5));

-- Location: LCCOMB_X18_Y9_N12
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

-- Location: FF_X18_Y9_N13
\r_index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(6));

-- Location: LCCOMB_X18_Y9_N14
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

-- Location: FF_X17_Y10_N9
\r_index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Add1~14_combout\,
	sload => VCC,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(7));

-- Location: LCCOMB_X18_Y9_N16
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

-- Location: FF_X18_Y9_N17
\r_index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(8));

-- Location: LCCOMB_X18_Y9_N18
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

-- Location: FF_X18_Y10_N1
\r_index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Add1~18_combout\,
	sload => VCC,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(9));

-- Location: LCCOMB_X18_Y9_N20
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

-- Location: FF_X18_Y9_N21
\r_index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(10));

-- Location: LCCOMB_X18_Y9_N22
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

-- Location: FF_X18_Y10_N7
\r_index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Add1~22_combout\,
	sload => VCC,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(11));

-- Location: LCCOMB_X18_Y9_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (r_index(12) & (\Add1~23\ $ (GND))) # (!r_index(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((r_index(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X18_Y10_N17
\r_index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Add1~24_combout\,
	sload => VCC,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(12));

-- Location: LCCOMB_X18_Y9_N26
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

-- Location: FF_X18_Y9_N27
\r_index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(13));

-- Location: LCCOMB_X18_Y9_N28
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

-- Location: FF_X18_Y9_N29
\r_index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(14));

-- Location: LCCOMB_X18_Y9_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (r_index(15) & (!\Add1~29\)) # (!r_index(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!r_index(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X18_Y10_N31
\r_index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \Add1~30_combout\,
	sload => VCC,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(15));

-- Location: LCCOMB_X18_Y8_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (r_index(16) & (\Add1~31\ $ (GND))) # (!r_index(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((r_index(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X18_Y8_N1
\r_index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(16));

-- Location: LCCOMB_X18_Y8_N2
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

-- Location: FF_X18_Y8_N3
\r_index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~34_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(17));

-- Location: LCCOMB_X18_Y8_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (r_index(18) & (\Add1~35\ $ (GND))) # (!r_index(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((r_index(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X18_Y8_N5
\r_index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(18));

-- Location: LCCOMB_X18_Y8_N6
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

-- Location: FF_X18_Y8_N7
\r_index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(19));

-- Location: LCCOMB_X18_Y8_N8
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

-- Location: FF_X18_Y8_N9
\r_index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~40_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(20));

-- Location: LCCOMB_X18_Y8_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (r_index(21) & (!\Add1~41\)) # (!r_index(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!r_index(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X18_Y8_N11
\r_index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~42_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(21));

-- Location: LCCOMB_X18_Y8_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (r_index(22) & (\Add1~43\ $ (GND))) # (!r_index(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((r_index(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X18_Y8_N13
\r_index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~44_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(22));

-- Location: LCCOMB_X18_Y8_N14
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

-- Location: FF_X18_Y8_N15
\r_index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~46_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(23));

-- Location: LCCOMB_X18_Y8_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (r_index(24) & (\Add1~47\ $ (GND))) # (!r_index(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((r_index(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_index(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X18_Y8_N17
\r_index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(24));

-- Location: LCCOMB_X18_Y8_N18
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

-- Location: FF_X18_Y8_N19
\r_index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~50_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(25));

-- Location: LCCOMB_X18_Y8_N20
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

-- Location: FF_X18_Y8_N21
\r_index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~52_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(26));

-- Location: LCCOMB_X18_Y8_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (r_index(27) & (!\Add1~53\)) # (!r_index(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!r_index(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_index(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X18_Y8_N23
\r_index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~54_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(27));

-- Location: LCCOMB_X18_Y8_N24
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

-- Location: FF_X18_Y8_N25
\r_index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(28));

-- Location: LCCOMB_X18_Y8_N26
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

-- Location: FF_X18_Y8_N27
\r_index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~58_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(29));

-- Location: LCCOMB_X18_Y8_N28
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

-- Location: FF_X18_Y8_N29
\r_index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~60_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(30));

-- Location: LCCOMB_X18_Y8_N30
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

-- Location: FF_X18_Y8_N31
\r_index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Add1~62_combout\,
	ena => \r_index[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(31));

-- Location: LCCOMB_X18_Y10_N6
\Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (r_index(5) & (!r_index(4) & !r_index(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(5),
	datab => r_index(4),
	datad => r_index(31),
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X18_Y10_N0
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!r_index(7) & (!r_index(10) & (!r_index(9) & !r_index(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(7),
	datab => r_index(10),
	datac => r_index(9),
	datad => r_index(8),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X18_Y10_N4
\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!r_index(27) & (!r_index(30) & (!r_index(29) & !r_index(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(27),
	datab => r_index(30),
	datac => r_index(29),
	datad => r_index(28),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X19_Y10_N10
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!r_index(24) & (!r_index(25) & (!r_index(23) & !r_index(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(24),
	datab => r_index(25),
	datac => r_index(23),
	datad => r_index(26),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X19_Y10_N8
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!r_index(12) & (!r_index(11) & (!r_index(13) & !r_index(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(12),
	datab => r_index(11),
	datac => r_index(13),
	datad => r_index(14),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X19_Y10_N30
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!r_index(16) & (!r_index(15) & (!r_index(17) & !r_index(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(16),
	datab => r_index(15),
	datac => r_index(17),
	datad => r_index(18),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X19_Y10_N12
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!r_index(22) & (!r_index(20) & (!r_index(19) & !r_index(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(22),
	datab => r_index(20),
	datac => r_index(19),
	datad => r_index(21),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X19_Y10_N22
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~0_combout\ & (\Equal2~3_combout\ & (\Equal2~2_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X18_Y10_N2
\Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!r_index(6) & (\Equal2~5_combout\ & (\Equal2~6_combout\ & \Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(6),
	datab => \Equal2~5_combout\,
	datac => \Equal2~6_combout\,
	datad => \Equal2~4_combout\,
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X18_Y10_N30
\Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~9_combout\ & (\Equal2~7_combout\ & \Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datab => \Equal2~7_combout\,
	datad => \Equal2~8_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X18_Y10_N8
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!r_index(5) & (((!r_index(2) & !r_index(3))) # (!r_index(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(5),
	datac => r_index(4),
	datad => r_index(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X18_Y10_N22
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!r_index(6) & (\LessThan0~0_combout\ & (\Equal2~5_combout\ & \Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(6),
	datab => \LessThan0~0_combout\,
	datac => \Equal2~5_combout\,
	datad => \Equal2~4_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X18_Y10_N26
\p_write_sram~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_write_sram~0_combout\ = (r_index(5) & ((r_index(2)) # ((r_index(4)) # (r_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(5),
	datac => r_index(4),
	datad => r_index(3),
	combout => \p_write_sram~0_combout\);

-- Location: LCCOMB_X18_Y10_N16
\p_write_sram~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_write_sram~1_combout\ = (r_index(6)) # ((\LessThan0~0_combout\) # (!\Equal2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(6),
	datab => \LessThan0~0_combout\,
	datad => \Equal2~5_combout\,
	combout => \p_write_sram~1_combout\);

-- Location: LCCOMB_X18_Y10_N20
\p_write_sram~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_write_sram~2_combout\ = (\p_write_sram~0_combout\) # ((\p_write_sram~1_combout\) # ((!\Equal2~4_combout\) # (!\Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_write_sram~0_combout\,
	datab => \p_write_sram~1_combout\,
	datac => \Equal2~6_combout\,
	datad => \Equal2~4_combout\,
	combout => \p_write_sram~2_combout\);

-- Location: LCCOMB_X18_Y10_N24
\r_index[27]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_index[27]~0_combout\ = (!r_index(31) & (\p_write_sram~2_combout\ & ((!\LessThan0~1_combout\) # (!\Equal2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(31),
	datab => \Equal2~6_combout\,
	datac => \LessThan0~1_combout\,
	datad => \p_write_sram~2_combout\,
	combout => \r_index[27]~0_combout\);

-- Location: LCCOMB_X18_Y10_N10
\r_index[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_index[31]~1_combout\ = (\r_sram_data[0]~0_combout\ & ((\Equal2~10_combout\) # ((\Equal0~1_combout\ & !\r_index[27]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sram_data[0]~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal2~10_combout\,
	datad => \r_index[27]~0_combout\,
	combout => \r_index[31]~1_combout\);

-- Location: LCCOMB_X18_Y10_N12
\r_index[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_index[2]~2_combout\ = (\r_index[31]~1_combout\ & (\Add1~4_combout\ & ((!\Equal2~10_combout\)))) # (!\r_index[31]~1_combout\ & (((r_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_index[31]~1_combout\,
	datab => \Add1~4_combout\,
	datac => r_index(2),
	datad => \Equal2~10_combout\,
	combout => \r_index[2]~2_combout\);

-- Location: FF_X18_Y10_N13
\r_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_index[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_index(2));

-- Location: LCCOMB_X19_Y10_N24
\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (r_index(2) & (!r_index(1) & (!r_index(3) & !r_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(1),
	datac => r_index(3),
	datad => r_index(0),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X20_Y10_N16
\r_sm~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sm~9_combout\ = (\Equal2~7_combout\ & (\r_sm.s_process~q\ & (\Equal2~9_combout\ & \Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~7_combout\,
	datab => \r_sm.s_process~q\,
	datac => \Equal2~9_combout\,
	datad => \Equal2~8_combout\,
	combout => \r_sm~9_combout\);

-- Location: FF_X20_Y10_N17
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

-- Location: LCCOMB_X20_Y10_N28
\r_sm.s_clear~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sm.s_clear~feeder_combout\ = \r_sm.s_write_sram~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_sm.s_write_sram~q\,
	combout => \r_sm.s_clear~feeder_combout\);

-- Location: FF_X20_Y10_N29
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

-- Location: LCCOMB_X33_Y14_N20
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\uart_unit|fifo_rx|r_fifo_count\(3) & (!\uart_unit|fifo_rx|r_fifo_count\(1) & (!\r_sm.s_idle~q\ & \uart_unit|fifo_rx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(3),
	datab => \uart_unit|fifo_rx|r_fifo_count\(1),
	datac => \r_sm.s_idle~q\,
	datad => \uart_unit|fifo_rx|Equal2~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X17_Y10_N2
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\r_sm.s_clear~q\ & (!\Selector2~0_combout\ & ((\Equal2~10_combout\) # (!\r_sm.s_process~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_process~q\,
	datab => \r_sm.s_clear~q\,
	datac => \Equal2~10_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X17_Y10_N3
\r_sm.s_idle\ : dffeas
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
	q => \r_sm.s_idle~q\);

-- Location: LCCOMB_X33_Y14_N22
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\r_sm.s_idle~q\ & ((\uart_unit|fifo_rx|r_fifo_count\(3)) # ((\uart_unit|fifo_rx|r_fifo_count\(1)) # (!\uart_unit|fifo_rx|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_count\(3),
	datab => \r_sm.s_idle~q\,
	datac => \uart_unit|fifo_rx|r_fifo_count\(1),
	datad => \uart_unit|fifo_rx|Equal2~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X33_Y14_N23
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

-- Location: LCCOMB_X33_Y14_N4
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\r_sm.s_idle~q\ & (!\r_sm.s_get_fifo_data~q\ & (\r_rd_rx~q\))) # (!\r_sm.s_idle~q\ & (((\uart_unit|fifo_rx|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_get_fifo_data~q\,
	datab => \r_sm.s_idle~q\,
	datac => \r_rd_rx~q\,
	datad => \uart_unit|fifo_rx|Equal3~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X33_Y14_N5
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

-- Location: LCCOMB_X33_Y14_N30
\uart_unit|fifo_rx|p_control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|p_control~0_combout\ = (!\r_rd_rx~q\ & \uart_unit|receiver|r_rx_dv~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_rd_rx~q\,
	datad => \uart_unit|receiver|r_rx_dv~q\,
	combout => \uart_unit|fifo_rx|p_control~0_combout\);

-- Location: FF_X33_Y14_N13
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
	ena => \uart_unit|fifo_rx|r_fifo_count[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_fifo_count\(3));

-- Location: LCCOMB_X33_Y14_N26
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

-- Location: LCCOMB_X17_Y10_N10
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (r_index(31)) # ((\Equal2~6_combout\ & \LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~6_combout\,
	datab => r_index(31),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y10_N0
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\r_wr_tx~q\ & ((\r_sm.s_get_fifo_data~q\) # ((\r_sm.s_process~q\) # (\r_sm.s_clear~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sm.s_get_fifo_data~q\,
	datab => \r_wr_tx~q\,
	datac => \r_sm.s_process~q\,
	datad => \r_sm.s_clear~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X17_Y10_N28
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\r_sm.s_process~q\ & !\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_process~q\,
	datad => \Equal0~1_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X17_Y10_N14
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~0_combout\) # ((\Selector1~1_combout\ & ((\LessThan0~2_combout\) # (!\p_write_sram~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \Selector1~0_combout\,
	datac => \p_write_sram~2_combout\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: FF_X17_Y10_N15
r_wr_tx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector1~2_combout\,
	clrn => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_wr_tx~q\);

-- Location: LCCOMB_X48_Y15_N2
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

-- Location: LCCOMB_X48_Y15_N24
\uart_unit|transmitter|r_clk_count[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[11]~36_combout\ = (\uart_unit|transmitter|r_clk_count\(11) & (!\uart_unit|transmitter|r_clk_count[10]~35\)) # (!\uart_unit|transmitter|r_clk_count\(11) & ((\uart_unit|transmitter|r_clk_count[10]~35\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[11]~37\ = CARRY((!\uart_unit|transmitter|r_clk_count[10]~35\) # (!\uart_unit|transmitter|r_clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(11),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[10]~35\,
	combout => \uart_unit|transmitter|r_clk_count[11]~36_combout\,
	cout => \uart_unit|transmitter|r_clk_count[11]~37\);

-- Location: LCCOMB_X48_Y15_N26
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

-- Location: FF_X48_Y15_N27
\uart_unit|transmitter|r_clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[12]~38_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[11]~21_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(12));

-- Location: LCCOMB_X49_Y15_N22
\uart_unit|transmitter|r_clk_count[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[11]~21_combout\ = ((!\uart_unit|transmitter|LessThan1~2_combout\ & \uart_unit|transmitter|r_clk_count\(12))) # (!\uart_unit|transmitter|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|LessThan1~2_combout\,
	datac => \uart_unit|transmitter|r_clk_count\(12),
	datad => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	combout => \uart_unit|transmitter|r_clk_count[11]~21_combout\);

-- Location: FF_X48_Y15_N3
\uart_unit|transmitter|r_clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[0]~13_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[11]~21_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(0));

-- Location: LCCOMB_X48_Y15_N4
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

-- Location: FF_X48_Y15_N5
\uart_unit|transmitter|r_clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[1]~15_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[11]~21_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(1));

-- Location: LCCOMB_X48_Y15_N6
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

-- Location: FF_X48_Y15_N7
\uart_unit|transmitter|r_clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[2]~17_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[11]~21_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(2));

-- Location: LCCOMB_X48_Y15_N8
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

-- Location: FF_X48_Y15_N9
\uart_unit|transmitter|r_clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[3]~19_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[11]~21_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(3));

-- Location: LCCOMB_X48_Y15_N10
\uart_unit|transmitter|r_clk_count[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[4]~22_combout\ = (\uart_unit|transmitter|r_clk_count\(4) & (\uart_unit|transmitter|r_clk_count[3]~20\ $ (GND))) # (!\uart_unit|transmitter|r_clk_count\(4) & (!\uart_unit|transmitter|r_clk_count[3]~20\ & VCC))
-- \uart_unit|transmitter|r_clk_count[4]~23\ = CARRY((\uart_unit|transmitter|r_clk_count\(4) & !\uart_unit|transmitter|r_clk_count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(4),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[3]~20\,
	combout => \uart_unit|transmitter|r_clk_count[4]~22_combout\,
	cout => \uart_unit|transmitter|r_clk_count[4]~23\);

-- Location: FF_X48_Y15_N11
\uart_unit|transmitter|r_clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[4]~22_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[11]~21_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(4));

-- Location: LCCOMB_X48_Y15_N12
\uart_unit|transmitter|r_clk_count[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[5]~24_combout\ = (\uart_unit|transmitter|r_clk_count\(5) & (!\uart_unit|transmitter|r_clk_count[4]~23\)) # (!\uart_unit|transmitter|r_clk_count\(5) & ((\uart_unit|transmitter|r_clk_count[4]~23\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[5]~25\ = CARRY((!\uart_unit|transmitter|r_clk_count[4]~23\) # (!\uart_unit|transmitter|r_clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(5),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[4]~23\,
	combout => \uart_unit|transmitter|r_clk_count[5]~24_combout\,
	cout => \uart_unit|transmitter|r_clk_count[5]~25\);

-- Location: FF_X48_Y15_N13
\uart_unit|transmitter|r_clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[5]~24_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[11]~21_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(5));

-- Location: LCCOMB_X48_Y15_N14
\uart_unit|transmitter|r_clk_count[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[6]~26_combout\ = (\uart_unit|transmitter|r_clk_count\(6) & (\uart_unit|transmitter|r_clk_count[5]~25\ $ (GND))) # (!\uart_unit|transmitter|r_clk_count\(6) & (!\uart_unit|transmitter|r_clk_count[5]~25\ & VCC))
-- \uart_unit|transmitter|r_clk_count[6]~27\ = CARRY((\uart_unit|transmitter|r_clk_count\(6) & !\uart_unit|transmitter|r_clk_count[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(6),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[5]~25\,
	combout => \uart_unit|transmitter|r_clk_count[6]~26_combout\,
	cout => \uart_unit|transmitter|r_clk_count[6]~27\);

-- Location: FF_X48_Y15_N15
\uart_unit|transmitter|r_clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[6]~26_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[11]~21_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(6));

-- Location: LCCOMB_X48_Y15_N16
\uart_unit|transmitter|r_clk_count[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[7]~28_combout\ = (\uart_unit|transmitter|r_clk_count\(7) & (!\uart_unit|transmitter|r_clk_count[6]~27\)) # (!\uart_unit|transmitter|r_clk_count\(7) & ((\uart_unit|transmitter|r_clk_count[6]~27\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[7]~29\ = CARRY((!\uart_unit|transmitter|r_clk_count[6]~27\) # (!\uart_unit|transmitter|r_clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(7),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[6]~27\,
	combout => \uart_unit|transmitter|r_clk_count[7]~28_combout\,
	cout => \uart_unit|transmitter|r_clk_count[7]~29\);

-- Location: FF_X48_Y15_N17
\uart_unit|transmitter|r_clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[7]~28_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[11]~21_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(7));

-- Location: LCCOMB_X48_Y15_N18
\uart_unit|transmitter|r_clk_count[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[8]~30_combout\ = (\uart_unit|transmitter|r_clk_count\(8) & (\uart_unit|transmitter|r_clk_count[7]~29\ $ (GND))) # (!\uart_unit|transmitter|r_clk_count\(8) & (!\uart_unit|transmitter|r_clk_count[7]~29\ & VCC))
-- \uart_unit|transmitter|r_clk_count[8]~31\ = CARRY((\uart_unit|transmitter|r_clk_count\(8) & !\uart_unit|transmitter|r_clk_count[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(8),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[7]~29\,
	combout => \uart_unit|transmitter|r_clk_count[8]~30_combout\,
	cout => \uart_unit|transmitter|r_clk_count[8]~31\);

-- Location: FF_X48_Y15_N19
\uart_unit|transmitter|r_clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[8]~30_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[11]~21_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(8));

-- Location: LCCOMB_X48_Y15_N20
\uart_unit|transmitter|r_clk_count[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[9]~32_combout\ = (\uart_unit|transmitter|r_clk_count\(9) & (!\uart_unit|transmitter|r_clk_count[8]~31\)) # (!\uart_unit|transmitter|r_clk_count\(9) & ((\uart_unit|transmitter|r_clk_count[8]~31\) # (GND)))
-- \uart_unit|transmitter|r_clk_count[9]~33\ = CARRY((!\uart_unit|transmitter|r_clk_count[8]~31\) # (!\uart_unit|transmitter|r_clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_clk_count\(9),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[8]~31\,
	combout => \uart_unit|transmitter|r_clk_count[9]~32_combout\,
	cout => \uart_unit|transmitter|r_clk_count[9]~33\);

-- Location: FF_X48_Y15_N21
\uart_unit|transmitter|r_clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[9]~32_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[11]~21_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(9));

-- Location: LCCOMB_X48_Y15_N22
\uart_unit|transmitter|r_clk_count[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_clk_count[10]~34_combout\ = (\uart_unit|transmitter|r_clk_count\(10) & (\uart_unit|transmitter|r_clk_count[9]~33\ $ (GND))) # (!\uart_unit|transmitter|r_clk_count\(10) & (!\uart_unit|transmitter|r_clk_count[9]~33\ & VCC))
-- \uart_unit|transmitter|r_clk_count[10]~35\ = CARRY((\uart_unit|transmitter|r_clk_count\(10) & !\uart_unit|transmitter|r_clk_count[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(10),
	datad => VCC,
	cin => \uart_unit|transmitter|r_clk_count[9]~33\,
	combout => \uart_unit|transmitter|r_clk_count[10]~34_combout\,
	cout => \uart_unit|transmitter|r_clk_count[10]~35\);

-- Location: FF_X48_Y15_N23
\uart_unit|transmitter|r_clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[10]~34_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[11]~21_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(10));

-- Location: FF_X48_Y15_N25
\uart_unit|transmitter|r_clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_clk_count[11]~36_combout\,
	sclr => \uart_unit|transmitter|r_clk_count[11]~21_combout\,
	ena => \uart_unit|transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_clk_count\(11));

-- Location: LCCOMB_X48_Y15_N0
\uart_unit|transmitter|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|LessThan1~1_combout\ = (!\uart_unit|transmitter|r_clk_count\(9) & (!\uart_unit|transmitter|r_clk_count\(8) & (!\uart_unit|transmitter|r_clk_count\(11) & !\uart_unit|transmitter|r_clk_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(9),
	datab => \uart_unit|transmitter|r_clk_count\(8),
	datac => \uart_unit|transmitter|r_clk_count\(11),
	datad => \uart_unit|transmitter|r_clk_count\(7),
	combout => \uart_unit|transmitter|LessThan1~1_combout\);

-- Location: LCCOMB_X48_Y15_N28
\uart_unit|transmitter|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|LessThan1~0_combout\ = ((!\uart_unit|transmitter|r_clk_count\(5) & ((!\uart_unit|transmitter|r_clk_count\(3)) # (!\uart_unit|transmitter|r_clk_count\(4))))) # (!\uart_unit|transmitter|r_clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(4),
	datab => \uart_unit|transmitter|r_clk_count\(6),
	datac => \uart_unit|transmitter|r_clk_count\(3),
	datad => \uart_unit|transmitter|r_clk_count\(5),
	combout => \uart_unit|transmitter|LessThan1~0_combout\);

-- Location: LCCOMB_X48_Y15_N30
\uart_unit|transmitter|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|LessThan1~2_combout\ = (\uart_unit|transmitter|r_clk_count\(11) & (\uart_unit|transmitter|LessThan1~1_combout\ & ((\uart_unit|transmitter|LessThan1~0_combout\)))) # (!\uart_unit|transmitter|r_clk_count\(11) & 
-- (((\uart_unit|transmitter|LessThan1~1_combout\ & \uart_unit|transmitter|LessThan1~0_combout\)) # (!\uart_unit|transmitter|r_clk_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_clk_count\(11),
	datab => \uart_unit|transmitter|LessThan1~1_combout\,
	datac => \uart_unit|transmitter|r_clk_count\(10),
	datad => \uart_unit|transmitter|LessThan1~0_combout\,
	combout => \uart_unit|transmitter|LessThan1~2_combout\);

-- Location: LCCOMB_X49_Y15_N28
\uart_unit|transmitter|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector2~0_combout\ = (\uart_unit|transmitter|r_tx_done~q\ & ((\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\) # ((\uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\) # (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	datab => \uart_unit|transmitter|r_tx_done~q\,
	datac => \uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\,
	datad => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	combout => \uart_unit|transmitter|Selector2~0_combout\);

-- Location: LCCOMB_X49_Y15_N12
\uart_unit|transmitter|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector2~1_combout\ = (\uart_unit|transmitter|Selector2~0_combout\) # ((\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\ & (!\uart_unit|transmitter|LessThan1~2_combout\ & \uart_unit|transmitter|r_clk_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	datab => \uart_unit|transmitter|LessThan1~2_combout\,
	datac => \uart_unit|transmitter|r_clk_count\(12),
	datad => \uart_unit|transmitter|Selector2~0_combout\,
	combout => \uart_unit|transmitter|Selector2~1_combout\);

-- Location: FF_X49_Y15_N13
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

-- Location: LCCOMB_X49_Y13_N30
\uart_unit|fifo_tx|p_control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|p_control~0_combout\ = (\r_wr_tx~q\ & !\uart_unit|transmitter|r_tx_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_wr_tx~q\,
	datad => \uart_unit|transmitter|r_tx_done~q\,
	combout => \uart_unit|fifo_tx|p_control~0_combout\);

-- Location: LCCOMB_X49_Y13_N16
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

-- Location: LCCOMB_X49_Y13_N28
\uart_unit|fifo_tx|r_fifo_count[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[1]~13_combout\ = (\r_wr_tx~q\ $ (\uart_unit|transmitter|r_tx_done~q\)) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_rst_sync~input_o\,
	datac => \r_wr_tx~q\,
	datad => \uart_unit|transmitter|r_tx_done~q\,
	combout => \uart_unit|fifo_tx|r_fifo_count[1]~13_combout\);

-- Location: FF_X49_Y13_N17
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

-- Location: LCCOMB_X49_Y13_N18
\uart_unit|fifo_tx|r_fifo_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[1]~7_combout\ = (\uart_unit|fifo_tx|p_control~0_combout\ & ((\uart_unit|fifo_tx|r_fifo_count\(1) & (!\uart_unit|fifo_tx|r_fifo_count[0]~6\)) # (!\uart_unit|fifo_tx|r_fifo_count\(1) & ((\uart_unit|fifo_tx|r_fifo_count[0]~6\) 
-- # (GND))))) # (!\uart_unit|fifo_tx|p_control~0_combout\ & ((\uart_unit|fifo_tx|r_fifo_count\(1) & (\uart_unit|fifo_tx|r_fifo_count[0]~6\ & VCC)) # (!\uart_unit|fifo_tx|r_fifo_count\(1) & (!\uart_unit|fifo_tx|r_fifo_count[0]~6\))))
-- \uart_unit|fifo_tx|r_fifo_count[1]~8\ = CARRY((\uart_unit|fifo_tx|p_control~0_combout\ & ((!\uart_unit|fifo_tx|r_fifo_count[0]~6\) # (!\uart_unit|fifo_tx|r_fifo_count\(1)))) # (!\uart_unit|fifo_tx|p_control~0_combout\ & 
-- (!\uart_unit|fifo_tx|r_fifo_count\(1) & !\uart_unit|fifo_tx|r_fifo_count[0]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|p_control~0_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_count\(1),
	datad => VCC,
	cin => \uart_unit|fifo_tx|r_fifo_count[0]~6\,
	combout => \uart_unit|fifo_tx|r_fifo_count[1]~7_combout\,
	cout => \uart_unit|fifo_tx|r_fifo_count[1]~8\);

-- Location: FF_X49_Y13_N19
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

-- Location: LCCOMB_X49_Y13_N20
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

-- Location: FF_X49_Y13_N21
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

-- Location: LCCOMB_X49_Y13_N22
\uart_unit|fifo_tx|r_fifo_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_count[3]~11_combout\ = (\uart_unit|fifo_tx|p_control~0_combout\ & ((\uart_unit|fifo_tx|r_fifo_count\(3) & (!\uart_unit|fifo_tx|r_fifo_count[2]~10\)) # (!\uart_unit|fifo_tx|r_fifo_count\(3) & 
-- ((\uart_unit|fifo_tx|r_fifo_count[2]~10\) # (GND))))) # (!\uart_unit|fifo_tx|p_control~0_combout\ & ((\uart_unit|fifo_tx|r_fifo_count\(3) & (\uart_unit|fifo_tx|r_fifo_count[2]~10\ & VCC)) # (!\uart_unit|fifo_tx|r_fifo_count\(3) & 
-- (!\uart_unit|fifo_tx|r_fifo_count[2]~10\))))
-- \uart_unit|fifo_tx|r_fifo_count[3]~12\ = CARRY((\uart_unit|fifo_tx|p_control~0_combout\ & ((!\uart_unit|fifo_tx|r_fifo_count[2]~10\) # (!\uart_unit|fifo_tx|r_fifo_count\(3)))) # (!\uart_unit|fifo_tx|p_control~0_combout\ & 
-- (!\uart_unit|fifo_tx|r_fifo_count\(3) & !\uart_unit|fifo_tx|r_fifo_count[2]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|p_control~0_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_count\(3),
	datad => VCC,
	cin => \uart_unit|fifo_tx|r_fifo_count[2]~10\,
	combout => \uart_unit|fifo_tx|r_fifo_count[3]~11_combout\,
	cout => \uart_unit|fifo_tx|r_fifo_count[3]~12\);

-- Location: FF_X49_Y13_N23
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

-- Location: LCCOMB_X49_Y13_N24
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

-- Location: FF_X49_Y13_N25
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

-- Location: LCCOMB_X49_Y13_N4
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

-- Location: LCCOMB_X50_Y13_N28
\uart_unit|fifo_tx|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Equal3~0_combout\ = (!\uart_unit|fifo_tx|r_fifo_count\(1) & (\uart_unit|fifo_tx|Equal2~0_combout\ & !\uart_unit|fifo_tx|r_fifo_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|r_fifo_count\(1),
	datac => \uart_unit|fifo_tx|Equal2~0_combout\,
	datad => \uart_unit|fifo_tx|r_fifo_count\(3),
	combout => \uart_unit|fifo_tx|Equal3~0_combout\);

-- Location: LCCOMB_X49_Y15_N16
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

-- Location: FF_X49_Y15_N17
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

-- Location: LCCOMB_X49_Y15_N14
\uart_unit|transmitter|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|LessThan1~3_combout\ = (\uart_unit|transmitter|LessThan1~2_combout\) # (!\uart_unit|transmitter|r_clk_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|transmitter|r_clk_count\(12),
	datad => \uart_unit|transmitter|LessThan1~2_combout\,
	combout => \uart_unit|transmitter|LessThan1~3_combout\);

-- Location: LCCOMB_X49_Y15_N8
\uart_unit|transmitter|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector20~1_combout\ = (\uart_unit|transmitter|r_sm_main.s_idle~q\ & (\uart_unit|transmitter|LessThan1~3_combout\ & (\uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\))) # (!\uart_unit|transmitter|r_sm_main.s_idle~q\ & 
-- (((\uart_unit|transmitter|LessThan1~3_combout\ & \uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\)) # (!\uart_unit|fifo_tx|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datab => \uart_unit|transmitter|LessThan1~3_combout\,
	datac => \uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\,
	datad => \uart_unit|fifo_tx|Equal3~0_combout\,
	combout => \uart_unit|transmitter|Selector20~1_combout\);

-- Location: FF_X49_Y15_N9
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

-- Location: LCCOMB_X49_Y15_N24
\uart_unit|transmitter|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector18~0_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & (\uart_unit|transmitter|r_clk_count\(12))) # (!\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & ((\uart_unit|transmitter|r_sm_main.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \uart_unit|transmitter|r_clk_count\(12),
	datad => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	combout => \uart_unit|transmitter|Selector18~0_combout\);

-- Location: LCCOMB_X49_Y15_N10
\uart_unit|transmitter|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector18~1_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & (\uart_unit|transmitter|r_bit_index\(0) $ (((\uart_unit|transmitter|Selector18~0_combout\ & !\uart_unit|transmitter|LessThan1~2_combout\))))) # 
-- (!\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & (\uart_unit|transmitter|Selector18~0_combout\ & (\uart_unit|transmitter|r_bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datab => \uart_unit|transmitter|Selector18~0_combout\,
	datac => \uart_unit|transmitter|r_bit_index\(0),
	datad => \uart_unit|transmitter|LessThan1~2_combout\,
	combout => \uart_unit|transmitter|Selector18~1_combout\);

-- Location: FF_X49_Y15_N11
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

-- Location: LCCOMB_X50_Y15_N12
\uart_unit|transmitter|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector17~0_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & ((\uart_unit|transmitter|r_bit_index\(0)))) # (!\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & (\uart_unit|transmitter|r_sm_main.s_idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datab => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \uart_unit|transmitter|r_bit_index\(0),
	combout => \uart_unit|transmitter|Selector17~0_combout\);

-- Location: LCCOMB_X50_Y15_N14
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

-- Location: FF_X50_Y15_N15
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

-- Location: LCCOMB_X49_Y15_N30
\uart_unit|transmitter|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~0_combout\ = (\uart_unit|transmitter|r_bit_index\(0) & (!\uart_unit|transmitter|LessThan1~2_combout\ & (\uart_unit|transmitter|r_clk_count\(12) & \uart_unit|transmitter|r_bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_bit_index\(0),
	datab => \uart_unit|transmitter|LessThan1~2_combout\,
	datac => \uart_unit|transmitter|r_clk_count\(12),
	datad => \uart_unit|transmitter|r_bit_index\(1),
	combout => \uart_unit|transmitter|Selector16~0_combout\);

-- Location: LCCOMB_X49_Y15_N4
\uart_unit|transmitter|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~1_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & (\uart_unit|transmitter|Selector16~0_combout\ $ ((\uart_unit|transmitter|r_bit_index\(2))))) # (!\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & 
-- (((\uart_unit|transmitter|r_bit_index\(2) & \uart_unit|transmitter|r_sm_main.s_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector16~0_combout\,
	datab => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \uart_unit|transmitter|r_bit_index\(2),
	datad => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	combout => \uart_unit|transmitter|Selector16~1_combout\);

-- Location: FF_X49_Y15_N5
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

-- Location: LCCOMB_X49_Y15_N2
\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\ = (\uart_unit|transmitter|r_bit_index\(0) & (\uart_unit|transmitter|r_bit_index\(2) & (!\uart_unit|transmitter|LessThan1~3_combout\ & \uart_unit|transmitter|r_bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_bit_index\(0),
	datab => \uart_unit|transmitter|r_bit_index\(2),
	datac => \uart_unit|transmitter|LessThan1~3_combout\,
	datad => \uart_unit|transmitter|r_bit_index\(1),
	combout => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\);

-- Location: LCCOMB_X49_Y15_N18
\uart_unit|transmitter|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector21~0_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\ & (((\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & !\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\)) # 
-- (!\uart_unit|transmitter|LessThan1~3_combout\))) # (!\uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\ & (((\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & !\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_start_bit~q\,
	datab => \uart_unit|transmitter|LessThan1~3_combout\,
	datac => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datad => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\,
	combout => \uart_unit|transmitter|Selector21~0_combout\);

-- Location: FF_X49_Y15_N19
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

-- Location: LCCOMB_X49_Y15_N6
\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~1_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & ((\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\) # ((\uart_unit|transmitter|LessThan1~3_combout\ & 
-- \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\)))) # (!\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & (\uart_unit|transmitter|LessThan1~3_combout\ & (\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datab => \uart_unit|transmitter|LessThan1~3_combout\,
	datac => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	datad => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~0_combout\,
	combout => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~1_combout\);

-- Location: FF_X49_Y15_N7
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

-- Location: LCCOMB_X49_Y15_N26
\uart_unit|transmitter|r_sm_main~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_sm_main~7_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\ & (\uart_unit|transmitter|r_clk_count\(12) & !\uart_unit|transmitter|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	datac => \uart_unit|transmitter|r_clk_count\(12),
	datad => \uart_unit|transmitter|LessThan1~2_combout\,
	combout => \uart_unit|transmitter|r_sm_main~7_combout\);

-- Location: FF_X49_Y15_N27
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

-- Location: LCCOMB_X50_Y13_N12
\uart_unit|fifo_tx|r_rd_index[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index[3]~feeder_combout\ = \uart_unit|fifo_tx|r_rd_index~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_tx|r_rd_index~5_combout\,
	combout => \uart_unit|fifo_tx|r_rd_index[3]~feeder_combout\);

-- Location: FF_X50_Y13_N13
\uart_unit|fifo_tx|r_rd_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_rd_index[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_rd_index\(3));

-- Location: LCCOMB_X50_Y13_N8
\uart_unit|fifo_tx|r_rd_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index~0_combout\ = (\i_rst_sync~input_o\ & (\uart_unit|fifo_tx|r_rd_index\(0) $ (((\uart_unit|transmitter|r_tx_done~q\ & !\uart_unit|fifo_tx|Equal3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_sync~input_o\,
	datab => \uart_unit|fifo_tx|r_rd_index\(0),
	datac => \uart_unit|transmitter|r_tx_done~q\,
	datad => \uart_unit|fifo_tx|Equal3~0_combout\,
	combout => \uart_unit|fifo_tx|r_rd_index~0_combout\);

-- Location: FF_X50_Y13_N3
\uart_unit|fifo_tx|r_rd_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_tx|r_rd_index~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_rd_index\(0));

-- Location: LCCOMB_X50_Y13_N26
\uart_unit|fifo_tx|r_rd_index~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index~1_combout\ = (\i_rst_sync~input_o\ & ((\uart_unit|fifo_tx|Equal3~0_combout\) # (!\uart_unit|transmitter|r_tx_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_rst_sync~input_o\,
	datac => \uart_unit|transmitter|r_tx_done~q\,
	datad => \uart_unit|fifo_tx|Equal3~0_combout\,
	combout => \uart_unit|fifo_tx|r_rd_index~1_combout\);

-- Location: LCCOMB_X50_Y13_N30
\uart_unit|fifo_tx|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Equal1~0_combout\ = (!\uart_unit|fifo_tx|r_rd_index\(1) & (\uart_unit|fifo_tx|r_rd_index\(0) & (!\uart_unit|fifo_tx|r_rd_index\(2) & \uart_unit|fifo_tx|r_rd_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_rd_index\(1),
	datab => \uart_unit|fifo_tx|r_rd_index\(0),
	datac => \uart_unit|fifo_tx|r_rd_index\(2),
	datad => \uart_unit|fifo_tx|r_rd_index\(3),
	combout => \uart_unit|fifo_tx|Equal1~0_combout\);

-- Location: LCCOMB_X50_Y13_N20
\uart_unit|fifo_tx|r_rd_index~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index~2_combout\ = (\uart_unit|transmitter|r_tx_done~q\ & (\i_rst_sync~input_o\ & (!\uart_unit|fifo_tx|Equal1~0_combout\ & !\uart_unit|fifo_tx|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_tx_done~q\,
	datab => \i_rst_sync~input_o\,
	datac => \uart_unit|fifo_tx|Equal1~0_combout\,
	datad => \uart_unit|fifo_tx|Equal3~0_combout\,
	combout => \uart_unit|fifo_tx|r_rd_index~2_combout\);

-- Location: LCCOMB_X50_Y13_N14
\uart_unit|fifo_tx|r_rd_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index~3_combout\ = (\uart_unit|fifo_tx|r_rd_index\(1) & ((\uart_unit|fifo_tx|r_rd_index~1_combout\) # ((!\uart_unit|fifo_tx|r_rd_index\(0) & \uart_unit|fifo_tx|r_rd_index~2_combout\)))) # (!\uart_unit|fifo_tx|r_rd_index\(1) & 
-- (\uart_unit|fifo_tx|r_rd_index\(0) & ((\uart_unit|fifo_tx|r_rd_index~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_rd_index\(1),
	datab => \uart_unit|fifo_tx|r_rd_index\(0),
	datac => \uart_unit|fifo_tx|r_rd_index~1_combout\,
	datad => \uart_unit|fifo_tx|r_rd_index~2_combout\,
	combout => \uart_unit|fifo_tx|r_rd_index~3_combout\);

-- Location: FF_X50_Y13_N19
\uart_unit|fifo_tx|r_rd_index[1]\ : dffeas
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
	q => \uart_unit|fifo_tx|r_rd_index\(1));

-- Location: LCCOMB_X50_Y13_N2
\uart_unit|fifo_tx|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add3~0_combout\ = \uart_unit|fifo_tx|r_rd_index\(2) $ (((\uart_unit|fifo_tx|r_rd_index\(1) & \uart_unit|fifo_tx|r_rd_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_rd_index\(1),
	datab => \uart_unit|fifo_tx|r_rd_index\(2),
	datac => \uart_unit|fifo_tx|r_rd_index\(0),
	combout => \uart_unit|fifo_tx|Add3~0_combout\);

-- Location: LCCOMB_X50_Y13_N16
\uart_unit|fifo_tx|p_control~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|p_control~1_combout\ = (\uart_unit|transmitter|r_tx_done~q\ & ((\uart_unit|fifo_tx|r_fifo_count\(3)) # ((\uart_unit|fifo_tx|r_fifo_count\(1)) # (!\uart_unit|fifo_tx|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_tx_done~q\,
	datab => \uart_unit|fifo_tx|r_fifo_count\(3),
	datac => \uart_unit|fifo_tx|Equal2~0_combout\,
	datad => \uart_unit|fifo_tx|r_fifo_count\(1),
	combout => \uart_unit|fifo_tx|p_control~1_combout\);

-- Location: LCCOMB_X50_Y13_N4
\uart_unit|fifo_tx|r_rd_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index~4_combout\ = (\i_rst_sync~input_o\ & ((\uart_unit|fifo_tx|p_control~1_combout\ & (\uart_unit|fifo_tx|Add3~0_combout\)) # (!\uart_unit|fifo_tx|p_control~1_combout\ & ((\uart_unit|fifo_tx|r_rd_index\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Add3~0_combout\,
	datab => \i_rst_sync~input_o\,
	datac => \uart_unit|fifo_tx|r_rd_index\(2),
	datad => \uart_unit|fifo_tx|p_control~1_combout\,
	combout => \uart_unit|fifo_tx|r_rd_index~4_combout\);

-- Location: FF_X50_Y13_N5
\uart_unit|fifo_tx|r_rd_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_rd_index~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_rd_index\(2));

-- Location: LCCOMB_X50_Y13_N18
\uart_unit|fifo_tx|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add3~1_combout\ = \uart_unit|fifo_tx|r_rd_index\(3) $ (((\uart_unit|fifo_tx|r_rd_index\(2) & (\uart_unit|fifo_tx|r_rd_index\(1) & \uart_unit|fifo_tx|r_rd_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_rd_index\(3),
	datab => \uart_unit|fifo_tx|r_rd_index\(2),
	datac => \uart_unit|fifo_tx|r_rd_index\(1),
	datad => \uart_unit|fifo_tx|r_rd_index\(0),
	combout => \uart_unit|fifo_tx|Add3~1_combout\);

-- Location: LCCOMB_X50_Y13_N22
\uart_unit|fifo_tx|r_rd_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_rd_index~5_combout\ = (\uart_unit|fifo_tx|r_rd_index\(3) & ((\uart_unit|fifo_tx|r_rd_index~1_combout\) # ((\uart_unit|fifo_tx|Add3~1_combout\ & \uart_unit|fifo_tx|r_rd_index~2_combout\)))) # (!\uart_unit|fifo_tx|r_rd_index\(3) & 
-- (\uart_unit|fifo_tx|Add3~1_combout\ & ((\uart_unit|fifo_tx|r_rd_index~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_rd_index\(3),
	datab => \uart_unit|fifo_tx|Add3~1_combout\,
	datac => \uart_unit|fifo_tx|r_rd_index~1_combout\,
	datad => \uart_unit|fifo_tx|r_rd_index~2_combout\,
	combout => \uart_unit|fifo_tx|r_rd_index~5_combout\);

-- Location: LCCOMB_X50_Y13_N6
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[8]~feeder_combout\ = \uart_unit|fifo_tx|r_rd_index~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_tx|r_rd_index~5_combout\,
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X50_Y13_N7
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(8));

-- Location: LCCOMB_X50_Y14_N26
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

-- Location: LCCOMB_X50_Y14_N12
\uart_unit|fifo_tx|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Equal2~1_combout\ = (\uart_unit|fifo_tx|r_fifo_count\(1) & (\uart_unit|fifo_tx|r_fifo_count\(3) & \uart_unit|fifo_tx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_count\(1),
	datac => \uart_unit|fifo_tx|r_fifo_count\(3),
	datad => \uart_unit|fifo_tx|Equal2~0_combout\,
	combout => \uart_unit|fifo_tx|Equal2~1_combout\);

-- Location: LCCOMB_X50_Y14_N14
\uart_unit|fifo_tx|r_wr_index[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_wr_index[1]~1_combout\ = ((!\uart_unit|fifo_tx|Equal2~1_combout\ & \r_wr_tx~q\)) # (!\i_rst_sync~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Equal2~1_combout\,
	datab => \i_rst_sync~input_o\,
	datad => \r_wr_tx~q\,
	combout => \uart_unit|fifo_tx|r_wr_index[1]~1_combout\);

-- Location: FF_X50_Y14_N27
\uart_unit|fifo_tx|r_wr_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_wr_index~0_combout\,
	ena => \uart_unit|fifo_tx|r_wr_index[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_wr_index\(0));

-- Location: LCCOMB_X50_Y14_N0
\uart_unit|fifo_tx|r_wr_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_wr_index~3_combout\ = (\uart_unit|fifo_tx|r_wr_index[1]~2_combout\ & (\i_rst_sync~input_o\ & (\uart_unit|fifo_tx|r_wr_index\(0) $ (\uart_unit|fifo_tx|r_wr_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_wr_index\(0),
	datab => \uart_unit|fifo_tx|r_wr_index[1]~2_combout\,
	datac => \uart_unit|fifo_tx|r_wr_index\(1),
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_tx|r_wr_index~3_combout\);

-- Location: FF_X50_Y14_N1
\uart_unit|fifo_tx|r_wr_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_wr_index~3_combout\,
	ena => \uart_unit|fifo_tx|r_wr_index[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_wr_index\(1));

-- Location: LCCOMB_X50_Y14_N22
\uart_unit|fifo_tx|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add2~0_combout\ = \uart_unit|fifo_tx|r_wr_index\(2) $ (((\uart_unit|fifo_tx|r_wr_index\(0) & \uart_unit|fifo_tx|r_wr_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|r_wr_index\(2),
	datac => \uart_unit|fifo_tx|r_wr_index\(0),
	datad => \uart_unit|fifo_tx|r_wr_index\(1),
	combout => \uart_unit|fifo_tx|Add2~0_combout\);

-- Location: LCCOMB_X50_Y14_N18
\uart_unit|fifo_tx|r_wr_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_wr_index~4_combout\ = (\uart_unit|fifo_tx|r_wr_index[1]~2_combout\ & (\uart_unit|fifo_tx|Add2~0_combout\ & \i_rst_sync~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|r_wr_index[1]~2_combout\,
	datac => \uart_unit|fifo_tx|Add2~0_combout\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_tx|r_wr_index~4_combout\);

-- Location: FF_X50_Y14_N19
\uart_unit|fifo_tx|r_wr_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_wr_index~4_combout\,
	ena => \uart_unit|fifo_tx|r_wr_index[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_wr_index\(2));

-- Location: LCCOMB_X50_Y14_N24
\uart_unit|fifo_tx|r_wr_index[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_wr_index[1]~2_combout\ = ((\uart_unit|fifo_tx|r_wr_index\(2)) # ((\uart_unit|fifo_tx|r_wr_index\(1)) # (!\uart_unit|fifo_tx|r_wr_index\(0)))) # (!\uart_unit|fifo_tx|r_wr_index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_wr_index\(3),
	datab => \uart_unit|fifo_tx|r_wr_index\(2),
	datac => \uart_unit|fifo_tx|r_wr_index\(0),
	datad => \uart_unit|fifo_tx|r_wr_index\(1),
	combout => \uart_unit|fifo_tx|r_wr_index[1]~2_combout\);

-- Location: LCCOMB_X50_Y14_N8
\uart_unit|fifo_tx|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add2~1_combout\ = \uart_unit|fifo_tx|r_wr_index\(3) $ (((\uart_unit|fifo_tx|r_wr_index\(2) & (\uart_unit|fifo_tx|r_wr_index\(0) & \uart_unit|fifo_tx|r_wr_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_wr_index\(3),
	datab => \uart_unit|fifo_tx|r_wr_index\(2),
	datac => \uart_unit|fifo_tx|r_wr_index\(0),
	datad => \uart_unit|fifo_tx|r_wr_index\(1),
	combout => \uart_unit|fifo_tx|Add2~1_combout\);

-- Location: LCCOMB_X50_Y14_N16
\uart_unit|fifo_tx|r_wr_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_wr_index~5_combout\ = (\uart_unit|fifo_tx|r_wr_index[1]~2_combout\ & (\uart_unit|fifo_tx|Add2~1_combout\ & \i_rst_sync~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|r_wr_index[1]~2_combout\,
	datac => \uart_unit|fifo_tx|Add2~1_combout\,
	datad => \i_rst_sync~input_o\,
	combout => \uart_unit|fifo_tx|r_wr_index~5_combout\);

-- Location: FF_X50_Y14_N17
\uart_unit|fifo_tx|r_wr_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_wr_index~5_combout\,
	ena => \uart_unit|fifo_tx|r_wr_index[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_wr_index\(3));

-- Location: LCCOMB_X50_Y13_N24
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[7]~feeder_combout\ = \uart_unit|fifo_tx|r_wr_index\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_tx|r_wr_index\(3),
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[7]~feeder_combout\);

-- Location: FF_X50_Y13_N25
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(7));

-- Location: FF_X50_Y13_N1
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_tx|r_rd_index~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(6));

-- Location: LCCOMB_X50_Y13_N10
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[5]~feeder_combout\ = \uart_unit|fifo_tx|r_wr_index\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_tx|r_wr_index\(2),
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X50_Y13_N11
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(5));

-- Location: LCCOMB_X50_Y13_N0
\uart_unit|fifo_tx|r_fifo_data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~14_combout\ = (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(8) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(7) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(6) $ (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(5))))) # 
-- (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(8) & (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(7) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(6) $ (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(8),
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(7),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(6),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(5),
	combout => \uart_unit|fifo_tx|r_fifo_data~14_combout\);

-- Location: LCCOMB_X50_Y14_N30
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

-- Location: FF_X50_Y14_N31
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

-- Location: FF_X50_Y14_N11
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

-- Location: LCCOMB_X50_Y14_N28
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\ = \uart_unit|fifo_tx|r_wr_index\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_tx|r_wr_index\(1),
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X50_Y14_N29
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(3));

-- Location: FF_X50_Y14_N7
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

-- Location: LCCOMB_X50_Y14_N20
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

-- Location: FF_X50_Y14_N21
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

-- Location: LCCOMB_X50_Y14_N6
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

-- Location: LCCOMB_X50_Y14_N4
\uart_unit|fifo_tx|r_fifo_data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~15_combout\ = (\uart_unit|fifo_tx|r_fifo_data~14_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(0) & \uart_unit|fifo_tx|r_fifo_data~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|r_fifo_data~14_combout\,
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(0),
	datad => \uart_unit|fifo_tx|r_fifo_data~13_combout\,
	combout => \uart_unit|fifo_tx|r_fifo_data~15_combout\);

-- Location: LCCOMB_X50_Y15_N30
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

-- Location: FF_X50_Y15_N31
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

-- Location: LCCOMB_X52_Y15_N24
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X17_Y10_N20
\r_tx_data[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[1]~0_combout\ = (r_tx_data(1)) # ((!\Equal0~1_combout\ & (\r_sram_data[0]~0_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \r_sram_data[0]~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => r_tx_data(1),
	combout => \r_tx_data[1]~0_combout\);

-- Location: LCCOMB_X17_Y10_N18
\r_tx_data[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[1]~1_combout\ = (\r_tx_data[1]~0_combout\) # ((!\Equal0~1_combout\ & (!\p_write_sram~2_combout\ & \r_sram_data[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \p_write_sram~2_combout\,
	datac => \r_sram_data[0]~0_combout\,
	datad => \r_tx_data[1]~0_combout\,
	combout => \r_tx_data[1]~1_combout\);

-- Location: FF_X17_Y10_N19
\r_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_tx_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(1));

-- Location: M9K_X51_Y15_N0
\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/sram.ram0_fifo_1ff8f9ef.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "uart:uart_unit|fifo:fifo_tx|altsyncram:r_fifo_data_rtl_0|altsyncram_tcg1:auto_generated|ALTSYNCRAM",
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

-- Location: LCCOMB_X50_Y15_N10
\uart_unit|fifo_tx|r_fifo_data~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~19_combout\ = (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(24) & \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(24),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a7\,
	combout => \uart_unit|fifo_tx|r_fifo_data~19_combout\);

-- Location: LCCOMB_X50_Y15_N26
\uart_unit|transmitter|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector20~0_combout\ = (!\uart_unit|transmitter|r_sm_main.s_idle~q\ & (((\uart_unit|fifo_tx|r_fifo_count\(1)) # (\uart_unit|fifo_tx|r_fifo_count\(3))) # (!\uart_unit|fifo_tx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Equal2~0_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_count\(1),
	datac => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datad => \uart_unit|fifo_tx|r_fifo_count\(3),
	combout => \uart_unit|transmitter|Selector20~0_combout\);

-- Location: FF_X50_Y15_N11
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

-- Location: LCCOMB_X50_Y15_N20
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

-- Location: FF_X50_Y15_N21
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

-- Location: LCCOMB_X50_Y15_N8
\uart_unit|fifo_tx|r_fifo_data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~16_combout\ = (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(22) & \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(22),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a6\,
	combout => \uart_unit|fifo_tx|r_fifo_data~16_combout\);

-- Location: FF_X50_Y15_N9
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

-- Location: LCCOMB_X50_Y15_N28
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

-- Location: FF_X50_Y15_N29
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

-- Location: LCCOMB_X50_Y15_N22
\uart_unit|fifo_tx|r_fifo_data~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~18_combout\ = (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(18) & \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(18),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a4\,
	combout => \uart_unit|fifo_tx|r_fifo_data~18_combout\);

-- Location: FF_X50_Y15_N23
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

-- Location: LCCOMB_X50_Y15_N6
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

-- Location: FF_X50_Y15_N7
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

-- Location: LCCOMB_X50_Y15_N24
\uart_unit|fifo_tx|r_fifo_data~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~17_combout\ = (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(20) & (\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\ & !\uart_unit|fifo_tx|r_fifo_data~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(20),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a5\,
	datad => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	combout => \uart_unit|fifo_tx|r_fifo_data~17_combout\);

-- Location: FF_X50_Y15_N25
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

-- Location: LCCOMB_X50_Y15_N0
\uart_unit|transmitter|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Mux0~0_combout\ = (\uart_unit|transmitter|r_bit_index\(1) & (((\uart_unit|transmitter|r_bit_index\(0))))) # (!\uart_unit|transmitter|r_bit_index\(1) & ((\uart_unit|transmitter|r_bit_index\(0) & 
-- ((\uart_unit|transmitter|r_tx_data\(5)))) # (!\uart_unit|transmitter|r_bit_index\(0) & (\uart_unit|transmitter|r_tx_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_tx_data\(4),
	datab => \uart_unit|transmitter|r_bit_index\(1),
	datac => \uart_unit|transmitter|r_bit_index\(0),
	datad => \uart_unit|transmitter|r_tx_data\(5),
	combout => \uart_unit|transmitter|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y15_N16
\uart_unit|transmitter|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Mux0~1_combout\ = (\uart_unit|transmitter|r_bit_index\(1) & ((\uart_unit|transmitter|Mux0~0_combout\ & (\uart_unit|transmitter|r_tx_data\(7))) # (!\uart_unit|transmitter|Mux0~0_combout\ & ((\uart_unit|transmitter|r_tx_data\(6)))))) 
-- # (!\uart_unit|transmitter|r_bit_index\(1) & (((\uart_unit|transmitter|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_tx_data\(7),
	datab => \uart_unit|transmitter|r_tx_data\(6),
	datac => \uart_unit|transmitter|r_bit_index\(1),
	datad => \uart_unit|transmitter|Mux0~0_combout\,
	combout => \uart_unit|transmitter|Mux0~1_combout\);

-- Location: LCCOMB_X50_Y15_N18
\uart_unit|transmitter|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector1~0_combout\ = ((\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & (\uart_unit|transmitter|r_bit_index\(2) & \uart_unit|transmitter|Mux0~1_combout\))) # (!\uart_unit|transmitter|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_idle~q\,
	datab => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \uart_unit|transmitter|r_bit_index\(2),
	datad => \uart_unit|transmitter|Mux0~1_combout\,
	combout => \uart_unit|transmitter|Selector1~0_combout\);

-- Location: LCCOMB_X52_Y15_N22
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

-- Location: FF_X52_Y15_N23
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

-- Location: LCCOMB_X52_Y15_N12
\uart_unit|fifo_tx|r_fifo_data~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~23_combout\ = (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(16) & \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(16),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a3\,
	combout => \uart_unit|fifo_tx|r_fifo_data~23_combout\);

-- Location: FF_X52_Y15_N13
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

-- Location: LCCOMB_X52_Y15_N2
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

-- Location: FF_X52_Y15_N3
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

-- Location: LCCOMB_X52_Y15_N8
\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\ = r_tx_data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_tx_data(1),
	combout => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X52_Y15_N9
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

-- Location: LCCOMB_X52_Y15_N20
\uart_unit|fifo_tx|r_fifo_data~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~20_combout\ = (\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (((\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(13))))) # (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & ((\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(14) & 
-- (\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\)) # (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(14) & ((\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(14),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a2\,
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(13),
	combout => \uart_unit|fifo_tx|r_fifo_data~20_combout\);

-- Location: FF_X52_Y15_N21
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

-- Location: LCCOMB_X52_Y15_N18
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

-- Location: FF_X52_Y15_N19
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

-- Location: LCCOMB_X52_Y15_N28
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

-- Location: FF_X52_Y15_N29
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

-- Location: LCCOMB_X52_Y15_N14
\uart_unit|fifo_tx|r_fifo_data~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~21_combout\ = (\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (((\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(11))))) # (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & ((\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(12) & 
-- (\uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\)) # (!\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(12) & ((\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	datab => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(12),
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a1\,
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(11),
	combout => \uart_unit|fifo_tx|r_fifo_data~21_combout\);

-- Location: FF_X52_Y15_N15
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

-- Location: LCCOMB_X52_Y15_N4
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

-- Location: FF_X52_Y15_N5
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

-- Location: LCCOMB_X52_Y15_N16
\uart_unit|fifo_tx|r_fifo_data~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_fifo_data~22_combout\ = (!\uart_unit|fifo_tx|r_fifo_data~15_combout\ & (\uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(10) & \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_fifo_data~15_combout\,
	datac => \uart_unit|fifo_tx|r_fifo_data_rtl_0_bypass\(10),
	datad => \uart_unit|fifo_tx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \uart_unit|fifo_tx|r_fifo_data~22_combout\);

-- Location: FF_X52_Y15_N17
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

-- Location: LCCOMB_X52_Y15_N10
\uart_unit|transmitter|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Mux0~2_combout\ = (\uart_unit|transmitter|r_bit_index\(0) & ((\uart_unit|transmitter|r_tx_data\(1)) # ((\uart_unit|transmitter|r_bit_index\(1))))) # (!\uart_unit|transmitter|r_bit_index\(0) & 
-- (((!\uart_unit|transmitter|r_bit_index\(1) & \uart_unit|transmitter|r_tx_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_bit_index\(0),
	datab => \uart_unit|transmitter|r_tx_data\(1),
	datac => \uart_unit|transmitter|r_bit_index\(1),
	datad => \uart_unit|transmitter|r_tx_data\(0),
	combout => \uart_unit|transmitter|Mux0~2_combout\);

-- Location: LCCOMB_X52_Y15_N30
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

-- Location: LCCOMB_X49_Y15_N20
\uart_unit|transmitter|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector1~1_combout\ = (\uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\) # ((!\uart_unit|transmitter|r_bit_index\(2) & (\uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\ & \uart_unit|transmitter|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_bit_index\(2),
	datab => \uart_unit|transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \uart_unit|transmitter|Mux0~3_combout\,
	datad => \uart_unit|transmitter|r_sm_main.s_tx_stop_bit~q\,
	combout => \uart_unit|transmitter|Selector1~1_combout\);

-- Location: LCCOMB_X49_Y15_N0
\uart_unit|transmitter|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector1~2_combout\ = (\uart_unit|transmitter|Selector1~0_combout\) # ((\uart_unit|transmitter|Selector1~1_combout\) # ((\uart_unit|transmitter|r_sm_main.s_cleanup~q\ & \uart_unit|transmitter|o_tx_serial~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_sm_main.s_cleanup~q\,
	datab => \uart_unit|transmitter|Selector1~0_combout\,
	datac => \uart_unit|transmitter|o_tx_serial~q\,
	datad => \uart_unit|transmitter|Selector1~1_combout\,
	combout => \uart_unit|transmitter|Selector1~2_combout\);

-- Location: FF_X49_Y15_N1
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

-- Location: LCCOMB_X35_Y15_N8
\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[9]~feeder_combout\ = \uart_unit|receiver|r_rx_byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_rx_byte\(0),
	combout => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X35_Y15_N9
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

-- Location: LCCOMB_X35_Y15_N30
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

-- Location: FF_X35_Y15_N31
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

-- Location: LCCOMB_X35_Y15_N16
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(10) & (((!\uart_unit|fifo_rx|r_fifo_data~13_combout\) # (!\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0))) # (!\uart_unit|fifo_rx|r_fifo_data~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data~14_combout\,
	datab => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(10),
	datac => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(0),
	datad => \uart_unit|fifo_rx|r_fifo_data~13_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X36_Y15_N28
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\r_sm.s_get_fifo_data~q\ & ((\Selector10~0_combout\ & ((\uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\Selector10~0_combout\ & (\uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_fifo_data_rtl_0_bypass\(9),
	datab => \r_sm.s_get_fifo_data~q\,
	datac => \Selector10~0_combout\,
	datad => \uart_unit|fifo_rx|r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X36_Y15_N29
\r_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	clrn => \i_rst~input_o\,
	ena => \r_wr_tx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data(0));

-- Location: LCCOMB_X20_Y10_N20
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (r_data(0)) # (!\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~1_combout\,
	datad => r_data(0),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X20_Y10_N26
\Decoder0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~27_combout\ = (!r_index(0) & !r_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datac => r_index(1),
	combout => \Decoder0~27_combout\);

-- Location: LCCOMB_X17_Y10_N6
\Decoder0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~25_combout\ = (!r_index(4) & ((r_index(31)) # (\Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_index(4),
	datac => r_index(31),
	datad => \Equal2~6_combout\,
	combout => \Decoder0~25_combout\);

-- Location: LCCOMB_X18_Y10_N18
\Decoder0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~26_combout\ = (\Decoder0~25_combout\ & (\Equal0~1_combout\ & ((\LessThan0~1_combout\) # (r_index(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \Decoder0~25_combout\,
	datac => \Equal0~1_combout\,
	datad => r_index(31),
	combout => \Decoder0~26_combout\);

-- Location: LCCOMB_X19_Y10_N0
\Decoder0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~44_combout\ = (!r_index(2) & (!r_index(3) & (\Decoder0~27_combout\ & \Decoder0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(3),
	datac => \Decoder0~27_combout\,
	datad => \Decoder0~26_combout\,
	combout => \Decoder0~44_combout\);

-- Location: LCCOMB_X19_Y10_N4
\r_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[0]~0_combout\ = (\Decoder0~44_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~44_combout\ & ((r_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_addr(0),
	datad => \Decoder0~44_combout\,
	combout => \r_addr[0]~0_combout\);

-- Location: LCCOMB_X20_Y10_N30
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datac => r_addr(0),
	combout => \Selector30~0_combout\);

-- Location: FF_X19_Y10_N5
\r_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[0]~0_combout\,
	asdata => \Selector30~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(0));

-- Location: LCCOMB_X20_Y10_N24
\Decoder0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~28_combout\ = (r_index(0) & !r_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datac => r_index(1),
	combout => \Decoder0~28_combout\);

-- Location: LCCOMB_X19_Y10_N18
\Decoder0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~45_combout\ = (!r_index(2) & (\Decoder0~28_combout\ & (!r_index(3) & \Decoder0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => \Decoder0~28_combout\,
	datac => r_index(3),
	datad => \Decoder0~26_combout\,
	combout => \Decoder0~45_combout\);

-- Location: LCCOMB_X19_Y10_N14
\r_addr[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[1]~1_combout\ = (\Decoder0~45_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~45_combout\ & ((r_addr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_addr(1),
	datad => \Decoder0~45_combout\,
	combout => \r_addr[1]~1_combout\);

-- Location: LCCOMB_X20_Y10_N18
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => r_addr(1),
	combout => \Selector29~0_combout\);

-- Location: FF_X19_Y10_N15
\r_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[1]~1_combout\,
	asdata => \Selector29~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(1));

-- Location: LCCOMB_X19_Y9_N30
\Decoder0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~29_combout\ = (!r_index(0) & r_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_index(0),
	datad => r_index(1),
	combout => \Decoder0~29_combout\);

-- Location: LCCOMB_X19_Y9_N6
\Decoder0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~46_combout\ = (!r_index(2) & (!r_index(3) & (\Decoder0~29_combout\ & \Decoder0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(3),
	datac => \Decoder0~29_combout\,
	datad => \Decoder0~26_combout\,
	combout => \Decoder0~46_combout\);

-- Location: LCCOMB_X19_Y9_N0
\r_addr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[2]~2_combout\ = (\Decoder0~46_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~46_combout\ & ((r_addr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_addr(2),
	datad => \Decoder0~46_combout\,
	combout => \r_addr[2]~2_combout\);

-- Location: LCCOMB_X19_Y9_N4
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_clear~q\,
	datad => r_addr(2),
	combout => \Selector28~0_combout\);

-- Location: FF_X19_Y9_N1
\r_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[2]~2_combout\,
	asdata => \Selector28~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(2));

-- Location: LCCOMB_X20_Y10_N8
\Decoder0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~30_combout\ = (r_index(0) & r_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(0),
	datac => r_index(1),
	combout => \Decoder0~30_combout\);

-- Location: LCCOMB_X21_Y10_N24
\Decoder0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~47_combout\ = (!r_index(2) & (!r_index(3) & (\Decoder0~26_combout\ & \Decoder0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(3),
	datac => \Decoder0~26_combout\,
	datad => \Decoder0~30_combout\,
	combout => \Decoder0~47_combout\);

-- Location: LCCOMB_X21_Y10_N20
\r_addr[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[3]~3_combout\ = (\Decoder0~47_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~47_combout\ & ((r_addr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(3),
	datad => \Decoder0~47_combout\,
	combout => \r_addr[3]~3_combout\);

-- Location: LCCOMB_X21_Y10_N22
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => r_addr(3),
	combout => \Selector27~0_combout\);

-- Location: FF_X21_Y10_N21
\r_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[3]~3_combout\,
	asdata => \Selector27~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(3));

-- Location: LCCOMB_X20_Y10_N6
\Decoder0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~31_combout\ = (!r_index(4) & (\Equal2~7_combout\ & (\Equal0~1_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(4),
	datab => \Equal2~7_combout\,
	datac => \Equal0~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Decoder0~31_combout\);

-- Location: LCCOMB_X20_Y10_N0
\r_addr[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[4]~4_combout\ = (\Decoder0~31_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~31_combout\ & ((r_addr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(4),
	datad => \Decoder0~31_combout\,
	combout => \r_addr[4]~4_combout\);

-- Location: LCCOMB_X20_Y10_N4
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => r_addr(4),
	combout => \Selector26~0_combout\);

-- Location: FF_X20_Y10_N1
\r_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[4]~4_combout\,
	asdata => \Selector26~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(4));

-- Location: LCCOMB_X19_Y9_N18
\Decoder0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~32_combout\ = (\Decoder0~28_combout\ & (!r_index(3) & (r_index(2) & \Decoder0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~28_combout\,
	datab => r_index(3),
	datac => r_index(2),
	datad => \Decoder0~26_combout\,
	combout => \Decoder0~32_combout\);

-- Location: LCCOMB_X19_Y9_N26
\r_addr[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[5]~5_combout\ = (\Decoder0~32_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~32_combout\ & ((r_addr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_addr(5),
	datad => \Decoder0~32_combout\,
	combout => \r_addr[5]~5_combout\);

-- Location: LCCOMB_X19_Y9_N8
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (r_addr(5) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(5),
	datac => \r_sm.s_clear~q\,
	combout => \Selector25~0_combout\);

-- Location: FF_X19_Y9_N27
\r_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[5]~5_combout\,
	asdata => \Selector25~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(5));

-- Location: LCCOMB_X19_Y9_N10
\Decoder0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~33_combout\ = (r_index(2) & (!r_index(3) & (\Decoder0~29_combout\ & \Decoder0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(3),
	datac => \Decoder0~29_combout\,
	datad => \Decoder0~26_combout\,
	combout => \Decoder0~33_combout\);

-- Location: LCCOMB_X19_Y9_N12
\r_addr[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[6]~6_combout\ = (\Decoder0~33_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~33_combout\ & ((r_addr(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_addr(6),
	datad => \Decoder0~33_combout\,
	combout => \r_addr[6]~6_combout\);

-- Location: LCCOMB_X19_Y9_N24
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_clear~q\,
	datad => r_addr(6),
	combout => \Selector24~0_combout\);

-- Location: FF_X19_Y9_N13
\r_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[6]~6_combout\,
	asdata => \Selector24~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(6));

-- Location: LCCOMB_X21_Y10_N0
\Decoder0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~34_combout\ = (r_index(2) & (!r_index(3) & (\Decoder0~26_combout\ & \Decoder0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(3),
	datac => \Decoder0~26_combout\,
	datad => \Decoder0~30_combout\,
	combout => \Decoder0~34_combout\);

-- Location: LCCOMB_X21_Y10_N2
\r_addr[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[7]~7_combout\ = (\Decoder0~34_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~34_combout\ & ((r_addr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(7),
	datad => \Decoder0~34_combout\,
	combout => \r_addr[7]~7_combout\);

-- Location: LCCOMB_X21_Y10_N30
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => r_addr(7),
	combout => \Selector23~0_combout\);

-- Location: FF_X21_Y10_N3
\r_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[7]~7_combout\,
	asdata => \Selector23~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(7));

-- Location: LCCOMB_X19_Y10_N26
\Decoder0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~35_combout\ = (!r_index(2) & (r_index(3) & (\Decoder0~27_combout\ & \Decoder0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(3),
	datac => \Decoder0~27_combout\,
	datad => \Decoder0~26_combout\,
	combout => \Decoder0~35_combout\);

-- Location: LCCOMB_X19_Y10_N20
\r_addr[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[8]~8_combout\ = (\Decoder0~35_combout\ & ((\Equal0~2_combout\))) # (!\Decoder0~35_combout\ & (r_addr(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~35_combout\,
	datac => r_addr(8),
	datad => \Equal0~2_combout\,
	combout => \r_addr[8]~8_combout\);

-- Location: LCCOMB_X20_Y10_N14
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => r_addr(8),
	combout => \Selector22~0_combout\);

-- Location: FF_X19_Y10_N21
\r_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[8]~8_combout\,
	asdata => \Selector22~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(8));

-- Location: LCCOMB_X21_Y10_N16
\Decoder0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~36_combout\ = (!r_index(2) & (\Decoder0~28_combout\ & (\Decoder0~26_combout\ & r_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => \Decoder0~28_combout\,
	datac => \Decoder0~26_combout\,
	datad => r_index(3),
	combout => \Decoder0~36_combout\);

-- Location: LCCOMB_X21_Y10_N8
\r_addr[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[9]~9_combout\ = (\Decoder0~36_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~36_combout\ & ((r_addr(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(9),
	datad => \Decoder0~36_combout\,
	combout => \r_addr[9]~9_combout\);

-- Location: LCCOMB_X21_Y10_N14
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datac => r_addr(9),
	combout => \Selector21~0_combout\);

-- Location: FF_X21_Y10_N9
\r_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[9]~9_combout\,
	asdata => \Selector21~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(9));

-- Location: LCCOMB_X19_Y9_N14
\Decoder0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~37_combout\ = (!r_index(2) & (r_index(3) & (\Decoder0~29_combout\ & \Decoder0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(3),
	datac => \Decoder0~29_combout\,
	datad => \Decoder0~26_combout\,
	combout => \Decoder0~37_combout\);

-- Location: LCCOMB_X19_Y9_N22
\r_addr[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[10]~10_combout\ = (\Decoder0~37_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~37_combout\ & ((r_addr(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_addr(10),
	datad => \Decoder0~37_combout\,
	combout => \r_addr[10]~10_combout\);

-- Location: LCCOMB_X19_Y9_N20
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (r_addr(10) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_addr(10),
	datac => \r_sm.s_clear~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X19_Y9_N23
\r_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[10]~10_combout\,
	asdata => \Selector20~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(10));

-- Location: LCCOMB_X21_Y10_N28
\Decoder0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~38_combout\ = (!r_index(2) & (r_index(3) & (\Decoder0~26_combout\ & \Decoder0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(3),
	datac => \Decoder0~26_combout\,
	datad => \Decoder0~30_combout\,
	combout => \Decoder0~38_combout\);

-- Location: LCCOMB_X21_Y10_N26
\r_addr[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[11]~11_combout\ = (\Decoder0~38_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~38_combout\ & ((r_addr(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(11),
	datad => \Decoder0~38_combout\,
	combout => \r_addr[11]~11_combout\);

-- Location: LCCOMB_X21_Y10_N18
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datac => r_addr(11),
	combout => \Selector19~0_combout\);

-- Location: FF_X21_Y10_N27
\r_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[11]~11_combout\,
	asdata => \Selector19~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(11));

-- Location: LCCOMB_X19_Y10_N28
\Decoder0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~39_combout\ = (r_index(2) & (r_index(3) & (\Decoder0~27_combout\ & \Decoder0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(3),
	datac => \Decoder0~27_combout\,
	datad => \Decoder0~26_combout\,
	combout => \Decoder0~39_combout\);

-- Location: LCCOMB_X19_Y10_N2
\r_addr[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[12]~12_combout\ = (\Decoder0~39_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~39_combout\ & ((r_addr(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_addr(12),
	datad => \Decoder0~39_combout\,
	combout => \r_addr[12]~12_combout\);

-- Location: LCCOMB_X20_Y10_N12
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datad => r_addr(12),
	combout => \Selector18~0_combout\);

-- Location: FF_X19_Y10_N3
\r_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[12]~12_combout\,
	asdata => \Selector18~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(12));

-- Location: LCCOMB_X19_Y10_N6
\Decoder0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~40_combout\ = (r_index(2) & (\Decoder0~28_combout\ & (r_index(3) & \Decoder0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => \Decoder0~28_combout\,
	datac => r_index(3),
	datad => \Decoder0~26_combout\,
	combout => \Decoder0~40_combout\);

-- Location: LCCOMB_X19_Y10_N16
\r_addr[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[13]~13_combout\ = (\Decoder0~40_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~40_combout\ & ((r_addr(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_addr(13),
	datad => \Decoder0~40_combout\,
	combout => \r_addr[13]~13_combout\);

-- Location: LCCOMB_X20_Y10_N10
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datac => r_addr(13),
	combout => \Selector17~0_combout\);

-- Location: FF_X19_Y10_N17
\r_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[13]~13_combout\,
	asdata => \Selector17~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(13));

-- Location: LCCOMB_X19_Y9_N2
\Decoder0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~41_combout\ = (r_index(2) & (r_index(3) & (\Decoder0~29_combout\ & \Decoder0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(3),
	datac => \Decoder0~29_combout\,
	datad => \Decoder0~26_combout\,
	combout => \Decoder0~41_combout\);

-- Location: LCCOMB_X19_Y9_N16
\r_addr[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[14]~14_combout\ = (\Decoder0~41_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~41_combout\ & ((r_addr(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => r_addr(14),
	datad => \Decoder0~41_combout\,
	combout => \r_addr[14]~14_combout\);

-- Location: LCCOMB_X19_Y9_N28
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sm.s_clear~q\,
	datad => r_addr(14),
	combout => \Selector16~0_combout\);

-- Location: FF_X19_Y9_N17
\r_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[14]~14_combout\,
	asdata => \Selector16~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(14));

-- Location: LCCOMB_X21_Y10_N12
\Decoder0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~42_combout\ = (r_index(2) & (r_index(3) & (\Decoder0~26_combout\ & \Decoder0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => r_index(3),
	datac => \Decoder0~26_combout\,
	datad => \Decoder0~30_combout\,
	combout => \Decoder0~42_combout\);

-- Location: LCCOMB_X21_Y10_N4
\r_addr[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[15]~15_combout\ = (\Decoder0~42_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~42_combout\ & ((r_addr(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(15),
	datad => \Decoder0~42_combout\,
	combout => \r_addr[15]~15_combout\);

-- Location: LCCOMB_X21_Y10_N10
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (!\r_sm.s_clear~q\ & r_addr(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sm.s_clear~q\,
	datac => r_addr(15),
	combout => \Selector15~0_combout\);

-- Location: FF_X21_Y10_N5
\r_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[15]~15_combout\,
	asdata => \Selector15~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(15));

-- Location: LCCOMB_X16_Y10_N16
\Decoder0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~24_combout\ = (!r_index(2) & !r_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_index(2),
	datad => r_index(3),
	combout => \Decoder0~24_combout\);

-- Location: LCCOMB_X17_Y10_N12
\Decoder0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~43_combout\ = (\Equal0~1_combout\ & (r_index(4) & (\Decoder0~24_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => r_index(4),
	datac => \Decoder0~24_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Decoder0~43_combout\);

-- Location: LCCOMB_X14_Y10_N28
\Decoder0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~48_combout\ = (!r_index(1) & (!r_index(0) & \Decoder0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datac => r_index(0),
	datad => \Decoder0~43_combout\,
	combout => \Decoder0~48_combout\);

-- Location: LCCOMB_X14_Y10_N4
\r_addr[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[16]~16_combout\ = (\Decoder0~48_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~48_combout\ & ((r_addr(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(16),
	datad => \Decoder0~48_combout\,
	combout => \r_addr[16]~16_combout\);

-- Location: LCCOMB_X14_Y10_N12
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (r_addr(16) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_addr(16),
	datad => \r_sm.s_clear~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X14_Y10_N5
\r_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[16]~16_combout\,
	asdata => \Selector14~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(16));

-- Location: LCCOMB_X14_Y10_N18
\Decoder0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~49_combout\ = (!r_index(1) & (r_index(0) & \Decoder0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datac => r_index(0),
	datad => \Decoder0~43_combout\,
	combout => \Decoder0~49_combout\);

-- Location: LCCOMB_X14_Y10_N2
\r_addr[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[17]~17_combout\ = (\Decoder0~49_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~49_combout\ & ((r_addr(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(17),
	datad => \Decoder0~49_combout\,
	combout => \r_addr[17]~17_combout\);

-- Location: LCCOMB_X14_Y10_N22
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (r_addr(17) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_addr(17),
	datad => \r_sm.s_clear~q\,
	combout => \Selector13~0_combout\);

-- Location: FF_X14_Y10_N3
\r_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[17]~17_combout\,
	asdata => \Selector13~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(17));

-- Location: LCCOMB_X14_Y10_N24
\Decoder0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~50_combout\ = (r_index(1) & (!r_index(0) & \Decoder0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datac => r_index(0),
	datad => \Decoder0~43_combout\,
	combout => \Decoder0~50_combout\);

-- Location: LCCOMB_X14_Y10_N16
\r_addr[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[18]~18_combout\ = (\Decoder0~50_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~50_combout\ & ((r_addr(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(18),
	datad => \Decoder0~50_combout\,
	combout => \r_addr[18]~18_combout\);

-- Location: LCCOMB_X14_Y10_N8
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (r_addr(18) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_addr(18),
	datad => \r_sm.s_clear~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X14_Y10_N17
\r_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[18]~18_combout\,
	asdata => \Selector12~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(18));

-- Location: LCCOMB_X14_Y10_N10
\Decoder0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~51_combout\ = (r_index(1) & (r_index(0) & \Decoder0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(1),
	datac => r_index(0),
	datad => \Decoder0~43_combout\,
	combout => \Decoder0~51_combout\);

-- Location: LCCOMB_X14_Y10_N30
\r_addr[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_addr[19]~19_combout\ = (\Decoder0~51_combout\ & (\Equal0~2_combout\)) # (!\Decoder0~51_combout\ & ((r_addr(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datac => r_addr(19),
	datad => \Decoder0~51_combout\,
	combout => \r_addr[19]~19_combout\);

-- Location: LCCOMB_X14_Y10_N26
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (r_addr(19) & !\r_sm.s_clear~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_addr(19),
	datad => \r_sm.s_clear~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X14_Y10_N31
\r_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_addr[19]~19_combout\,
	asdata => \Selector11~0_combout\,
	sload => \ALT_INV_r_sm.s_process~q\,
	ena => \i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_addr(19));

-- Location: LCCOMB_X17_Y10_N22
\Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~6_combout\ = (\Equal0~1_combout\ & (\r_sram_data[0]~0_combout\ & (!\p_write_sram~2_combout\ & !\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \r_sram_data[0]~0_combout\,
	datac => \p_write_sram~2_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Decoder1~6_combout\);

-- Location: LCCOMB_X20_Y10_N22
\r_sram_data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[0]~1_combout\ = (\Equal2~7_combout\ & ((\Decoder1~6_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~6_combout\ & ((r_sram_data(0)))))) # (!\Equal2~7_combout\ & (((r_sram_data(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal2~7_combout\,
	datac => r_sram_data(0),
	datad => \Decoder1~6_combout\,
	combout => \r_sram_data[0]~1_combout\);

-- Location: FF_X20_Y10_N23
\r_sram_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(0));

-- Location: LCCOMB_X17_Y10_N26
\Decoder1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~10_combout\ = (\i_rst~input_o\ & (!r_index(3) & (\r_sm.s_process~q\ & r_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst~input_o\,
	datab => r_index(3),
	datac => \r_sm.s_process~q\,
	datad => r_index(2),
	combout => \Decoder1~10_combout\);

-- Location: LCCOMB_X17_Y10_N16
\Decoder1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~7_combout\ = (\Decoder1~10_combout\ & (!\p_write_sram~2_combout\ & (!\LessThan0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~10_combout\,
	datab => \p_write_sram~2_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Decoder1~7_combout\);

-- Location: LCCOMB_X17_Y10_N4
\r_sram_data[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[1]~2_combout\ = (\Decoder0~28_combout\ & ((\Decoder1~7_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~7_combout\ & ((r_sram_data(1)))))) # (!\Decoder0~28_combout\ & (((r_sram_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Decoder0~28_combout\,
	datac => r_sram_data(1),
	datad => \Decoder1~7_combout\,
	combout => \r_sram_data[1]~2_combout\);

-- Location: FF_X17_Y10_N5
\r_sram_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(1));

-- Location: LCCOMB_X17_Y10_N30
\r_sram_data[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[2]~3_combout\ = (\Decoder0~29_combout\ & ((\Decoder1~7_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~7_combout\ & ((r_sram_data(2)))))) # (!\Decoder0~29_combout\ & (((r_sram_data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Decoder0~29_combout\,
	datac => r_sram_data(2),
	datad => \Decoder1~7_combout\,
	combout => \r_sram_data[2]~3_combout\);

-- Location: FF_X17_Y10_N31
\r_sram_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(2));

-- Location: LCCOMB_X17_Y10_N24
\r_sram_data[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[3]~4_combout\ = (\Decoder0~30_combout\ & ((\Decoder1~7_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~7_combout\ & ((r_sram_data(3)))))) # (!\Decoder0~30_combout\ & (((r_sram_data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Decoder0~30_combout\,
	datac => r_sram_data(3),
	datad => \Decoder1~7_combout\,
	combout => \r_sram_data[3]~4_combout\);

-- Location: FF_X17_Y10_N25
\r_sram_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(3));

-- Location: LCCOMB_X16_Y10_N2
\Decoder1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~8_combout\ = (r_index(3) & (!r_index(2) & \Decoder1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(3),
	datac => r_index(2),
	datad => \Decoder1~6_combout\,
	combout => \Decoder1~8_combout\);

-- Location: LCCOMB_X16_Y10_N0
\r_sram_data[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[4]~5_combout\ = (\Decoder0~27_combout\ & ((\Decoder1~8_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~8_combout\ & ((r_sram_data(4)))))) # (!\Decoder0~27_combout\ & (((r_sram_data(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~27_combout\,
	datab => \Equal0~2_combout\,
	datac => r_sram_data(4),
	datad => \Decoder1~8_combout\,
	combout => \r_sram_data[4]~5_combout\);

-- Location: FF_X16_Y10_N1
\r_sram_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(4));

-- Location: LCCOMB_X16_Y10_N18
\r_sram_data[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[5]~6_combout\ = (\Decoder0~28_combout\ & ((\Decoder1~8_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~8_combout\ & ((r_sram_data(5)))))) # (!\Decoder0~28_combout\ & (((r_sram_data(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Decoder0~28_combout\,
	datac => r_sram_data(5),
	datad => \Decoder1~8_combout\,
	combout => \r_sram_data[5]~6_combout\);

-- Location: FF_X16_Y10_N19
\r_sram_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(5));

-- Location: LCCOMB_X16_Y10_N4
\r_sram_data[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[6]~7_combout\ = (\Decoder0~29_combout\ & ((\Decoder1~8_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~8_combout\ & ((r_sram_data(6)))))) # (!\Decoder0~29_combout\ & (((r_sram_data(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~29_combout\,
	datab => \Equal0~2_combout\,
	datac => r_sram_data(6),
	datad => \Decoder1~8_combout\,
	combout => \r_sram_data[6]~7_combout\);

-- Location: FF_X16_Y10_N5
\r_sram_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(6));

-- Location: LCCOMB_X16_Y10_N26
\r_sram_data[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[7]~8_combout\ = (\Decoder0~30_combout\ & ((\Decoder1~8_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~8_combout\ & ((r_sram_data(7)))))) # (!\Decoder0~30_combout\ & (((r_sram_data(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~30_combout\,
	datab => \Equal0~2_combout\,
	datac => r_sram_data(7),
	datad => \Decoder1~8_combout\,
	combout => \r_sram_data[7]~8_combout\);

-- Location: FF_X16_Y10_N27
\r_sram_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(7));

-- Location: LCCOMB_X21_Y10_N6
\Decoder1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~11_combout\ = (r_index(2) & (\i_rst~input_o\ & (\r_sm.s_process~q\ & r_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(2),
	datab => \i_rst~input_o\,
	datac => \r_sm.s_process~q\,
	datad => r_index(3),
	combout => \Decoder1~11_combout\);

-- Location: LCCOMB_X16_Y10_N28
\Decoder1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~9_combout\ = (\Equal0~1_combout\ & (\Decoder1~11_combout\ & (!\LessThan0~2_combout\ & !\p_write_sram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Decoder1~11_combout\,
	datac => \LessThan0~2_combout\,
	datad => \p_write_sram~2_combout\,
	combout => \Decoder1~9_combout\);

-- Location: LCCOMB_X16_Y10_N24
\r_sram_data[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[8]~9_combout\ = (\Decoder0~27_combout\ & ((\Decoder1~9_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~9_combout\ & ((r_sram_data(8)))))) # (!\Decoder0~27_combout\ & (((r_sram_data(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~27_combout\,
	datab => \Equal0~2_combout\,
	datac => r_sram_data(8),
	datad => \Decoder1~9_combout\,
	combout => \r_sram_data[8]~9_combout\);

-- Location: FF_X16_Y10_N25
\r_sram_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(8));

-- Location: LCCOMB_X16_Y10_N22
\r_sram_data[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[9]~10_combout\ = (\Decoder0~28_combout\ & ((\Decoder1~9_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~9_combout\ & ((r_sram_data(9)))))) # (!\Decoder0~28_combout\ & (((r_sram_data(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Decoder0~28_combout\,
	datac => r_sram_data(9),
	datad => \Decoder1~9_combout\,
	combout => \r_sram_data[9]~10_combout\);

-- Location: FF_X16_Y10_N23
\r_sram_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(9));

-- Location: LCCOMB_X16_Y10_N12
\r_sram_data[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[10]~11_combout\ = (\Decoder0~29_combout\ & ((\Decoder1~9_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~9_combout\ & ((r_sram_data(10)))))) # (!\Decoder0~29_combout\ & (((r_sram_data(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~29_combout\,
	datab => \Equal0~2_combout\,
	datac => r_sram_data(10),
	datad => \Decoder1~9_combout\,
	combout => \r_sram_data[10]~11_combout\);

-- Location: FF_X16_Y10_N13
\r_sram_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(10));

-- Location: LCCOMB_X16_Y10_N14
\r_sram_data[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[11]~12_combout\ = (\Decoder0~30_combout\ & ((\Decoder1~9_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~9_combout\ & ((r_sram_data(11)))))) # (!\Decoder0~30_combout\ & (((r_sram_data(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~30_combout\,
	datab => \Equal0~2_combout\,
	datac => r_sram_data(11),
	datad => \Decoder1~9_combout\,
	combout => \r_sram_data[11]~12_combout\);

-- Location: FF_X16_Y10_N15
\r_sram_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(11));

-- Location: LCCOMB_X16_Y10_N10
\Decoder1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~12_combout\ = (!r_index(3) & (!r_index(2) & \Decoder1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_index(3),
	datac => r_index(2),
	datad => \Decoder1~6_combout\,
	combout => \Decoder1~12_combout\);

-- Location: LCCOMB_X16_Y10_N20
\r_sram_data[12]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[12]~13_combout\ = (\Decoder0~27_combout\ & ((\Decoder1~12_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~12_combout\ & ((r_sram_data(12)))))) # (!\Decoder0~27_combout\ & (((r_sram_data(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~27_combout\,
	datab => \Equal0~2_combout\,
	datac => r_sram_data(12),
	datad => \Decoder1~12_combout\,
	combout => \r_sram_data[12]~13_combout\);

-- Location: FF_X16_Y10_N21
\r_sram_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(12));

-- Location: LCCOMB_X16_Y10_N6
\r_sram_data[13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[13]~14_combout\ = (\Decoder0~28_combout\ & ((\Decoder1~12_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~12_combout\ & ((r_sram_data(13)))))) # (!\Decoder0~28_combout\ & (((r_sram_data(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Decoder0~28_combout\,
	datac => r_sram_data(13),
	datad => \Decoder1~12_combout\,
	combout => \r_sram_data[13]~14_combout\);

-- Location: FF_X16_Y10_N7
\r_sram_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[13]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(13));

-- Location: LCCOMB_X16_Y10_N8
\r_sram_data[14]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[14]~15_combout\ = (\Decoder0~29_combout\ & ((\Decoder1~12_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~12_combout\ & ((r_sram_data(14)))))) # (!\Decoder0~29_combout\ & (((r_sram_data(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~29_combout\,
	datab => \Equal0~2_combout\,
	datac => r_sram_data(14),
	datad => \Decoder1~12_combout\,
	combout => \r_sram_data[14]~15_combout\);

-- Location: FF_X16_Y10_N9
\r_sram_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sram_data(14));

-- Location: LCCOMB_X16_Y10_N30
\r_sram_data[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sram_data[15]~16_combout\ = (\Decoder0~30_combout\ & ((\Decoder1~12_combout\ & (\Equal0~2_combout\)) # (!\Decoder1~12_combout\ & ((r_sram_data(15)))))) # (!\Decoder0~30_combout\ & (((r_sram_data(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~30_combout\,
	datab => \Equal0~2_combout\,
	datac => r_sram_data(15),
	datad => \Decoder1~12_combout\,
	combout => \r_sram_data[15]~16_combout\);

-- Location: FF_X16_Y10_N31
\r_sram_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sram_data[15]~16_combout\,
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
END structure;


