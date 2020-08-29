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

-- DATE "08/28/2020 16:24:49"

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

ENTITY 	top_level IS
    PORT (
	i_clk : IN std_logic;
	i_rst : IN std_logic;
	i_sdb : IN std_logic;
	i_rx : IN std_logic;
	o_tx : OUT std_logic;
	o_rx_full : OUT std_logic;
	o_rx_empty : OUT std_logic;
	o_tx_full : OUT std_logic;
	o_tx_empty : OUT std_logic;
	o_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- o_tx	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_rx_full	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_rx_empty	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- i_rst	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_sdb	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rx	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
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
SIGNAL ww_i_sdb : std_logic;
SIGNAL ww_i_rx : std_logic;
SIGNAL ww_o_tx : std_logic;
SIGNAL ww_o_rx_full : std_logic;
SIGNAL ww_o_rx_empty : std_logic;
SIGNAL ww_o_tx_full : std_logic;
SIGNAL ww_o_tx_empty : std_logic;
SIGNAL ww_o_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_tx~output_o\ : std_logic;
SIGNAL \o_rx_full~output_o\ : std_logic;
SIGNAL \o_rx_empty~output_o\ : std_logic;
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
SIGNAL \uart_unit|fifo_tx|r_ptr[0]~1_combout\ : std_logic;
SIGNAL \i_rst~input_o\ : std_logic;
SIGNAL \i_sdb~input_o\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_w_ptr[0]~1_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~3\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~4_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|r_next[2]~4_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~5\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~6_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|r_next[3]~3_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~7\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~8_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~9\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~10_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|r_next[5]~2_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~11\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~12_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|r_next[6]~1_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~13\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~14_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~15\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~16_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|r_next[8]~0_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|Equal0~0_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~0_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|r_next[0]~5_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~1\ : std_logic;
SIGNAL \uart_unit|baud_generator|Add0~2_combout\ : std_logic;
SIGNAL \uart_unit|baud_generator|Equal0~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_s_reg[3]~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector1~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_state_reg.s_idle~q\ : std_logic;
SIGNAL \uart_unit|baud_generator|Equal0~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_s_reg[3]~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_s_reg[3]~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_s_reg[0]~3_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_s_reg[0]~7_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_s_reg[1]~6_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Add0~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_s_reg[2]~5_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Add0~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_s_reg[3]~4_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Equal1~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_state_next~4_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector3~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector3~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_state_reg.s_data~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector2~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_b_reg[7]~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector2~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_state_reg.s_start~q\ : std_logic;
SIGNAL \uart_unit|transmitter|r_n_reg[0]~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_n_reg[0]~3_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_n_reg[1]~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Add1~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_n_reg[2]~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_state_next~5_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector4~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_state_reg.s_stop~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_w_ptr[0]~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Equal1~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add0~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux5~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add1~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add1~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add0~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add0~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add0~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add0~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux5~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux5~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux5~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux5~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_full~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_wr_en~combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux6~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux6~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux6~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux6~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_empty~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_ptr[1]~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add1~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add1~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Add1~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_ptr[0]~1_combout\ : std_logic;
SIGNAL \i_rx~input_o\ : std_logic;
SIGNAL \uart_unit|receiver|Selector0~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_state_reg.s_idle~q\ : std_logic;
SIGNAL \uart_unit|receiver|Selector3~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_n_reg[2]~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Add0~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_s_reg[2]~6_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Equal2~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_b_reg[0]~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector1~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector1~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_state_reg.s_start~q\ : std_logic;
SIGNAL \uart_unit|receiver|r_s_reg[3]~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_s_reg[3]~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_s_reg[3]~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_s_reg[0]~4_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_s_reg[3]~5_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_s_reg[0]~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_s_reg[0]~8_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_s_reg[1]~7_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Equal2~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector3~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector3~4_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector2~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_state_reg.s_data~q\ : std_logic;
SIGNAL \uart_unit|receiver|r_n_reg[0]~3_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Add1~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_n_reg[2]~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_n_reg[1]~2_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector3~0_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector3~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|Selector3~5_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_state_reg.s_stop~q\ : std_logic;
SIGNAL \uart_unit|receiver|o_rx_done_tick~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add1~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add1~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_w_ptr[0]~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_w_ptr[0]~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add0~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add0~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add0~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add0~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add0~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux5~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux5~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add1~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux5~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux5~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux5~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_full~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_wr_en~combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux6~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux6~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux6~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux6~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_empty~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_ptr[4]~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add1~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Add1~1_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_b_reg[7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_b_reg[5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_b_reg[4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_b_reg[3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_b_reg[2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|receiver|r_b_reg[1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[27][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[19][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[19][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[18][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[29][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[20][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~17_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[25][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[16][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~23_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[31][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~20_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~22_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[22][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[30][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~21_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[30][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~24_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[12][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~25_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[12][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~26_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[8][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~27_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[14][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~36_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~39_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[15][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~37_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[13][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~38_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[9][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~17_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~28_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~31_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[7][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~29_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~30_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[1][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~32_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~35_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[6][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~33_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Decoder0~34_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[0][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux19~20_combout\ : std_logic;
SIGNAL \r_transmit_data[0]~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~30_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[1][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~29_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[3][0]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~31_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[7][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[5][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~28_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[5][0]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~32_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~20_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~35_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[6][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~33_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~34_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[0][0]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~14_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~15_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[14][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~27_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[14][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~24_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[10][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[12][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~25_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[12][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~26_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[8][0]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~10_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~39_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[15][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~36_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[11][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~38_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[9][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~37_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[13][0]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~17_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~18_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~23_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[31][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~22_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[22][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~21_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][0]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~7_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[26][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[19][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[18][0]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[28][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[28][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[20][0]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[29][0]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[16][0]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][0]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][0]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Decoder0~17_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[25][0]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~5_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~6_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~9_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector16~20_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[29][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[20][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[25][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[16][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[27][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[19][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[18][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[31][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[31][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[30][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[22][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[14][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[12][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[8][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[7][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[1][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[6][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[0][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[15][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[13][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[9][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~17_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux18~20_combout\ : std_logic;
SIGNAL \r_transmit_data[0]~1\ : std_logic;
SIGNAL \r_transmit_data[1]~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[19][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[26][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[18][1]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[22][1]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[31][1]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[28][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[29][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[20][1]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[25][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[16][1]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~4_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~5_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~6_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[10][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[10][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[8][1]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[12][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[14][1]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[6][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[0][1]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~14_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[1][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[5][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[5][1]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[7][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[3][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[3][1]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~13_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[15][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[13][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[9][1]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[11][1]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[11][1]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~17_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~18_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~19_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector15~20_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[27][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[19][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[19][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[18][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[16][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[25][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[29][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[20][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[31][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[30][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[30][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[22][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[7][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[1][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[15][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[13][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[13][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[9][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~17_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[14][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[12][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[12][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[8][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[6][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[0][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux17~20_combout\ : std_logic;
SIGNAL \r_transmit_data[1]~3\ : std_logic;
SIGNAL \r_transmit_data[2]~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[7][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[7][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[5][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[1][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[3][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[3][2]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~10_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[15][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[11][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[9][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[13][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[13][2]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~17_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[10][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[12][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[12][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[8][2]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[14][2]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[0][2]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[6][2]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~15_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~16_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[26][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[19][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[18][2]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[31][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[22][2]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~7_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[29][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[20][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[28][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[28][2]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[16][2]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][2]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][2]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[25][2]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~5_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~6_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~9_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector14~20_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[6][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[0][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[7][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[1][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[15][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[15][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[13][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[9][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[9][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~17_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[14][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[14][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[12][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[8][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[27][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[19][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[18][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[29][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[20][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[25][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[16][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[31][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[31][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[30][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[22][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux16~20_combout\ : std_logic;
SIGNAL \r_transmit_data[2]~5\ : std_logic;
SIGNAL \r_transmit_data[3]~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[22][3]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[31][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][3]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[28][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[28][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[29][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[20][3]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[25][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[16][3]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~4_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~5_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[26][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[18][3]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[19][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][3]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~1_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[14][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[12][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[10][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[8][3]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~10_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[1][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[5][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[5][3]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[7][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[3][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[3][3]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[6][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[0][3]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~14_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~15_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[15][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[13][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[11][3]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[11][3]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[9][3]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~17_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~18_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~19_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector13~20_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[27][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[19][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[19][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[18][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[16][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[25][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[20][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[29][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[31][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[30][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[30][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[22][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[7][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[1][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[6][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[0][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[14][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[12][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[12][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[8][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[15][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[13][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[13][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[9][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~17_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux15~20_combout\ : std_logic;
SIGNAL \r_transmit_data[3]~7\ : std_logic;
SIGNAL \r_transmit_data[4]~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[26][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[19][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[18][4]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[31][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[22][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][4]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~7_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[29][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[20][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[28][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[28][4]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[25][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[16][4]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~4_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~5_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~6_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[7][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[7][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[5][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[1][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[3][4]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~10_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[6][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[0][4]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~14_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[10][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[10][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[14][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[12][4]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[12][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[8][4]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~12_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~13_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[15][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[11][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[13][4]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[9][4]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~17_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~18_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~19_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector12~20_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[19][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[19][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[27][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[27][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[18][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[25][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[16][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[29][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[20][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[31][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[31][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[30][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[22][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[14][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[14][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[12][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[8][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[6][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[0][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[7][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[1][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[15][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[13][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[9][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~17_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux14~20_combout\ : std_logic;
SIGNAL \r_transmit_data[4]~9\ : std_logic;
SIGNAL \r_transmit_data[5]~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[26][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[26][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[18][5]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[19][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][5]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[22][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][5]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[31][5]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[25][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[16][5]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~4_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[20][5]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[29][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[28][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[28][5]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~3_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~6_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[15][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[13][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[9][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[11][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[11][5]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~17_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[6][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[0][5]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~14_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[3][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[7][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[5][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[1][5]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~12_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~13_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[14][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[14][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[12][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[10][5]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[10][5]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[8][5]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~10_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~11_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~19_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector11~20_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[25][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[16][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[29][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[20][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[19][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[18][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[27][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[31][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[30][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[30][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[22][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[15][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[13][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[13][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[9][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~17_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[7][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[1][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[14][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[12][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[12][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[8][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[6][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[0][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux13~20_combout\ : std_logic;
SIGNAL \r_transmit_data[5]~11\ : std_logic;
SIGNAL \r_transmit_data[6]~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[15][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[11][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[13][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[13][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[9][6]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~17_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[7][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[7][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[5][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[1][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[3][6]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~10_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[0][6]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[6][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][6]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[10][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[10][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[14][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[12][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[12][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[8][6]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~12_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~13_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~16_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[22][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][6]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[31][6]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[19][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[18][6]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[26][6]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[25][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[16][6]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~4_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][6]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[29][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[20][6]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[28][6]~q\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~2_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~3_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~6_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~9_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector10~20_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_b_next~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[19][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[27][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[26][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[18][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[23][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[22][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[30][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[30][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[31][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[24][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[16][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[17][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[25][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[28][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[20][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[21][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[29][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~9_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[13][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[13][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[15][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[11][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[9][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~17_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[4][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[6][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[2][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[0][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[3][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[7][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[5][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[1][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[8][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[10][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[12][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|r_array[14][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_rx|Mux12~20_combout\ : std_logic;
SIGNAL \r_transmit_data[6]~13\ : std_logic;
SIGNAL \r_transmit_data[7]~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[9][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[11][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[11][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~17_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[13][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[15][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~18_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[10][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[10][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[8][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~10_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[12][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[14][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[14][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~11_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[3][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[7][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[5][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[1][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~12_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~13_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[4][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[6][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[2][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[0][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~14_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~15_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~16_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~19_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[27][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[19][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[26][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[26][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[18][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~0_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~1_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[30][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[31][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[23][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[22][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~7_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~8_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[17][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[25][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[16][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[24][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~4_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~5_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[28][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[29][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][7]~feeder_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[21][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|r_array[20][7]~q\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~2_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~3_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~6_combout\ : std_logic;
SIGNAL \uart_unit|fifo_tx|Mux12~9_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_b_reg[7]~3_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_b_reg[7]~4_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_b_reg[2]~5_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|Selector0~0_combout\ : std_logic;
SIGNAL \uart_unit|transmitter|r_tx_reg~q\ : std_logic;
SIGNAL \uart_unit|receiver|r_b_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_unit|baud_generator|r_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_unit|transmitter|r_b_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_ptr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_ptr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_unit|transmitter|r_s_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|receiver|r_s_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_unit|fifo_rx|r_w_ptr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_unit|fifo_tx|r_w_ptr\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_unit|transmitter|r_n_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_unit|receiver|r_n_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_i_rst~input_o\ : std_logic;
SIGNAL \uart_unit|fifo_tx|ALT_INV_r_empty~q\ : std_logic;
SIGNAL \uart_unit|fifo_rx|ALT_INV_r_empty~q\ : std_logic;
SIGNAL \uart_unit|transmitter|ALT_INV_r_tx_reg~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clk <= i_clk;
ww_i_rst <= i_rst;
ww_i_sdb <= i_sdb;
ww_i_rx <= i_rx;
o_tx <= ww_o_tx;
o_rx_full <= ww_o_rx_full;
o_rx_empty <= ww_o_rx_empty;
o_tx_full <= ww_o_tx_full;
o_tx_empty <= ww_o_tx_empty;
o_data <= ww_o_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
\ALT_INV_i_rst~input_o\ <= NOT \i_rst~input_o\;
\uart_unit|fifo_tx|ALT_INV_r_empty~q\ <= NOT \uart_unit|fifo_tx|r_empty~q\;
\uart_unit|fifo_rx|ALT_INV_r_empty~q\ <= NOT \uart_unit|fifo_rx|r_empty~q\;
\uart_unit|transmitter|ALT_INV_r_tx_reg~q\ <= NOT \uart_unit|transmitter|r_tx_reg~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y73_N23
\o_tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|transmitter|ALT_INV_r_tx_reg~q\,
	devoe => ww_devoe,
	o => \o_tx~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\o_rx_full~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_rx|r_full~q\,
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
	i => \uart_unit|fifo_rx|ALT_INV_r_empty~q\,
	devoe => ww_devoe,
	o => \o_rx_empty~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\o_tx_full~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_unit|fifo_tx|r_full~q\,
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
	i => \uart_unit|fifo_tx|ALT_INV_r_empty~q\,
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
	i => \uart_unit|fifo_rx|Mux19~20_combout\,
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
	i => \uart_unit|fifo_rx|Mux18~20_combout\,
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
	i => \uart_unit|fifo_rx|Mux17~20_combout\,
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
	i => \uart_unit|fifo_rx|Mux16~20_combout\,
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
	i => \uart_unit|fifo_rx|Mux15~20_combout\,
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
	i => \uart_unit|fifo_rx|Mux14~20_combout\,
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
	i => \uart_unit|fifo_rx|Mux13~20_combout\,
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
	i => \uart_unit|fifo_rx|Mux12~20_combout\,
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

-- Location: LCCOMB_X96_Y42_N0
\uart_unit|fifo_tx|r_ptr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_ptr[0]~1_combout\ = !\uart_unit|fifo_tx|r_ptr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|fifo_tx|r_ptr[0]~1_combout\);

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

-- Location: IOIBUF_X115_Y42_N15
\i_sdb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sdb,
	o => \i_sdb~input_o\);

-- Location: LCCOMB_X97_Y42_N26
\uart_unit|fifo_tx|r_w_ptr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_w_ptr[0]~1_combout\ = !\uart_unit|fifo_tx|r_w_ptr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_tx|r_w_ptr\(0),
	combout => \uart_unit|fifo_tx|r_w_ptr[0]~1_combout\);

-- Location: LCCOMB_X101_Y44_N12
\uart_unit|baud_generator|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|Add0~2_combout\ = (\uart_unit|baud_generator|r_reg\(1) & (!\uart_unit|baud_generator|Add0~1\)) # (!\uart_unit|baud_generator|r_reg\(1) & ((\uart_unit|baud_generator|Add0~1\) # (GND)))
-- \uart_unit|baud_generator|Add0~3\ = CARRY((!\uart_unit|baud_generator|Add0~1\) # (!\uart_unit|baud_generator|r_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|r_reg\(1),
	datad => VCC,
	cin => \uart_unit|baud_generator|Add0~1\,
	combout => \uart_unit|baud_generator|Add0~2_combout\,
	cout => \uart_unit|baud_generator|Add0~3\);

-- Location: LCCOMB_X101_Y44_N14
\uart_unit|baud_generator|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|Add0~4_combout\ = (\uart_unit|baud_generator|r_reg\(2) & (\uart_unit|baud_generator|Add0~3\ $ (GND))) # (!\uart_unit|baud_generator|r_reg\(2) & (!\uart_unit|baud_generator|Add0~3\ & VCC))
-- \uart_unit|baud_generator|Add0~5\ = CARRY((\uart_unit|baud_generator|r_reg\(2) & !\uart_unit|baud_generator|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|r_reg\(2),
	datad => VCC,
	cin => \uart_unit|baud_generator|Add0~3\,
	combout => \uart_unit|baud_generator|Add0~4_combout\,
	cout => \uart_unit|baud_generator|Add0~5\);

-- Location: LCCOMB_X102_Y44_N4
\uart_unit|baud_generator|r_next[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|r_next[2]~4_combout\ = (\uart_unit|baud_generator|Add0~4_combout\ & (((\uart_unit|baud_generator|r_reg\(0)) # (!\uart_unit|baud_generator|Equal0~1_combout\)) # (!\uart_unit|baud_generator|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|Add0~4_combout\,
	datab => \uart_unit|baud_generator|Equal0~0_combout\,
	datac => \uart_unit|baud_generator|Equal0~1_combout\,
	datad => \uart_unit|baud_generator|r_reg\(0),
	combout => \uart_unit|baud_generator|r_next[2]~4_combout\);

-- Location: FF_X102_Y44_N5
\uart_unit|baud_generator|r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|baud_generator|r_next[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|baud_generator|r_reg\(2));

-- Location: LCCOMB_X101_Y44_N16
\uart_unit|baud_generator|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|Add0~6_combout\ = (\uart_unit|baud_generator|r_reg\(3) & (!\uart_unit|baud_generator|Add0~5\)) # (!\uart_unit|baud_generator|r_reg\(3) & ((\uart_unit|baud_generator|Add0~5\) # (GND)))
-- \uart_unit|baud_generator|Add0~7\ = CARRY((!\uart_unit|baud_generator|Add0~5\) # (!\uart_unit|baud_generator|r_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|r_reg\(3),
	datad => VCC,
	cin => \uart_unit|baud_generator|Add0~5\,
	combout => \uart_unit|baud_generator|Add0~6_combout\,
	cout => \uart_unit|baud_generator|Add0~7\);

-- Location: LCCOMB_X102_Y44_N2
\uart_unit|baud_generator|r_next[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|r_next[3]~3_combout\ = (\uart_unit|baud_generator|Add0~6_combout\ & (((\uart_unit|baud_generator|r_reg\(0)) # (!\uart_unit|baud_generator|Equal0~1_combout\)) # (!\uart_unit|baud_generator|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|Add0~6_combout\,
	datab => \uart_unit|baud_generator|Equal0~0_combout\,
	datac => \uart_unit|baud_generator|Equal0~1_combout\,
	datad => \uart_unit|baud_generator|r_reg\(0),
	combout => \uart_unit|baud_generator|r_next[3]~3_combout\);

-- Location: FF_X102_Y44_N3
\uart_unit|baud_generator|r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|baud_generator|r_next[3]~3_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|baud_generator|r_reg\(3));

-- Location: LCCOMB_X101_Y44_N18
\uart_unit|baud_generator|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|Add0~8_combout\ = (\uart_unit|baud_generator|r_reg\(4) & (\uart_unit|baud_generator|Add0~7\ $ (GND))) # (!\uart_unit|baud_generator|r_reg\(4) & (!\uart_unit|baud_generator|Add0~7\ & VCC))
-- \uart_unit|baud_generator|Add0~9\ = CARRY((\uart_unit|baud_generator|r_reg\(4) & !\uart_unit|baud_generator|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|baud_generator|r_reg\(4),
	datad => VCC,
	cin => \uart_unit|baud_generator|Add0~7\,
	combout => \uart_unit|baud_generator|Add0~8_combout\,
	cout => \uart_unit|baud_generator|Add0~9\);

-- Location: FF_X101_Y44_N19
\uart_unit|baud_generator|r_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|baud_generator|Add0~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|baud_generator|r_reg\(4));

-- Location: LCCOMB_X101_Y44_N20
\uart_unit|baud_generator|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|Add0~10_combout\ = (\uart_unit|baud_generator|r_reg\(5) & (!\uart_unit|baud_generator|Add0~9\)) # (!\uart_unit|baud_generator|r_reg\(5) & ((\uart_unit|baud_generator|Add0~9\) # (GND)))
-- \uart_unit|baud_generator|Add0~11\ = CARRY((!\uart_unit|baud_generator|Add0~9\) # (!\uart_unit|baud_generator|r_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|baud_generator|r_reg\(5),
	datad => VCC,
	cin => \uart_unit|baud_generator|Add0~9\,
	combout => \uart_unit|baud_generator|Add0~10_combout\,
	cout => \uart_unit|baud_generator|Add0~11\);

-- Location: LCCOMB_X102_Y44_N28
\uart_unit|baud_generator|r_next[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|r_next[5]~2_combout\ = (\uart_unit|baud_generator|Add0~10_combout\ & ((\uart_unit|baud_generator|r_reg\(0)) # ((!\uart_unit|baud_generator|Equal0~1_combout\) # (!\uart_unit|baud_generator|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|r_reg\(0),
	datab => \uart_unit|baud_generator|Equal0~0_combout\,
	datac => \uart_unit|baud_generator|Equal0~1_combout\,
	datad => \uart_unit|baud_generator|Add0~10_combout\,
	combout => \uart_unit|baud_generator|r_next[5]~2_combout\);

-- Location: FF_X102_Y44_N29
\uart_unit|baud_generator|r_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|baud_generator|r_next[5]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|baud_generator|r_reg\(5));

-- Location: LCCOMB_X101_Y44_N22
\uart_unit|baud_generator|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|Add0~12_combout\ = (\uart_unit|baud_generator|r_reg\(6) & (\uart_unit|baud_generator|Add0~11\ $ (GND))) # (!\uart_unit|baud_generator|r_reg\(6) & (!\uart_unit|baud_generator|Add0~11\ & VCC))
-- \uart_unit|baud_generator|Add0~13\ = CARRY((\uart_unit|baud_generator|r_reg\(6) & !\uart_unit|baud_generator|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|r_reg\(6),
	datad => VCC,
	cin => \uart_unit|baud_generator|Add0~11\,
	combout => \uart_unit|baud_generator|Add0~12_combout\,
	cout => \uart_unit|baud_generator|Add0~13\);

-- Location: LCCOMB_X102_Y44_N30
\uart_unit|baud_generator|r_next[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|r_next[6]~1_combout\ = (\uart_unit|baud_generator|Add0~12_combout\ & ((\uart_unit|baud_generator|r_reg\(0)) # ((!\uart_unit|baud_generator|Equal0~1_combout\) # (!\uart_unit|baud_generator|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|r_reg\(0),
	datab => \uart_unit|baud_generator|Equal0~0_combout\,
	datac => \uart_unit|baud_generator|Equal0~1_combout\,
	datad => \uart_unit|baud_generator|Add0~12_combout\,
	combout => \uart_unit|baud_generator|r_next[6]~1_combout\);

-- Location: FF_X102_Y44_N31
\uart_unit|baud_generator|r_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|baud_generator|r_next[6]~1_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|baud_generator|r_reg\(6));

-- Location: LCCOMB_X101_Y44_N24
\uart_unit|baud_generator|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|Add0~14_combout\ = (\uart_unit|baud_generator|r_reg\(7) & (!\uart_unit|baud_generator|Add0~13\)) # (!\uart_unit|baud_generator|r_reg\(7) & ((\uart_unit|baud_generator|Add0~13\) # (GND)))
-- \uart_unit|baud_generator|Add0~15\ = CARRY((!\uart_unit|baud_generator|Add0~13\) # (!\uart_unit|baud_generator|r_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|baud_generator|r_reg\(7),
	datad => VCC,
	cin => \uart_unit|baud_generator|Add0~13\,
	combout => \uart_unit|baud_generator|Add0~14_combout\,
	cout => \uart_unit|baud_generator|Add0~15\);

-- Location: FF_X102_Y44_N23
\uart_unit|baud_generator|r_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|baud_generator|Add0~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|baud_generator|r_reg\(7));

-- Location: LCCOMB_X101_Y44_N26
\uart_unit|baud_generator|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|Add0~16_combout\ = \uart_unit|baud_generator|Add0~15\ $ (!\uart_unit|baud_generator|r_reg\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|baud_generator|r_reg\(8),
	cin => \uart_unit|baud_generator|Add0~15\,
	combout => \uart_unit|baud_generator|Add0~16_combout\);

-- Location: LCCOMB_X102_Y44_N24
\uart_unit|baud_generator|r_next[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|r_next[8]~0_combout\ = (\uart_unit|baud_generator|Add0~16_combout\ & (((\uart_unit|baud_generator|r_reg\(0)) # (!\uart_unit|baud_generator|Equal0~1_combout\)) # (!\uart_unit|baud_generator|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|Add0~16_combout\,
	datab => \uart_unit|baud_generator|Equal0~0_combout\,
	datac => \uart_unit|baud_generator|Equal0~1_combout\,
	datad => \uart_unit|baud_generator|r_reg\(0),
	combout => \uart_unit|baud_generator|r_next[8]~0_combout\);

-- Location: FF_X102_Y44_N25
\uart_unit|baud_generator|r_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|baud_generator|r_next[8]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|baud_generator|r_reg\(8));

-- Location: LCCOMB_X102_Y44_N0
\uart_unit|baud_generator|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|Equal0~0_combout\ = (!\uart_unit|baud_generator|r_reg\(7) & (\uart_unit|baud_generator|r_reg\(8) & (\uart_unit|baud_generator|r_reg\(6) & \uart_unit|baud_generator|r_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|r_reg\(7),
	datab => \uart_unit|baud_generator|r_reg\(8),
	datac => \uart_unit|baud_generator|r_reg\(6),
	datad => \uart_unit|baud_generator|r_reg\(5),
	combout => \uart_unit|baud_generator|Equal0~0_combout\);

-- Location: LCCOMB_X101_Y44_N10
\uart_unit|baud_generator|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|Add0~0_combout\ = \uart_unit|baud_generator|r_reg\(0) $ (VCC)
-- \uart_unit|baud_generator|Add0~1\ = CARRY(\uart_unit|baud_generator|r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|r_reg\(0),
	datad => VCC,
	combout => \uart_unit|baud_generator|Add0~0_combout\,
	cout => \uart_unit|baud_generator|Add0~1\);

-- Location: LCCOMB_X102_Y44_N20
\uart_unit|baud_generator|r_next[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|r_next[0]~5_combout\ = (\uart_unit|baud_generator|Add0~0_combout\ & (((\uart_unit|baud_generator|r_reg\(0)) # (!\uart_unit|baud_generator|Equal0~0_combout\)) # (!\uart_unit|baud_generator|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|Equal0~1_combout\,
	datab => \uart_unit|baud_generator|Equal0~0_combout\,
	datac => \uart_unit|baud_generator|r_reg\(0),
	datad => \uart_unit|baud_generator|Add0~0_combout\,
	combout => \uart_unit|baud_generator|r_next[0]~5_combout\);

-- Location: FF_X102_Y44_N21
\uart_unit|baud_generator|r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|baud_generator|r_next[0]~5_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|baud_generator|r_reg\(0));

-- Location: FF_X101_Y44_N13
\uart_unit|baud_generator|r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|baud_generator|Add0~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|baud_generator|r_reg\(1));

-- Location: LCCOMB_X102_Y44_N26
\uart_unit|baud_generator|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|Equal0~1_combout\ = (!\uart_unit|baud_generator|r_reg\(1) & (\uart_unit|baud_generator|r_reg\(3) & (\uart_unit|baud_generator|r_reg\(2) & !\uart_unit|baud_generator|r_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|r_reg\(1),
	datab => \uart_unit|baud_generator|r_reg\(3),
	datac => \uart_unit|baud_generator|r_reg\(2),
	datad => \uart_unit|baud_generator|r_reg\(4),
	combout => \uart_unit|baud_generator|Equal0~1_combout\);

-- Location: LCCOMB_X100_Y44_N26
\uart_unit|transmitter|r_s_reg[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_s_reg[3]~0_combout\ = (!\uart_unit|transmitter|r_state_reg.s_data~q\ & !\uart_unit|transmitter|r_state_reg.s_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|transmitter|r_state_reg.s_data~q\,
	datad => \uart_unit|transmitter|r_state_reg.s_start~q\,
	combout => \uart_unit|transmitter|r_s_reg[3]~0_combout\);

-- Location: LCCOMB_X101_Y44_N28
\uart_unit|transmitter|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector1~0_combout\ = (\uart_unit|fifo_tx|r_empty~q\ & (((!\uart_unit|transmitter|r_state_next~4_combout\)) # (!\uart_unit|transmitter|r_state_reg.s_stop~q\))) # (!\uart_unit|fifo_tx|r_empty~q\ & 
-- (\uart_unit|transmitter|r_state_reg.s_idle~q\ & ((!\uart_unit|transmitter|r_state_next~4_combout\) # (!\uart_unit|transmitter|r_state_reg.s_stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_empty~q\,
	datab => \uart_unit|transmitter|r_state_reg.s_stop~q\,
	datac => \uart_unit|transmitter|r_state_reg.s_idle~q\,
	datad => \uart_unit|transmitter|r_state_next~4_combout\,
	combout => \uart_unit|transmitter|Selector1~0_combout\);

-- Location: FF_X101_Y44_N29
\uart_unit|transmitter|r_state_reg.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector1~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_state_reg.s_idle~q\);

-- Location: LCCOMB_X102_Y44_N14
\uart_unit|baud_generator|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|baud_generator|Equal0~2_combout\ = (\uart_unit|baud_generator|Equal0~0_combout\ & (\uart_unit|baud_generator|Equal0~1_combout\ & !\uart_unit|baud_generator|r_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|baud_generator|Equal0~0_combout\,
	datac => \uart_unit|baud_generator|Equal0~1_combout\,
	datad => \uart_unit|baud_generator|r_reg\(0),
	combout => \uart_unit|baud_generator|Equal0~2_combout\);

-- Location: LCCOMB_X101_Y44_N8
\uart_unit|transmitter|r_s_reg[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_s_reg[3]~1_combout\ = (\uart_unit|fifo_tx|r_empty~q\ & (\uart_unit|transmitter|r_state_reg.s_stop~q\ & (\uart_unit|transmitter|Equal1~0_combout\))) # (!\uart_unit|fifo_tx|r_empty~q\ & 
-- (((\uart_unit|transmitter|r_state_reg.s_stop~q\ & \uart_unit|transmitter|Equal1~0_combout\)) # (!\uart_unit|transmitter|r_state_reg.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_empty~q\,
	datab => \uart_unit|transmitter|r_state_reg.s_stop~q\,
	datac => \uart_unit|transmitter|Equal1~0_combout\,
	datad => \uart_unit|transmitter|r_state_reg.s_idle~q\,
	combout => \uart_unit|transmitter|r_s_reg[3]~1_combout\);

-- Location: LCCOMB_X102_Y44_N6
\uart_unit|transmitter|r_s_reg[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_s_reg[3]~2_combout\ = (\uart_unit|transmitter|r_s_reg[3]~1_combout\) # ((!\uart_unit|baud_generator|Equal0~2_combout\ & ((\uart_unit|transmitter|r_state_reg.s_stop~q\) # (!\uart_unit|transmitter|r_s_reg[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_state_reg.s_stop~q\,
	datab => \uart_unit|transmitter|r_s_reg[3]~0_combout\,
	datac => \uart_unit|baud_generator|Equal0~2_combout\,
	datad => \uart_unit|transmitter|r_s_reg[3]~1_combout\,
	combout => \uart_unit|transmitter|r_s_reg[3]~2_combout\);

-- Location: LCCOMB_X101_Y44_N4
\uart_unit|transmitter|r_s_reg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_s_reg[0]~3_combout\ = (\uart_unit|transmitter|r_state_reg.s_idle~q\ & (!\uart_unit|transmitter|r_s_reg[3]~2_combout\ & ((\uart_unit|transmitter|r_s_reg[3]~0_combout\) # (!\uart_unit|transmitter|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_s_reg[3]~0_combout\,
	datab => \uart_unit|transmitter|r_state_reg.s_idle~q\,
	datac => \uart_unit|transmitter|Equal1~0_combout\,
	datad => \uart_unit|transmitter|r_s_reg[3]~2_combout\,
	combout => \uart_unit|transmitter|r_s_reg[0]~3_combout\);

-- Location: LCCOMB_X101_Y44_N0
\uart_unit|transmitter|r_s_reg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_s_reg[0]~7_combout\ = (\uart_unit|transmitter|r_s_reg\(0) & ((\uart_unit|transmitter|r_s_reg[3]~2_combout\))) # (!\uart_unit|transmitter|r_s_reg\(0) & (\uart_unit|transmitter|r_s_reg[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_s_reg[0]~3_combout\,
	datac => \uart_unit|transmitter|r_s_reg\(0),
	datad => \uart_unit|transmitter|r_s_reg[3]~2_combout\,
	combout => \uart_unit|transmitter|r_s_reg[0]~7_combout\);

-- Location: FF_X101_Y44_N1
\uart_unit|transmitter|r_s_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_s_reg[0]~7_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_s_reg\(0));

-- Location: LCCOMB_X101_Y44_N6
\uart_unit|transmitter|r_s_reg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_s_reg[1]~6_combout\ = (\uart_unit|transmitter|r_s_reg\(1) & ((\uart_unit|transmitter|r_s_reg[3]~2_combout\) # ((\uart_unit|transmitter|r_s_reg[0]~3_combout\ & !\uart_unit|transmitter|r_s_reg\(0))))) # 
-- (!\uart_unit|transmitter|r_s_reg\(1) & (((\uart_unit|transmitter|r_s_reg[0]~3_combout\ & \uart_unit|transmitter|r_s_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_s_reg[3]~2_combout\,
	datab => \uart_unit|transmitter|r_s_reg[0]~3_combout\,
	datac => \uart_unit|transmitter|r_s_reg\(1),
	datad => \uart_unit|transmitter|r_s_reg\(0),
	combout => \uart_unit|transmitter|r_s_reg[1]~6_combout\);

-- Location: FF_X101_Y44_N7
\uart_unit|transmitter|r_s_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_s_reg[1]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_s_reg\(1));

-- Location: LCCOMB_X102_Y44_N22
\uart_unit|transmitter|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Add0~1_combout\ = \uart_unit|transmitter|r_s_reg\(2) $ (((\uart_unit|transmitter|r_s_reg\(0) & \uart_unit|transmitter|r_s_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_s_reg\(0),
	datab => \uart_unit|transmitter|r_s_reg\(1),
	datad => \uart_unit|transmitter|r_s_reg\(2),
	combout => \uart_unit|transmitter|Add0~1_combout\);

-- Location: LCCOMB_X102_Y44_N10
\uart_unit|transmitter|r_s_reg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_s_reg[2]~5_combout\ = (\uart_unit|transmitter|Add0~1_combout\ & ((\uart_unit|transmitter|r_s_reg[0]~3_combout\) # ((\uart_unit|transmitter|r_s_reg\(2) & \uart_unit|transmitter|r_s_reg[3]~2_combout\)))) # 
-- (!\uart_unit|transmitter|Add0~1_combout\ & (((\uart_unit|transmitter|r_s_reg\(2) & \uart_unit|transmitter|r_s_reg[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Add0~1_combout\,
	datab => \uart_unit|transmitter|r_s_reg[0]~3_combout\,
	datac => \uart_unit|transmitter|r_s_reg\(2),
	datad => \uart_unit|transmitter|r_s_reg[3]~2_combout\,
	combout => \uart_unit|transmitter|r_s_reg[2]~5_combout\);

-- Location: FF_X102_Y44_N11
\uart_unit|transmitter|r_s_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_s_reg[2]~5_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_s_reg\(2));

-- Location: LCCOMB_X102_Y44_N12
\uart_unit|transmitter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Add0~0_combout\ = \uart_unit|transmitter|r_s_reg\(3) $ (((\uart_unit|transmitter|r_s_reg\(2) & (\uart_unit|transmitter|r_s_reg\(1) & \uart_unit|transmitter|r_s_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_s_reg\(2),
	datab => \uart_unit|transmitter|r_s_reg\(1),
	datac => \uart_unit|transmitter|r_s_reg\(0),
	datad => \uart_unit|transmitter|r_s_reg\(3),
	combout => \uart_unit|transmitter|Add0~0_combout\);

-- Location: LCCOMB_X102_Y44_N16
\uart_unit|transmitter|r_s_reg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_s_reg[3]~4_combout\ = (\uart_unit|transmitter|Add0~0_combout\ & ((\uart_unit|transmitter|r_s_reg[0]~3_combout\) # ((\uart_unit|transmitter|r_s_reg\(3) & \uart_unit|transmitter|r_s_reg[3]~2_combout\)))) # 
-- (!\uart_unit|transmitter|Add0~0_combout\ & (((\uart_unit|transmitter|r_s_reg\(3) & \uart_unit|transmitter|r_s_reg[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Add0~0_combout\,
	datab => \uart_unit|transmitter|r_s_reg[0]~3_combout\,
	datac => \uart_unit|transmitter|r_s_reg\(3),
	datad => \uart_unit|transmitter|r_s_reg[3]~2_combout\,
	combout => \uart_unit|transmitter|r_s_reg[3]~4_combout\);

-- Location: FF_X102_Y44_N17
\uart_unit|transmitter|r_s_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_s_reg[3]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_s_reg\(3));

-- Location: LCCOMB_X102_Y44_N8
\uart_unit|transmitter|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Equal1~0_combout\ = (\uart_unit|transmitter|r_s_reg\(2) & (\uart_unit|transmitter|r_s_reg\(1) & (\uart_unit|transmitter|r_s_reg\(0) & \uart_unit|transmitter|r_s_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_s_reg\(2),
	datab => \uart_unit|transmitter|r_s_reg\(1),
	datac => \uart_unit|transmitter|r_s_reg\(0),
	datad => \uart_unit|transmitter|r_s_reg\(3),
	combout => \uart_unit|transmitter|Equal1~0_combout\);

-- Location: LCCOMB_X102_Y44_N18
\uart_unit|transmitter|r_state_next~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_state_next~4_combout\ = (\uart_unit|baud_generator|Equal0~1_combout\ & (!\uart_unit|baud_generator|r_reg\(0) & (\uart_unit|transmitter|Equal1~0_combout\ & \uart_unit|baud_generator|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|baud_generator|Equal0~1_combout\,
	datab => \uart_unit|baud_generator|r_reg\(0),
	datac => \uart_unit|transmitter|Equal1~0_combout\,
	datad => \uart_unit|baud_generator|Equal0~0_combout\,
	combout => \uart_unit|transmitter|r_state_next~4_combout\);

-- Location: LCCOMB_X100_Y44_N8
\uart_unit|transmitter|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector3~1_combout\ = (\uart_unit|transmitter|r_state_next~4_combout\ & ((\uart_unit|transmitter|r_state_reg.s_start~q\) # ((!\uart_unit|transmitter|r_state_next~5_combout\ & \uart_unit|transmitter|r_state_reg.s_data~q\)))) # 
-- (!\uart_unit|transmitter|r_state_next~4_combout\ & (((\uart_unit|transmitter|r_state_reg.s_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_state_next~5_combout\,
	datab => \uart_unit|transmitter|r_state_reg.s_start~q\,
	datac => \uart_unit|transmitter|r_state_reg.s_data~q\,
	datad => \uart_unit|transmitter|r_state_next~4_combout\,
	combout => \uart_unit|transmitter|Selector3~1_combout\);

-- Location: LCCOMB_X100_Y44_N4
\uart_unit|transmitter|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector3~2_combout\ = (\uart_unit|transmitter|Selector3~1_combout\ & ((!\uart_unit|transmitter|r_state_next~4_combout\) # (!\uart_unit|transmitter|r_state_reg.s_stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_state_reg.s_stop~q\,
	datac => \uart_unit|transmitter|Selector3~1_combout\,
	datad => \uart_unit|transmitter|r_state_next~4_combout\,
	combout => \uart_unit|transmitter|Selector3~2_combout\);

-- Location: FF_X100_Y44_N5
\uart_unit|transmitter|r_state_reg.s_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector3~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_state_reg.s_data~q\);

-- Location: LCCOMB_X100_Y44_N10
\uart_unit|transmitter|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector2~1_combout\ = (\uart_unit|transmitter|r_state_next~5_combout\ & (\uart_unit|transmitter|r_state_reg.s_data~q\ & \uart_unit|transmitter|r_state_next~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_state_next~5_combout\,
	datab => \uart_unit|transmitter|r_state_reg.s_data~q\,
	datad => \uart_unit|transmitter|r_state_next~4_combout\,
	combout => \uart_unit|transmitter|Selector2~1_combout\);

-- Location: LCCOMB_X101_Y44_N30
\uart_unit|transmitter|r_b_reg[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_b_reg[7]~2_combout\ = (!\uart_unit|transmitter|r_state_reg.s_idle~q\ & \uart_unit|fifo_tx|r_empty~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_state_reg.s_idle~q\,
	datad => \uart_unit|fifo_tx|r_empty~q\,
	combout => \uart_unit|transmitter|r_b_reg[7]~2_combout\);

-- Location: LCCOMB_X100_Y44_N18
\uart_unit|transmitter|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector2~2_combout\ = (!\uart_unit|transmitter|Selector2~1_combout\ & ((\uart_unit|transmitter|r_b_reg[7]~2_combout\) # ((\uart_unit|transmitter|r_state_reg.s_start~q\ & !\uart_unit|transmitter|r_state_next~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector2~1_combout\,
	datab => \uart_unit|transmitter|r_b_reg[7]~2_combout\,
	datac => \uart_unit|transmitter|r_state_reg.s_start~q\,
	datad => \uart_unit|transmitter|r_state_next~4_combout\,
	combout => \uart_unit|transmitter|Selector2~2_combout\);

-- Location: FF_X100_Y44_N19
\uart_unit|transmitter|r_state_reg.s_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector2~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_state_reg.s_start~q\);

-- Location: LCCOMB_X100_Y44_N24
\uart_unit|transmitter|r_n_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_n_reg[0]~0_combout\ = ((!\uart_unit|transmitter|r_state_reg.s_start~q\ & ((\uart_unit|transmitter|r_state_next~5_combout\) # (!\uart_unit|transmitter|r_state_reg.s_data~q\)))) # (!\uart_unit|transmitter|r_state_next~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_state_next~5_combout\,
	datab => \uart_unit|transmitter|r_state_reg.s_start~q\,
	datac => \uart_unit|transmitter|r_state_reg.s_data~q\,
	datad => \uart_unit|transmitter|r_state_next~4_combout\,
	combout => \uart_unit|transmitter|r_n_reg[0]~0_combout\);

-- Location: LCCOMB_X97_Y44_N18
\uart_unit|transmitter|r_n_reg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_n_reg[0]~3_combout\ = (\uart_unit|transmitter|r_n_reg[0]~0_combout\ & ((\uart_unit|transmitter|r_n_reg\(0)))) # (!\uart_unit|transmitter|r_n_reg[0]~0_combout\ & (\uart_unit|transmitter|r_state_reg.s_data~q\ & 
-- !\uart_unit|transmitter|r_n_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_n_reg[0]~0_combout\,
	datab => \uart_unit|transmitter|r_state_reg.s_data~q\,
	datac => \uart_unit|transmitter|r_n_reg\(0),
	combout => \uart_unit|transmitter|r_n_reg[0]~3_combout\);

-- Location: FF_X97_Y44_N19
\uart_unit|transmitter|r_n_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_n_reg[0]~3_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_n_reg\(0));

-- Location: LCCOMB_X97_Y44_N2
\uart_unit|transmitter|r_n_reg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_n_reg[1]~2_combout\ = (\uart_unit|transmitter|r_n_reg[0]~0_combout\ & (((\uart_unit|transmitter|r_n_reg\(1))))) # (!\uart_unit|transmitter|r_n_reg[0]~0_combout\ & (\uart_unit|transmitter|r_state_reg.s_data~q\ & 
-- (\uart_unit|transmitter|r_n_reg\(1) $ (\uart_unit|transmitter|r_n_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_n_reg[0]~0_combout\,
	datab => \uart_unit|transmitter|r_state_reg.s_data~q\,
	datac => \uart_unit|transmitter|r_n_reg\(1),
	datad => \uart_unit|transmitter|r_n_reg\(0),
	combout => \uart_unit|transmitter|r_n_reg[1]~2_combout\);

-- Location: FF_X97_Y44_N3
\uart_unit|transmitter|r_n_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_n_reg[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_n_reg\(1));

-- Location: LCCOMB_X97_Y44_N28
\uart_unit|transmitter|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Add1~0_combout\ = \uart_unit|transmitter|r_n_reg\(2) $ (((\uart_unit|transmitter|r_n_reg\(0) & \uart_unit|transmitter|r_n_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_n_reg\(2),
	datab => \uart_unit|transmitter|r_n_reg\(0),
	datad => \uart_unit|transmitter|r_n_reg\(1),
	combout => \uart_unit|transmitter|Add1~0_combout\);

-- Location: LCCOMB_X97_Y44_N12
\uart_unit|transmitter|r_n_reg[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_n_reg[2]~1_combout\ = (\uart_unit|transmitter|r_n_reg[0]~0_combout\ & (((\uart_unit|transmitter|r_n_reg\(2))))) # (!\uart_unit|transmitter|r_n_reg[0]~0_combout\ & (\uart_unit|transmitter|r_state_reg.s_data~q\ & 
-- ((\uart_unit|transmitter|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_n_reg[0]~0_combout\,
	datab => \uart_unit|transmitter|r_state_reg.s_data~q\,
	datac => \uart_unit|transmitter|r_n_reg\(2),
	datad => \uart_unit|transmitter|Add1~0_combout\,
	combout => \uart_unit|transmitter|r_n_reg[2]~1_combout\);

-- Location: FF_X97_Y44_N13
\uart_unit|transmitter|r_n_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_n_reg[2]~1_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_n_reg\(2));

-- Location: LCCOMB_X97_Y44_N6
\uart_unit|transmitter|r_state_next~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_state_next~5_combout\ = (\uart_unit|transmitter|r_n_reg\(2) & (\uart_unit|transmitter|r_n_reg\(0) & \uart_unit|transmitter|r_n_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_n_reg\(2),
	datab => \uart_unit|transmitter|r_n_reg\(0),
	datad => \uart_unit|transmitter|r_n_reg\(1),
	combout => \uart_unit|transmitter|r_state_next~5_combout\);

-- Location: LCCOMB_X97_Y44_N24
\uart_unit|transmitter|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector4~0_combout\ = (\uart_unit|transmitter|r_state_next~4_combout\ & (\uart_unit|transmitter|r_state_next~5_combout\ & (\uart_unit|transmitter|r_state_reg.s_data~q\))) # (!\uart_unit|transmitter|r_state_next~4_combout\ & 
-- (((\uart_unit|transmitter|r_state_reg.s_stop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_state_next~5_combout\,
	datab => \uart_unit|transmitter|r_state_reg.s_data~q\,
	datac => \uart_unit|transmitter|r_state_reg.s_stop~q\,
	datad => \uart_unit|transmitter|r_state_next~4_combout\,
	combout => \uart_unit|transmitter|Selector4~0_combout\);

-- Location: FF_X97_Y44_N25
\uart_unit|transmitter|r_state_reg.s_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector4~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_state_reg.s_stop~q\);

-- Location: LCCOMB_X96_Y42_N14
\uart_unit|fifo_tx|r_w_ptr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_w_ptr[0]~0_combout\ = (!\i_sdb~input_o\ & (((\uart_unit|transmitter|r_state_reg.s_stop~q\ & \uart_unit|transmitter|r_state_next~4_combout\)) # (!\uart_unit|fifo_tx|r_full~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_state_reg.s_stop~q\,
	datab => \uart_unit|fifo_tx|r_full~q\,
	datac => \i_sdb~input_o\,
	datad => \uart_unit|transmitter|r_state_next~4_combout\,
	combout => \uart_unit|fifo_tx|r_w_ptr[0]~0_combout\);

-- Location: FF_X97_Y42_N27
\uart_unit|fifo_tx|r_w_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_w_ptr[0]~1_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|r_w_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_w_ptr\(0));

-- Location: LCCOMB_X97_Y42_N6
\uart_unit|fifo_tx|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Equal1~0_combout\ = \uart_unit|fifo_tx|r_w_ptr\(0) $ (\uart_unit|fifo_tx|r_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_tx|r_w_ptr\(0),
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|fifo_tx|Equal1~0_combout\);

-- Location: FF_X97_Y42_N17
\uart_unit|fifo_tx|r_w_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|Add0~3_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|r_w_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_w_ptr\(1));

-- Location: LCCOMB_X97_Y42_N16
\uart_unit|fifo_tx|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add0~3_combout\ = \uart_unit|fifo_tx|r_w_ptr\(0) $ (\uart_unit|fifo_tx|r_w_ptr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(0),
	datac => \uart_unit|fifo_tx|r_w_ptr\(1),
	combout => \uart_unit|fifo_tx|Add0~3_combout\);

-- Location: LCCOMB_X97_Y42_N2
\uart_unit|fifo_tx|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux5~1_combout\ = (\uart_unit|fifo_tx|Equal1~0_combout\ & (!\i_sdb~input_o\ & (\uart_unit|fifo_tx|Add0~3_combout\ $ (!\uart_unit|fifo_tx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Equal1~0_combout\,
	datab => \uart_unit|fifo_tx|Add0~3_combout\,
	datac => \uart_unit|fifo_tx|r_ptr\(1),
	datad => \i_sdb~input_o\,
	combout => \uart_unit|fifo_tx|Mux5~1_combout\);

-- Location: LCCOMB_X97_Y45_N12
\uart_unit|fifo_tx|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add1~0_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_ptr\(3) & (\uart_unit|fifo_tx|r_ptr\(2) & \uart_unit|fifo_tx|r_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_ptr\(3),
	datac => \uart_unit|fifo_tx|r_ptr\(2),
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|fifo_tx|Add1~0_combout\);

-- Location: LCCOMB_X97_Y42_N30
\uart_unit|fifo_tx|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add1~1_combout\ = \uart_unit|fifo_tx|r_ptr\(4) $ (\uart_unit|fifo_tx|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_tx|r_ptr\(4),
	datad => \uart_unit|fifo_tx|Add1~0_combout\,
	combout => \uart_unit|fifo_tx|Add1~1_combout\);

-- Location: FF_X97_Y42_N31
\uart_unit|fifo_tx|r_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|Add1~1_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|r_ptr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_ptr\(4));

-- Location: FF_X97_Y42_N1
\uart_unit|fifo_tx|r_w_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|Add0~1_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|r_w_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_w_ptr\(4));

-- Location: LCCOMB_X97_Y42_N18
\uart_unit|fifo_tx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add0~2_combout\ = \uart_unit|fifo_tx|r_w_ptr\(2) $ (((\uart_unit|fifo_tx|r_w_ptr\(0) & \uart_unit|fifo_tx|r_w_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(0),
	datac => \uart_unit|fifo_tx|r_w_ptr\(2),
	datad => \uart_unit|fifo_tx|r_w_ptr\(1),
	combout => \uart_unit|fifo_tx|Add0~2_combout\);

-- Location: FF_X97_Y42_N19
\uart_unit|fifo_tx|r_w_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|Add0~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|r_w_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_w_ptr\(2));

-- Location: LCCOMB_X97_Y42_N24
\uart_unit|fifo_tx|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add0~4_combout\ = \uart_unit|fifo_tx|r_w_ptr\(3) $ (((\uart_unit|fifo_tx|r_w_ptr\(2) & (\uart_unit|fifo_tx|r_w_ptr\(0) & \uart_unit|fifo_tx|r_w_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(2),
	datab => \uart_unit|fifo_tx|r_w_ptr\(0),
	datac => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|r_w_ptr\(1),
	combout => \uart_unit|fifo_tx|Add0~4_combout\);

-- Location: FF_X97_Y42_N25
\uart_unit|fifo_tx|r_w_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|Add0~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|r_w_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_w_ptr\(3));

-- Location: LCCOMB_X97_Y42_N22
\uart_unit|fifo_tx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add0~0_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(0) & (\uart_unit|fifo_tx|r_w_ptr\(3) & (\uart_unit|fifo_tx|r_w_ptr\(2) & \uart_unit|fifo_tx|r_w_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(0),
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datac => \uart_unit|fifo_tx|r_w_ptr\(2),
	datad => \uart_unit|fifo_tx|r_w_ptr\(1),
	combout => \uart_unit|fifo_tx|Add0~0_combout\);

-- Location: LCCOMB_X97_Y42_N0
\uart_unit|fifo_tx|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add0~1_combout\ = \uart_unit|fifo_tx|r_w_ptr\(4) $ (\uart_unit|fifo_tx|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_tx|r_w_ptr\(4),
	datad => \uart_unit|fifo_tx|Add0~0_combout\,
	combout => \uart_unit|fifo_tx|Add0~1_combout\);

-- Location: LCCOMB_X97_Y42_N20
\uart_unit|fifo_tx|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux5~0_combout\ = (\uart_unit|fifo_tx|r_ptr\(4) & (\uart_unit|fifo_tx|Add0~1_combout\ & (\uart_unit|fifo_tx|r_ptr\(2) $ (!\uart_unit|fifo_tx|Add0~2_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(4) & (!\uart_unit|fifo_tx|Add0~1_combout\ & 
-- (\uart_unit|fifo_tx|r_ptr\(2) $ (!\uart_unit|fifo_tx|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(4),
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|Add0~1_combout\,
	datad => \uart_unit|fifo_tx|Add0~2_combout\,
	combout => \uart_unit|fifo_tx|Mux5~0_combout\);

-- Location: LCCOMB_X96_Y42_N8
\uart_unit|fifo_tx|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux5~2_combout\ = (\uart_unit|fifo_tx|Mux5~1_combout\ & (\uart_unit|fifo_tx|Mux5~0_combout\ & (\uart_unit|fifo_tx|r_ptr\(3) $ (!\uart_unit|fifo_tx|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Mux5~1_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(3),
	datac => \uart_unit|fifo_tx|Mux5~0_combout\,
	datad => \uart_unit|fifo_tx|Add0~4_combout\,
	combout => \uart_unit|fifo_tx|Mux5~2_combout\);

-- Location: LCCOMB_X96_Y42_N20
\uart_unit|fifo_tx|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux5~3_combout\ = (\uart_unit|fifo_tx|Mux5~2_combout\) # ((\uart_unit|fifo_tx|r_full~q\ & ((!\i_sdb~input_o\) # (!\uart_unit|fifo_tx|r_empty~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_empty~q\,
	datab => \uart_unit|fifo_tx|Mux5~2_combout\,
	datac => \uart_unit|fifo_tx|r_full~q\,
	datad => \i_sdb~input_o\,
	combout => \uart_unit|fifo_tx|Mux5~3_combout\);

-- Location: LCCOMB_X96_Y42_N30
\uart_unit|fifo_tx|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux5~4_combout\ = \i_sdb~input_o\ $ (((!\uart_unit|transmitter|r_state_next~4_combout\) # (!\uart_unit|transmitter|r_state_reg.s_stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_sdb~input_o\,
	datac => \uart_unit|transmitter|r_state_reg.s_stop~q\,
	datad => \uart_unit|transmitter|r_state_next~4_combout\,
	combout => \uart_unit|fifo_tx|Mux5~4_combout\);

-- Location: FF_X96_Y42_N21
\uart_unit|fifo_tx|r_full\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|Mux5~3_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_full~q\);

-- Location: LCCOMB_X96_Y42_N22
\uart_unit|fifo_tx|r_wr_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_wr_en~combout\ = (\i_sdb~input_o\) # (\uart_unit|fifo_tx|r_full~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_sdb~input_o\,
	datad => \uart_unit|fifo_tx|r_full~q\,
	combout => \uart_unit|fifo_tx|r_wr_en~combout\);

-- Location: LCCOMB_X97_Y42_N12
\uart_unit|fifo_tx|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux6~0_combout\ = (\uart_unit|fifo_tx|Add1~1_combout\ & (\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|Add1~2_combout\ $ (!\uart_unit|fifo_tx|r_w_ptr\(2))))) # (!\uart_unit|fifo_tx|Add1~1_combout\ & 
-- (!\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|Add1~2_combout\ $ (!\uart_unit|fifo_tx|r_w_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Add1~1_combout\,
	datab => \uart_unit|fifo_tx|Add1~2_combout\,
	datac => \uart_unit|fifo_tx|r_w_ptr\(2),
	datad => \uart_unit|fifo_tx|r_w_ptr\(4),
	combout => \uart_unit|fifo_tx|Mux6~0_combout\);

-- Location: LCCOMB_X97_Y42_N8
\uart_unit|fifo_tx|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux6~1_combout\ = (\uart_unit|fifo_tx|Equal1~0_combout\ & (\i_sdb~input_o\ & (\uart_unit|fifo_tx|Add1~3_combout\ $ (!\uart_unit|fifo_tx|r_w_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Equal1~0_combout\,
	datab => \i_sdb~input_o\,
	datac => \uart_unit|fifo_tx|Add1~3_combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(1),
	combout => \uart_unit|fifo_tx|Mux6~1_combout\);

-- Location: LCCOMB_X96_Y42_N24
\uart_unit|fifo_tx|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux6~2_combout\ = (\uart_unit|fifo_tx|Mux6~1_combout\ & (\uart_unit|fifo_tx|Add1~4_combout\ $ (!\uart_unit|fifo_tx|r_w_ptr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|Mux6~1_combout\,
	datac => \uart_unit|fifo_tx|Add1~4_combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(3),
	combout => \uart_unit|fifo_tx|Mux6~2_combout\);

-- Location: LCCOMB_X96_Y42_N10
\uart_unit|fifo_tx|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux6~3_combout\ = (\uart_unit|fifo_tx|r_wr_en~combout\ & (\uart_unit|fifo_tx|r_empty~q\ & ((!\uart_unit|fifo_tx|Mux6~2_combout\) # (!\uart_unit|fifo_tx|Mux6~0_combout\)))) # (!\uart_unit|fifo_tx|r_wr_en~combout\ & 
-- (((!\uart_unit|fifo_tx|Mux6~2_combout\)) # (!\uart_unit|fifo_tx|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_wr_en~combout\,
	datab => \uart_unit|fifo_tx|Mux6~0_combout\,
	datac => \uart_unit|fifo_tx|r_empty~q\,
	datad => \uart_unit|fifo_tx|Mux6~2_combout\,
	combout => \uart_unit|fifo_tx|Mux6~3_combout\);

-- Location: FF_X96_Y42_N11
\uart_unit|fifo_tx|r_empty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|Mux6~3_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_empty~q\);

-- Location: LCCOMB_X96_Y42_N16
\uart_unit|fifo_tx|r_ptr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_ptr[1]~0_combout\ = (\uart_unit|transmitter|r_state_reg.s_stop~q\ & (\uart_unit|transmitter|r_state_next~4_combout\ & ((\uart_unit|fifo_tx|r_empty~q\) # (!\i_sdb~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_empty~q\,
	datab => \i_sdb~input_o\,
	datac => \uart_unit|transmitter|r_state_reg.s_stop~q\,
	datad => \uart_unit|transmitter|r_state_next~4_combout\,
	combout => \uart_unit|fifo_tx|r_ptr[1]~0_combout\);

-- Location: FF_X96_Y42_N1
\uart_unit|fifo_tx|r_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_ptr[0]~1_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|r_ptr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_ptr\(0));

-- Location: LCCOMB_X97_Y42_N14
\uart_unit|fifo_tx|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add1~3_combout\ = \uart_unit|fifo_tx|r_ptr\(0) $ (\uart_unit|fifo_tx|r_ptr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|fifo_tx|Add1~3_combout\);

-- Location: FF_X97_Y42_N9
\uart_unit|fifo_tx|r_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|fifo_tx|Add1~3_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|r_ptr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_ptr\(1));

-- Location: LCCOMB_X97_Y42_N4
\uart_unit|fifo_tx|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add1~2_combout\ = \uart_unit|fifo_tx|r_ptr\(2) $ (((\uart_unit|fifo_tx|r_ptr\(1) & \uart_unit|fifo_tx|r_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_ptr\(2),
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|fifo_tx|Add1~2_combout\);

-- Location: FF_X97_Y42_N5
\uart_unit|fifo_tx|r_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|Add1~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|r_ptr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_ptr\(2));

-- Location: LCCOMB_X96_Y42_N26
\uart_unit|fifo_tx|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Add1~4_combout\ = \uart_unit|fifo_tx|r_ptr\(3) $ (((\uart_unit|fifo_tx|r_ptr\(2) & (\uart_unit|fifo_tx|r_ptr\(1) & \uart_unit|fifo_tx|r_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_ptr\(3),
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|fifo_tx|Add1~4_combout\);

-- Location: FF_X96_Y42_N27
\uart_unit|fifo_tx|r_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|Add1~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|r_ptr[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_ptr\(3));

-- Location: LCCOMB_X101_Y39_N10
\uart_unit|fifo_rx|r_ptr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_ptr[0]~1_combout\ = !\uart_unit|fifo_rx|r_ptr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|r_ptr[0]~1_combout\);

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

-- Location: LCCOMB_X106_Y42_N16
\uart_unit|receiver|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector0~0_combout\ = (!\uart_unit|receiver|o_rx_done_tick~0_combout\ & ((\uart_unit|receiver|r_state_reg.s_idle~q\) # (!\i_rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_rx~input_o\,
	datac => \uart_unit|receiver|r_state_reg.s_idle~q\,
	datad => \uart_unit|receiver|o_rx_done_tick~0_combout\,
	combout => \uart_unit|receiver|Selector0~0_combout\);

-- Location: FF_X106_Y42_N17
\uart_unit|receiver|r_state_reg.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector0~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_state_reg.s_idle~q\);

-- Location: LCCOMB_X106_Y42_N14
\uart_unit|receiver|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector3~2_combout\ = (!\i_rx~input_o\ & !\uart_unit|receiver|r_state_reg.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rx~input_o\,
	datad => \uart_unit|receiver|r_state_reg.s_idle~q\,
	combout => \uart_unit|receiver|Selector3~2_combout\);

-- Location: LCCOMB_X107_Y42_N28
\uart_unit|receiver|r_n_reg[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_n_reg[2]~1_combout\ = (\uart_unit|receiver|r_n_reg[2]~0_combout\ & (((\uart_unit|receiver|r_n_reg\(2))))) # (!\uart_unit|receiver|r_n_reg[2]~0_combout\ & (\uart_unit|receiver|r_state_reg.s_data~q\ & 
-- (\uart_unit|receiver|Add1~0_combout\ $ (\uart_unit|receiver|r_n_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Add1~0_combout\,
	datab => \uart_unit|receiver|r_state_reg.s_data~q\,
	datac => \uart_unit|receiver|r_n_reg\(2),
	datad => \uart_unit|receiver|r_n_reg[2]~0_combout\,
	combout => \uart_unit|receiver|r_n_reg[2]~1_combout\);

-- Location: FF_X107_Y42_N29
\uart_unit|receiver|r_n_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_n_reg[2]~1_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_n_reg\(2));

-- Location: LCCOMB_X106_Y41_N12
\uart_unit|receiver|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Add0~0_combout\ = \uart_unit|receiver|r_s_reg\(2) $ (((\uart_unit|receiver|r_s_reg\(1) & \uart_unit|receiver|r_s_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_s_reg\(1),
	datac => \uart_unit|receiver|r_s_reg\(0),
	datad => \uart_unit|receiver|r_s_reg\(2),
	combout => \uart_unit|receiver|Add0~0_combout\);

-- Location: LCCOMB_X106_Y41_N18
\uart_unit|receiver|r_s_reg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_s_reg[2]~6_combout\ = (\uart_unit|receiver|Add0~0_combout\ & ((\uart_unit|receiver|r_s_reg[0]~4_combout\) # ((\uart_unit|receiver|r_s_reg[3]~2_combout\ & \uart_unit|receiver|r_s_reg\(2))))) # (!\uart_unit|receiver|Add0~0_combout\ & 
-- (\uart_unit|receiver|r_s_reg[3]~2_combout\ & (\uart_unit|receiver|r_s_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Add0~0_combout\,
	datab => \uart_unit|receiver|r_s_reg[3]~2_combout\,
	datac => \uart_unit|receiver|r_s_reg\(2),
	datad => \uart_unit|receiver|r_s_reg[0]~4_combout\,
	combout => \uart_unit|receiver|r_s_reg[2]~6_combout\);

-- Location: FF_X106_Y41_N19
\uart_unit|receiver|r_s_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_s_reg[2]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_s_reg\(2));

-- Location: LCCOMB_X106_Y41_N0
\uart_unit|receiver|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal2~0_combout\ = (\uart_unit|receiver|r_s_reg\(0) & (\uart_unit|receiver|r_s_reg\(1) & (\uart_unit|receiver|r_s_reg\(3) & \uart_unit|receiver|r_s_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_s_reg\(0),
	datab => \uart_unit|receiver|r_s_reg\(1),
	datac => \uart_unit|receiver|r_s_reg\(3),
	datad => \uart_unit|receiver|r_s_reg\(2),
	combout => \uart_unit|receiver|Equal2~0_combout\);

-- Location: LCCOMB_X105_Y42_N22
\uart_unit|receiver|r_b_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_b_reg[0]~0_combout\ = (\uart_unit|receiver|r_state_reg.s_data~q\ & (\uart_unit|receiver|Equal2~0_combout\ & \uart_unit|baud_generator|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_state_reg.s_data~q\,
	datab => \uart_unit|receiver|Equal2~0_combout\,
	datad => \uart_unit|baud_generator|Equal0~2_combout\,
	combout => \uart_unit|receiver|r_b_reg[0]~0_combout\);

-- Location: LCCOMB_X107_Y42_N24
\uart_unit|receiver|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector1~0_combout\ = (!\uart_unit|receiver|Selector3~3_combout\ & (((!\uart_unit|receiver|r_b_reg[0]~0_combout\) # (!\uart_unit|receiver|r_n_reg\(2))) # (!\uart_unit|receiver|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Add1~0_combout\,
	datab => \uart_unit|receiver|r_n_reg\(2),
	datac => \uart_unit|receiver|Selector3~3_combout\,
	datad => \uart_unit|receiver|r_b_reg[0]~0_combout\,
	combout => \uart_unit|receiver|Selector1~0_combout\);

-- Location: LCCOMB_X106_Y42_N24
\uart_unit|receiver|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector1~1_combout\ = (!\uart_unit|receiver|o_rx_done_tick~0_combout\ & (\uart_unit|receiver|Selector1~0_combout\ & ((\uart_unit|receiver|Selector3~2_combout\) # (\uart_unit|receiver|r_state_reg.s_start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|o_rx_done_tick~0_combout\,
	datab => \uart_unit|receiver|Selector3~2_combout\,
	datac => \uart_unit|receiver|r_state_reg.s_start~q\,
	datad => \uart_unit|receiver|Selector1~0_combout\,
	combout => \uart_unit|receiver|Selector1~1_combout\);

-- Location: FF_X106_Y42_N25
\uart_unit|receiver|r_state_reg.s_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector1~1_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_state_reg.s_start~q\);

-- Location: LCCOMB_X106_Y42_N22
\uart_unit|receiver|r_s_reg[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_s_reg[3]~1_combout\ = (\uart_unit|receiver|r_state_reg.s_data~q\) # ((\uart_unit|receiver|r_state_reg.s_stop~q\) # (\uart_unit|receiver|r_state_reg.s_start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_state_reg.s_data~q\,
	datac => \uart_unit|receiver|r_state_reg.s_stop~q\,
	datad => \uart_unit|receiver|r_state_reg.s_start~q\,
	combout => \uart_unit|receiver|r_s_reg[3]~1_combout\);

-- Location: LCCOMB_X106_Y42_N12
\uart_unit|receiver|r_s_reg[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_s_reg[3]~0_combout\ = (\uart_unit|receiver|Equal2~0_combout\ & ((\uart_unit|receiver|r_state_reg.s_stop~q\) # ((\i_rx~input_o\ & !\uart_unit|receiver|r_state_reg.s_idle~q\)))) # (!\uart_unit|receiver|Equal2~0_combout\ & 
-- (\i_rx~input_o\ & ((!\uart_unit|receiver|r_state_reg.s_idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Equal2~0_combout\,
	datab => \i_rx~input_o\,
	datac => \uart_unit|receiver|r_state_reg.s_stop~q\,
	datad => \uart_unit|receiver|r_state_reg.s_idle~q\,
	combout => \uart_unit|receiver|r_s_reg[3]~0_combout\);

-- Location: LCCOMB_X106_Y42_N8
\uart_unit|receiver|r_s_reg[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_s_reg[3]~2_combout\ = (\uart_unit|receiver|r_s_reg[3]~0_combout\) # ((\uart_unit|receiver|r_s_reg[3]~1_combout\ & !\uart_unit|baud_generator|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_s_reg[3]~1_combout\,
	datac => \uart_unit|baud_generator|Equal0~2_combout\,
	datad => \uart_unit|receiver|r_s_reg[3]~0_combout\,
	combout => \uart_unit|receiver|r_s_reg[3]~2_combout\);

-- Location: LCCOMB_X106_Y41_N6
\uart_unit|receiver|r_s_reg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_s_reg[0]~4_combout\ = (\uart_unit|receiver|r_state_reg.s_idle~q\ & (\uart_unit|receiver|r_s_reg[0]~3_combout\ & !\uart_unit|receiver|r_s_reg[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_state_reg.s_idle~q\,
	datac => \uart_unit|receiver|r_s_reg[0]~3_combout\,
	datad => \uart_unit|receiver|r_s_reg[3]~2_combout\,
	combout => \uart_unit|receiver|r_s_reg[0]~4_combout\);

-- Location: LCCOMB_X106_Y41_N8
\uart_unit|receiver|r_s_reg[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_s_reg[3]~5_combout\ = (\uart_unit|receiver|r_s_reg\(3) & ((\uart_unit|receiver|r_s_reg[3]~2_combout\) # ((\uart_unit|receiver|r_s_reg[0]~4_combout\ & !\uart_unit|receiver|Equal2~1_combout\)))) # (!\uart_unit|receiver|r_s_reg\(3) & 
-- (\uart_unit|receiver|r_s_reg[0]~4_combout\ & (\uart_unit|receiver|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_s_reg[0]~4_combout\,
	datab => \uart_unit|receiver|Equal2~1_combout\,
	datac => \uart_unit|receiver|r_s_reg\(3),
	datad => \uart_unit|receiver|r_s_reg[3]~2_combout\,
	combout => \uart_unit|receiver|r_s_reg[3]~5_combout\);

-- Location: FF_X106_Y41_N9
\uart_unit|receiver|r_s_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_s_reg[3]~5_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_s_reg\(3));

-- Location: LCCOMB_X105_Y42_N30
\uart_unit|receiver|r_s_reg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_s_reg[0]~3_combout\ = ((\uart_unit|receiver|r_state_reg.s_data~q\ & (!\uart_unit|receiver|r_s_reg\(3))) # (!\uart_unit|receiver|r_state_reg.s_data~q\ & ((\uart_unit|receiver|r_s_reg\(3)) # 
-- (!\uart_unit|receiver|r_state_reg.s_start~q\)))) # (!\uart_unit|receiver|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_state_reg.s_data~q\,
	datab => \uart_unit|receiver|r_s_reg\(3),
	datac => \uart_unit|receiver|Equal2~1_combout\,
	datad => \uart_unit|receiver|r_state_reg.s_start~q\,
	combout => \uart_unit|receiver|r_s_reg[0]~3_combout\);

-- Location: LCCOMB_X106_Y41_N26
\uart_unit|receiver|r_s_reg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_s_reg[0]~8_combout\ = (\uart_unit|receiver|r_s_reg[3]~2_combout\ & (((\uart_unit|receiver|r_s_reg\(0))))) # (!\uart_unit|receiver|r_s_reg[3]~2_combout\ & (\uart_unit|receiver|r_s_reg[0]~3_combout\ & (!\uart_unit|receiver|r_s_reg\(0) 
-- & \uart_unit|receiver|r_state_reg.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_s_reg[0]~3_combout\,
	datab => \uart_unit|receiver|r_s_reg[3]~2_combout\,
	datac => \uart_unit|receiver|r_s_reg\(0),
	datad => \uart_unit|receiver|r_state_reg.s_idle~q\,
	combout => \uart_unit|receiver|r_s_reg[0]~8_combout\);

-- Location: FF_X106_Y41_N27
\uart_unit|receiver|r_s_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_s_reg[0]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_s_reg\(0));

-- Location: LCCOMB_X106_Y41_N28
\uart_unit|receiver|r_s_reg[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_s_reg[1]~7_combout\ = (\uart_unit|receiver|r_s_reg\(1) & ((\uart_unit|receiver|r_s_reg[3]~2_combout\) # ((!\uart_unit|receiver|r_s_reg\(0) & \uart_unit|receiver|r_s_reg[0]~4_combout\)))) # (!\uart_unit|receiver|r_s_reg\(1) & 
-- (\uart_unit|receiver|r_s_reg\(0) & ((\uart_unit|receiver|r_s_reg[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_s_reg\(0),
	datab => \uart_unit|receiver|r_s_reg[3]~2_combout\,
	datac => \uart_unit|receiver|r_s_reg\(1),
	datad => \uart_unit|receiver|r_s_reg[0]~4_combout\,
	combout => \uart_unit|receiver|r_s_reg[1]~7_combout\);

-- Location: FF_X106_Y41_N29
\uart_unit|receiver|r_s_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_s_reg[1]~7_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_s_reg\(1));

-- Location: LCCOMB_X106_Y41_N16
\uart_unit|receiver|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Equal2~1_combout\ = (\uart_unit|receiver|r_s_reg\(1) & (\uart_unit|receiver|r_s_reg\(0) & \uart_unit|receiver|r_s_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_s_reg\(1),
	datac => \uart_unit|receiver|r_s_reg\(0),
	datad => \uart_unit|receiver|r_s_reg\(2),
	combout => \uart_unit|receiver|Equal2~1_combout\);

-- Location: LCCOMB_X105_Y42_N28
\uart_unit|receiver|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector3~3_combout\ = (\uart_unit|receiver|Equal2~1_combout\ & (\uart_unit|receiver|r_state_reg.s_start~q\ & (!\uart_unit|receiver|r_s_reg\(3) & \uart_unit|baud_generator|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Equal2~1_combout\,
	datab => \uart_unit|receiver|r_state_reg.s_start~q\,
	datac => \uart_unit|receiver|r_s_reg\(3),
	datad => \uart_unit|baud_generator|Equal0~2_combout\,
	combout => \uart_unit|receiver|Selector3~3_combout\);

-- Location: LCCOMB_X106_Y42_N2
\uart_unit|receiver|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector3~4_combout\ = (!\uart_unit|receiver|Selector3~2_combout\ & (!\uart_unit|receiver|Selector3~3_combout\ & ((!\uart_unit|receiver|r_b_reg[0]~0_combout\) # (!\uart_unit|receiver|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Selector3~0_combout\,
	datab => \uart_unit|receiver|Selector3~2_combout\,
	datac => \uart_unit|receiver|r_b_reg[0]~0_combout\,
	datad => \uart_unit|receiver|Selector3~3_combout\,
	combout => \uart_unit|receiver|Selector3~4_combout\);

-- Location: LCCOMB_X106_Y42_N28
\uart_unit|receiver|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector2~0_combout\ = (!\uart_unit|receiver|o_rx_done_tick~0_combout\ & ((\uart_unit|receiver|Selector3~4_combout\ & ((\uart_unit|receiver|r_state_reg.s_data~q\))) # (!\uart_unit|receiver|Selector3~4_combout\ & 
-- (\uart_unit|receiver|Selector3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|o_rx_done_tick~0_combout\,
	datab => \uart_unit|receiver|Selector3~3_combout\,
	datac => \uart_unit|receiver|r_state_reg.s_data~q\,
	datad => \uart_unit|receiver|Selector3~4_combout\,
	combout => \uart_unit|receiver|Selector2~0_combout\);

-- Location: FF_X106_Y42_N29
\uart_unit|receiver|r_state_reg.s_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector2~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_state_reg.s_data~q\);

-- Location: LCCOMB_X107_Y42_N4
\uart_unit|receiver|r_n_reg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_n_reg[0]~3_combout\ = (\uart_unit|receiver|r_n_reg\(0) & ((\uart_unit|receiver|r_n_reg[2]~0_combout\))) # (!\uart_unit|receiver|r_n_reg\(0) & (\uart_unit|receiver|r_state_reg.s_data~q\ & !\uart_unit|receiver|r_n_reg[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_state_reg.s_data~q\,
	datac => \uart_unit|receiver|r_n_reg\(0),
	datad => \uart_unit|receiver|r_n_reg[2]~0_combout\,
	combout => \uart_unit|receiver|r_n_reg[0]~3_combout\);

-- Location: FF_X107_Y42_N5
\uart_unit|receiver|r_n_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_n_reg[0]~3_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_n_reg\(0));

-- Location: LCCOMB_X107_Y42_N12
\uart_unit|receiver|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Add1~0_combout\ = (\uart_unit|receiver|r_n_reg\(0) & \uart_unit|receiver|r_n_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_n_reg\(0),
	datad => \uart_unit|receiver|r_n_reg\(1),
	combout => \uart_unit|receiver|Add1~0_combout\);

-- Location: LCCOMB_X107_Y42_N10
\uart_unit|receiver|r_n_reg[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_n_reg[2]~0_combout\ = (!\uart_unit|receiver|Selector3~3_combout\ & (((\uart_unit|receiver|Add1~0_combout\ & \uart_unit|receiver|r_n_reg\(2))) # (!\uart_unit|receiver|r_b_reg[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Add1~0_combout\,
	datab => \uart_unit|receiver|r_n_reg\(2),
	datac => \uart_unit|receiver|Selector3~3_combout\,
	datad => \uart_unit|receiver|r_b_reg[0]~0_combout\,
	combout => \uart_unit|receiver|r_n_reg[2]~0_combout\);

-- Location: LCCOMB_X107_Y42_N18
\uart_unit|receiver|r_n_reg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_n_reg[1]~2_combout\ = (\uart_unit|receiver|r_n_reg[2]~0_combout\ & (((\uart_unit|receiver|r_n_reg\(1))))) # (!\uart_unit|receiver|r_n_reg[2]~0_combout\ & (\uart_unit|receiver|r_state_reg.s_data~q\ & (\uart_unit|receiver|r_n_reg\(0) $ 
-- (\uart_unit|receiver|r_n_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_n_reg[2]~0_combout\,
	datab => \uart_unit|receiver|r_n_reg\(0),
	datac => \uart_unit|receiver|r_n_reg\(1),
	datad => \uart_unit|receiver|r_state_reg.s_data~q\,
	combout => \uart_unit|receiver|r_n_reg[1]~2_combout\);

-- Location: FF_X107_Y42_N19
\uart_unit|receiver|r_n_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_n_reg[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_n_reg\(1));

-- Location: LCCOMB_X107_Y42_N2
\uart_unit|receiver|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector3~0_combout\ = (\uart_unit|receiver|r_n_reg\(1) & (\uart_unit|receiver|r_n_reg\(0) & \uart_unit|receiver|r_n_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_n_reg\(1),
	datac => \uart_unit|receiver|r_n_reg\(0),
	datad => \uart_unit|receiver|r_n_reg\(2),
	combout => \uart_unit|receiver|Selector3~0_combout\);

-- Location: LCCOMB_X106_Y42_N18
\uart_unit|receiver|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector3~1_combout\ = (\uart_unit|receiver|Selector3~0_combout\ & (\uart_unit|receiver|Equal2~0_combout\ & (\uart_unit|baud_generator|Equal0~2_combout\ & \uart_unit|receiver|r_state_reg.s_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|Selector3~0_combout\,
	datab => \uart_unit|receiver|Equal2~0_combout\,
	datac => \uart_unit|baud_generator|Equal0~2_combout\,
	datad => \uart_unit|receiver|r_state_reg.s_data~q\,
	combout => \uart_unit|receiver|Selector3~1_combout\);

-- Location: LCCOMB_X106_Y42_N4
\uart_unit|receiver|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|Selector3~5_combout\ = (!\uart_unit|receiver|o_rx_done_tick~0_combout\ & ((\uart_unit|receiver|Selector3~4_combout\ & ((\uart_unit|receiver|r_state_reg.s_stop~q\))) # (!\uart_unit|receiver|Selector3~4_combout\ & 
-- (\uart_unit|receiver|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|o_rx_done_tick~0_combout\,
	datab => \uart_unit|receiver|Selector3~1_combout\,
	datac => \uart_unit|receiver|r_state_reg.s_stop~q\,
	datad => \uart_unit|receiver|Selector3~4_combout\,
	combout => \uart_unit|receiver|Selector3~5_combout\);

-- Location: FF_X106_Y42_N5
\uart_unit|receiver|r_state_reg.s_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|Selector3~5_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_state_reg.s_stop~q\);

-- Location: LCCOMB_X106_Y42_N6
\uart_unit|receiver|o_rx_done_tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|o_rx_done_tick~0_combout\ = (\uart_unit|receiver|r_state_reg.s_stop~q\ & (\uart_unit|baud_generator|Equal0~2_combout\ & \uart_unit|receiver|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|receiver|r_state_reg.s_stop~q\,
	datac => \uart_unit|baud_generator|Equal0~2_combout\,
	datad => \uart_unit|receiver|Equal2~0_combout\,
	combout => \uart_unit|receiver|o_rx_done_tick~0_combout\);

-- Location: LCCOMB_X101_Y39_N16
\uart_unit|fifo_rx|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add1~4_combout\ = \uart_unit|fifo_rx|r_ptr\(1) $ (\uart_unit|fifo_rx|r_ptr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_rx|r_ptr\(1),
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Add1~4_combout\);

-- Location: FF_X101_Y39_N17
\uart_unit|fifo_rx|r_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|Add1~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|r_ptr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_ptr\(1));

-- Location: LCCOMB_X101_Y39_N18
\uart_unit|fifo_rx|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add1~2_combout\ = \uart_unit|fifo_rx|r_ptr\(2) $ (((\uart_unit|fifo_rx|r_ptr\(1) & \uart_unit|fifo_rx|r_ptr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_ptr\(2),
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Add1~2_combout\);

-- Location: FF_X101_Y39_N19
\uart_unit|fifo_rx|r_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|Add1~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|r_ptr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_ptr\(2));

-- Location: LCCOMB_X106_Y41_N10
\uart_unit|fifo_rx|r_w_ptr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_w_ptr[0]~1_combout\ = !\uart_unit|fifo_rx|r_w_ptr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_rx|r_w_ptr\(0),
	combout => \uart_unit|fifo_rx|r_w_ptr[0]~1_combout\);

-- Location: LCCOMB_X106_Y42_N30
\uart_unit|fifo_rx|r_w_ptr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_w_ptr[0]~0_combout\ = (\uart_unit|receiver|o_rx_done_tick~0_combout\ & ((!\i_sdb~input_o\) # (!\uart_unit|fifo_rx|r_full~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_full~q\,
	datac => \i_sdb~input_o\,
	datad => \uart_unit|receiver|o_rx_done_tick~0_combout\,
	combout => \uart_unit|fifo_rx|r_w_ptr[0]~0_combout\);

-- Location: FF_X106_Y41_N11
\uart_unit|fifo_rx|r_w_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_w_ptr[0]~1_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|r_w_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_w_ptr\(0));

-- Location: FF_X106_Y41_N15
\uart_unit|fifo_rx|r_w_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|Add0~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|r_w_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_w_ptr\(2));

-- Location: LCCOMB_X106_Y41_N20
\uart_unit|fifo_rx|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add0~4_combout\ = \uart_unit|fifo_rx|r_w_ptr\(0) $ (\uart_unit|fifo_rx|r_w_ptr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_w_ptr\(0),
	datac => \uart_unit|fifo_rx|r_w_ptr\(1),
	combout => \uart_unit|fifo_rx|Add0~4_combout\);

-- Location: FF_X106_Y41_N21
\uart_unit|fifo_rx|r_w_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|Add0~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|r_w_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_w_ptr\(1));

-- Location: LCCOMB_X106_Y41_N14
\uart_unit|fifo_rx|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add0~0_combout\ = \uart_unit|fifo_rx|r_w_ptr\(2) $ (((\uart_unit|fifo_rx|r_w_ptr\(0) & \uart_unit|fifo_rx|r_w_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_w_ptr\(0),
	datac => \uart_unit|fifo_rx|r_w_ptr\(2),
	datad => \uart_unit|fifo_rx|r_w_ptr\(1),
	combout => \uart_unit|fifo_rx|Add0~0_combout\);

-- Location: FF_X106_Y41_N5
\uart_unit|fifo_rx|r_w_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|Add0~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|r_w_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_w_ptr\(4));

-- Location: LCCOMB_X106_Y41_N30
\uart_unit|fifo_rx|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add0~3_combout\ = \uart_unit|fifo_rx|r_w_ptr\(3) $ (((\uart_unit|fifo_rx|r_w_ptr\(2) & (\uart_unit|fifo_rx|r_w_ptr\(0) & \uart_unit|fifo_rx|r_w_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(2),
	datab => \uart_unit|fifo_rx|r_w_ptr\(0),
	datac => \uart_unit|fifo_rx|r_w_ptr\(3),
	datad => \uart_unit|fifo_rx|r_w_ptr\(1),
	combout => \uart_unit|fifo_rx|Add0~3_combout\);

-- Location: FF_X106_Y41_N31
\uart_unit|fifo_rx|r_w_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|Add0~3_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|r_w_ptr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_w_ptr\(3));

-- Location: LCCOMB_X106_Y41_N24
\uart_unit|fifo_rx|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add0~1_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(3) & (\uart_unit|fifo_rx|r_w_ptr\(1) & (\uart_unit|fifo_rx|r_w_ptr\(0) & \uart_unit|fifo_rx|r_w_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datab => \uart_unit|fifo_rx|r_w_ptr\(1),
	datac => \uart_unit|fifo_rx|r_w_ptr\(0),
	datad => \uart_unit|fifo_rx|r_w_ptr\(2),
	combout => \uart_unit|fifo_rx|Add0~1_combout\);

-- Location: LCCOMB_X106_Y41_N4
\uart_unit|fifo_rx|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add0~2_combout\ = \uart_unit|fifo_rx|r_w_ptr\(4) $ (\uart_unit|fifo_rx|Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Add0~1_combout\,
	combout => \uart_unit|fifo_rx|Add0~2_combout\);

-- Location: LCCOMB_X106_Y41_N22
\uart_unit|fifo_rx|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux5~0_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|Add0~0_combout\ & (\uart_unit|fifo_rx|Add0~2_combout\ $ (!\uart_unit|fifo_rx|r_ptr\(4))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & (!\uart_unit|fifo_rx|Add0~0_combout\ & 
-- (\uart_unit|fifo_rx|Add0~2_combout\ $ (!\uart_unit|fifo_rx|r_ptr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|Add0~0_combout\,
	datac => \uart_unit|fifo_rx|Add0~2_combout\,
	datad => \uart_unit|fifo_rx|r_ptr\(4),
	combout => \uart_unit|fifo_rx|Mux5~0_combout\);

-- Location: LCCOMB_X105_Y42_N16
\uart_unit|fifo_rx|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux5~1_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(0) & (!\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_w_ptr\(1) $ (\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_w_ptr\(0) & (\uart_unit|fifo_rx|r_ptr\(0) & 
-- (\uart_unit|fifo_rx|r_w_ptr\(1) $ (!\uart_unit|fifo_rx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(0),
	datab => \uart_unit|fifo_rx|r_w_ptr\(1),
	datac => \uart_unit|fifo_rx|r_ptr\(1),
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Mux5~1_combout\);

-- Location: LCCOMB_X101_Y39_N24
\uart_unit|fifo_rx|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add1~3_combout\ = \uart_unit|fifo_rx|r_ptr\(3) $ (((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_ptr\(0) & \uart_unit|fifo_rx|r_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_ptr\(3),
	datad => \uart_unit|fifo_rx|r_ptr\(2),
	combout => \uart_unit|fifo_rx|Add1~3_combout\);

-- Location: FF_X101_Y39_N25
\uart_unit|fifo_rx|r_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|Add1~3_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|r_ptr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_ptr\(3));

-- Location: LCCOMB_X106_Y42_N20
\uart_unit|fifo_rx|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux5~2_combout\ = (\uart_unit|fifo_rx|Mux5~0_combout\ & (\uart_unit|fifo_rx|Mux5~1_combout\ & (\uart_unit|fifo_rx|Add0~3_combout\ $ (!\uart_unit|fifo_rx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux5~0_combout\,
	datab => \uart_unit|fifo_rx|Add0~3_combout\,
	datac => \uart_unit|fifo_rx|Mux5~1_combout\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux5~2_combout\);

-- Location: LCCOMB_X106_Y42_N0
\uart_unit|fifo_rx|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux5~3_combout\ = (\uart_unit|fifo_rx|r_full~q\ & (((\uart_unit|receiver|o_rx_done_tick~0_combout\)) # (!\uart_unit|fifo_rx|r_empty~q\))) # (!\uart_unit|fifo_rx|r_full~q\ & (((\uart_unit|fifo_rx|Mux5~2_combout\ & 
-- \uart_unit|receiver|o_rx_done_tick~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_empty~q\,
	datab => \uart_unit|fifo_rx|Mux5~2_combout\,
	datac => \uart_unit|fifo_rx|r_full~q\,
	datad => \uart_unit|receiver|o_rx_done_tick~0_combout\,
	combout => \uart_unit|fifo_rx|Mux5~3_combout\);

-- Location: LCCOMB_X106_Y42_N26
\uart_unit|fifo_rx|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux5~4_combout\ = \i_sdb~input_o\ $ ((((!\uart_unit|receiver|Equal2~0_combout\) # (!\uart_unit|baud_generator|Equal0~2_combout\)) # (!\uart_unit|receiver|r_state_reg.s_stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sdb~input_o\,
	datab => \uart_unit|receiver|r_state_reg.s_stop~q\,
	datac => \uart_unit|baud_generator|Equal0~2_combout\,
	datad => \uart_unit|receiver|Equal2~0_combout\,
	combout => \uart_unit|fifo_rx|Mux5~4_combout\);

-- Location: FF_X106_Y42_N1
\uart_unit|fifo_rx|r_full\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|Mux5~3_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_full~q\);

-- Location: LCCOMB_X105_Y42_N4
\uart_unit|fifo_rx|r_wr_en\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_wr_en~combout\ = (\uart_unit|receiver|r_state_reg.s_stop~q\ & (!\uart_unit|fifo_rx|r_full~q\ & (\uart_unit|receiver|Equal2~0_combout\ & \uart_unit|baud_generator|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|r_state_reg.s_stop~q\,
	datab => \uart_unit|fifo_rx|r_full~q\,
	datac => \uart_unit|receiver|Equal2~0_combout\,
	datad => \uart_unit|baud_generator|Equal0~2_combout\,
	combout => \uart_unit|fifo_rx|r_wr_en~combout\);

-- Location: LCCOMB_X105_Y39_N14
\uart_unit|fifo_rx|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux6~0_combout\ = (\uart_unit|fifo_rx|Add1~1_combout\ & (\uart_unit|fifo_rx|r_w_ptr\(4) & (\uart_unit|fifo_rx|Add1~2_combout\ $ (!\uart_unit|fifo_rx|r_w_ptr\(2))))) # (!\uart_unit|fifo_rx|Add1~1_combout\ & 
-- (!\uart_unit|fifo_rx|r_w_ptr\(4) & (\uart_unit|fifo_rx|Add1~2_combout\ $ (!\uart_unit|fifo_rx|r_w_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Add1~1_combout\,
	datab => \uart_unit|fifo_rx|Add1~2_combout\,
	datac => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|r_w_ptr\(2),
	combout => \uart_unit|fifo_rx|Mux6~0_combout\);

-- Location: LCCOMB_X105_Y42_N18
\uart_unit|fifo_rx|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux6~1_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(0) & (!\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_w_ptr\(1) $ (!\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_w_ptr\(0) & (\uart_unit|fifo_rx|r_ptr\(0) & 
-- (\uart_unit|fifo_rx|r_w_ptr\(1) $ (\uart_unit|fifo_rx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(0),
	datab => \uart_unit|fifo_rx|r_w_ptr\(1),
	datac => \uart_unit|fifo_rx|r_ptr\(1),
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Mux6~1_combout\);

-- Location: LCCOMB_X105_Y39_N8
\uart_unit|fifo_rx|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux6~2_combout\ = (\uart_unit|fifo_rx|Mux6~0_combout\ & (\uart_unit|fifo_rx|Mux6~1_combout\ & (\uart_unit|fifo_rx|Add1~3_combout\ $ (!\uart_unit|fifo_rx|r_w_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Add1~3_combout\,
	datab => \uart_unit|fifo_rx|r_w_ptr\(3),
	datac => \uart_unit|fifo_rx|Mux6~0_combout\,
	datad => \uart_unit|fifo_rx|Mux6~1_combout\,
	combout => \uart_unit|fifo_rx|Mux6~2_combout\);

-- Location: LCCOMB_X106_Y42_N10
\uart_unit|fifo_rx|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux6~3_combout\ = (\uart_unit|receiver|o_rx_done_tick~0_combout\ & ((\uart_unit|fifo_rx|r_wr_en~combout\) # ((\uart_unit|fifo_rx|r_empty~q\)))) # (!\uart_unit|receiver|o_rx_done_tick~0_combout\ & (!\uart_unit|fifo_rx|Mux6~2_combout\ & 
-- ((\uart_unit|fifo_rx|r_wr_en~combout\) # (\uart_unit|fifo_rx|r_empty~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|receiver|o_rx_done_tick~0_combout\,
	datab => \uart_unit|fifo_rx|r_wr_en~combout\,
	datac => \uart_unit|fifo_rx|r_empty~q\,
	datad => \uart_unit|fifo_rx|Mux6~2_combout\,
	combout => \uart_unit|fifo_rx|Mux6~3_combout\);

-- Location: FF_X106_Y42_N11
\uart_unit|fifo_rx|r_empty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|Mux6~3_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_empty~q\);

-- Location: LCCOMB_X102_Y42_N18
\uart_unit|fifo_rx|r_ptr[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_ptr[4]~0_combout\ = (!\i_sdb~input_o\ & ((\uart_unit|fifo_rx|r_empty~q\) # (\uart_unit|receiver|o_rx_done_tick~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_sdb~input_o\,
	datac => \uart_unit|fifo_rx|r_empty~q\,
	datad => \uart_unit|receiver|o_rx_done_tick~0_combout\,
	combout => \uart_unit|fifo_rx|r_ptr[4]~0_combout\);

-- Location: FF_X101_Y39_N11
\uart_unit|fifo_rx|r_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_ptr[0]~1_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|r_ptr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_ptr\(0));

-- Location: LCCOMB_X101_Y39_N22
\uart_unit|fifo_rx|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add1~0_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_ptr\(1) & \uart_unit|fifo_rx|r_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_ptr\(1),
	datad => \uart_unit|fifo_rx|r_ptr\(2),
	combout => \uart_unit|fifo_rx|Add1~0_combout\);

-- Location: LCCOMB_X101_Y39_N26
\uart_unit|fifo_rx|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Add1~1_combout\ = \uart_unit|fifo_rx|Add1~0_combout\ $ (\uart_unit|fifo_rx|r_ptr\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Add1~0_combout\,
	datac => \uart_unit|fifo_rx|r_ptr\(4),
	combout => \uart_unit|fifo_rx|Add1~1_combout\);

-- Location: FF_X101_Y39_N27
\uart_unit|fifo_rx|r_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|Add1~1_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|r_ptr[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_ptr\(4));

-- Location: LCCOMB_X103_Y42_N26
\uart_unit|receiver|r_b_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_b_reg[7]~feeder_combout\ = \i_rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_rx~input_o\,
	combout => \uart_unit|receiver|r_b_reg[7]~feeder_combout\);

-- Location: FF_X103_Y42_N27
\uart_unit|receiver|r_b_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_b_reg[7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|receiver|r_b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_b_reg\(7));

-- Location: FF_X103_Y42_N25
\uart_unit|receiver|r_b_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|receiver|r_b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_b_reg\(6));

-- Location: LCCOMB_X103_Y42_N30
\uart_unit|receiver|r_b_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_b_reg[5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|receiver|r_b_reg[5]~feeder_combout\);

-- Location: FF_X103_Y42_N31
\uart_unit|receiver|r_b_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_b_reg[5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|receiver|r_b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_b_reg\(5));

-- Location: LCCOMB_X101_Y41_N26
\uart_unit|receiver|r_b_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_b_reg[4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|receiver|r_b_reg[4]~feeder_combout\);

-- Location: FF_X101_Y41_N27
\uart_unit|receiver|r_b_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_b_reg[4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|receiver|r_b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_b_reg\(4));

-- Location: LCCOMB_X103_Y42_N28
\uart_unit|receiver|r_b_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_b_reg[3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|receiver|r_b_reg[3]~feeder_combout\);

-- Location: FF_X103_Y42_N29
\uart_unit|receiver|r_b_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_b_reg[3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|receiver|r_b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_b_reg\(3));

-- Location: LCCOMB_X103_Y42_N2
\uart_unit|receiver|r_b_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_b_reg[2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|receiver|r_b_reg[2]~feeder_combout\);

-- Location: FF_X103_Y42_N3
\uart_unit|receiver|r_b_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_b_reg[2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|receiver|r_b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_b_reg\(2));

-- Location: LCCOMB_X101_Y41_N24
\uart_unit|receiver|r_b_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|receiver|r_b_reg[1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|receiver|r_b_reg[1]~feeder_combout\);

-- Location: FF_X101_Y41_N25
\uart_unit|receiver|r_b_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|receiver|r_b_reg[1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|receiver|r_b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_b_reg\(1));

-- Location: FF_X101_Y41_N19
\uart_unit|receiver|r_b_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|receiver|r_b_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|receiver|r_b_reg\(0));

-- Location: LCCOMB_X103_Y41_N16
\uart_unit|fifo_rx|r_array[26][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[26][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[26][0]~feeder_combout\);

-- Location: LCCOMB_X105_Y42_N6
\uart_unit|fifo_rx|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~0_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(0) & (!\uart_unit|fifo_rx|r_w_ptr\(2) & (\uart_unit|fifo_rx|r_wr_en~combout\ & \uart_unit|fifo_rx|r_w_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(0),
	datab => \uart_unit|fifo_rx|r_w_ptr\(2),
	datac => \uart_unit|fifo_rx|r_wr_en~combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(1),
	combout => \uart_unit|fifo_rx|Decoder0~0_combout\);

-- Location: LCCOMB_X103_Y41_N24
\uart_unit|fifo_rx|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~1_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(3) & (\uart_unit|fifo_rx|Decoder0~0_combout\ & \uart_unit|fifo_rx|r_w_ptr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_w_ptr\(3),
	datac => \uart_unit|fifo_rx|Decoder0~0_combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(4),
	combout => \uart_unit|fifo_rx|Decoder0~1_combout\);

-- Location: FF_X103_Y41_N17
\uart_unit|fifo_rx|r_array[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[26][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[26][0]~q\);

-- Location: LCCOMB_X105_Y42_N0
\uart_unit|fifo_rx|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~2_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(0) & (!\uart_unit|fifo_rx|r_w_ptr\(2) & (\uart_unit|fifo_rx|r_wr_en~combout\ & \uart_unit|fifo_rx|r_w_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(0),
	datab => \uart_unit|fifo_rx|r_w_ptr\(2),
	datac => \uart_unit|fifo_rx|r_wr_en~combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(1),
	combout => \uart_unit|fifo_rx|Decoder0~2_combout\);

-- Location: LCCOMB_X102_Y41_N2
\uart_unit|fifo_rx|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~5_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(4) & (\uart_unit|fifo_rx|r_w_ptr\(3) & \uart_unit|fifo_rx|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(4),
	datab => \uart_unit|fifo_rx|r_w_ptr\(3),
	datad => \uart_unit|fifo_rx|Decoder0~2_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~5_combout\);

-- Location: FF_X102_Y41_N7
\uart_unit|fifo_rx|r_array[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[27][0]~q\);

-- Location: LCCOMB_X103_Y43_N28
\uart_unit|fifo_rx|r_array[19][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[19][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[19][0]~feeder_combout\);

-- Location: LCCOMB_X103_Y43_N24
\uart_unit|fifo_rx|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~3_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(3) & (\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datab => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~2_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~3_combout\);

-- Location: FF_X103_Y43_N29
\uart_unit|fifo_rx|r_array[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[19][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[19][0]~q\);

-- Location: LCCOMB_X102_Y41_N10
\uart_unit|fifo_rx|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~4_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(4) & (!\uart_unit|fifo_rx|r_w_ptr\(3) & \uart_unit|fifo_rx|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(4),
	datab => \uart_unit|fifo_rx|r_w_ptr\(3),
	datad => \uart_unit|fifo_rx|Decoder0~0_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~4_combout\);

-- Location: FF_X102_Y41_N1
\uart_unit|fifo_rx|r_array[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[18][0]~q\);

-- Location: LCCOMB_X102_Y41_N0
\uart_unit|fifo_rx|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~0_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|r_ptr\(0))))) # (!\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_array[19][0]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(0) & 
-- ((\uart_unit|fifo_rx|r_array[18][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[19][0]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[18][0]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Mux19~0_combout\);

-- Location: LCCOMB_X102_Y41_N6
\uart_unit|fifo_rx|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~1_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux19~0_combout\ & ((\uart_unit|fifo_rx|r_array[27][0]~q\))) # (!\uart_unit|fifo_rx|Mux19~0_combout\ & (\uart_unit|fifo_rx|r_array[26][0]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[26][0]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[27][0]~q\,
	datad => \uart_unit|fifo_rx|Mux19~0_combout\,
	combout => \uart_unit|fifo_rx|Mux19~1_combout\);

-- Location: LCCOMB_X102_Y42_N24
\uart_unit|fifo_rx|r_array[21][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[21][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[21][0]~feeder_combout\);

-- Location: LCCOMB_X105_Y42_N26
\uart_unit|fifo_rx|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~6_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(0) & (\uart_unit|fifo_rx|r_w_ptr\(2) & (\uart_unit|fifo_rx|r_wr_en~combout\ & !\uart_unit|fifo_rx|r_w_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(0),
	datab => \uart_unit|fifo_rx|r_w_ptr\(2),
	datac => \uart_unit|fifo_rx|r_wr_en~combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(1),
	combout => \uart_unit|fifo_rx|Decoder0~6_combout\);

-- Location: LCCOMB_X102_Y42_N28
\uart_unit|fifo_rx|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~7_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(3) & (\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datab => \uart_unit|fifo_rx|r_w_ptr\(4),
	datac => \uart_unit|fifo_rx|Decoder0~6_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~7_combout\);

-- Location: FF_X102_Y42_N25
\uart_unit|fifo_rx|r_array[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[21][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[21][0]~q\);

-- Location: LCCOMB_X103_Y39_N14
\uart_unit|fifo_rx|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~11_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(3) & (\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_w_ptr\(3),
	datac => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~6_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~11_combout\);

-- Location: FF_X102_Y39_N15
\uart_unit|fifo_rx|r_array[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[29][0]~q\);

-- Location: LCCOMB_X103_Y39_N8
\uart_unit|fifo_rx|r_array[28][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[28][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[28][0]~feeder_combout\);

-- Location: LCCOMB_X105_Y42_N20
\uart_unit|fifo_rx|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~8_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(0) & (\uart_unit|fifo_rx|r_w_ptr\(2) & (\uart_unit|fifo_rx|r_wr_en~combout\ & !\uart_unit|fifo_rx|r_w_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(0),
	datab => \uart_unit|fifo_rx|r_w_ptr\(2),
	datac => \uart_unit|fifo_rx|r_wr_en~combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(1),
	combout => \uart_unit|fifo_rx|Decoder0~8_combout\);

-- Location: LCCOMB_X103_Y39_N26
\uart_unit|fifo_rx|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~9_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(3) & (\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_w_ptr\(3),
	datac => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~8_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~9_combout\);

-- Location: FF_X103_Y39_N9
\uart_unit|fifo_rx|r_array[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[28][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[28][0]~q\);

-- Location: LCCOMB_X103_Y39_N0
\uart_unit|fifo_rx|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~10_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(3) & (\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_w_ptr\(3),
	datac => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~8_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~10_combout\);

-- Location: FF_X102_Y39_N29
\uart_unit|fifo_rx|r_array[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[20][0]~q\);

-- Location: LCCOMB_X102_Y39_N28
\uart_unit|fifo_rx|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~2_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[28][0]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|r_array[20][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[28][0]~q\,
	datac => \uart_unit|fifo_rx|r_array[20][0]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux19~2_combout\);

-- Location: LCCOMB_X102_Y39_N14
\uart_unit|fifo_rx|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~3_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux19~2_combout\ & ((\uart_unit|fifo_rx|r_array[29][0]~q\))) # (!\uart_unit|fifo_rx|Mux19~2_combout\ & (\uart_unit|fifo_rx|r_array[21][0]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[21][0]~q\,
	datac => \uart_unit|fifo_rx|r_array[29][0]~q\,
	datad => \uart_unit|fifo_rx|Mux19~2_combout\,
	combout => \uart_unit|fifo_rx|Mux19~3_combout\);

-- Location: LCCOMB_X102_Y40_N0
\uart_unit|fifo_rx|r_array[24][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[24][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[24][0]~feeder_combout\);

-- Location: LCCOMB_X105_Y42_N10
\uart_unit|fifo_rx|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~12_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(0) & (!\uart_unit|fifo_rx|r_w_ptr\(2) & (\uart_unit|fifo_rx|r_wr_en~combout\ & !\uart_unit|fifo_rx|r_w_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(0),
	datab => \uart_unit|fifo_rx|r_w_ptr\(2),
	datac => \uart_unit|fifo_rx|r_wr_en~combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(1),
	combout => \uart_unit|fifo_rx|Decoder0~12_combout\);

-- Location: LCCOMB_X102_Y40_N14
\uart_unit|fifo_rx|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~13_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(3) & (\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datac => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~12_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~13_combout\);

-- Location: FF_X102_Y40_N1
\uart_unit|fifo_rx|r_array[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[24][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[24][0]~q\);

-- Location: LCCOMB_X105_Y42_N12
\uart_unit|fifo_rx|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~14_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(0) & (!\uart_unit|fifo_rx|r_w_ptr\(2) & (\uart_unit|fifo_rx|r_wr_en~combout\ & !\uart_unit|fifo_rx|r_w_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(0),
	datab => \uart_unit|fifo_rx|r_w_ptr\(2),
	datac => \uart_unit|fifo_rx|r_wr_en~combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(1),
	combout => \uart_unit|fifo_rx|Decoder0~14_combout\);

-- Location: LCCOMB_X102_Y43_N14
\uart_unit|fifo_rx|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~17_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(3) & (\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_w_ptr\(3),
	datac => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~14_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~17_combout\);

-- Location: FF_X102_Y43_N7
\uart_unit|fifo_rx|r_array[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[25][0]~q\);

-- Location: LCCOMB_X105_Y43_N28
\uart_unit|fifo_rx|r_array[17][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[17][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[17][0]~feeder_combout\);

-- Location: LCCOMB_X105_Y43_N24
\uart_unit|fifo_rx|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~15_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(4) & (!\uart_unit|fifo_rx|r_w_ptr\(3) & \uart_unit|fifo_rx|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_w_ptr\(4),
	datac => \uart_unit|fifo_rx|r_w_ptr\(3),
	datad => \uart_unit|fifo_rx|Decoder0~14_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~15_combout\);

-- Location: FF_X105_Y43_N29
\uart_unit|fifo_rx|r_array[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[17][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[17][0]~q\);

-- Location: LCCOMB_X102_Y43_N18
\uart_unit|fifo_rx|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~16_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(4) & (!\uart_unit|fifo_rx|r_w_ptr\(3) & \uart_unit|fifo_rx|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(4),
	datab => \uart_unit|fifo_rx|r_w_ptr\(3),
	datad => \uart_unit|fifo_rx|Decoder0~12_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~16_combout\);

-- Location: FF_X102_Y43_N1
\uart_unit|fifo_rx|r_array[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[16][0]~q\);

-- Location: LCCOMB_X102_Y43_N0
\uart_unit|fifo_rx|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~4_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_array[17][0]~q\) # ((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_array[16][0]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[17][0]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[16][0]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux19~4_combout\);

-- Location: LCCOMB_X102_Y43_N6
\uart_unit|fifo_rx|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~5_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux19~4_combout\ & ((\uart_unit|fifo_rx|r_array[25][0]~q\))) # (!\uart_unit|fifo_rx|Mux19~4_combout\ & (\uart_unit|fifo_rx|r_array[24][0]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[24][0]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[25][0]~q\,
	datad => \uart_unit|fifo_rx|Mux19~4_combout\,
	combout => \uart_unit|fifo_rx|Mux19~5_combout\);

-- Location: LCCOMB_X102_Y43_N24
\uart_unit|fifo_rx|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~6_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_ptr\(2))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|Mux19~3_combout\)) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- ((\uart_unit|fifo_rx|Mux19~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|Mux19~3_combout\,
	datad => \uart_unit|fifo_rx|Mux19~5_combout\,
	combout => \uart_unit|fifo_rx|Mux19~6_combout\);

-- Location: LCCOMB_X106_Y39_N0
\uart_unit|fifo_rx|r_array[23][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[23][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[23][0]~feeder_combout\);

-- Location: LCCOMB_X105_Y42_N14
\uart_unit|fifo_rx|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~18_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(0) & (\uart_unit|fifo_rx|r_w_ptr\(2) & (\uart_unit|fifo_rx|r_wr_en~combout\ & \uart_unit|fifo_rx|r_w_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(0),
	datab => \uart_unit|fifo_rx|r_w_ptr\(2),
	datac => \uart_unit|fifo_rx|r_wr_en~combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(1),
	combout => \uart_unit|fifo_rx|Decoder0~18_combout\);

-- Location: LCCOMB_X105_Y41_N28
\uart_unit|fifo_rx|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~19_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(4) & (\uart_unit|fifo_rx|Decoder0~18_combout\ & !\uart_unit|fifo_rx|r_w_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(4),
	datac => \uart_unit|fifo_rx|Decoder0~18_combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(3),
	combout => \uart_unit|fifo_rx|Decoder0~19_combout\);

-- Location: FF_X106_Y39_N1
\uart_unit|fifo_rx|r_array[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[23][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[23][0]~q\);

-- Location: LCCOMB_X105_Y39_N20
\uart_unit|fifo_rx|Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~23_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(3) & (\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_w_ptr\(3),
	datac => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~18_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~23_combout\);

-- Location: FF_X105_Y39_N31
\uart_unit|fifo_rx|r_array[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[31][0]~q\);

-- Location: LCCOMB_X105_Y42_N24
\uart_unit|fifo_rx|Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~20_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(0) & (\uart_unit|fifo_rx|r_w_ptr\(2) & (\uart_unit|fifo_rx|r_wr_en~combout\ & \uart_unit|fifo_rx|r_w_ptr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(0),
	datab => \uart_unit|fifo_rx|r_w_ptr\(2),
	datac => \uart_unit|fifo_rx|r_wr_en~combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(1),
	combout => \uart_unit|fifo_rx|Decoder0~20_combout\);

-- Location: LCCOMB_X105_Y39_N22
\uart_unit|fifo_rx|Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~22_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(3) & (\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_w_ptr\(3),
	datac => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~20_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~22_combout\);

-- Location: FF_X105_Y39_N1
\uart_unit|fifo_rx|r_array[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[22][0]~q\);

-- Location: LCCOMB_X105_Y43_N6
\uart_unit|fifo_rx|r_array[30][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[30][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[30][0]~feeder_combout\);

-- Location: LCCOMB_X105_Y43_N30
\uart_unit|fifo_rx|Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~21_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(3) & (\uart_unit|fifo_rx|Decoder0~20_combout\ & \uart_unit|fifo_rx|r_w_ptr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_w_ptr\(3),
	datac => \uart_unit|fifo_rx|Decoder0~20_combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(4),
	combout => \uart_unit|fifo_rx|Decoder0~21_combout\);

-- Location: FF_X105_Y43_N7
\uart_unit|fifo_rx|r_array[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[30][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[30][0]~q\);

-- Location: LCCOMB_X105_Y39_N0
\uart_unit|fifo_rx|Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~7_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|r_ptr\(0)) # ((\uart_unit|fifo_rx|r_array[30][0]~q\)))) # (!\uart_unit|fifo_rx|r_ptr\(3) & (!\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_array[22][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(3),
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[22][0]~q\,
	datad => \uart_unit|fifo_rx|r_array[30][0]~q\,
	combout => \uart_unit|fifo_rx|Mux19~7_combout\);

-- Location: LCCOMB_X105_Y39_N30
\uart_unit|fifo_rx|Mux19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~8_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux19~7_combout\ & ((\uart_unit|fifo_rx|r_array[31][0]~q\))) # (!\uart_unit|fifo_rx|Mux19~7_combout\ & (\uart_unit|fifo_rx|r_array[23][0]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[23][0]~q\,
	datac => \uart_unit|fifo_rx|r_array[31][0]~q\,
	datad => \uart_unit|fifo_rx|Mux19~7_combout\,
	combout => \uart_unit|fifo_rx|Mux19~8_combout\);

-- Location: LCCOMB_X99_Y43_N4
\uart_unit|fifo_rx|Mux19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~9_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux19~6_combout\ & ((\uart_unit|fifo_rx|Mux19~8_combout\))) # (!\uart_unit|fifo_rx|Mux19~6_combout\ & (\uart_unit|fifo_rx|Mux19~1_combout\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux19~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux19~1_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|Mux19~6_combout\,
	datad => \uart_unit|fifo_rx|Mux19~8_combout\,
	combout => \uart_unit|fifo_rx|Mux19~9_combout\);

-- Location: LCCOMB_X99_Y39_N20
\uart_unit|fifo_rx|r_array[10][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[10][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[10][0]~feeder_combout\);

-- Location: LCCOMB_X99_Y39_N4
\uart_unit|fifo_rx|Decoder0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~24_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(3) & (!\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_w_ptr\(3),
	datac => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~0_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~24_combout\);

-- Location: FF_X99_Y39_N21
\uart_unit|fifo_rx|r_array[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[10][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[10][0]~q\);

-- Location: LCCOMB_X101_Y39_N20
\uart_unit|fifo_rx|r_array[12][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[12][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[12][0]~feeder_combout\);

-- Location: LCCOMB_X101_Y39_N8
\uart_unit|fifo_rx|Decoder0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~25_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(3) & (!\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datac => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~8_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~25_combout\);

-- Location: FF_X101_Y39_N21
\uart_unit|fifo_rx|r_array[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[12][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[12][0]~q\);

-- Location: LCCOMB_X100_Y39_N30
\uart_unit|fifo_rx|Decoder0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~26_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(3) & (!\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datab => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~12_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~26_combout\);

-- Location: FF_X100_Y39_N5
\uart_unit|fifo_rx|r_array[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[8][0]~q\);

-- Location: LCCOMB_X100_Y39_N4
\uart_unit|fifo_rx|Mux19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~10_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|r_ptr\(2))))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|r_array[12][0]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- ((\uart_unit|fifo_rx|r_array[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[12][0]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[8][0]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(2),
	combout => \uart_unit|fifo_rx|Mux19~10_combout\);

-- Location: LCCOMB_X100_Y39_N14
\uart_unit|fifo_rx|Decoder0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~27_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(3) & (!\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datab => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~20_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~27_combout\);

-- Location: FF_X100_Y39_N7
\uart_unit|fifo_rx|r_array[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[14][0]~q\);

-- Location: LCCOMB_X100_Y39_N6
\uart_unit|fifo_rx|Mux19~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~11_combout\ = (\uart_unit|fifo_rx|Mux19~10_combout\ & (((\uart_unit|fifo_rx|r_array[14][0]~q\) # (!\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|Mux19~10_combout\ & (\uart_unit|fifo_rx|r_array[10][0]~q\ & 
-- ((\uart_unit|fifo_rx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[10][0]~q\,
	datab => \uart_unit|fifo_rx|Mux19~10_combout\,
	datac => \uart_unit|fifo_rx|r_array[14][0]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux19~11_combout\);

-- Location: LCCOMB_X105_Y41_N24
\uart_unit|fifo_rx|r_array[11][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[11][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[11][0]~feeder_combout\);

-- Location: LCCOMB_X105_Y41_N18
\uart_unit|fifo_rx|Decoder0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~36_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(4) & (\uart_unit|fifo_rx|Decoder0~2_combout\ & \uart_unit|fifo_rx|r_w_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(4),
	datac => \uart_unit|fifo_rx|Decoder0~2_combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(3),
	combout => \uart_unit|fifo_rx|Decoder0~36_combout\);

-- Location: FF_X105_Y41_N25
\uart_unit|fifo_rx|r_array[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[11][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[11][0]~q\);

-- Location: LCCOMB_X100_Y41_N14
\uart_unit|fifo_rx|Decoder0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~39_combout\ = (\uart_unit|fifo_rx|Decoder0~18_combout\ & (!\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|r_w_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Decoder0~18_combout\,
	datab => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|r_w_ptr\(3),
	combout => \uart_unit|fifo_rx|Decoder0~39_combout\);

-- Location: FF_X100_Y41_N23
\uart_unit|fifo_rx|r_array[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[15][0]~q\);

-- Location: LCCOMB_X101_Y41_N18
\uart_unit|fifo_rx|Decoder0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~37_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(4) & (\uart_unit|fifo_rx|Decoder0~6_combout\ & \uart_unit|fifo_rx|r_w_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(4),
	datab => \uart_unit|fifo_rx|Decoder0~6_combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(3),
	combout => \uart_unit|fifo_rx|Decoder0~37_combout\);

-- Location: FF_X101_Y41_N5
\uart_unit|fifo_rx|r_array[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[13][0]~q\);

-- Location: LCCOMB_X100_Y41_N18
\uart_unit|fifo_rx|Decoder0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~38_combout\ = (\uart_unit|fifo_rx|r_w_ptr\(3) & (!\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datab => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~14_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~38_combout\);

-- Location: FF_X100_Y41_N13
\uart_unit|fifo_rx|r_array[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[9][0]~q\);

-- Location: LCCOMB_X100_Y41_N12
\uart_unit|fifo_rx|Mux19~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~17_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_array[13][0]~q\) # ((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_array[9][0]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[13][0]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[9][0]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux19~17_combout\);

-- Location: LCCOMB_X100_Y41_N22
\uart_unit|fifo_rx|Mux19~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~18_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux19~17_combout\ & ((\uart_unit|fifo_rx|r_array[15][0]~q\))) # (!\uart_unit|fifo_rx|Mux19~17_combout\ & (\uart_unit|fifo_rx|r_array[11][0]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux19~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[11][0]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[15][0]~q\,
	datad => \uart_unit|fifo_rx|Mux19~17_combout\,
	combout => \uart_unit|fifo_rx|Mux19~18_combout\);

-- Location: LCCOMB_X101_Y40_N28
\uart_unit|fifo_rx|r_array[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[5][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[5][0]~feeder_combout\);

-- Location: LCCOMB_X103_Y42_N8
\uart_unit|fifo_rx|Decoder0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~28_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(4) & (\uart_unit|fifo_rx|Decoder0~6_combout\ & !\uart_unit|fifo_rx|r_w_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(4),
	datac => \uart_unit|fifo_rx|Decoder0~6_combout\,
	datad => \uart_unit|fifo_rx|r_w_ptr\(3),
	combout => \uart_unit|fifo_rx|Decoder0~28_combout\);

-- Location: FF_X101_Y40_N29
\uart_unit|fifo_rx|r_array[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[5][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[5][0]~q\);

-- Location: LCCOMB_X101_Y42_N10
\uart_unit|fifo_rx|Decoder0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~31_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(3) & (!\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datab => \uart_unit|fifo_rx|r_w_ptr\(4),
	datac => \uart_unit|fifo_rx|Decoder0~18_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~31_combout\);

-- Location: FF_X100_Y43_N11
\uart_unit|fifo_rx|r_array[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[7][0]~q\);

-- Location: LCCOMB_X103_Y43_N26
\uart_unit|fifo_rx|r_array[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[3][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[3][0]~feeder_combout\);

-- Location: LCCOMB_X103_Y43_N16
\uart_unit|fifo_rx|Decoder0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~29_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(3) & (!\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datab => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~2_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~29_combout\);

-- Location: FF_X103_Y43_N27
\uart_unit|fifo_rx|r_array[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[3][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[3][0]~q\);

-- Location: LCCOMB_X101_Y42_N0
\uart_unit|fifo_rx|Decoder0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~30_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(3) & (!\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datac => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~14_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~30_combout\);

-- Location: FF_X100_Y43_N21
\uart_unit|fifo_rx|r_array[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[1][0]~q\);

-- Location: LCCOMB_X100_Y43_N20
\uart_unit|fifo_rx|Mux19~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~12_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_array[3][0]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(1) & 
-- ((\uart_unit|fifo_rx|r_array[1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[3][0]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[1][0]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux19~12_combout\);

-- Location: LCCOMB_X100_Y43_N10
\uart_unit|fifo_rx|Mux19~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~13_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux19~12_combout\ & ((\uart_unit|fifo_rx|r_array[7][0]~q\))) # (!\uart_unit|fifo_rx|Mux19~12_combout\ & (\uart_unit|fifo_rx|r_array[5][0]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux19~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[5][0]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[7][0]~q\,
	datad => \uart_unit|fifo_rx|Mux19~12_combout\,
	combout => \uart_unit|fifo_rx|Mux19~13_combout\);

-- Location: LCCOMB_X101_Y40_N6
\uart_unit|fifo_rx|r_array[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[4][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[4][0]~feeder_combout\);

-- Location: LCCOMB_X101_Y40_N8
\uart_unit|fifo_rx|Decoder0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~32_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(4) & (!\uart_unit|fifo_rx|r_w_ptr\(3) & \uart_unit|fifo_rx|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|r_w_ptr\(4),
	datac => \uart_unit|fifo_rx|r_w_ptr\(3),
	datad => \uart_unit|fifo_rx|Decoder0~8_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~32_combout\);

-- Location: FF_X101_Y40_N7
\uart_unit|fifo_rx|r_array[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[4][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[4][0]~q\);

-- Location: LCCOMB_X99_Y42_N10
\uart_unit|fifo_rx|Decoder0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~35_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(3) & (!\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datab => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~20_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~35_combout\);

-- Location: FF_X98_Y43_N3
\uart_unit|fifo_rx|r_array[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[6][0]~q\);

-- Location: LCCOMB_X102_Y42_N6
\uart_unit|fifo_rx|r_array[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[2][0]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(0),
	combout => \uart_unit|fifo_rx|r_array[2][0]~feeder_combout\);

-- Location: LCCOMB_X102_Y42_N2
\uart_unit|fifo_rx|Decoder0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~33_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(3) & (!\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datab => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~0_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~33_combout\);

-- Location: FF_X102_Y42_N7
\uart_unit|fifo_rx|r_array[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[2][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[2][0]~q\);

-- Location: LCCOMB_X99_Y42_N4
\uart_unit|fifo_rx|Decoder0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Decoder0~34_combout\ = (!\uart_unit|fifo_rx|r_w_ptr\(3) & (!\uart_unit|fifo_rx|r_w_ptr\(4) & \uart_unit|fifo_rx|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_w_ptr\(3),
	datab => \uart_unit|fifo_rx|r_w_ptr\(4),
	datad => \uart_unit|fifo_rx|Decoder0~12_combout\,
	combout => \uart_unit|fifo_rx|Decoder0~34_combout\);

-- Location: FF_X98_Y43_N17
\uart_unit|fifo_rx|r_array[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(0),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[0][0]~q\);

-- Location: LCCOMB_X98_Y43_N16
\uart_unit|fifo_rx|Mux19~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~14_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_array[2][0]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(1) & 
-- ((\uart_unit|fifo_rx|r_array[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[2][0]~q\,
	datac => \uart_unit|fifo_rx|r_array[0][0]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux19~14_combout\);

-- Location: LCCOMB_X98_Y43_N2
\uart_unit|fifo_rx|Mux19~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~15_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux19~14_combout\ & ((\uart_unit|fifo_rx|r_array[6][0]~q\))) # (!\uart_unit|fifo_rx|Mux19~14_combout\ & (\uart_unit|fifo_rx|r_array[4][0]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux19~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[4][0]~q\,
	datac => \uart_unit|fifo_rx|r_array[6][0]~q\,
	datad => \uart_unit|fifo_rx|Mux19~14_combout\,
	combout => \uart_unit|fifo_rx|Mux19~15_combout\);

-- Location: LCCOMB_X98_Y43_N12
\uart_unit|fifo_rx|Mux19~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~16_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3)) # ((\uart_unit|fifo_rx|Mux19~13_combout\)))) # (!\uart_unit|fifo_rx|r_ptr\(0) & (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|Mux19~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|Mux19~13_combout\,
	datad => \uart_unit|fifo_rx|Mux19~15_combout\,
	combout => \uart_unit|fifo_rx|Mux19~16_combout\);

-- Location: LCCOMB_X99_Y43_N2
\uart_unit|fifo_rx|Mux19~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~19_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux19~16_combout\ & ((\uart_unit|fifo_rx|Mux19~18_combout\))) # (!\uart_unit|fifo_rx|Mux19~16_combout\ & (\uart_unit|fifo_rx|Mux19~11_combout\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux19~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux19~11_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|Mux19~18_combout\,
	datad => \uart_unit|fifo_rx|Mux19~16_combout\,
	combout => \uart_unit|fifo_rx|Mux19~19_combout\);

-- Location: LCCOMB_X99_Y43_N0
\uart_unit|fifo_rx|Mux19~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux19~20_combout\ = (\uart_unit|fifo_rx|r_ptr\(4) & (\uart_unit|fifo_rx|Mux19~9_combout\)) # (!\uart_unit|fifo_rx|r_ptr\(4) & ((\uart_unit|fifo_rx|Mux19~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(4),
	datab => \uart_unit|fifo_rx|Mux19~9_combout\,
	datad => \uart_unit|fifo_rx|Mux19~19_combout\,
	combout => \uart_unit|fifo_rx|Mux19~20_combout\);

-- Location: LCCOMB_X99_Y43_N8
\r_transmit_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_transmit_data[0]~0_combout\ = \uart_unit|fifo_rx|Mux19~20_combout\ $ (VCC)
-- \r_transmit_data[0]~1\ = CARRY(\uart_unit|fifo_rx|Mux19~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|Mux19~20_combout\,
	datad => VCC,
	combout => \r_transmit_data[0]~0_combout\,
	cout => \r_transmit_data[0]~1\);

-- Location: LCCOMB_X97_Y45_N0
\uart_unit|fifo_tx|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~14_combout\ = (!\uart_unit|fifo_tx|r_wr_en~combout\ & (!\uart_unit|fifo_tx|r_w_ptr\(1) & (\uart_unit|fifo_tx|r_w_ptr\(0) & !\uart_unit|fifo_tx|r_w_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_wr_en~combout\,
	datab => \uart_unit|fifo_tx|r_w_ptr\(1),
	datac => \uart_unit|fifo_tx|r_w_ptr\(0),
	datad => \uart_unit|fifo_tx|r_w_ptr\(2),
	combout => \uart_unit|fifo_tx|Decoder0~14_combout\);

-- Location: LCCOMB_X98_Y45_N2
\uart_unit|fifo_tx|Decoder0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~30_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(3) & (!\uart_unit|fifo_tx|r_w_ptr\(4) & \uart_unit|fifo_tx|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(3),
	datab => \uart_unit|fifo_tx|r_w_ptr\(4),
	datad => \uart_unit|fifo_tx|Decoder0~14_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~30_combout\);

-- Location: FF_X98_Y45_N19
\uart_unit|fifo_tx|r_array[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[1][0]~q\);

-- Location: LCCOMB_X97_Y45_N10
\uart_unit|fifo_tx|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~2_combout\ = (!\uart_unit|fifo_tx|r_wr_en~combout\ & (\uart_unit|fifo_tx|r_w_ptr\(1) & (\uart_unit|fifo_tx|r_w_ptr\(0) & !\uart_unit|fifo_tx|r_w_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_wr_en~combout\,
	datab => \uart_unit|fifo_tx|r_w_ptr\(1),
	datac => \uart_unit|fifo_tx|r_w_ptr\(0),
	datad => \uart_unit|fifo_tx|r_w_ptr\(2),
	combout => \uart_unit|fifo_tx|Decoder0~2_combout\);

-- Location: LCCOMB_X98_Y46_N12
\uart_unit|fifo_tx|Decoder0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~29_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|Decoder0~2_combout\ & !\uart_unit|fifo_tx|r_w_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|Decoder0~2_combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(3),
	combout => \uart_unit|fifo_tx|Decoder0~29_combout\);

-- Location: FF_X99_Y43_N25
\uart_unit|fifo_tx|r_array[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[3][0]~q\);

-- Location: LCCOMB_X98_Y45_N18
\uart_unit|transmitter|Selector16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~12_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & (\uart_unit|fifo_tx|r_ptr\(1))) # (!\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[3][0]~q\))) # (!\uart_unit|fifo_tx|r_ptr\(1) & 
-- (\uart_unit|fifo_tx|r_array[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_array[1][0]~q\,
	datad => \uart_unit|fifo_tx|r_array[3][0]~q\,
	combout => \uart_unit|transmitter|Selector16~12_combout\);

-- Location: LCCOMB_X97_Y45_N2
\uart_unit|fifo_tx|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~18_combout\ = (!\uart_unit|fifo_tx|r_wr_en~combout\ & (\uart_unit|fifo_tx|r_w_ptr\(1) & (\uart_unit|fifo_tx|r_w_ptr\(0) & \uart_unit|fifo_tx|r_w_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_wr_en~combout\,
	datab => \uart_unit|fifo_tx|r_w_ptr\(1),
	datac => \uart_unit|fifo_tx|r_w_ptr\(0),
	datad => \uart_unit|fifo_tx|r_w_ptr\(2),
	combout => \uart_unit|fifo_tx|Decoder0~18_combout\);

-- Location: LCCOMB_X98_Y46_N10
\uart_unit|fifo_tx|Decoder0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~31_combout\ = (\uart_unit|fifo_tx|Decoder0~18_combout\ & (!\uart_unit|fifo_tx|r_w_ptr\(3) & !\uart_unit|fifo_tx|r_w_ptr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Decoder0~18_combout\,
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|r_w_ptr\(4),
	combout => \uart_unit|fifo_tx|Decoder0~31_combout\);

-- Location: FF_X97_Y45_N19
\uart_unit|fifo_tx|r_array[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[7][0]~q\);

-- Location: LCCOMB_X98_Y45_N24
\uart_unit|fifo_tx|r_array[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[5][0]~feeder_combout\ = \r_transmit_data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[0]~0_combout\,
	combout => \uart_unit|fifo_tx|r_array[5][0]~feeder_combout\);

-- Location: LCCOMB_X97_Y45_N20
\uart_unit|fifo_tx|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~6_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(0) & (!\uart_unit|fifo_tx|r_w_ptr\(1) & (!\uart_unit|fifo_tx|r_wr_en~combout\ & \uart_unit|fifo_tx|r_w_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(0),
	datab => \uart_unit|fifo_tx|r_w_ptr\(1),
	datac => \uart_unit|fifo_tx|r_wr_en~combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(2),
	combout => \uart_unit|fifo_tx|Decoder0~6_combout\);

-- Location: LCCOMB_X98_Y45_N4
\uart_unit|fifo_tx|Decoder0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~28_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(3) & (!\uart_unit|fifo_tx|r_w_ptr\(4) & \uart_unit|fifo_tx|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(3),
	datab => \uart_unit|fifo_tx|r_w_ptr\(4),
	datad => \uart_unit|fifo_tx|Decoder0~6_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~28_combout\);

-- Location: FF_X98_Y45_N25
\uart_unit|fifo_tx|r_array[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[5][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[5][0]~q\);

-- Location: LCCOMB_X97_Y45_N18
\uart_unit|transmitter|Selector16~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~13_combout\ = (\uart_unit|transmitter|Selector16~12_combout\ & (((\uart_unit|fifo_tx|r_array[7][0]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(2)))) # (!\uart_unit|transmitter|Selector16~12_combout\ & (\uart_unit|fifo_tx|r_ptr\(2) 
-- & ((\uart_unit|fifo_tx|r_array[5][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector16~12_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[7][0]~q\,
	datad => \uart_unit|fifo_tx|r_array[5][0]~q\,
	combout => \uart_unit|transmitter|Selector16~13_combout\);

-- Location: LCCOMB_X98_Y41_N16
\uart_unit|fifo_tx|r_array[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[4][0]~feeder_combout\ = \r_transmit_data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[0]~0_combout\,
	combout => \uart_unit|fifo_tx|r_array[4][0]~feeder_combout\);

-- Location: LCCOMB_X96_Y44_N8
\uart_unit|fifo_tx|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~8_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(2) & (!\uart_unit|fifo_tx|r_w_ptr\(1) & (!\uart_unit|fifo_tx|r_w_ptr\(0) & !\uart_unit|fifo_tx|r_wr_en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(2),
	datab => \uart_unit|fifo_tx|r_w_ptr\(1),
	datac => \uart_unit|fifo_tx|r_w_ptr\(0),
	datad => \uart_unit|fifo_tx|r_wr_en~combout\,
	combout => \uart_unit|fifo_tx|Decoder0~8_combout\);

-- Location: LCCOMB_X98_Y41_N24
\uart_unit|fifo_tx|Decoder0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~32_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(3) & (\uart_unit|fifo_tx|Decoder0~8_combout\ & !\uart_unit|fifo_tx|r_w_ptr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(3),
	datab => \uart_unit|fifo_tx|Decoder0~8_combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(4),
	combout => \uart_unit|fifo_tx|Decoder0~32_combout\);

-- Location: FF_X98_Y41_N17
\uart_unit|fifo_tx|r_array[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[4][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[4][0]~q\);

-- Location: LCCOMB_X96_Y44_N30
\uart_unit|fifo_tx|Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~20_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(2) & (\uart_unit|fifo_tx|r_w_ptr\(1) & (!\uart_unit|fifo_tx|r_w_ptr\(0) & !\uart_unit|fifo_tx|r_wr_en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(2),
	datab => \uart_unit|fifo_tx|r_w_ptr\(1),
	datac => \uart_unit|fifo_tx|r_w_ptr\(0),
	datad => \uart_unit|fifo_tx|r_wr_en~combout\,
	combout => \uart_unit|fifo_tx|Decoder0~20_combout\);

-- Location: LCCOMB_X98_Y41_N22
\uart_unit|fifo_tx|Decoder0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~35_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(3) & (\uart_unit|fifo_tx|Decoder0~20_combout\ & !\uart_unit|fifo_tx|r_w_ptr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(3),
	datab => \uart_unit|fifo_tx|Decoder0~20_combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(4),
	combout => \uart_unit|fifo_tx|Decoder0~35_combout\);

-- Location: FF_X98_Y41_N27
\uart_unit|fifo_tx|r_array[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[6][0]~q\);

-- Location: LCCOMB_X99_Y41_N4
\uart_unit|fifo_tx|r_array[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[2][0]~feeder_combout\ = \r_transmit_data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[0]~0_combout\,
	combout => \uart_unit|fifo_tx|r_array[2][0]~feeder_combout\);

-- Location: LCCOMB_X97_Y45_N24
\uart_unit|fifo_tx|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~0_combout\ = (!\uart_unit|fifo_tx|r_wr_en~combout\ & (\uart_unit|fifo_tx|r_w_ptr\(1) & (!\uart_unit|fifo_tx|r_w_ptr\(0) & !\uart_unit|fifo_tx|r_w_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_wr_en~combout\,
	datab => \uart_unit|fifo_tx|r_w_ptr\(1),
	datac => \uart_unit|fifo_tx|r_w_ptr\(0),
	datad => \uart_unit|fifo_tx|r_w_ptr\(2),
	combout => \uart_unit|fifo_tx|Decoder0~0_combout\);

-- Location: LCCOMB_X99_Y41_N12
\uart_unit|fifo_tx|Decoder0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~33_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(3) & (!\uart_unit|fifo_tx|r_w_ptr\(4) & \uart_unit|fifo_tx|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(3),
	datab => \uart_unit|fifo_tx|r_w_ptr\(4),
	datad => \uart_unit|fifo_tx|Decoder0~0_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~33_combout\);

-- Location: FF_X99_Y41_N5
\uart_unit|fifo_tx|r_array[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[2][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[2][0]~q\);

-- Location: LCCOMB_X97_Y45_N26
\uart_unit|fifo_tx|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~12_combout\ = (!\uart_unit|fifo_tx|r_wr_en~combout\ & (!\uart_unit|fifo_tx|r_w_ptr\(1) & (!\uart_unit|fifo_tx|r_w_ptr\(0) & !\uart_unit|fifo_tx|r_w_ptr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_wr_en~combout\,
	datab => \uart_unit|fifo_tx|r_w_ptr\(1),
	datac => \uart_unit|fifo_tx|r_w_ptr\(0),
	datad => \uart_unit|fifo_tx|r_w_ptr\(2),
	combout => \uart_unit|fifo_tx|Decoder0~12_combout\);

-- Location: LCCOMB_X99_Y41_N30
\uart_unit|fifo_tx|Decoder0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~34_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(3) & (!\uart_unit|fifo_tx|r_w_ptr\(4) & \uart_unit|fifo_tx|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(3),
	datab => \uart_unit|fifo_tx|r_w_ptr\(4),
	datad => \uart_unit|fifo_tx|Decoder0~12_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~34_combout\);

-- Location: FF_X99_Y41_N19
\uart_unit|fifo_tx|r_array[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[0][0]~q\);

-- Location: LCCOMB_X99_Y41_N18
\uart_unit|transmitter|Selector16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~14_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[2][0]~q\) # ((\uart_unit|fifo_tx|r_ptr\(2))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|fifo_tx|r_array[0][0]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[2][0]~q\,
	datac => \uart_unit|fifo_tx|r_array[0][0]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(2),
	combout => \uart_unit|transmitter|Selector16~14_combout\);

-- Location: LCCOMB_X98_Y41_N26
\uart_unit|transmitter|Selector16~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~15_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector16~14_combout\ & ((\uart_unit|fifo_tx|r_array[6][0]~q\))) # (!\uart_unit|transmitter|Selector16~14_combout\ & 
-- (\uart_unit|fifo_tx|r_array[4][0]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|transmitter|Selector16~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[4][0]~q\,
	datac => \uart_unit|fifo_tx|r_array[6][0]~q\,
	datad => \uart_unit|transmitter|Selector16~14_combout\,
	combout => \uart_unit|transmitter|Selector16~15_combout\);

-- Location: LCCOMB_X97_Y45_N28
\uart_unit|transmitter|Selector16~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~16_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|transmitter|Selector16~13_combout\)) # 
-- (!\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector16~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|transmitter|Selector16~13_combout\,
	datac => \uart_unit|fifo_tx|r_ptr\(0),
	datad => \uart_unit|transmitter|Selector16~15_combout\,
	combout => \uart_unit|transmitter|Selector16~16_combout\);

-- Location: LCCOMB_X98_Y44_N6
\uart_unit|fifo_tx|r_array[14][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[14][0]~feeder_combout\ = \r_transmit_data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[0]~0_combout\,
	combout => \uart_unit|fifo_tx|r_array[14][0]~feeder_combout\);

-- Location: LCCOMB_X98_Y44_N18
\uart_unit|fifo_tx|Decoder0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~27_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|Decoder0~20_combout\ & \uart_unit|fifo_tx|r_w_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|Decoder0~20_combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(3),
	combout => \uart_unit|fifo_tx|Decoder0~27_combout\);

-- Location: FF_X98_Y44_N7
\uart_unit|fifo_tx|r_array[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[14][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[14][0]~q\);

-- Location: LCCOMB_X99_Y44_N4
\uart_unit|fifo_tx|Decoder0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~24_combout\ = (\uart_unit|fifo_tx|Decoder0~0_combout\ & (!\uart_unit|fifo_tx|r_w_ptr\(4) & \uart_unit|fifo_tx|r_w_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Decoder0~0_combout\,
	datab => \uart_unit|fifo_tx|r_w_ptr\(4),
	datad => \uart_unit|fifo_tx|r_w_ptr\(3),
	combout => \uart_unit|fifo_tx|Decoder0~24_combout\);

-- Location: FF_X99_Y44_N13
\uart_unit|fifo_tx|r_array[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[10][0]~q\);

-- Location: LCCOMB_X98_Y44_N16
\uart_unit|fifo_tx|r_array[12][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[12][0]~feeder_combout\ = \r_transmit_data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[0]~0_combout\,
	combout => \uart_unit|fifo_tx|r_array[12][0]~feeder_combout\);

-- Location: LCCOMB_X98_Y44_N0
\uart_unit|fifo_tx|Decoder0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~25_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|Decoder0~8_combout\ & \uart_unit|fifo_tx|r_w_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|Decoder0~8_combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(3),
	combout => \uart_unit|fifo_tx|Decoder0~25_combout\);

-- Location: FF_X98_Y44_N17
\uart_unit|fifo_tx|r_array[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[12][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[12][0]~q\);

-- Location: LCCOMB_X99_Y44_N14
\uart_unit|fifo_tx|Decoder0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~26_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|Decoder0~12_combout\ & \uart_unit|fifo_tx|r_w_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|Decoder0~12_combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(3),
	combout => \uart_unit|fifo_tx|Decoder0~26_combout\);

-- Location: FF_X99_Y44_N11
\uart_unit|fifo_tx|r_array[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[8][0]~q\);

-- Location: LCCOMB_X99_Y44_N10
\uart_unit|transmitter|Selector16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~10_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_array[12][0]~q\) # ((\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|r_array[8][0]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[12][0]~q\,
	datac => \uart_unit|fifo_tx|r_array[8][0]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|transmitter|Selector16~10_combout\);

-- Location: LCCOMB_X99_Y44_N12
\uart_unit|transmitter|Selector16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~11_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector16~10_combout\ & (\uart_unit|fifo_tx|r_array[14][0]~q\)) # (!\uart_unit|transmitter|Selector16~10_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[10][0]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[14][0]~q\,
	datac => \uart_unit|fifo_tx|r_array[10][0]~q\,
	datad => \uart_unit|transmitter|Selector16~10_combout\,
	combout => \uart_unit|transmitter|Selector16~11_combout\);

-- Location: LCCOMB_X98_Y43_N26
\uart_unit|fifo_tx|Decoder0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~39_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|r_w_ptr\(3) & \uart_unit|fifo_tx|Decoder0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datac => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|Decoder0~18_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~39_combout\);

-- Location: FF_X99_Y43_N9
\uart_unit|fifo_tx|r_array[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[15][0]~q\);

-- Location: LCCOMB_X99_Y42_N16
\uart_unit|fifo_tx|Decoder0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~36_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|r_w_ptr\(3) & \uart_unit|fifo_tx|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|Decoder0~2_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~36_combout\);

-- Location: FF_X100_Y46_N13
\uart_unit|fifo_tx|r_array[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[11][0]~q\);

-- Location: LCCOMB_X99_Y46_N8
\uart_unit|fifo_tx|Decoder0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~38_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|r_w_ptr\(3) & \uart_unit|fifo_tx|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|Decoder0~14_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~38_combout\);

-- Location: FF_X99_Y46_N31
\uart_unit|fifo_tx|r_array[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[9][0]~q\);

-- Location: LCCOMB_X99_Y46_N4
\uart_unit|fifo_tx|Decoder0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~37_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|r_w_ptr\(3) & \uart_unit|fifo_tx|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|Decoder0~6_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~37_combout\);

-- Location: FF_X99_Y46_N5
\uart_unit|fifo_tx|r_array[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[13][0]~q\);

-- Location: LCCOMB_X99_Y46_N30
\uart_unit|transmitter|Selector16~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~17_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & (\uart_unit|fifo_tx|r_ptr\(2))) # (!\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_array[13][0]~q\))) # (!\uart_unit|fifo_tx|r_ptr\(2) 
-- & (\uart_unit|fifo_tx|r_array[9][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[9][0]~q\,
	datad => \uart_unit|fifo_tx|r_array[13][0]~q\,
	combout => \uart_unit|transmitter|Selector16~17_combout\);

-- Location: LCCOMB_X100_Y46_N12
\uart_unit|transmitter|Selector16~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~18_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector16~17_combout\ & (\uart_unit|fifo_tx|r_array[15][0]~q\)) # (!\uart_unit|transmitter|Selector16~17_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[11][0]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector16~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[15][0]~q\,
	datac => \uart_unit|fifo_tx|r_array[11][0]~q\,
	datad => \uart_unit|transmitter|Selector16~17_combout\,
	combout => \uart_unit|transmitter|Selector16~18_combout\);

-- Location: LCCOMB_X97_Y45_N30
\uart_unit|transmitter|Selector16~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~19_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector16~16_combout\ & ((\uart_unit|transmitter|Selector16~18_combout\))) # (!\uart_unit|transmitter|Selector16~16_combout\ & 
-- (\uart_unit|transmitter|Selector16~11_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (\uart_unit|transmitter|Selector16~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|transmitter|Selector16~16_combout\,
	datac => \uart_unit|transmitter|Selector16~11_combout\,
	datad => \uart_unit|transmitter|Selector16~18_combout\,
	combout => \uart_unit|transmitter|Selector16~19_combout\);

-- Location: LCCOMB_X97_Y43_N4
\uart_unit|fifo_tx|r_array[23][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[23][0]~feeder_combout\ = \r_transmit_data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[0]~0_combout\,
	combout => \uart_unit|fifo_tx|r_array[23][0]~feeder_combout\);

-- Location: LCCOMB_X97_Y43_N0
\uart_unit|fifo_tx|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~19_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(3) & (\uart_unit|fifo_tx|Decoder0~18_combout\ & \uart_unit|fifo_tx|r_w_ptr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(3),
	datab => \uart_unit|fifo_tx|Decoder0~18_combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(4),
	combout => \uart_unit|fifo_tx|Decoder0~19_combout\);

-- Location: FF_X97_Y43_N5
\uart_unit|fifo_tx|r_array[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[23][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[23][0]~q\);

-- Location: LCCOMB_X96_Y43_N2
\uart_unit|fifo_tx|Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~23_combout\ = (\uart_unit|fifo_tx|Decoder0~18_combout\ & (\uart_unit|fifo_tx|r_w_ptr\(4) & \uart_unit|fifo_tx|r_w_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Decoder0~18_combout\,
	datab => \uart_unit|fifo_tx|r_w_ptr\(4),
	datad => \uart_unit|fifo_tx|r_w_ptr\(3),
	combout => \uart_unit|fifo_tx|Decoder0~23_combout\);

-- Location: FF_X96_Y43_N31
\uart_unit|fifo_tx|r_array[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[31][0]~q\);

-- Location: LCCOMB_X97_Y43_N14
\uart_unit|fifo_tx|Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~22_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(3) & (\uart_unit|fifo_tx|Decoder0~20_combout\ & \uart_unit|fifo_tx|r_w_ptr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(3),
	datab => \uart_unit|fifo_tx|Decoder0~20_combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(4),
	combout => \uart_unit|fifo_tx|Decoder0~22_combout\);

-- Location: FF_X97_Y43_N11
\uart_unit|fifo_tx|r_array[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[22][0]~q\);

-- Location: LCCOMB_X96_Y43_N8
\uart_unit|fifo_tx|r_array[30][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[30][0]~feeder_combout\ = \r_transmit_data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[0]~0_combout\,
	combout => \uart_unit|fifo_tx|r_array[30][0]~feeder_combout\);

-- Location: LCCOMB_X96_Y43_N4
\uart_unit|fifo_tx|Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~21_combout\ = (\uart_unit|fifo_tx|Decoder0~20_combout\ & (\uart_unit|fifo_tx|r_w_ptr\(4) & \uart_unit|fifo_tx|r_w_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Decoder0~20_combout\,
	datab => \uart_unit|fifo_tx|r_w_ptr\(4),
	datad => \uart_unit|fifo_tx|r_w_ptr\(3),
	combout => \uart_unit|fifo_tx|Decoder0~21_combout\);

-- Location: FF_X96_Y43_N9
\uart_unit|fifo_tx|r_array[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[30][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[30][0]~q\);

-- Location: LCCOMB_X97_Y43_N10
\uart_unit|transmitter|Selector16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~7_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0)) # ((\uart_unit|fifo_tx|r_array[30][0]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (!\uart_unit|fifo_tx|r_ptr\(0) & 
-- (\uart_unit|fifo_tx|r_array[22][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[22][0]~q\,
	datad => \uart_unit|fifo_tx|r_array[30][0]~q\,
	combout => \uart_unit|transmitter|Selector16~7_combout\);

-- Location: LCCOMB_X96_Y43_N30
\uart_unit|transmitter|Selector16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~8_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector16~7_combout\ & ((\uart_unit|fifo_tx|r_array[31][0]~q\))) # (!\uart_unit|transmitter|Selector16~7_combout\ & 
-- (\uart_unit|fifo_tx|r_array[23][0]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|transmitter|Selector16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[23][0]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[31][0]~q\,
	datad => \uart_unit|transmitter|Selector16~7_combout\,
	combout => \uart_unit|transmitter|Selector16~8_combout\);

-- Location: LCCOMB_X99_Y42_N18
\uart_unit|fifo_tx|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~5_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|r_w_ptr\(3) & \uart_unit|fifo_tx|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|Decoder0~2_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~5_combout\);

-- Location: FF_X99_Y42_N5
\uart_unit|fifo_tx|r_array[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[27][0]~q\);

-- Location: LCCOMB_X98_Y42_N28
\uart_unit|fifo_tx|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~1_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|r_w_ptr\(3) & \uart_unit|fifo_tx|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|Decoder0~0_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~1_combout\);

-- Location: FF_X98_Y42_N5
\uart_unit|fifo_tx|r_array[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[26][0]~q\);

-- Location: LCCOMB_X99_Y42_N8
\uart_unit|fifo_tx|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~3_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(4) & (!\uart_unit|fifo_tx|r_w_ptr\(3) & \uart_unit|fifo_tx|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|Decoder0~2_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~3_combout\);

-- Location: FF_X99_Y42_N9
\uart_unit|fifo_tx|r_array[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[19][0]~q\);

-- Location: LCCOMB_X98_Y42_N30
\uart_unit|fifo_tx|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~4_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(4) & (!\uart_unit|fifo_tx|r_w_ptr\(3) & \uart_unit|fifo_tx|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|Decoder0~0_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~4_combout\);

-- Location: FF_X98_Y42_N7
\uart_unit|fifo_tx|r_array[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[18][0]~q\);

-- Location: LCCOMB_X98_Y42_N6
\uart_unit|transmitter|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~0_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|r_array[19][0]~q\) # ((\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|fifo_tx|r_array[18][0]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_array[19][0]~q\,
	datac => \uart_unit|fifo_tx|r_array[18][0]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|transmitter|Selector16~0_combout\);

-- Location: LCCOMB_X98_Y42_N4
\uart_unit|transmitter|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~1_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector16~0_combout\ & (\uart_unit|fifo_tx|r_array[27][0]~q\)) # (!\uart_unit|transmitter|Selector16~0_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[26][0]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|transmitter|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[27][0]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(3),
	datac => \uart_unit|fifo_tx|r_array[26][0]~q\,
	datad => \uart_unit|transmitter|Selector16~0_combout\,
	combout => \uart_unit|transmitter|Selector16~1_combout\);

-- Location: LCCOMB_X99_Y40_N24
\uart_unit|fifo_tx|r_array[28][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[28][0]~feeder_combout\ = \r_transmit_data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[0]~0_combout\,
	combout => \uart_unit|fifo_tx|r_array[28][0]~feeder_combout\);

-- Location: LCCOMB_X99_Y40_N28
\uart_unit|fifo_tx|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~9_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|Decoder0~8_combout\ & \uart_unit|fifo_tx|r_w_ptr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|Decoder0~8_combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(3),
	combout => \uart_unit|fifo_tx|Decoder0~9_combout\);

-- Location: FF_X99_Y40_N25
\uart_unit|fifo_tx|r_array[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[28][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[28][0]~q\);

-- Location: LCCOMB_X100_Y40_N18
\uart_unit|fifo_tx|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~10_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(4) & (!\uart_unit|fifo_tx|r_w_ptr\(3) & \uart_unit|fifo_tx|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|Decoder0~8_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~10_combout\);

-- Location: FF_X100_Y40_N31
\uart_unit|fifo_tx|r_array[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[20][0]~q\);

-- Location: LCCOMB_X100_Y40_N30
\uart_unit|transmitter|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~2_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_array[28][0]~q\) # ((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_array[20][0]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[28][0]~q\,
	datac => \uart_unit|fifo_tx|r_array[20][0]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector16~2_combout\);

-- Location: LCCOMB_X100_Y40_N12
\uart_unit|fifo_tx|r_array[21][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[21][0]~feeder_combout\ = \r_transmit_data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[0]~0_combout\,
	combout => \uart_unit|fifo_tx|r_array[21][0]~feeder_combout\);

-- Location: LCCOMB_X100_Y40_N28
\uart_unit|fifo_tx|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~7_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(4) & (!\uart_unit|fifo_tx|r_w_ptr\(3) & \uart_unit|fifo_tx|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|Decoder0~6_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~7_combout\);

-- Location: FF_X100_Y40_N13
\uart_unit|fifo_tx|r_array[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[21][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[21][0]~q\);

-- Location: LCCOMB_X99_Y40_N30
\uart_unit|fifo_tx|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~11_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|r_w_ptr\(3) & \uart_unit|fifo_tx|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|Decoder0~6_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~11_combout\);

-- Location: FF_X99_Y40_N27
\uart_unit|fifo_tx|r_array[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[29][0]~q\);

-- Location: LCCOMB_X99_Y40_N26
\uart_unit|transmitter|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~3_combout\ = (\uart_unit|transmitter|Selector16~2_combout\ & (((\uart_unit|fifo_tx|r_array[29][0]~q\) # (!\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|transmitter|Selector16~2_combout\ & 
-- (\uart_unit|fifo_tx|r_array[21][0]~q\ & ((\uart_unit|fifo_tx|r_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector16~2_combout\,
	datab => \uart_unit|fifo_tx|r_array[21][0]~q\,
	datac => \uart_unit|fifo_tx|r_array[29][0]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector16~3_combout\);

-- Location: LCCOMB_X99_Y45_N24
\uart_unit|fifo_tx|r_array[17][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[17][0]~feeder_combout\ = \r_transmit_data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[0]~0_combout\,
	combout => \uart_unit|fifo_tx|r_array[17][0]~feeder_combout\);

-- Location: LCCOMB_X99_Y45_N20
\uart_unit|fifo_tx|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~15_combout\ = (!\uart_unit|fifo_tx|r_w_ptr\(3) & (\uart_unit|fifo_tx|Decoder0~14_combout\ & \uart_unit|fifo_tx|r_w_ptr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(3),
	datab => \uart_unit|fifo_tx|Decoder0~14_combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(4),
	combout => \uart_unit|fifo_tx|Decoder0~15_combout\);

-- Location: FF_X99_Y45_N25
\uart_unit|fifo_tx|r_array[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[17][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[17][0]~q\);

-- Location: LCCOMB_X100_Y45_N22
\uart_unit|fifo_tx|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~16_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(4) & (!\uart_unit|fifo_tx|r_w_ptr\(3) & \uart_unit|fifo_tx|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|Decoder0~12_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~16_combout\);

-- Location: FF_X100_Y45_N7
\uart_unit|fifo_tx|r_array[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[16][0]~q\);

-- Location: LCCOMB_X100_Y45_N6
\uart_unit|transmitter|Selector16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~4_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_array[17][0]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(0) 
-- & ((\uart_unit|fifo_tx|r_array[16][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[17][0]~q\,
	datac => \uart_unit|fifo_tx|r_array[16][0]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector16~4_combout\);

-- Location: LCCOMB_X100_Y45_N8
\uart_unit|fifo_tx|r_array[24][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[24][0]~feeder_combout\ = \r_transmit_data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[0]~0_combout\,
	combout => \uart_unit|fifo_tx|r_array[24][0]~feeder_combout\);

-- Location: LCCOMB_X100_Y45_N0
\uart_unit|fifo_tx|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~13_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(4) & (\uart_unit|fifo_tx|r_w_ptr\(3) & \uart_unit|fifo_tx|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(4),
	datab => \uart_unit|fifo_tx|r_w_ptr\(3),
	datad => \uart_unit|fifo_tx|Decoder0~12_combout\,
	combout => \uart_unit|fifo_tx|Decoder0~13_combout\);

-- Location: FF_X100_Y45_N9
\uart_unit|fifo_tx|r_array[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[24][0]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[24][0]~q\);

-- Location: LCCOMB_X99_Y45_N22
\uart_unit|fifo_tx|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Decoder0~17_combout\ = (\uart_unit|fifo_tx|r_w_ptr\(3) & (\uart_unit|fifo_tx|Decoder0~14_combout\ & \uart_unit|fifo_tx|r_w_ptr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_w_ptr\(3),
	datab => \uart_unit|fifo_tx|Decoder0~14_combout\,
	datad => \uart_unit|fifo_tx|r_w_ptr\(4),
	combout => \uart_unit|fifo_tx|Decoder0~17_combout\);

-- Location: FF_X99_Y45_N27
\uart_unit|fifo_tx|r_array[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[0]~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[25][0]~q\);

-- Location: LCCOMB_X99_Y45_N26
\uart_unit|transmitter|Selector16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~5_combout\ = (\uart_unit|transmitter|Selector16~4_combout\ & (((\uart_unit|fifo_tx|r_array[25][0]~q\) # (!\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|transmitter|Selector16~4_combout\ & 
-- (\uart_unit|fifo_tx|r_array[24][0]~q\ & ((\uart_unit|fifo_tx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector16~4_combout\,
	datab => \uart_unit|fifo_tx|r_array[24][0]~q\,
	datac => \uart_unit|fifo_tx|r_array[25][0]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|transmitter|Selector16~5_combout\);

-- Location: LCCOMB_X96_Y42_N28
\uart_unit|transmitter|Selector16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~6_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1)) # ((\uart_unit|transmitter|Selector16~3_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (!\uart_unit|fifo_tx|r_ptr\(1) & 
-- ((\uart_unit|transmitter|Selector16~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|transmitter|Selector16~3_combout\,
	datad => \uart_unit|transmitter|Selector16~5_combout\,
	combout => \uart_unit|transmitter|Selector16~6_combout\);

-- Location: LCCOMB_X96_Y42_N6
\uart_unit|transmitter|Selector16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~9_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector16~6_combout\ & (\uart_unit|transmitter|Selector16~8_combout\)) # (!\uart_unit|transmitter|Selector16~6_combout\ & 
-- ((\uart_unit|transmitter|Selector16~1_combout\))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector16~8_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|transmitter|Selector16~1_combout\,
	datad => \uart_unit|transmitter|Selector16~6_combout\,
	combout => \uart_unit|transmitter|Selector16~9_combout\);

-- Location: LCCOMB_X97_Y44_N10
\uart_unit|transmitter|Selector16~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector16~20_combout\ = (\uart_unit|fifo_tx|r_ptr\(4) & ((\uart_unit|transmitter|Selector16~9_combout\))) # (!\uart_unit|fifo_tx|r_ptr\(4) & (\uart_unit|transmitter|Selector16~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector16~19_combout\,
	datab => \uart_unit|transmitter|Selector16~9_combout\,
	datad => \uart_unit|fifo_tx|r_ptr\(4),
	combout => \uart_unit|transmitter|Selector16~20_combout\);

-- Location: LCCOMB_X103_Y39_N2
\uart_unit|fifo_rx|r_array[28][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[28][1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(1),
	combout => \uart_unit|fifo_rx|r_array[28][1]~feeder_combout\);

-- Location: FF_X103_Y39_N3
\uart_unit|fifo_rx|r_array[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[28][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[28][1]~q\);

-- Location: FF_X102_Y39_N11
\uart_unit|fifo_rx|r_array[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[29][1]~q\);

-- Location: LCCOMB_X103_Y39_N4
\uart_unit|fifo_rx|r_array[21][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[21][1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(1),
	combout => \uart_unit|fifo_rx|r_array[21][1]~feeder_combout\);

-- Location: FF_X103_Y39_N5
\uart_unit|fifo_rx|r_array[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[21][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[21][1]~q\);

-- Location: FF_X102_Y39_N25
\uart_unit|fifo_rx|r_array[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[20][1]~q\);

-- Location: LCCOMB_X102_Y39_N24
\uart_unit|fifo_rx|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~2_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|r_ptr\(0))))) # (!\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_array[21][1]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(0) & 
-- ((\uart_unit|fifo_rx|r_array[20][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[21][1]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[20][1]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Mux18~2_combout\);

-- Location: LCCOMB_X102_Y39_N10
\uart_unit|fifo_rx|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~3_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux18~2_combout\ & ((\uart_unit|fifo_rx|r_array[29][1]~q\))) # (!\uart_unit|fifo_rx|Mux18~2_combout\ & (\uart_unit|fifo_rx|r_array[28][1]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[28][1]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[29][1]~q\,
	datad => \uart_unit|fifo_rx|Mux18~2_combout\,
	combout => \uart_unit|fifo_rx|Mux18~3_combout\);

-- Location: LCCOMB_X105_Y43_N12
\uart_unit|fifo_rx|r_array[17][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[17][1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(1),
	combout => \uart_unit|fifo_rx|r_array[17][1]~feeder_combout\);

-- Location: FF_X105_Y43_N13
\uart_unit|fifo_rx|r_array[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[17][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[17][1]~q\);

-- Location: FF_X102_Y43_N21
\uart_unit|fifo_rx|r_array[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[25][1]~q\);

-- Location: LCCOMB_X102_Y40_N6
\uart_unit|fifo_rx|r_array[24][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[24][1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(1),
	combout => \uart_unit|fifo_rx|r_array[24][1]~feeder_combout\);

-- Location: FF_X102_Y40_N7
\uart_unit|fifo_rx|r_array[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[24][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[24][1]~q\);

-- Location: FF_X102_Y43_N3
\uart_unit|fifo_rx|r_array[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[16][1]~q\);

-- Location: LCCOMB_X102_Y43_N2
\uart_unit|fifo_rx|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~4_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[24][1]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|r_array[16][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[24][1]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[16][1]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux18~4_combout\);

-- Location: LCCOMB_X102_Y43_N20
\uart_unit|fifo_rx|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~5_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux18~4_combout\ & ((\uart_unit|fifo_rx|r_array[25][1]~q\))) # (!\uart_unit|fifo_rx|Mux18~4_combout\ & (\uart_unit|fifo_rx|r_array[17][1]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[17][1]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[25][1]~q\,
	datad => \uart_unit|fifo_rx|Mux18~4_combout\,
	combout => \uart_unit|fifo_rx|Mux18~5_combout\);

-- Location: LCCOMB_X102_Y43_N22
\uart_unit|fifo_rx|Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~6_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_ptr\(2))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|Mux18~3_combout\)) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- ((\uart_unit|fifo_rx|Mux18~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|Mux18~3_combout\,
	datad => \uart_unit|fifo_rx|Mux18~5_combout\,
	combout => \uart_unit|fifo_rx|Mux18~6_combout\);

-- Location: FF_X102_Y41_N23
\uart_unit|fifo_rx|r_array[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[27][1]~q\);

-- Location: FF_X103_Y43_N9
\uart_unit|fifo_rx|r_array[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[19][1]~q\);

-- Location: LCCOMB_X103_Y41_N22
\uart_unit|fifo_rx|r_array[26][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[26][1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(1),
	combout => \uart_unit|fifo_rx|r_array[26][1]~feeder_combout\);

-- Location: FF_X103_Y41_N23
\uart_unit|fifo_rx|r_array[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[26][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[26][1]~q\);

-- Location: FF_X102_Y41_N13
\uart_unit|fifo_rx|r_array[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[18][1]~q\);

-- Location: LCCOMB_X102_Y41_N12
\uart_unit|fifo_rx|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~0_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[26][1]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|r_array[18][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[26][1]~q\,
	datac => \uart_unit|fifo_rx|r_array[18][1]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux18~0_combout\);

-- Location: LCCOMB_X103_Y43_N8
\uart_unit|fifo_rx|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~1_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux18~0_combout\ & (\uart_unit|fifo_rx|r_array[27][1]~q\)) # (!\uart_unit|fifo_rx|Mux18~0_combout\ & ((\uart_unit|fifo_rx|r_array[19][1]~q\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[27][1]~q\,
	datac => \uart_unit|fifo_rx|r_array[19][1]~q\,
	datad => \uart_unit|fifo_rx|Mux18~0_combout\,
	combout => \uart_unit|fifo_rx|Mux18~1_combout\);

-- Location: LCCOMB_X106_Y43_N28
\uart_unit|fifo_rx|r_array[31][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[31][1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(1),
	combout => \uart_unit|fifo_rx|r_array[31][1]~feeder_combout\);

-- Location: FF_X106_Y43_N29
\uart_unit|fifo_rx|r_array[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[31][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[31][1]~q\);

-- Location: FF_X105_Y43_N11
\uart_unit|fifo_rx|r_array[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[30][1]~q\);

-- Location: LCCOMB_X105_Y41_N22
\uart_unit|fifo_rx|r_array[23][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[23][1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(1),
	combout => \uart_unit|fifo_rx|r_array[23][1]~feeder_combout\);

-- Location: FF_X105_Y41_N23
\uart_unit|fifo_rx|r_array[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[23][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[23][1]~q\);

-- Location: FF_X105_Y39_N5
\uart_unit|fifo_rx|r_array[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[22][1]~q\);

-- Location: LCCOMB_X105_Y39_N4
\uart_unit|fifo_rx|Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~7_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|r_ptr\(0))))) # (!\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_array[23][1]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(0) & 
-- ((\uart_unit|fifo_rx|r_array[22][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(3),
	datab => \uart_unit|fifo_rx|r_array[23][1]~q\,
	datac => \uart_unit|fifo_rx|r_array[22][1]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Mux18~7_combout\);

-- Location: LCCOMB_X105_Y43_N10
\uart_unit|fifo_rx|Mux18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~8_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux18~7_combout\ & (\uart_unit|fifo_rx|r_array[31][1]~q\)) # (!\uart_unit|fifo_rx|Mux18~7_combout\ & ((\uart_unit|fifo_rx|r_array[30][1]~q\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux18~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(3),
	datab => \uart_unit|fifo_rx|r_array[31][1]~q\,
	datac => \uart_unit|fifo_rx|r_array[30][1]~q\,
	datad => \uart_unit|fifo_rx|Mux18~7_combout\,
	combout => \uart_unit|fifo_rx|Mux18~8_combout\);

-- Location: LCCOMB_X102_Y43_N4
\uart_unit|fifo_rx|Mux18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~9_combout\ = (\uart_unit|fifo_rx|Mux18~6_combout\ & (((\uart_unit|fifo_rx|Mux18~8_combout\)) # (!\uart_unit|fifo_rx|r_ptr\(1)))) # (!\uart_unit|fifo_rx|Mux18~6_combout\ & (\uart_unit|fifo_rx|r_ptr\(1) & 
-- (\uart_unit|fifo_rx|Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux18~6_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|Mux18~1_combout\,
	datad => \uart_unit|fifo_rx|Mux18~8_combout\,
	combout => \uart_unit|fifo_rx|Mux18~9_combout\);

-- Location: FF_X100_Y39_N15
\uart_unit|fifo_rx|r_array[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[14][1]~q\);

-- Location: FF_X101_Y39_N13
\uart_unit|fifo_rx|r_array[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[12][1]~q\);

-- Location: LCCOMB_X99_Y39_N14
\uart_unit|fifo_rx|r_array[10][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[10][1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(1),
	combout => \uart_unit|fifo_rx|r_array[10][1]~feeder_combout\);

-- Location: FF_X99_Y39_N15
\uart_unit|fifo_rx|r_array[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[10][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[10][1]~q\);

-- Location: FF_X100_Y39_N29
\uart_unit|fifo_rx|r_array[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[8][1]~q\);

-- Location: LCCOMB_X100_Y39_N28
\uart_unit|fifo_rx|Mux18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~10_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_array[10][1]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(1) & 
-- ((\uart_unit|fifo_rx|r_array[8][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[10][1]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[8][1]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux18~10_combout\);

-- Location: LCCOMB_X101_Y39_N12
\uart_unit|fifo_rx|Mux18~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~11_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux18~10_combout\ & (\uart_unit|fifo_rx|r_array[14][1]~q\)) # (!\uart_unit|fifo_rx|Mux18~10_combout\ & ((\uart_unit|fifo_rx|r_array[12][1]~q\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux18~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[14][1]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[12][1]~q\,
	datad => \uart_unit|fifo_rx|Mux18~10_combout\,
	combout => \uart_unit|fifo_rx|Mux18~11_combout\);

-- Location: LCCOMB_X103_Y43_N10
\uart_unit|fifo_rx|r_array[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[3][1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(1),
	combout => \uart_unit|fifo_rx|r_array[3][1]~feeder_combout\);

-- Location: FF_X103_Y43_N11
\uart_unit|fifo_rx|r_array[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[3][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[3][1]~q\);

-- Location: FF_X100_Y43_N27
\uart_unit|fifo_rx|r_array[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[7][1]~q\);

-- Location: LCCOMB_X101_Y40_N4
\uart_unit|fifo_rx|r_array[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[5][1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(1),
	combout => \uart_unit|fifo_rx|r_array[5][1]~feeder_combout\);

-- Location: FF_X101_Y40_N5
\uart_unit|fifo_rx|r_array[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[5][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[5][1]~q\);

-- Location: FF_X100_Y43_N13
\uart_unit|fifo_rx|r_array[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[1][1]~q\);

-- Location: LCCOMB_X100_Y43_N12
\uart_unit|fifo_rx|Mux18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~12_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|r_ptr\(2))))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|r_array[5][1]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- ((\uart_unit|fifo_rx|r_array[1][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[5][1]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[1][1]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(2),
	combout => \uart_unit|fifo_rx|Mux18~12_combout\);

-- Location: LCCOMB_X100_Y43_N26
\uart_unit|fifo_rx|Mux18~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~13_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux18~12_combout\ & ((\uart_unit|fifo_rx|r_array[7][1]~q\))) # (!\uart_unit|fifo_rx|Mux18~12_combout\ & (\uart_unit|fifo_rx|r_array[3][1]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux18~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[3][1]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[7][1]~q\,
	datad => \uart_unit|fifo_rx|Mux18~12_combout\,
	combout => \uart_unit|fifo_rx|Mux18~13_combout\);

-- Location: LCCOMB_X101_Y40_N26
\uart_unit|fifo_rx|r_array[4][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[4][1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(1),
	combout => \uart_unit|fifo_rx|r_array[4][1]~feeder_combout\);

-- Location: FF_X101_Y40_N27
\uart_unit|fifo_rx|r_array[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[4][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[4][1]~q\);

-- Location: FF_X98_Y43_N1
\uart_unit|fifo_rx|r_array[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[6][1]~q\);

-- Location: LCCOMB_X102_Y42_N0
\uart_unit|fifo_rx|r_array[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[2][1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(1),
	combout => \uart_unit|fifo_rx|r_array[2][1]~feeder_combout\);

-- Location: FF_X102_Y42_N1
\uart_unit|fifo_rx|r_array[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[2][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[2][1]~q\);

-- Location: FF_X98_Y43_N19
\uart_unit|fifo_rx|r_array[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[0][1]~q\);

-- Location: LCCOMB_X98_Y43_N18
\uart_unit|fifo_rx|Mux18~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~14_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_array[2][1]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(1) & 
-- ((\uart_unit|fifo_rx|r_array[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[2][1]~q\,
	datac => \uart_unit|fifo_rx|r_array[0][1]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux18~14_combout\);

-- Location: LCCOMB_X98_Y43_N0
\uart_unit|fifo_rx|Mux18~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~15_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux18~14_combout\ & ((\uart_unit|fifo_rx|r_array[6][1]~q\))) # (!\uart_unit|fifo_rx|Mux18~14_combout\ & (\uart_unit|fifo_rx|r_array[4][1]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux18~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[4][1]~q\,
	datac => \uart_unit|fifo_rx|r_array[6][1]~q\,
	datad => \uart_unit|fifo_rx|Mux18~14_combout\,
	combout => \uart_unit|fifo_rx|Mux18~15_combout\);

-- Location: LCCOMB_X98_Y43_N14
\uart_unit|fifo_rx|Mux18~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~16_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3)) # ((\uart_unit|fifo_rx|Mux18~13_combout\)))) # (!\uart_unit|fifo_rx|r_ptr\(0) & (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|Mux18~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|Mux18~13_combout\,
	datad => \uart_unit|fifo_rx|Mux18~15_combout\,
	combout => \uart_unit|fifo_rx|Mux18~16_combout\);

-- Location: FF_X100_Y41_N19
\uart_unit|fifo_rx|r_array[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[15][1]~q\);

-- Location: FF_X101_Y41_N31
\uart_unit|fifo_rx|r_array[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[13][1]~q\);

-- Location: FF_X100_Y41_N9
\uart_unit|fifo_rx|r_array[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[9][1]~q\);

-- Location: LCCOMB_X105_Y41_N4
\uart_unit|fifo_rx|r_array[11][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[11][1]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(1),
	combout => \uart_unit|fifo_rx|r_array[11][1]~feeder_combout\);

-- Location: FF_X105_Y41_N5
\uart_unit|fifo_rx|r_array[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[11][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[11][1]~q\);

-- Location: LCCOMB_X100_Y41_N8
\uart_unit|fifo_rx|Mux18~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~17_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2)) # ((\uart_unit|fifo_rx|r_array[11][1]~q\)))) # (!\uart_unit|fifo_rx|r_ptr\(1) & (!\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|r_array[9][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[9][1]~q\,
	datad => \uart_unit|fifo_rx|r_array[11][1]~q\,
	combout => \uart_unit|fifo_rx|Mux18~17_combout\);

-- Location: LCCOMB_X101_Y41_N30
\uart_unit|fifo_rx|Mux18~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~18_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux18~17_combout\ & (\uart_unit|fifo_rx|r_array[15][1]~q\)) # (!\uart_unit|fifo_rx|Mux18~17_combout\ & ((\uart_unit|fifo_rx|r_array[13][1]~q\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux18~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[15][1]~q\,
	datac => \uart_unit|fifo_rx|r_array[13][1]~q\,
	datad => \uart_unit|fifo_rx|Mux18~17_combout\,
	combout => \uart_unit|fifo_rx|Mux18~18_combout\);

-- Location: LCCOMB_X98_Y43_N8
\uart_unit|fifo_rx|Mux18~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~19_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux18~16_combout\ & ((\uart_unit|fifo_rx|Mux18~18_combout\))) # (!\uart_unit|fifo_rx|Mux18~16_combout\ & (\uart_unit|fifo_rx|Mux18~11_combout\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux18~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux18~11_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|Mux18~16_combout\,
	datad => \uart_unit|fifo_rx|Mux18~18_combout\,
	combout => \uart_unit|fifo_rx|Mux18~19_combout\);

-- Location: LCCOMB_X99_Y43_N26
\uart_unit|fifo_rx|Mux18~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux18~20_combout\ = (\uart_unit|fifo_rx|r_ptr\(4) & (\uart_unit|fifo_rx|Mux18~9_combout\)) # (!\uart_unit|fifo_rx|r_ptr\(4) & ((\uart_unit|fifo_rx|Mux18~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(4),
	datac => \uart_unit|fifo_rx|Mux18~9_combout\,
	datad => \uart_unit|fifo_rx|Mux18~19_combout\,
	combout => \uart_unit|fifo_rx|Mux18~20_combout\);

-- Location: LCCOMB_X99_Y43_N10
\r_transmit_data[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_transmit_data[1]~2_combout\ = (\uart_unit|fifo_rx|Mux18~20_combout\ & (!\r_transmit_data[0]~1\)) # (!\uart_unit|fifo_rx|Mux18~20_combout\ & ((\r_transmit_data[0]~1\) # (GND)))
-- \r_transmit_data[1]~3\ = CARRY((!\r_transmit_data[0]~1\) # (!\uart_unit|fifo_rx|Mux18~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux18~20_combout\,
	datad => VCC,
	cin => \r_transmit_data[0]~1\,
	combout => \r_transmit_data[1]~2_combout\,
	cout => \r_transmit_data[1]~3\);

-- Location: LCCOMB_X99_Y42_N12
\uart_unit|fifo_tx|r_array[27][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[27][1]~feeder_combout\ = \r_transmit_data[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[1]~2_combout\,
	combout => \uart_unit|fifo_tx|r_array[27][1]~feeder_combout\);

-- Location: FF_X99_Y42_N13
\uart_unit|fifo_tx|r_array[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[27][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[27][1]~q\);

-- Location: FF_X99_Y42_N23
\uart_unit|fifo_tx|r_array[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[19][1]~q\);

-- Location: FF_X98_Y42_N31
\uart_unit|fifo_tx|r_array[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[26][1]~q\);

-- Location: FF_X98_Y42_N25
\uart_unit|fifo_tx|r_array[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[18][1]~q\);

-- Location: LCCOMB_X98_Y42_N24
\uart_unit|transmitter|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~0_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_array[26][1]~q\) # ((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_array[18][1]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[26][1]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(3),
	datac => \uart_unit|fifo_tx|r_array[18][1]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector15~0_combout\);

-- Location: LCCOMB_X99_Y42_N22
\uart_unit|transmitter|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~1_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector15~0_combout\ & (\uart_unit|fifo_tx|r_array[27][1]~q\)) # (!\uart_unit|transmitter|Selector15~0_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[19][1]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|transmitter|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[27][1]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[19][1]~q\,
	datad => \uart_unit|transmitter|Selector15~0_combout\,
	combout => \uart_unit|transmitter|Selector15~1_combout\);

-- Location: LCCOMB_X96_Y43_N12
\uart_unit|fifo_tx|r_array[30][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[30][1]~feeder_combout\ = \r_transmit_data[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[1]~2_combout\,
	combout => \uart_unit|fifo_tx|r_array[30][1]~feeder_combout\);

-- Location: FF_X96_Y43_N13
\uart_unit|fifo_tx|r_array[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[30][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[30][1]~q\);

-- Location: LCCOMB_X97_Y43_N8
\uart_unit|fifo_tx|r_array[23][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[23][1]~feeder_combout\ = \r_transmit_data[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[1]~2_combout\,
	combout => \uart_unit|fifo_tx|r_array[23][1]~feeder_combout\);

-- Location: FF_X97_Y43_N9
\uart_unit|fifo_tx|r_array[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[23][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[23][1]~q\);

-- Location: FF_X97_Y43_N19
\uart_unit|fifo_tx|r_array[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[22][1]~q\);

-- Location: LCCOMB_X97_Y43_N18
\uart_unit|transmitter|Selector15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~7_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_array[23][1]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(0) 
-- & ((\uart_unit|fifo_tx|r_array[22][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[23][1]~q\,
	datac => \uart_unit|fifo_tx|r_array[22][1]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector15~7_combout\);

-- Location: FF_X96_Y43_N19
\uart_unit|fifo_tx|r_array[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[31][1]~q\);

-- Location: LCCOMB_X96_Y43_N18
\uart_unit|transmitter|Selector15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~8_combout\ = (\uart_unit|transmitter|Selector15~7_combout\ & (((\uart_unit|fifo_tx|r_array[31][1]~q\) # (!\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|transmitter|Selector15~7_combout\ & 
-- (\uart_unit|fifo_tx|r_array[30][1]~q\ & ((\uart_unit|fifo_tx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[30][1]~q\,
	datab => \uart_unit|transmitter|Selector15~7_combout\,
	datac => \uart_unit|fifo_tx|r_array[31][1]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|transmitter|Selector15~8_combout\);

-- Location: FF_X99_Y40_N29
\uart_unit|fifo_tx|r_array[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[28][1]~q\);

-- Location: FF_X99_Y40_N17
\uart_unit|fifo_tx|r_array[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[29][1]~q\);

-- Location: LCCOMB_X100_Y40_N24
\uart_unit|fifo_tx|r_array[21][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[21][1]~feeder_combout\ = \r_transmit_data[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[1]~2_combout\,
	combout => \uart_unit|fifo_tx|r_array[21][1]~feeder_combout\);

-- Location: FF_X100_Y40_N25
\uart_unit|fifo_tx|r_array[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[21][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[21][1]~q\);

-- Location: FF_X100_Y40_N7
\uart_unit|fifo_tx|r_array[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[20][1]~q\);

-- Location: LCCOMB_X100_Y40_N6
\uart_unit|transmitter|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~2_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_array[21][1]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(0) 
-- & ((\uart_unit|fifo_tx|r_array[20][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[21][1]~q\,
	datac => \uart_unit|fifo_tx|r_array[20][1]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector15~2_combout\);

-- Location: LCCOMB_X99_Y40_N16
\uart_unit|transmitter|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~3_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector15~2_combout\ & ((\uart_unit|fifo_tx|r_array[29][1]~q\))) # (!\uart_unit|transmitter|Selector15~2_combout\ & 
-- (\uart_unit|fifo_tx|r_array[28][1]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|transmitter|Selector15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[28][1]~q\,
	datac => \uart_unit|fifo_tx|r_array[29][1]~q\,
	datad => \uart_unit|transmitter|Selector15~2_combout\,
	combout => \uart_unit|transmitter|Selector15~3_combout\);

-- Location: FF_X99_Y45_N23
\uart_unit|fifo_tx|r_array[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[17][1]~q\);

-- Location: FF_X99_Y45_N5
\uart_unit|fifo_tx|r_array[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[25][1]~q\);

-- Location: FF_X100_Y45_N23
\uart_unit|fifo_tx|r_array[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[24][1]~q\);

-- Location: FF_X100_Y45_N25
\uart_unit|fifo_tx|r_array[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[16][1]~q\);

-- Location: LCCOMB_X100_Y45_N24
\uart_unit|transmitter|Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~4_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_array[24][1]~q\) # ((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_array[16][1]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[24][1]~q\,
	datac => \uart_unit|fifo_tx|r_array[16][1]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector15~4_combout\);

-- Location: LCCOMB_X99_Y45_N4
\uart_unit|transmitter|Selector15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~5_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector15~4_combout\ & ((\uart_unit|fifo_tx|r_array[25][1]~q\))) # (!\uart_unit|transmitter|Selector15~4_combout\ & 
-- (\uart_unit|fifo_tx|r_array[17][1]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|transmitter|Selector15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_array[17][1]~q\,
	datac => \uart_unit|fifo_tx|r_array[25][1]~q\,
	datad => \uart_unit|transmitter|Selector15~4_combout\,
	combout => \uart_unit|transmitter|Selector15~5_combout\);

-- Location: LCCOMB_X97_Y42_N28
\uart_unit|transmitter|Selector15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~6_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & (\uart_unit|fifo_tx|r_ptr\(2))) # (!\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_ptr\(2) & (\uart_unit|transmitter|Selector15~3_combout\)) # 
-- (!\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector15~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|transmitter|Selector15~3_combout\,
	datad => \uart_unit|transmitter|Selector15~5_combout\,
	combout => \uart_unit|transmitter|Selector15~6_combout\);

-- Location: LCCOMB_X97_Y42_N10
\uart_unit|transmitter|Selector15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~9_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector15~6_combout\ & ((\uart_unit|transmitter|Selector15~8_combout\))) # (!\uart_unit|transmitter|Selector15~6_combout\ & 
-- (\uart_unit|transmitter|Selector15~1_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector15~1_combout\,
	datab => \uart_unit|transmitter|Selector15~8_combout\,
	datac => \uart_unit|fifo_tx|r_ptr\(1),
	datad => \uart_unit|transmitter|Selector15~6_combout\,
	combout => \uart_unit|transmitter|Selector15~9_combout\);

-- Location: LCCOMB_X99_Y44_N20
\uart_unit|fifo_tx|r_array[10][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[10][1]~feeder_combout\ = \r_transmit_data[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[1]~2_combout\,
	combout => \uart_unit|fifo_tx|r_array[10][1]~feeder_combout\);

-- Location: FF_X99_Y44_N21
\uart_unit|fifo_tx|r_array[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[10][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[10][1]~q\);

-- Location: FF_X99_Y44_N23
\uart_unit|fifo_tx|r_array[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[8][1]~q\);

-- Location: LCCOMB_X99_Y44_N22
\uart_unit|transmitter|Selector15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~10_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1) & (\uart_unit|fifo_tx|r_array[10][1]~q\)) # 
-- (!\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[8][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[10][1]~q\,
	datac => \uart_unit|fifo_tx|r_array[8][1]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|transmitter|Selector15~10_combout\);

-- Location: FF_X98_Y44_N21
\uart_unit|fifo_tx|r_array[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[12][1]~q\);

-- Location: FF_X98_Y44_N1
\uart_unit|fifo_tx|r_array[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[14][1]~q\);

-- Location: LCCOMB_X98_Y44_N20
\uart_unit|transmitter|Selector15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~11_combout\ = (\uart_unit|transmitter|Selector15~10_combout\ & (((\uart_unit|fifo_tx|r_array[14][1]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(2)))) # (!\uart_unit|transmitter|Selector15~10_combout\ & 
-- (\uart_unit|fifo_tx|r_ptr\(2) & (\uart_unit|fifo_tx|r_array[12][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector15~10_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[12][1]~q\,
	datad => \uart_unit|fifo_tx|r_array[14][1]~q\,
	combout => \uart_unit|transmitter|Selector15~11_combout\);

-- Location: LCCOMB_X98_Y41_N4
\uart_unit|fifo_tx|r_array[4][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[4][1]~feeder_combout\ = \r_transmit_data[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[1]~2_combout\,
	combout => \uart_unit|fifo_tx|r_array[4][1]~feeder_combout\);

-- Location: FF_X98_Y41_N5
\uart_unit|fifo_tx|r_array[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[4][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[4][1]~q\);

-- Location: FF_X98_Y41_N19
\uart_unit|fifo_tx|r_array[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[6][1]~q\);

-- Location: FF_X99_Y41_N13
\uart_unit|fifo_tx|r_array[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[2][1]~q\);

-- Location: FF_X99_Y41_N29
\uart_unit|fifo_tx|r_array[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[0][1]~q\);

-- Location: LCCOMB_X99_Y41_N28
\uart_unit|transmitter|Selector15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~14_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[2][1]~q\) # ((\uart_unit|fifo_tx|r_ptr\(2))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|fifo_tx|r_array[0][1]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[2][1]~q\,
	datac => \uart_unit|fifo_tx|r_array[0][1]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(2),
	combout => \uart_unit|transmitter|Selector15~14_combout\);

-- Location: LCCOMB_X98_Y41_N18
\uart_unit|transmitter|Selector15~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~15_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector15~14_combout\ & ((\uart_unit|fifo_tx|r_array[6][1]~q\))) # (!\uart_unit|transmitter|Selector15~14_combout\ & 
-- (\uart_unit|fifo_tx|r_array[4][1]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|transmitter|Selector15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[4][1]~q\,
	datac => \uart_unit|fifo_tx|r_array[6][1]~q\,
	datad => \uart_unit|transmitter|Selector15~14_combout\,
	combout => \uart_unit|transmitter|Selector15~15_combout\);

-- Location: FF_X98_Y45_N23
\uart_unit|fifo_tx|r_array[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[1][1]~q\);

-- Location: LCCOMB_X98_Y45_N12
\uart_unit|fifo_tx|r_array[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[5][1]~feeder_combout\ = \r_transmit_data[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[1]~2_combout\,
	combout => \uart_unit|fifo_tx|r_array[5][1]~feeder_combout\);

-- Location: FF_X98_Y45_N13
\uart_unit|fifo_tx|r_array[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[5][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[5][1]~q\);

-- Location: LCCOMB_X98_Y45_N22
\uart_unit|transmitter|Selector15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~12_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1)) # ((\uart_unit|fifo_tx|r_array[5][1]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (!\uart_unit|fifo_tx|r_ptr\(1) & 
-- (\uart_unit|fifo_tx|r_array[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_array[1][1]~q\,
	datad => \uart_unit|fifo_tx|r_array[5][1]~q\,
	combout => \uart_unit|transmitter|Selector15~12_combout\);

-- Location: FF_X98_Y46_N19
\uart_unit|fifo_tx|r_array[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[7][1]~q\);

-- Location: LCCOMB_X98_Y46_N28
\uart_unit|fifo_tx|r_array[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[3][1]~feeder_combout\ = \r_transmit_data[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[1]~2_combout\,
	combout => \uart_unit|fifo_tx|r_array[3][1]~feeder_combout\);

-- Location: FF_X98_Y46_N29
\uart_unit|fifo_tx|r_array[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[3][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[3][1]~q\);

-- Location: LCCOMB_X98_Y46_N18
\uart_unit|transmitter|Selector15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~13_combout\ = (\uart_unit|transmitter|Selector15~12_combout\ & (((\uart_unit|fifo_tx|r_array[7][1]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(1)))) # (!\uart_unit|transmitter|Selector15~12_combout\ & (\uart_unit|fifo_tx|r_ptr\(1) 
-- & ((\uart_unit|fifo_tx|r_array[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector15~12_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_array[7][1]~q\,
	datad => \uart_unit|fifo_tx|r_array[3][1]~q\,
	combout => \uart_unit|transmitter|Selector15~13_combout\);

-- Location: LCCOMB_X98_Y46_N4
\uart_unit|transmitter|Selector15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~16_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector15~13_combout\))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|transmitter|Selector15~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|transmitter|Selector15~15_combout\,
	datac => \uart_unit|fifo_tx|r_ptr\(0),
	datad => \uart_unit|transmitter|Selector15~13_combout\,
	combout => \uart_unit|transmitter|Selector15~16_combout\);

-- Location: FF_X99_Y43_N11
\uart_unit|fifo_tx|r_array[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[15][1]~q\);

-- Location: FF_X99_Y46_N19
\uart_unit|fifo_tx|r_array[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[13][1]~q\);

-- Location: FF_X99_Y46_N29
\uart_unit|fifo_tx|r_array[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[1]~2_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[9][1]~q\);

-- Location: LCCOMB_X100_Y46_N18
\uart_unit|fifo_tx|r_array[11][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[11][1]~feeder_combout\ = \r_transmit_data[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[1]~2_combout\,
	combout => \uart_unit|fifo_tx|r_array[11][1]~feeder_combout\);

-- Location: FF_X100_Y46_N19
\uart_unit|fifo_tx|r_array[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[11][1]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[11][1]~q\);

-- Location: LCCOMB_X99_Y46_N28
\uart_unit|transmitter|Selector15~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~17_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_ptr\(2)) # ((\uart_unit|fifo_tx|r_array[11][1]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (!\uart_unit|fifo_tx|r_ptr\(2) & 
-- (\uart_unit|fifo_tx|r_array[9][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[9][1]~q\,
	datad => \uart_unit|fifo_tx|r_array[11][1]~q\,
	combout => \uart_unit|transmitter|Selector15~17_combout\);

-- Location: LCCOMB_X99_Y46_N18
\uart_unit|transmitter|Selector15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~18_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector15~17_combout\ & (\uart_unit|fifo_tx|r_array[15][1]~q\)) # (!\uart_unit|transmitter|Selector15~17_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[13][1]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|transmitter|Selector15~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[15][1]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[13][1]~q\,
	datad => \uart_unit|transmitter|Selector15~17_combout\,
	combout => \uart_unit|transmitter|Selector15~18_combout\);

-- Location: LCCOMB_X98_Y46_N14
\uart_unit|transmitter|Selector15~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~19_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector15~16_combout\ & ((\uart_unit|transmitter|Selector15~18_combout\))) # (!\uart_unit|transmitter|Selector15~16_combout\ & 
-- (\uart_unit|transmitter|Selector15~11_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|transmitter|Selector15~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|transmitter|Selector15~11_combout\,
	datac => \uart_unit|transmitter|Selector15~16_combout\,
	datad => \uart_unit|transmitter|Selector15~18_combout\,
	combout => \uart_unit|transmitter|Selector15~19_combout\);

-- Location: LCCOMB_X97_Y44_N30
\uart_unit|transmitter|Selector15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector15~20_combout\ = (\uart_unit|fifo_tx|r_ptr\(4) & (\uart_unit|transmitter|Selector15~9_combout\)) # (!\uart_unit|fifo_tx|r_ptr\(4) & ((\uart_unit|transmitter|Selector15~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(4),
	datab => \uart_unit|transmitter|Selector15~9_combout\,
	datad => \uart_unit|transmitter|Selector15~19_combout\,
	combout => \uart_unit|transmitter|Selector15~20_combout\);

-- Location: LCCOMB_X103_Y41_N8
\uart_unit|fifo_rx|r_array[26][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[26][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[26][2]~feeder_combout\);

-- Location: FF_X103_Y41_N9
\uart_unit|fifo_rx|r_array[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[26][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[26][2]~q\);

-- Location: FF_X102_Y41_N27
\uart_unit|fifo_rx|r_array[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[27][2]~q\);

-- Location: LCCOMB_X103_Y43_N0
\uart_unit|fifo_rx|r_array[19][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[19][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[19][2]~feeder_combout\);

-- Location: FF_X103_Y43_N1
\uart_unit|fifo_rx|r_array[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[19][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[19][2]~q\);

-- Location: FF_X102_Y41_N25
\uart_unit|fifo_rx|r_array[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[18][2]~q\);

-- Location: LCCOMB_X102_Y41_N24
\uart_unit|fifo_rx|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~0_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_array[19][2]~q\) # ((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_array[18][2]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[19][2]~q\,
	datac => \uart_unit|fifo_rx|r_array[18][2]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux17~0_combout\);

-- Location: LCCOMB_X102_Y41_N26
\uart_unit|fifo_rx|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~1_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux17~0_combout\ & ((\uart_unit|fifo_rx|r_array[27][2]~q\))) # (!\uart_unit|fifo_rx|Mux17~0_combout\ & (\uart_unit|fifo_rx|r_array[26][2]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[26][2]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[27][2]~q\,
	datad => \uart_unit|fifo_rx|Mux17~0_combout\,
	combout => \uart_unit|fifo_rx|Mux17~1_combout\);

-- Location: LCCOMB_X105_Y43_N4
\uart_unit|fifo_rx|r_array[17][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[17][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[17][2]~feeder_combout\);

-- Location: FF_X105_Y43_N5
\uart_unit|fifo_rx|r_array[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[17][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[17][2]~q\);

-- Location: FF_X102_Y43_N11
\uart_unit|fifo_rx|r_array[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[16][2]~q\);

-- Location: LCCOMB_X102_Y43_N10
\uart_unit|fifo_rx|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~4_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_array[17][2]~q\) # ((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_array[16][2]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[17][2]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[16][2]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux17~4_combout\);

-- Location: LCCOMB_X102_Y40_N20
\uart_unit|fifo_rx|r_array[24][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[24][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[24][2]~feeder_combout\);

-- Location: FF_X102_Y40_N21
\uart_unit|fifo_rx|r_array[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[24][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[24][2]~q\);

-- Location: FF_X102_Y43_N9
\uart_unit|fifo_rx|r_array[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[25][2]~q\);

-- Location: LCCOMB_X102_Y43_N8
\uart_unit|fifo_rx|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~5_combout\ = (\uart_unit|fifo_rx|Mux17~4_combout\ & (((\uart_unit|fifo_rx|r_array[25][2]~q\) # (!\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|Mux17~4_combout\ & (\uart_unit|fifo_rx|r_array[24][2]~q\ & 
-- ((\uart_unit|fifo_rx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux17~4_combout\,
	datab => \uart_unit|fifo_rx|r_array[24][2]~q\,
	datac => \uart_unit|fifo_rx|r_array[25][2]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux17~5_combout\);

-- Location: FF_X102_Y42_N15
\uart_unit|fifo_rx|r_array[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[21][2]~q\);

-- Location: FF_X102_Y39_N23
\uart_unit|fifo_rx|r_array[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[29][2]~q\);

-- Location: LCCOMB_X103_Y39_N18
\uart_unit|fifo_rx|r_array[28][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[28][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[28][2]~feeder_combout\);

-- Location: FF_X103_Y39_N19
\uart_unit|fifo_rx|r_array[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[28][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[28][2]~q\);

-- Location: FF_X102_Y39_N1
\uart_unit|fifo_rx|r_array[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[20][2]~q\);

-- Location: LCCOMB_X102_Y39_N0
\uart_unit|fifo_rx|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~2_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[28][2]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|r_array[20][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[28][2]~q\,
	datac => \uart_unit|fifo_rx|r_array[20][2]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux17~2_combout\);

-- Location: LCCOMB_X102_Y39_N22
\uart_unit|fifo_rx|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~3_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux17~2_combout\ & ((\uart_unit|fifo_rx|r_array[29][2]~q\))) # (!\uart_unit|fifo_rx|Mux17~2_combout\ & (\uart_unit|fifo_rx|r_array[21][2]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[21][2]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[29][2]~q\,
	datad => \uart_unit|fifo_rx|Mux17~2_combout\,
	combout => \uart_unit|fifo_rx|Mux17~3_combout\);

-- Location: LCCOMB_X102_Y43_N30
\uart_unit|fifo_rx|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~6_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_ptr\(2))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux17~3_combout\))) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- (\uart_unit|fifo_rx|Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|Mux17~5_combout\,
	datad => \uart_unit|fifo_rx|Mux17~3_combout\,
	combout => \uart_unit|fifo_rx|Mux17~6_combout\);

-- Location: LCCOMB_X106_Y39_N18
\uart_unit|fifo_rx|r_array[23][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[23][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[23][2]~feeder_combout\);

-- Location: FF_X106_Y39_N19
\uart_unit|fifo_rx|r_array[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[23][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[23][2]~q\);

-- Location: FF_X105_Y39_N17
\uart_unit|fifo_rx|r_array[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[31][2]~q\);

-- Location: LCCOMB_X106_Y39_N12
\uart_unit|fifo_rx|r_array[30][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[30][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[30][2]~feeder_combout\);

-- Location: FF_X106_Y39_N13
\uart_unit|fifo_rx|r_array[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[30][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[30][2]~q\);

-- Location: FF_X105_Y39_N11
\uart_unit|fifo_rx|r_array[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[22][2]~q\);

-- Location: LCCOMB_X105_Y39_N10
\uart_unit|fifo_rx|Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~7_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|r_array[30][2]~q\) # ((\uart_unit|fifo_rx|r_ptr\(0))))) # (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|r_array[22][2]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(3),
	datab => \uart_unit|fifo_rx|r_array[30][2]~q\,
	datac => \uart_unit|fifo_rx|r_array[22][2]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Mux17~7_combout\);

-- Location: LCCOMB_X105_Y39_N16
\uart_unit|fifo_rx|Mux17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~8_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux17~7_combout\ & ((\uart_unit|fifo_rx|r_array[31][2]~q\))) # (!\uart_unit|fifo_rx|Mux17~7_combout\ & (\uart_unit|fifo_rx|r_array[23][2]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux17~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[23][2]~q\,
	datac => \uart_unit|fifo_rx|r_array[31][2]~q\,
	datad => \uart_unit|fifo_rx|Mux17~7_combout\,
	combout => \uart_unit|fifo_rx|Mux17~8_combout\);

-- Location: LCCOMB_X102_Y43_N28
\uart_unit|fifo_rx|Mux17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~9_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux17~6_combout\ & ((\uart_unit|fifo_rx|Mux17~8_combout\))) # (!\uart_unit|fifo_rx|Mux17~6_combout\ & (\uart_unit|fifo_rx|Mux17~1_combout\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|Mux17~1_combout\,
	datac => \uart_unit|fifo_rx|Mux17~6_combout\,
	datad => \uart_unit|fifo_rx|Mux17~8_combout\,
	combout => \uart_unit|fifo_rx|Mux17~9_combout\);

-- Location: LCCOMB_X103_Y42_N0
\uart_unit|fifo_rx|r_array[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[5][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[5][2]~feeder_combout\);

-- Location: FF_X103_Y42_N1
\uart_unit|fifo_rx|r_array[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[5][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[5][2]~q\);

-- Location: FF_X100_Y43_N7
\uart_unit|fifo_rx|r_array[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[7][2]~q\);

-- Location: LCCOMB_X103_Y43_N6
\uart_unit|fifo_rx|r_array[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[3][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[3][2]~feeder_combout\);

-- Location: FF_X103_Y43_N7
\uart_unit|fifo_rx|r_array[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[3][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[3][2]~q\);

-- Location: FF_X100_Y43_N17
\uart_unit|fifo_rx|r_array[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[1][2]~q\);

-- Location: LCCOMB_X100_Y43_N16
\uart_unit|fifo_rx|Mux17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~10_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_array[3][2]~q\) # ((\uart_unit|fifo_rx|r_ptr\(2))))) # (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|r_array[1][2]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[3][2]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[1][2]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(2),
	combout => \uart_unit|fifo_rx|Mux17~10_combout\);

-- Location: LCCOMB_X100_Y43_N6
\uart_unit|fifo_rx|Mux17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~11_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux17~10_combout\ & ((\uart_unit|fifo_rx|r_array[7][2]~q\))) # (!\uart_unit|fifo_rx|Mux17~10_combout\ & (\uart_unit|fifo_rx|r_array[5][2]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux17~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[5][2]~q\,
	datac => \uart_unit|fifo_rx|r_array[7][2]~q\,
	datad => \uart_unit|fifo_rx|Mux17~10_combout\,
	combout => \uart_unit|fifo_rx|Mux17~11_combout\);

-- Location: LCCOMB_X105_Y41_N2
\uart_unit|fifo_rx|r_array[11][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[11][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[11][2]~feeder_combout\);

-- Location: FF_X105_Y41_N3
\uart_unit|fifo_rx|r_array[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[11][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[11][2]~q\);

-- Location: FF_X100_Y41_N3
\uart_unit|fifo_rx|r_array[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[15][2]~q\);

-- Location: LCCOMB_X101_Y41_N20
\uart_unit|fifo_rx|r_array[13][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[13][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[13][2]~feeder_combout\);

-- Location: FF_X101_Y41_N21
\uart_unit|fifo_rx|r_array[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[13][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[13][2]~q\);

-- Location: FF_X100_Y41_N1
\uart_unit|fifo_rx|r_array[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[9][2]~q\);

-- Location: LCCOMB_X100_Y41_N0
\uart_unit|fifo_rx|Mux17~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~17_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_array[13][2]~q\) # ((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_array[9][2]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[13][2]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[9][2]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux17~17_combout\);

-- Location: LCCOMB_X100_Y41_N2
\uart_unit|fifo_rx|Mux17~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~18_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux17~17_combout\ & ((\uart_unit|fifo_rx|r_array[15][2]~q\))) # (!\uart_unit|fifo_rx|Mux17~17_combout\ & (\uart_unit|fifo_rx|r_array[11][2]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux17~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[11][2]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[15][2]~q\,
	datad => \uart_unit|fifo_rx|Mux17~17_combout\,
	combout => \uart_unit|fifo_rx|Mux17~18_combout\);

-- Location: LCCOMB_X99_Y39_N12
\uart_unit|fifo_rx|r_array[10][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[10][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[10][2]~feeder_combout\);

-- Location: FF_X99_Y39_N13
\uart_unit|fifo_rx|r_array[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[10][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[10][2]~q\);

-- Location: FF_X100_Y39_N23
\uart_unit|fifo_rx|r_array[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[14][2]~q\);

-- Location: LCCOMB_X101_Y39_N14
\uart_unit|fifo_rx|r_array[12][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[12][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[12][2]~feeder_combout\);

-- Location: FF_X101_Y39_N15
\uart_unit|fifo_rx|r_array[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[12][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[12][2]~q\);

-- Location: FF_X100_Y39_N1
\uart_unit|fifo_rx|r_array[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[8][2]~q\);

-- Location: LCCOMB_X100_Y39_N0
\uart_unit|fifo_rx|Mux17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~12_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|r_ptr\(2))))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|r_array[12][2]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- ((\uart_unit|fifo_rx|r_array[8][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_array[12][2]~q\,
	datac => \uart_unit|fifo_rx|r_array[8][2]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(2),
	combout => \uart_unit|fifo_rx|Mux17~12_combout\);

-- Location: LCCOMB_X100_Y39_N22
\uart_unit|fifo_rx|Mux17~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~13_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux17~12_combout\ & ((\uart_unit|fifo_rx|r_array[14][2]~q\))) # (!\uart_unit|fifo_rx|Mux17~12_combout\ & (\uart_unit|fifo_rx|r_array[10][2]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux17~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[10][2]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[14][2]~q\,
	datad => \uart_unit|fifo_rx|Mux17~12_combout\,
	combout => \uart_unit|fifo_rx|Mux17~13_combout\);

-- Location: LCCOMB_X101_Y40_N24
\uart_unit|fifo_rx|r_array[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[4][2]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(2),
	combout => \uart_unit|fifo_rx|r_array[4][2]~feeder_combout\);

-- Location: FF_X101_Y40_N25
\uart_unit|fifo_rx|r_array[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[4][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[4][2]~q\);

-- Location: FF_X100_Y42_N3
\uart_unit|fifo_rx|r_array[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[6][2]~q\);

-- Location: FF_X102_Y42_N9
\uart_unit|fifo_rx|r_array[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[2][2]~q\);

-- Location: FF_X100_Y42_N21
\uart_unit|fifo_rx|r_array[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[0][2]~q\);

-- Location: LCCOMB_X100_Y42_N20
\uart_unit|fifo_rx|Mux17~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~14_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_array[2][2]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(1) & 
-- ((\uart_unit|fifo_rx|r_array[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[2][2]~q\,
	datac => \uart_unit|fifo_rx|r_array[0][2]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux17~14_combout\);

-- Location: LCCOMB_X100_Y42_N2
\uart_unit|fifo_rx|Mux17~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~15_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux17~14_combout\ & ((\uart_unit|fifo_rx|r_array[6][2]~q\))) # (!\uart_unit|fifo_rx|Mux17~14_combout\ & (\uart_unit|fifo_rx|r_array[4][2]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux17~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[4][2]~q\,
	datac => \uart_unit|fifo_rx|r_array[6][2]~q\,
	datad => \uart_unit|fifo_rx|Mux17~14_combout\,
	combout => \uart_unit|fifo_rx|Mux17~15_combout\);

-- Location: LCCOMB_X100_Y43_N24
\uart_unit|fifo_rx|Mux17~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~16_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|r_ptr\(0)) # ((\uart_unit|fifo_rx|Mux17~13_combout\)))) # (!\uart_unit|fifo_rx|r_ptr\(3) & (!\uart_unit|fifo_rx|r_ptr\(0) & 
-- ((\uart_unit|fifo_rx|Mux17~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(3),
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|Mux17~13_combout\,
	datad => \uart_unit|fifo_rx|Mux17~15_combout\,
	combout => \uart_unit|fifo_rx|Mux17~16_combout\);

-- Location: LCCOMB_X100_Y43_N18
\uart_unit|fifo_rx|Mux17~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~19_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux17~16_combout\ & ((\uart_unit|fifo_rx|Mux17~18_combout\))) # (!\uart_unit|fifo_rx|Mux17~16_combout\ & (\uart_unit|fifo_rx|Mux17~11_combout\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux17~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux17~11_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|Mux17~18_combout\,
	datad => \uart_unit|fifo_rx|Mux17~16_combout\,
	combout => \uart_unit|fifo_rx|Mux17~19_combout\);

-- Location: LCCOMB_X99_Y43_N24
\uart_unit|fifo_rx|Mux17~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux17~20_combout\ = (\uart_unit|fifo_rx|r_ptr\(4) & (\uart_unit|fifo_rx|Mux17~9_combout\)) # (!\uart_unit|fifo_rx|r_ptr\(4) & ((\uart_unit|fifo_rx|Mux17~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux17~9_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(4),
	datad => \uart_unit|fifo_rx|Mux17~19_combout\,
	combout => \uart_unit|fifo_rx|Mux17~20_combout\);

-- Location: LCCOMB_X99_Y43_N12
\r_transmit_data[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_transmit_data[2]~4_combout\ = (\uart_unit|fifo_rx|Mux17~20_combout\ & (\r_transmit_data[1]~3\ $ (GND))) # (!\uart_unit|fifo_rx|Mux17~20_combout\ & (!\r_transmit_data[1]~3\ & VCC))
-- \r_transmit_data[2]~5\ = CARRY((\uart_unit|fifo_rx|Mux17~20_combout\ & !\r_transmit_data[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|Mux17~20_combout\,
	datad => VCC,
	cin => \r_transmit_data[1]~3\,
	combout => \r_transmit_data[2]~4_combout\,
	cout => \r_transmit_data[2]~5\);

-- Location: LCCOMB_X98_Y40_N16
\uart_unit|fifo_tx|r_array[7][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[7][2]~feeder_combout\ = \r_transmit_data[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[2]~4_combout\,
	combout => \uart_unit|fifo_tx|r_array[7][2]~feeder_combout\);

-- Location: FF_X98_Y40_N17
\uart_unit|fifo_tx|r_array[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[7][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[7][2]~q\);

-- Location: FF_X98_Y45_N21
\uart_unit|fifo_tx|r_array[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[5][2]~q\);

-- Location: FF_X98_Y45_N27
\uart_unit|fifo_tx|r_array[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[1][2]~q\);

-- Location: LCCOMB_X98_Y46_N0
\uart_unit|fifo_tx|r_array[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[3][2]~feeder_combout\ = \r_transmit_data[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[2]~4_combout\,
	combout => \uart_unit|fifo_tx|r_array[3][2]~feeder_combout\);

-- Location: FF_X98_Y46_N1
\uart_unit|fifo_tx|r_array[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[3][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[3][2]~q\);

-- Location: LCCOMB_X98_Y45_N26
\uart_unit|transmitter|Selector14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~10_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & (\uart_unit|fifo_tx|r_ptr\(1))) # (!\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[3][2]~q\))) # (!\uart_unit|fifo_tx|r_ptr\(1) & 
-- (\uart_unit|fifo_tx|r_array[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_array[1][2]~q\,
	datad => \uart_unit|fifo_tx|r_array[3][2]~q\,
	combout => \uart_unit|transmitter|Selector14~10_combout\);

-- Location: LCCOMB_X98_Y45_N20
\uart_unit|transmitter|Selector14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~11_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector14~10_combout\ & (\uart_unit|fifo_tx|r_array[7][2]~q\)) # (!\uart_unit|transmitter|Selector14~10_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[5][2]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|transmitter|Selector14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[7][2]~q\,
	datac => \uart_unit|fifo_tx|r_array[5][2]~q\,
	datad => \uart_unit|transmitter|Selector14~10_combout\,
	combout => \uart_unit|transmitter|Selector14~11_combout\);

-- Location: FF_X99_Y43_N13
\uart_unit|fifo_tx|r_array[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[15][2]~q\);

-- Location: FF_X100_Y46_N25
\uart_unit|fifo_tx|r_array[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[11][2]~q\);

-- Location: FF_X99_Y46_N21
\uart_unit|fifo_tx|r_array[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[9][2]~q\);

-- Location: LCCOMB_X99_Y46_N6
\uart_unit|fifo_tx|r_array[13][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[13][2]~feeder_combout\ = \r_transmit_data[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[2]~4_combout\,
	combout => \uart_unit|fifo_tx|r_array[13][2]~feeder_combout\);

-- Location: FF_X99_Y46_N7
\uart_unit|fifo_tx|r_array[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[13][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[13][2]~q\);

-- Location: LCCOMB_X99_Y46_N20
\uart_unit|transmitter|Selector14~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~17_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & (\uart_unit|fifo_tx|r_ptr\(2))) # (!\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_array[13][2]~q\))) # (!\uart_unit|fifo_tx|r_ptr\(2) 
-- & (\uart_unit|fifo_tx|r_array[9][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[9][2]~q\,
	datad => \uart_unit|fifo_tx|r_array[13][2]~q\,
	combout => \uart_unit|transmitter|Selector14~17_combout\);

-- Location: LCCOMB_X100_Y46_N24
\uart_unit|transmitter|Selector14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~18_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector14~17_combout\ & (\uart_unit|fifo_tx|r_array[15][2]~q\)) # (!\uart_unit|transmitter|Selector14~17_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[11][2]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector14~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[15][2]~q\,
	datac => \uart_unit|fifo_tx|r_array[11][2]~q\,
	datad => \uart_unit|transmitter|Selector14~17_combout\,
	combout => \uart_unit|transmitter|Selector14~18_combout\);

-- Location: FF_X99_Y44_N5
\uart_unit|fifo_tx|r_array[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[10][2]~q\);

-- Location: LCCOMB_X98_Y44_N22
\uart_unit|fifo_tx|r_array[12][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[12][2]~feeder_combout\ = \r_transmit_data[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[2]~4_combout\,
	combout => \uart_unit|fifo_tx|r_array[12][2]~feeder_combout\);

-- Location: FF_X98_Y44_N23
\uart_unit|fifo_tx|r_array[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[12][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[12][2]~q\);

-- Location: FF_X99_Y44_N17
\uart_unit|fifo_tx|r_array[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[8][2]~q\);

-- Location: LCCOMB_X99_Y44_N16
\uart_unit|transmitter|Selector14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~12_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_array[12][2]~q\) # ((\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|r_array[8][2]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[12][2]~q\,
	datac => \uart_unit|fifo_tx|r_array[8][2]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|transmitter|Selector14~12_combout\);

-- Location: FF_X98_Y44_N13
\uart_unit|fifo_tx|r_array[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[14][2]~q\);

-- Location: LCCOMB_X98_Y44_N12
\uart_unit|transmitter|Selector14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~13_combout\ = (\uart_unit|transmitter|Selector14~12_combout\ & (((\uart_unit|fifo_tx|r_array[14][2]~q\) # (!\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|transmitter|Selector14~12_combout\ & 
-- (\uart_unit|fifo_tx|r_array[10][2]~q\ & ((\uart_unit|fifo_tx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[10][2]~q\,
	datab => \uart_unit|transmitter|Selector14~12_combout\,
	datac => \uart_unit|fifo_tx|r_array[14][2]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|transmitter|Selector14~13_combout\);

-- Location: LCCOMB_X98_Y41_N12
\uart_unit|fifo_tx|r_array[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[4][2]~feeder_combout\ = \r_transmit_data[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[2]~4_combout\,
	combout => \uart_unit|fifo_tx|r_array[4][2]~feeder_combout\);

-- Location: FF_X98_Y41_N13
\uart_unit|fifo_tx|r_array[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[4][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[4][2]~q\);

-- Location: FF_X99_Y41_N31
\uart_unit|fifo_tx|r_array[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[2][2]~q\);

-- Location: FF_X99_Y41_N15
\uart_unit|fifo_tx|r_array[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[0][2]~q\);

-- Location: LCCOMB_X99_Y41_N14
\uart_unit|transmitter|Selector14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~14_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1) & (\uart_unit|fifo_tx|r_array[2][2]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(1) 
-- & ((\uart_unit|fifo_tx|r_array[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[2][2]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[0][2]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|transmitter|Selector14~14_combout\);

-- Location: FF_X98_Y41_N15
\uart_unit|fifo_tx|r_array[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[6][2]~q\);

-- Location: LCCOMB_X98_Y41_N14
\uart_unit|transmitter|Selector14~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~15_combout\ = (\uart_unit|transmitter|Selector14~14_combout\ & (((\uart_unit|fifo_tx|r_array[6][2]~q\) # (!\uart_unit|fifo_tx|r_ptr\(2))))) # (!\uart_unit|transmitter|Selector14~14_combout\ & 
-- (\uart_unit|fifo_tx|r_array[4][2]~q\ & ((\uart_unit|fifo_tx|r_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[4][2]~q\,
	datab => \uart_unit|transmitter|Selector14~14_combout\,
	datac => \uart_unit|fifo_tx|r_array[6][2]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(2),
	combout => \uart_unit|transmitter|Selector14~15_combout\);

-- Location: LCCOMB_X97_Y41_N16
\uart_unit|transmitter|Selector14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~16_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector14~13_combout\) # ((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|transmitter|Selector14~15_combout\ & 
-- !\uart_unit|fifo_tx|r_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|transmitter|Selector14~13_combout\,
	datac => \uart_unit|transmitter|Selector14~15_combout\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector14~16_combout\);

-- Location: LCCOMB_X97_Y44_N20
\uart_unit|transmitter|Selector14~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~19_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector14~16_combout\ & ((\uart_unit|transmitter|Selector14~18_combout\))) # (!\uart_unit|transmitter|Selector14~16_combout\ & 
-- (\uart_unit|transmitter|Selector14~11_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|transmitter|Selector14~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|transmitter|Selector14~11_combout\,
	datac => \uart_unit|transmitter|Selector14~18_combout\,
	datad => \uart_unit|transmitter|Selector14~16_combout\,
	combout => \uart_unit|transmitter|Selector14~19_combout\);

-- Location: LCCOMB_X99_Y42_N2
\uart_unit|fifo_tx|r_array[27][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[27][2]~feeder_combout\ = \r_transmit_data[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[2]~4_combout\,
	combout => \uart_unit|fifo_tx|r_array[27][2]~feeder_combout\);

-- Location: FF_X99_Y42_N3
\uart_unit|fifo_tx|r_array[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[27][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[27][2]~q\);

-- Location: FF_X98_Y42_N23
\uart_unit|fifo_tx|r_array[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[26][2]~q\);

-- Location: FF_X99_Y42_N11
\uart_unit|fifo_tx|r_array[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[19][2]~q\);

-- Location: FF_X98_Y42_N1
\uart_unit|fifo_tx|r_array[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[18][2]~q\);

-- Location: LCCOMB_X98_Y42_N0
\uart_unit|transmitter|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~0_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|r_array[19][2]~q\) # ((\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|fifo_tx|r_array[18][2]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_array[19][2]~q\,
	datac => \uart_unit|fifo_tx|r_array[18][2]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|transmitter|Selector14~0_combout\);

-- Location: LCCOMB_X98_Y42_N22
\uart_unit|transmitter|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~1_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector14~0_combout\ & (\uart_unit|fifo_tx|r_array[27][2]~q\)) # (!\uart_unit|transmitter|Selector14~0_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[26][2]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|transmitter|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[27][2]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(3),
	datac => \uart_unit|fifo_tx|r_array[26][2]~q\,
	datad => \uart_unit|transmitter|Selector14~0_combout\,
	combout => \uart_unit|transmitter|Selector14~1_combout\);

-- Location: FF_X97_Y43_N15
\uart_unit|fifo_tx|r_array[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[23][2]~q\);

-- Location: FF_X96_Y43_N21
\uart_unit|fifo_tx|r_array[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[31][2]~q\);

-- Location: FF_X96_Y43_N3
\uart_unit|fifo_tx|r_array[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[30][2]~q\);

-- Location: FF_X97_Y43_N17
\uart_unit|fifo_tx|r_array[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[22][2]~q\);

-- Location: LCCOMB_X97_Y43_N16
\uart_unit|transmitter|Selector14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~7_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|r_ptr\(3) & (\uart_unit|fifo_tx|r_array[30][2]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(3) 
-- & ((\uart_unit|fifo_tx|r_array[22][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[30][2]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[22][2]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|transmitter|Selector14~7_combout\);

-- Location: LCCOMB_X96_Y43_N20
\uart_unit|transmitter|Selector14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~8_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector14~7_combout\ & ((\uart_unit|fifo_tx|r_array[31][2]~q\))) # (!\uart_unit|transmitter|Selector14~7_combout\ & 
-- (\uart_unit|fifo_tx|r_array[23][2]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|transmitter|Selector14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_array[23][2]~q\,
	datac => \uart_unit|fifo_tx|r_array[31][2]~q\,
	datad => \uart_unit|transmitter|Selector14~7_combout\,
	combout => \uart_unit|transmitter|Selector14~8_combout\);

-- Location: LCCOMB_X100_Y40_N4
\uart_unit|fifo_tx|r_array[21][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[21][2]~feeder_combout\ = \r_transmit_data[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[2]~4_combout\,
	combout => \uart_unit|fifo_tx|r_array[21][2]~feeder_combout\);

-- Location: FF_X100_Y40_N5
\uart_unit|fifo_tx|r_array[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[21][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[21][2]~q\);

-- Location: FF_X99_Y40_N13
\uart_unit|fifo_tx|r_array[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[29][2]~q\);

-- Location: FF_X100_Y40_N27
\uart_unit|fifo_tx|r_array[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[20][2]~q\);

-- Location: LCCOMB_X99_Y40_N10
\uart_unit|fifo_tx|r_array[28][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[28][2]~feeder_combout\ = \r_transmit_data[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[2]~4_combout\,
	combout => \uart_unit|fifo_tx|r_array[28][2]~feeder_combout\);

-- Location: FF_X99_Y40_N11
\uart_unit|fifo_tx|r_array[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[28][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[28][2]~q\);

-- Location: LCCOMB_X100_Y40_N26
\uart_unit|transmitter|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~2_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0)) # ((\uart_unit|fifo_tx|r_array[28][2]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (!\uart_unit|fifo_tx|r_ptr\(0) & 
-- (\uart_unit|fifo_tx|r_array[20][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[20][2]~q\,
	datad => \uart_unit|fifo_tx|r_array[28][2]~q\,
	combout => \uart_unit|transmitter|Selector14~2_combout\);

-- Location: LCCOMB_X99_Y40_N12
\uart_unit|transmitter|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~3_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector14~2_combout\ & ((\uart_unit|fifo_tx|r_array[29][2]~q\))) # (!\uart_unit|transmitter|Selector14~2_combout\ & 
-- (\uart_unit|fifo_tx|r_array[21][2]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|transmitter|Selector14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[21][2]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[29][2]~q\,
	datad => \uart_unit|transmitter|Selector14~2_combout\,
	combout => \uart_unit|transmitter|Selector14~3_combout\);

-- Location: LCCOMB_X99_Y45_N2
\uart_unit|fifo_tx|r_array[17][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[17][2]~feeder_combout\ = \r_transmit_data[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[2]~4_combout\,
	combout => \uart_unit|fifo_tx|r_array[17][2]~feeder_combout\);

-- Location: FF_X99_Y45_N3
\uart_unit|fifo_tx|r_array[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[17][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[17][2]~q\);

-- Location: FF_X100_Y45_N5
\uart_unit|fifo_tx|r_array[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[16][2]~q\);

-- Location: LCCOMB_X100_Y45_N4
\uart_unit|transmitter|Selector14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~4_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_array[17][2]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(0) 
-- & ((\uart_unit|fifo_tx|r_array[16][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[17][2]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(3),
	datac => \uart_unit|fifo_tx|r_array[16][2]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector14~4_combout\);

-- Location: LCCOMB_X100_Y45_N14
\uart_unit|fifo_tx|r_array[24][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[24][2]~feeder_combout\ = \r_transmit_data[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[2]~4_combout\,
	combout => \uart_unit|fifo_tx|r_array[24][2]~feeder_combout\);

-- Location: FF_X100_Y45_N15
\uart_unit|fifo_tx|r_array[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[24][2]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[24][2]~q\);

-- Location: FF_X99_Y45_N13
\uart_unit|fifo_tx|r_array[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[2]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[25][2]~q\);

-- Location: LCCOMB_X99_Y45_N12
\uart_unit|transmitter|Selector14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~5_combout\ = (\uart_unit|transmitter|Selector14~4_combout\ & (((\uart_unit|fifo_tx|r_array[25][2]~q\) # (!\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|transmitter|Selector14~4_combout\ & 
-- (\uart_unit|fifo_tx|r_array[24][2]~q\ & ((\uart_unit|fifo_tx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector14~4_combout\,
	datab => \uart_unit|fifo_tx|r_array[24][2]~q\,
	datac => \uart_unit|fifo_tx|r_array[25][2]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|transmitter|Selector14~5_combout\);

-- Location: LCCOMB_X96_Y42_N12
\uart_unit|transmitter|Selector14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~6_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1)) # ((\uart_unit|transmitter|Selector14~3_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (!\uart_unit|fifo_tx|r_ptr\(1) & 
-- ((\uart_unit|transmitter|Selector14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|transmitter|Selector14~3_combout\,
	datad => \uart_unit|transmitter|Selector14~5_combout\,
	combout => \uart_unit|transmitter|Selector14~6_combout\);

-- Location: LCCOMB_X96_Y42_N2
\uart_unit|transmitter|Selector14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~9_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector14~6_combout\ & ((\uart_unit|transmitter|Selector14~8_combout\))) # (!\uart_unit|transmitter|Selector14~6_combout\ & 
-- (\uart_unit|transmitter|Selector14~1_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector14~1_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|transmitter|Selector14~8_combout\,
	datad => \uart_unit|transmitter|Selector14~6_combout\,
	combout => \uart_unit|transmitter|Selector14~9_combout\);

-- Location: LCCOMB_X97_Y44_N22
\uart_unit|transmitter|Selector14~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector14~20_combout\ = (\uart_unit|fifo_tx|r_ptr\(4) & ((\uart_unit|transmitter|Selector14~9_combout\))) # (!\uart_unit|fifo_tx|r_ptr\(4) & (\uart_unit|transmitter|Selector14~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(4),
	datab => \uart_unit|transmitter|Selector14~19_combout\,
	datad => \uart_unit|transmitter|Selector14~9_combout\,
	combout => \uart_unit|transmitter|Selector14~20_combout\);

-- Location: LCCOMB_X101_Y40_N22
\uart_unit|fifo_rx|r_array[4][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[4][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[4][3]~feeder_combout\);

-- Location: FF_X101_Y40_N23
\uart_unit|fifo_rx|r_array[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[4][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[4][3]~q\);

-- Location: FF_X100_Y42_N15
\uart_unit|fifo_rx|r_array[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[6][3]~q\);

-- Location: LCCOMB_X102_Y42_N10
\uart_unit|fifo_rx|r_array[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[2][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[2][3]~feeder_combout\);

-- Location: FF_X102_Y42_N11
\uart_unit|fifo_rx|r_array[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[2][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[2][3]~q\);

-- Location: FF_X100_Y42_N13
\uart_unit|fifo_rx|r_array[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[0][3]~q\);

-- Location: LCCOMB_X100_Y42_N12
\uart_unit|fifo_rx|Mux16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~14_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_array[2][3]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(1) & 
-- ((\uart_unit|fifo_rx|r_array[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[2][3]~q\,
	datac => \uart_unit|fifo_rx|r_array[0][3]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux16~14_combout\);

-- Location: LCCOMB_X100_Y42_N14
\uart_unit|fifo_rx|Mux16~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~15_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux16~14_combout\ & ((\uart_unit|fifo_rx|r_array[6][3]~q\))) # (!\uart_unit|fifo_rx|Mux16~14_combout\ & (\uart_unit|fifo_rx|r_array[4][3]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux16~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[4][3]~q\,
	datac => \uart_unit|fifo_rx|r_array[6][3]~q\,
	datad => \uart_unit|fifo_rx|Mux16~14_combout\,
	combout => \uart_unit|fifo_rx|Mux16~15_combout\);

-- Location: FF_X101_Y42_N9
\uart_unit|fifo_rx|r_array[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[7][3]~q\);

-- Location: FF_X103_Y43_N31
\uart_unit|fifo_rx|r_array[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[3][3]~q\);

-- Location: FF_X101_Y42_N13
\uart_unit|fifo_rx|r_array[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[1][3]~q\);

-- Location: LCCOMB_X103_Y42_N10
\uart_unit|fifo_rx|r_array[5][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[5][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[5][3]~feeder_combout\);

-- Location: FF_X103_Y42_N11
\uart_unit|fifo_rx|r_array[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[5][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[5][3]~q\);

-- Location: LCCOMB_X101_Y42_N2
\uart_unit|fifo_rx|Mux16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~12_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|r_ptr\(2))))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_array[5][3]~q\))) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- (\uart_unit|fifo_rx|r_array[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[1][3]~q\,
	datab => \uart_unit|fifo_rx|r_array[5][3]~q\,
	datac => \uart_unit|fifo_rx|r_ptr\(1),
	datad => \uart_unit|fifo_rx|r_ptr\(2),
	combout => \uart_unit|fifo_rx|Mux16~12_combout\);

-- Location: LCCOMB_X101_Y42_N6
\uart_unit|fifo_rx|Mux16~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~13_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux16~12_combout\ & (\uart_unit|fifo_rx|r_array[7][3]~q\)) # (!\uart_unit|fifo_rx|Mux16~12_combout\ & ((\uart_unit|fifo_rx|r_array[3][3]~q\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux16~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_array[7][3]~q\,
	datac => \uart_unit|fifo_rx|r_array[3][3]~q\,
	datad => \uart_unit|fifo_rx|Mux16~12_combout\,
	combout => \uart_unit|fifo_rx|Mux16~13_combout\);

-- Location: LCCOMB_X100_Y42_N0
\uart_unit|fifo_rx|Mux16~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~16_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3)) # ((\uart_unit|fifo_rx|Mux16~13_combout\)))) # (!\uart_unit|fifo_rx|r_ptr\(0) & (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- (\uart_unit|fifo_rx|Mux16~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|Mux16~15_combout\,
	datad => \uart_unit|fifo_rx|Mux16~13_combout\,
	combout => \uart_unit|fifo_rx|Mux16~16_combout\);

-- Location: LCCOMB_X100_Y41_N30
\uart_unit|fifo_rx|r_array[15][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[15][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[15][3]~feeder_combout\);

-- Location: FF_X100_Y41_N31
\uart_unit|fifo_rx|r_array[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[15][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[15][3]~q\);

-- Location: FF_X101_Y41_N15
\uart_unit|fifo_rx|r_array[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[13][3]~q\);

-- Location: LCCOMB_X105_Y41_N12
\uart_unit|fifo_rx|r_array[11][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[11][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[11][3]~feeder_combout\);

-- Location: FF_X105_Y41_N13
\uart_unit|fifo_rx|r_array[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[11][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[11][3]~q\);

-- Location: LCCOMB_X100_Y41_N4
\uart_unit|fifo_rx|r_array[9][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[9][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[9][3]~feeder_combout\);

-- Location: FF_X100_Y41_N5
\uart_unit|fifo_rx|r_array[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[9][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[9][3]~q\);

-- Location: LCCOMB_X101_Y41_N28
\uart_unit|fifo_rx|Mux16~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~17_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_array[11][3]~q\) # ((\uart_unit|fifo_rx|r_ptr\(2))))) # (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|r_array[9][3]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[11][3]~q\,
	datab => \uart_unit|fifo_rx|r_array[9][3]~q\,
	datac => \uart_unit|fifo_rx|r_ptr\(1),
	datad => \uart_unit|fifo_rx|r_ptr\(2),
	combout => \uart_unit|fifo_rx|Mux16~17_combout\);

-- Location: LCCOMB_X101_Y41_N14
\uart_unit|fifo_rx|Mux16~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~18_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux16~17_combout\ & (\uart_unit|fifo_rx|r_array[15][3]~q\)) # (!\uart_unit|fifo_rx|Mux16~17_combout\ & ((\uart_unit|fifo_rx|r_array[13][3]~q\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux16~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[15][3]~q\,
	datac => \uart_unit|fifo_rx|r_array[13][3]~q\,
	datad => \uart_unit|fifo_rx|Mux16~17_combout\,
	combout => \uart_unit|fifo_rx|Mux16~18_combout\);

-- Location: LCCOMB_X100_Y39_N2
\uart_unit|fifo_rx|r_array[14][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[14][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[14][3]~feeder_combout\);

-- Location: FF_X100_Y39_N3
\uart_unit|fifo_rx|r_array[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[14][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[14][3]~q\);

-- Location: FF_X101_Y39_N29
\uart_unit|fifo_rx|r_array[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[12][3]~q\);

-- Location: LCCOMB_X99_Y39_N10
\uart_unit|fifo_rx|r_array[10][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[10][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[10][3]~feeder_combout\);

-- Location: FF_X99_Y39_N11
\uart_unit|fifo_rx|r_array[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[10][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[10][3]~q\);

-- Location: FF_X100_Y39_N21
\uart_unit|fifo_rx|r_array[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[8][3]~q\);

-- Location: LCCOMB_X100_Y39_N20
\uart_unit|fifo_rx|Mux16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~10_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_array[10][3]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(1) & 
-- ((\uart_unit|fifo_rx|r_array[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[10][3]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[8][3]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux16~10_combout\);

-- Location: LCCOMB_X101_Y39_N28
\uart_unit|fifo_rx|Mux16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~11_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux16~10_combout\ & (\uart_unit|fifo_rx|r_array[14][3]~q\)) # (!\uart_unit|fifo_rx|Mux16~10_combout\ & ((\uart_unit|fifo_rx|r_array[12][3]~q\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[14][3]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[12][3]~q\,
	datad => \uart_unit|fifo_rx|Mux16~10_combout\,
	combout => \uart_unit|fifo_rx|Mux16~11_combout\);

-- Location: LCCOMB_X100_Y42_N6
\uart_unit|fifo_rx|Mux16~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~19_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux16~16_combout\ & (\uart_unit|fifo_rx|Mux16~18_combout\)) # (!\uart_unit|fifo_rx|Mux16~16_combout\ & ((\uart_unit|fifo_rx|Mux16~11_combout\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|Mux16~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(3),
	datab => \uart_unit|fifo_rx|Mux16~16_combout\,
	datac => \uart_unit|fifo_rx|Mux16~18_combout\,
	datad => \uart_unit|fifo_rx|Mux16~11_combout\,
	combout => \uart_unit|fifo_rx|Mux16~19_combout\);

-- Location: FF_X102_Y41_N11
\uart_unit|fifo_rx|r_array[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[27][3]~q\);

-- Location: FF_X103_Y43_N17
\uart_unit|fifo_rx|r_array[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[19][3]~q\);

-- Location: LCCOMB_X103_Y41_N10
\uart_unit|fifo_rx|r_array[26][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[26][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[26][3]~feeder_combout\);

-- Location: FF_X103_Y41_N11
\uart_unit|fifo_rx|r_array[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[26][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[26][3]~q\);

-- Location: FF_X102_Y41_N17
\uart_unit|fifo_rx|r_array[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[18][3]~q\);

-- Location: LCCOMB_X102_Y41_N16
\uart_unit|fifo_rx|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~0_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[26][3]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|r_array[18][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[26][3]~q\,
	datac => \uart_unit|fifo_rx|r_array[18][3]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux16~0_combout\);

-- Location: LCCOMB_X100_Y43_N8
\uart_unit|fifo_rx|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~1_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux16~0_combout\ & (\uart_unit|fifo_rx|r_array[27][3]~q\)) # (!\uart_unit|fifo_rx|Mux16~0_combout\ & ((\uart_unit|fifo_rx|r_array[19][3]~q\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[27][3]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[19][3]~q\,
	datad => \uart_unit|fifo_rx|Mux16~0_combout\,
	combout => \uart_unit|fifo_rx|Mux16~1_combout\);

-- Location: LCCOMB_X103_Y39_N16
\uart_unit|fifo_rx|r_array[28][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[28][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[28][3]~feeder_combout\);

-- Location: FF_X103_Y39_N17
\uart_unit|fifo_rx|r_array[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[28][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[28][3]~q\);

-- Location: FF_X102_Y39_N7
\uart_unit|fifo_rx|r_array[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[29][3]~q\);

-- Location: FF_X102_Y39_N17
\uart_unit|fifo_rx|r_array[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[20][3]~q\);

-- Location: LCCOMB_X103_Y39_N22
\uart_unit|fifo_rx|r_array[21][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[21][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[21][3]~feeder_combout\);

-- Location: FF_X103_Y39_N23
\uart_unit|fifo_rx|r_array[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[21][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[21][3]~q\);

-- Location: LCCOMB_X102_Y39_N16
\uart_unit|fifo_rx|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~2_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3)) # ((\uart_unit|fifo_rx|r_array[21][3]~q\)))) # (!\uart_unit|fifo_rx|r_ptr\(0) & (!\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[20][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[20][3]~q\,
	datad => \uart_unit|fifo_rx|r_array[21][3]~q\,
	combout => \uart_unit|fifo_rx|Mux16~2_combout\);

-- Location: LCCOMB_X102_Y39_N6
\uart_unit|fifo_rx|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~3_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux16~2_combout\ & ((\uart_unit|fifo_rx|r_array[29][3]~q\))) # (!\uart_unit|fifo_rx|Mux16~2_combout\ & (\uart_unit|fifo_rx|r_array[28][3]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[28][3]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[29][3]~q\,
	datad => \uart_unit|fifo_rx|Mux16~2_combout\,
	combout => \uart_unit|fifo_rx|Mux16~3_combout\);

-- Location: LCCOMB_X105_Y43_N26
\uart_unit|fifo_rx|r_array[17][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[17][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[17][3]~feeder_combout\);

-- Location: FF_X105_Y43_N27
\uart_unit|fifo_rx|r_array[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[17][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[17][3]~q\);

-- Location: FF_X101_Y43_N25
\uart_unit|fifo_rx|r_array[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[25][3]~q\);

-- Location: LCCOMB_X102_Y40_N2
\uart_unit|fifo_rx|r_array[24][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[24][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[24][3]~feeder_combout\);

-- Location: FF_X102_Y40_N3
\uart_unit|fifo_rx|r_array[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[24][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[24][3]~q\);

-- Location: FF_X102_Y43_N27
\uart_unit|fifo_rx|r_array[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[16][3]~q\);

-- Location: LCCOMB_X102_Y43_N26
\uart_unit|fifo_rx|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~4_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[24][3]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|r_array[16][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[24][3]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[16][3]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux16~4_combout\);

-- Location: LCCOMB_X101_Y43_N24
\uart_unit|fifo_rx|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~5_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux16~4_combout\ & ((\uart_unit|fifo_rx|r_array[25][3]~q\))) # (!\uart_unit|fifo_rx|Mux16~4_combout\ & (\uart_unit|fifo_rx|r_array[17][3]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[17][3]~q\,
	datac => \uart_unit|fifo_rx|r_array[25][3]~q\,
	datad => \uart_unit|fifo_rx|Mux16~4_combout\,
	combout => \uart_unit|fifo_rx|Mux16~5_combout\);

-- Location: LCCOMB_X100_Y43_N22
\uart_unit|fifo_rx|Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~6_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_ptr\(2))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|Mux16~3_combout\)) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- ((\uart_unit|fifo_rx|Mux16~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|Mux16~3_combout\,
	datad => \uart_unit|fifo_rx|Mux16~5_combout\,
	combout => \uart_unit|fifo_rx|Mux16~6_combout\);

-- Location: LCCOMB_X106_Y43_N18
\uart_unit|fifo_rx|r_array[31][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[31][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[31][3]~feeder_combout\);

-- Location: FF_X106_Y43_N19
\uart_unit|fifo_rx|r_array[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[31][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[31][3]~q\);

-- Location: FF_X105_Y43_N17
\uart_unit|fifo_rx|r_array[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[30][3]~q\);

-- Location: LCCOMB_X106_Y39_N22
\uart_unit|fifo_rx|r_array[23][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[23][3]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(3),
	combout => \uart_unit|fifo_rx|r_array[23][3]~feeder_combout\);

-- Location: FF_X106_Y39_N23
\uart_unit|fifo_rx|r_array[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[23][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[23][3]~q\);

-- Location: FF_X105_Y39_N7
\uart_unit|fifo_rx|r_array[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[22][3]~q\);

-- Location: LCCOMB_X105_Y39_N6
\uart_unit|fifo_rx|Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~7_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|r_ptr\(0))))) # (!\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_array[23][3]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(0) & 
-- ((\uart_unit|fifo_rx|r_array[22][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(3),
	datab => \uart_unit|fifo_rx|r_array[23][3]~q\,
	datac => \uart_unit|fifo_rx|r_array[22][3]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Mux16~7_combout\);

-- Location: LCCOMB_X105_Y43_N16
\uart_unit|fifo_rx|Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~8_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux16~7_combout\ & (\uart_unit|fifo_rx|r_array[31][3]~q\)) # (!\uart_unit|fifo_rx|Mux16~7_combout\ & ((\uart_unit|fifo_rx|r_array[30][3]~q\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(3),
	datab => \uart_unit|fifo_rx|r_array[31][3]~q\,
	datac => \uart_unit|fifo_rx|r_array[30][3]~q\,
	datad => \uart_unit|fifo_rx|Mux16~7_combout\,
	combout => \uart_unit|fifo_rx|Mux16~8_combout\);

-- Location: LCCOMB_X100_Y43_N28
\uart_unit|fifo_rx|Mux16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~9_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux16~6_combout\ & ((\uart_unit|fifo_rx|Mux16~8_combout\))) # (!\uart_unit|fifo_rx|Mux16~6_combout\ & (\uart_unit|fifo_rx|Mux16~1_combout\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|Mux16~1_combout\,
	datac => \uart_unit|fifo_rx|Mux16~6_combout\,
	datad => \uart_unit|fifo_rx|Mux16~8_combout\,
	combout => \uart_unit|fifo_rx|Mux16~9_combout\);

-- Location: LCCOMB_X99_Y43_N6
\uart_unit|fifo_rx|Mux16~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux16~20_combout\ = (\uart_unit|fifo_rx|r_ptr\(4) & ((\uart_unit|fifo_rx|Mux16~9_combout\))) # (!\uart_unit|fifo_rx|r_ptr\(4) & (\uart_unit|fifo_rx|Mux16~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(4),
	datac => \uart_unit|fifo_rx|Mux16~19_combout\,
	datad => \uart_unit|fifo_rx|Mux16~9_combout\,
	combout => \uart_unit|fifo_rx|Mux16~20_combout\);

-- Location: LCCOMB_X99_Y43_N14
\r_transmit_data[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_transmit_data[3]~6_combout\ = (\uart_unit|fifo_rx|Mux16~20_combout\ & (!\r_transmit_data[2]~5\)) # (!\uart_unit|fifo_rx|Mux16~20_combout\ & ((\r_transmit_data[2]~5\) # (GND)))
-- \r_transmit_data[3]~7\ = CARRY((!\r_transmit_data[2]~5\) # (!\uart_unit|fifo_rx|Mux16~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux16~20_combout\,
	datad => VCC,
	cin => \r_transmit_data[2]~5\,
	combout => \r_transmit_data[3]~6_combout\,
	cout => \r_transmit_data[3]~7\);

-- Location: LCCOMB_X97_Y43_N26
\uart_unit|fifo_tx|r_array[23][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[23][3]~feeder_combout\ = \r_transmit_data[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[3]~6_combout\,
	combout => \uart_unit|fifo_tx|r_array[23][3]~feeder_combout\);

-- Location: FF_X97_Y43_N27
\uart_unit|fifo_tx|r_array[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[23][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[23][3]~q\);

-- Location: FF_X97_Y43_N13
\uart_unit|fifo_tx|r_array[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[22][3]~q\);

-- Location: LCCOMB_X97_Y43_N12
\uart_unit|transmitter|Selector13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~7_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|r_array[23][3]~q\) # ((\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|fifo_tx|r_array[22][3]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[23][3]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[22][3]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|transmitter|Selector13~7_combout\);

-- Location: FF_X96_Y43_N29
\uart_unit|fifo_tx|r_array[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[31][3]~q\);

-- Location: LCCOMB_X96_Y43_N10
\uart_unit|fifo_tx|r_array[30][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[30][3]~feeder_combout\ = \r_transmit_data[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[3]~6_combout\,
	combout => \uart_unit|fifo_tx|r_array[30][3]~feeder_combout\);

-- Location: FF_X96_Y43_N11
\uart_unit|fifo_tx|r_array[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[30][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[30][3]~q\);

-- Location: LCCOMB_X96_Y43_N28
\uart_unit|transmitter|Selector13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~8_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector13~7_combout\ & (\uart_unit|fifo_tx|r_array[31][3]~q\)) # (!\uart_unit|transmitter|Selector13~7_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[30][3]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (\uart_unit|transmitter|Selector13~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|transmitter|Selector13~7_combout\,
	datac => \uart_unit|fifo_tx|r_array[31][3]~q\,
	datad => \uart_unit|fifo_tx|r_array[30][3]~q\,
	combout => \uart_unit|transmitter|Selector13~8_combout\);

-- Location: LCCOMB_X99_Y40_N18
\uart_unit|fifo_tx|r_array[28][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[28][3]~feeder_combout\ = \r_transmit_data[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[3]~6_combout\,
	combout => \uart_unit|fifo_tx|r_array[28][3]~feeder_combout\);

-- Location: FF_X99_Y40_N19
\uart_unit|fifo_tx|r_array[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[28][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[28][3]~q\);

-- Location: FF_X99_Y40_N9
\uart_unit|fifo_tx|r_array[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[29][3]~q\);

-- Location: LCCOMB_X100_Y40_N20
\uart_unit|fifo_tx|r_array[21][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[21][3]~feeder_combout\ = \r_transmit_data[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[3]~6_combout\,
	combout => \uart_unit|fifo_tx|r_array[21][3]~feeder_combout\);

-- Location: FF_X100_Y40_N21
\uart_unit|fifo_tx|r_array[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[21][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[21][3]~q\);

-- Location: FF_X100_Y40_N11
\uart_unit|fifo_tx|r_array[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[20][3]~q\);

-- Location: LCCOMB_X100_Y40_N10
\uart_unit|transmitter|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~2_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_array[21][3]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(0) 
-- & ((\uart_unit|fifo_tx|r_array[20][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[21][3]~q\,
	datac => \uart_unit|fifo_tx|r_array[20][3]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector13~2_combout\);

-- Location: LCCOMB_X99_Y40_N8
\uart_unit|transmitter|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~3_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector13~2_combout\ & ((\uart_unit|fifo_tx|r_array[29][3]~q\))) # (!\uart_unit|transmitter|Selector13~2_combout\ & 
-- (\uart_unit|fifo_tx|r_array[28][3]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|transmitter|Selector13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[28][3]~q\,
	datac => \uart_unit|fifo_tx|r_array[29][3]~q\,
	datad => \uart_unit|transmitter|Selector13~2_combout\,
	combout => \uart_unit|transmitter|Selector13~3_combout\);

-- Location: LCCOMB_X99_Y45_N14
\uart_unit|fifo_tx|r_array[17][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[17][3]~feeder_combout\ = \r_transmit_data[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[3]~6_combout\,
	combout => \uart_unit|fifo_tx|r_array[17][3]~feeder_combout\);

-- Location: FF_X99_Y45_N15
\uart_unit|fifo_tx|r_array[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[17][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[17][3]~q\);

-- Location: FF_X99_Y45_N1
\uart_unit|fifo_tx|r_array[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[25][3]~q\);

-- Location: LCCOMB_X100_Y45_N26
\uart_unit|fifo_tx|r_array[24][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[24][3]~feeder_combout\ = \r_transmit_data[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[3]~6_combout\,
	combout => \uart_unit|fifo_tx|r_array[24][3]~feeder_combout\);

-- Location: FF_X100_Y45_N27
\uart_unit|fifo_tx|r_array[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[24][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[24][3]~q\);

-- Location: FF_X100_Y45_N17
\uart_unit|fifo_tx|r_array[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[16][3]~q\);

-- Location: LCCOMB_X100_Y45_N16
\uart_unit|transmitter|Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~4_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_array[24][3]~q\) # ((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_array[16][3]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[24][3]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(3),
	datac => \uart_unit|fifo_tx|r_array[16][3]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector13~4_combout\);

-- Location: LCCOMB_X99_Y45_N0
\uart_unit|transmitter|Selector13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~5_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector13~4_combout\ & ((\uart_unit|fifo_tx|r_array[25][3]~q\))) # (!\uart_unit|transmitter|Selector13~4_combout\ & 
-- (\uart_unit|fifo_tx|r_array[17][3]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|transmitter|Selector13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_array[17][3]~q\,
	datac => \uart_unit|fifo_tx|r_array[25][3]~q\,
	datad => \uart_unit|transmitter|Selector13~4_combout\,
	combout => \uart_unit|transmitter|Selector13~5_combout\);

-- Location: LCCOMB_X96_Y42_N4
\uart_unit|transmitter|Selector13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~6_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1)) # ((\uart_unit|transmitter|Selector13~3_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (!\uart_unit|fifo_tx|r_ptr\(1) & 
-- ((\uart_unit|transmitter|Selector13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|transmitter|Selector13~3_combout\,
	datad => \uart_unit|transmitter|Selector13~5_combout\,
	combout => \uart_unit|transmitter|Selector13~6_combout\);

-- Location: FF_X98_Y42_N29
\uart_unit|fifo_tx|r_array[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[26][3]~q\);

-- Location: FF_X98_Y42_N27
\uart_unit|fifo_tx|r_array[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[18][3]~q\);

-- Location: LCCOMB_X98_Y42_N26
\uart_unit|transmitter|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~0_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|r_ptr\(3) & (\uart_unit|fifo_tx|r_array[26][3]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(3) 
-- & ((\uart_unit|fifo_tx|r_array[18][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_array[26][3]~q\,
	datac => \uart_unit|fifo_tx|r_array[18][3]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|transmitter|Selector13~0_combout\);

-- Location: FF_X99_Y42_N29
\uart_unit|fifo_tx|r_array[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[19][3]~q\);

-- Location: LCCOMB_X99_Y42_N26
\uart_unit|fifo_tx|r_array[27][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[27][3]~feeder_combout\ = \r_transmit_data[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[3]~6_combout\,
	combout => \uart_unit|fifo_tx|r_array[27][3]~feeder_combout\);

-- Location: FF_X99_Y42_N27
\uart_unit|fifo_tx|r_array[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[27][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[27][3]~q\);

-- Location: LCCOMB_X99_Y42_N28
\uart_unit|transmitter|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~1_combout\ = (\uart_unit|transmitter|Selector13~0_combout\ & (((\uart_unit|fifo_tx|r_array[27][3]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(0)))) # (!\uart_unit|transmitter|Selector13~0_combout\ & (\uart_unit|fifo_tx|r_ptr\(0) & 
-- (\uart_unit|fifo_tx|r_array[19][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector13~0_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[19][3]~q\,
	datad => \uart_unit|fifo_tx|r_array[27][3]~q\,
	combout => \uart_unit|transmitter|Selector13~1_combout\);

-- Location: LCCOMB_X96_Y42_N18
\uart_unit|transmitter|Selector13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~9_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector13~6_combout\ & (\uart_unit|transmitter|Selector13~8_combout\)) # (!\uart_unit|transmitter|Selector13~6_combout\ & 
-- ((\uart_unit|transmitter|Selector13~1_combout\))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector13~8_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|transmitter|Selector13~6_combout\,
	datad => \uart_unit|transmitter|Selector13~1_combout\,
	combout => \uart_unit|transmitter|Selector13~9_combout\);

-- Location: FF_X98_Y44_N19
\uart_unit|fifo_tx|r_array[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[14][3]~q\);

-- Location: FF_X98_Y44_N27
\uart_unit|fifo_tx|r_array[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[12][3]~q\);

-- Location: FF_X99_Y44_N15
\uart_unit|fifo_tx|r_array[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[10][3]~q\);

-- Location: FF_X99_Y44_N31
\uart_unit|fifo_tx|r_array[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[8][3]~q\);

-- Location: LCCOMB_X99_Y44_N30
\uart_unit|transmitter|Selector13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~10_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1) & (\uart_unit|fifo_tx|r_array[10][3]~q\)) # 
-- (!\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[10][3]~q\,
	datac => \uart_unit|fifo_tx|r_array[8][3]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|transmitter|Selector13~10_combout\);

-- Location: LCCOMB_X98_Y44_N26
\uart_unit|transmitter|Selector13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~11_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector13~10_combout\ & (\uart_unit|fifo_tx|r_array[14][3]~q\)) # (!\uart_unit|transmitter|Selector13~10_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[12][3]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|transmitter|Selector13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[14][3]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[12][3]~q\,
	datad => \uart_unit|transmitter|Selector13~10_combout\,
	combout => \uart_unit|transmitter|Selector13~11_combout\);

-- Location: FF_X98_Y45_N15
\uart_unit|fifo_tx|r_array[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[1][3]~q\);

-- Location: LCCOMB_X98_Y45_N16
\uart_unit|fifo_tx|r_array[5][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[5][3]~feeder_combout\ = \r_transmit_data[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[3]~6_combout\,
	combout => \uart_unit|fifo_tx|r_array[5][3]~feeder_combout\);

-- Location: FF_X98_Y45_N17
\uart_unit|fifo_tx|r_array[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[5][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[5][3]~q\);

-- Location: LCCOMB_X98_Y45_N14
\uart_unit|transmitter|Selector13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~12_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1)) # ((\uart_unit|fifo_tx|r_array[5][3]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (!\uart_unit|fifo_tx|r_ptr\(1) & 
-- (\uart_unit|fifo_tx|r_array[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_array[1][3]~q\,
	datad => \uart_unit|fifo_tx|r_array[5][3]~q\,
	combout => \uart_unit|transmitter|Selector13~12_combout\);

-- Location: FF_X98_Y46_N17
\uart_unit|fifo_tx|r_array[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[7][3]~q\);

-- Location: LCCOMB_X98_Y46_N2
\uart_unit|fifo_tx|r_array[3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[3][3]~feeder_combout\ = \r_transmit_data[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[3]~6_combout\,
	combout => \uart_unit|fifo_tx|r_array[3][3]~feeder_combout\);

-- Location: FF_X98_Y46_N3
\uart_unit|fifo_tx|r_array[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[3][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[3][3]~q\);

-- Location: LCCOMB_X98_Y46_N16
\uart_unit|transmitter|Selector13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~13_combout\ = (\uart_unit|transmitter|Selector13~12_combout\ & (((\uart_unit|fifo_tx|r_array[7][3]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(1)))) # (!\uart_unit|transmitter|Selector13~12_combout\ & (\uart_unit|fifo_tx|r_ptr\(1) 
-- & ((\uart_unit|fifo_tx|r_array[3][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector13~12_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_array[7][3]~q\,
	datad => \uart_unit|fifo_tx|r_array[3][3]~q\,
	combout => \uart_unit|transmitter|Selector13~13_combout\);

-- Location: LCCOMB_X98_Y41_N28
\uart_unit|fifo_tx|r_array[4][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[4][3]~feeder_combout\ = \r_transmit_data[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[3]~6_combout\,
	combout => \uart_unit|fifo_tx|r_array[4][3]~feeder_combout\);

-- Location: FF_X98_Y41_N29
\uart_unit|fifo_tx|r_array[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[4][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[4][3]~q\);

-- Location: FF_X98_Y41_N3
\uart_unit|fifo_tx|r_array[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[6][3]~q\);

-- Location: LCCOMB_X99_Y41_N20
\uart_unit|fifo_tx|r_array[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[2][3]~feeder_combout\ = \r_transmit_data[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[3]~6_combout\,
	combout => \uart_unit|fifo_tx|r_array[2][3]~feeder_combout\);

-- Location: FF_X99_Y41_N21
\uart_unit|fifo_tx|r_array[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[2][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[2][3]~q\);

-- Location: FF_X99_Y41_N23
\uart_unit|fifo_tx|r_array[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[0][3]~q\);

-- Location: LCCOMB_X99_Y41_N22
\uart_unit|transmitter|Selector13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~14_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[2][3]~q\) # ((\uart_unit|fifo_tx|r_ptr\(2))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|fifo_tx|r_array[0][3]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[2][3]~q\,
	datac => \uart_unit|fifo_tx|r_array[0][3]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(2),
	combout => \uart_unit|transmitter|Selector13~14_combout\);

-- Location: LCCOMB_X98_Y41_N2
\uart_unit|transmitter|Selector13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~15_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector13~14_combout\ & ((\uart_unit|fifo_tx|r_array[6][3]~q\))) # (!\uart_unit|transmitter|Selector13~14_combout\ & 
-- (\uart_unit|fifo_tx|r_array[4][3]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|transmitter|Selector13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[4][3]~q\,
	datac => \uart_unit|fifo_tx|r_array[6][3]~q\,
	datad => \uart_unit|transmitter|Selector13~14_combout\,
	combout => \uart_unit|transmitter|Selector13~15_combout\);

-- Location: LCCOMB_X98_Y46_N22
\uart_unit|transmitter|Selector13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~16_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|transmitter|Selector13~13_combout\)) # 
-- (!\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector13~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|transmitter|Selector13~13_combout\,
	datac => \uart_unit|fifo_tx|r_ptr\(0),
	datad => \uart_unit|transmitter|Selector13~15_combout\,
	combout => \uart_unit|transmitter|Selector13~16_combout\);

-- Location: FF_X99_Y43_N15
\uart_unit|fifo_tx|r_array[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[15][3]~q\);

-- Location: FF_X99_Y46_N23
\uart_unit|fifo_tx|r_array[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[13][3]~q\);

-- Location: LCCOMB_X100_Y46_N14
\uart_unit|fifo_tx|r_array[11][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[11][3]~feeder_combout\ = \r_transmit_data[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[3]~6_combout\,
	combout => \uart_unit|fifo_tx|r_array[11][3]~feeder_combout\);

-- Location: FF_X100_Y46_N15
\uart_unit|fifo_tx|r_array[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[11][3]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[11][3]~q\);

-- Location: FF_X99_Y46_N13
\uart_unit|fifo_tx|r_array[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[3]~6_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[9][3]~q\);

-- Location: LCCOMB_X99_Y46_N12
\uart_unit|transmitter|Selector13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~17_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1) & (\uart_unit|fifo_tx|r_array[11][3]~q\)) # 
-- (!\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[9][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[11][3]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[9][3]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|transmitter|Selector13~17_combout\);

-- Location: LCCOMB_X99_Y46_N22
\uart_unit|transmitter|Selector13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~18_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector13~17_combout\ & (\uart_unit|fifo_tx|r_array[15][3]~q\)) # (!\uart_unit|transmitter|Selector13~17_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[13][3]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|transmitter|Selector13~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[15][3]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[13][3]~q\,
	datad => \uart_unit|transmitter|Selector13~17_combout\,
	combout => \uart_unit|transmitter|Selector13~18_combout\);

-- Location: LCCOMB_X98_Y46_N20
\uart_unit|transmitter|Selector13~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~19_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector13~16_combout\ & ((\uart_unit|transmitter|Selector13~18_combout\))) # (!\uart_unit|transmitter|Selector13~16_combout\ & 
-- (\uart_unit|transmitter|Selector13~11_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|transmitter|Selector13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|transmitter|Selector13~11_combout\,
	datac => \uart_unit|transmitter|Selector13~16_combout\,
	datad => \uart_unit|transmitter|Selector13~18_combout\,
	combout => \uart_unit|transmitter|Selector13~19_combout\);

-- Location: LCCOMB_X97_Y44_N26
\uart_unit|transmitter|Selector13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector13~20_combout\ = (\uart_unit|fifo_tx|r_ptr\(4) & (\uart_unit|transmitter|Selector13~9_combout\)) # (!\uart_unit|fifo_tx|r_ptr\(4) & ((\uart_unit|transmitter|Selector13~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(4),
	datab => \uart_unit|transmitter|Selector13~9_combout\,
	datad => \uart_unit|transmitter|Selector13~19_combout\,
	combout => \uart_unit|transmitter|Selector13~20_combout\);

-- Location: LCCOMB_X103_Y41_N28
\uart_unit|fifo_rx|r_array[26][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[26][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[26][4]~feeder_combout\);

-- Location: FF_X103_Y41_N29
\uart_unit|fifo_rx|r_array[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[26][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[26][4]~q\);

-- Location: FF_X102_Y41_N31
\uart_unit|fifo_rx|r_array[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[27][4]~q\);

-- Location: LCCOMB_X103_Y43_N12
\uart_unit|fifo_rx|r_array[19][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[19][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[19][4]~feeder_combout\);

-- Location: FF_X103_Y43_N13
\uart_unit|fifo_rx|r_array[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[19][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[19][4]~q\);

-- Location: FF_X102_Y41_N21
\uart_unit|fifo_rx|r_array[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[18][4]~q\);

-- Location: LCCOMB_X102_Y41_N20
\uart_unit|fifo_rx|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~0_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|r_ptr\(0))))) # (!\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_array[19][4]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(0) & 
-- ((\uart_unit|fifo_rx|r_array[18][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[19][4]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[18][4]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Mux15~0_combout\);

-- Location: LCCOMB_X102_Y41_N30
\uart_unit|fifo_rx|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~1_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux15~0_combout\ & ((\uart_unit|fifo_rx|r_array[27][4]~q\))) # (!\uart_unit|fifo_rx|Mux15~0_combout\ & (\uart_unit|fifo_rx|r_array[26][4]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[26][4]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[27][4]~q\,
	datad => \uart_unit|fifo_rx|Mux15~0_combout\,
	combout => \uart_unit|fifo_rx|Mux15~1_combout\);

-- Location: LCCOMB_X102_Y40_N8
\uart_unit|fifo_rx|r_array[24][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[24][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[24][4]~feeder_combout\);

-- Location: FF_X102_Y40_N9
\uart_unit|fifo_rx|r_array[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[24][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[24][4]~q\);

-- Location: LCCOMB_X105_Y43_N22
\uart_unit|fifo_rx|r_array[17][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[17][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[17][4]~feeder_combout\);

-- Location: FF_X105_Y43_N23
\uart_unit|fifo_rx|r_array[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[17][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[17][4]~q\);

-- Location: FF_X101_Y43_N19
\uart_unit|fifo_rx|r_array[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[16][4]~q\);

-- Location: LCCOMB_X101_Y43_N18
\uart_unit|fifo_rx|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~4_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_array[17][4]~q\) # ((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_array[16][4]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[17][4]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[16][4]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux15~4_combout\);

-- Location: FF_X101_Y43_N29
\uart_unit|fifo_rx|r_array[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[25][4]~q\);

-- Location: LCCOMB_X101_Y43_N28
\uart_unit|fifo_rx|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~5_combout\ = (\uart_unit|fifo_rx|Mux15~4_combout\ & (((\uart_unit|fifo_rx|r_array[25][4]~q\) # (!\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|Mux15~4_combout\ & (\uart_unit|fifo_rx|r_array[24][4]~q\ & 
-- ((\uart_unit|fifo_rx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[24][4]~q\,
	datab => \uart_unit|fifo_rx|Mux15~4_combout\,
	datac => \uart_unit|fifo_rx|r_array[25][4]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux15~5_combout\);

-- Location: LCCOMB_X103_Y39_N28
\uart_unit|fifo_rx|r_array[28][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[28][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[28][4]~feeder_combout\);

-- Location: FF_X103_Y39_N29
\uart_unit|fifo_rx|r_array[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[28][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[28][4]~q\);

-- Location: FF_X102_Y39_N9
\uart_unit|fifo_rx|r_array[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[20][4]~q\);

-- Location: LCCOMB_X102_Y39_N8
\uart_unit|fifo_rx|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~2_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[28][4]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|r_array[20][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[28][4]~q\,
	datac => \uart_unit|fifo_rx|r_array[20][4]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux15~2_combout\);

-- Location: FF_X102_Y39_N3
\uart_unit|fifo_rx|r_array[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[29][4]~q\);

-- Location: LCCOMB_X102_Y42_N20
\uart_unit|fifo_rx|r_array[21][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[21][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[21][4]~feeder_combout\);

-- Location: FF_X102_Y42_N21
\uart_unit|fifo_rx|r_array[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[21][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[21][4]~q\);

-- Location: LCCOMB_X102_Y39_N2
\uart_unit|fifo_rx|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~3_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux15~2_combout\ & (\uart_unit|fifo_rx|r_array[29][4]~q\)) # (!\uart_unit|fifo_rx|Mux15~2_combout\ & ((\uart_unit|fifo_rx|r_array[21][4]~q\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|Mux15~2_combout\,
	datac => \uart_unit|fifo_rx|r_array[29][4]~q\,
	datad => \uart_unit|fifo_rx|r_array[21][4]~q\,
	combout => \uart_unit|fifo_rx|Mux15~3_combout\);

-- Location: LCCOMB_X101_Y43_N14
\uart_unit|fifo_rx|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~6_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|r_ptr\(2))))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux15~3_combout\))) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- (\uart_unit|fifo_rx|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|Mux15~5_combout\,
	datac => \uart_unit|fifo_rx|r_ptr\(2),
	datad => \uart_unit|fifo_rx|Mux15~3_combout\,
	combout => \uart_unit|fifo_rx|Mux15~6_combout\);

-- Location: LCCOMB_X106_Y39_N8
\uart_unit|fifo_rx|r_array[23][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[23][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[23][4]~feeder_combout\);

-- Location: FF_X106_Y39_N9
\uart_unit|fifo_rx|r_array[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[23][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[23][4]~q\);

-- Location: FF_X105_Y39_N19
\uart_unit|fifo_rx|r_array[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[31][4]~q\);

-- Location: LCCOMB_X106_Y39_N10
\uart_unit|fifo_rx|r_array[30][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[30][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[30][4]~feeder_combout\);

-- Location: FF_X106_Y39_N11
\uart_unit|fifo_rx|r_array[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[30][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[30][4]~q\);

-- Location: FF_X105_Y39_N29
\uart_unit|fifo_rx|r_array[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[22][4]~q\);

-- Location: LCCOMB_X105_Y39_N28
\uart_unit|fifo_rx|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~7_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[30][4]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|r_array[22][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[30][4]~q\,
	datac => \uart_unit|fifo_rx|r_array[22][4]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux15~7_combout\);

-- Location: LCCOMB_X105_Y39_N18
\uart_unit|fifo_rx|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~8_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux15~7_combout\ & ((\uart_unit|fifo_rx|r_array[31][4]~q\))) # (!\uart_unit|fifo_rx|Mux15~7_combout\ & (\uart_unit|fifo_rx|r_array[23][4]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[23][4]~q\,
	datac => \uart_unit|fifo_rx|r_array[31][4]~q\,
	datad => \uart_unit|fifo_rx|Mux15~7_combout\,
	combout => \uart_unit|fifo_rx|Mux15~8_combout\);

-- Location: LCCOMB_X101_Y43_N0
\uart_unit|fifo_rx|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~9_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux15~6_combout\ & ((\uart_unit|fifo_rx|Mux15~8_combout\))) # (!\uart_unit|fifo_rx|Mux15~6_combout\ & (\uart_unit|fifo_rx|Mux15~1_combout\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux15~1_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|Mux15~6_combout\,
	datad => \uart_unit|fifo_rx|Mux15~8_combout\,
	combout => \uart_unit|fifo_rx|Mux15~9_combout\);

-- Location: LCCOMB_X103_Y42_N12
\uart_unit|fifo_rx|r_array[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[5][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[5][4]~feeder_combout\);

-- Location: FF_X103_Y42_N13
\uart_unit|fifo_rx|r_array[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[5][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[5][4]~q\);

-- Location: FF_X101_Y42_N31
\uart_unit|fifo_rx|r_array[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[7][4]~q\);

-- Location: FF_X101_Y42_N21
\uart_unit|fifo_rx|r_array[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[1][4]~q\);

-- Location: LCCOMB_X103_Y43_N14
\uart_unit|fifo_rx|r_array[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[3][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[3][4]~feeder_combout\);

-- Location: FF_X103_Y43_N15
\uart_unit|fifo_rx|r_array[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[3][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[3][4]~q\);

-- Location: LCCOMB_X101_Y42_N20
\uart_unit|fifo_rx|Mux15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~10_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2)) # ((\uart_unit|fifo_rx|r_array[3][4]~q\)))) # (!\uart_unit|fifo_rx|r_ptr\(1) & (!\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|r_array[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[1][4]~q\,
	datad => \uart_unit|fifo_rx|r_array[3][4]~q\,
	combout => \uart_unit|fifo_rx|Mux15~10_combout\);

-- Location: LCCOMB_X101_Y42_N30
\uart_unit|fifo_rx|Mux15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~11_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux15~10_combout\ & ((\uart_unit|fifo_rx|r_array[7][4]~q\))) # (!\uart_unit|fifo_rx|Mux15~10_combout\ & (\uart_unit|fifo_rx|r_array[5][4]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[5][4]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[7][4]~q\,
	datad => \uart_unit|fifo_rx|Mux15~10_combout\,
	combout => \uart_unit|fifo_rx|Mux15~11_combout\);

-- Location: FF_X101_Y40_N21
\uart_unit|fifo_rx|r_array[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[4][4]~q\);

-- Location: FF_X100_Y42_N27
\uart_unit|fifo_rx|r_array[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[6][4]~q\);

-- Location: LCCOMB_X102_Y42_N22
\uart_unit|fifo_rx|r_array[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[2][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[2][4]~feeder_combout\);

-- Location: FF_X102_Y42_N23
\uart_unit|fifo_rx|r_array[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[2][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[2][4]~q\);

-- Location: FF_X100_Y42_N17
\uart_unit|fifo_rx|r_array[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[0][4]~q\);

-- Location: LCCOMB_X100_Y42_N16
\uart_unit|fifo_rx|Mux15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~14_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_array[2][4]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(1) & 
-- ((\uart_unit|fifo_rx|r_array[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[2][4]~q\,
	datac => \uart_unit|fifo_rx|r_array[0][4]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux15~14_combout\);

-- Location: LCCOMB_X100_Y42_N26
\uart_unit|fifo_rx|Mux15~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~15_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux15~14_combout\ & ((\uart_unit|fifo_rx|r_array[6][4]~q\))) # (!\uart_unit|fifo_rx|Mux15~14_combout\ & (\uart_unit|fifo_rx|r_array[4][4]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[4][4]~q\,
	datac => \uart_unit|fifo_rx|r_array[6][4]~q\,
	datad => \uart_unit|fifo_rx|Mux15~14_combout\,
	combout => \uart_unit|fifo_rx|Mux15~15_combout\);

-- Location: LCCOMB_X99_Y39_N16
\uart_unit|fifo_rx|r_array[10][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[10][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[10][4]~feeder_combout\);

-- Location: FF_X99_Y39_N17
\uart_unit|fifo_rx|r_array[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[10][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[10][4]~q\);

-- Location: FF_X100_Y39_N19
\uart_unit|fifo_rx|r_array[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[14][4]~q\);

-- Location: LCCOMB_X101_Y39_N30
\uart_unit|fifo_rx|r_array[12][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[12][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[12][4]~feeder_combout\);

-- Location: FF_X101_Y39_N31
\uart_unit|fifo_rx|r_array[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[12][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[12][4]~q\);

-- Location: FF_X100_Y39_N25
\uart_unit|fifo_rx|r_array[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[8][4]~q\);

-- Location: LCCOMB_X100_Y39_N24
\uart_unit|fifo_rx|Mux15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~12_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|r_ptr\(2))))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|r_array[12][4]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- ((\uart_unit|fifo_rx|r_array[8][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[12][4]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[8][4]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(2),
	combout => \uart_unit|fifo_rx|Mux15~12_combout\);

-- Location: LCCOMB_X100_Y39_N18
\uart_unit|fifo_rx|Mux15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~13_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux15~12_combout\ & ((\uart_unit|fifo_rx|r_array[14][4]~q\))) # (!\uart_unit|fifo_rx|Mux15~12_combout\ & (\uart_unit|fifo_rx|r_array[10][4]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux15~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[10][4]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[14][4]~q\,
	datad => \uart_unit|fifo_rx|Mux15~12_combout\,
	combout => \uart_unit|fifo_rx|Mux15~13_combout\);

-- Location: LCCOMB_X100_Y42_N8
\uart_unit|fifo_rx|Mux15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~16_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_ptr\(3))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux15~13_combout\))) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- (\uart_unit|fifo_rx|Mux15~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|Mux15~15_combout\,
	datad => \uart_unit|fifo_rx|Mux15~13_combout\,
	combout => \uart_unit|fifo_rx|Mux15~16_combout\);

-- Location: LCCOMB_X105_Y41_N10
\uart_unit|fifo_rx|r_array[11][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[11][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[11][4]~feeder_combout\);

-- Location: FF_X105_Y41_N11
\uart_unit|fifo_rx|r_array[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[11][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[11][4]~q\);

-- Location: FF_X100_Y41_N7
\uart_unit|fifo_rx|r_array[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[15][4]~q\);

-- Location: LCCOMB_X101_Y41_N6
\uart_unit|fifo_rx|r_array[13][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[13][4]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(4),
	combout => \uart_unit|fifo_rx|r_array[13][4]~feeder_combout\);

-- Location: FF_X101_Y41_N7
\uart_unit|fifo_rx|r_array[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[13][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[13][4]~q\);

-- Location: FF_X100_Y41_N25
\uart_unit|fifo_rx|r_array[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[9][4]~q\);

-- Location: LCCOMB_X100_Y41_N24
\uart_unit|fifo_rx|Mux15~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~17_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_array[13][4]~q\) # ((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_array[9][4]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[13][4]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[9][4]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux15~17_combout\);

-- Location: LCCOMB_X100_Y41_N6
\uart_unit|fifo_rx|Mux15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~18_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux15~17_combout\ & ((\uart_unit|fifo_rx|r_array[15][4]~q\))) # (!\uart_unit|fifo_rx|Mux15~17_combout\ & (\uart_unit|fifo_rx|r_array[11][4]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux15~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[11][4]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[15][4]~q\,
	datad => \uart_unit|fifo_rx|Mux15~17_combout\,
	combout => \uart_unit|fifo_rx|Mux15~18_combout\);

-- Location: LCCOMB_X100_Y42_N18
\uart_unit|fifo_rx|Mux15~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~19_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux15~16_combout\ & ((\uart_unit|fifo_rx|Mux15~18_combout\))) # (!\uart_unit|fifo_rx|Mux15~16_combout\ & (\uart_unit|fifo_rx|Mux15~11_combout\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux15~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux15~11_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|Mux15~16_combout\,
	datad => \uart_unit|fifo_rx|Mux15~18_combout\,
	combout => \uart_unit|fifo_rx|Mux15~19_combout\);

-- Location: LCCOMB_X99_Y43_N28
\uart_unit|fifo_rx|Mux15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux15~20_combout\ = (\uart_unit|fifo_rx|r_ptr\(4) & (\uart_unit|fifo_rx|Mux15~9_combout\)) # (!\uart_unit|fifo_rx|r_ptr\(4) & ((\uart_unit|fifo_rx|Mux15~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(4),
	datac => \uart_unit|fifo_rx|Mux15~9_combout\,
	datad => \uart_unit|fifo_rx|Mux15~19_combout\,
	combout => \uart_unit|fifo_rx|Mux15~20_combout\);

-- Location: LCCOMB_X99_Y43_N16
\r_transmit_data[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_transmit_data[4]~8_combout\ = (\uart_unit|fifo_rx|Mux15~20_combout\ & (\r_transmit_data[3]~7\ $ (GND))) # (!\uart_unit|fifo_rx|Mux15~20_combout\ & (!\r_transmit_data[3]~7\ & VCC))
-- \r_transmit_data[4]~9\ = CARRY((\uart_unit|fifo_rx|Mux15~20_combout\ & !\r_transmit_data[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|Mux15~20_combout\,
	datad => VCC,
	cin => \r_transmit_data[3]~7\,
	combout => \r_transmit_data[4]~8_combout\,
	cout => \r_transmit_data[4]~9\);

-- Location: LCCOMB_X99_Y42_N20
\uart_unit|fifo_tx|r_array[27][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[27][4]~feeder_combout\ = \r_transmit_data[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[4]~8_combout\,
	combout => \uart_unit|fifo_tx|r_array[27][4]~feeder_combout\);

-- Location: FF_X99_Y42_N21
\uart_unit|fifo_tx|r_array[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[27][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[27][4]~q\);

-- Location: FF_X98_Y42_N13
\uart_unit|fifo_tx|r_array[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[26][4]~q\);

-- Location: FF_X99_Y42_N19
\uart_unit|fifo_tx|r_array[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[19][4]~q\);

-- Location: FF_X98_Y42_N3
\uart_unit|fifo_tx|r_array[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[18][4]~q\);

-- Location: LCCOMB_X98_Y42_N2
\uart_unit|transmitter|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~0_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|r_array[19][4]~q\) # ((\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|fifo_tx|r_array[18][4]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_array[19][4]~q\,
	datac => \uart_unit|fifo_tx|r_array[18][4]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|transmitter|Selector12~0_combout\);

-- Location: LCCOMB_X98_Y42_N12
\uart_unit|transmitter|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~1_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector12~0_combout\ & (\uart_unit|fifo_tx|r_array[27][4]~q\)) # (!\uart_unit|transmitter|Selector12~0_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[26][4]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|transmitter|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[27][4]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(3),
	datac => \uart_unit|fifo_tx|r_array[26][4]~q\,
	datad => \uart_unit|transmitter|Selector12~0_combout\,
	combout => \uart_unit|transmitter|Selector12~1_combout\);

-- Location: LCCOMB_X97_Y43_N22
\uart_unit|fifo_tx|r_array[23][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[23][4]~feeder_combout\ = \r_transmit_data[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[4]~8_combout\,
	combout => \uart_unit|fifo_tx|r_array[23][4]~feeder_combout\);

-- Location: FF_X97_Y43_N23
\uart_unit|fifo_tx|r_array[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[23][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[23][4]~q\);

-- Location: FF_X96_Y43_N17
\uart_unit|fifo_tx|r_array[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[31][4]~q\);

-- Location: FF_X97_Y43_N29
\uart_unit|fifo_tx|r_array[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[22][4]~q\);

-- Location: LCCOMB_X96_Y43_N22
\uart_unit|fifo_tx|r_array[30][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[30][4]~feeder_combout\ = \r_transmit_data[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[4]~8_combout\,
	combout => \uart_unit|fifo_tx|r_array[30][4]~feeder_combout\);

-- Location: FF_X96_Y43_N23
\uart_unit|fifo_tx|r_array[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[30][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[30][4]~q\);

-- Location: LCCOMB_X97_Y43_N28
\uart_unit|transmitter|Selector12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~7_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0)) # ((\uart_unit|fifo_tx|r_array[30][4]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (!\uart_unit|fifo_tx|r_ptr\(0) & 
-- (\uart_unit|fifo_tx|r_array[22][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[22][4]~q\,
	datad => \uart_unit|fifo_tx|r_array[30][4]~q\,
	combout => \uart_unit|transmitter|Selector12~7_combout\);

-- Location: LCCOMB_X96_Y43_N16
\uart_unit|transmitter|Selector12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~8_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector12~7_combout\ & ((\uart_unit|fifo_tx|r_array[31][4]~q\))) # (!\uart_unit|transmitter|Selector12~7_combout\ & 
-- (\uart_unit|fifo_tx|r_array[23][4]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|transmitter|Selector12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_array[23][4]~q\,
	datac => \uart_unit|fifo_tx|r_array[31][4]~q\,
	datad => \uart_unit|transmitter|Selector12~7_combout\,
	combout => \uart_unit|transmitter|Selector12~8_combout\);

-- Location: FF_X100_Y40_N19
\uart_unit|fifo_tx|r_array[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[21][4]~q\);

-- Location: FF_X99_Y40_N1
\uart_unit|fifo_tx|r_array[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[29][4]~q\);

-- Location: FF_X100_Y40_N17
\uart_unit|fifo_tx|r_array[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[20][4]~q\);

-- Location: LCCOMB_X99_Y40_N14
\uart_unit|fifo_tx|r_array[28][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[28][4]~feeder_combout\ = \r_transmit_data[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[4]~8_combout\,
	combout => \uart_unit|fifo_tx|r_array[28][4]~feeder_combout\);

-- Location: FF_X99_Y40_N15
\uart_unit|fifo_tx|r_array[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[28][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[28][4]~q\);

-- Location: LCCOMB_X100_Y40_N16
\uart_unit|transmitter|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~2_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0)) # ((\uart_unit|fifo_tx|r_array[28][4]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (!\uart_unit|fifo_tx|r_ptr\(0) & 
-- (\uart_unit|fifo_tx|r_array[20][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[20][4]~q\,
	datad => \uart_unit|fifo_tx|r_array[28][4]~q\,
	combout => \uart_unit|transmitter|Selector12~2_combout\);

-- Location: LCCOMB_X99_Y40_N0
\uart_unit|transmitter|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~3_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector12~2_combout\ & ((\uart_unit|fifo_tx|r_array[29][4]~q\))) # (!\uart_unit|transmitter|Selector12~2_combout\ & 
-- (\uart_unit|fifo_tx|r_array[21][4]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|transmitter|Selector12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[21][4]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[29][4]~q\,
	datad => \uart_unit|transmitter|Selector12~2_combout\,
	combout => \uart_unit|transmitter|Selector12~3_combout\);

-- Location: LCCOMB_X100_Y45_N30
\uart_unit|fifo_tx|r_array[24][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[24][4]~feeder_combout\ = \r_transmit_data[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[4]~8_combout\,
	combout => \uart_unit|fifo_tx|r_array[24][4]~feeder_combout\);

-- Location: FF_X100_Y45_N31
\uart_unit|fifo_tx|r_array[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[24][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[24][4]~q\);

-- Location: FF_X99_Y45_N17
\uart_unit|fifo_tx|r_array[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[25][4]~q\);

-- Location: LCCOMB_X99_Y45_N18
\uart_unit|fifo_tx|r_array[17][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[17][4]~feeder_combout\ = \r_transmit_data[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[4]~8_combout\,
	combout => \uart_unit|fifo_tx|r_array[17][4]~feeder_combout\);

-- Location: FF_X99_Y45_N19
\uart_unit|fifo_tx|r_array[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[17][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[17][4]~q\);

-- Location: FF_X100_Y45_N29
\uart_unit|fifo_tx|r_array[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[16][4]~q\);

-- Location: LCCOMB_X100_Y45_N28
\uart_unit|transmitter|Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~4_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_array[17][4]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(0) 
-- & ((\uart_unit|fifo_tx|r_array[16][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[17][4]~q\,
	datac => \uart_unit|fifo_tx|r_array[16][4]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector12~4_combout\);

-- Location: LCCOMB_X99_Y45_N16
\uart_unit|transmitter|Selector12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~5_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector12~4_combout\ & ((\uart_unit|fifo_tx|r_array[25][4]~q\))) # (!\uart_unit|transmitter|Selector12~4_combout\ & 
-- (\uart_unit|fifo_tx|r_array[24][4]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|transmitter|Selector12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[24][4]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(3),
	datac => \uart_unit|fifo_tx|r_array[25][4]~q\,
	datad => \uart_unit|transmitter|Selector12~4_combout\,
	combout => \uart_unit|transmitter|Selector12~5_combout\);

-- Location: LCCOMB_X98_Y40_N2
\uart_unit|transmitter|Selector12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~6_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & (\uart_unit|fifo_tx|r_ptr\(2))) # (!\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_ptr\(2) & (\uart_unit|transmitter|Selector12~3_combout\)) # 
-- (!\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector12~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|transmitter|Selector12~3_combout\,
	datad => \uart_unit|transmitter|Selector12~5_combout\,
	combout => \uart_unit|transmitter|Selector12~6_combout\);

-- Location: LCCOMB_X98_Y40_N12
\uart_unit|transmitter|Selector12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~9_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector12~6_combout\ & ((\uart_unit|transmitter|Selector12~8_combout\))) # (!\uart_unit|transmitter|Selector12~6_combout\ & 
-- (\uart_unit|transmitter|Selector12~1_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|transmitter|Selector12~1_combout\,
	datac => \uart_unit|transmitter|Selector12~8_combout\,
	datad => \uart_unit|transmitter|Selector12~6_combout\,
	combout => \uart_unit|transmitter|Selector12~9_combout\);

-- Location: LCCOMB_X98_Y46_N30
\uart_unit|fifo_tx|r_array[7][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[7][4]~feeder_combout\ = \r_transmit_data[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[4]~8_combout\,
	combout => \uart_unit|fifo_tx|r_array[7][4]~feeder_combout\);

-- Location: FF_X98_Y46_N31
\uart_unit|fifo_tx|r_array[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[7][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[7][4]~q\);

-- Location: FF_X98_Y45_N9
\uart_unit|fifo_tx|r_array[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[5][4]~q\);

-- Location: FF_X98_Y45_N7
\uart_unit|fifo_tx|r_array[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[1][4]~q\);

-- Location: FF_X99_Y43_N31
\uart_unit|fifo_tx|r_array[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[3][4]~q\);

-- Location: LCCOMB_X98_Y45_N6
\uart_unit|transmitter|Selector12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~10_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & (\uart_unit|fifo_tx|r_ptr\(1))) # (!\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[3][4]~q\))) # (!\uart_unit|fifo_tx|r_ptr\(1) & 
-- (\uart_unit|fifo_tx|r_array[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_array[1][4]~q\,
	datad => \uart_unit|fifo_tx|r_array[3][4]~q\,
	combout => \uart_unit|transmitter|Selector12~10_combout\);

-- Location: LCCOMB_X98_Y45_N8
\uart_unit|transmitter|Selector12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~11_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector12~10_combout\ & (\uart_unit|fifo_tx|r_array[7][4]~q\)) # (!\uart_unit|transmitter|Selector12~10_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[5][4]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|transmitter|Selector12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[7][4]~q\,
	datac => \uart_unit|fifo_tx|r_array[5][4]~q\,
	datad => \uart_unit|transmitter|Selector12~10_combout\,
	combout => \uart_unit|transmitter|Selector12~11_combout\);

-- Location: LCCOMB_X98_Y41_N0
\uart_unit|fifo_tx|r_array[4][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[4][4]~feeder_combout\ = \r_transmit_data[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[4]~8_combout\,
	combout => \uart_unit|fifo_tx|r_array[4][4]~feeder_combout\);

-- Location: FF_X98_Y41_N1
\uart_unit|fifo_tx|r_array[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[4][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[4][4]~q\);

-- Location: FF_X98_Y41_N11
\uart_unit|fifo_tx|r_array[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[6][4]~q\);

-- Location: LCCOMB_X99_Y41_N16
\uart_unit|fifo_tx|r_array[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[2][4]~feeder_combout\ = \r_transmit_data[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[4]~8_combout\,
	combout => \uart_unit|fifo_tx|r_array[2][4]~feeder_combout\);

-- Location: FF_X99_Y41_N17
\uart_unit|fifo_tx|r_array[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[2][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[2][4]~q\);

-- Location: FF_X99_Y41_N3
\uart_unit|fifo_tx|r_array[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[0][4]~q\);

-- Location: LCCOMB_X99_Y41_N2
\uart_unit|transmitter|Selector12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~14_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[2][4]~q\) # ((\uart_unit|fifo_tx|r_ptr\(2))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|fifo_tx|r_array[0][4]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[2][4]~q\,
	datac => \uart_unit|fifo_tx|r_array[0][4]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(2),
	combout => \uart_unit|transmitter|Selector12~14_combout\);

-- Location: LCCOMB_X98_Y41_N10
\uart_unit|transmitter|Selector12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~15_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector12~14_combout\ & ((\uart_unit|fifo_tx|r_array[6][4]~q\))) # (!\uart_unit|transmitter|Selector12~14_combout\ & 
-- (\uart_unit|fifo_tx|r_array[4][4]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|transmitter|Selector12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[4][4]~q\,
	datac => \uart_unit|fifo_tx|r_array[6][4]~q\,
	datad => \uart_unit|transmitter|Selector12~14_combout\,
	combout => \uart_unit|transmitter|Selector12~15_combout\);

-- Location: LCCOMB_X99_Y44_N0
\uart_unit|fifo_tx|r_array[10][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[10][4]~feeder_combout\ = \r_transmit_data[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[4]~8_combout\,
	combout => \uart_unit|fifo_tx|r_array[10][4]~feeder_combout\);

-- Location: FF_X99_Y44_N1
\uart_unit|fifo_tx|r_array[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[10][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[10][4]~q\);

-- Location: FF_X98_Y44_N31
\uart_unit|fifo_tx|r_array[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[14][4]~q\);

-- Location: LCCOMB_X98_Y44_N28
\uart_unit|fifo_tx|r_array[12][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[12][4]~feeder_combout\ = \r_transmit_data[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[4]~8_combout\,
	combout => \uart_unit|fifo_tx|r_array[12][4]~feeder_combout\);

-- Location: FF_X98_Y44_N29
\uart_unit|fifo_tx|r_array[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[12][4]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[12][4]~q\);

-- Location: FF_X99_Y44_N19
\uart_unit|fifo_tx|r_array[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[8][4]~q\);

-- Location: LCCOMB_X99_Y44_N18
\uart_unit|transmitter|Selector12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~12_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_array[12][4]~q\) # ((\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|r_array[8][4]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[12][4]~q\,
	datac => \uart_unit|fifo_tx|r_array[8][4]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|transmitter|Selector12~12_combout\);

-- Location: LCCOMB_X98_Y44_N30
\uart_unit|transmitter|Selector12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~13_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector12~12_combout\ & ((\uart_unit|fifo_tx|r_array[14][4]~q\))) # (!\uart_unit|transmitter|Selector12~12_combout\ & 
-- (\uart_unit|fifo_tx|r_array[10][4]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector12~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[10][4]~q\,
	datac => \uart_unit|fifo_tx|r_array[14][4]~q\,
	datad => \uart_unit|transmitter|Selector12~12_combout\,
	combout => \uart_unit|transmitter|Selector12~13_combout\);

-- Location: LCCOMB_X98_Y40_N30
\uart_unit|transmitter|Selector12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~16_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_ptr\(3))) # (!\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector12~13_combout\))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(3) & (\uart_unit|transmitter|Selector12~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_ptr\(3),
	datac => \uart_unit|transmitter|Selector12~15_combout\,
	datad => \uart_unit|transmitter|Selector12~13_combout\,
	combout => \uart_unit|transmitter|Selector12~16_combout\);

-- Location: FF_X99_Y43_N17
\uart_unit|fifo_tx|r_array[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[15][4]~q\);

-- Location: FF_X98_Y40_N29
\uart_unit|fifo_tx|r_array[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[11][4]~q\);

-- Location: FF_X99_Y46_N9
\uart_unit|fifo_tx|r_array[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[13][4]~q\);

-- Location: FF_X99_Y46_N3
\uart_unit|fifo_tx|r_array[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[4]~8_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[9][4]~q\);

-- Location: LCCOMB_X99_Y46_N2
\uart_unit|transmitter|Selector12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~17_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_array[13][4]~q\) # ((\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|r_array[9][4]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[13][4]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[9][4]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|transmitter|Selector12~17_combout\);

-- Location: LCCOMB_X98_Y40_N28
\uart_unit|transmitter|Selector12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~18_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector12~17_combout\ & (\uart_unit|fifo_tx|r_array[15][4]~q\)) # (!\uart_unit|transmitter|Selector12~17_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[11][4]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector12~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[15][4]~q\,
	datac => \uart_unit|fifo_tx|r_array[11][4]~q\,
	datad => \uart_unit|transmitter|Selector12~17_combout\,
	combout => \uart_unit|transmitter|Selector12~18_combout\);

-- Location: LCCOMB_X98_Y40_N6
\uart_unit|transmitter|Selector12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~19_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector12~16_combout\ & ((\uart_unit|transmitter|Selector12~18_combout\))) # (!\uart_unit|transmitter|Selector12~16_combout\ & 
-- (\uart_unit|transmitter|Selector12~11_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|transmitter|Selector12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|transmitter|Selector12~11_combout\,
	datac => \uart_unit|transmitter|Selector12~16_combout\,
	datad => \uart_unit|transmitter|Selector12~18_combout\,
	combout => \uart_unit|transmitter|Selector12~19_combout\);

-- Location: LCCOMB_X97_Y44_N8
\uart_unit|transmitter|Selector12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector12~20_combout\ = (\uart_unit|fifo_tx|r_ptr\(4) & (\uart_unit|transmitter|Selector12~9_combout\)) # (!\uart_unit|fifo_tx|r_ptr\(4) & ((\uart_unit|transmitter|Selector12~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(4),
	datab => \uart_unit|transmitter|Selector12~9_combout\,
	datad => \uart_unit|transmitter|Selector12~19_combout\,
	combout => \uart_unit|transmitter|Selector12~20_combout\);

-- Location: LCCOMB_X103_Y43_N20
\uart_unit|fifo_rx|r_array[19][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[19][5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|fifo_rx|r_array[19][5]~feeder_combout\);

-- Location: FF_X103_Y43_N21
\uart_unit|fifo_rx|r_array[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[19][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[19][5]~q\);

-- Location: LCCOMB_X102_Y41_N14
\uart_unit|fifo_rx|r_array[27][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[27][5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|fifo_rx|r_array[27][5]~feeder_combout\);

-- Location: FF_X102_Y41_N15
\uart_unit|fifo_rx|r_array[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[27][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[27][5]~q\);

-- Location: FF_X103_Y41_N27
\uart_unit|fifo_rx|r_array[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[26][5]~q\);

-- Location: FF_X102_Y41_N5
\uart_unit|fifo_rx|r_array[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[18][5]~q\);

-- Location: LCCOMB_X102_Y41_N4
\uart_unit|fifo_rx|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~0_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[26][5]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|r_array[18][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[26][5]~q\,
	datac => \uart_unit|fifo_rx|r_array[18][5]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux14~0_combout\);

-- Location: LCCOMB_X101_Y43_N22
\uart_unit|fifo_rx|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~1_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux14~0_combout\ & ((\uart_unit|fifo_rx|r_array[27][5]~q\))) # (!\uart_unit|fifo_rx|Mux14~0_combout\ & (\uart_unit|fifo_rx|r_array[19][5]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[19][5]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[27][5]~q\,
	datad => \uart_unit|fifo_rx|Mux14~0_combout\,
	combout => \uart_unit|fifo_rx|Mux14~1_combout\);

-- Location: LCCOMB_X105_Y43_N20
\uart_unit|fifo_rx|r_array[17][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[17][5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|fifo_rx|r_array[17][5]~feeder_combout\);

-- Location: FF_X105_Y43_N21
\uart_unit|fifo_rx|r_array[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[17][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[17][5]~q\);

-- Location: FF_X101_Y43_N31
\uart_unit|fifo_rx|r_array[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[25][5]~q\);

-- Location: FF_X101_Y43_N21
\uart_unit|fifo_rx|r_array[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[16][5]~q\);

-- Location: LCCOMB_X103_Y40_N16
\uart_unit|fifo_rx|r_array[24][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[24][5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|fifo_rx|r_array[24][5]~feeder_combout\);

-- Location: FF_X103_Y40_N17
\uart_unit|fifo_rx|r_array[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[24][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[24][5]~q\);

-- Location: LCCOMB_X101_Y43_N20
\uart_unit|fifo_rx|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~4_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_ptr\(3))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|r_array[24][5]~q\))) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- (\uart_unit|fifo_rx|r_array[16][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[16][5]~q\,
	datad => \uart_unit|fifo_rx|r_array[24][5]~q\,
	combout => \uart_unit|fifo_rx|Mux14~4_combout\);

-- Location: LCCOMB_X101_Y43_N30
\uart_unit|fifo_rx|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~5_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux14~4_combout\ & ((\uart_unit|fifo_rx|r_array[25][5]~q\))) # (!\uart_unit|fifo_rx|Mux14~4_combout\ & (\uart_unit|fifo_rx|r_array[17][5]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[17][5]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[25][5]~q\,
	datad => \uart_unit|fifo_rx|Mux14~4_combout\,
	combout => \uart_unit|fifo_rx|Mux14~5_combout\);

-- Location: LCCOMB_X103_Y39_N6
\uart_unit|fifo_rx|r_array[28][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[28][5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|fifo_rx|r_array[28][5]~feeder_combout\);

-- Location: FF_X103_Y39_N7
\uart_unit|fifo_rx|r_array[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[28][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[28][5]~q\);

-- Location: FF_X102_Y39_N27
\uart_unit|fifo_rx|r_array[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[29][5]~q\);

-- Location: LCCOMB_X103_Y39_N20
\uart_unit|fifo_rx|r_array[21][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[21][5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|fifo_rx|r_array[21][5]~feeder_combout\);

-- Location: FF_X103_Y39_N21
\uart_unit|fifo_rx|r_array[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[21][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[21][5]~q\);

-- Location: FF_X102_Y39_N13
\uart_unit|fifo_rx|r_array[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[20][5]~q\);

-- Location: LCCOMB_X102_Y39_N12
\uart_unit|fifo_rx|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~2_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|r_ptr\(0))))) # (!\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_array[21][5]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(0) & 
-- ((\uart_unit|fifo_rx|r_array[20][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[21][5]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[20][5]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Mux14~2_combout\);

-- Location: LCCOMB_X102_Y39_N26
\uart_unit|fifo_rx|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~3_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux14~2_combout\ & ((\uart_unit|fifo_rx|r_array[29][5]~q\))) # (!\uart_unit|fifo_rx|Mux14~2_combout\ & (\uart_unit|fifo_rx|r_array[28][5]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[28][5]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[29][5]~q\,
	datad => \uart_unit|fifo_rx|Mux14~2_combout\,
	combout => \uart_unit|fifo_rx|Mux14~3_combout\);

-- Location: LCCOMB_X101_Y43_N12
\uart_unit|fifo_rx|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~6_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_ptr\(2))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux14~3_combout\))) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- (\uart_unit|fifo_rx|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|Mux14~5_combout\,
	datad => \uart_unit|fifo_rx|Mux14~3_combout\,
	combout => \uart_unit|fifo_rx|Mux14~6_combout\);

-- Location: LCCOMB_X106_Y43_N24
\uart_unit|fifo_rx|r_array[31][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[31][5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|fifo_rx|r_array[31][5]~feeder_combout\);

-- Location: FF_X106_Y43_N25
\uart_unit|fifo_rx|r_array[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[31][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[31][5]~q\);

-- Location: FF_X105_Y43_N15
\uart_unit|fifo_rx|r_array[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[30][5]~q\);

-- Location: LCCOMB_X105_Y41_N16
\uart_unit|fifo_rx|r_array[23][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[23][5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|fifo_rx|r_array[23][5]~feeder_combout\);

-- Location: FF_X105_Y41_N17
\uart_unit|fifo_rx|r_array[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[23][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[23][5]~q\);

-- Location: FF_X105_Y39_N13
\uart_unit|fifo_rx|r_array[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[22][5]~q\);

-- Location: LCCOMB_X105_Y39_N12
\uart_unit|fifo_rx|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~7_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|r_ptr\(0))))) # (!\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_array[23][5]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(0) & 
-- ((\uart_unit|fifo_rx|r_array[22][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(3),
	datab => \uart_unit|fifo_rx|r_array[23][5]~q\,
	datac => \uart_unit|fifo_rx|r_array[22][5]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Mux14~7_combout\);

-- Location: LCCOMB_X105_Y43_N14
\uart_unit|fifo_rx|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~8_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux14~7_combout\ & (\uart_unit|fifo_rx|r_array[31][5]~q\)) # (!\uart_unit|fifo_rx|Mux14~7_combout\ & ((\uart_unit|fifo_rx|r_array[30][5]~q\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(3),
	datab => \uart_unit|fifo_rx|r_array[31][5]~q\,
	datac => \uart_unit|fifo_rx|r_array[30][5]~q\,
	datad => \uart_unit|fifo_rx|Mux14~7_combout\,
	combout => \uart_unit|fifo_rx|Mux14~8_combout\);

-- Location: LCCOMB_X100_Y43_N14
\uart_unit|fifo_rx|Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~9_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux14~6_combout\ & ((\uart_unit|fifo_rx|Mux14~8_combout\))) # (!\uart_unit|fifo_rx|Mux14~6_combout\ & (\uart_unit|fifo_rx|Mux14~1_combout\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|Mux14~1_combout\,
	datac => \uart_unit|fifo_rx|Mux14~6_combout\,
	datad => \uart_unit|fifo_rx|Mux14~8_combout\,
	combout => \uart_unit|fifo_rx|Mux14~9_combout\);

-- Location: LCCOMB_X100_Y39_N26
\uart_unit|fifo_rx|r_array[14][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[14][5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|fifo_rx|r_array[14][5]~feeder_combout\);

-- Location: FF_X100_Y39_N27
\uart_unit|fifo_rx|r_array[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[14][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[14][5]~q\);

-- Location: FF_X101_Y39_N1
\uart_unit|fifo_rx|r_array[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[12][5]~q\);

-- Location: LCCOMB_X99_Y39_N26
\uart_unit|fifo_rx|r_array[10][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[10][5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|fifo_rx|r_array[10][5]~feeder_combout\);

-- Location: FF_X99_Y39_N27
\uart_unit|fifo_rx|r_array[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[10][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[10][5]~q\);

-- Location: FF_X100_Y39_N9
\uart_unit|fifo_rx|r_array[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[8][5]~q\);

-- Location: LCCOMB_X100_Y39_N8
\uart_unit|fifo_rx|Mux14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~10_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_array[10][5]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(1) & 
-- ((\uart_unit|fifo_rx|r_array[8][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[10][5]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[8][5]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux14~10_combout\);

-- Location: LCCOMB_X101_Y39_N0
\uart_unit|fifo_rx|Mux14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~11_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux14~10_combout\ & (\uart_unit|fifo_rx|r_array[14][5]~q\)) # (!\uart_unit|fifo_rx|Mux14~10_combout\ & ((\uart_unit|fifo_rx|r_array[12][5]~q\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[14][5]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[12][5]~q\,
	datad => \uart_unit|fifo_rx|Mux14~10_combout\,
	combout => \uart_unit|fifo_rx|Mux14~11_combout\);

-- Location: LCCOMB_X101_Y40_N2
\uart_unit|fifo_rx|r_array[4][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[4][5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|fifo_rx|r_array[4][5]~feeder_combout\);

-- Location: FF_X101_Y40_N3
\uart_unit|fifo_rx|r_array[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[4][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[4][5]~q\);

-- Location: FF_X100_Y42_N31
\uart_unit|fifo_rx|r_array[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[6][5]~q\);

-- Location: FF_X102_Y42_N5
\uart_unit|fifo_rx|r_array[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[2][5]~q\);

-- Location: FF_X100_Y42_N29
\uart_unit|fifo_rx|r_array[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[0][5]~q\);

-- Location: LCCOMB_X100_Y42_N28
\uart_unit|fifo_rx|Mux14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~14_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_array[2][5]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(1) & 
-- ((\uart_unit|fifo_rx|r_array[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[2][5]~q\,
	datac => \uart_unit|fifo_rx|r_array[0][5]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux14~14_combout\);

-- Location: LCCOMB_X100_Y42_N30
\uart_unit|fifo_rx|Mux14~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~15_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux14~14_combout\ & ((\uart_unit|fifo_rx|r_array[6][5]~q\))) # (!\uart_unit|fifo_rx|Mux14~14_combout\ & (\uart_unit|fifo_rx|r_array[4][5]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux14~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[4][5]~q\,
	datac => \uart_unit|fifo_rx|r_array[6][5]~q\,
	datad => \uart_unit|fifo_rx|Mux14~14_combout\,
	combout => \uart_unit|fifo_rx|Mux14~15_combout\);

-- Location: LCCOMB_X103_Y43_N2
\uart_unit|fifo_rx|r_array[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[3][5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|fifo_rx|r_array[3][5]~feeder_combout\);

-- Location: FF_X103_Y43_N3
\uart_unit|fifo_rx|r_array[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[3][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[3][5]~q\);

-- Location: FF_X101_Y42_N27
\uart_unit|fifo_rx|r_array[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[7][5]~q\);

-- Location: FF_X103_Y42_N15
\uart_unit|fifo_rx|r_array[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[5][5]~q\);

-- Location: FF_X101_Y42_N17
\uart_unit|fifo_rx|r_array[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[1][5]~q\);

-- Location: LCCOMB_X101_Y42_N16
\uart_unit|fifo_rx|Mux14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~12_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|r_ptr\(2))))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|r_array[5][5]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- ((\uart_unit|fifo_rx|r_array[1][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[5][5]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[1][5]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(2),
	combout => \uart_unit|fifo_rx|Mux14~12_combout\);

-- Location: LCCOMB_X101_Y42_N26
\uart_unit|fifo_rx|Mux14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~13_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux14~12_combout\ & ((\uart_unit|fifo_rx|r_array[7][5]~q\))) # (!\uart_unit|fifo_rx|Mux14~12_combout\ & (\uart_unit|fifo_rx|r_array[3][5]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux14~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[3][5]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[7][5]~q\,
	datad => \uart_unit|fifo_rx|Mux14~12_combout\,
	combout => \uart_unit|fifo_rx|Mux14~13_combout\);

-- Location: LCCOMB_X100_Y42_N4
\uart_unit|fifo_rx|Mux14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~16_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3)) # ((\uart_unit|fifo_rx|Mux14~13_combout\)))) # (!\uart_unit|fifo_rx|r_ptr\(0) & (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- (\uart_unit|fifo_rx|Mux14~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|Mux14~15_combout\,
	datad => \uart_unit|fifo_rx|Mux14~13_combout\,
	combout => \uart_unit|fifo_rx|Mux14~16_combout\);

-- Location: FF_X100_Y41_N15
\uart_unit|fifo_rx|r_array[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[15][5]~q\);

-- Location: FF_X101_Y41_N1
\uart_unit|fifo_rx|r_array[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[13][5]~q\);

-- Location: FF_X100_Y41_N21
\uart_unit|fifo_rx|r_array[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[9][5]~q\);

-- Location: LCCOMB_X105_Y41_N6
\uart_unit|fifo_rx|r_array[11][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[11][5]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(5),
	combout => \uart_unit|fifo_rx|r_array[11][5]~feeder_combout\);

-- Location: FF_X105_Y41_N7
\uart_unit|fifo_rx|r_array[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[11][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[11][5]~q\);

-- Location: LCCOMB_X100_Y41_N20
\uart_unit|fifo_rx|Mux14~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~17_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2)) # ((\uart_unit|fifo_rx|r_array[11][5]~q\)))) # (!\uart_unit|fifo_rx|r_ptr\(1) & (!\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|r_array[9][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[9][5]~q\,
	datad => \uart_unit|fifo_rx|r_array[11][5]~q\,
	combout => \uart_unit|fifo_rx|Mux14~17_combout\);

-- Location: LCCOMB_X101_Y41_N0
\uart_unit|fifo_rx|Mux14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~18_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux14~17_combout\ & (\uart_unit|fifo_rx|r_array[15][5]~q\)) # (!\uart_unit|fifo_rx|Mux14~17_combout\ & ((\uart_unit|fifo_rx|r_array[13][5]~q\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux14~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[15][5]~q\,
	datac => \uart_unit|fifo_rx|r_array[13][5]~q\,
	datad => \uart_unit|fifo_rx|Mux14~17_combout\,
	combout => \uart_unit|fifo_rx|Mux14~18_combout\);

-- Location: LCCOMB_X100_Y42_N22
\uart_unit|fifo_rx|Mux14~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~19_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux14~16_combout\ & ((\uart_unit|fifo_rx|Mux14~18_combout\))) # (!\uart_unit|fifo_rx|Mux14~16_combout\ & (\uart_unit|fifo_rx|Mux14~11_combout\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux14~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux14~11_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|Mux14~16_combout\,
	datad => \uart_unit|fifo_rx|Mux14~18_combout\,
	combout => \uart_unit|fifo_rx|Mux14~19_combout\);

-- Location: LCCOMB_X99_Y43_N30
\uart_unit|fifo_rx|Mux14~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux14~20_combout\ = (\uart_unit|fifo_rx|r_ptr\(4) & (\uart_unit|fifo_rx|Mux14~9_combout\)) # (!\uart_unit|fifo_rx|r_ptr\(4) & ((\uart_unit|fifo_rx|Mux14~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(4),
	datab => \uart_unit|fifo_rx|Mux14~9_combout\,
	datad => \uart_unit|fifo_rx|Mux14~19_combout\,
	combout => \uart_unit|fifo_rx|Mux14~20_combout\);

-- Location: LCCOMB_X99_Y43_N18
\r_transmit_data[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_transmit_data[5]~10_combout\ = (\uart_unit|fifo_rx|Mux14~20_combout\ & (!\r_transmit_data[4]~9\)) # (!\uart_unit|fifo_rx|Mux14~20_combout\ & ((\r_transmit_data[4]~9\) # (GND)))
-- \r_transmit_data[5]~11\ = CARRY((!\r_transmit_data[4]~9\) # (!\uart_unit|fifo_rx|Mux14~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux14~20_combout\,
	datad => VCC,
	cin => \r_transmit_data[4]~9\,
	combout => \r_transmit_data[5]~10_combout\,
	cout => \r_transmit_data[5]~11\);

-- Location: LCCOMB_X98_Y42_N16
\uart_unit|fifo_tx|r_array[26][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[26][5]~feeder_combout\ = \r_transmit_data[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[5]~10_combout\,
	combout => \uart_unit|fifo_tx|r_array[26][5]~feeder_combout\);

-- Location: FF_X98_Y42_N17
\uart_unit|fifo_tx|r_array[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[26][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[26][5]~q\);

-- Location: FF_X98_Y42_N15
\uart_unit|fifo_tx|r_array[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[18][5]~q\);

-- Location: LCCOMB_X98_Y42_N14
\uart_unit|transmitter|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~0_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|r_ptr\(3) & (\uart_unit|fifo_tx|r_array[26][5]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(3) 
-- & ((\uart_unit|fifo_tx|r_array[18][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_array[26][5]~q\,
	datac => \uart_unit|fifo_tx|r_array[18][5]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|transmitter|Selector11~0_combout\);

-- Location: FF_X99_Y42_N7
\uart_unit|fifo_tx|r_array[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[19][5]~q\);

-- Location: LCCOMB_X99_Y42_N24
\uart_unit|fifo_tx|r_array[27][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[27][5]~feeder_combout\ = \r_transmit_data[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[5]~10_combout\,
	combout => \uart_unit|fifo_tx|r_array[27][5]~feeder_combout\);

-- Location: FF_X99_Y42_N25
\uart_unit|fifo_tx|r_array[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[27][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[27][5]~q\);

-- Location: LCCOMB_X99_Y42_N6
\uart_unit|transmitter|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~1_combout\ = (\uart_unit|transmitter|Selector11~0_combout\ & (((\uart_unit|fifo_tx|r_array[27][5]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(0)))) # (!\uart_unit|transmitter|Selector11~0_combout\ & (\uart_unit|fifo_tx|r_ptr\(0) & 
-- (\uart_unit|fifo_tx|r_array[19][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector11~0_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[19][5]~q\,
	datad => \uart_unit|fifo_tx|r_array[27][5]~q\,
	combout => \uart_unit|transmitter|Selector11~1_combout\);

-- Location: LCCOMB_X96_Y43_N26
\uart_unit|fifo_tx|r_array[30][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[30][5]~feeder_combout\ = \r_transmit_data[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[5]~10_combout\,
	combout => \uart_unit|fifo_tx|r_array[30][5]~feeder_combout\);

-- Location: FF_X96_Y43_N27
\uart_unit|fifo_tx|r_array[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[30][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[30][5]~q\);

-- Location: FF_X97_Y43_N25
\uart_unit|fifo_tx|r_array[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[22][5]~q\);

-- Location: LCCOMB_X97_Y43_N2
\uart_unit|fifo_tx|r_array[23][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[23][5]~feeder_combout\ = \r_transmit_data[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[5]~10_combout\,
	combout => \uart_unit|fifo_tx|r_array[23][5]~feeder_combout\);

-- Location: FF_X97_Y43_N3
\uart_unit|fifo_tx|r_array[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[23][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[23][5]~q\);

-- Location: LCCOMB_X97_Y43_N24
\uart_unit|transmitter|Selector11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~7_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (\uart_unit|fifo_tx|r_ptr\(0))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|r_array[23][5]~q\))) # (!\uart_unit|fifo_tx|r_ptr\(0) & 
-- (\uart_unit|fifo_tx|r_array[22][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[22][5]~q\,
	datad => \uart_unit|fifo_tx|r_array[23][5]~q\,
	combout => \uart_unit|transmitter|Selector11~7_combout\);

-- Location: FF_X96_Y43_N1
\uart_unit|fifo_tx|r_array[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[31][5]~q\);

-- Location: LCCOMB_X96_Y43_N0
\uart_unit|transmitter|Selector11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~8_combout\ = (\uart_unit|transmitter|Selector11~7_combout\ & (((\uart_unit|fifo_tx|r_array[31][5]~q\) # (!\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|transmitter|Selector11~7_combout\ & 
-- (\uart_unit|fifo_tx|r_array[30][5]~q\ & ((\uart_unit|fifo_tx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[30][5]~q\,
	datab => \uart_unit|transmitter|Selector11~7_combout\,
	datac => \uart_unit|fifo_tx|r_array[31][5]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|transmitter|Selector11~8_combout\);

-- Location: LCCOMB_X99_Y45_N10
\uart_unit|fifo_tx|r_array[17][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[17][5]~feeder_combout\ = \r_transmit_data[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[5]~10_combout\,
	combout => \uart_unit|fifo_tx|r_array[17][5]~feeder_combout\);

-- Location: FF_X99_Y45_N11
\uart_unit|fifo_tx|r_array[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[17][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[17][5]~q\);

-- Location: FF_X99_Y45_N9
\uart_unit|fifo_tx|r_array[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[25][5]~q\);

-- Location: FF_X100_Y45_N1
\uart_unit|fifo_tx|r_array[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[24][5]~q\);

-- Location: FF_X100_Y45_N11
\uart_unit|fifo_tx|r_array[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[16][5]~q\);

-- Location: LCCOMB_X100_Y45_N10
\uart_unit|transmitter|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~4_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_array[24][5]~q\) # ((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_array[16][5]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[24][5]~q\,
	datac => \uart_unit|fifo_tx|r_array[16][5]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector11~4_combout\);

-- Location: LCCOMB_X99_Y45_N8
\uart_unit|transmitter|Selector11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~5_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector11~4_combout\ & ((\uart_unit|fifo_tx|r_array[25][5]~q\))) # (!\uart_unit|transmitter|Selector11~4_combout\ & 
-- (\uart_unit|fifo_tx|r_array[17][5]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|transmitter|Selector11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[17][5]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[25][5]~q\,
	datad => \uart_unit|transmitter|Selector11~4_combout\,
	combout => \uart_unit|transmitter|Selector11~5_combout\);

-- Location: LCCOMB_X100_Y40_N14
\uart_unit|fifo_tx|r_array[21][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[21][5]~feeder_combout\ = \r_transmit_data[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[5]~10_combout\,
	combout => \uart_unit|fifo_tx|r_array[21][5]~feeder_combout\);

-- Location: FF_X100_Y40_N15
\uart_unit|fifo_tx|r_array[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[21][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[21][5]~q\);

-- Location: FF_X100_Y40_N1
\uart_unit|fifo_tx|r_array[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[20][5]~q\);

-- Location: LCCOMB_X100_Y40_N0
\uart_unit|transmitter|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~2_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_array[21][5]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(0) 
-- & ((\uart_unit|fifo_tx|r_array[20][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[21][5]~q\,
	datac => \uart_unit|fifo_tx|r_array[20][5]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector11~2_combout\);

-- Location: FF_X99_Y40_N5
\uart_unit|fifo_tx|r_array[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[29][5]~q\);

-- Location: LCCOMB_X99_Y40_N6
\uart_unit|fifo_tx|r_array[28][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[28][5]~feeder_combout\ = \r_transmit_data[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[5]~10_combout\,
	combout => \uart_unit|fifo_tx|r_array[28][5]~feeder_combout\);

-- Location: FF_X99_Y40_N7
\uart_unit|fifo_tx|r_array[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[28][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[28][5]~q\);

-- Location: LCCOMB_X99_Y40_N4
\uart_unit|transmitter|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~3_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector11~2_combout\ & (\uart_unit|fifo_tx|r_array[29][5]~q\)) # (!\uart_unit|transmitter|Selector11~2_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[28][5]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (\uart_unit|transmitter|Selector11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|transmitter|Selector11~2_combout\,
	datac => \uart_unit|fifo_tx|r_array[29][5]~q\,
	datad => \uart_unit|fifo_tx|r_array[28][5]~q\,
	combout => \uart_unit|transmitter|Selector11~3_combout\);

-- Location: LCCOMB_X96_Y44_N24
\uart_unit|transmitter|Selector11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~6_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|fifo_tx|r_ptr\(2))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector11~3_combout\))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(2) & (\uart_unit|transmitter|Selector11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector11~5_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_ptr\(2),
	datad => \uart_unit|transmitter|Selector11~3_combout\,
	combout => \uart_unit|transmitter|Selector11~6_combout\);

-- Location: LCCOMB_X96_Y44_N22
\uart_unit|transmitter|Selector11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~9_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector11~6_combout\ & ((\uart_unit|transmitter|Selector11~8_combout\))) # (!\uart_unit|transmitter|Selector11~6_combout\ & 
-- (\uart_unit|transmitter|Selector11~1_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector11~1_combout\,
	datab => \uart_unit|transmitter|Selector11~8_combout\,
	datac => \uart_unit|fifo_tx|r_ptr\(1),
	datad => \uart_unit|transmitter|Selector11~6_combout\,
	combout => \uart_unit|transmitter|Selector11~9_combout\);

-- Location: FF_X99_Y43_N19
\uart_unit|fifo_tx|r_array[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[15][5]~q\);

-- Location: FF_X99_Y46_N25
\uart_unit|fifo_tx|r_array[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[13][5]~q\);

-- Location: FF_X99_Y46_N11
\uart_unit|fifo_tx|r_array[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[9][5]~q\);

-- Location: LCCOMB_X100_Y46_N28
\uart_unit|fifo_tx|r_array[11][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[11][5]~feeder_combout\ = \r_transmit_data[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[5]~10_combout\,
	combout => \uart_unit|fifo_tx|r_array[11][5]~feeder_combout\);

-- Location: FF_X100_Y46_N29
\uart_unit|fifo_tx|r_array[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[11][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[11][5]~q\);

-- Location: LCCOMB_X99_Y46_N10
\uart_unit|transmitter|Selector11~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~17_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_ptr\(2)) # ((\uart_unit|fifo_tx|r_array[11][5]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (!\uart_unit|fifo_tx|r_ptr\(2) & 
-- (\uart_unit|fifo_tx|r_array[9][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[9][5]~q\,
	datad => \uart_unit|fifo_tx|r_array[11][5]~q\,
	combout => \uart_unit|transmitter|Selector11~17_combout\);

-- Location: LCCOMB_X99_Y46_N24
\uart_unit|transmitter|Selector11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~18_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector11~17_combout\ & (\uart_unit|fifo_tx|r_array[15][5]~q\)) # (!\uart_unit|transmitter|Selector11~17_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[13][5]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|transmitter|Selector11~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[15][5]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[13][5]~q\,
	datad => \uart_unit|transmitter|Selector11~17_combout\,
	combout => \uart_unit|transmitter|Selector11~18_combout\);

-- Location: FF_X98_Y41_N25
\uart_unit|fifo_tx|r_array[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[4][5]~q\);

-- Location: FF_X98_Y41_N9
\uart_unit|fifo_tx|r_array[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[6][5]~q\);

-- Location: LCCOMB_X99_Y41_N0
\uart_unit|fifo_tx|r_array[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[2][5]~feeder_combout\ = \r_transmit_data[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[5]~10_combout\,
	combout => \uart_unit|fifo_tx|r_array[2][5]~feeder_combout\);

-- Location: FF_X99_Y41_N1
\uart_unit|fifo_tx|r_array[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[2][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[2][5]~q\);

-- Location: FF_X99_Y41_N27
\uart_unit|fifo_tx|r_array[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[0][5]~q\);

-- Location: LCCOMB_X99_Y41_N26
\uart_unit|transmitter|Selector11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~14_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[2][5]~q\) # ((\uart_unit|fifo_tx|r_ptr\(2))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|fifo_tx|r_array[0][5]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[2][5]~q\,
	datac => \uart_unit|fifo_tx|r_array[0][5]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(2),
	combout => \uart_unit|transmitter|Selector11~14_combout\);

-- Location: LCCOMB_X98_Y41_N8
\uart_unit|transmitter|Selector11~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~15_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector11~14_combout\ & ((\uart_unit|fifo_tx|r_array[6][5]~q\))) # (!\uart_unit|transmitter|Selector11~14_combout\ & 
-- (\uart_unit|fifo_tx|r_array[4][5]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|transmitter|Selector11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[4][5]~q\,
	datac => \uart_unit|fifo_tx|r_array[6][5]~q\,
	datad => \uart_unit|transmitter|Selector11~14_combout\,
	combout => \uart_unit|transmitter|Selector11~15_combout\);

-- Location: FF_X98_Y46_N13
\uart_unit|fifo_tx|r_array[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[3][5]~q\);

-- Location: FF_X98_Y46_N25
\uart_unit|fifo_tx|r_array[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[7][5]~q\);

-- Location: FF_X98_Y45_N5
\uart_unit|fifo_tx|r_array[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[5][5]~q\);

-- Location: FF_X98_Y45_N1
\uart_unit|fifo_tx|r_array[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[1][5]~q\);

-- Location: LCCOMB_X98_Y45_N0
\uart_unit|transmitter|Selector11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~12_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_array[5][5]~q\) # ((\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|r_array[1][5]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[5][5]~q\,
	datac => \uart_unit|fifo_tx|r_array[1][5]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|transmitter|Selector11~12_combout\);

-- Location: LCCOMB_X98_Y46_N24
\uart_unit|transmitter|Selector11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~13_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector11~12_combout\ & ((\uart_unit|fifo_tx|r_array[7][5]~q\))) # (!\uart_unit|transmitter|Selector11~12_combout\ & 
-- (\uart_unit|fifo_tx|r_array[3][5]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[3][5]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_array[7][5]~q\,
	datad => \uart_unit|transmitter|Selector11~12_combout\,
	combout => \uart_unit|transmitter|Selector11~13_combout\);

-- Location: LCCOMB_X98_Y46_N26
\uart_unit|transmitter|Selector11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~16_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (\uart_unit|fifo_tx|r_ptr\(0))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector11~13_combout\))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|transmitter|Selector11~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|transmitter|Selector11~15_combout\,
	datad => \uart_unit|transmitter|Selector11~13_combout\,
	combout => \uart_unit|transmitter|Selector11~16_combout\);

-- Location: LCCOMB_X98_Y44_N10
\uart_unit|fifo_tx|r_array[14][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[14][5]~feeder_combout\ = \r_transmit_data[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[5]~10_combout\,
	combout => \uart_unit|fifo_tx|r_array[14][5]~feeder_combout\);

-- Location: FF_X98_Y44_N11
\uart_unit|fifo_tx|r_array[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[14][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[14][5]~q\);

-- Location: FF_X98_Y44_N9
\uart_unit|fifo_tx|r_array[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[12][5]~q\);

-- Location: LCCOMB_X99_Y44_N8
\uart_unit|fifo_tx|r_array[10][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[10][5]~feeder_combout\ = \r_transmit_data[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[5]~10_combout\,
	combout => \uart_unit|fifo_tx|r_array[10][5]~feeder_combout\);

-- Location: FF_X99_Y44_N9
\uart_unit|fifo_tx|r_array[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[10][5]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[10][5]~q\);

-- Location: FF_X99_Y44_N27
\uart_unit|fifo_tx|r_array[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[5]~10_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[8][5]~q\);

-- Location: LCCOMB_X99_Y44_N26
\uart_unit|transmitter|Selector11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~10_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1) & (\uart_unit|fifo_tx|r_array[10][5]~q\)) # 
-- (!\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[8][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[10][5]~q\,
	datac => \uart_unit|fifo_tx|r_array[8][5]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|transmitter|Selector11~10_combout\);

-- Location: LCCOMB_X98_Y44_N8
\uart_unit|transmitter|Selector11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~11_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector11~10_combout\ & (\uart_unit|fifo_tx|r_array[14][5]~q\)) # (!\uart_unit|transmitter|Selector11~10_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[12][5]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|transmitter|Selector11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[14][5]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[12][5]~q\,
	datad => \uart_unit|transmitter|Selector11~10_combout\,
	combout => \uart_unit|transmitter|Selector11~11_combout\);

-- Location: LCCOMB_X98_Y46_N8
\uart_unit|transmitter|Selector11~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~19_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector11~16_combout\ & (\uart_unit|transmitter|Selector11~18_combout\)) # (!\uart_unit|transmitter|Selector11~16_combout\ & 
-- ((\uart_unit|transmitter|Selector11~11_combout\))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|transmitter|Selector11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|transmitter|Selector11~18_combout\,
	datac => \uart_unit|transmitter|Selector11~16_combout\,
	datad => \uart_unit|transmitter|Selector11~11_combout\,
	combout => \uart_unit|transmitter|Selector11~19_combout\);

-- Location: LCCOMB_X97_Y44_N4
\uart_unit|transmitter|Selector11~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector11~20_combout\ = (\uart_unit|fifo_tx|r_ptr\(4) & (\uart_unit|transmitter|Selector11~9_combout\)) # (!\uart_unit|fifo_tx|r_ptr\(4) & ((\uart_unit|transmitter|Selector11~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(4),
	datab => \uart_unit|transmitter|Selector11~9_combout\,
	datad => \uart_unit|transmitter|Selector11~19_combout\,
	combout => \uart_unit|transmitter|Selector11~20_combout\);

-- Location: LCCOMB_X102_Y40_N26
\uart_unit|fifo_rx|r_array[24][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[24][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[24][6]~feeder_combout\);

-- Location: FF_X102_Y40_N27
\uart_unit|fifo_rx|r_array[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[24][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[24][6]~q\);

-- Location: FF_X101_Y43_N9
\uart_unit|fifo_rx|r_array[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[25][6]~q\);

-- Location: LCCOMB_X105_Y43_N8
\uart_unit|fifo_rx|r_array[17][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[17][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[17][6]~feeder_combout\);

-- Location: FF_X105_Y43_N9
\uart_unit|fifo_rx|r_array[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[17][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[17][6]~q\);

-- Location: FF_X101_Y43_N11
\uart_unit|fifo_rx|r_array[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[16][6]~q\);

-- Location: LCCOMB_X101_Y43_N10
\uart_unit|fifo_rx|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~4_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_array[17][6]~q\) # ((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_array[16][6]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[17][6]~q\,
	datac => \uart_unit|fifo_rx|r_array[16][6]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux13~4_combout\);

-- Location: LCCOMB_X101_Y43_N8
\uart_unit|fifo_rx|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~5_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux13~4_combout\ & ((\uart_unit|fifo_rx|r_array[25][6]~q\))) # (!\uart_unit|fifo_rx|Mux13~4_combout\ & (\uart_unit|fifo_rx|r_array[24][6]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[24][6]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[25][6]~q\,
	datad => \uart_unit|fifo_rx|Mux13~4_combout\,
	combout => \uart_unit|fifo_rx|Mux13~5_combout\);

-- Location: LCCOMB_X102_Y42_N30
\uart_unit|fifo_rx|r_array[21][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[21][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[21][6]~feeder_combout\);

-- Location: FF_X102_Y42_N31
\uart_unit|fifo_rx|r_array[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[21][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[21][6]~q\);

-- Location: FF_X102_Y39_N19
\uart_unit|fifo_rx|r_array[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[29][6]~q\);

-- Location: LCCOMB_X103_Y39_N10
\uart_unit|fifo_rx|r_array[28][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[28][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[28][6]~feeder_combout\);

-- Location: FF_X103_Y39_N11
\uart_unit|fifo_rx|r_array[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[28][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[28][6]~q\);

-- Location: FF_X102_Y39_N21
\uart_unit|fifo_rx|r_array[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[20][6]~q\);

-- Location: LCCOMB_X102_Y39_N20
\uart_unit|fifo_rx|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~2_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[28][6]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|r_array[20][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[28][6]~q\,
	datac => \uart_unit|fifo_rx|r_array[20][6]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux13~2_combout\);

-- Location: LCCOMB_X102_Y39_N18
\uart_unit|fifo_rx|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~3_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux13~2_combout\ & ((\uart_unit|fifo_rx|r_array[29][6]~q\))) # (!\uart_unit|fifo_rx|Mux13~2_combout\ & (\uart_unit|fifo_rx|r_array[21][6]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[21][6]~q\,
	datac => \uart_unit|fifo_rx|r_array[29][6]~q\,
	datad => \uart_unit|fifo_rx|Mux13~2_combout\,
	combout => \uart_unit|fifo_rx|Mux13~3_combout\);

-- Location: LCCOMB_X101_Y43_N26
\uart_unit|fifo_rx|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~6_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_ptr\(2))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux13~3_combout\))) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- (\uart_unit|fifo_rx|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|Mux13~5_combout\,
	datad => \uart_unit|fifo_rx|Mux13~3_combout\,
	combout => \uart_unit|fifo_rx|Mux13~6_combout\);

-- Location: LCCOMB_X103_Y41_N4
\uart_unit|fifo_rx|r_array[26][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[26][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[26][6]~feeder_combout\);

-- Location: FF_X103_Y41_N5
\uart_unit|fifo_rx|r_array[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[26][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[26][6]~q\);

-- Location: FF_X103_Y43_N5
\uart_unit|fifo_rx|r_array[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[19][6]~q\);

-- Location: FF_X102_Y41_N29
\uart_unit|fifo_rx|r_array[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[18][6]~q\);

-- Location: LCCOMB_X102_Y41_N28
\uart_unit|fifo_rx|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~0_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_array[19][6]~q\) # ((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_array[18][6]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[19][6]~q\,
	datac => \uart_unit|fifo_rx|r_array[18][6]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux13~0_combout\);

-- Location: FF_X102_Y41_N19
\uart_unit|fifo_rx|r_array[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[27][6]~q\);

-- Location: LCCOMB_X102_Y41_N18
\uart_unit|fifo_rx|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~1_combout\ = (\uart_unit|fifo_rx|Mux13~0_combout\ & (((\uart_unit|fifo_rx|r_array[27][6]~q\) # (!\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|Mux13~0_combout\ & (\uart_unit|fifo_rx|r_array[26][6]~q\ & 
-- ((\uart_unit|fifo_rx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[26][6]~q\,
	datab => \uart_unit|fifo_rx|Mux13~0_combout\,
	datac => \uart_unit|fifo_rx|r_array[27][6]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux13~1_combout\);

-- Location: LCCOMB_X105_Y41_N20
\uart_unit|fifo_rx|r_array[23][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[23][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[23][6]~feeder_combout\);

-- Location: FF_X105_Y41_N21
\uart_unit|fifo_rx|r_array[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[23][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[23][6]~q\);

-- Location: FF_X105_Y39_N25
\uart_unit|fifo_rx|r_array[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[31][6]~q\);

-- Location: LCCOMB_X105_Y43_N2
\uart_unit|fifo_rx|r_array[30][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[30][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[30][6]~feeder_combout\);

-- Location: FF_X105_Y43_N3
\uart_unit|fifo_rx|r_array[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[30][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[30][6]~q\);

-- Location: FF_X105_Y39_N3
\uart_unit|fifo_rx|r_array[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[22][6]~q\);

-- Location: LCCOMB_X105_Y39_N2
\uart_unit|fifo_rx|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~7_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[30][6]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|r_array[22][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[30][6]~q\,
	datac => \uart_unit|fifo_rx|r_array[22][6]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux13~7_combout\);

-- Location: LCCOMB_X105_Y39_N24
\uart_unit|fifo_rx|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~8_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux13~7_combout\ & ((\uart_unit|fifo_rx|r_array[31][6]~q\))) # (!\uart_unit|fifo_rx|Mux13~7_combout\ & (\uart_unit|fifo_rx|r_array[23][6]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_array[23][6]~q\,
	datac => \uart_unit|fifo_rx|r_array[31][6]~q\,
	datad => \uart_unit|fifo_rx|Mux13~7_combout\,
	combout => \uart_unit|fifo_rx|Mux13~8_combout\);

-- Location: LCCOMB_X101_Y43_N4
\uart_unit|fifo_rx|Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~9_combout\ = (\uart_unit|fifo_rx|Mux13~6_combout\ & (((\uart_unit|fifo_rx|Mux13~8_combout\)) # (!\uart_unit|fifo_rx|r_ptr\(1)))) # (!\uart_unit|fifo_rx|Mux13~6_combout\ & (\uart_unit|fifo_rx|r_ptr\(1) & 
-- (\uart_unit|fifo_rx|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux13~6_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|Mux13~1_combout\,
	datad => \uart_unit|fifo_rx|Mux13~8_combout\,
	combout => \uart_unit|fifo_rx|Mux13~9_combout\);

-- Location: LCCOMB_X105_Y41_N14
\uart_unit|fifo_rx|r_array[11][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[11][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[11][6]~feeder_combout\);

-- Location: FF_X105_Y41_N15
\uart_unit|fifo_rx|r_array[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[11][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[11][6]~q\);

-- Location: FF_X100_Y41_N11
\uart_unit|fifo_rx|r_array[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[15][6]~q\);

-- Location: LCCOMB_X101_Y41_N2
\uart_unit|fifo_rx|r_array[13][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[13][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[13][6]~feeder_combout\);

-- Location: FF_X101_Y41_N3
\uart_unit|fifo_rx|r_array[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[13][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[13][6]~q\);

-- Location: FF_X100_Y41_N17
\uart_unit|fifo_rx|r_array[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[9][6]~q\);

-- Location: LCCOMB_X100_Y41_N16
\uart_unit|fifo_rx|Mux13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~17_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_array[13][6]~q\) # ((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_array[9][6]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[13][6]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[9][6]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux13~17_combout\);

-- Location: LCCOMB_X100_Y41_N10
\uart_unit|fifo_rx|Mux13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~18_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux13~17_combout\ & ((\uart_unit|fifo_rx|r_array[15][6]~q\))) # (!\uart_unit|fifo_rx|Mux13~17_combout\ & (\uart_unit|fifo_rx|r_array[11][6]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux13~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[11][6]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[15][6]~q\,
	datad => \uart_unit|fifo_rx|Mux13~17_combout\,
	combout => \uart_unit|fifo_rx|Mux13~18_combout\);

-- Location: LCCOMB_X103_Y42_N16
\uart_unit|fifo_rx|r_array[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[5][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[5][6]~feeder_combout\);

-- Location: FF_X103_Y42_N17
\uart_unit|fifo_rx|r_array[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[5][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[5][6]~q\);

-- Location: FF_X101_Y42_N15
\uart_unit|fifo_rx|r_array[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[7][6]~q\);

-- Location: FF_X101_Y42_N25
\uart_unit|fifo_rx|r_array[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[1][6]~q\);

-- Location: FF_X103_Y43_N19
\uart_unit|fifo_rx|r_array[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[3][6]~q\);

-- Location: LCCOMB_X101_Y42_N24
\uart_unit|fifo_rx|Mux13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~10_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2)) # ((\uart_unit|fifo_rx|r_array[3][6]~q\)))) # (!\uart_unit|fifo_rx|r_ptr\(1) & (!\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|r_array[1][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[1][6]~q\,
	datad => \uart_unit|fifo_rx|r_array[3][6]~q\,
	combout => \uart_unit|fifo_rx|Mux13~10_combout\);

-- Location: LCCOMB_X101_Y42_N14
\uart_unit|fifo_rx|Mux13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~11_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux13~10_combout\ & ((\uart_unit|fifo_rx|r_array[7][6]~q\))) # (!\uart_unit|fifo_rx|Mux13~10_combout\ & (\uart_unit|fifo_rx|r_array[5][6]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[5][6]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[7][6]~q\,
	datad => \uart_unit|fifo_rx|Mux13~10_combout\,
	combout => \uart_unit|fifo_rx|Mux13~11_combout\);

-- Location: LCCOMB_X99_Y39_N8
\uart_unit|fifo_rx|r_array[10][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[10][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[10][6]~feeder_combout\);

-- Location: FF_X99_Y39_N9
\uart_unit|fifo_rx|r_array[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[10][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[10][6]~q\);

-- Location: FF_X100_Y39_N11
\uart_unit|fifo_rx|r_array[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[14][6]~q\);

-- Location: LCCOMB_X101_Y39_N6
\uart_unit|fifo_rx|r_array[12][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[12][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[12][6]~feeder_combout\);

-- Location: FF_X101_Y39_N7
\uart_unit|fifo_rx|r_array[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[12][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[12][6]~q\);

-- Location: FF_X100_Y39_N13
\uart_unit|fifo_rx|r_array[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[8][6]~q\);

-- Location: LCCOMB_X100_Y39_N12
\uart_unit|fifo_rx|Mux13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~12_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|r_ptr\(2))))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|r_array[12][6]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- ((\uart_unit|fifo_rx|r_array[8][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[12][6]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[8][6]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(2),
	combout => \uart_unit|fifo_rx|Mux13~12_combout\);

-- Location: LCCOMB_X100_Y39_N10
\uart_unit|fifo_rx|Mux13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~13_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux13~12_combout\ & ((\uart_unit|fifo_rx|r_array[14][6]~q\))) # (!\uart_unit|fifo_rx|Mux13~12_combout\ & (\uart_unit|fifo_rx|r_array[10][6]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux13~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[10][6]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[14][6]~q\,
	datad => \uart_unit|fifo_rx|Mux13~12_combout\,
	combout => \uart_unit|fifo_rx|Mux13~13_combout\);

-- Location: LCCOMB_X101_Y40_N16
\uart_unit|fifo_rx|r_array[4][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[4][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[4][6]~feeder_combout\);

-- Location: FF_X101_Y40_N17
\uart_unit|fifo_rx|r_array[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[4][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[4][6]~q\);

-- Location: FF_X100_Y42_N11
\uart_unit|fifo_rx|r_array[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[6][6]~q\);

-- Location: LCCOMB_X102_Y42_N12
\uart_unit|fifo_rx|r_array[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[2][6]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(6),
	combout => \uart_unit|fifo_rx|r_array[2][6]~feeder_combout\);

-- Location: FF_X102_Y42_N13
\uart_unit|fifo_rx|r_array[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[2][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[2][6]~q\);

-- Location: FF_X100_Y42_N25
\uart_unit|fifo_rx|r_array[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[0][6]~q\);

-- Location: LCCOMB_X100_Y42_N24
\uart_unit|fifo_rx|Mux13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~14_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_array[2][6]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(1) & 
-- ((\uart_unit|fifo_rx|r_array[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[2][6]~q\,
	datac => \uart_unit|fifo_rx|r_array[0][6]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux13~14_combout\);

-- Location: LCCOMB_X100_Y42_N10
\uart_unit|fifo_rx|Mux13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~15_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux13~14_combout\ & ((\uart_unit|fifo_rx|r_array[6][6]~q\))) # (!\uart_unit|fifo_rx|Mux13~14_combout\ & (\uart_unit|fifo_rx|r_array[4][6]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[4][6]~q\,
	datac => \uart_unit|fifo_rx|r_array[6][6]~q\,
	datad => \uart_unit|fifo_rx|Mux13~14_combout\,
	combout => \uart_unit|fifo_rx|Mux13~15_combout\);

-- Location: LCCOMB_X101_Y43_N6
\uart_unit|fifo_rx|Mux13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~16_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (\uart_unit|fifo_rx|r_ptr\(3))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|Mux13~13_combout\)) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|Mux13~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|Mux13~13_combout\,
	datad => \uart_unit|fifo_rx|Mux13~15_combout\,
	combout => \uart_unit|fifo_rx|Mux13~16_combout\);

-- Location: LCCOMB_X101_Y43_N16
\uart_unit|fifo_rx|Mux13~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~19_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux13~16_combout\ & (\uart_unit|fifo_rx|Mux13~18_combout\)) # (!\uart_unit|fifo_rx|Mux13~16_combout\ & ((\uart_unit|fifo_rx|Mux13~11_combout\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|Mux13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux13~18_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|Mux13~11_combout\,
	datad => \uart_unit|fifo_rx|Mux13~16_combout\,
	combout => \uart_unit|fifo_rx|Mux13~19_combout\);

-- Location: LCCOMB_X101_Y43_N2
\uart_unit|fifo_rx|Mux13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux13~20_combout\ = (\uart_unit|fifo_rx|r_ptr\(4) & (\uart_unit|fifo_rx|Mux13~9_combout\)) # (!\uart_unit|fifo_rx|r_ptr\(4) & ((\uart_unit|fifo_rx|Mux13~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(4),
	datac => \uart_unit|fifo_rx|Mux13~9_combout\,
	datad => \uart_unit|fifo_rx|Mux13~19_combout\,
	combout => \uart_unit|fifo_rx|Mux13~20_combout\);

-- Location: LCCOMB_X99_Y43_N20
\r_transmit_data[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_transmit_data[6]~12_combout\ = (\uart_unit|fifo_rx|Mux13~20_combout\ & (\r_transmit_data[5]~11\ $ (GND))) # (!\uart_unit|fifo_rx|Mux13~20_combout\ & (!\r_transmit_data[5]~11\ & VCC))
-- \r_transmit_data[6]~13\ = CARRY((\uart_unit|fifo_rx|Mux13~20_combout\ & !\r_transmit_data[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|fifo_rx|Mux13~20_combout\,
	datad => VCC,
	cin => \r_transmit_data[5]~11\,
	combout => \r_transmit_data[6]~12_combout\,
	cout => \r_transmit_data[6]~13\);

-- Location: FF_X99_Y43_N21
\uart_unit|fifo_tx|r_array[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[15][6]~q\);

-- Location: FF_X98_Y40_N25
\uart_unit|fifo_tx|r_array[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[11][6]~q\);

-- Location: LCCOMB_X99_Y46_N0
\uart_unit|fifo_tx|r_array[13][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[13][6]~feeder_combout\ = \r_transmit_data[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[6]~12_combout\,
	combout => \uart_unit|fifo_tx|r_array[13][6]~feeder_combout\);

-- Location: FF_X99_Y46_N1
\uart_unit|fifo_tx|r_array[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[13][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[13][6]~q\);

-- Location: FF_X99_Y46_N15
\uart_unit|fifo_tx|r_array[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[9][6]~q\);

-- Location: LCCOMB_X99_Y46_N14
\uart_unit|transmitter|Selector10~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~17_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_array[13][6]~q\) # ((\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|r_array[9][6]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[13][6]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[9][6]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|transmitter|Selector10~17_combout\);

-- Location: LCCOMB_X98_Y40_N24
\uart_unit|transmitter|Selector10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~18_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector10~17_combout\ & (\uart_unit|fifo_tx|r_array[15][6]~q\)) # (!\uart_unit|transmitter|Selector10~17_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[11][6]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector10~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[15][6]~q\,
	datac => \uart_unit|fifo_tx|r_array[11][6]~q\,
	datad => \uart_unit|transmitter|Selector10~17_combout\,
	combout => \uart_unit|transmitter|Selector10~18_combout\);

-- Location: LCCOMB_X98_Y40_N0
\uart_unit|fifo_tx|r_array[7][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[7][6]~feeder_combout\ = \r_transmit_data[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[6]~12_combout\,
	combout => \uart_unit|fifo_tx|r_array[7][6]~feeder_combout\);

-- Location: FF_X98_Y40_N1
\uart_unit|fifo_tx|r_array[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[7][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[7][6]~q\);

-- Location: FF_X98_Y45_N31
\uart_unit|fifo_tx|r_array[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[5][6]~q\);

-- Location: FF_X98_Y45_N29
\uart_unit|fifo_tx|r_array[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[1][6]~q\);

-- Location: FF_X99_Y43_N1
\uart_unit|fifo_tx|r_array[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[3][6]~q\);

-- Location: LCCOMB_X98_Y45_N28
\uart_unit|transmitter|Selector10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~10_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & (\uart_unit|fifo_tx|r_ptr\(1))) # (!\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[3][6]~q\))) # (!\uart_unit|fifo_tx|r_ptr\(1) & 
-- (\uart_unit|fifo_tx|r_array[1][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_array[1][6]~q\,
	datad => \uart_unit|fifo_tx|r_array[3][6]~q\,
	combout => \uart_unit|transmitter|Selector10~10_combout\);

-- Location: LCCOMB_X98_Y45_N30
\uart_unit|transmitter|Selector10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~11_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector10~10_combout\ & (\uart_unit|fifo_tx|r_array[7][6]~q\)) # (!\uart_unit|transmitter|Selector10~10_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[5][6]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|transmitter|Selector10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[7][6]~q\,
	datac => \uart_unit|fifo_tx|r_array[5][6]~q\,
	datad => \uart_unit|transmitter|Selector10~10_combout\,
	combout => \uart_unit|transmitter|Selector10~11_combout\);

-- Location: LCCOMB_X99_Y41_N8
\uart_unit|fifo_tx|r_array[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[2][6]~feeder_combout\ = \r_transmit_data[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[6]~12_combout\,
	combout => \uart_unit|fifo_tx|r_array[2][6]~feeder_combout\);

-- Location: FF_X99_Y41_N9
\uart_unit|fifo_tx|r_array[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[2][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[2][6]~q\);

-- Location: FF_X99_Y41_N11
\uart_unit|fifo_tx|r_array[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[0][6]~q\);

-- Location: LCCOMB_X99_Y41_N10
\uart_unit|transmitter|Selector10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~14_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[2][6]~q\) # ((\uart_unit|fifo_tx|r_ptr\(2))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|fifo_tx|r_array[0][6]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[2][6]~q\,
	datac => \uart_unit|fifo_tx|r_array[0][6]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(2),
	combout => \uart_unit|transmitter|Selector10~14_combout\);

-- Location: FF_X98_Y41_N31
\uart_unit|fifo_tx|r_array[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[6][6]~q\);

-- Location: FF_X98_Y41_N23
\uart_unit|fifo_tx|r_array[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[4][6]~q\);

-- Location: LCCOMB_X98_Y41_N30
\uart_unit|transmitter|Selector10~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~15_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector10~14_combout\ & (\uart_unit|fifo_tx|r_array[6][6]~q\)) # (!\uart_unit|transmitter|Selector10~14_combout\ & 
-- ((\uart_unit|fifo_tx|r_array[4][6]~q\))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (\uart_unit|transmitter|Selector10~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|transmitter|Selector10~14_combout\,
	datac => \uart_unit|fifo_tx|r_array[6][6]~q\,
	datad => \uart_unit|fifo_tx|r_array[4][6]~q\,
	combout => \uart_unit|transmitter|Selector10~15_combout\);

-- Location: LCCOMB_X99_Y44_N28
\uart_unit|fifo_tx|r_array[10][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[10][6]~feeder_combout\ = \r_transmit_data[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[6]~12_combout\,
	combout => \uart_unit|fifo_tx|r_array[10][6]~feeder_combout\);

-- Location: FF_X99_Y44_N29
\uart_unit|fifo_tx|r_array[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[10][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[10][6]~q\);

-- Location: FF_X98_Y44_N15
\uart_unit|fifo_tx|r_array[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[14][6]~q\);

-- Location: LCCOMB_X98_Y44_N24
\uart_unit|fifo_tx|r_array[12][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[12][6]~feeder_combout\ = \r_transmit_data[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[6]~12_combout\,
	combout => \uart_unit|fifo_tx|r_array[12][6]~feeder_combout\);

-- Location: FF_X98_Y44_N25
\uart_unit|fifo_tx|r_array[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[12][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[12][6]~q\);

-- Location: FF_X99_Y44_N3
\uart_unit|fifo_tx|r_array[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[8][6]~q\);

-- Location: LCCOMB_X99_Y44_N2
\uart_unit|transmitter|Selector10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~12_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_array[12][6]~q\) # ((\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|r_array[8][6]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[12][6]~q\,
	datac => \uart_unit|fifo_tx|r_array[8][6]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|transmitter|Selector10~12_combout\);

-- Location: LCCOMB_X98_Y44_N14
\uart_unit|transmitter|Selector10~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~13_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector10~12_combout\ & ((\uart_unit|fifo_tx|r_array[14][6]~q\))) # (!\uart_unit|transmitter|Selector10~12_combout\ & 
-- (\uart_unit|fifo_tx|r_array[10][6]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector10~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[10][6]~q\,
	datac => \uart_unit|fifo_tx|r_array[14][6]~q\,
	datad => \uart_unit|transmitter|Selector10~12_combout\,
	combout => \uart_unit|transmitter|Selector10~13_combout\);

-- Location: LCCOMB_X98_Y40_N10
\uart_unit|transmitter|Selector10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~16_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_ptr\(3))) # (!\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector10~13_combout\))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(3) & (\uart_unit|transmitter|Selector10~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_ptr\(3),
	datac => \uart_unit|transmitter|Selector10~15_combout\,
	datad => \uart_unit|transmitter|Selector10~13_combout\,
	combout => \uart_unit|transmitter|Selector10~16_combout\);

-- Location: LCCOMB_X98_Y40_N18
\uart_unit|transmitter|Selector10~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~19_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector10~16_combout\ & (\uart_unit|transmitter|Selector10~18_combout\)) # (!\uart_unit|transmitter|Selector10~16_combout\ & 
-- ((\uart_unit|transmitter|Selector10~11_combout\))))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|transmitter|Selector10~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|transmitter|Selector10~18_combout\,
	datac => \uart_unit|transmitter|Selector10~11_combout\,
	datad => \uart_unit|transmitter|Selector10~16_combout\,
	combout => \uart_unit|transmitter|Selector10~19_combout\);

-- Location: FF_X97_Y43_N31
\uart_unit|fifo_tx|r_array[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[22][6]~q\);

-- Location: LCCOMB_X96_Y43_N14
\uart_unit|fifo_tx|r_array[30][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[30][6]~feeder_combout\ = \r_transmit_data[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[6]~12_combout\,
	combout => \uart_unit|fifo_tx|r_array[30][6]~feeder_combout\);

-- Location: FF_X96_Y43_N15
\uart_unit|fifo_tx|r_array[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[30][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[30][6]~q\);

-- Location: LCCOMB_X97_Y43_N30
\uart_unit|transmitter|Selector10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~7_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0)) # ((\uart_unit|fifo_tx|r_array[30][6]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (!\uart_unit|fifo_tx|r_ptr\(0) & 
-- (\uart_unit|fifo_tx|r_array[22][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[22][6]~q\,
	datad => \uart_unit|fifo_tx|r_array[30][6]~q\,
	combout => \uart_unit|transmitter|Selector10~7_combout\);

-- Location: FF_X97_Y43_N1
\uart_unit|fifo_tx|r_array[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[23][6]~q\);

-- Location: FF_X96_Y43_N25
\uart_unit|fifo_tx|r_array[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[31][6]~q\);

-- Location: LCCOMB_X96_Y43_N24
\uart_unit|transmitter|Selector10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~8_combout\ = (\uart_unit|transmitter|Selector10~7_combout\ & (((\uart_unit|fifo_tx|r_array[31][6]~q\) # (!\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|transmitter|Selector10~7_combout\ & 
-- (\uart_unit|fifo_tx|r_array[23][6]~q\ & ((\uart_unit|fifo_tx|r_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector10~7_combout\,
	datab => \uart_unit|fifo_tx|r_array[23][6]~q\,
	datac => \uart_unit|fifo_tx|r_array[31][6]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector10~8_combout\);

-- Location: FF_X99_Y42_N17
\uart_unit|fifo_tx|r_array[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[19][6]~q\);

-- Location: FF_X98_Y42_N11
\uart_unit|fifo_tx|r_array[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[18][6]~q\);

-- Location: LCCOMB_X98_Y42_N10
\uart_unit|transmitter|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~0_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|r_array[19][6]~q\) # ((\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|fifo_tx|r_array[18][6]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[19][6]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[18][6]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|transmitter|Selector10~0_combout\);

-- Location: LCCOMB_X99_Y42_N14
\uart_unit|fifo_tx|r_array[27][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[27][6]~feeder_combout\ = \r_transmit_data[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[6]~12_combout\,
	combout => \uart_unit|fifo_tx|r_array[27][6]~feeder_combout\);

-- Location: FF_X99_Y42_N15
\uart_unit|fifo_tx|r_array[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[27][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[27][6]~q\);

-- Location: FF_X98_Y42_N9
\uart_unit|fifo_tx|r_array[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[26][6]~q\);

-- Location: LCCOMB_X98_Y42_N8
\uart_unit|transmitter|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~1_combout\ = (\uart_unit|transmitter|Selector10~0_combout\ & ((\uart_unit|fifo_tx|r_array[27][6]~q\) # ((!\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|transmitter|Selector10~0_combout\ & 
-- (((\uart_unit|fifo_tx|r_array[26][6]~q\ & \uart_unit|fifo_tx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector10~0_combout\,
	datab => \uart_unit|fifo_tx|r_array[27][6]~q\,
	datac => \uart_unit|fifo_tx|r_array[26][6]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|transmitter|Selector10~1_combout\);

-- Location: LCCOMB_X100_Y45_N20
\uart_unit|fifo_tx|r_array[24][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[24][6]~feeder_combout\ = \r_transmit_data[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[6]~12_combout\,
	combout => \uart_unit|fifo_tx|r_array[24][6]~feeder_combout\);

-- Location: FF_X100_Y45_N21
\uart_unit|fifo_tx|r_array[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[24][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[24][6]~q\);

-- Location: FF_X99_Y45_N31
\uart_unit|fifo_tx|r_array[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[25][6]~q\);

-- Location: FF_X99_Y45_N21
\uart_unit|fifo_tx|r_array[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[17][6]~q\);

-- Location: FF_X100_Y45_N19
\uart_unit|fifo_tx|r_array[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[16][6]~q\);

-- Location: LCCOMB_X100_Y45_N18
\uart_unit|transmitter|Selector10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~4_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_array[17][6]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(0) 
-- & ((\uart_unit|fifo_tx|r_array[16][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[17][6]~q\,
	datac => \uart_unit|fifo_tx|r_array[16][6]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector10~4_combout\);

-- Location: LCCOMB_X99_Y45_N30
\uart_unit|transmitter|Selector10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~5_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|transmitter|Selector10~4_combout\ & ((\uart_unit|fifo_tx|r_array[25][6]~q\))) # (!\uart_unit|transmitter|Selector10~4_combout\ & 
-- (\uart_unit|fifo_tx|r_array[24][6]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|transmitter|Selector10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[24][6]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(3),
	datac => \uart_unit|fifo_tx|r_array[25][6]~q\,
	datad => \uart_unit|transmitter|Selector10~4_combout\,
	combout => \uart_unit|transmitter|Selector10~5_combout\);

-- Location: LCCOMB_X100_Y40_N2
\uart_unit|fifo_tx|r_array[21][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[21][6]~feeder_combout\ = \r_transmit_data[6]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[6]~12_combout\,
	combout => \uart_unit|fifo_tx|r_array[21][6]~feeder_combout\);

-- Location: FF_X100_Y40_N3
\uart_unit|fifo_tx|r_array[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[21][6]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[21][6]~q\);

-- Location: FF_X99_Y40_N21
\uart_unit|fifo_tx|r_array[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[29][6]~q\);

-- Location: FF_X100_Y40_N29
\uart_unit|fifo_tx|r_array[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[20][6]~q\);

-- Location: FF_X99_Y40_N3
\uart_unit|fifo_tx|r_array[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[6]~12_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[28][6]~q\);

-- Location: LCCOMB_X99_Y40_N2
\uart_unit|transmitter|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~2_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_array[28][6]~q\) # (\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & (\uart_unit|fifo_tx|r_array[20][6]~q\ & 
-- ((!\uart_unit|fifo_tx|r_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[20][6]~q\,
	datac => \uart_unit|fifo_tx|r_array[28][6]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|transmitter|Selector10~2_combout\);

-- Location: LCCOMB_X99_Y40_N20
\uart_unit|transmitter|Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~3_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|transmitter|Selector10~2_combout\ & ((\uart_unit|fifo_tx|r_array[29][6]~q\))) # (!\uart_unit|transmitter|Selector10~2_combout\ & 
-- (\uart_unit|fifo_tx|r_array[21][6]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|transmitter|Selector10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[21][6]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[29][6]~q\,
	datad => \uart_unit|transmitter|Selector10~2_combout\,
	combout => \uart_unit|transmitter|Selector10~3_combout\);

-- Location: LCCOMB_X96_Y44_N28
\uart_unit|transmitter|Selector10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~6_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|fifo_tx|r_ptr\(2))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|transmitter|Selector10~3_combout\))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(2) & (\uart_unit|transmitter|Selector10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector10~5_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_ptr\(2),
	datad => \uart_unit|transmitter|Selector10~3_combout\,
	combout => \uart_unit|transmitter|Selector10~6_combout\);

-- Location: LCCOMB_X96_Y44_N18
\uart_unit|transmitter|Selector10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~9_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|transmitter|Selector10~6_combout\ & (\uart_unit|transmitter|Selector10~8_combout\)) # (!\uart_unit|transmitter|Selector10~6_combout\ & 
-- ((\uart_unit|transmitter|Selector10~1_combout\))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|transmitter|Selector10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector10~8_combout\,
	datab => \uart_unit|transmitter|Selector10~1_combout\,
	datac => \uart_unit|fifo_tx|r_ptr\(1),
	datad => \uart_unit|transmitter|Selector10~6_combout\,
	combout => \uart_unit|transmitter|Selector10~9_combout\);

-- Location: LCCOMB_X97_Y44_N14
\uart_unit|transmitter|Selector10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector10~20_combout\ = (\uart_unit|fifo_tx|r_ptr\(4) & ((\uart_unit|transmitter|Selector10~9_combout\))) # (!\uart_unit|fifo_tx|r_ptr\(4) & (\uart_unit|transmitter|Selector10~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|Selector10~19_combout\,
	datab => \uart_unit|transmitter|Selector10~9_combout\,
	datad => \uart_unit|fifo_tx|r_ptr\(4),
	combout => \uart_unit|transmitter|Selector10~20_combout\);

-- Location: LCCOMB_X100_Y44_N6
\uart_unit|transmitter|r_b_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_b_next~0_combout\ = (\uart_unit|transmitter|r_state_reg.s_idle~q\ & (\uart_unit|transmitter|r_state_reg.s_data~q\ & \uart_unit|transmitter|r_state_next~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_unit|transmitter|r_state_reg.s_idle~q\,
	datac => \uart_unit|transmitter|r_state_reg.s_data~q\,
	datad => \uart_unit|transmitter|r_state_next~4_combout\,
	combout => \uart_unit|transmitter|r_b_next~0_combout\);

-- Location: FF_X103_Y43_N25
\uart_unit|fifo_rx|r_array[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[19][7]~q\);

-- Location: FF_X102_Y41_N3
\uart_unit|fifo_rx|r_array[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[27][7]~q\);

-- Location: FF_X103_Y41_N7
\uart_unit|fifo_rx|r_array[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[26][7]~q\);

-- Location: FF_X102_Y41_N9
\uart_unit|fifo_rx|r_array[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[18][7]~q\);

-- Location: LCCOMB_X102_Y41_N8
\uart_unit|fifo_rx|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~0_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|r_array[26][7]~q\) # ((\uart_unit|fifo_rx|r_ptr\(0))))) # (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|r_array[18][7]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[26][7]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[18][7]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Mux12~0_combout\);

-- Location: LCCOMB_X98_Y43_N30
\uart_unit|fifo_rx|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~1_combout\ = (\uart_unit|fifo_rx|Mux12~0_combout\ & (((\uart_unit|fifo_rx|r_array[27][7]~q\) # (!\uart_unit|fifo_rx|r_ptr\(0))))) # (!\uart_unit|fifo_rx|Mux12~0_combout\ & (\uart_unit|fifo_rx|r_array[19][7]~q\ & 
-- ((\uart_unit|fifo_rx|r_ptr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[19][7]~q\,
	datab => \uart_unit|fifo_rx|r_array[27][7]~q\,
	datac => \uart_unit|fifo_rx|Mux12~0_combout\,
	datad => \uart_unit|fifo_rx|r_ptr\(0),
	combout => \uart_unit|fifo_rx|Mux12~1_combout\);

-- Location: LCCOMB_X105_Y41_N0
\uart_unit|fifo_rx|r_array[23][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[23][7]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(7),
	combout => \uart_unit|fifo_rx|r_array[23][7]~feeder_combout\);

-- Location: FF_X105_Y41_N1
\uart_unit|fifo_rx|r_array[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[23][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[23][7]~q\);

-- Location: FF_X106_Y43_N11
\uart_unit|fifo_rx|r_array[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[22][7]~q\);

-- Location: LCCOMB_X106_Y43_N10
\uart_unit|fifo_rx|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~7_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_array[23][7]~q\) # ((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_array[22][7]~q\ & 
-- !\uart_unit|fifo_rx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[23][7]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[22][7]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux12~7_combout\);

-- Location: LCCOMB_X105_Y43_N18
\uart_unit|fifo_rx|r_array[30][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[30][7]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(7),
	combout => \uart_unit|fifo_rx|r_array[30][7]~feeder_combout\);

-- Location: FF_X105_Y43_N19
\uart_unit|fifo_rx|r_array[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[30][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[30][7]~q\);

-- Location: FF_X106_Y43_N5
\uart_unit|fifo_rx|r_array[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[31][7]~q\);

-- Location: LCCOMB_X106_Y43_N4
\uart_unit|fifo_rx|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~8_combout\ = (\uart_unit|fifo_rx|Mux12~7_combout\ & (((\uart_unit|fifo_rx|r_array[31][7]~q\) # (!\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|Mux12~7_combout\ & (\uart_unit|fifo_rx|r_array[30][7]~q\ & 
-- ((\uart_unit|fifo_rx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux12~7_combout\,
	datab => \uart_unit|fifo_rx|r_array[30][7]~q\,
	datac => \uart_unit|fifo_rx|r_array[31][7]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux12~8_combout\);

-- Location: LCCOMB_X102_Y40_N16
\uart_unit|fifo_rx|r_array[24][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[24][7]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(7),
	combout => \uart_unit|fifo_rx|r_array[24][7]~feeder_combout\);

-- Location: FF_X102_Y40_N17
\uart_unit|fifo_rx|r_array[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[24][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[24][7]~q\);

-- Location: FF_X102_Y43_N13
\uart_unit|fifo_rx|r_array[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[16][7]~q\);

-- Location: LCCOMB_X102_Y43_N12
\uart_unit|fifo_rx|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~4_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & (((\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[24][7]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(3) & 
-- ((\uart_unit|fifo_rx|r_array[16][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[24][7]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[16][7]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux12~4_combout\);

-- Location: LCCOMB_X105_Y43_N0
\uart_unit|fifo_rx|r_array[17][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[17][7]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(7),
	combout => \uart_unit|fifo_rx|r_array[17][7]~feeder_combout\);

-- Location: FF_X105_Y43_N1
\uart_unit|fifo_rx|r_array[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[17][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[17][7]~q\);

-- Location: FF_X102_Y43_N19
\uart_unit|fifo_rx|r_array[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[25][7]~q\);

-- Location: LCCOMB_X102_Y43_N16
\uart_unit|fifo_rx|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~5_combout\ = (\uart_unit|fifo_rx|Mux12~4_combout\ & (((\uart_unit|fifo_rx|r_array[25][7]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(0)))) # (!\uart_unit|fifo_rx|Mux12~4_combout\ & (\uart_unit|fifo_rx|r_ptr\(0) & 
-- (\uart_unit|fifo_rx|r_array[17][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux12~4_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(0),
	datac => \uart_unit|fifo_rx|r_array[17][7]~q\,
	datad => \uart_unit|fifo_rx|r_array[25][7]~q\,
	combout => \uart_unit|fifo_rx|Mux12~5_combout\);

-- Location: LCCOMB_X103_Y39_N24
\uart_unit|fifo_rx|r_array[28][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[28][7]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(7),
	combout => \uart_unit|fifo_rx|r_array[28][7]~feeder_combout\);

-- Location: FF_X103_Y39_N25
\uart_unit|fifo_rx|r_array[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[28][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[28][7]~q\);

-- Location: FF_X102_Y39_N5
\uart_unit|fifo_rx|r_array[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[20][7]~q\);

-- Location: LCCOMB_X102_Y42_N26
\uart_unit|fifo_rx|r_array[21][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[21][7]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(7),
	combout => \uart_unit|fifo_rx|r_array[21][7]~feeder_combout\);

-- Location: FF_X102_Y42_N27
\uart_unit|fifo_rx|r_array[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[21][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[21][7]~q\);

-- Location: LCCOMB_X102_Y39_N4
\uart_unit|fifo_rx|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~2_combout\ = (\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|r_ptr\(3)) # ((\uart_unit|fifo_rx|r_array[21][7]~q\)))) # (!\uart_unit|fifo_rx|r_ptr\(0) & (!\uart_unit|fifo_rx|r_ptr\(3) & (\uart_unit|fifo_rx|r_array[20][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(0),
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_array[20][7]~q\,
	datad => \uart_unit|fifo_rx|r_array[21][7]~q\,
	combout => \uart_unit|fifo_rx|Mux12~2_combout\);

-- Location: FF_X102_Y39_N31
\uart_unit|fifo_rx|r_array[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[29][7]~q\);

-- Location: LCCOMB_X102_Y39_N30
\uart_unit|fifo_rx|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~3_combout\ = (\uart_unit|fifo_rx|Mux12~2_combout\ & (((\uart_unit|fifo_rx|r_array[29][7]~q\) # (!\uart_unit|fifo_rx|r_ptr\(3))))) # (!\uart_unit|fifo_rx|Mux12~2_combout\ & (\uart_unit|fifo_rx|r_array[28][7]~q\ & 
-- ((\uart_unit|fifo_rx|r_ptr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[28][7]~q\,
	datab => \uart_unit|fifo_rx|Mux12~2_combout\,
	datac => \uart_unit|fifo_rx|r_array[29][7]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(3),
	combout => \uart_unit|fifo_rx|Mux12~3_combout\);

-- Location: LCCOMB_X98_Y43_N28
\uart_unit|fifo_rx|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~6_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1)) # ((\uart_unit|fifo_rx|Mux12~3_combout\)))) # (!\uart_unit|fifo_rx|r_ptr\(2) & (!\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|Mux12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|Mux12~5_combout\,
	datad => \uart_unit|fifo_rx|Mux12~3_combout\,
	combout => \uart_unit|fifo_rx|Mux12~6_combout\);

-- Location: LCCOMB_X98_Y43_N22
\uart_unit|fifo_rx|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~9_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux12~6_combout\ & ((\uart_unit|fifo_rx|Mux12~8_combout\))) # (!\uart_unit|fifo_rx|Mux12~6_combout\ & (\uart_unit|fifo_rx|Mux12~1_combout\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux12~1_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|Mux12~8_combout\,
	datad => \uart_unit|fifo_rx|Mux12~6_combout\,
	combout => \uart_unit|fifo_rx|Mux12~9_combout\);

-- Location: LCCOMB_X101_Y41_N16
\uart_unit|fifo_rx|r_array[13][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[13][7]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(7),
	combout => \uart_unit|fifo_rx|r_array[13][7]~feeder_combout\);

-- Location: FF_X101_Y41_N17
\uart_unit|fifo_rx|r_array[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[13][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[13][7]~q\);

-- Location: FF_X100_Y41_N27
\uart_unit|fifo_rx|r_array[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[15][7]~q\);

-- Location: LCCOMB_X105_Y41_N30
\uart_unit|fifo_rx|r_array[11][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[11][7]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(7),
	combout => \uart_unit|fifo_rx|r_array[11][7]~feeder_combout\);

-- Location: FF_X105_Y41_N31
\uart_unit|fifo_rx|r_array[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[11][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[11][7]~q\);

-- Location: FF_X100_Y41_N29
\uart_unit|fifo_rx|r_array[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[9][7]~q\);

-- Location: LCCOMB_X100_Y41_N28
\uart_unit|fifo_rx|Mux12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~17_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_array[11][7]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(1) & 
-- ((\uart_unit|fifo_rx|r_array[9][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[11][7]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[9][7]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux12~17_combout\);

-- Location: LCCOMB_X100_Y41_N26
\uart_unit|fifo_rx|Mux12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~18_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux12~17_combout\ & ((\uart_unit|fifo_rx|r_array[15][7]~q\))) # (!\uart_unit|fifo_rx|Mux12~17_combout\ & (\uart_unit|fifo_rx|r_array[13][7]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux12~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[13][7]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[15][7]~q\,
	datad => \uart_unit|fifo_rx|Mux12~17_combout\,
	combout => \uart_unit|fifo_rx|Mux12~18_combout\);

-- Location: LCCOMB_X101_Y40_N14
\uart_unit|fifo_rx|r_array[4][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[4][7]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(7),
	combout => \uart_unit|fifo_rx|r_array[4][7]~feeder_combout\);

-- Location: FF_X101_Y40_N15
\uart_unit|fifo_rx|r_array[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[4][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[4][7]~q\);

-- Location: FF_X98_Y43_N7
\uart_unit|fifo_rx|r_array[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[6][7]~q\);

-- Location: LCCOMB_X102_Y42_N16
\uart_unit|fifo_rx|r_array[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[2][7]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(7),
	combout => \uart_unit|fifo_rx|r_array[2][7]~feeder_combout\);

-- Location: FF_X102_Y42_N17
\uart_unit|fifo_rx|r_array[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[2][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[2][7]~q\);

-- Location: FF_X98_Y43_N25
\uart_unit|fifo_rx|r_array[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[0][7]~q\);

-- Location: LCCOMB_X98_Y43_N24
\uart_unit|fifo_rx|Mux12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~14_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|r_ptr\(1))))) # (!\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|r_ptr\(1) & (\uart_unit|fifo_rx|r_array[2][7]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(1) & 
-- ((\uart_unit|fifo_rx|r_array[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[2][7]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[0][7]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(1),
	combout => \uart_unit|fifo_rx|Mux12~14_combout\);

-- Location: LCCOMB_X98_Y43_N6
\uart_unit|fifo_rx|Mux12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~15_combout\ = (\uart_unit|fifo_rx|r_ptr\(2) & ((\uart_unit|fifo_rx|Mux12~14_combout\ & ((\uart_unit|fifo_rx|r_array[6][7]~q\))) # (!\uart_unit|fifo_rx|Mux12~14_combout\ & (\uart_unit|fifo_rx|r_array[4][7]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(2) & (((\uart_unit|fifo_rx|Mux12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(2),
	datab => \uart_unit|fifo_rx|r_array[4][7]~q\,
	datac => \uart_unit|fifo_rx|r_array[6][7]~q\,
	datad => \uart_unit|fifo_rx|Mux12~14_combout\,
	combout => \uart_unit|fifo_rx|Mux12~15_combout\);

-- Location: LCCOMB_X103_Y43_N22
\uart_unit|fifo_rx|r_array[3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[3][7]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_unit|receiver|r_b_reg\(7),
	combout => \uart_unit|fifo_rx|r_array[3][7]~feeder_combout\);

-- Location: FF_X103_Y43_N23
\uart_unit|fifo_rx|r_array[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[3][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[3][7]~q\);

-- Location: FF_X101_Y42_N23
\uart_unit|fifo_rx|r_array[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[7][7]~q\);

-- Location: FF_X103_Y42_N23
\uart_unit|fifo_rx|r_array[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[5][7]~q\);

-- Location: FF_X101_Y42_N29
\uart_unit|fifo_rx|r_array[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[1][7]~q\);

-- Location: LCCOMB_X101_Y42_N28
\uart_unit|fifo_rx|Mux12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~12_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|r_ptr\(2))))) # (!\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|r_array[5][7]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(2) & 
-- ((\uart_unit|fifo_rx|r_array[1][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[5][7]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[1][7]~q\,
	datad => \uart_unit|fifo_rx|r_ptr\(2),
	combout => \uart_unit|fifo_rx|Mux12~12_combout\);

-- Location: LCCOMB_X101_Y42_N22
\uart_unit|fifo_rx|Mux12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~13_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|Mux12~12_combout\ & ((\uart_unit|fifo_rx|r_array[7][7]~q\))) # (!\uart_unit|fifo_rx|Mux12~12_combout\ & (\uart_unit|fifo_rx|r_array[3][7]~q\)))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(1) & (((\uart_unit|fifo_rx|Mux12~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_array[3][7]~q\,
	datab => \uart_unit|fifo_rx|r_ptr\(1),
	datac => \uart_unit|fifo_rx|r_array[7][7]~q\,
	datad => \uart_unit|fifo_rx|Mux12~12_combout\,
	combout => \uart_unit|fifo_rx|Mux12~13_combout\);

-- Location: LCCOMB_X98_Y43_N4
\uart_unit|fifo_rx|Mux12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~16_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|r_ptr\(0))))) # (!\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|r_ptr\(0) & ((\uart_unit|fifo_rx|Mux12~13_combout\))) # (!\uart_unit|fifo_rx|r_ptr\(0) & 
-- (\uart_unit|fifo_rx|Mux12~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux12~15_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|r_ptr\(0),
	datad => \uart_unit|fifo_rx|Mux12~13_combout\,
	combout => \uart_unit|fifo_rx|Mux12~16_combout\);

-- Location: FF_X100_Y39_N17
\uart_unit|fifo_rx|r_array[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[8][7]~q\);

-- Location: LCCOMB_X99_Y39_N2
\uart_unit|fifo_rx|r_array[10][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|r_array[10][7]~feeder_combout\ = \uart_unit|receiver|r_b_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|receiver|r_b_reg\(7),
	combout => \uart_unit|fifo_rx|r_array[10][7]~feeder_combout\);

-- Location: FF_X99_Y39_N3
\uart_unit|fifo_rx|r_array[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_rx|r_array[10][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_rx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[10][7]~q\);

-- Location: LCCOMB_X100_Y39_N16
\uart_unit|fifo_rx|Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~10_combout\ = (\uart_unit|fifo_rx|r_ptr\(1) & ((\uart_unit|fifo_rx|r_ptr\(2)) # ((\uart_unit|fifo_rx|r_array[10][7]~q\)))) # (!\uart_unit|fifo_rx|r_ptr\(1) & (!\uart_unit|fifo_rx|r_ptr\(2) & (\uart_unit|fifo_rx|r_array[8][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(1),
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[8][7]~q\,
	datad => \uart_unit|fifo_rx|r_array[10][7]~q\,
	combout => \uart_unit|fifo_rx|Mux12~10_combout\);

-- Location: FF_X101_Y39_N5
\uart_unit|fifo_rx|r_array[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[12][7]~q\);

-- Location: FF_X100_Y39_N31
\uart_unit|fifo_rx|r_array[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \uart_unit|receiver|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_rx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_rx|r_array[14][7]~q\);

-- Location: LCCOMB_X101_Y39_N4
\uart_unit|fifo_rx|Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~11_combout\ = (\uart_unit|fifo_rx|Mux12~10_combout\ & (((\uart_unit|fifo_rx|r_array[14][7]~q\)) # (!\uart_unit|fifo_rx|r_ptr\(2)))) # (!\uart_unit|fifo_rx|Mux12~10_combout\ & (\uart_unit|fifo_rx|r_ptr\(2) & 
-- (\uart_unit|fifo_rx|r_array[12][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux12~10_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(2),
	datac => \uart_unit|fifo_rx|r_array[12][7]~q\,
	datad => \uart_unit|fifo_rx|r_array[14][7]~q\,
	combout => \uart_unit|fifo_rx|Mux12~11_combout\);

-- Location: LCCOMB_X98_Y43_N10
\uart_unit|fifo_rx|Mux12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~19_combout\ = (\uart_unit|fifo_rx|r_ptr\(3) & ((\uart_unit|fifo_rx|Mux12~16_combout\ & (\uart_unit|fifo_rx|Mux12~18_combout\)) # (!\uart_unit|fifo_rx|Mux12~16_combout\ & ((\uart_unit|fifo_rx|Mux12~11_combout\))))) # 
-- (!\uart_unit|fifo_rx|r_ptr\(3) & (((\uart_unit|fifo_rx|Mux12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|Mux12~18_combout\,
	datab => \uart_unit|fifo_rx|r_ptr\(3),
	datac => \uart_unit|fifo_rx|Mux12~16_combout\,
	datad => \uart_unit|fifo_rx|Mux12~11_combout\,
	combout => \uart_unit|fifo_rx|Mux12~19_combout\);

-- Location: LCCOMB_X98_Y43_N20
\uart_unit|fifo_rx|Mux12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_rx|Mux12~20_combout\ = (\uart_unit|fifo_rx|r_ptr\(4) & (\uart_unit|fifo_rx|Mux12~9_combout\)) # (!\uart_unit|fifo_rx|r_ptr\(4) & ((\uart_unit|fifo_rx|Mux12~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_rx|r_ptr\(4),
	datac => \uart_unit|fifo_rx|Mux12~9_combout\,
	datad => \uart_unit|fifo_rx|Mux12~19_combout\,
	combout => \uart_unit|fifo_rx|Mux12~20_combout\);

-- Location: LCCOMB_X99_Y43_N22
\r_transmit_data[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_transmit_data[7]~14_combout\ = \r_transmit_data[6]~13\ $ (\uart_unit|fifo_rx|Mux12~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_unit|fifo_rx|Mux12~20_combout\,
	cin => \r_transmit_data[6]~13\,
	combout => \r_transmit_data[7]~14_combout\);

-- Location: FF_X99_Y46_N27
\uart_unit|fifo_tx|r_array[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[9][7]~q\);

-- Location: LCCOMB_X100_Y46_N26
\uart_unit|fifo_tx|r_array[11][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[11][7]~feeder_combout\ = \r_transmit_data[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[7]~14_combout\,
	combout => \uart_unit|fifo_tx|r_array[11][7]~feeder_combout\);

-- Location: FF_X100_Y46_N27
\uart_unit|fifo_tx|r_array[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[11][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[11][7]~q\);

-- Location: LCCOMB_X99_Y46_N26
\uart_unit|fifo_tx|Mux12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~17_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_ptr\(2)) # ((\uart_unit|fifo_tx|r_array[11][7]~q\)))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (!\uart_unit|fifo_tx|r_ptr\(2) & (\uart_unit|fifo_tx|r_array[9][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[9][7]~q\,
	datad => \uart_unit|fifo_tx|r_array[11][7]~q\,
	combout => \uart_unit|fifo_tx|Mux12~17_combout\);

-- Location: FF_X99_Y46_N17
\uart_unit|fifo_tx|r_array[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[13][7]~q\);

-- Location: FF_X99_Y43_N23
\uart_unit|fifo_tx|r_array[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[15][7]~q\);

-- Location: LCCOMB_X99_Y46_N16
\uart_unit|fifo_tx|Mux12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~18_combout\ = (\uart_unit|fifo_tx|Mux12~17_combout\ & (((\uart_unit|fifo_tx|r_array[15][7]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(2)))) # (!\uart_unit|fifo_tx|Mux12~17_combout\ & (\uart_unit|fifo_tx|r_ptr\(2) & 
-- (\uart_unit|fifo_tx|r_array[13][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Mux12~17_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[13][7]~q\,
	datad => \uart_unit|fifo_tx|r_array[15][7]~q\,
	combout => \uart_unit|fifo_tx|Mux12~18_combout\);

-- Location: LCCOMB_X99_Y44_N24
\uart_unit|fifo_tx|r_array[10][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[10][7]~feeder_combout\ = \r_transmit_data[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[7]~14_combout\,
	combout => \uart_unit|fifo_tx|r_array[10][7]~feeder_combout\);

-- Location: FF_X99_Y44_N25
\uart_unit|fifo_tx|r_array[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[10][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[10][7]~q\);

-- Location: FF_X99_Y44_N7
\uart_unit|fifo_tx|r_array[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[8][7]~q\);

-- Location: LCCOMB_X99_Y44_N6
\uart_unit|fifo_tx|Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~10_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|r_ptr\(1))))) # (!\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1) & (\uart_unit|fifo_tx|r_array[10][7]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(1) & 
-- ((\uart_unit|fifo_tx|r_array[8][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[10][7]~q\,
	datac => \uart_unit|fifo_tx|r_array[8][7]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(1),
	combout => \uart_unit|fifo_tx|Mux12~10_combout\);

-- Location: FF_X98_Y44_N5
\uart_unit|fifo_tx|r_array[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[12][7]~q\);

-- Location: LCCOMB_X98_Y44_N2
\uart_unit|fifo_tx|r_array[14][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[14][7]~feeder_combout\ = \r_transmit_data[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[7]~14_combout\,
	combout => \uart_unit|fifo_tx|r_array[14][7]~feeder_combout\);

-- Location: FF_X98_Y44_N3
\uart_unit|fifo_tx|r_array[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[14][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[14][7]~q\);

-- Location: LCCOMB_X98_Y44_N4
\uart_unit|fifo_tx|Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~11_combout\ = (\uart_unit|fifo_tx|Mux12~10_combout\ & (((\uart_unit|fifo_tx|r_array[14][7]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(2)))) # (!\uart_unit|fifo_tx|Mux12~10_combout\ & (\uart_unit|fifo_tx|r_ptr\(2) & 
-- (\uart_unit|fifo_tx|r_array[12][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Mux12~10_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(2),
	datac => \uart_unit|fifo_tx|r_array[12][7]~q\,
	datad => \uart_unit|fifo_tx|r_array[14][7]~q\,
	combout => \uart_unit|fifo_tx|Mux12~11_combout\);

-- Location: FF_X98_Y46_N11
\uart_unit|fifo_tx|r_array[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[3][7]~q\);

-- Location: FF_X98_Y46_N7
\uart_unit|fifo_tx|r_array[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[7][7]~q\);

-- Location: FF_X98_Y45_N3
\uart_unit|fifo_tx|r_array[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[5][7]~q\);

-- Location: FF_X98_Y45_N11
\uart_unit|fifo_tx|r_array[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[1][7]~q\);

-- Location: LCCOMB_X98_Y45_N10
\uart_unit|fifo_tx|Mux12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~12_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|fifo_tx|r_ptr\(2))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_ptr\(2) & (\uart_unit|fifo_tx|r_array[5][7]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(2) & 
-- ((\uart_unit|fifo_tx|r_array[1][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[5][7]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_array[1][7]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(2),
	combout => \uart_unit|fifo_tx|Mux12~12_combout\);

-- Location: LCCOMB_X98_Y46_N6
\uart_unit|fifo_tx|Mux12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~13_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|Mux12~12_combout\ & ((\uart_unit|fifo_tx|r_array[7][7]~q\))) # (!\uart_unit|fifo_tx|Mux12~12_combout\ & (\uart_unit|fifo_tx|r_array[3][7]~q\)))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|fifo_tx|Mux12~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[3][7]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|r_array[7][7]~q\,
	datad => \uart_unit|fifo_tx|Mux12~12_combout\,
	combout => \uart_unit|fifo_tx|Mux12~13_combout\);

-- Location: LCCOMB_X98_Y41_N20
\uart_unit|fifo_tx|r_array[4][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[4][7]~feeder_combout\ = \r_transmit_data[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[7]~14_combout\,
	combout => \uart_unit|fifo_tx|r_array[4][7]~feeder_combout\);

-- Location: FF_X98_Y41_N21
\uart_unit|fifo_tx|r_array[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[4][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[4][7]~q\);

-- Location: FF_X98_Y41_N7
\uart_unit|fifo_tx|r_array[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[6][7]~q\);

-- Location: LCCOMB_X99_Y41_N24
\uart_unit|fifo_tx|r_array[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[2][7]~feeder_combout\ = \r_transmit_data[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[7]~14_combout\,
	combout => \uart_unit|fifo_tx|r_array[2][7]~feeder_combout\);

-- Location: FF_X99_Y41_N25
\uart_unit|fifo_tx|r_array[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[2][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[2][7]~q\);

-- Location: FF_X99_Y41_N7
\uart_unit|fifo_tx|r_array[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[0][7]~q\);

-- Location: LCCOMB_X99_Y41_N6
\uart_unit|fifo_tx|Mux12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~14_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|r_array[2][7]~q\) # ((\uart_unit|fifo_tx|r_ptr\(2))))) # (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|fifo_tx|r_array[0][7]~q\ & 
-- !\uart_unit|fifo_tx|r_ptr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(1),
	datab => \uart_unit|fifo_tx|r_array[2][7]~q\,
	datac => \uart_unit|fifo_tx|r_array[0][7]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(2),
	combout => \uart_unit|fifo_tx|Mux12~14_combout\);

-- Location: LCCOMB_X98_Y41_N6
\uart_unit|fifo_tx|Mux12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~15_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|Mux12~14_combout\ & ((\uart_unit|fifo_tx|r_array[6][7]~q\))) # (!\uart_unit|fifo_tx|Mux12~14_combout\ & (\uart_unit|fifo_tx|r_array[4][7]~q\)))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(2) & (((\uart_unit|fifo_tx|Mux12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_array[4][7]~q\,
	datac => \uart_unit|fifo_tx|r_array[6][7]~q\,
	datad => \uart_unit|fifo_tx|Mux12~14_combout\,
	combout => \uart_unit|fifo_tx|Mux12~15_combout\);

-- Location: LCCOMB_X97_Y44_N16
\uart_unit|fifo_tx|Mux12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~16_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|Mux12~13_combout\) # ((\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|fifo_tx|r_ptr\(0) & (((!\uart_unit|fifo_tx|r_ptr\(3) & 
-- \uart_unit|fifo_tx|Mux12~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|Mux12~13_combout\,
	datac => \uart_unit|fifo_tx|r_ptr\(3),
	datad => \uart_unit|fifo_tx|Mux12~15_combout\,
	combout => \uart_unit|fifo_tx|Mux12~16_combout\);

-- Location: LCCOMB_X100_Y44_N22
\uart_unit|fifo_tx|Mux12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~19_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|Mux12~16_combout\ & (\uart_unit|fifo_tx|Mux12~18_combout\)) # (!\uart_unit|fifo_tx|Mux12~16_combout\ & ((\uart_unit|fifo_tx|Mux12~11_combout\))))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|Mux12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|Mux12~18_combout\,
	datac => \uart_unit|fifo_tx|Mux12~11_combout\,
	datad => \uart_unit|fifo_tx|Mux12~16_combout\,
	combout => \uart_unit|fifo_tx|Mux12~19_combout\);

-- Location: LCCOMB_X99_Y42_N30
\uart_unit|fifo_tx|r_array[27][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[27][7]~feeder_combout\ = \r_transmit_data[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[7]~14_combout\,
	combout => \uart_unit|fifo_tx|r_array[27][7]~feeder_combout\);

-- Location: FF_X99_Y42_N31
\uart_unit|fifo_tx|r_array[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[27][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[27][7]~q\);

-- Location: FF_X99_Y42_N1
\uart_unit|fifo_tx|r_array[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[19][7]~q\);

-- Location: LCCOMB_X98_Y42_N20
\uart_unit|fifo_tx|r_array[26][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[26][7]~feeder_combout\ = \r_transmit_data[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[7]~14_combout\,
	combout => \uart_unit|fifo_tx|r_array[26][7]~feeder_combout\);

-- Location: FF_X98_Y42_N21
\uart_unit|fifo_tx|r_array[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[26][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[26][7]~q\);

-- Location: FF_X98_Y42_N19
\uart_unit|fifo_tx|r_array[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[18][7]~q\);

-- Location: LCCOMB_X98_Y42_N18
\uart_unit|fifo_tx|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~0_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|fifo_tx|r_ptr\(3))))) # (!\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|r_ptr\(3) & (\uart_unit|fifo_tx|r_array[26][7]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(3) & 
-- ((\uart_unit|fifo_tx|r_array[18][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_array[26][7]~q\,
	datac => \uart_unit|fifo_tx|r_array[18][7]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(3),
	combout => \uart_unit|fifo_tx|Mux12~0_combout\);

-- Location: LCCOMB_X99_Y42_N0
\uart_unit|fifo_tx|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~1_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|Mux12~0_combout\ & (\uart_unit|fifo_tx|r_array[27][7]~q\)) # (!\uart_unit|fifo_tx|Mux12~0_combout\ & ((\uart_unit|fifo_tx|r_array[19][7]~q\))))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|fifo_tx|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_array[27][7]~q\,
	datab => \uart_unit|fifo_tx|r_ptr\(0),
	datac => \uart_unit|fifo_tx|r_array[19][7]~q\,
	datad => \uart_unit|fifo_tx|Mux12~0_combout\,
	combout => \uart_unit|fifo_tx|Mux12~1_combout\);

-- Location: FF_X96_Y43_N5
\uart_unit|fifo_tx|r_array[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[30][7]~q\);

-- Location: FF_X96_Y43_N7
\uart_unit|fifo_tx|r_array[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[31][7]~q\);

-- Location: LCCOMB_X97_Y43_N20
\uart_unit|fifo_tx|r_array[23][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[23][7]~feeder_combout\ = \r_transmit_data[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[7]~14_combout\,
	combout => \uart_unit|fifo_tx|r_array[23][7]~feeder_combout\);

-- Location: FF_X97_Y43_N21
\uart_unit|fifo_tx|r_array[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[23][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[23][7]~q\);

-- Location: FF_X97_Y43_N7
\uart_unit|fifo_tx|r_array[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[22][7]~q\);

-- Location: LCCOMB_X97_Y43_N6
\uart_unit|fifo_tx|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~7_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_array[23][7]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(0) & 
-- ((\uart_unit|fifo_tx|r_array[22][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[23][7]~q\,
	datac => \uart_unit|fifo_tx|r_array[22][7]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|fifo_tx|Mux12~7_combout\);

-- Location: LCCOMB_X96_Y43_N6
\uart_unit|fifo_tx|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~8_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|Mux12~7_combout\ & ((\uart_unit|fifo_tx|r_array[31][7]~q\))) # (!\uart_unit|fifo_tx|Mux12~7_combout\ & (\uart_unit|fifo_tx|r_array[30][7]~q\)))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[30][7]~q\,
	datac => \uart_unit|fifo_tx|r_array[31][7]~q\,
	datad => \uart_unit|fifo_tx|Mux12~7_combout\,
	combout => \uart_unit|fifo_tx|Mux12~8_combout\);

-- Location: LCCOMB_X99_Y45_N28
\uart_unit|fifo_tx|r_array[17][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[17][7]~feeder_combout\ = \r_transmit_data[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[7]~14_combout\,
	combout => \uart_unit|fifo_tx|r_array[17][7]~feeder_combout\);

-- Location: FF_X99_Y45_N29
\uart_unit|fifo_tx|r_array[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[17][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[17][7]~q\);

-- Location: FF_X99_Y45_N7
\uart_unit|fifo_tx|r_array[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[25][7]~q\);

-- Location: FF_X100_Y45_N3
\uart_unit|fifo_tx|r_array[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[16][7]~q\);

-- Location: LCCOMB_X100_Y45_N12
\uart_unit|fifo_tx|r_array[24][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[24][7]~feeder_combout\ = \r_transmit_data[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_transmit_data[7]~14_combout\,
	combout => \uart_unit|fifo_tx|r_array[24][7]~feeder_combout\);

-- Location: FF_X100_Y45_N13
\uart_unit|fifo_tx|r_array[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[24][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[24][7]~q\);

-- Location: LCCOMB_X100_Y45_N2
\uart_unit|fifo_tx|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~4_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_ptr\(3))) # (!\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_array[24][7]~q\))) # (!\uart_unit|fifo_tx|r_ptr\(3) & 
-- (\uart_unit|fifo_tx|r_array[16][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_ptr\(3),
	datac => \uart_unit|fifo_tx|r_array[16][7]~q\,
	datad => \uart_unit|fifo_tx|r_array[24][7]~q\,
	combout => \uart_unit|fifo_tx|Mux12~4_combout\);

-- Location: LCCOMB_X99_Y45_N6
\uart_unit|fifo_tx|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~5_combout\ = (\uart_unit|fifo_tx|r_ptr\(0) & ((\uart_unit|fifo_tx|Mux12~4_combout\ & ((\uart_unit|fifo_tx|r_array[25][7]~q\))) # (!\uart_unit|fifo_tx|Mux12~4_combout\ & (\uart_unit|fifo_tx|r_array[17][7]~q\)))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(0) & (((\uart_unit|fifo_tx|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(0),
	datab => \uart_unit|fifo_tx|r_array[17][7]~q\,
	datac => \uart_unit|fifo_tx|r_array[25][7]~q\,
	datad => \uart_unit|fifo_tx|Mux12~4_combout\,
	combout => \uart_unit|fifo_tx|Mux12~5_combout\);

-- Location: FF_X99_Y40_N31
\uart_unit|fifo_tx|r_array[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[28][7]~q\);

-- Location: FF_X99_Y40_N23
\uart_unit|fifo_tx|r_array[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[29][7]~q\);

-- Location: LCCOMB_X100_Y40_N8
\uart_unit|fifo_tx|r_array[21][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|r_array[21][7]~feeder_combout\ = \r_transmit_data[7]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_transmit_data[7]~14_combout\,
	combout => \uart_unit|fifo_tx|r_array[21][7]~feeder_combout\);

-- Location: FF_X100_Y40_N9
\uart_unit|fifo_tx|r_array[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|fifo_tx|r_array[21][7]~feeder_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	ena => \uart_unit|fifo_tx|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[21][7]~q\);

-- Location: FF_X100_Y40_N23
\uart_unit|fifo_tx|r_array[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_transmit_data[7]~14_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	sload => VCC,
	ena => \uart_unit|fifo_tx|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|fifo_tx|r_array[20][7]~q\);

-- Location: LCCOMB_X100_Y40_N22
\uart_unit|fifo_tx|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~2_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|r_ptr\(0))))) # (!\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|r_ptr\(0) & (\uart_unit|fifo_tx|r_array[21][7]~q\)) # (!\uart_unit|fifo_tx|r_ptr\(0) & 
-- ((\uart_unit|fifo_tx|r_array[20][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[21][7]~q\,
	datac => \uart_unit|fifo_tx|r_array[20][7]~q\,
	datad => \uart_unit|fifo_tx|r_ptr\(0),
	combout => \uart_unit|fifo_tx|Mux12~2_combout\);

-- Location: LCCOMB_X99_Y40_N22
\uart_unit|fifo_tx|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~3_combout\ = (\uart_unit|fifo_tx|r_ptr\(3) & ((\uart_unit|fifo_tx|Mux12~2_combout\ & ((\uart_unit|fifo_tx|r_array[29][7]~q\))) # (!\uart_unit|fifo_tx|Mux12~2_combout\ & (\uart_unit|fifo_tx|r_array[28][7]~q\)))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(3) & (((\uart_unit|fifo_tx|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(3),
	datab => \uart_unit|fifo_tx|r_array[28][7]~q\,
	datac => \uart_unit|fifo_tx|r_array[29][7]~q\,
	datad => \uart_unit|fifo_tx|Mux12~2_combout\,
	combout => \uart_unit|fifo_tx|Mux12~3_combout\);

-- Location: LCCOMB_X100_Y44_N2
\uart_unit|fifo_tx|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~6_combout\ = (\uart_unit|fifo_tx|r_ptr\(2) & ((\uart_unit|fifo_tx|r_ptr\(1)) # ((\uart_unit|fifo_tx|Mux12~3_combout\)))) # (!\uart_unit|fifo_tx|r_ptr\(2) & (!\uart_unit|fifo_tx|r_ptr\(1) & (\uart_unit|fifo_tx|Mux12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(2),
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|Mux12~5_combout\,
	datad => \uart_unit|fifo_tx|Mux12~3_combout\,
	combout => \uart_unit|fifo_tx|Mux12~6_combout\);

-- Location: LCCOMB_X100_Y44_N20
\uart_unit|fifo_tx|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|fifo_tx|Mux12~9_combout\ = (\uart_unit|fifo_tx|r_ptr\(1) & ((\uart_unit|fifo_tx|Mux12~6_combout\ & ((\uart_unit|fifo_tx|Mux12~8_combout\))) # (!\uart_unit|fifo_tx|Mux12~6_combout\ & (\uart_unit|fifo_tx|Mux12~1_combout\)))) # 
-- (!\uart_unit|fifo_tx|r_ptr\(1) & (((\uart_unit|fifo_tx|Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|Mux12~1_combout\,
	datab => \uart_unit|fifo_tx|r_ptr\(1),
	datac => \uart_unit|fifo_tx|Mux12~8_combout\,
	datad => \uart_unit|fifo_tx|Mux12~6_combout\,
	combout => \uart_unit|fifo_tx|Mux12~9_combout\);

-- Location: LCCOMB_X100_Y44_N16
\uart_unit|transmitter|r_b_reg[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_b_reg[7]~3_combout\ = (\uart_unit|transmitter|r_b_reg[7]~2_combout\ & ((\uart_unit|fifo_tx|r_ptr\(4) & ((\uart_unit|fifo_tx|Mux12~9_combout\))) # (!\uart_unit|fifo_tx|r_ptr\(4) & (\uart_unit|fifo_tx|Mux12~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_ptr\(4),
	datab => \uart_unit|transmitter|r_b_reg[7]~2_combout\,
	datac => \uart_unit|fifo_tx|Mux12~19_combout\,
	datad => \uart_unit|fifo_tx|Mux12~9_combout\,
	combout => \uart_unit|transmitter|r_b_reg[7]~3_combout\);

-- Location: LCCOMB_X100_Y44_N28
\uart_unit|transmitter|r_b_reg[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_b_reg[7]~4_combout\ = (\uart_unit|transmitter|r_b_reg[7]~3_combout\) # ((!\uart_unit|transmitter|r_b_next~0_combout\ & (!\uart_unit|transmitter|r_b_reg[7]~2_combout\ & \uart_unit|transmitter|r_b_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_b_next~0_combout\,
	datab => \uart_unit|transmitter|r_b_reg[7]~2_combout\,
	datac => \uart_unit|transmitter|r_b_reg\(7),
	datad => \uart_unit|transmitter|r_b_reg[7]~3_combout\,
	combout => \uart_unit|transmitter|r_b_reg[7]~4_combout\);

-- Location: FF_X100_Y44_N29
\uart_unit|transmitter|r_b_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|r_b_reg[7]~4_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_b_reg\(7));

-- Location: LCCOMB_X101_Y44_N2
\uart_unit|transmitter|r_b_reg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|r_b_reg[2]~5_combout\ = (\uart_unit|fifo_tx|r_empty~q\ & (((\uart_unit|transmitter|r_state_reg.s_data~q\ & \uart_unit|transmitter|r_state_next~4_combout\)) # (!\uart_unit|transmitter|r_state_reg.s_idle~q\))) # 
-- (!\uart_unit|fifo_tx|r_empty~q\ & (((\uart_unit|transmitter|r_state_reg.s_data~q\ & \uart_unit|transmitter|r_state_next~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|fifo_tx|r_empty~q\,
	datab => \uart_unit|transmitter|r_state_reg.s_idle~q\,
	datac => \uart_unit|transmitter|r_state_reg.s_data~q\,
	datad => \uart_unit|transmitter|r_state_next~4_combout\,
	combout => \uart_unit|transmitter|r_b_reg[2]~5_combout\);

-- Location: FF_X97_Y44_N15
\uart_unit|transmitter|r_b_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector10~20_combout\,
	asdata => \uart_unit|transmitter|r_b_reg\(7),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => \uart_unit|transmitter|r_state_reg.s_data~q\,
	ena => \uart_unit|transmitter|r_b_reg[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_b_reg\(6));

-- Location: FF_X97_Y44_N5
\uart_unit|transmitter|r_b_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector11~20_combout\,
	asdata => \uart_unit|transmitter|r_b_reg\(6),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => \uart_unit|transmitter|r_state_reg.s_data~q\,
	ena => \uart_unit|transmitter|r_b_reg[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_b_reg\(5));

-- Location: FF_X97_Y44_N9
\uart_unit|transmitter|r_b_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector12~20_combout\,
	asdata => \uart_unit|transmitter|r_b_reg\(5),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => \uart_unit|transmitter|r_state_reg.s_data~q\,
	ena => \uart_unit|transmitter|r_b_reg[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_b_reg\(4));

-- Location: FF_X97_Y44_N27
\uart_unit|transmitter|r_b_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector13~20_combout\,
	asdata => \uart_unit|transmitter|r_b_reg\(4),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => \uart_unit|transmitter|r_state_reg.s_data~q\,
	ena => \uart_unit|transmitter|r_b_reg[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_b_reg\(3));

-- Location: FF_X97_Y44_N23
\uart_unit|transmitter|r_b_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector14~20_combout\,
	asdata => \uart_unit|transmitter|r_b_reg\(3),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => \uart_unit|transmitter|r_state_reg.s_data~q\,
	ena => \uart_unit|transmitter|r_b_reg[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_b_reg\(2));

-- Location: FF_X97_Y44_N31
\uart_unit|transmitter|r_b_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector15~20_combout\,
	asdata => \uart_unit|transmitter|r_b_reg\(2),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => \uart_unit|transmitter|r_state_reg.s_data~q\,
	ena => \uart_unit|transmitter|r_b_reg[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_b_reg\(1));

-- Location: FF_X97_Y44_N11
\uart_unit|transmitter|r_b_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector16~20_combout\,
	asdata => \uart_unit|transmitter|r_b_reg\(1),
	clrn => \ALT_INV_i_rst~input_o\,
	sload => \uart_unit|transmitter|r_state_reg.s_data~q\,
	ena => \uart_unit|transmitter|r_b_reg[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_b_reg\(0));

-- Location: LCCOMB_X97_Y44_N0
\uart_unit|transmitter|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_unit|transmitter|Selector0~0_combout\ = (!\uart_unit|transmitter|r_state_reg.s_stop~q\ & (\uart_unit|transmitter|r_state_reg.s_idle~q\ & ((!\uart_unit|transmitter|r_state_reg.s_data~q\) # (!\uart_unit|transmitter|r_b_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_unit|transmitter|r_b_reg\(0),
	datab => \uart_unit|transmitter|r_state_reg.s_stop~q\,
	datac => \uart_unit|transmitter|r_state_reg.s_data~q\,
	datad => \uart_unit|transmitter|r_state_reg.s_idle~q\,
	combout => \uart_unit|transmitter|Selector0~0_combout\);

-- Location: FF_X97_Y44_N1
\uart_unit|transmitter|r_tx_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \uart_unit|transmitter|Selector0~0_combout\,
	clrn => \ALT_INV_i_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_unit|transmitter|r_tx_reg~q\);

ww_o_tx <= \o_tx~output_o\;

ww_o_rx_full <= \o_rx_full~output_o\;

ww_o_rx_empty <= \o_rx_empty~output_o\;

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


