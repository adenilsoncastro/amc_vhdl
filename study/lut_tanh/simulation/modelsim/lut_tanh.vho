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

-- DATE "09/28/2020 23:29:50"

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
-- o_output[0]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[1]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[2]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[3]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[4]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[5]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_output[7]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[6]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[4]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[1]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_address[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \i_address[5]~input_o\ : std_logic;
SIGNAL \i_address[0]~input_o\ : std_logic;
SIGNAL \i_address[2]~input_o\ : std_logic;
SIGNAL \i_address[1]~input_o\ : std_logic;
SIGNAL \i_address[3]~input_o\ : std_logic;
SIGNAL \r_out~31_combout\ : std_logic;
SIGNAL \i_address[4]~input_o\ : std_logic;
SIGNAL \i_address[6]~input_o\ : std_logic;
SIGNAL \r_out~32_combout\ : std_logic;
SIGNAL \i_address[7]~input_o\ : std_logic;
SIGNAL \r_out~22_combout\ : std_logic;
SIGNAL \r_out~24_combout\ : std_logic;
SIGNAL \r_out~23_combout\ : std_logic;
SIGNAL \r_out~25_combout\ : std_logic;
SIGNAL \r_out~26_combout\ : std_logic;
SIGNAL \r_out~27_combout\ : std_logic;
SIGNAL \r_out~16_combout\ : std_logic;
SIGNAL \r_out~18_combout\ : std_logic;
SIGNAL \r_out~17_combout\ : std_logic;
SIGNAL \r_out~19_combout\ : std_logic;
SIGNAL \r_out~20_combout\ : std_logic;
SIGNAL \r_out~21_combout\ : std_logic;
SIGNAL \r_out~28_combout\ : std_logic;
SIGNAL \r_out~85_combout\ : std_logic;
SIGNAL \r_out~86_combout\ : std_logic;
SIGNAL \r_out~12_combout\ : std_logic;
SIGNAL \r_out~81_combout\ : std_logic;
SIGNAL \r_out~15_combout\ : std_logic;
SIGNAL \r_out~82_combout\ : std_logic;
SIGNAL \r_out~9_combout\ : std_logic;
SIGNAL \r_out~8_combout\ : std_logic;
SIGNAL \r_out~80_combout\ : std_logic;
SIGNAL \r_out~29_combout\ : std_logic;
SIGNAL \r_out~30_combout\ : std_logic;
SIGNAL \r_out~33_combout\ : std_logic;
SIGNAL \r_out~35_combout\ : std_logic;
SIGNAL \r_out~36_combout\ : std_logic;
SIGNAL \r_out~38_combout\ : std_logic;
SIGNAL \r_out~39_combout\ : std_logic;
SIGNAL \r_out~40_combout\ : std_logic;
SIGNAL \r_out~37_combout\ : std_logic;
SIGNAL \r_out~41_combout\ : std_logic;
SIGNAL \r_out~42_combout\ : std_logic;
SIGNAL \r_out~43_combout\ : std_logic;
SIGNAL \r_out~44_combout\ : std_logic;
SIGNAL \r_out~48_combout\ : std_logic;
SIGNAL \r_out~46_combout\ : std_logic;
SIGNAL \r_out~45_combout\ : std_logic;
SIGNAL \r_out~47_combout\ : std_logic;
SIGNAL \r_out~49_combout\ : std_logic;
SIGNAL \r_out~34_combout\ : std_logic;
SIGNAL \r_out~50_combout\ : std_logic;
SIGNAL \r_out~53_combout\ : std_logic;
SIGNAL \r_out~52_combout\ : std_logic;
SIGNAL \r_out~54_combout\ : std_logic;
SIGNAL \r_out~55_combout\ : std_logic;
SIGNAL \r_out~51_combout\ : std_logic;
SIGNAL \r_out~56_combout\ : std_logic;
SIGNAL \r_out~57_combout\ : std_logic;
SIGNAL \r_out~61_combout\ : std_logic;
SIGNAL \r_out~59_combout\ : std_logic;
SIGNAL \r_out~58_combout\ : std_logic;
SIGNAL \r_out~60_combout\ : std_logic;
SIGNAL \r_out~62_combout\ : std_logic;
SIGNAL \r_out~63_combout\ : std_logic;
SIGNAL \r_out~65_combout\ : std_logic;
SIGNAL \r_out~64_combout\ : std_logic;
SIGNAL \r_out~67_combout\ : std_logic;
SIGNAL \r_out~66_combout\ : std_logic;
SIGNAL \r_out~68_combout\ : std_logic;
SIGNAL \r_out~70_combout\ : std_logic;
SIGNAL \r_out~69_combout\ : std_logic;
SIGNAL \r_out~71_combout\ : std_logic;
SIGNAL \r_out~72_combout\ : std_logic;
SIGNAL \r_out~73_combout\ : std_logic;
SIGNAL \r_out~77_combout\ : std_logic;
SIGNAL \r_out~75_combout\ : std_logic;
SIGNAL \r_out~74_combout\ : std_logic;
SIGNAL \r_out~76_combout\ : std_logic;
SIGNAL \r_out~79_combout\ : std_logic;
SIGNAL \r_out~78_combout\ : std_logic;
SIGNAL \r_out~83_combout\ : std_logic;
SIGNAL \r_out~84_combout\ : std_logic;

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

-- Location: IOOBUF_X56_Y0_N23
\o_output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~33_combout\,
	devoe => ww_devoe,
	o => \o_output[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\o_output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~50_combout\,
	devoe => ww_devoe,
	o => \o_output[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\o_output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~63_combout\,
	devoe => ww_devoe,
	o => \o_output[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\o_output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~73_combout\,
	devoe => ww_devoe,
	o => \o_output[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\o_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~79_combout\,
	devoe => ww_devoe,
	o => \o_output[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\o_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_out~84_combout\,
	devoe => ww_devoe,
	o => \o_output[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X56_Y0_N16
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

-- Location: IOIBUF_X52_Y0_N8
\i_address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(5),
	o => \i_address[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\i_address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(0),
	o => \i_address[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\i_address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(2),
	o => \i_address[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\i_address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(1),
	o => \i_address[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\i_address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(3),
	o => \i_address[3]~input_o\);

-- Location: LCCOMB_X55_Y1_N0
\r_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~31_combout\ = (\i_address[2]~input_o\ & (\i_address[3]~input_o\ & ((\i_address[0]~input_o\) # (\i_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[2]~input_o\,
	datac => \i_address[1]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~31_combout\);

-- Location: IOIBUF_X54_Y0_N15
\i_address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(4),
	o => \i_address[4]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\i_address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(6),
	o => \i_address[6]~input_o\);

-- Location: LCCOMB_X55_Y1_N10
\r_out~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~32_combout\ = (\i_address[6]~input_o\ & ((\i_address[5]~input_o\) # ((\r_out~31_combout\) # (\i_address[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \r_out~31_combout\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[6]~input_o\,
	combout => \r_out~32_combout\);

-- Location: IOIBUF_X56_Y0_N8
\i_address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_address(7),
	o => \i_address[7]~input_o\);

-- Location: LCCOMB_X54_Y1_N20
\r_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~22_combout\ = ((\i_address[4]~input_o\ & (\i_address[6]~input_o\ $ (!\i_address[3]~input_o\))) # (!\i_address[4]~input_o\ & ((!\i_address[3]~input_o\) # (!\i_address[6]~input_o\)))) # (!\i_address[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[6]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~22_combout\);

-- Location: LCCOMB_X54_Y1_N6
\r_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~24_combout\ = (\i_address[5]~input_o\ & ((\i_address[4]~input_o\ & ((\i_address[6]~input_o\) # (!\i_address[3]~input_o\))) # (!\i_address[4]~input_o\ & ((\i_address[3]~input_o\) # (!\i_address[6]~input_o\))))) # (!\i_address[5]~input_o\ & 
-- (\i_address[6]~input_o\ $ (((\i_address[4]~input_o\) # (\i_address[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[6]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~24_combout\);

-- Location: LCCOMB_X55_Y1_N24
\r_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~23_combout\ = (\i_address[5]~input_o\ $ (((\i_address[3]~input_o\) # (!\i_address[6]~input_o\)))) # (!\i_address[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[3]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[5]~input_o\,
	datad => \i_address[6]~input_o\,
	combout => \r_out~23_combout\);

-- Location: LCCOMB_X54_Y1_N8
\r_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~25_combout\ = (\i_address[1]~input_o\ & (\i_address[2]~input_o\)) # (!\i_address[1]~input_o\ & ((\i_address[2]~input_o\ & ((\r_out~23_combout\))) # (!\i_address[2]~input_o\ & (\r_out~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[2]~input_o\,
	datac => \r_out~24_combout\,
	datad => \r_out~23_combout\,
	combout => \r_out~25_combout\);

-- Location: LCCOMB_X54_Y1_N18
\r_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~26_combout\ = (\i_address[6]~input_o\ & (!\i_address[3]~input_o\ & ((\i_address[5]~input_o\) # (\i_address[4]~input_o\)))) # (!\i_address[6]~input_o\ & (((!\i_address[4]~input_o\)) # (!\i_address[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[6]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~26_combout\);

-- Location: LCCOMB_X54_Y1_N12
\r_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~27_combout\ = (\i_address[1]~input_o\ & ((\r_out~25_combout\ & ((\r_out~26_combout\))) # (!\r_out~25_combout\ & (\r_out~22_combout\)))) # (!\i_address[1]~input_o\ & (((\r_out~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \r_out~22_combout\,
	datac => \r_out~25_combout\,
	datad => \r_out~26_combout\,
	combout => \r_out~27_combout\);

-- Location: LCCOMB_X54_Y1_N0
\r_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~16_combout\ = (\i_address[5]~input_o\ & ((\i_address[6]~input_o\ & ((\i_address[3]~input_o\))) # (!\i_address[6]~input_o\ & ((!\i_address[3]~input_o\) # (!\i_address[4]~input_o\))))) # (!\i_address[5]~input_o\ & (((!\i_address[6]~input_o\)) # 
-- (!\i_address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[6]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~16_combout\);

-- Location: LCCOMB_X54_Y1_N4
\r_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~18_combout\ = (\i_address[4]~input_o\ & ((\i_address[6]~input_o\ $ (!\i_address[3]~input_o\)) # (!\i_address[5]~input_o\))) # (!\i_address[4]~input_o\ & ((\i_address[5]~input_o\ $ (!\i_address[3]~input_o\)) # (!\i_address[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[6]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~18_combout\);

-- Location: LCCOMB_X54_Y1_N10
\r_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~17_combout\ = (\i_address[5]~input_o\ & ((\i_address[4]~input_o\ & (\i_address[6]~input_o\ & !\i_address[3]~input_o\)) # (!\i_address[4]~input_o\ & (!\i_address[6]~input_o\)))) # (!\i_address[5]~input_o\ & (((\i_address[3]~input_o\) # 
-- (!\i_address[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[6]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~17_combout\);

-- Location: LCCOMB_X54_Y1_N22
\r_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~19_combout\ = (\i_address[1]~input_o\ & (\i_address[2]~input_o\)) # (!\i_address[1]~input_o\ & ((\i_address[2]~input_o\ & ((\r_out~17_combout\))) # (!\i_address[2]~input_o\ & (\r_out~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[2]~input_o\,
	datac => \r_out~18_combout\,
	datad => \r_out~17_combout\,
	combout => \r_out~19_combout\);

-- Location: LCCOMB_X54_Y1_N16
\r_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~20_combout\ = (\i_address[4]~input_o\ & ((\i_address[6]~input_o\ $ (\i_address[3]~input_o\)) # (!\i_address[5]~input_o\))) # (!\i_address[4]~input_o\ & (((\i_address[5]~input_o\ & \i_address[3]~input_o\)) # (!\i_address[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[6]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~20_combout\);

-- Location: LCCOMB_X54_Y1_N2
\r_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~21_combout\ = (\i_address[1]~input_o\ & ((\r_out~19_combout\ & ((\r_out~20_combout\))) # (!\r_out~19_combout\ & (\r_out~16_combout\)))) # (!\i_address[1]~input_o\ & (((\r_out~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \r_out~16_combout\,
	datac => \r_out~19_combout\,
	datad => \r_out~20_combout\,
	combout => \r_out~21_combout\);

-- Location: LCCOMB_X55_Y1_N2
\r_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~28_combout\ = (\i_address[7]~input_o\ & ((\i_address[0]~input_o\ & ((\r_out~21_combout\))) # (!\i_address[0]~input_o\ & (\r_out~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[7]~input_o\,
	datac => \r_out~27_combout\,
	datad => \r_out~21_combout\,
	combout => \r_out~28_combout\);

-- Location: LCCOMB_X55_Y1_N12
\r_out~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~85_combout\ = (\i_address[5]~input_o\ & (\i_address[2]~input_o\ $ ((!\i_address[4]~input_o\)))) # (!\i_address[5]~input_o\ & (\i_address[3]~input_o\ $ (((\i_address[2]~input_o\) # (\i_address[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[2]~input_o\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~85_combout\);

-- Location: LCCOMB_X55_Y1_N22
\r_out~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~86_combout\ = (\i_address[6]~input_o\ & (!\i_address[3]~input_o\ & (!\i_address[2]~input_o\))) # (!\i_address[6]~input_o\ & (((\r_out~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[3]~input_o\,
	datab => \i_address[6]~input_o\,
	datac => \i_address[2]~input_o\,
	datad => \r_out~85_combout\,
	combout => \r_out~86_combout\);

-- Location: LCCOMB_X55_Y1_N20
\r_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~12_combout\ = (\i_address[5]~input_o\ & ((\i_address[2]~input_o\ & ((\i_address[3]~input_o\) # (!\i_address[4]~input_o\))) # (!\i_address[2]~input_o\ & ((!\i_address[3]~input_o\))))) # (!\i_address[5]~input_o\ & ((\i_address[2]~input_o\ & 
-- ((!\i_address[3]~input_o\))) # (!\i_address[2]~input_o\ & (!\i_address[4]~input_o\ & \i_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[2]~input_o\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~12_combout\);

-- Location: LCCOMB_X55_Y1_N14
\r_out~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~81_combout\ = (\r_out~12_combout\ & !\i_address[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_out~12_combout\,
	datad => \i_address[6]~input_o\,
	combout => \r_out~81_combout\);

-- Location: LCCOMB_X55_Y1_N16
\r_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~15_combout\ = (\i_address[5]~input_o\ & ((\i_address[2]~input_o\) # ((!\i_address[4]~input_o\ & \i_address[3]~input_o\)))) # (!\i_address[5]~input_o\ & (\i_address[3]~input_o\ $ (((\i_address[2]~input_o\ & !\i_address[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[2]~input_o\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~15_combout\);

-- Location: LCCOMB_X55_Y1_N18
\r_out~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~82_combout\ = (\r_out~15_combout\ & !\i_address[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_out~15_combout\,
	datad => \i_address[6]~input_o\,
	combout => \r_out~82_combout\);

-- Location: LCCOMB_X55_Y1_N8
\r_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~9_combout\ = (!\i_address[6]~input_o\ & ((\i_address[4]~input_o\ & ((\i_address[2]~input_o\))) # (!\i_address[4]~input_o\ & (!\i_address[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[2]~input_o\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[6]~input_o\,
	combout => \r_out~9_combout\);

-- Location: LCCOMB_X55_Y1_N30
\r_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~8_combout\ = (\i_address[5]~input_o\ & (\i_address[2]~input_o\ & ((!\i_address[6]~input_o\)))) # (!\i_address[5]~input_o\ & ((\i_address[6]~input_o\ & (!\i_address[2]~input_o\)) # (!\i_address[6]~input_o\ & ((\i_address[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[2]~input_o\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[6]~input_o\,
	combout => \r_out~8_combout\);

-- Location: LCCOMB_X55_Y1_N26
\r_out~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~80_combout\ = (\i_address[3]~input_o\ & (\r_out~9_combout\)) # (!\i_address[3]~input_o\ & ((\r_out~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[3]~input_o\,
	datab => \r_out~9_combout\,
	datac => \r_out~8_combout\,
	combout => \r_out~80_combout\);

-- Location: LCCOMB_X55_Y1_N4
\r_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~29_combout\ = (\i_address[1]~input_o\ & ((\r_out~82_combout\) # ((\i_address[0]~input_o\)))) # (!\i_address[1]~input_o\ & (((\r_out~80_combout\ & !\i_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \r_out~82_combout\,
	datac => \r_out~80_combout\,
	datad => \i_address[0]~input_o\,
	combout => \r_out~29_combout\);

-- Location: LCCOMB_X55_Y1_N6
\r_out~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~30_combout\ = (\r_out~29_combout\ & (((\r_out~81_combout\) # (!\i_address[0]~input_o\)))) # (!\r_out~29_combout\ & (\r_out~86_combout\ & ((\i_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~86_combout\,
	datab => \r_out~81_combout\,
	datac => \r_out~29_combout\,
	datad => \i_address[0]~input_o\,
	combout => \r_out~30_combout\);

-- Location: LCCOMB_X55_Y1_N28
\r_out~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~33_combout\ = (\r_out~28_combout\) # ((!\i_address[7]~input_o\ & ((\r_out~32_combout\) # (\r_out~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~32_combout\,
	datab => \r_out~28_combout\,
	datac => \i_address[7]~input_o\,
	datad => \r_out~30_combout\,
	combout => \r_out~33_combout\);

-- Location: LCCOMB_X54_Y1_N30
\r_out~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~35_combout\ = (!\i_address[1]~input_o\ & (!\i_address[2]~input_o\ & !\i_address[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[2]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~35_combout\);

-- Location: LCCOMB_X54_Y1_N24
\r_out~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~36_combout\ = (!\i_address[4]~input_o\ & (!\i_address[5]~input_o\ & \r_out~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_address[4]~input_o\,
	datac => \i_address[5]~input_o\,
	datad => \r_out~35_combout\,
	combout => \r_out~36_combout\);

-- Location: LCCOMB_X52_Y1_N10
\r_out~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~38_combout\ = (\i_address[1]~input_o\ & ((\i_address[0]~input_o\) # ((\i_address[5]~input_o\ & \i_address[4]~input_o\)))) # (!\i_address[1]~input_o\ & (\i_address[4]~input_o\ $ (((!\i_address[5]~input_o\ & \i_address[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~38_combout\);

-- Location: LCCOMB_X52_Y1_N28
\r_out~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~39_combout\ = (\i_address[5]~input_o\ & ((\i_address[1]~input_o\) # ((\i_address[4]~input_o\)))) # (!\i_address[5]~input_o\ & (((\i_address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~39_combout\);

-- Location: LCCOMB_X52_Y1_N6
\r_out~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~40_combout\ = (\i_address[2]~input_o\ & (((\i_address[3]~input_o\)))) # (!\i_address[2]~input_o\ & ((\i_address[3]~input_o\ & (!\r_out~38_combout\)) # (!\i_address[3]~input_o\ & ((\r_out~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~38_combout\,
	datab => \r_out~39_combout\,
	datac => \i_address[2]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~40_combout\);

-- Location: LCCOMB_X52_Y1_N24
\r_out~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~37_combout\ = (\i_address[0]~input_o\ & (\i_address[4]~input_o\ & (\i_address[1]~input_o\ $ (\i_address[5]~input_o\)))) # (!\i_address[0]~input_o\ & ((\i_address[4]~input_o\) # (\i_address[1]~input_o\ $ (\i_address[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~37_combout\);

-- Location: LCCOMB_X52_Y1_N16
\r_out~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~41_combout\ = (\i_address[5]~input_o\) # (\i_address[0]~input_o\ $ (((!\i_address[1]~input_o\ & \i_address[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~41_combout\);

-- Location: LCCOMB_X52_Y1_N18
\r_out~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~42_combout\ = (\r_out~40_combout\ & (((!\r_out~41_combout\) # (!\i_address[2]~input_o\)))) # (!\r_out~40_combout\ & (\r_out~37_combout\ & (\i_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~40_combout\,
	datab => \r_out~37_combout\,
	datac => \i_address[2]~input_o\,
	datad => \r_out~41_combout\,
	combout => \r_out~42_combout\);

-- Location: LCCOMB_X53_Y1_N2
\r_out~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~43_combout\ = (\i_address[7]~input_o\ & (((\i_address[6]~input_o\)))) # (!\i_address[7]~input_o\ & ((\i_address[6]~input_o\ & (!\r_out~36_combout\)) # (!\i_address[6]~input_o\ & ((\r_out~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[7]~input_o\,
	datab => \r_out~36_combout\,
	datac => \i_address[6]~input_o\,
	datad => \r_out~42_combout\,
	combout => \r_out~43_combout\);

-- Location: LCCOMB_X53_Y1_N12
\r_out~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~44_combout\ = (\i_address[1]~input_o\ & ((\i_address[5]~input_o\ & ((\i_address[3]~input_o\) # (!\i_address[0]~input_o\))) # (!\i_address[5]~input_o\ & ((!\i_address[3]~input_o\))))) # (!\i_address[1]~input_o\ & ((\i_address[0]~input_o\ & 
-- ((!\i_address[3]~input_o\) # (!\i_address[5]~input_o\))) # (!\i_address[0]~input_o\ & ((\i_address[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[1]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~44_combout\);

-- Location: LCCOMB_X53_Y1_N28
\r_out~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~48_combout\ = (\i_address[5]~input_o\ & (\i_address[0]~input_o\)) # (!\i_address[5]~input_o\ & (((\i_address[1]~input_o\ & \i_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[1]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~48_combout\);

-- Location: LCCOMB_X53_Y1_N16
\r_out~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~46_combout\ = (\i_address[5]~input_o\ & (((!\i_address[0]~input_o\ & !\i_address[3]~input_o\)) # (!\i_address[1]~input_o\))) # (!\i_address[5]~input_o\ & (((\i_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[1]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~46_combout\);

-- Location: LCCOMB_X53_Y1_N14
\r_out~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~45_combout\ = (\i_address[5]~input_o\ & (\i_address[0]~input_o\ $ (((\i_address[3]~input_o\))))) # (!\i_address[5]~input_o\ & (\i_address[0]~input_o\ & (\i_address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[1]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~45_combout\);

-- Location: LCCOMB_X53_Y1_N26
\r_out~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~47_combout\ = (\i_address[4]~input_o\ & (((\i_address[2]~input_o\) # (!\r_out~45_combout\)))) # (!\i_address[4]~input_o\ & (!\r_out~46_combout\ & ((!\i_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~46_combout\,
	datab => \r_out~45_combout\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~47_combout\);

-- Location: LCCOMB_X53_Y1_N22
\r_out~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~49_combout\ = (\r_out~47_combout\ & (((\r_out~48_combout\) # (!\i_address[2]~input_o\)))) # (!\r_out~47_combout\ & (!\r_out~44_combout\ & ((\i_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~44_combout\,
	datab => \r_out~48_combout\,
	datac => \r_out~47_combout\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~49_combout\);

-- Location: LCCOMB_X53_Y1_N0
\r_out~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~34_combout\ = (\i_address[5]~input_o\ & (\i_address[4]~input_o\ & ((\i_address[2]~input_o\) # (\i_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[2]~input_o\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~34_combout\);

-- Location: LCCOMB_X53_Y1_N24
\r_out~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~50_combout\ = (\i_address[7]~input_o\ & ((\r_out~43_combout\ & (\r_out~49_combout\)) # (!\r_out~43_combout\ & ((\r_out~34_combout\))))) # (!\i_address[7]~input_o\ & (\r_out~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[7]~input_o\,
	datab => \r_out~43_combout\,
	datac => \r_out~49_combout\,
	datad => \r_out~34_combout\,
	combout => \r_out~50_combout\);

-- Location: LCCOMB_X52_Y1_N0
\r_out~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~53_combout\ = (\i_address[4]~input_o\ & ((\i_address[1]~input_o\ & ((!\i_address[0]~input_o\))) # (!\i_address[1]~input_o\ & ((\i_address[0]~input_o\) # (!\i_address[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~53_combout\);

-- Location: LCCOMB_X52_Y1_N22
\r_out~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~52_combout\ = (\i_address[4]~input_o\ & (((!\i_address[5]~input_o\ & !\i_address[0]~input_o\)) # (!\i_address[1]~input_o\))) # (!\i_address[4]~input_o\ & (((\i_address[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~52_combout\);

-- Location: LCCOMB_X52_Y1_N26
\r_out~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~54_combout\ = (\i_address[2]~input_o\ & (((\i_address[3]~input_o\)))) # (!\i_address[2]~input_o\ & ((\i_address[3]~input_o\ & ((!\r_out~52_combout\))) # (!\i_address[3]~input_o\ & (\r_out~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[2]~input_o\,
	datab => \r_out~53_combout\,
	datac => \r_out~52_combout\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~54_combout\);

-- Location: LCCOMB_X52_Y1_N20
\r_out~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~55_combout\ = (\i_address[1]~input_o\ $ (!\i_address[4]~input_o\)) # (!\i_address[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_address[5]~input_o\,
	datac => \i_address[1]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~55_combout\);

-- Location: LCCOMB_X52_Y1_N12
\r_out~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~51_combout\ = (\i_address[1]~input_o\ & ((\i_address[5]~input_o\) # ((!\i_address[4]~input_o\)))) # (!\i_address[1]~input_o\ & (((\i_address[0]~input_o\ & !\i_address[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[0]~input_o\,
	datad => \i_address[4]~input_o\,
	combout => \r_out~51_combout\);

-- Location: LCCOMB_X52_Y1_N14
\r_out~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~56_combout\ = (\r_out~54_combout\ & ((\r_out~55_combout\) # ((!\i_address[2]~input_o\)))) # (!\r_out~54_combout\ & (((\i_address[2]~input_o\ & \r_out~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~54_combout\,
	datab => \r_out~55_combout\,
	datac => \i_address[2]~input_o\,
	datad => \r_out~51_combout\,
	combout => \r_out~56_combout\);

-- Location: LCCOMB_X53_Y1_N10
\r_out~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~57_combout\ = (\i_address[5]~input_o\ & ((\i_address[2]~input_o\) # ((\i_address[0]~input_o\ & \i_address[1]~input_o\)))) # (!\i_address[5]~input_o\ & (\i_address[0]~input_o\ $ ((\i_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[1]~input_o\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~57_combout\);

-- Location: LCCOMB_X53_Y1_N18
\r_out~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~61_combout\ = (\i_address[5]~input_o\) # (\i_address[2]~input_o\ $ (((\i_address[0]~input_o\ & \i_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[1]~input_o\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~61_combout\);

-- Location: LCCOMB_X53_Y1_N6
\r_out~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~59_combout\ = (\i_address[0]~input_o\ & ((\i_address[5]~input_o\ & ((\i_address[2]~input_o\))) # (!\i_address[5]~input_o\ & (\i_address[1]~input_o\)))) # (!\i_address[0]~input_o\ & (\i_address[1]~input_o\ & (\i_address[5]~input_o\ $ 
-- (!\i_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[1]~input_o\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~59_combout\);

-- Location: LCCOMB_X53_Y1_N4
\r_out~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~58_combout\ = (\i_address[0]~input_o\ & ((\i_address[1]~input_o\ & ((!\i_address[2]~input_o\))) # (!\i_address[1]~input_o\ & (\i_address[5]~input_o\)))) # (!\i_address[0]~input_o\ & ((\i_address[5]~input_o\) # (\i_address[1]~input_o\ $ 
-- (\i_address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[1]~input_o\,
	datad => \i_address[2]~input_o\,
	combout => \r_out~58_combout\);

-- Location: LCCOMB_X53_Y1_N8
\r_out~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~60_combout\ = (\i_address[4]~input_o\ & (((\i_address[3]~input_o\) # (!\r_out~58_combout\)))) # (!\i_address[4]~input_o\ & (\r_out~59_combout\ & ((!\i_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~59_combout\,
	datab => \r_out~58_combout\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~60_combout\);

-- Location: LCCOMB_X53_Y1_N20
\r_out~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~62_combout\ = (\r_out~60_combout\ & (((\r_out~61_combout\) # (!\i_address[3]~input_o\)))) # (!\r_out~60_combout\ & (!\r_out~57_combout\ & ((\i_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~57_combout\,
	datab => \r_out~61_combout\,
	datac => \r_out~60_combout\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~62_combout\);

-- Location: LCCOMB_X53_Y1_N30
\r_out~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~63_combout\ = (\i_address[6]~input_o\ & ((\r_out~56_combout\) # ((!\i_address[7]~input_o\)))) # (!\i_address[6]~input_o\ & (((\r_out~62_combout\ & !\i_address[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~56_combout\,
	datab => \r_out~62_combout\,
	datac => \i_address[6]~input_o\,
	datad => \i_address[7]~input_o\,
	combout => \r_out~63_combout\);

-- Location: LCCOMB_X53_Y2_N10
\r_out~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~65_combout\ = (\i_address[6]~input_o\ & ((\i_address[4]~input_o\) # (!\i_address[7]~input_o\))) # (!\i_address[6]~input_o\ & (\i_address[4]~input_o\ & !\i_address[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[6]~input_o\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[7]~input_o\,
	combout => \r_out~65_combout\);

-- Location: LCCOMB_X53_Y2_N16
\r_out~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~64_combout\ = (\i_address[6]~input_o\ & ((\i_address[5]~input_o\) # (!\i_address[7]~input_o\))) # (!\i_address[6]~input_o\ & (\i_address[5]~input_o\ & !\i_address[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[6]~input_o\,
	datab => \i_address[5]~input_o\,
	datad => \i_address[7]~input_o\,
	combout => \r_out~64_combout\);

-- Location: LCCOMB_X53_Y2_N6
\r_out~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~67_combout\ = (\i_address[3]~input_o\ & (\i_address[7]~input_o\ $ (((\r_out~64_combout\) # (!\r_out~65_combout\))))) # (!\i_address[3]~input_o\ & (\r_out~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~65_combout\,
	datab => \r_out~64_combout\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[7]~input_o\,
	combout => \r_out~67_combout\);

-- Location: LCCOMB_X53_Y2_N20
\r_out~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~66_combout\ = (\i_address[7]~input_o\ & (\i_address[3]~input_o\ & (\r_out~65_combout\ $ (\r_out~64_combout\)))) # (!\i_address[7]~input_o\ & (\r_out~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~65_combout\,
	datab => \r_out~64_combout\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[7]~input_o\,
	combout => \r_out~66_combout\);

-- Location: LCCOMB_X53_Y2_N0
\r_out~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~68_combout\ = (\r_out~64_combout\ & (((!\i_address[7]~input_o\) # (!\i_address[3]~input_o\)))) # (!\r_out~64_combout\ & ((\i_address[7]~input_o\) # ((\r_out~65_combout\ & \i_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~65_combout\,
	datab => \r_out~64_combout\,
	datac => \i_address[3]~input_o\,
	datad => \i_address[7]~input_o\,
	combout => \r_out~68_combout\);

-- Location: LCCOMB_X53_Y2_N28
\r_out~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~70_combout\ = (\r_out~68_combout\ & ((\r_out~67_combout\ & ((\r_out~66_combout\) # (\i_address[0]~input_o\))) # (!\r_out~67_combout\ & ((!\i_address[0]~input_o\) # (!\r_out~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~67_combout\,
	datab => \r_out~66_combout\,
	datac => \i_address[0]~input_o\,
	datad => \r_out~68_combout\,
	combout => \r_out~70_combout\);

-- Location: LCCOMB_X53_Y2_N18
\r_out~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~69_combout\ = (\r_out~67_combout\ & (\r_out~68_combout\ $ (((\r_out~66_combout\) # (!\i_address[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~67_combout\,
	datab => \r_out~66_combout\,
	datac => \i_address[0]~input_o\,
	datad => \r_out~68_combout\,
	combout => \r_out~69_combout\);

-- Location: LCCOMB_X53_Y2_N22
\r_out~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~71_combout\ = (\r_out~70_combout\ & ((\r_out~66_combout\ $ (\i_address[1]~input_o\)) # (!\r_out~69_combout\))) # (!\r_out~70_combout\ & (\r_out~66_combout\ & (\r_out~69_combout\ $ (!\i_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~70_combout\,
	datab => \r_out~69_combout\,
	datac => \r_out~66_combout\,
	datad => \i_address[1]~input_o\,
	combout => \r_out~71_combout\);

-- Location: LCCOMB_X53_Y2_N8
\r_out~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~72_combout\ = (\r_out~70_combout\ & ((\r_out~69_combout\ & (\r_out~66_combout\ & \i_address[1]~input_o\)) # (!\r_out~69_combout\ & (!\r_out~66_combout\)))) # (!\r_out~70_combout\ & ((\i_address[1]~input_o\ & ((\r_out~66_combout\))) # 
-- (!\i_address[1]~input_o\ & (\r_out~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~70_combout\,
	datab => \r_out~69_combout\,
	datac => \r_out~66_combout\,
	datad => \i_address[1]~input_o\,
	combout => \r_out~72_combout\);

-- Location: LCCOMB_X53_Y2_N2
\r_out~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~73_combout\ = \r_out~72_combout\ $ (((\r_out~71_combout\) # (\i_address[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~71_combout\,
	datab => \i_address[2]~input_o\,
	datac => \r_out~72_combout\,
	combout => \r_out~73_combout\);

-- Location: LCCOMB_X53_Y2_N26
\r_out~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~77_combout\ = (\i_address[3]~input_o\ & (((\i_address[4]~input_o\) # (!\i_address[1]~input_o\)) # (!\i_address[2]~input_o\))) # (!\i_address[3]~input_o\ & (((!\i_address[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[3]~input_o\,
	datab => \i_address[2]~input_o\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[1]~input_o\,
	combout => \r_out~77_combout\);

-- Location: LCCOMB_X53_Y2_N30
\r_out~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~75_combout\ = (\i_address[0]~input_o\ & (((\i_address[2]~input_o\ & \i_address[1]~input_o\)) # (!\i_address[4]~input_o\))) # (!\i_address[0]~input_o\ & (!\i_address[4]~input_o\ & ((\i_address[2]~input_o\) # (\i_address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[0]~input_o\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[2]~input_o\,
	datad => \i_address[1]~input_o\,
	combout => \r_out~75_combout\);

-- Location: LCCOMB_X53_Y2_N12
\r_out~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~74_combout\ = (\i_address[5]~input_o\) # ((\i_address[6]~input_o\) # ((\r_out~35_combout\ & \i_address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~35_combout\,
	datab => \i_address[5]~input_o\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[6]~input_o\,
	combout => \r_out~74_combout\);

-- Location: LCCOMB_X53_Y2_N24
\r_out~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~76_combout\ = (!\i_address[7]~input_o\ & ((\r_out~74_combout\) # ((\r_out~75_combout\ & \i_address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~75_combout\,
	datab => \i_address[7]~input_o\,
	datac => \i_address[3]~input_o\,
	datad => \r_out~74_combout\,
	combout => \r_out~76_combout\);

-- Location: LCCOMB_X53_Y2_N4
\r_out~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~79_combout\ = (\r_out~76_combout\) # ((\i_address[6]~input_o\ & (\i_address[5]~input_o\ & \r_out~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[6]~input_o\,
	datab => \i_address[5]~input_o\,
	datac => \r_out~77_combout\,
	datad => \r_out~76_combout\,
	combout => \r_out~79_combout\);

-- Location: LCCOMB_X54_Y1_N26
\r_out~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~78_combout\ = (!\i_address[4]~input_o\ & (((!\i_address[3]~input_o\) # (!\i_address[2]~input_o\)) # (!\i_address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[1]~input_o\,
	datab => \i_address[2]~input_o\,
	datac => \i_address[4]~input_o\,
	datad => \i_address[3]~input_o\,
	combout => \r_out~78_combout\);

-- Location: LCCOMB_X54_Y1_N28
\r_out~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~83_combout\ = (\i_address[6]~input_o\ & (!\r_out~78_combout\)) # (!\i_address[6]~input_o\ & (((\i_address[4]~input_o\ & !\r_out~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_out~78_combout\,
	datab => \i_address[4]~input_o\,
	datac => \i_address[6]~input_o\,
	datad => \r_out~35_combout\,
	combout => \r_out~83_combout\);

-- Location: LCCOMB_X54_Y1_N14
\r_out~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_out~84_combout\ = (\i_address[5]~input_o\ & (((\i_address[6]~input_o\ & \r_out~83_combout\)) # (!\i_address[7]~input_o\))) # (!\i_address[5]~input_o\ & (!\i_address[7]~input_o\ & ((\i_address[6]~input_o\) # (\r_out~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_address[5]~input_o\,
	datab => \i_address[7]~input_o\,
	datac => \i_address[6]~input_o\,
	datad => \r_out~83_combout\,
	combout => \r_out~84_combout\);

ww_o_output(0) <= \o_output[0]~output_o\;

ww_o_output(1) <= \o_output[1]~output_o\;

ww_o_output(2) <= \o_output[2]~output_o\;

ww_o_output(3) <= \o_output[3]~output_o\;

ww_o_output(4) <= \o_output[4]~output_o\;

ww_o_output(5) <= \o_output[5]~output_o\;

ww_o_output(6) <= \o_output[6]~output_o\;

ww_o_output(7) <= \o_output[7]~output_o\;
END structure;


