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

-- DATE "10/07/2020 21:39:07"

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

ENTITY 	abs_complex IS
    PORT (
	i_clk : IN std_logic;
	i_enable : IN std_logic;
	\i_complex.img\ : IN std_logic_vector(15 DOWNTO 0);
	\i_complex.re\ : IN std_logic_vector(15 DOWNTO 0);
	o_complex : OUT std_logic_vector(15 DOWNTO 0)
	);
END abs_complex;

-- Design Ports Information
-- i_clk	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_enable	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[3]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[4]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[6]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[8]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[9]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[10]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[11]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[12]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[13]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[14]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.img[15]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[3]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[4]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[5]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[7]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[8]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[9]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[10]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[11]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[12]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[13]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[14]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_complex.re[15]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[1]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[2]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[5]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[8]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[9]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[10]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[11]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[12]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[13]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[14]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_complex[15]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF abs_complex IS
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
SIGNAL \ww_i_complex.img\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ww_i_complex.re\ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_complex : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_enable~input_o\ : std_logic;
SIGNAL \i_complex.img[0]~input_o\ : std_logic;
SIGNAL \i_complex.img[1]~input_o\ : std_logic;
SIGNAL \i_complex.img[2]~input_o\ : std_logic;
SIGNAL \i_complex.img[3]~input_o\ : std_logic;
SIGNAL \i_complex.img[4]~input_o\ : std_logic;
SIGNAL \i_complex.img[5]~input_o\ : std_logic;
SIGNAL \i_complex.img[6]~input_o\ : std_logic;
SIGNAL \i_complex.img[7]~input_o\ : std_logic;
SIGNAL \i_complex.img[8]~input_o\ : std_logic;
SIGNAL \i_complex.img[9]~input_o\ : std_logic;
SIGNAL \i_complex.img[10]~input_o\ : std_logic;
SIGNAL \i_complex.img[11]~input_o\ : std_logic;
SIGNAL \i_complex.img[12]~input_o\ : std_logic;
SIGNAL \i_complex.img[13]~input_o\ : std_logic;
SIGNAL \i_complex.img[14]~input_o\ : std_logic;
SIGNAL \i_complex.img[15]~input_o\ : std_logic;
SIGNAL \i_complex.re[0]~input_o\ : std_logic;
SIGNAL \i_complex.re[1]~input_o\ : std_logic;
SIGNAL \i_complex.re[2]~input_o\ : std_logic;
SIGNAL \i_complex.re[3]~input_o\ : std_logic;
SIGNAL \i_complex.re[4]~input_o\ : std_logic;
SIGNAL \i_complex.re[5]~input_o\ : std_logic;
SIGNAL \i_complex.re[6]~input_o\ : std_logic;
SIGNAL \i_complex.re[7]~input_o\ : std_logic;
SIGNAL \i_complex.re[8]~input_o\ : std_logic;
SIGNAL \i_complex.re[9]~input_o\ : std_logic;
SIGNAL \i_complex.re[10]~input_o\ : std_logic;
SIGNAL \i_complex.re[11]~input_o\ : std_logic;
SIGNAL \i_complex.re[12]~input_o\ : std_logic;
SIGNAL \i_complex.re[13]~input_o\ : std_logic;
SIGNAL \i_complex.re[14]~input_o\ : std_logic;
SIGNAL \i_complex.re[15]~input_o\ : std_logic;
SIGNAL \o_complex[0]~output_o\ : std_logic;
SIGNAL \o_complex[1]~output_o\ : std_logic;
SIGNAL \o_complex[2]~output_o\ : std_logic;
SIGNAL \o_complex[3]~output_o\ : std_logic;
SIGNAL \o_complex[4]~output_o\ : std_logic;
SIGNAL \o_complex[5]~output_o\ : std_logic;
SIGNAL \o_complex[6]~output_o\ : std_logic;
SIGNAL \o_complex[7]~output_o\ : std_logic;
SIGNAL \o_complex[8]~output_o\ : std_logic;
SIGNAL \o_complex[9]~output_o\ : std_logic;
SIGNAL \o_complex[10]~output_o\ : std_logic;
SIGNAL \o_complex[11]~output_o\ : std_logic;
SIGNAL \o_complex[12]~output_o\ : std_logic;
SIGNAL \o_complex[13]~output_o\ : std_logic;
SIGNAL \o_complex[14]~output_o\ : std_logic;
SIGNAL \o_complex[15]~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clk <= i_clk;
ww_i_enable <= i_enable;
\ww_i_complex.img\ <= \i_complex.img\;
\ww_i_complex.re\ <= \i_complex.re\;
o_complex <= ww_o_complex;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y73_N2
\o_complex[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[0]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\o_complex[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[1]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\o_complex[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[2]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\o_complex[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\o_complex[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[4]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\o_complex[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[5]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\o_complex[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[6]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\o_complex[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\o_complex[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[8]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\o_complex[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[9]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\o_complex[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[10]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\o_complex[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[11]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\o_complex[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[12]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\o_complex[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[13]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\o_complex[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[14]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\o_complex[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_complex[15]~output_o\);

-- Location: IOIBUF_X115_Y62_N8
\i_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\i_enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_enable,
	o => \i_enable~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\i_complex.img[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(0),
	o => \i_complex.img[0]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\i_complex.img[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(1),
	o => \i_complex.img[1]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\i_complex.img[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(2),
	o => \i_complex.img[2]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\i_complex.img[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(3),
	o => \i_complex.img[3]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\i_complex.img[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(4),
	o => \i_complex.img[4]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\i_complex.img[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(5),
	o => \i_complex.img[5]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\i_complex.img[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(6),
	o => \i_complex.img[6]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\i_complex.img[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(7),
	o => \i_complex.img[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N8
\i_complex.img[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(8),
	o => \i_complex.img[8]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\i_complex.img[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(9),
	o => \i_complex.img[9]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\i_complex.img[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(10),
	o => \i_complex.img[10]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\i_complex.img[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(11),
	o => \i_complex.img[11]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\i_complex.img[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(12),
	o => \i_complex.img[12]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\i_complex.img[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(13),
	o => \i_complex.img[13]~input_o\);

-- Location: IOIBUF_X105_Y0_N1
\i_complex.img[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(14),
	o => \i_complex.img[14]~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\i_complex.img[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.img\(15),
	o => \i_complex.img[15]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\i_complex.re[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(0),
	o => \i_complex.re[0]~input_o\);

-- Location: IOIBUF_X107_Y73_N15
\i_complex.re[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(1),
	o => \i_complex.re[1]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\i_complex.re[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(2),
	o => \i_complex.re[2]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\i_complex.re[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(3),
	o => \i_complex.re[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\i_complex.re[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(4),
	o => \i_complex.re[4]~input_o\);

-- Location: IOIBUF_X115_Y22_N22
\i_complex.re[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(5),
	o => \i_complex.re[5]~input_o\);

-- Location: IOIBUF_X11_Y73_N8
\i_complex.re[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(6),
	o => \i_complex.re[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\i_complex.re[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(7),
	o => \i_complex.re[7]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\i_complex.re[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(8),
	o => \i_complex.re[8]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\i_complex.re[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(9),
	o => \i_complex.re[9]~input_o\);

-- Location: IOIBUF_X115_Y35_N15
\i_complex.re[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(10),
	o => \i_complex.re[10]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\i_complex.re[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(11),
	o => \i_complex.re[11]~input_o\);

-- Location: IOIBUF_X115_Y11_N1
\i_complex.re[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(12),
	o => \i_complex.re[12]~input_o\);

-- Location: IOIBUF_X115_Y48_N1
\i_complex.re[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(13),
	o => \i_complex.re[13]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\i_complex.re[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(14),
	o => \i_complex.re[14]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\i_complex.re[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_i_complex.re\(15),
	o => \i_complex.re[15]~input_o\);

ww_o_complex(0) <= \o_complex[0]~output_o\;

ww_o_complex(1) <= \o_complex[1]~output_o\;

ww_o_complex(2) <= \o_complex[2]~output_o\;

ww_o_complex(3) <= \o_complex[3]~output_o\;

ww_o_complex(4) <= \o_complex[4]~output_o\;

ww_o_complex(5) <= \o_complex[5]~output_o\;

ww_o_complex(6) <= \o_complex[6]~output_o\;

ww_o_complex(7) <= \o_complex[7]~output_o\;

ww_o_complex(8) <= \o_complex[8]~output_o\;

ww_o_complex(9) <= \o_complex[9]~output_o\;

ww_o_complex(10) <= \o_complex[10]~output_o\;

ww_o_complex(11) <= \o_complex[11]~output_o\;

ww_o_complex(12) <= \o_complex[12]~output_o\;

ww_o_complex(13) <= \o_complex[13]~output_o\;

ww_o_complex(14) <= \o_complex[14]~output_o\;

ww_o_complex(15) <= \o_complex[15]~output_o\;
END structure;


