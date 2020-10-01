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

-- DATE "09/29/2020 00:23:36"

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

ENTITY 	lut_tanh IS
    PORT (
	i_address : IN std_logic_vector(7 DOWNTO 0);
	o_output : OUT std_logic_vector(7 DOWNTO 0)
	);
END lut_tanh;

-- Design Ports Information
-- o_output[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[7]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lut_tanh IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_output : std_logic_vector(7 DOWNTO 0);
SIGNAL \o_output[0]~output_o\ : std_logic;
SIGNAL \o_output[1]~output_o\ : std_logic;
SIGNAL \o_output[2]~output_o\ : std_logic;
SIGNAL \o_output[3]~output_o\ : std_logic;
SIGNAL \o_output[4]~output_o\ : std_logic;
SIGNAL \o_output[5]~output_o\ : std_logic;
SIGNAL \o_output[6]~output_o\ : std_logic;
SIGNAL \o_output[7]~output_o\ : std_logic;
SIGNAL \i_address[1]~input_o\ : std_logic;
SIGNAL \i_address[4]~input_o\ : std_logic;
SIGNAL \i_address[3]~input_o\ : std_logic;
SIGNAL \i_address[0]~input_o\ : std_logic;
SIGNAL \r_out~23_combout\ : std_logic;
SIGNAL \i_address[7]~input_o\ : std_logic;
SIGNAL \i_address[5]~input_o\ : std_logic;
SIGNAL \r_out~21_combout\ : std_logic;
SIGNAL \r_out~20_combout\ : std_logic;
SIGNAL \r_out~22_combout\ : std_logic;
SIGNAL \r_out~24_combout\ : std_logic;
SIGNAL \r_out~34_combout\ : std_logic;
SIGNAL \r_out~31_combout\ : std_logic;
SIGNAL \r_out~32_combout\ : std_logic;
SIGNAL \r_out~33_combout\ : std_logic;
SIGNAL \r_out~30_combout\ : std_logic;
SIGNAL \r_out~35_combout\ : std_logic;
SIGNAL \i_address[2]~input_o\ : std_logic;
SIGNAL \i_address[6]~input_o\ : std_logic;
SIGNAL \r_out~26_combout\ : std_logic;
SIGNAL \r_out~25_combout\ : std_logic;
SIGNAL \r_out~27_combout\ : std_logic;
SIGNAL \r_out~28_combout\ : std_logic;
SIGNAL \r_out~29_combout\ : std_logic;
SIGNAL \r_out~36_combout\ : std_logic;
SIGNAL \r_out~37_combout\ : std_logic;
SIGNAL \r_out~38_combout\ : std_logic;
SIGNAL \r_out~39_combout\ : std_logic;
SIGNAL \r_out~40_combout\ : std_logic;
SIGNAL \r_out~54_combout\ : std_logic;
SIGNAL \r_out~47_combout\ : std_logic;
SIGNAL \r_out~51_combout\ : std_logic;
SIGNAL \r_out~48_combout\ : std_logic;
SIGNAL \r_out~49_combout\ : std_logic;
SIGNAL \r_out~50_combout\ : std_logic;
SIGNAL \r_out~52_combout\ : std_logic;
SIGNAL \r_out~42_combout\ : std_logic;
SIGNAL \r_out~43_combout\ : std_logic;
SIGNAL \r_out~44_combout\ : std_logic;
SIGNAL \r_out~45_combout\ : std_logic;
SIGNAL \r_out~41_combout\ : std_logic;
SIGNAL \r_out~46_combout\ : std_logic;
SIGNAL \r_out~53_combout\ : std_logic;
SIGNAL \r_out~55_combout\ : std_logic;
SIGNAL \r_out~17_combout\ : std_logic;
SIGNAL \r_out~14_combout\ : std_logic;
SIGNAL \r_out~13_combout\ : std_logic;
SIGNAL \r_out~18_combout\ : std_logic;
SIGNAL \r_out~16_combout\ : std_logic;
SIGNAL \r_out~19_combout\ : std_logic;
SIGNAL \r_out~56_combout\ : std_logic;
SIGNAL \r_out~58_combout\ : std_logic;
SIGNAL \r_out~57_combout\ : std_logic;
SIGNAL \r_out~59_combout\ : std_logic;
SIGNAL \r_out~60_combout\ : std_logic;
SIGNAL \r_out~61_combout\ : std_logic;
SIGNAL \r_out~62_combout\ : std_logic;
SIGNAL \r_out~6_combout\ : std_logic;
SIGNAL \r_out~77_combout\ : std_logic;
SIGNAL \r_out~78_combout\ : std_logic;
SIGNAL \r_out~76_combout\ : std_logic;
SIGNAL \r_out~64_combout\ : std_logic;
SIGNAL \r_out~65_combout\ : std_logic;
SIGNAL \r_out~79_combout\ : std_logic;
SIGNAL \r_out~63_combout\ : std_logic;
SIGNAL \r_out~80_combout\ : std_logic;
SIGNAL \r_out~66_combout\ : std_logic;
SIGNAL \r_out~71_combout\ : std_logic;
SIGNAL \r_out~69_combout\ : std_logic;
SIGNAL \r_out~67_combout\ : std_logic;
SIGNAL \r_out~68_combout\ : std_logic;
SIGNAL \r_out~70_combout\ : std_logic;
SIGNAL \r_out~72_combout\ : std_logic;
SIGNAL \r_out~73_combout\ : std_logic;
SIGNAL \r_out~74_combout\ : std_logic;
SIGNAL \r_out~75_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_address <= i_address;
o_output <= ww_o_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y73_N2
\o_output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~40_combout\,
	devoe => ww_devoe,
	o => \o_output[0]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\o_output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~55_combout\,
	devoe => ww_devoe,
	o => \o_output[1]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\o_output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~62_combout\,
	devoe => ww_devoe,
	o => \o_output[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\o_output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~66_combout\,
	devoe => ww_devoe,
	o => \o_output[3]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\o_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~72_combout\,
	devoe => ww_devoe,
	o => \o_output[4]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\o_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~75_combout\,
	devoe => ww_devoe,
	o => \o_output[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\o_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_address[7]~input_o\,
	devoe => ww_devoe,
	o => \o_output[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\o_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i_address[7]~input_o\,
	devoe => ww_devoe,
	o => \o_output[7]~output_o\);

-- Location: IOIBUF_X25_Y73_N15
\i_address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(1),
	o => \i_address[1]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\i_address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(4),
	o => \i_address[4]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\i_address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(3),
	o => \i_address[3]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\i_address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(0),
	o => \i_address[0]~input_o\);

-- Location: LCCOMB_X26_Y72_N30
\r_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~23_combout\ = (\i_address[3]~input_o\ & (!\i_address[1]~input_o\ & (!\i_address[4]~input_o\))) # (!\i_address[3]~input_o\ & (\i_address[0]~input_o\ & (\i_address[1]~input_o\ $ (!\i_address[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[0]~input_o\,
	combout => \r_out~23_combout\);

-- Location: IOIBUF_X23_Y73_N22
\i_address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(7),
	o => \i_address[7]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\i_address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(5),
	o => \i_address[5]~input_o\);

-- Location: LCCOMB_X26_Y72_N26
\r_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~21_combout\ = (\i_address[4]~input_o\ & (((!\i_address[0]~input_o\) # (!\i_address[3]~input_o\)) # (!\i_address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[0]~input_o\,
	combout => \r_out~21_combout\);

-- Location: LCCOMB_X26_Y72_N24
\r_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~20_combout\ = (\i_address[3]~input_o\ & (!\i_address[0]~input_o\ & ((\i_address[4]~input_o\) # (!\i_address[1]~input_o\)))) # (!\i_address[3]~input_o\ & ((\i_address[0]~input_o\) # (\i_address[1]~input_o\ $ (\i_address[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[0]~input_o\,
	combout => \r_out~20_combout\);

-- Location: LCCOMB_X26_Y72_N20
\r_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~22_combout\ = (\i_address[7]~input_o\ & (((!\i_address[5]~input_o\)) # (!\r_out~21_combout\))) # (!\i_address[7]~input_o\ & (((!\i_address[5]~input_o\ & \r_out~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~21_combout\,
	datab => \i_address[7]~input_o\,
	datac => \i_address[5]~input_o\,
	datad => \r_out~20_combout\,
	combout => \r_out~22_combout\);

-- Location: LCCOMB_X26_Y72_N8
\r_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~24_combout\ = (\r_out~22_combout\) # ((\r_out~23_combout\ & (!\i_address[7]~input_o\ & \i_address[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~23_combout\,
	datab => \i_address[7]~input_o\,
	datac => \i_address[5]~input_o\,
	datad => \r_out~22_combout\,
	combout => \r_out~24_combout\);

-- Location: LCCOMB_X26_Y72_N28
\r_out~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~34_combout\ = (\i_address[5]~input_o\ & (\i_address[3]~input_o\ & \i_address[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_address[5]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~34_combout\);

-- Location: LCCOMB_X26_Y72_N6
\r_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~31_combout\ = (\i_address[5]~input_o\ & (((!\i_address[4]~input_o\) # (!\i_address[3]~input_o\)))) # (!\i_address[5]~input_o\ & ((\i_address[1]~input_o\) # ((\i_address[3]~input_o\) # (\i_address[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~31_combout\);

-- Location: LCCOMB_X26_Y72_N0
\r_out~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~32_combout\ = (\i_address[5]~input_o\ & (((\i_address[4]~input_o\) # (!\i_address[3]~input_o\)) # (!\i_address[1]~input_o\))) # (!\i_address[5]~input_o\ & (\i_address[3]~input_o\ $ (((!\i_address[1]~input_o\ & \i_address[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~32_combout\);

-- Location: LCCOMB_X26_Y72_N18
\r_out~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~33_combout\ = (\i_address[7]~input_o\ & ((\r_out~31_combout\) # ((\i_address[0]~input_o\)))) # (!\i_address[7]~input_o\ & (((\r_out~32_combout\ & !\i_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~31_combout\,
	datab => \r_out~32_combout\,
	datac => \i_address[7]~input_o\,
	datad => \i_address[0]~input_o\,
	combout => \r_out~33_combout\);

-- Location: LCCOMB_X26_Y72_N4
\r_out~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~30_combout\ = (\i_address[1]~input_o\ & (\i_address[3]~input_o\ & ((\i_address[5]~input_o\) # (!\i_address[4]~input_o\)))) # (!\i_address[1]~input_o\ & (\i_address[4]~input_o\ $ (((!\i_address[5]~input_o\ & \i_address[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~30_combout\);

-- Location: LCCOMB_X26_Y72_N14
\r_out~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~35_combout\ = (\r_out~33_combout\ & (((!\i_address[0]~input_o\)) # (!\r_out~34_combout\))) # (!\r_out~33_combout\ & (((\r_out~30_combout\ & \i_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~34_combout\,
	datab => \r_out~33_combout\,
	datac => \r_out~30_combout\,
	datad => \i_address[0]~input_o\,
	combout => \r_out~35_combout\);

-- Location: IOIBUF_X29_Y73_N1
\i_address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(2),
	o => \i_address[2]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\i_address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(6),
	o => \i_address[6]~input_o\);

-- Location: LCCOMB_X26_Y72_N12
\r_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~26_combout\ = (\i_address[1]~input_o\ & ((\i_address[0]~input_o\ & (\i_address[4]~input_o\)) # (!\i_address[0]~input_o\ & ((\i_address[5]~input_o\))))) # (!\i_address[1]~input_o\ & (\i_address[4]~input_o\ & (\i_address[5]~input_o\ $ 
-- (!\i_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[5]~input_o\,
	datad => \i_address[0]~input_o\,
	combout => \r_out~26_combout\);

-- Location: LCCOMB_X26_Y72_N10
\r_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~25_combout\ = (\i_address[5]~input_o\ & (((\i_address[4]~input_o\) # (\i_address[0]~input_o\)))) # (!\i_address[5]~input_o\ & (\i_address[1]~input_o\ $ (((\i_address[4]~input_o\ & \i_address[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[5]~input_o\,
	datad => \i_address[0]~input_o\,
	combout => \r_out~25_combout\);

-- Location: LCCOMB_X26_Y72_N22
\r_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~27_combout\ = (\i_address[3]~input_o\ & (((\r_out~25_combout\)))) # (!\i_address[3]~input_o\ & (!\r_out~26_combout\ & (\i_address[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~26_combout\,
	datab => \i_address[7]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \r_out~25_combout\,
	combout => \r_out~27_combout\);

-- Location: LCCOMB_X26_Y72_N16
\r_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~28_combout\ = (\i_address[1]~input_o\) # ((\i_address[5]~input_o\) # ((\i_address[3]~input_o\) # (\i_address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~28_combout\);

-- Location: LCCOMB_X26_Y72_N2
\r_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~29_combout\ = (\r_out~27_combout\) # ((!\i_address[7]~input_o\ & \r_out~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_address[7]~input_o\,
	datac => \r_out~27_combout\,
	datad => \r_out~28_combout\,
	combout => \r_out~29_combout\);

-- Location: LCCOMB_X27_Y72_N24
\r_out~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~36_combout\ = (\i_address[2]~input_o\ & (((\i_address[6]~input_o\)))) # (!\i_address[2]~input_o\ & ((\i_address[6]~input_o\ & ((\r_out~29_combout\))) # (!\i_address[6]~input_o\ & (\r_out~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~35_combout\,
	datab => \i_address[2]~input_o\,
	datac => \i_address[6]~input_o\,
	datad => \r_out~29_combout\,
	combout => \r_out~36_combout\);

-- Location: LCCOMB_X27_Y72_N10
\r_out~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~37_combout\ = (\i_address[5]~input_o\ & (((!\i_address[0]~input_o\ & !\i_address[4]~input_o\)))) # (!\i_address[5]~input_o\ & ((\i_address[1]~input_o\ & ((!\i_address[4]~input_o\))) # (!\i_address[1]~input_o\ & ((\i_address[0]~input_o\) # 
-- (\i_address[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~37_combout\);

-- Location: LCCOMB_X27_Y72_N20
\r_out~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~38_combout\ = (\i_address[4]~input_o\ & ((\i_address[5]~input_o\) # ((\i_address[0]~input_o\) # (!\i_address[1]~input_o\)))) # (!\i_address[4]~input_o\ & (\i_address[1]~input_o\ $ (((\i_address[5]~input_o\ & \i_address[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~38_combout\);

-- Location: LCCOMB_X27_Y72_N14
\r_out~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~39_combout\ = ((\i_address[3]~input_o\ & ((!\r_out~38_combout\))) # (!\i_address[3]~input_o\ & (!\r_out~37_combout\))) # (!\i_address[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~37_combout\,
	datab => \i_address[7]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \r_out~38_combout\,
	combout => \r_out~39_combout\);

-- Location: LCCOMB_X27_Y72_N8
\r_out~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~40_combout\ = (\r_out~36_combout\ & (((\r_out~39_combout\) # (!\i_address[2]~input_o\)))) # (!\r_out~36_combout\ & (\r_out~24_combout\ & ((\i_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~24_combout\,
	datab => \r_out~36_combout\,
	datac => \r_out~39_combout\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~40_combout\);

-- Location: LCCOMB_X27_Y71_N18
\r_out~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~54_combout\ = (\i_address[5]~input_o\ & (\i_address[4]~input_o\ & ((\i_address[2]~input_o\) # (\i_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[2]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~54_combout\);

-- Location: LCCOMB_X27_Y71_N12
\r_out~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~47_combout\ = (\i_address[3]~input_o\ & (((\i_address[5]~input_o\ & !\i_address[2]~input_o\)) # (!\i_address[4]~input_o\))) # (!\i_address[3]~input_o\ & (((\i_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[2]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~47_combout\);

-- Location: LCCOMB_X27_Y71_N28
\r_out~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~51_combout\ = (\i_address[2]~input_o\ & (\i_address[5]~input_o\ $ (((\i_address[3]~input_o\) # (!\i_address[4]~input_o\))))) # (!\i_address[2]~input_o\ & ((\i_address[5]~input_o\) # ((\i_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[2]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~51_combout\);

-- Location: LCCOMB_X27_Y71_N6
\r_out~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~48_combout\ = (\i_address[2]~input_o\ & (((\i_address[3]~input_o\) # (!\i_address[4]~input_o\)) # (!\i_address[5]~input_o\))) # (!\i_address[2]~input_o\ & (\i_address[5]~input_o\ $ (((\i_address[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[2]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~48_combout\);

-- Location: LCCOMB_X27_Y71_N8
\r_out~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~49_combout\ = (\i_address[3]~input_o\ & (\i_address[4]~input_o\ $ (((!\i_address[2]~input_o\) # (!\i_address[5]~input_o\))))) # (!\i_address[3]~input_o\ & (\i_address[4]~input_o\ & (\i_address[5]~input_o\ $ (\i_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[2]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~49_combout\);

-- Location: LCCOMB_X27_Y71_N10
\r_out~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~50_combout\ = (\i_address[0]~input_o\ & (((\i_address[1]~input_o\)))) # (!\i_address[0]~input_o\ & ((\i_address[1]~input_o\ & (\r_out~48_combout\)) # (!\i_address[1]~input_o\ & ((\r_out~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~48_combout\,
	datab => \r_out~49_combout\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[1]~input_o\,
	combout => \r_out~50_combout\);

-- Location: LCCOMB_X27_Y71_N30
\r_out~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~52_combout\ = (\i_address[0]~input_o\ & ((\r_out~50_combout\ & ((!\r_out~51_combout\))) # (!\r_out~50_combout\ & (!\r_out~47_combout\)))) # (!\i_address[0]~input_o\ & (((\r_out~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~47_combout\,
	datab => \r_out~51_combout\,
	datac => \i_address[0]~input_o\,
	datad => \r_out~50_combout\,
	combout => \r_out~52_combout\);

-- Location: LCCOMB_X27_Y71_N26
\r_out~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~42_combout\ = (\i_address[4]~input_o\ & (\i_address[0]~input_o\ $ (((\i_address[5]~input_o\ & \i_address[3]~input_o\))))) # (!\i_address[4]~input_o\ & (\i_address[5]~input_o\ $ (((\i_address[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~42_combout\);

-- Location: LCCOMB_X27_Y71_N20
\r_out~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~43_combout\ = (\i_address[4]~input_o\ & (\i_address[5]~input_o\ & (\i_address[0]~input_o\ $ (\i_address[3]~input_o\)))) # (!\i_address[4]~input_o\ & (\i_address[3]~input_o\ & ((\i_address[0]~input_o\) # (!\i_address[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~43_combout\);

-- Location: LCCOMB_X27_Y71_N22
\r_out~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~44_combout\ = (\i_address[1]~input_o\ & (((\i_address[2]~input_o\)) # (!\r_out~42_combout\))) # (!\i_address[1]~input_o\ & (((!\i_address[2]~input_o\ & !\r_out~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~42_combout\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[2]~input_o\,
	datad => \r_out~43_combout\,
	combout => \r_out~44_combout\);

-- Location: LCCOMB_X27_Y71_N16
\r_out~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~45_combout\ = (\i_address[5]~input_o\ & (\i_address[4]~input_o\ & (\i_address[0]~input_o\))) # (!\i_address[5]~input_o\ & (\i_address[3]~input_o\ & ((\i_address[0]~input_o\) # (!\i_address[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~45_combout\);

-- Location: LCCOMB_X27_Y71_N24
\r_out~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~41_combout\ = (\i_address[0]~input_o\ & (!\i_address[5]~input_o\)) # (!\i_address[0]~input_o\ & (((\i_address[4]~input_o\) # (\i_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~41_combout\);

-- Location: LCCOMB_X27_Y71_N2
\r_out~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~46_combout\ = (\r_out~44_combout\ & ((\r_out~45_combout\) # ((!\i_address[2]~input_o\)))) # (!\r_out~44_combout\ & (((\i_address[2]~input_o\ & !\r_out~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~44_combout\,
	datab => \r_out~45_combout\,
	datac => \i_address[2]~input_o\,
	datad => \r_out~41_combout\,
	combout => \r_out~46_combout\);

-- Location: LCCOMB_X27_Y71_N0
\r_out~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~53_combout\ = (\i_address[7]~input_o\ & (((\r_out~46_combout\ & \i_address[6]~input_o\)))) # (!\i_address[7]~input_o\ & ((\r_out~52_combout\) # ((\i_address[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~52_combout\,
	datab => \r_out~46_combout\,
	datac => \i_address[7]~input_o\,
	datad => \i_address[6]~input_o\,
	combout => \r_out~53_combout\);

-- Location: LCCOMB_X27_Y71_N4
\r_out~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~55_combout\ = (\r_out~53_combout\) # ((!\i_address[6]~input_o\ & (\r_out~54_combout\ & \i_address[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[6]~input_o\,
	datab => \r_out~54_combout\,
	datac => \i_address[7]~input_o\,
	datad => \r_out~53_combout\,
	combout => \r_out~55_combout\);

-- Location: LCCOMB_X28_Y71_N6
\r_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~17_combout\ = (\i_address[3]~input_o\) # ((\i_address[2]~input_o\) # ((\i_address[0]~input_o\ & \i_address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~17_combout\);

-- Location: LCCOMB_X28_Y71_N10
\r_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~14_combout\ = (\i_address[1]~input_o\ & (\i_address[2]~input_o\ $ (((\i_address[0]~input_o\ & \i_address[3]~input_o\))))) # (!\i_address[1]~input_o\ & ((\i_address[3]~input_o\ & ((\i_address[2]~input_o\))) # (!\i_address[3]~input_o\ & 
-- ((\i_address[0]~input_o\) # (!\i_address[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~14_combout\);

-- Location: LCCOMB_X28_Y71_N24
\r_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~13_combout\ = (\i_address[0]~input_o\ & (\i_address[1]~input_o\)) # (!\i_address[0]~input_o\ & ((\i_address[1]~input_o\ & (!\i_address[3]~input_o\ & !\i_address[2]~input_o\)) # (!\i_address[1]~input_o\ & (\i_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~13_combout\);

-- Location: LCCOMB_X28_Y71_N0
\r_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~18_combout\ = (\i_address[4]~input_o\ & ((\r_out~14_combout\) # ((\i_address[5]~input_o\)))) # (!\i_address[4]~input_o\ & (((!\i_address[5]~input_o\ & \r_out~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~14_combout\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[5]~input_o\,
	datad => \r_out~13_combout\,
	combout => \r_out~18_combout\);

-- Location: LCCOMB_X28_Y71_N12
\r_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~16_combout\ = (\i_address[3]~input_o\ & (!\i_address[0]~input_o\ & (!\i_address[1]~input_o\ & !\i_address[2]~input_o\))) # (!\i_address[3]~input_o\ & ((\i_address[2]~input_o\) # ((\i_address[0]~input_o\ & \i_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~16_combout\);

-- Location: LCCOMB_X28_Y71_N2
\r_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~19_combout\ = (\r_out~18_combout\ & ((\r_out~17_combout\) # ((!\i_address[5]~input_o\)))) # (!\r_out~18_combout\ & (((\i_address[5]~input_o\ & \r_out~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~17_combout\,
	datab => \r_out~18_combout\,
	datac => \i_address[5]~input_o\,
	datad => \r_out~16_combout\,
	combout => \r_out~19_combout\);

-- Location: LCCOMB_X28_Y72_N8
\r_out~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~56_combout\ = (\i_address[5]~input_o\ & (((\i_address[1]~input_o\)))) # (!\i_address[5]~input_o\ & (!\i_address[4]~input_o\ & ((\i_address[0]~input_o\) # (\i_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[5]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~56_combout\);

-- Location: LCCOMB_X28_Y72_N20
\r_out~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~58_combout\ = (\i_address[0]~input_o\ & (!\i_address[1]~input_o\ & ((\i_address[5]~input_o\) # (\i_address[4]~input_o\)))) # (!\i_address[0]~input_o\ & (\i_address[4]~input_o\ $ (((!\i_address[1]~input_o\ & \i_address[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[5]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~58_combout\);

-- Location: LCCOMB_X28_Y72_N26
\r_out~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~57_combout\ = (\i_address[0]~input_o\ & ((\i_address[4]~input_o\ & (!\i_address[1]~input_o\)) # (!\i_address[4]~input_o\ & ((\i_address[5]~input_o\))))) # (!\i_address[0]~input_o\ & (\i_address[4]~input_o\ $ (((\i_address[1]~input_o\ & 
-- \i_address[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[5]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~57_combout\);

-- Location: LCCOMB_X28_Y72_N30
\r_out~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~59_combout\ = (\i_address[2]~input_o\ & (((\i_address[3]~input_o\)))) # (!\i_address[2]~input_o\ & ((\i_address[3]~input_o\ & ((!\r_out~57_combout\))) # (!\i_address[3]~input_o\ & (\r_out~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[2]~input_o\,
	datab => \r_out~58_combout\,
	datac => \r_out~57_combout\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~59_combout\);

-- Location: LCCOMB_X28_Y72_N24
\r_out~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~60_combout\ = (\i_address[4]~input_o\ $ (!\i_address[1]~input_o\)) # (!\i_address[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[4]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[5]~input_o\,
	combout => \r_out~60_combout\);

-- Location: LCCOMB_X28_Y72_N2
\r_out~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~61_combout\ = (\i_address[2]~input_o\ & ((\r_out~59_combout\ & ((\r_out~60_combout\))) # (!\r_out~59_combout\ & (\r_out~56_combout\)))) # (!\i_address[2]~input_o\ & (((\r_out~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[2]~input_o\,
	datab => \r_out~56_combout\,
	datac => \r_out~59_combout\,
	datad => \r_out~60_combout\,
	combout => \r_out~61_combout\);

-- Location: LCCOMB_X28_Y72_N12
\r_out~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~62_combout\ = (\i_address[7]~input_o\ & (((\r_out~61_combout\ & \i_address[6]~input_o\)))) # (!\i_address[7]~input_o\ & ((\r_out~19_combout\) # ((\i_address[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~19_combout\,
	datab => \r_out~61_combout\,
	datac => \i_address[7]~input_o\,
	datad => \i_address[6]~input_o\,
	combout => \r_out~62_combout\);

-- Location: LCCOMB_X27_Y72_N2
\r_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~6_combout\ = (\i_address[3]~input_o\ & ((\i_address[0]~input_o\) # ((\i_address[1]~input_o\) # (\i_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~6_combout\);

-- Location: LCCOMB_X27_Y72_N30
\r_out~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~77_combout\ = (\i_address[0]~input_o\ & ((\i_address[4]~input_o\ & (!\i_address[1]~input_o\)) # (!\i_address[4]~input_o\ & ((!\i_address[3]~input_o\))))) # (!\i_address[0]~input_o\ & ((\i_address[3]~input_o\ $ (!\i_address[4]~input_o\)) # 
-- (!\i_address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~77_combout\);

-- Location: LCCOMB_X27_Y72_N16
\r_out~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~78_combout\ = (\r_out~77_combout\ & ((\i_address[4]~input_o\ & ((\i_address[3]~input_o\) # (!\i_address[2]~input_o\))) # (!\i_address[4]~input_o\ & (\i_address[3]~input_o\ $ (\i_address[2]~input_o\))))) # (!\r_out~77_combout\ & 
-- (\i_address[3]~input_o\ & (\i_address[4]~input_o\ $ (\i_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~77_combout\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~78_combout\);

-- Location: LCCOMB_X27_Y72_N4
\r_out~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~76_combout\ = (\i_address[5]~input_o\ & ((\i_address[4]~input_o\) # ((\r_out~6_combout\)))) # (!\i_address[5]~input_o\ & (((\r_out~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[4]~input_o\,
	datab => \r_out~6_combout\,
	datac => \i_address[5]~input_o\,
	datad => \r_out~78_combout\,
	combout => \r_out~76_combout\);

-- Location: LCCOMB_X27_Y72_N12
\r_out~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~64_combout\ = (\i_address[5]~input_o\ & ((\i_address[1]~input_o\ & ((\i_address[3]~input_o\))) # (!\i_address[1]~input_o\ & ((\i_address[0]~input_o\) # (!\i_address[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[5]~input_o\,
	combout => \r_out~64_combout\);

-- Location: LCCOMB_X27_Y72_N22
\r_out~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~65_combout\ = (\i_address[3]~input_o\ & (((!\i_address[5]~input_o\)))) # (!\i_address[3]~input_o\ & (\i_address[0]~input_o\ & (\i_address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[5]~input_o\,
	combout => \r_out~65_combout\);

-- Location: LCCOMB_X27_Y72_N26
\r_out~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~79_combout\ = (\i_address[4]~input_o\ & (((\r_out~65_combout\) # (\i_address[2]~input_o\)))) # (!\i_address[4]~input_o\ & (\r_out~64_combout\ & ((!\i_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~64_combout\,
	datab => \i_address[4]~input_o\,
	datac => \r_out~65_combout\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~79_combout\);

-- Location: LCCOMB_X27_Y72_N18
\r_out~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~63_combout\ = (\i_address[5]~input_o\ & (!\i_address[1]~input_o\ & (\i_address[3]~input_o\ & \i_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~63_combout\);

-- Location: LCCOMB_X27_Y72_N28
\r_out~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~80_combout\ = (\i_address[6]~input_o\ & ((\r_out~79_combout\) # ((\r_out~63_combout\) # (!\i_address[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~79_combout\,
	datab => \i_address[7]~input_o\,
	datac => \i_address[6]~input_o\,
	datad => \r_out~63_combout\,
	combout => \r_out~80_combout\);

-- Location: LCCOMB_X27_Y72_N0
\r_out~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~66_combout\ = (\r_out~80_combout\) # ((!\i_address[7]~input_o\ & \r_out~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_address[7]~input_o\,
	datac => \r_out~76_combout\,
	datad => \r_out~80_combout\,
	combout => \r_out~66_combout\);

-- Location: LCCOMB_X28_Y72_N22
\r_out~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~71_combout\ = (\i_address[4]~input_o\ & (((\i_address[3]~input_o\)))) # (!\i_address[4]~input_o\ & ((\i_address[1]~input_o\ & ((!\i_address[3]~input_o\) # (!\i_address[2]~input_o\))) # (!\i_address[1]~input_o\ & ((\i_address[2]~input_o\) # 
-- (\i_address[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[4]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[2]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~71_combout\);

-- Location: LCCOMB_X28_Y72_N18
\r_out~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~69_combout\ = (\i_address[2]~input_o\ & (((\i_address[1]~input_o\ & \i_address[0]~input_o\)) # (!\i_address[4]~input_o\))) # (!\i_address[2]~input_o\ & (!\i_address[4]~input_o\ & ((\i_address[1]~input_o\) # (\i_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[2]~input_o\,
	datab => \i_address[1]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~69_combout\);

-- Location: LCCOMB_X28_Y72_N14
\r_out~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~67_combout\ = (!\i_address[2]~input_o\ & (!\i_address[1]~input_o\ & !\i_address[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[2]~input_o\,
	datac => \i_address[1]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~67_combout\);

-- Location: LCCOMB_X28_Y72_N0
\r_out~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~68_combout\ = (\i_address[5]~input_o\) # ((\i_address[6]~input_o\) # ((\r_out~67_combout\ & \i_address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \r_out~67_combout\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[6]~input_o\,
	combout => \r_out~68_combout\);

-- Location: LCCOMB_X28_Y72_N28
\r_out~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~70_combout\ = (!\i_address[7]~input_o\ & ((\r_out~68_combout\) # ((\r_out~69_combout\ & \i_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~69_combout\,
	datab => \r_out~68_combout\,
	datac => \i_address[7]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~70_combout\);

-- Location: LCCOMB_X28_Y72_N16
\r_out~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~72_combout\ = (\r_out~70_combout\) # ((\r_out~71_combout\ & (\i_address[5]~input_o\ & \i_address[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~71_combout\,
	datab => \r_out~70_combout\,
	datac => \i_address[5]~input_o\,
	datad => \i_address[6]~input_o\,
	combout => \r_out~72_combout\);

-- Location: LCCOMB_X28_Y72_N10
\r_out~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~73_combout\ = (\i_address[2]~input_o\ & (\i_address[1]~input_o\ & \i_address[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[2]~input_o\,
	datac => \i_address[1]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~73_combout\);

-- Location: LCCOMB_X28_Y72_N4
\r_out~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~74_combout\ = (\i_address[4]~input_o\ & (((\i_address[6]~input_o\) # (!\r_out~67_combout\)))) # (!\i_address[4]~input_o\ & (\r_out~73_combout\ & ((\i_address[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~73_combout\,
	datab => \r_out~67_combout\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[6]~input_o\,
	combout => \r_out~74_combout\);

-- Location: LCCOMB_X28_Y72_N6
\r_out~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~75_combout\ = (\i_address[5]~input_o\ & (((\r_out~74_combout\ & \i_address[6]~input_o\)) # (!\i_address[7]~input_o\))) # (!\i_address[5]~input_o\ & (!\i_address[7]~input_o\ & ((\r_out~74_combout\) # (\i_address[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \r_out~74_combout\,
	datac => \i_address[7]~input_o\,
	datad => \i_address[6]~input_o\,
	combout => \r_out~75_combout\);

ww_o_output(0) <= \o_output[0]~output_o\;

ww_o_output(1) <= \o_output[1]~output_o\;

ww_o_output(2) <= \o_output[2]~output_o\;

ww_o_output(3) <= \o_output[3]~output_o\;

ww_o_output(4) <= \o_output[4]~output_o\;

ww_o_output(5) <= \o_output[5]~output_o\;

ww_o_output(6) <= \o_output[6]~output_o\;

ww_o_output(7) <= \o_output[7]~output_o\;
END structure;


