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

-- DATE "08/13/2020 22:46:34"

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

ENTITY 	uart_fifo IS
    PORT (
	i_clk : IN std_logic;
	i_rst : IN std_logic;
	i_rst_sync : IN std_logic;
	o_status : OUT std_logic_vector(3 DOWNTO 0);
	o_fifo_rx_full : OUT std_logic;
	o_fifo_rx_empty : OUT std_logic;
	i_rx_serial : IN std_logic;
	rx_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END uart_fifo;

-- Design Ports Information
-- i_rst	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_status[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_status[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_status[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_status[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_rx_full	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_fifo_rx_empty	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst_sync	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rx_serial	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart_fifo IS
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
SIGNAL ww_o_fifo_rx_full : std_logic;
SIGNAL ww_o_fifo_rx_empty : std_logic;
SIGNAL ww_i_rx_serial : std_logic;
SIGNAL ww_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_rst~input_o\ : std_logic;
SIGNAL \o_status[0]~output_o\ : std_logic;
SIGNAL \o_status[1]~output_o\ : std_logic;
SIGNAL \o_status[2]~output_o\ : std_logic;
SIGNAL \o_status[3]~output_o\ : std_logic;
SIGNAL \o_fifo_rx_full~output_o\ : std_logic;
SIGNAL \o_fifo_rx_empty~output_o\ : std_logic;
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
SIGNAL \fifo_rx|r_fifo_count[0]~5_combout\ : std_logic;
SIGNAL \i_rst_sync~input_o\ : std_logic;
SIGNAL \receiver|r_clk_count[0]~13_combout\ : std_logic;
SIGNAL \i_rx_serial~input_o\ : std_logic;
SIGNAL \receiver|r_rx_data_r~q\ : std_logic;
SIGNAL \receiver|r_rx_data~feeder_combout\ : std_logic;
SIGNAL \receiver|r_rx_data~q\ : std_logic;
SIGNAL \receiver|Equal0~2_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[0]~39_combout\ : std_logic;
SIGNAL \receiver|Equal0~0_combout\ : std_logic;
SIGNAL \receiver|Equal0~1_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[0]~40_combout\ : std_logic;
SIGNAL \receiver|Selector16~0_combout\ : std_logic;
SIGNAL \receiver|Selector15~2_combout\ : std_logic;
SIGNAL \receiver|Selector15~3_combout\ : std_logic;
SIGNAL \receiver|Selector14~2_combout\ : std_logic;
SIGNAL \receiver|Selector14~0_combout\ : std_logic;
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
SIGNAL \receiver|r_clk_count[0]~41_combout\ : std_logic;
SIGNAL \receiver|Equal0~3_combout\ : std_logic;
SIGNAL \receiver|r_clk_count[0]~42_combout\ : std_logic;
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
SIGNAL \receiver|r_sm_main.s_cleanup~feeder_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_cleanup~q\ : std_logic;
SIGNAL \receiver|Selector17~0_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_idle~q\ : std_logic;
SIGNAL \receiver|Selector18~0_combout\ : std_logic;
SIGNAL \receiver|r_sm_main.s_rx_start_bit~q\ : std_logic;
SIGNAL \receiver|Selector0~1_combout\ : std_logic;
SIGNAL \receiver|r_rx_dv~q\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[0]~13_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[0]~6\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[1]~7_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[1]~8\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[2]~9_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[2]~10\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[3]~11_combout\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[3]~12\ : std_logic;
SIGNAL \fifo_rx|r_fifo_count[4]~14_combout\ : std_logic;
SIGNAL \fifo_rx|Equal2~0_combout\ : std_logic;
SIGNAL \fifo_rx|Equal2~1_combout\ : std_logic;
SIGNAL \fifo_rx|Equal3~0_combout\ : std_logic;
SIGNAL \receiver|Decoder0~1_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[0]~0_combout\ : std_logic;
SIGNAL \receiver|Decoder0~2_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[1]~1_combout\ : std_logic;
SIGNAL \receiver|Decoder0~3_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[2]~2_combout\ : std_logic;
SIGNAL \receiver|Decoder0~4_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[3]~3_combout\ : std_logic;
SIGNAL \receiver|Decoder0~5_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[4]~4_combout\ : std_logic;
SIGNAL \receiver|Decoder0~6_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[5]~5_combout\ : std_logic;
SIGNAL \receiver|Decoder0~7_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[6]~6_combout\ : std_logic;
SIGNAL \receiver|r_rx_byte[7]~7_combout\ : std_logic;
SIGNAL \receiver|r_bit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \fifo_rx|r_fifo_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \receiver|r_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \receiver|r_rx_byte\ : std_logic_vector(7 DOWNTO 0);

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
o_fifo_rx_full <= ww_o_fifo_rx_full;
o_fifo_rx_empty <= ww_o_fifo_rx_empty;
ww_i_rx_serial <= i_rx_serial;
rx_data <= ww_rx_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: LCCOMB_X77_Y70_N6
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

-- Location: LCCOMB_X66_Y70_N4
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

-- Location: FF_X58_Y70_N9
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

-- Location: LCCOMB_X65_Y70_N20
\receiver|r_rx_data~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_rx_data~feeder_combout\ = \receiver|r_rx_data_r~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|r_rx_data_r~q\,
	combout => \receiver|r_rx_data~feeder_combout\);

-- Location: FF_X65_Y70_N21
\receiver|r_rx_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_rx_data~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_rx_data~q\);

-- Location: LCCOMB_X65_Y70_N22
\receiver|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Equal0~2_combout\ = (!\receiver|r_clk_count\(1) & (!\receiver|r_clk_count\(12) & (\receiver|r_clk_count\(11) & !\receiver|r_clk_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(1),
	datab => \receiver|r_clk_count\(12),
	datac => \receiver|r_clk_count\(11),
	datad => \receiver|r_clk_count\(0),
	combout => \receiver|Equal0~2_combout\);

-- Location: LCCOMB_X65_Y70_N16
\receiver|r_clk_count[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[0]~39_combout\ = (\receiver|r_clk_count\(2) & \receiver|r_sm_main.s_rx_start_bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver|r_clk_count\(2),
	datad => \receiver|r_sm_main.s_rx_start_bit~q\,
	combout => \receiver|r_clk_count[0]~39_combout\);

-- Location: LCCOMB_X65_Y70_N30
\receiver|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Equal0~0_combout\ = (!\receiver|r_clk_count\(8) & (!\receiver|r_clk_count\(4) & (\receiver|r_clk_count\(3) & !\receiver|r_clk_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(8),
	datab => \receiver|r_clk_count\(4),
	datac => \receiver|r_clk_count\(3),
	datad => \receiver|r_clk_count\(7),
	combout => \receiver|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y70_N0
\receiver|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Equal0~1_combout\ = (\receiver|r_clk_count\(9) & (!\receiver|r_clk_count\(10) & (\receiver|r_clk_count\(5) & !\receiver|r_clk_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_clk_count\(9),
	datab => \receiver|r_clk_count\(10),
	datac => \receiver|r_clk_count\(5),
	datad => \receiver|r_clk_count\(6),
	combout => \receiver|Equal0~1_combout\);

-- Location: LCCOMB_X65_Y70_N14
\receiver|r_clk_count[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[0]~40_combout\ = (\receiver|Equal0~2_combout\ & (\receiver|r_clk_count[0]~39_combout\ & (\receiver|Equal0~0_combout\ & \receiver|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Equal0~2_combout\,
	datab => \receiver|r_clk_count[0]~39_combout\,
	datac => \receiver|Equal0~0_combout\,
	datad => \receiver|Equal0~1_combout\,
	combout => \receiver|r_clk_count[0]~40_combout\);

-- Location: LCCOMB_X67_Y70_N6
\receiver|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector16~0_combout\ = (\receiver|r_sm_main.s_rx_data_bits~q\ & ((\receiver|LessThan1~2_combout\ $ (\receiver|r_bit_index\(0))))) # (!\receiver|r_sm_main.s_rx_data_bits~q\ & (\receiver|r_sm_main.s_idle~q\ & ((\receiver|r_bit_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_idle~q\,
	datab => \receiver|LessThan1~2_combout\,
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|r_sm_main.s_rx_data_bits~q\,
	combout => \receiver|Selector16~0_combout\);

-- Location: FF_X67_Y70_N7
\receiver|r_bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_bit_index\(0));

-- Location: LCCOMB_X67_Y70_N18
\receiver|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector15~2_combout\ = (\receiver|r_sm_main.s_rx_data_bits~q\ & (\receiver|r_bit_index\(1) $ (((\receiver|LessThan1~2_combout\ & \receiver|r_bit_index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_rx_data_bits~q\,
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|LessThan1~2_combout\,
	datad => \receiver|r_bit_index\(0),
	combout => \receiver|Selector15~2_combout\);

-- Location: LCCOMB_X67_Y70_N24
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

-- Location: FF_X67_Y70_N25
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

-- Location: LCCOMB_X68_Y70_N22
\receiver|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector14~2_combout\ = (\receiver|r_sm_main.s_rx_data_bits~q\ & (\receiver|r_bit_index\(2) & ((!\receiver|LessThan1~2_combout\) # (!\receiver|r_bit_index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_rx_data_bits~q\,
	datab => \receiver|r_bit_index\(2),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|LessThan1~2_combout\,
	combout => \receiver|Selector14~2_combout\);

-- Location: LCCOMB_X67_Y70_N28
\receiver|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector14~0_combout\ = (!\receiver|r_sm_main.s_rx_data_bits~q\ & \receiver|r_sm_main.s_idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_rx_data_bits~q\,
	datac => \receiver|r_sm_main.s_idle~q\,
	combout => \receiver|Selector14~0_combout\);

-- Location: LCCOMB_X68_Y70_N2
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

-- Location: LCCOMB_X68_Y70_N12
\receiver|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector14~1_combout\ = (\receiver|r_bit_index\(0) & (\receiver|Decoder0~0_combout\ & (\receiver|r_bit_index\(1) $ (\receiver|r_bit_index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(1),
	datab => \receiver|r_bit_index\(2),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Selector14~1_combout\);

-- Location: LCCOMB_X68_Y70_N24
\receiver|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector14~3_combout\ = (\receiver|Selector14~2_combout\) # ((\receiver|Selector14~1_combout\) # ((\receiver|Selector14~0_combout\ & \receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|Selector14~2_combout\,
	datab => \receiver|Selector14~0_combout\,
	datac => \receiver|r_bit_index\(2),
	datad => \receiver|Selector14~1_combout\,
	combout => \receiver|Selector14~3_combout\);

-- Location: FF_X68_Y70_N25
\receiver|r_bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|Selector14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_bit_index\(2));

-- Location: LCCOMB_X67_Y70_N16
\receiver|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector19~0_combout\ = (\receiver|r_bit_index\(0) & (\receiver|r_bit_index\(1) & (\receiver|LessThan1~2_combout\ & \receiver|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(0),
	datab => \receiver|r_bit_index\(1),
	datac => \receiver|LessThan1~2_combout\,
	datad => \receiver|r_bit_index\(2),
	combout => \receiver|Selector19~0_combout\);

-- Location: LCCOMB_X67_Y70_N26
\receiver|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector19~1_combout\ = (\receiver|r_rx_data~q\ & (((\receiver|r_sm_main.s_rx_data_bits~q\ & !\receiver|Selector19~0_combout\)))) # (!\receiver|r_rx_data~q\ & ((\receiver|r_clk_count[0]~40_combout\) # ((\receiver|r_sm_main.s_rx_data_bits~q\ & 
-- !\receiver|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_data~q\,
	datab => \receiver|r_clk_count[0]~40_combout\,
	datac => \receiver|r_sm_main.s_rx_data_bits~q\,
	datad => \receiver|Selector19~0_combout\,
	combout => \receiver|Selector19~1_combout\);

-- Location: FF_X67_Y70_N27
\receiver|r_sm_main.s_rx_data_bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_sm_main.s_rx_data_bits~q\);

-- Location: LCCOMB_X68_Y70_N20
\receiver|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~8_combout\ = (\receiver|r_bit_index\(1) & (\receiver|r_bit_index\(2) & (\receiver|r_bit_index\(0) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(1),
	datab => \receiver|r_bit_index\(2),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~8_combout\);

-- Location: LCCOMB_X68_Y70_N26
\receiver|r_sm_main.s_rx_stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_sm_main.s_rx_stop_bit~0_combout\ = (\receiver|Decoder0~8_combout\) # ((!\receiver|LessThan1~2_combout\ & \receiver|r_sm_main.s_rx_stop_bit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|LessThan1~2_combout\,
	datac => \receiver|r_sm_main.s_rx_stop_bit~q\,
	datad => \receiver|Decoder0~8_combout\,
	combout => \receiver|r_sm_main.s_rx_stop_bit~0_combout\);

-- Location: FF_X68_Y70_N27
\receiver|r_sm_main.s_rx_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_sm_main.s_rx_stop_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_sm_main.s_rx_stop_bit~q\);

-- Location: LCCOMB_X67_Y70_N12
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

-- Location: LCCOMB_X66_Y70_N2
\receiver|r_clk_count[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[0]~41_combout\ = \receiver|r_sm_main.s_idle~q\ $ (\receiver|r_clk_count[0]~40_combout\ $ (((\receiver|Selector0~0_combout\) # (!\receiver|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_idle~q\,
	datab => \receiver|Selector0~0_combout\,
	datac => \receiver|LessThan1~2_combout\,
	datad => \receiver|r_clk_count[0]~40_combout\,
	combout => \receiver|r_clk_count[0]~41_combout\);

-- Location: LCCOMB_X65_Y70_N28
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

-- Location: LCCOMB_X65_Y70_N6
\receiver|r_clk_count[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_clk_count[0]~42_combout\ = (!\receiver|r_sm_main.s_cleanup~q\ & (((!\receiver|Equal0~3_combout\) # (!\receiver|r_sm_main.s_rx_start_bit~q\)) # (!\receiver|r_rx_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_rx_data~q\,
	datab => \receiver|r_sm_main.s_rx_start_bit~q\,
	datac => \receiver|r_sm_main.s_cleanup~q\,
	datad => \receiver|Equal0~3_combout\,
	combout => \receiver|r_clk_count[0]~42_combout\);

-- Location: FF_X66_Y70_N5
\receiver|r_clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[0]~13_combout\,
	sclr => \receiver|r_clk_count[0]~41_combout\,
	ena => \receiver|r_clk_count[0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(0));

-- Location: LCCOMB_X66_Y70_N6
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

-- Location: FF_X66_Y70_N7
\receiver|r_clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[1]~15_combout\,
	sclr => \receiver|r_clk_count[0]~41_combout\,
	ena => \receiver|r_clk_count[0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(1));

-- Location: LCCOMB_X66_Y70_N8
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

-- Location: FF_X66_Y70_N9
\receiver|r_clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[2]~17_combout\,
	sclr => \receiver|r_clk_count[0]~41_combout\,
	ena => \receiver|r_clk_count[0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(2));

-- Location: LCCOMB_X66_Y70_N10
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

-- Location: FF_X66_Y70_N11
\receiver|r_clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[3]~19_combout\,
	sclr => \receiver|r_clk_count[0]~41_combout\,
	ena => \receiver|r_clk_count[0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(3));

-- Location: LCCOMB_X66_Y70_N12
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

-- Location: FF_X66_Y70_N13
\receiver|r_clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[4]~21_combout\,
	sclr => \receiver|r_clk_count[0]~41_combout\,
	ena => \receiver|r_clk_count[0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(4));

-- Location: LCCOMB_X66_Y70_N14
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

-- Location: FF_X66_Y70_N15
\receiver|r_clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[5]~23_combout\,
	sclr => \receiver|r_clk_count[0]~41_combout\,
	ena => \receiver|r_clk_count[0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(5));

-- Location: LCCOMB_X66_Y70_N16
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

-- Location: FF_X66_Y70_N17
\receiver|r_clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[6]~25_combout\,
	sclr => \receiver|r_clk_count[0]~41_combout\,
	ena => \receiver|r_clk_count[0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(6));

-- Location: LCCOMB_X66_Y70_N18
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

-- Location: FF_X66_Y70_N19
\receiver|r_clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[7]~27_combout\,
	sclr => \receiver|r_clk_count[0]~41_combout\,
	ena => \receiver|r_clk_count[0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(7));

-- Location: LCCOMB_X66_Y70_N20
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

-- Location: FF_X66_Y70_N21
\receiver|r_clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[8]~29_combout\,
	sclr => \receiver|r_clk_count[0]~41_combout\,
	ena => \receiver|r_clk_count[0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(8));

-- Location: LCCOMB_X66_Y70_N22
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

-- Location: FF_X66_Y70_N23
\receiver|r_clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[9]~31_combout\,
	sclr => \receiver|r_clk_count[0]~41_combout\,
	ena => \receiver|r_clk_count[0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(9));

-- Location: LCCOMB_X66_Y70_N24
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

-- Location: FF_X66_Y70_N25
\receiver|r_clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[10]~33_combout\,
	sclr => \receiver|r_clk_count[0]~41_combout\,
	ena => \receiver|r_clk_count[0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(10));

-- Location: LCCOMB_X66_Y70_N26
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

-- Location: FF_X66_Y70_N27
\receiver|r_clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[11]~35_combout\,
	sclr => \receiver|r_clk_count[0]~41_combout\,
	ena => \receiver|r_clk_count[0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(11));

-- Location: LCCOMB_X66_Y70_N28
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

-- Location: FF_X66_Y70_N29
\receiver|r_clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_clk_count[12]~37_combout\,
	sclr => \receiver|r_clk_count[0]~41_combout\,
	ena => \receiver|r_clk_count[0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_clk_count\(12));

-- Location: LCCOMB_X66_Y70_N0
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

-- Location: LCCOMB_X66_Y70_N30
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

-- Location: LCCOMB_X67_Y70_N14
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

-- Location: LCCOMB_X67_Y70_N10
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

-- Location: LCCOMB_X67_Y70_N22
\receiver|r_sm_main.s_cleanup~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|r_sm_main.s_cleanup~feeder_combout\ = \receiver|r_sm_main~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver|r_sm_main~7_combout\,
	combout => \receiver|r_sm_main.s_cleanup~feeder_combout\);

-- Location: FF_X67_Y70_N23
\receiver|r_sm_main.s_cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \receiver|r_sm_main.s_cleanup~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver|r_sm_main.s_cleanup~q\);

-- Location: LCCOMB_X65_Y70_N24
\receiver|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector17~0_combout\ = (!\receiver|r_sm_main.s_cleanup~q\ & (((\receiver|r_sm_main.s_idle~q\ & !\receiver|r_clk_count[0]~40_combout\)) # (!\receiver|r_rx_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_cleanup~q\,
	datab => \receiver|r_rx_data~q\,
	datac => \receiver|r_sm_main.s_idle~q\,
	datad => \receiver|r_clk_count[0]~40_combout\,
	combout => \receiver|Selector17~0_combout\);

-- Location: FF_X65_Y70_N25
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

-- Location: LCCOMB_X65_Y70_N18
\receiver|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Selector18~0_combout\ = (\receiver|r_sm_main.s_idle~q\ & (((\receiver|r_sm_main.s_rx_start_bit~q\ & !\receiver|Equal0~3_combout\)))) # (!\receiver|r_sm_main.s_idle~q\ & (((\receiver|r_sm_main.s_rx_start_bit~q\ & !\receiver|Equal0~3_combout\)) # 
-- (!\receiver|r_rx_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_sm_main.s_idle~q\,
	datab => \receiver|r_rx_data~q\,
	datac => \receiver|r_sm_main.s_rx_start_bit~q\,
	datad => \receiver|Equal0~3_combout\,
	combout => \receiver|Selector18~0_combout\);

-- Location: FF_X65_Y70_N19
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

-- Location: LCCOMB_X68_Y70_N10
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

-- Location: FF_X68_Y70_N11
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

-- Location: LCCOMB_X77_Y70_N16
\fifo_rx|r_fifo_count[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_count[0]~13_combout\ = (\i_rst_sync~input_o\) # (\receiver|r_rx_dv~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_sync~input_o\,
	datad => \receiver|r_rx_dv~q\,
	combout => \fifo_rx|r_fifo_count[0]~13_combout\);

-- Location: FF_X77_Y70_N7
\fifo_rx|r_fifo_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_count[0]~5_combout\,
	sclr => \i_rst_sync~input_o\,
	ena => \fifo_rx|r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_count\(0));

-- Location: LCCOMB_X77_Y70_N8
\fifo_rx|r_fifo_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_count[1]~7_combout\ = (\fifo_rx|r_fifo_count\(1) & ((\receiver|r_rx_dv~q\ & (!\fifo_rx|r_fifo_count[0]~6\)) # (!\receiver|r_rx_dv~q\ & (\fifo_rx|r_fifo_count[0]~6\ & VCC)))) # (!\fifo_rx|r_fifo_count\(1) & ((\receiver|r_rx_dv~q\ & 
-- ((\fifo_rx|r_fifo_count[0]~6\) # (GND))) # (!\receiver|r_rx_dv~q\ & (!\fifo_rx|r_fifo_count[0]~6\))))
-- \fifo_rx|r_fifo_count[1]~8\ = CARRY((\fifo_rx|r_fifo_count\(1) & (\receiver|r_rx_dv~q\ & !\fifo_rx|r_fifo_count[0]~6\)) # (!\fifo_rx|r_fifo_count\(1) & ((\receiver|r_rx_dv~q\) # (!\fifo_rx|r_fifo_count[0]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_count\(1),
	datab => \receiver|r_rx_dv~q\,
	datad => VCC,
	cin => \fifo_rx|r_fifo_count[0]~6\,
	combout => \fifo_rx|r_fifo_count[1]~7_combout\,
	cout => \fifo_rx|r_fifo_count[1]~8\);

-- Location: FF_X77_Y70_N9
\fifo_rx|r_fifo_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_count[1]~7_combout\,
	sclr => \i_rst_sync~input_o\,
	ena => \fifo_rx|r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_count\(1));

-- Location: LCCOMB_X77_Y70_N10
\fifo_rx|r_fifo_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_count[2]~9_combout\ = ((\fifo_rx|r_fifo_count\(2) $ (\receiver|r_rx_dv~q\ $ (\fifo_rx|r_fifo_count[1]~8\)))) # (GND)
-- \fifo_rx|r_fifo_count[2]~10\ = CARRY((\fifo_rx|r_fifo_count\(2) & ((!\fifo_rx|r_fifo_count[1]~8\) # (!\receiver|r_rx_dv~q\))) # (!\fifo_rx|r_fifo_count\(2) & (!\receiver|r_rx_dv~q\ & !\fifo_rx|r_fifo_count[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_count\(2),
	datab => \receiver|r_rx_dv~q\,
	datad => VCC,
	cin => \fifo_rx|r_fifo_count[1]~8\,
	combout => \fifo_rx|r_fifo_count[2]~9_combout\,
	cout => \fifo_rx|r_fifo_count[2]~10\);

-- Location: FF_X77_Y70_N11
\fifo_rx|r_fifo_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_count[2]~9_combout\,
	sclr => \i_rst_sync~input_o\,
	ena => \fifo_rx|r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_count\(2));

-- Location: LCCOMB_X77_Y70_N12
\fifo_rx|r_fifo_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_count[3]~11_combout\ = (\fifo_rx|r_fifo_count\(3) & ((\receiver|r_rx_dv~q\ & (!\fifo_rx|r_fifo_count[2]~10\)) # (!\receiver|r_rx_dv~q\ & (\fifo_rx|r_fifo_count[2]~10\ & VCC)))) # (!\fifo_rx|r_fifo_count\(3) & ((\receiver|r_rx_dv~q\ & 
-- ((\fifo_rx|r_fifo_count[2]~10\) # (GND))) # (!\receiver|r_rx_dv~q\ & (!\fifo_rx|r_fifo_count[2]~10\))))
-- \fifo_rx|r_fifo_count[3]~12\ = CARRY((\fifo_rx|r_fifo_count\(3) & (\receiver|r_rx_dv~q\ & !\fifo_rx|r_fifo_count[2]~10\)) # (!\fifo_rx|r_fifo_count\(3) & ((\receiver|r_rx_dv~q\) # (!\fifo_rx|r_fifo_count[2]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx|r_fifo_count\(3),
	datab => \receiver|r_rx_dv~q\,
	datad => VCC,
	cin => \fifo_rx|r_fifo_count[2]~10\,
	combout => \fifo_rx|r_fifo_count[3]~11_combout\,
	cout => \fifo_rx|r_fifo_count[3]~12\);

-- Location: FF_X77_Y70_N13
\fifo_rx|r_fifo_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_count[3]~11_combout\,
	sclr => \i_rst_sync~input_o\,
	ena => \fifo_rx|r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_count\(3));

-- Location: LCCOMB_X77_Y70_N14
\fifo_rx|r_fifo_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|r_fifo_count[4]~14_combout\ = \fifo_rx|r_fifo_count\(4) $ (\fifo_rx|r_fifo_count[3]~12\ $ (\receiver|r_rx_dv~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx|r_fifo_count\(4),
	datad => \receiver|r_rx_dv~q\,
	cin => \fifo_rx|r_fifo_count[3]~12\,
	combout => \fifo_rx|r_fifo_count[4]~14_combout\);

-- Location: FF_X77_Y70_N15
\fifo_rx|r_fifo_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \fifo_rx|r_fifo_count[4]~14_combout\,
	sclr => \i_rst_sync~input_o\,
	ena => \fifo_rx|r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx|r_fifo_count\(4));

-- Location: LCCOMB_X77_Y70_N28
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

-- Location: LCCOMB_X77_Y70_N30
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

-- Location: LCCOMB_X77_Y70_N0
\fifo_rx|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx|Equal3~0_combout\ = (\fifo_rx|Equal2~0_combout\ & (!\fifo_rx|r_fifo_count\(1) & !\fifo_rx|r_fifo_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx|Equal2~0_combout\,
	datac => \fifo_rx|r_fifo_count\(1),
	datad => \fifo_rx|r_fifo_count\(3),
	combout => \fifo_rx|Equal3~0_combout\);

-- Location: LCCOMB_X67_Y70_N20
\receiver|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~1_combout\ = (!\receiver|r_bit_index\(0) & (!\receiver|r_bit_index\(2) & (!\receiver|r_bit_index\(1) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(0),
	datab => \receiver|r_bit_index\(2),
	datac => \receiver|r_bit_index\(1),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~1_combout\);

-- Location: LCCOMB_X67_Y70_N8
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

-- Location: FF_X67_Y70_N9
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

-- Location: LCCOMB_X68_Y70_N16
\receiver|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~2_combout\ = (!\receiver|r_bit_index\(1) & (!\receiver|r_bit_index\(2) & (\receiver|r_bit_index\(0) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(1),
	datab => \receiver|r_bit_index\(2),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~2_combout\);

-- Location: LCCOMB_X68_Y70_N28
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

-- Location: FF_X68_Y70_N29
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

-- Location: LCCOMB_X68_Y70_N6
\receiver|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~3_combout\ = (\receiver|r_bit_index\(1) & (!\receiver|r_bit_index\(2) & (!\receiver|r_bit_index\(0) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(1),
	datab => \receiver|r_bit_index\(2),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~3_combout\);

-- Location: LCCOMB_X68_Y70_N30
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

-- Location: FF_X68_Y70_N31
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

-- Location: LCCOMB_X69_Y70_N28
\receiver|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~4_combout\ = (\receiver|r_bit_index\(0) & (!\receiver|r_bit_index\(2) & (\receiver|r_bit_index\(1) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(0),
	datab => \receiver|r_bit_index\(2),
	datac => \receiver|r_bit_index\(1),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~4_combout\);

-- Location: LCCOMB_X69_Y70_N0
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

-- Location: FF_X69_Y70_N1
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

-- Location: LCCOMB_X68_Y70_N0
\receiver|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~5_combout\ = (!\receiver|r_bit_index\(1) & (\receiver|r_bit_index\(2) & (!\receiver|r_bit_index\(0) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(1),
	datab => \receiver|r_bit_index\(2),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~5_combout\);

-- Location: LCCOMB_X68_Y70_N8
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

-- Location: FF_X68_Y70_N9
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

-- Location: LCCOMB_X69_Y70_N18
\receiver|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~6_combout\ = (\receiver|r_bit_index\(0) & (\receiver|r_bit_index\(2) & (!\receiver|r_bit_index\(1) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(0),
	datab => \receiver|r_bit_index\(2),
	datac => \receiver|r_bit_index\(1),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~6_combout\);

-- Location: LCCOMB_X69_Y70_N2
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

-- Location: FF_X69_Y70_N3
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

-- Location: LCCOMB_X68_Y70_N18
\receiver|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver|Decoder0~7_combout\ = (\receiver|r_bit_index\(1) & (\receiver|r_bit_index\(2) & (!\receiver|r_bit_index\(0) & \receiver|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver|r_bit_index\(1),
	datab => \receiver|r_bit_index\(2),
	datac => \receiver|r_bit_index\(0),
	datad => \receiver|Decoder0~0_combout\,
	combout => \receiver|Decoder0~7_combout\);

-- Location: LCCOMB_X68_Y70_N14
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

-- Location: FF_X68_Y70_N15
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

-- Location: LCCOMB_X68_Y70_N4
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

-- Location: FF_X68_Y70_N5
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

ww_o_status(0) <= \o_status[0]~output_o\;

ww_o_status(1) <= \o_status[1]~output_o\;

ww_o_status(2) <= \o_status[2]~output_o\;

ww_o_status(3) <= \o_status[3]~output_o\;

ww_o_fifo_rx_full <= \o_fifo_rx_full~output_o\;

ww_o_fifo_rx_empty <= \o_fifo_rx_empty~output_o\;

ww_rx_data(0) <= \rx_data[0]~output_o\;

ww_rx_data(1) <= \rx_data[1]~output_o\;

ww_rx_data(2) <= \rx_data[2]~output_o\;

ww_rx_data(3) <= \rx_data[3]~output_o\;

ww_rx_data(4) <= \rx_data[4]~output_o\;

ww_rx_data(5) <= \rx_data[5]~output_o\;

ww_rx_data(6) <= \rx_data[6]~output_o\;

ww_rx_data(7) <= \rx_data[7]~output_o\;
END structure;


