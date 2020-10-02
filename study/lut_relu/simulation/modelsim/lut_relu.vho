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

-- DATE "10/01/2020 21:43:42"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lut_relu IS
    PORT (
	i_value : IN std_logic_vector(7 DOWNTO 0);
	o_result : OUT std_logic_vector(7 DOWNTO 0)
	);
END lut_relu;

-- Design Ports Information
-- o_result[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[3]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[4]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[5]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_result[7]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_value[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_value[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_value[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_value[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_value[3]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_value[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_value[5]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_value[6]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lut_relu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_value : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_result : std_logic_vector(7 DOWNTO 0);
SIGNAL \o_result[0]~output_o\ : std_logic;
SIGNAL \o_result[1]~output_o\ : std_logic;
SIGNAL \o_result[2]~output_o\ : std_logic;
SIGNAL \o_result[3]~output_o\ : std_logic;
SIGNAL \o_result[4]~output_o\ : std_logic;
SIGNAL \o_result[5]~output_o\ : std_logic;
SIGNAL \o_result[6]~output_o\ : std_logic;
SIGNAL \o_result[7]~output_o\ : std_logic;
SIGNAL \i_value[7]~input_o\ : std_logic;
SIGNAL \i_value[0]~input_o\ : std_logic;
SIGNAL \r_out~0_combout\ : std_logic;
SIGNAL \i_value[1]~input_o\ : std_logic;
SIGNAL \r_out~1_combout\ : std_logic;
SIGNAL \i_value[2]~input_o\ : std_logic;
SIGNAL \r_out~2_combout\ : std_logic;
SIGNAL \i_value[3]~input_o\ : std_logic;
SIGNAL \r_out~3_combout\ : std_logic;
SIGNAL \i_value[4]~input_o\ : std_logic;
SIGNAL \r_out~4_combout\ : std_logic;
SIGNAL \i_value[5]~input_o\ : std_logic;
SIGNAL \r_out~5_combout\ : std_logic;
SIGNAL \i_value[6]~input_o\ : std_logic;
SIGNAL \r_out~6_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_value <= i_value;
o_result <= ww_o_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y14_N2
\o_result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~0_combout\,
	devoe => ww_devoe,
	o => \o_result[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\o_result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~1_combout\,
	devoe => ww_devoe,
	o => \o_result[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\o_result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~2_combout\,
	devoe => ww_devoe,
	o => \o_result[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\o_result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~3_combout\,
	devoe => ww_devoe,
	o => \o_result[3]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\o_result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~4_combout\,
	devoe => ww_devoe,
	o => \o_result[4]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\o_result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~5_combout\,
	devoe => ww_devoe,
	o => \o_result[5]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\o_result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~6_combout\,
	devoe => ww_devoe,
	o => \o_result[6]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\o_result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_result[7]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\i_value[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_value(7),
	o => \i_value[7]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\i_value[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_value(0),
	o => \i_value[0]~input_o\);

-- Location: LCCOMB_X1_Y14_N16
\r_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~0_combout\ = (!\i_value[7]~input_o\ & \i_value[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_value[7]~input_o\,
	datad => \i_value[0]~input_o\,
	combout => \r_out~0_combout\);

-- Location: IOIBUF_X0_Y14_N8
\i_value[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_value(1),
	o => \i_value[1]~input_o\);

-- Location: LCCOMB_X1_Y14_N18
\r_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~1_combout\ = (\i_value[1]~input_o\ & !\i_value[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_value[1]~input_o\,
	datac => \i_value[7]~input_o\,
	combout => \r_out~1_combout\);

-- Location: IOIBUF_X0_Y15_N15
\i_value[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_value(2),
	o => \i_value[2]~input_o\);

-- Location: LCCOMB_X1_Y15_N16
\r_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~2_combout\ = (\i_value[2]~input_o\ & !\i_value[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_value[2]~input_o\,
	datad => \i_value[7]~input_o\,
	combout => \r_out~2_combout\);

-- Location: IOIBUF_X0_Y13_N8
\i_value[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_value(3),
	o => \i_value[3]~input_o\);

-- Location: LCCOMB_X1_Y13_N16
\r_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~3_combout\ = (\i_value[3]~input_o\ & !\i_value[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_value[3]~input_o\,
	datad => \i_value[7]~input_o\,
	combout => \r_out~3_combout\);

-- Location: IOIBUF_X0_Y20_N15
\i_value[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_value(4),
	o => \i_value[4]~input_o\);

-- Location: LCCOMB_X1_Y16_N16
\r_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~4_combout\ = (!\i_value[7]~input_o\ & \i_value[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_value[7]~input_o\,
	datac => \i_value[4]~input_o\,
	combout => \r_out~4_combout\);

-- Location: IOIBUF_X0_Y19_N1
\i_value[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_value(5),
	o => \i_value[5]~input_o\);

-- Location: LCCOMB_X1_Y19_N16
\r_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~5_combout\ = (!\i_value[7]~input_o\ & \i_value[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_value[7]~input_o\,
	datad => \i_value[5]~input_o\,
	combout => \r_out~5_combout\);

-- Location: IOIBUF_X0_Y17_N15
\i_value[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_value(6),
	o => \i_value[6]~input_o\);

-- Location: LCCOMB_X1_Y16_N18
\r_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~6_combout\ = (\i_value[6]~input_o\ & !\i_value[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_value[6]~input_o\,
	datad => \i_value[7]~input_o\,
	combout => \r_out~6_combout\);

ww_o_result(0) <= \o_result[0]~output_o\;

ww_o_result(1) <= \o_result[1]~output_o\;

ww_o_result(2) <= \o_result[2]~output_o\;

ww_o_result(3) <= \o_result[3]~output_o\;

ww_o_result(4) <= \o_result[4]~output_o\;

ww_o_result(5) <= \o_result[5]~output_o\;

ww_o_result(6) <= \o_result[6]~output_o\;

ww_o_result(7) <= \o_result[7]~output_o\;
END structure;


