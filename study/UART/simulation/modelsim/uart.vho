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

-- DATE "07/30/2020 22:02:20"

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

ENTITY 	uart IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	i_tx_dv : IN std_logic;
	tx_data : IN std_logic_vector(7 DOWNTO 0);
	o_tx_active : BUFFER std_logic;
	o_tx_serial : BUFFER std_logic;
	o_tx_done : BUFFER std_logic;
	i_rx_serial : IN std_logic;
	o_rx_dv : BUFFER std_logic;
	rx_data : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END uart;

-- Design Ports Information
-- rst	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_tx_dv	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[1]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[2]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[4]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[5]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[6]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[7]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rx_serial	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_i_tx_dv : std_logic;
SIGNAL ww_tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_tx_active : std_logic;
SIGNAL ww_o_tx_serial : std_logic;
SIGNAL ww_o_tx_done : std_logic;
SIGNAL ww_i_rx_serial : std_logic;
SIGNAL ww_o_rx_dv : std_logic;
SIGNAL ww_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \i_tx_dv~input_o\ : std_logic;
SIGNAL \tx_data[0]~input_o\ : std_logic;
SIGNAL \tx_data[1]~input_o\ : std_logic;
SIGNAL \tx_data[2]~input_o\ : std_logic;
SIGNAL \tx_data[3]~input_o\ : std_logic;
SIGNAL \tx_data[4]~input_o\ : std_logic;
SIGNAL \tx_data[5]~input_o\ : std_logic;
SIGNAL \tx_data[6]~input_o\ : std_logic;
SIGNAL \tx_data[7]~input_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \receiver|r_clk_count[0]~13_combout\ : std_logic;
SIGNAL \i_rx_serial~input_o\ : std_logic;
SIGNAL \receiver|r_rx_data_r~feeder_combout\ : std_logic;
SIGNAL \receiver|r_rx_data_r~q\ : std_logic;
SIGNAL \receiver|r_rx_data~q\ : std_logic;
SIGNAL \receiver|Equal0~2_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \receiver|Selector17~0_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_idle~q\ : std_logic;
SIGNAL \receiver|Equal0~0_combout\ : std_logic;
SIGNAL \receiver|Equal0~1_combout\ : std_logic;
SIGNAL \receiver|Equal0~3_combout\ : std_logic;
SIGNAL \receiver|Selector18~0_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_rx_start_bit~q\ : std_logic;
SIGNAL \receiver|r_clk_count[6]~39_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[6]~40_combout\ : std_logic;
SIGNAL \receiver|Selector14~0_combout\ : std_logic;
SIGNAL \receiver|Selector16~0_combout\ : std_logic;
SIGNAL \receiver|Selector14~2_combout\ : std_logic;
SIGNAL \receiver|Selector15~2_combout\ : std_logic;
SIGNAL \receiver|Selector15~3_combout\ : std_logic;
SIGNAL \receiver|Decoder0~0_combout\ : std_logic;
SIGNAL \receiver|Selector14~1_combout\ : std_logic;
SIGNAL \receiver|Selector14~3_combout\ : std_logic;
SIGNAL \receiver|Selector19~0_combout\ : std_logic;
SIGNAL \receiver|Selector19~1_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_rx_data_bits~q\ : std_logic;
SIGNAL \receiver|Decoder0~8_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_rx_stop_bit~0_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_rx_stop_bit~q\ : std_logic;
SIGNAL \receiver|Selector0~0_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[6]~41_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[6]~42_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[0]~14\ : std_logic;
SIGNAL \receiver|r_clk_count[1]~15_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[1]~16\ : std_logic;
SIGNAL \receiver|r_clk_count[2]~17_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[2]~18\ : std_logic;
SIGNAL \receiver|r_clk_count[3]~19_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[3]~20\ : std_logic;
SIGNAL \receiver|r_clk_count[4]~21_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[4]~22\ : std_logic;
SIGNAL \receiver|r_clk_count[5]~23_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[5]~24\ : std_logic;
SIGNAL \receiver|r_clk_count[6]~25_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[6]~26\ : std_logic;
SIGNAL \receiver|r_clk_count[7]~27_combout\ : std_logic;
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
SIGNAL \receiver|LessThan1~0_combout\ : std_logic;
SIGNAL \receiver|LessThan1~1_combout\ : std_logic;
SIGNAL \receiver|LessThan1~2_combout\ : std_logic;
SIGNAL \receiver|r_sm_main~7_combout\ : std_logic;
SIGNAL \receiver|Selector0~1_combout\ : std_logic;
SIGNAL \receiver|r_rx_dv~q\ : std_logic;
SIGNAL \transmitter|r_clk_count[0]~13_combout\ : std_logic;
SIGNAL \transmitter|Selector18~0_combout\ : std_logic;
SIGNAL \transmitter|LessThan1~2_combout\ : std_logic;
SIGNAL \transmitter|LessThan1~1_combout\ : std_logic;
SIGNAL \transmitter|LessThan1~4_combout\ : std_logic;
SIGNAL \transmitter|Selector18~1_combout\ : std_logic;
SIGNAL \transmitter|Selector17~0_combout\ : std_logic;
SIGNAL \transmitter|Selector17~1_combout\ : std_logic;
SIGNAL \transmitter|Selector16~0_combout\ : std_logic;
SIGNAL \transmitter|Selector16~1_combout\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_tx_stop_bit~0_combout\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_tx_stop_bit~1_combout\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_tx_stop_bit~q\ : std_logic;
SIGNAL \transmitter|r_sm_main~7_combout\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \transmitter|Selector19~0_combout\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_idle~q\ : std_logic;
SIGNAL \transmitter|r_clk_count[8]~35_combout\ : std_logic;
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
SIGNAL \transmitter|r_clk_count[11]~37\ : std_logic;
SIGNAL \transmitter|r_clk_count[12]~38_combout\ : std_logic;
SIGNAL \transmitter|LessThan1~0_combout\ : std_logic;
SIGNAL \transmitter|LessThan1~3_combout\ : std_logic;
SIGNAL \transmitter|Selector21~0_combout\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_tx_data_bits~q\ : std_logic;
SIGNAL \transmitter|Selector2~0_combout\ : std_logic;
SIGNAL \transmitter|Selector2~1_combout\ : std_logic;
SIGNAL \transmitter|r_tx_done~q\ : std_logic;
SIGNAL \r_tx_dv~0_combout\ : std_logic;
SIGNAL \r_tx_dv~q\ : std_logic;
SIGNAL \transmitter|Selector20~0_combout\ : std_logic;
SIGNAL \transmitter|r_sm_main.s_tx_start_bit~q\ : std_logic;
SIGNAL \transmitter|Selector0~0_combout\ : std_logic;
SIGNAL \transmitter|o_tx_active~q\ : std_logic;
SIGNAL \receiver|Decoder0~3_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[2]~2_combout\ : std_logic;
SIGNAL \r_tx_data[2]~feeder_combout\ : std_logic;
SIGNAL \transmitter|r_tx_data[2]~feeder_combout\ : std_logic;
SIGNAL \transmitter|Selector20~1_combout\ : std_logic;
SIGNAL \receiver|Decoder0~4_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[3]~3_combout\ : std_logic;
SIGNAL \r_tx_data[3]~feeder_combout\ : std_logic;
SIGNAL \receiver|Decoder0~2_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[1]~1_combout\ : std_logic;
SIGNAL \r_tx_data[1]~feeder_combout\ : std_logic;
SIGNAL \transmitter|r_tx_data[1]~feeder_combout\ : std_logic;
SIGNAL \receiver|Decoder0~1_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[0]~0_combout\ : std_logic;
SIGNAL \transmitter|Mux0~2_combout\ : std_logic;
SIGNAL \transmitter|Mux0~3_combout\ : std_logic;
SIGNAL \transmitter|Selector1~1_combout\ : std_logic;
SIGNAL \receiver|Decoder0~7_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[6]~6_combout\ : std_logic;
SIGNAL \r_tx_data[6]~feeder_combout\ : std_logic;
SIGNAL \transmitter|r_tx_data[6]~feeder_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[7]~7_combout\ : std_logic;
SIGNAL \r_tx_data[7]~feeder_combout\ : std_logic;
SIGNAL \receiver|Decoder0~6_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[5]~5_combout\ : std_logic;
SIGNAL \r_tx_data[5]~feeder_combout\ : std_logic;
SIGNAL \transmitter|r_tx_data[5]~feeder_combout\ : std_logic;
SIGNAL \receiver|Decoder0~5_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[4]~4_combout\ : std_logic;
SIGNAL \r_tx_data[4]~feeder_combout\ : std_logic;
SIGNAL \transmitter|Mux0~0_combout\ : std_logic;
SIGNAL \transmitter|Mux0~1_combout\ : std_logic;
SIGNAL \transmitter|Selector1~0_combout\ : std_logic;
SIGNAL \transmitter|Selector1~2_combout\ : std_logic;
SIGNAL \transmitter|o_tx_serial~q\ : std_logic;
SIGNAL \receiver|r_rx_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \transmitter|r_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \transmitter|r_bit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \receiver|r_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \transmitter|r_tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \receiver|r_bit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL r_tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \transmitter|ALT_INV_r_sm_main.s_cleanup~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
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

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\transmitter|ALT_INV_r_sm_main.s_cleanup~q\ <= NOT \transmitter|r_sm_main.s_cleanup~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

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
	i => \receiver|r_rx_byte\(0),
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
	i => \receiver|r_rx_byte\(1),
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
	i => \receiver|r_rx_byte\(2),
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
	i => \receiver|r_rx_byte\(3),
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
	i => \receiver|r_rx_byte\(4),
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
	i => \receiver|r_rx_byte\(5),
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
	i => \receiver|r_rx_byte\(6),
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
	i => \receiver|r_rx_byte\(7),
	devoe => ww_devoe,
	o => \rx_data[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X59_Y71_N4
\receiver|r_clk_count[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[0]~13_combout\ = \receiver|r_clk_count\(0) $ (VCC)
-- \receiver|r_clk_count[0]~14\ = CARRY(\receiver|r_clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(0),
	datad => VCC,
	combout => \receiver|r_clk_count[0]~13_combout\,
	cout => \receiver|r_clk_count[0]~14\);

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

-- Location: LCCOMB_X55_Y71_N24
\receiver|r_rx_data_r~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_rx_data_r~feeder_combout\ = \i_rx_serial~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_rx_serial~input_o\,
	combout => \receiver|r_rx_data_r~feeder_combout\);

-- Location: FF_X55_Y71_N25
\receiver|r_rx_data_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_data_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_data_r~q\);

-- Location: FF_X58_Y71_N11
\receiver|r_rx_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver|r_rx_data_r~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_data~q\);

-- Location: LCCOMB_X58_Y71_N6
\receiver|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Equal0~2_combout\ = (!\receiver|r_clk_count\(0) & (!\receiver|r_clk_count\(12) & (\receiver|r_clk_count\(11) & !\receiver|r_clk_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(0),
	datab => \receiver|r_clk_count\(12),
	datac => \receiver|r_clk_count\(11),
	datad => \receiver|r_clk_count\(1),
	combout => \receiver|Equal0~2_combout\);

-- Location: FF_X58_Y71_N27
\receiver|r_sm_main.s_cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_sm_main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_sm_main.s_cleanup~q\);

-- Location: LCCOMB_X58_Y71_N24
\receiver|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector17~0_combout\ = (!\receiver|r_sm_main.s_cleanup~q\ & (((!\receiver|r_clk_count[6]~40_combout\ & \receiver|r_sm_main.s_idle~q\)) # (!\receiver|r_rx_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_data~q\,
	datab => \receiver|r_clk_count[6]~40_combout\,
	datac => \receiver|r_sm_main.s_idle~q\,
	datad => \receiver|r_sm_main.s_cleanup~q\,
	combout => \receiver|Selector17~0_combout\);

-- Location: FF_X58_Y71_N25
\receiver|r_sm_main.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_sm_main.s_idle~q\);

-- Location: LCCOMB_X58_Y71_N22
\receiver|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Equal0~0_combout\ = (!\receiver|r_clk_count\(8) & (\receiver|r_clk_count\(3) & (!\receiver|r_clk_count\(4) & !\receiver|r_clk_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(8),
	datab => \receiver|r_clk_count\(3),
	datac => \receiver|r_clk_count\(4),
	datad => \receiver|r_clk_count\(7),
	combout => \receiver|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y71_N28
\receiver|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Equal0~1_combout\ = (!\receiver|r_clk_count\(6) & (!\receiver|r_clk_count\(10) & (\receiver|r_clk_count\(5) & \receiver|r_clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(6),
	datab => \receiver|r_clk_count\(10),
	datac => \receiver|r_clk_count\(5),
	datad => \receiver|r_clk_count\(9),
	combout => \receiver|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y71_N18
\receiver|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Equal0~3_combout\ = (\receiver|Equal0~2_combout\ & (\receiver|r_clk_count\(2) & (\receiver|Equal0~0_combout\ & \receiver|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Equal0~2_combout\,
	datab => \receiver|r_clk_count\(2),
	datac => \receiver|Equal0~0_combout\,
	datad => \receiver|Equal0~1_combout\,
	combout => \receiver|Equal0~3_combout\);

-- Location: LCCOMB_X58_Y71_N8
\receiver|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector18~0_combout\ = (\receiver|r_rx_data~q\ & (((\receiver|r_sm_main.s_rx_start_bit~q\ & !\receiver|Equal0~3_combout\)))) # (!\receiver|r_rx_data~q\ & (((\receiver|r_sm_main.s_rx_start_bit~q\ & !\receiver|Equal0~3_combout\)) # 
-- (!\receiver|r_sm_main.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_data~q\,
	datab => \receiver|r_sm_main.s_idle~q\,
	datac => \receiver|r_sm_main.s_rx_start_bit~q\,
	datad => \receiver|Equal0~3_combout\,
	combout => \receiver|Selector18~0_combout\);

-- Location: FF_X58_Y71_N9
\receiver|r_sm_main.s_rx_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_sm_main.s_rx_start_bit~q\);

-- Location: LCCOMB_X58_Y71_N0
\receiver|r_clk_count[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[6]~39_combout\ = (\receiver|r_clk_count\(2) & \receiver|r_sm_main.s_rx_start_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(2),
	datac => \receiver|r_sm_main.s_rx_start_bit~q\,
	combout => \receiver|r_clk_count[6]~39_combout\);

-- Location: LCCOMB_X58_Y71_N2
\receiver|r_clk_count[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[6]~40_combout\ = (\receiver|Equal0~2_combout\ & (\receiver|r_clk_count[6]~39_combout\ & (\receiver|Equal0~0_combout\ & \receiver|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Equal0~2_combout\,
	datab => \receiver|r_clk_count[6]~39_combout\,
	datac => \receiver|Equal0~0_combout\,
	datad => \receiver|Equal0~1_combout\,
	combout => \receiver|r_clk_count[6]~40_combout\);

-- Location: LCCOMB_X60_Y71_N10
\receiver|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector14~0_combout\ = (\receiver|r_sm_main.s_idle~q\ & !\receiver|r_sm_main.s_rx_data_bits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|r_sm_main.s_idle~q\,
	datad => \receiver|r_sm_main.s_rx_data_bits~q\,
	combout => \receiver|Selector14~0_combout\);

-- Location: LCCOMB_X60_Y71_N8
\receiver|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector16~0_combout\ = (\receiver|r_sm_main.s_rx_data_bits~q\ & ((\receiver|r_bit_index\(0) $ (\receiver|LessThan1~2_combout\)))) # (!\receiver|r_sm_main.s_rx_data_bits~q\ & (\receiver|r_sm_main.s_idle~q\ & (\receiver|r_bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_idle~q\,
	datab => \receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|LessThan1~2_combout\,
	combout => \receiver|Selector16~0_combout\);

-- Location: FF_X60_Y71_N9
\receiver|r_bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_bit_index\(0));

-- Location: LCCOMB_X58_Y71_N14
\receiver|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector14~2_combout\ = (\receiver|r_sm_main.s_rx_data_bits~q\ & (\receiver|r_bit_index\(2) & ((!\receiver|LessThan1~2_combout\) # (!\receiver|r_bit_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_rx_data_bits~q\,
	datab => \receiver|r_bit_index\(0),
	datac => \receiver|LessThan1~2_combout\,
	datad => \receiver|r_bit_index\(2),
	combout => \receiver|Selector14~2_combout\);

-- Location: LCCOMB_X60_Y71_N12
\receiver|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector15~2_combout\ = (\receiver|r_sm_main.s_rx_data_bits~q\ & (\receiver|r_bit_index\(1) $ (((\receiver|r_bit_index\(0) & \receiver|LessThan1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(1),
	datab => \receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|LessThan1~2_combout\,
	combout => \receiver|Selector15~2_combout\);

-- Location: LCCOMB_X60_Y71_N18
\receiver|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector15~3_combout\ = (\receiver|Selector15~2_combout\) # ((\receiver|r_sm_main.s_idle~q\ & (!\receiver|r_sm_main.s_rx_data_bits~q\ & \receiver|r_bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_idle~q\,
	datab => \receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \receiver|r_bit_index\(1),
	datad => \receiver|Selector15~2_combout\,
	combout => \receiver|Selector15~3_combout\);

-- Location: FF_X60_Y71_N19
\receiver|r_bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|Selector15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_bit_index\(1));

-- Location: LCCOMB_X57_Y71_N18
\receiver|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~0_combout\ = (\receiver|r_sm_main.s_rx_data_bits~q\ & \receiver|LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|r_sm_main.s_rx_data_bits~q\,
	datad => \receiver|LessThan1~2_combout\,
	combout => \receiver|Decoder0~0_combout\);

-- Location: LCCOMB_X57_Y71_N10
\receiver|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector14~1_combout\ = (\receiver|r_bit_index\(0) & (\receiver|Decoder0~0_combout\ & (\receiver|r_bit_index\(2) $ (\receiver|r_bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(2),
	datab => \receiver|r_bit_index\(0),
	datac => \receiver|r_bit_index\(1),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Selector14~1_combout\);

-- Location: LCCOMB_X57_Y71_N12
\receiver|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector14~3_combout\ = (\receiver|Selector14~2_combout\) # ((\receiver|Selector14~1_combout\) # ((\receiver|Selector14~0_combout\ & \receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Selector14~0_combout\,
	datab => \receiver|Selector14~2_combout\,
	datac => \receiver|r_bit_index\(2),
	datad => \receiver|Selector14~1_combout\,
	combout => \receiver|Selector14~3_combout\);

-- Location: FF_X57_Y71_N13
\receiver|r_bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_bit_index\(2));

-- Location: LCCOMB_X58_Y71_N20
\receiver|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector19~0_combout\ = (\receiver|r_bit_index\(2) & (\receiver|r_bit_index\(1) & (\receiver|LessThan1~2_combout\ & \receiver|r_bit_index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(2),
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|LessThan1~2_combout\,
	datad => \receiver|r_bit_index\(0),
	combout => \receiver|Selector19~0_combout\);

-- Location: LCCOMB_X58_Y71_N30
\receiver|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector19~1_combout\ = (\receiver|r_rx_data~q\ & (((\receiver|r_sm_main.s_rx_data_bits~q\ & !\receiver|Selector19~0_combout\)))) # (!\receiver|r_rx_data~q\ & ((\receiver|r_clk_count[6]~40_combout\) # ((\receiver|r_sm_main.s_rx_data_bits~q\ & 
-- !\receiver|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_data~q\,
	datab => \receiver|r_clk_count[6]~40_combout\,
	datac => \receiver|r_sm_main.s_rx_data_bits~q\,
	datad => \receiver|Selector19~0_combout\,
	combout => \receiver|Selector19~1_combout\);

-- Location: FF_X58_Y71_N31
\receiver|r_sm_main.s_rx_data_bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_sm_main.s_rx_data_bits~q\);

-- Location: LCCOMB_X57_Y71_N24
\receiver|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~8_combout\ = (\receiver|r_bit_index\(2) & (\receiver|r_bit_index\(0) & (\receiver|r_bit_index\(1) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(2),
	datab => \receiver|r_bit_index\(0),
	datac => \receiver|r_bit_index\(1),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~8_combout\);

-- Location: LCCOMB_X57_Y71_N22
\receiver|r_sm_main.s_rx_stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_sm_main.s_rx_stop_bit~0_combout\ = (\receiver|Decoder0~8_combout\) # ((!\receiver|LessThan1~2_combout\ & \receiver|r_sm_main.s_rx_stop_bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver|LessThan1~2_combout\,
	datac => \receiver|r_sm_main.s_rx_stop_bit~q\,
	datad => \receiver|Decoder0~8_combout\,
	combout => \receiver|r_sm_main.s_rx_stop_bit~0_combout\);

-- Location: FF_X57_Y71_N23
\receiver|r_sm_main.s_rx_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_sm_main.s_rx_stop_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_sm_main.s_rx_stop_bit~q\);

-- Location: LCCOMB_X58_Y71_N12
\receiver|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector0~0_combout\ = (!\receiver|r_sm_main.s_rx_data_bits~q\ & !\receiver|r_sm_main.s_rx_stop_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|r_sm_main.s_rx_data_bits~q\,
	datad => \receiver|r_sm_main.s_rx_stop_bit~q\,
	combout => \receiver|Selector0~0_combout\);

-- Location: LCCOMB_X58_Y71_N4
\receiver|r_clk_count[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[6]~41_combout\ = \receiver|r_sm_main.s_idle~q\ $ (\receiver|r_clk_count[6]~40_combout\ $ (((\receiver|Selector0~0_combout\) # (!\receiver|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Selector0~0_combout\,
	datab => \receiver|r_sm_main.s_idle~q\,
	datac => \receiver|LessThan1~2_combout\,
	datad => \receiver|r_clk_count[6]~40_combout\,
	combout => \receiver|r_clk_count[6]~41_combout\);

-- Location: LCCOMB_X58_Y71_N10
\receiver|r_clk_count[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[6]~42_combout\ = (!\receiver|r_sm_main.s_cleanup~q\ & (((!\receiver|Equal0~3_combout\) # (!\receiver|r_rx_data~q\)) # (!\receiver|r_sm_main.s_rx_start_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_cleanup~q\,
	datab => \receiver|r_sm_main.s_rx_start_bit~q\,
	datac => \receiver|r_rx_data~q\,
	datad => \receiver|Equal0~3_combout\,
	combout => \receiver|r_clk_count[6]~42_combout\);

-- Location: FF_X59_Y71_N5
\receiver|r_clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[0]~13_combout\,
	sclr => \receiver|r_clk_count[6]~41_combout\,
	ena => \receiver|r_clk_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(0));

-- Location: LCCOMB_X59_Y71_N6
\receiver|r_clk_count[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[1]~15_combout\ = (\receiver|r_clk_count\(1) & (!\receiver|r_clk_count[0]~14\)) # (!\receiver|r_clk_count\(1) & ((\receiver|r_clk_count[0]~14\) # (GND)))
-- \receiver|r_clk_count[1]~16\ = CARRY((!\receiver|r_clk_count[0]~14\) # (!\receiver|r_clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(1),
	datad => VCC,
	cin => \receiver|r_clk_count[0]~14\,
	combout => \receiver|r_clk_count[1]~15_combout\,
	cout => \receiver|r_clk_count[1]~16\);

-- Location: FF_X59_Y71_N7
\receiver|r_clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[1]~15_combout\,
	sclr => \receiver|r_clk_count[6]~41_combout\,
	ena => \receiver|r_clk_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(1));

-- Location: LCCOMB_X59_Y71_N8
\receiver|r_clk_count[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[2]~17_combout\ = (\receiver|r_clk_count\(2) & (\receiver|r_clk_count[1]~16\ $ (GND))) # (!\receiver|r_clk_count\(2) & (!\receiver|r_clk_count[1]~16\ & VCC))
-- \receiver|r_clk_count[2]~18\ = CARRY((\receiver|r_clk_count\(2) & !\receiver|r_clk_count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(2),
	datad => VCC,
	cin => \receiver|r_clk_count[1]~16\,
	combout => \receiver|r_clk_count[2]~17_combout\,
	cout => \receiver|r_clk_count[2]~18\);

-- Location: FF_X59_Y71_N9
\receiver|r_clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[2]~17_combout\,
	sclr => \receiver|r_clk_count[6]~41_combout\,
	ena => \receiver|r_clk_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(2));

-- Location: LCCOMB_X59_Y71_N10
\receiver|r_clk_count[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[3]~19_combout\ = (\receiver|r_clk_count\(3) & (!\receiver|r_clk_count[2]~18\)) # (!\receiver|r_clk_count\(3) & ((\receiver|r_clk_count[2]~18\) # (GND)))
-- \receiver|r_clk_count[3]~20\ = CARRY((!\receiver|r_clk_count[2]~18\) # (!\receiver|r_clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(3),
	datad => VCC,
	cin => \receiver|r_clk_count[2]~18\,
	combout => \receiver|r_clk_count[3]~19_combout\,
	cout => \receiver|r_clk_count[3]~20\);

-- Location: FF_X59_Y71_N11
\receiver|r_clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[3]~19_combout\,
	sclr => \receiver|r_clk_count[6]~41_combout\,
	ena => \receiver|r_clk_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(3));

-- Location: LCCOMB_X59_Y71_N12
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

-- Location: FF_X59_Y71_N13
\receiver|r_clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[4]~21_combout\,
	sclr => \receiver|r_clk_count[6]~41_combout\,
	ena => \receiver|r_clk_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(4));

-- Location: LCCOMB_X59_Y71_N14
\receiver|r_clk_count[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[5]~23_combout\ = (\receiver|r_clk_count\(5) & (!\receiver|r_clk_count[4]~22\)) # (!\receiver|r_clk_count\(5) & ((\receiver|r_clk_count[4]~22\) # (GND)))
-- \receiver|r_clk_count[5]~24\ = CARRY((!\receiver|r_clk_count[4]~22\) # (!\receiver|r_clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(5),
	datad => VCC,
	cin => \receiver|r_clk_count[4]~22\,
	combout => \receiver|r_clk_count[5]~23_combout\,
	cout => \receiver|r_clk_count[5]~24\);

-- Location: FF_X59_Y71_N15
\receiver|r_clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[5]~23_combout\,
	sclr => \receiver|r_clk_count[6]~41_combout\,
	ena => \receiver|r_clk_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(5));

-- Location: LCCOMB_X59_Y71_N16
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

-- Location: FF_X59_Y71_N17
\receiver|r_clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[6]~25_combout\,
	sclr => \receiver|r_clk_count[6]~41_combout\,
	ena => \receiver|r_clk_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(6));

-- Location: LCCOMB_X59_Y71_N18
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

-- Location: FF_X59_Y71_N19
\receiver|r_clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[7]~27_combout\,
	sclr => \receiver|r_clk_count[6]~41_combout\,
	ena => \receiver|r_clk_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(7));

-- Location: LCCOMB_X59_Y71_N20
\receiver|r_clk_count[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[8]~29_combout\ = (\receiver|r_clk_count\(8) & (\receiver|r_clk_count[7]~28\ $ (GND))) # (!\receiver|r_clk_count\(8) & (!\receiver|r_clk_count[7]~28\ & VCC))
-- \receiver|r_clk_count[8]~30\ = CARRY((\receiver|r_clk_count\(8) & !\receiver|r_clk_count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(8),
	datad => VCC,
	cin => \receiver|r_clk_count[7]~28\,
	combout => \receiver|r_clk_count[8]~29_combout\,
	cout => \receiver|r_clk_count[8]~30\);

-- Location: FF_X59_Y71_N21
\receiver|r_clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[8]~29_combout\,
	sclr => \receiver|r_clk_count[6]~41_combout\,
	ena => \receiver|r_clk_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(8));

-- Location: LCCOMB_X59_Y71_N22
\receiver|r_clk_count[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[9]~31_combout\ = (\receiver|r_clk_count\(9) & (!\receiver|r_clk_count[8]~30\)) # (!\receiver|r_clk_count\(9) & ((\receiver|r_clk_count[8]~30\) # (GND)))
-- \receiver|r_clk_count[9]~32\ = CARRY((!\receiver|r_clk_count[8]~30\) # (!\receiver|r_clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(9),
	datad => VCC,
	cin => \receiver|r_clk_count[8]~30\,
	combout => \receiver|r_clk_count[9]~31_combout\,
	cout => \receiver|r_clk_count[9]~32\);

-- Location: FF_X59_Y71_N23
\receiver|r_clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[9]~31_combout\,
	sclr => \receiver|r_clk_count[6]~41_combout\,
	ena => \receiver|r_clk_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(9));

-- Location: LCCOMB_X59_Y71_N24
\receiver|r_clk_count[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[10]~33_combout\ = (\receiver|r_clk_count\(10) & (\receiver|r_clk_count[9]~32\ $ (GND))) # (!\receiver|r_clk_count\(10) & (!\receiver|r_clk_count[9]~32\ & VCC))
-- \receiver|r_clk_count[10]~34\ = CARRY((\receiver|r_clk_count\(10) & !\receiver|r_clk_count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver|r_clk_count\(10),
	datad => VCC,
	cin => \receiver|r_clk_count[9]~32\,
	combout => \receiver|r_clk_count[10]~33_combout\,
	cout => \receiver|r_clk_count[10]~34\);

-- Location: FF_X59_Y71_N25
\receiver|r_clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[10]~33_combout\,
	sclr => \receiver|r_clk_count[6]~41_combout\,
	ena => \receiver|r_clk_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(10));

-- Location: LCCOMB_X59_Y71_N26
\receiver|r_clk_count[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[11]~35_combout\ = (\receiver|r_clk_count\(11) & (!\receiver|r_clk_count[10]~34\)) # (!\receiver|r_clk_count\(11) & ((\receiver|r_clk_count[10]~34\) # (GND)))
-- \receiver|r_clk_count[11]~36\ = CARRY((!\receiver|r_clk_count[10]~34\) # (!\receiver|r_clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(11),
	datad => VCC,
	cin => \receiver|r_clk_count[10]~34\,
	combout => \receiver|r_clk_count[11]~35_combout\,
	cout => \receiver|r_clk_count[11]~36\);

-- Location: FF_X59_Y71_N27
\receiver|r_clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[11]~35_combout\,
	sclr => \receiver|r_clk_count[6]~41_combout\,
	ena => \receiver|r_clk_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(11));

-- Location: LCCOMB_X59_Y71_N28
\receiver|r_clk_count[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[12]~37_combout\ = \receiver|r_clk_count[11]~36\ $ (!\receiver|r_clk_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \receiver|r_clk_count\(12),
	cin => \receiver|r_clk_count[11]~36\,
	combout => \receiver|r_clk_count[12]~37_combout\);

-- Location: FF_X59_Y71_N29
\receiver|r_clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[12]~37_combout\,
	sclr => \receiver|r_clk_count[6]~41_combout\,
	ena => \receiver|r_clk_count[6]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(12));

-- Location: LCCOMB_X59_Y71_N0
\receiver|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|LessThan1~0_combout\ = ((!\receiver|r_clk_count\(5) & ((!\receiver|r_clk_count\(3)) # (!\receiver|r_clk_count\(4))))) # (!\receiver|r_clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(4),
	datab => \receiver|r_clk_count\(6),
	datac => \receiver|r_clk_count\(5),
	datad => \receiver|r_clk_count\(3),
	combout => \receiver|LessThan1~0_combout\);

-- Location: LCCOMB_X59_Y71_N2
\receiver|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|LessThan1~1_combout\ = (\receiver|r_clk_count\(9)) # ((\receiver|r_clk_count\(7)) # ((\receiver|r_clk_count\(8)) # (!\receiver|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(9),
	datab => \receiver|r_clk_count\(7),
	datac => \receiver|r_clk_count\(8),
	datad => \receiver|LessThan1~0_combout\,
	combout => \receiver|LessThan1~1_combout\);

-- Location: LCCOMB_X59_Y71_N30
\receiver|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|LessThan1~2_combout\ = (\receiver|r_clk_count\(12) & ((\receiver|r_clk_count\(11)) # ((\receiver|r_clk_count\(10) & \receiver|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(12),
	datab => \receiver|r_clk_count\(10),
	datac => \receiver|r_clk_count\(11),
	datad => \receiver|LessThan1~1_combout\,
	combout => \receiver|LessThan1~2_combout\);

-- Location: LCCOMB_X58_Y71_N26
\receiver|r_sm_main~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_sm_main~7_combout\ = (\receiver|LessThan1~2_combout\ & \receiver|r_sm_main.s_rx_stop_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|LessThan1~2_combout\,
	datad => \receiver|r_sm_main.s_rx_stop_bit~q\,
	combout => \receiver|r_sm_main~7_combout\);

-- Location: LCCOMB_X58_Y71_N16
\receiver|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector0~1_combout\ = (\receiver|r_sm_main~7_combout\) # ((\receiver|r_rx_dv~q\ & ((\receiver|r_sm_main.s_rx_start_bit~q\) # (!\receiver|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main~7_combout\,
	datab => \receiver|r_sm_main.s_rx_start_bit~q\,
	datac => \receiver|r_rx_dv~q\,
	datad => \receiver|Selector0~0_combout\,
	combout => \receiver|Selector0~1_combout\);

-- Location: FF_X58_Y71_N17
\receiver|r_rx_dv\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_dv~q\);

-- Location: LCCOMB_X55_Y70_N2
\transmitter|r_clk_count[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[0]~13_combout\ = \transmitter|r_clk_count\(0) $ (VCC)
-- \transmitter|r_clk_count[0]~14\ = CARRY(\transmitter|r_clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_clk_count\(0),
	datad => VCC,
	combout => \transmitter|r_clk_count[0]~13_combout\,
	cout => \transmitter|r_clk_count[0]~14\);

-- Location: LCCOMB_X56_Y70_N26
\transmitter|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector18~0_combout\ = (\transmitter|r_sm_main.s_tx_data_bits~q\ & (\transmitter|r_clk_count\(12))) # (!\transmitter|r_sm_main.s_tx_data_bits~q\ & ((\transmitter|r_sm_main.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(12),
	datac => \transmitter|r_sm_main.s_idle~q\,
	datad => \transmitter|r_sm_main.s_tx_data_bits~q\,
	combout => \transmitter|Selector18~0_combout\);

-- Location: LCCOMB_X55_Y70_N30
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

-- Location: LCCOMB_X55_Y70_N28
\transmitter|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|LessThan1~1_combout\ = ((!\transmitter|r_clk_count\(5) & ((!\transmitter|r_clk_count\(4)) # (!\transmitter|r_clk_count\(3))))) # (!\transmitter|r_clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(5),
	datab => \transmitter|r_clk_count\(6),
	datac => \transmitter|r_clk_count\(3),
	datad => \transmitter|r_clk_count\(4),
	combout => \transmitter|LessThan1~1_combout\);

-- Location: LCCOMB_X56_Y70_N28
\transmitter|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|LessThan1~4_combout\ = (\transmitter|r_clk_count\(11) & (\transmitter|LessThan1~2_combout\ & ((\transmitter|LessThan1~1_combout\)))) # (!\transmitter|r_clk_count\(11) & (((\transmitter|LessThan1~2_combout\ & 
-- \transmitter|LessThan1~1_combout\)) # (!\transmitter|r_clk_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(11),
	datab => \transmitter|LessThan1~2_combout\,
	datac => \transmitter|r_clk_count\(10),
	datad => \transmitter|LessThan1~1_combout\,
	combout => \transmitter|LessThan1~4_combout\);

-- Location: LCCOMB_X56_Y70_N8
\transmitter|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector18~1_combout\ = (\transmitter|Selector18~0_combout\ & (\transmitter|r_bit_index\(0) $ (((!\transmitter|LessThan1~4_combout\ & \transmitter|r_sm_main.s_tx_data_bits~q\))))) # (!\transmitter|Selector18~0_combout\ & 
-- (((\transmitter|r_bit_index\(0) & \transmitter|r_sm_main.s_tx_data_bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|Selector18~0_combout\,
	datab => \transmitter|LessThan1~4_combout\,
	datac => \transmitter|r_bit_index\(0),
	datad => \transmitter|r_sm_main.s_tx_data_bits~q\,
	combout => \transmitter|Selector18~1_combout\);

-- Location: FF_X56_Y70_N9
\transmitter|r_bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_bit_index\(0));

-- Location: LCCOMB_X56_Y70_N22
\transmitter|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector17~0_combout\ = (\transmitter|r_sm_main.s_tx_data_bits~q\ & (\transmitter|r_bit_index\(0))) # (!\transmitter|r_sm_main.s_tx_data_bits~q\ & ((\transmitter|r_sm_main.s_idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datab => \transmitter|r_bit_index\(0),
	datac => \transmitter|r_sm_main.s_idle~q\,
	combout => \transmitter|Selector17~0_combout\);

-- Location: LCCOMB_X56_Y70_N14
\transmitter|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector17~1_combout\ = (\transmitter|Selector17~0_combout\ & (\transmitter|r_bit_index\(1) $ (((!\transmitter|LessThan1~3_combout\ & \transmitter|r_sm_main.s_tx_data_bits~q\))))) # (!\transmitter|Selector17~0_combout\ & 
-- (((\transmitter|r_bit_index\(1) & \transmitter|r_sm_main.s_tx_data_bits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|Selector17~0_combout\,
	datab => \transmitter|LessThan1~3_combout\,
	datac => \transmitter|r_bit_index\(1),
	datad => \transmitter|r_sm_main.s_tx_data_bits~q\,
	combout => \transmitter|Selector17~1_combout\);

-- Location: FF_X56_Y70_N15
\transmitter|r_bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_bit_index\(1));

-- Location: LCCOMB_X56_Y70_N20
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

-- Location: LCCOMB_X56_Y70_N18
\transmitter|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector16~1_combout\ = (\transmitter|r_sm_main.s_tx_data_bits~q\ & ((\transmitter|Selector16~0_combout\ $ (\transmitter|r_bit_index\(2))))) # (!\transmitter|r_sm_main.s_tx_data_bits~q\ & (\transmitter|r_sm_main.s_idle~q\ & 
-- ((\transmitter|r_bit_index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_idle~q\,
	datab => \transmitter|Selector16~0_combout\,
	datac => \transmitter|r_bit_index\(2),
	datad => \transmitter|r_sm_main.s_tx_data_bits~q\,
	combout => \transmitter|Selector16~1_combout\);

-- Location: FF_X56_Y70_N19
\transmitter|r_bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_bit_index\(2));

-- Location: LCCOMB_X56_Y70_N12
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

-- Location: LCCOMB_X56_Y70_N4
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

-- Location: FF_X56_Y70_N5
\transmitter|r_sm_main.s_tx_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_sm_main.s_tx_stop_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_sm_main.s_tx_stop_bit~q\);

-- Location: LCCOMB_X56_Y70_N24
\transmitter|r_sm_main~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_sm_main~7_combout\ = (\transmitter|r_sm_main.s_tx_stop_bit~q\ & !\transmitter|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \transmitter|r_sm_main.s_tx_stop_bit~q\,
	datad => \transmitter|LessThan1~3_combout\,
	combout => \transmitter|r_sm_main~7_combout\);

-- Location: FF_X56_Y70_N25
\transmitter|r_sm_main.s_cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_sm_main~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_sm_main.s_cleanup~q\);

-- Location: LCCOMB_X56_Y71_N20
\transmitter|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector19~0_combout\ = (!\transmitter|r_sm_main.s_cleanup~q\ & ((\transmitter|r_sm_main.s_idle~q\) # (\r_tx_dv~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_sm_main.s_cleanup~q\,
	datac => \transmitter|r_sm_main.s_idle~q\,
	datad => \r_tx_dv~q\,
	combout => \transmitter|Selector19~0_combout\);

-- Location: FF_X56_Y71_N21
\transmitter|r_sm_main.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_sm_main.s_idle~q\);

-- Location: LCCOMB_X56_Y70_N10
\transmitter|r_clk_count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[8]~35_combout\ = (!\transmitter|LessThan1~3_combout\) # (!\transmitter|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \transmitter|r_sm_main.s_idle~q\,
	datad => \transmitter|LessThan1~3_combout\,
	combout => \transmitter|r_clk_count[8]~35_combout\);

-- Location: FF_X55_Y70_N3
\transmitter|r_clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[0]~13_combout\,
	sclr => \transmitter|r_clk_count[8]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(0));

-- Location: LCCOMB_X55_Y70_N4
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

-- Location: FF_X55_Y70_N5
\transmitter|r_clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[1]~15_combout\,
	sclr => \transmitter|r_clk_count[8]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(1));

-- Location: LCCOMB_X55_Y70_N6
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

-- Location: FF_X55_Y70_N7
\transmitter|r_clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[2]~17_combout\,
	sclr => \transmitter|r_clk_count[8]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(2));

-- Location: LCCOMB_X55_Y70_N8
\transmitter|r_clk_count[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[3]~19_combout\ = (\transmitter|r_clk_count\(3) & (!\transmitter|r_clk_count[2]~18\)) # (!\transmitter|r_clk_count\(3) & ((\transmitter|r_clk_count[2]~18\) # (GND)))
-- \transmitter|r_clk_count[3]~20\ = CARRY((!\transmitter|r_clk_count[2]~18\) # (!\transmitter|r_clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_clk_count\(3),
	datad => VCC,
	cin => \transmitter|r_clk_count[2]~18\,
	combout => \transmitter|r_clk_count[3]~19_combout\,
	cout => \transmitter|r_clk_count[3]~20\);

-- Location: FF_X55_Y70_N9
\transmitter|r_clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[3]~19_combout\,
	sclr => \transmitter|r_clk_count[8]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(3));

-- Location: LCCOMB_X55_Y70_N10
\transmitter|r_clk_count[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[4]~21_combout\ = (\transmitter|r_clk_count\(4) & (\transmitter|r_clk_count[3]~20\ $ (GND))) # (!\transmitter|r_clk_count\(4) & (!\transmitter|r_clk_count[3]~20\ & VCC))
-- \transmitter|r_clk_count[4]~22\ = CARRY((\transmitter|r_clk_count\(4) & !\transmitter|r_clk_count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(4),
	datad => VCC,
	cin => \transmitter|r_clk_count[3]~20\,
	combout => \transmitter|r_clk_count[4]~21_combout\,
	cout => \transmitter|r_clk_count[4]~22\);

-- Location: FF_X55_Y70_N11
\transmitter|r_clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[4]~21_combout\,
	sclr => \transmitter|r_clk_count[8]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(4));

-- Location: LCCOMB_X55_Y70_N12
\transmitter|r_clk_count[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[5]~23_combout\ = (\transmitter|r_clk_count\(5) & (!\transmitter|r_clk_count[4]~22\)) # (!\transmitter|r_clk_count\(5) & ((\transmitter|r_clk_count[4]~22\) # (GND)))
-- \transmitter|r_clk_count[5]~24\ = CARRY((!\transmitter|r_clk_count[4]~22\) # (!\transmitter|r_clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(5),
	datad => VCC,
	cin => \transmitter|r_clk_count[4]~22\,
	combout => \transmitter|r_clk_count[5]~23_combout\,
	cout => \transmitter|r_clk_count[5]~24\);

-- Location: FF_X55_Y70_N13
\transmitter|r_clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[5]~23_combout\,
	sclr => \transmitter|r_clk_count[8]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(5));

-- Location: LCCOMB_X55_Y70_N14
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

-- Location: FF_X55_Y70_N15
\transmitter|r_clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[6]~25_combout\,
	sclr => \transmitter|r_clk_count[8]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(6));

-- Location: LCCOMB_X55_Y70_N16
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

-- Location: FF_X55_Y70_N17
\transmitter|r_clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[7]~27_combout\,
	sclr => \transmitter|r_clk_count[8]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(7));

-- Location: LCCOMB_X55_Y70_N18
\transmitter|r_clk_count[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_clk_count[8]~29_combout\ = (\transmitter|r_clk_count\(8) & (\transmitter|r_clk_count[7]~28\ $ (GND))) # (!\transmitter|r_clk_count\(8) & (!\transmitter|r_clk_count[7]~28\ & VCC))
-- \transmitter|r_clk_count[8]~30\ = CARRY((\transmitter|r_clk_count\(8) & !\transmitter|r_clk_count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_clk_count\(8),
	datad => VCC,
	cin => \transmitter|r_clk_count[7]~28\,
	combout => \transmitter|r_clk_count[8]~29_combout\,
	cout => \transmitter|r_clk_count[8]~30\);

-- Location: FF_X55_Y70_N19
\transmitter|r_clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[8]~29_combout\,
	sclr => \transmitter|r_clk_count[8]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(8));

-- Location: LCCOMB_X55_Y70_N20
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

-- Location: FF_X55_Y70_N21
\transmitter|r_clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[9]~31_combout\,
	sclr => \transmitter|r_clk_count[8]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(9));

-- Location: LCCOMB_X55_Y70_N22
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

-- Location: FF_X55_Y70_N23
\transmitter|r_clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[10]~33_combout\,
	sclr => \transmitter|r_clk_count[8]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(10));

-- Location: LCCOMB_X55_Y70_N24
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

-- Location: FF_X55_Y70_N25
\transmitter|r_clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[11]~36_combout\,
	sclr => \transmitter|r_clk_count[8]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(11));

-- Location: LCCOMB_X55_Y70_N26
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

-- Location: FF_X55_Y70_N27
\transmitter|r_clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_clk_count[12]~38_combout\,
	sclr => \transmitter|r_clk_count[8]~35_combout\,
	ena => \transmitter|ALT_INV_r_sm_main.s_cleanup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_clk_count\(12));

-- Location: LCCOMB_X55_Y70_N0
\transmitter|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|LessThan1~0_combout\ = (!\transmitter|r_clk_count\(10) & !\transmitter|r_clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \transmitter|r_clk_count\(10),
	datad => \transmitter|r_clk_count\(11),
	combout => \transmitter|LessThan1~0_combout\);

-- Location: LCCOMB_X56_Y70_N2
\transmitter|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|LessThan1~3_combout\ = ((\transmitter|LessThan1~0_combout\) # ((\transmitter|LessThan1~1_combout\ & \transmitter|LessThan1~2_combout\))) # (!\transmitter|r_clk_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_clk_count\(12),
	datab => \transmitter|LessThan1~1_combout\,
	datac => \transmitter|LessThan1~0_combout\,
	datad => \transmitter|LessThan1~2_combout\,
	combout => \transmitter|LessThan1~3_combout\);

-- Location: LCCOMB_X56_Y70_N6
\transmitter|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector21~0_combout\ = (\transmitter|r_sm_main.s_tx_start_bit~q\ & (((\transmitter|r_sm_main.s_tx_data_bits~q\ & !\transmitter|r_sm_main.s_tx_stop_bit~0_combout\)) # (!\transmitter|LessThan1~3_combout\))) # 
-- (!\transmitter|r_sm_main.s_tx_start_bit~q\ & (((\transmitter|r_sm_main.s_tx_data_bits~q\ & !\transmitter|r_sm_main.s_tx_stop_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_tx_start_bit~q\,
	datab => \transmitter|LessThan1~3_combout\,
	datac => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datad => \transmitter|r_sm_main.s_tx_stop_bit~0_combout\,
	combout => \transmitter|Selector21~0_combout\);

-- Location: FF_X56_Y70_N7
\transmitter|r_sm_main.s_tx_data_bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_sm_main.s_tx_data_bits~q\);

-- Location: LCCOMB_X56_Y71_N10
\transmitter|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector2~0_combout\ = (\transmitter|r_tx_done~q\ & ((\transmitter|r_sm_main.s_tx_start_bit~q\) # ((\transmitter|r_sm_main.s_tx_data_bits~q\) # (\transmitter|r_sm_main.s_tx_stop_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_tx_start_bit~q\,
	datab => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datac => \transmitter|r_sm_main.s_tx_stop_bit~q\,
	datad => \transmitter|r_tx_done~q\,
	combout => \transmitter|Selector2~0_combout\);

-- Location: LCCOMB_X56_Y71_N18
\transmitter|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector2~1_combout\ = (\transmitter|Selector2~0_combout\) # ((\transmitter|r_sm_main.s_cleanup~q\) # ((\transmitter|r_sm_main.s_tx_stop_bit~q\ & !\transmitter|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|Selector2~0_combout\,
	datab => \transmitter|r_sm_main.s_cleanup~q\,
	datac => \transmitter|r_sm_main.s_tx_stop_bit~q\,
	datad => \transmitter|LessThan1~3_combout\,
	combout => \transmitter|Selector2~1_combout\);

-- Location: FF_X56_Y71_N19
\transmitter|r_tx_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_done~q\);

-- Location: LCCOMB_X56_Y71_N6
\r_tx_dv~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_dv~0_combout\ = (\receiver|r_rx_dv~q\) # ((!\transmitter|r_tx_done~q\ & \r_tx_dv~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_dv~q\,
	datab => \transmitter|r_tx_done~q\,
	datac => \r_tx_dv~q\,
	combout => \r_tx_dv~0_combout\);

-- Location: FF_X56_Y71_N7
r_tx_dv : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_tx_dv~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_tx_dv~q\);

-- Location: LCCOMB_X56_Y71_N30
\transmitter|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector20~0_combout\ = (\r_tx_dv~q\ & (((\transmitter|r_sm_main.s_tx_start_bit~q\ & \transmitter|LessThan1~3_combout\)) # (!\transmitter|r_sm_main.s_idle~q\))) # (!\r_tx_dv~q\ & (((\transmitter|r_sm_main.s_tx_start_bit~q\ & 
-- \transmitter|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_tx_dv~q\,
	datab => \transmitter|r_sm_main.s_idle~q\,
	datac => \transmitter|r_sm_main.s_tx_start_bit~q\,
	datad => \transmitter|LessThan1~3_combout\,
	combout => \transmitter|Selector20~0_combout\);

-- Location: FF_X56_Y71_N31
\transmitter|r_sm_main.s_tx_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_sm_main.s_tx_start_bit~q\);

-- Location: LCCOMB_X56_Y71_N8
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

-- Location: FF_X56_Y71_N9
\transmitter|o_tx_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|o_tx_active~q\);

-- Location: LCCOMB_X56_Y71_N12
\receiver|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~3_combout\ = (\receiver|r_bit_index\(1) & (!\receiver|r_bit_index\(0) & (!\receiver|r_bit_index\(2) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(1),
	datab => \receiver|r_bit_index\(0),
	datac => \receiver|r_bit_index\(2),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~3_combout\);

-- Location: LCCOMB_X56_Y71_N2
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

-- Location: FF_X56_Y71_N3
\receiver|r_rx_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(2));

-- Location: LCCOMB_X57_Y70_N10
\r_tx_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[2]~feeder_combout\ = \receiver|r_rx_byte\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver|r_rx_byte\(2),
	combout => \r_tx_data[2]~feeder_combout\);

-- Location: FF_X57_Y70_N11
\r_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_tx_data[2]~feeder_combout\,
	ena => \receiver|r_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(2));

-- Location: LCCOMB_X57_Y70_N0
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

-- Location: LCCOMB_X57_Y70_N14
\transmitter|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector20~1_combout\ = (!\transmitter|r_sm_main.s_idle~q\ & \r_tx_dv~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmitter|r_sm_main.s_idle~q\,
	datad => \r_tx_dv~q\,
	combout => \transmitter|Selector20~1_combout\);

-- Location: FF_X57_Y70_N1
\transmitter|r_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_tx_data[2]~feeder_combout\,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(2));

-- Location: LCCOMB_X57_Y71_N16
\receiver|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~4_combout\ = (!\receiver|r_bit_index\(2) & (\receiver|r_bit_index\(0) & (\receiver|r_bit_index\(1) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(2),
	datab => \receiver|r_bit_index\(0),
	datac => \receiver|r_bit_index\(1),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~4_combout\);

-- Location: LCCOMB_X57_Y71_N30
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

-- Location: FF_X57_Y71_N31
\receiver|r_rx_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(3));

-- Location: LCCOMB_X57_Y70_N26
\r_tx_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[3]~feeder_combout\ = \receiver|r_rx_byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|r_rx_byte\(3),
	combout => \r_tx_data[3]~feeder_combout\);

-- Location: FF_X57_Y70_N27
\r_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_tx_data[3]~feeder_combout\,
	ena => \receiver|r_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(3));

-- Location: FF_X57_Y70_N19
\transmitter|r_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => r_tx_data(3),
	sload => VCC,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(3));

-- Location: LCCOMB_X57_Y71_N6
\receiver|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~2_combout\ = (!\receiver|r_bit_index\(2) & (\receiver|r_bit_index\(0) & (!\receiver|r_bit_index\(1) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(2),
	datab => \receiver|r_bit_index\(0),
	datac => \receiver|r_bit_index\(1),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~2_combout\);

-- Location: LCCOMB_X57_Y71_N20
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

-- Location: FF_X57_Y71_N21
\receiver|r_rx_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(1));

-- Location: LCCOMB_X57_Y70_N16
\r_tx_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[1]~feeder_combout\ = \receiver|r_rx_byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver|r_rx_byte\(1),
	combout => \r_tx_data[1]~feeder_combout\);

-- Location: FF_X57_Y70_N17
\r_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_tx_data[1]~feeder_combout\,
	ena => \receiver|r_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(1));

-- Location: LCCOMB_X57_Y70_N20
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

-- Location: FF_X57_Y70_N21
\transmitter|r_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_tx_data[1]~feeder_combout\,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(1));

-- Location: LCCOMB_X57_Y71_N28
\receiver|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~1_combout\ = (!\receiver|r_bit_index\(1) & (!\receiver|r_bit_index\(2) & (!\receiver|r_bit_index\(0) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(1),
	datab => \receiver|r_bit_index\(2),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~1_combout\);

-- Location: LCCOMB_X56_Y71_N24
\receiver|r_rx_byte[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_rx_byte[0]~0_combout\ = (\receiver|Decoder0~1_combout\ & (\receiver|r_rx_data~q\)) # (!\receiver|Decoder0~1_combout\ & ((\receiver|r_rx_byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_data~q\,
	datac => \receiver|r_rx_byte\(0),
	datad => \receiver|Decoder0~1_combout\,
	combout => \receiver|r_rx_byte[0]~0_combout\);

-- Location: FF_X56_Y71_N25
\receiver|r_rx_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(0));

-- Location: FF_X57_Y70_N15
\r_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver|r_rx_byte\(0),
	sload => VCC,
	ena => \receiver|r_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(0));

-- Location: FF_X57_Y70_N13
\transmitter|r_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => r_tx_data(0),
	sload => VCC,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(0));

-- Location: LCCOMB_X57_Y70_N12
\transmitter|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Mux0~2_combout\ = (\transmitter|r_bit_index\(0) & ((\transmitter|r_tx_data\(1)) # ((\transmitter|r_bit_index\(1))))) # (!\transmitter|r_bit_index\(0) & (((\transmitter|r_tx_data\(0) & !\transmitter|r_bit_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_bit_index\(0),
	datab => \transmitter|r_tx_data\(1),
	datac => \transmitter|r_tx_data\(0),
	datad => \transmitter|r_bit_index\(1),
	combout => \transmitter|Mux0~2_combout\);

-- Location: LCCOMB_X57_Y70_N18
\transmitter|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Mux0~3_combout\ = (\transmitter|r_bit_index\(1) & ((\transmitter|Mux0~2_combout\ & ((\transmitter|r_tx_data\(3)))) # (!\transmitter|Mux0~2_combout\ & (\transmitter|r_tx_data\(2))))) # (!\transmitter|r_bit_index\(1) & 
-- (((\transmitter|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_bit_index\(1),
	datab => \transmitter|r_tx_data\(2),
	datac => \transmitter|r_tx_data\(3),
	datad => \transmitter|Mux0~2_combout\,
	combout => \transmitter|Mux0~3_combout\);

-- Location: LCCOMB_X56_Y70_N30
\transmitter|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector1~1_combout\ = (\transmitter|r_sm_main.s_tx_stop_bit~q\) # ((\transmitter|r_sm_main.s_tx_data_bits~q\ & (!\transmitter|r_bit_index\(2) & \transmitter|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datab => \transmitter|r_bit_index\(2),
	datac => \transmitter|r_sm_main.s_tx_stop_bit~q\,
	datad => \transmitter|Mux0~3_combout\,
	combout => \transmitter|Selector1~1_combout\);

-- Location: LCCOMB_X57_Y71_N26
\receiver|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~7_combout\ = (\receiver|r_bit_index\(2) & (!\receiver|r_bit_index\(0) & (\receiver|r_bit_index\(1) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(2),
	datab => \receiver|r_bit_index\(0),
	datac => \receiver|r_bit_index\(1),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~7_combout\);

-- Location: LCCOMB_X56_Y71_N28
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

-- Location: FF_X56_Y71_N29
\receiver|r_rx_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(6));

-- Location: LCCOMB_X57_Y70_N22
\r_tx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[6]~feeder_combout\ = \receiver|r_rx_byte\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver|r_rx_byte\(6),
	combout => \r_tx_data[6]~feeder_combout\);

-- Location: FF_X57_Y70_N23
\r_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_tx_data[6]~feeder_combout\,
	ena => \receiver|r_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(6));

-- Location: LCCOMB_X57_Y70_N4
\transmitter|r_tx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_tx_data[6]~feeder_combout\ = r_tx_data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_tx_data(6),
	combout => \transmitter|r_tx_data[6]~feeder_combout\);

-- Location: FF_X57_Y70_N5
\transmitter|r_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_tx_data[6]~feeder_combout\,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(6));

-- Location: LCCOMB_X57_Y71_N8
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

-- Location: FF_X57_Y71_N9
\receiver|r_rx_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(7));

-- Location: LCCOMB_X57_Y70_N8
\r_tx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[7]~feeder_combout\ = \receiver|r_rx_byte\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver|r_rx_byte\(7),
	combout => \r_tx_data[7]~feeder_combout\);

-- Location: FF_X57_Y70_N9
\r_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_tx_data[7]~feeder_combout\,
	ena => \receiver|r_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(7));

-- Location: FF_X57_Y70_N3
\transmitter|r_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => r_tx_data(7),
	sload => VCC,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(7));

-- Location: LCCOMB_X57_Y71_N0
\receiver|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~6_combout\ = (\receiver|r_bit_index\(2) & (\receiver|r_bit_index\(0) & (!\receiver|r_bit_index\(1) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(2),
	datab => \receiver|r_bit_index\(0),
	datac => \receiver|r_bit_index\(1),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~6_combout\);

-- Location: LCCOMB_X57_Y71_N14
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

-- Location: FF_X57_Y71_N15
\receiver|r_rx_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(5));

-- Location: LCCOMB_X57_Y70_N6
\r_tx_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[5]~feeder_combout\ = \receiver|r_rx_byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|r_rx_byte\(5),
	combout => \r_tx_data[5]~feeder_combout\);

-- Location: FF_X57_Y70_N7
\r_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_tx_data[5]~feeder_combout\,
	ena => \receiver|r_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(5));

-- Location: LCCOMB_X57_Y70_N28
\transmitter|r_tx_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|r_tx_data[5]~feeder_combout\ = r_tx_data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_tx_data(5),
	combout => \transmitter|r_tx_data[5]~feeder_combout\);

-- Location: FF_X57_Y70_N29
\transmitter|r_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|r_tx_data[5]~feeder_combout\,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(5));

-- Location: LCCOMB_X57_Y71_N2
\receiver|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~5_combout\ = (\receiver|r_bit_index\(2) & (!\receiver|r_bit_index\(0) & (!\receiver|r_bit_index\(1) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(2),
	datab => \receiver|r_bit_index\(0),
	datac => \receiver|r_bit_index\(1),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~5_combout\);

-- Location: LCCOMB_X57_Y71_N4
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

-- Location: FF_X57_Y71_N5
\receiver|r_rx_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_byte[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_byte\(4));

-- Location: LCCOMB_X57_Y70_N30
\r_tx_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_tx_data[4]~feeder_combout\ = \receiver|r_rx_byte\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|r_rx_byte\(4),
	combout => \r_tx_data[4]~feeder_combout\);

-- Location: FF_X57_Y70_N31
\r_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_tx_data[4]~feeder_combout\,
	ena => \receiver|r_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(4));

-- Location: FF_X57_Y70_N25
\transmitter|r_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => r_tx_data(4),
	sload => VCC,
	ena => \transmitter|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|r_tx_data\(4));

-- Location: LCCOMB_X57_Y70_N24
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

-- Location: LCCOMB_X57_Y70_N2
\transmitter|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Mux0~1_combout\ = (\transmitter|r_bit_index\(1) & ((\transmitter|Mux0~0_combout\ & ((\transmitter|r_tx_data\(7)))) # (!\transmitter|Mux0~0_combout\ & (\transmitter|r_tx_data\(6))))) # (!\transmitter|r_bit_index\(1) & 
-- (((\transmitter|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_bit_index\(1),
	datab => \transmitter|r_tx_data\(6),
	datac => \transmitter|r_tx_data\(7),
	datad => \transmitter|Mux0~0_combout\,
	combout => \transmitter|Mux0~1_combout\);

-- Location: LCCOMB_X56_Y70_N16
\transmitter|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector1~0_combout\ = ((\transmitter|r_sm_main.s_tx_data_bits~q\ & (\transmitter|r_bit_index\(2) & \transmitter|Mux0~1_combout\))) # (!\transmitter|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|r_sm_main.s_tx_data_bits~q\,
	datab => \transmitter|r_bit_index\(2),
	datac => \transmitter|r_sm_main.s_idle~q\,
	datad => \transmitter|Mux0~1_combout\,
	combout => \transmitter|Selector1~0_combout\);

-- Location: LCCOMB_X56_Y70_N0
\transmitter|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmitter|Selector1~2_combout\ = (\transmitter|Selector1~1_combout\) # ((\transmitter|Selector1~0_combout\) # ((\transmitter|r_sm_main.s_cleanup~q\ & \transmitter|o_tx_serial~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmitter|Selector1~1_combout\,
	datab => \transmitter|r_sm_main.s_cleanup~q\,
	datac => \transmitter|o_tx_serial~q\,
	datad => \transmitter|Selector1~0_combout\,
	combout => \transmitter|Selector1~2_combout\);

-- Location: FF_X56_Y70_N1
\transmitter|o_tx_serial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitter|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmitter|o_tx_serial~q\);

-- Location: IOIBUF_X115_Y40_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\i_tx_dv~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_tx_dv,
	o => \i_tx_dv~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\tx_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(0),
	o => \tx_data[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\tx_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(1),
	o => \tx_data[1]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\tx_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(2),
	o => \tx_data[2]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\tx_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(3),
	o => \tx_data[3]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\tx_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(4),
	o => \tx_data[4]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\tx_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(5),
	o => \tx_data[5]~input_o\);

-- Location: IOIBUF_X115_Y24_N1
\tx_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(6),
	o => \tx_data[6]~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\tx_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(7),
	o => \tx_data[7]~input_o\);

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


