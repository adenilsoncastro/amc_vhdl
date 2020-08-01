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

-- DATE "07/31/2020 20:07:42"

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

ENTITY 	fifo IS
    PORT (
	i_rst_sync : IN std_logic;
	i_clk : IN std_logic;
	i_wr_en : IN std_logic;
	i_wr_data : IN std_logic_vector(7 DOWNTO 0);
	o_full : OUT std_logic;
	i_rd_en : IN std_logic;
	o_rd_data : OUT std_logic_vector(7 DOWNTO 0);
	o_empty : OUT std_logic
	);
END fifo;

-- Design Ports Information
-- o_full	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_rd_data[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_rd_data[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_rd_data[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_rd_data[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_rd_data[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_rd_data[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_rd_data[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_rd_data[7]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_empty	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_wr_en	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rd_en	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rst_sync	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_wr_data[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_wr_data[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_wr_data[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_wr_data[3]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_wr_data[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_wr_data[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_wr_data[6]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_wr_data[7]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fifo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_rst_sync : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_wr_en : std_logic;
SIGNAL ww_i_wr_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_full : std_logic;
SIGNAL ww_i_rd_en : std_logic;
SIGNAL ww_o_rd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_empty : std_logic;
SIGNAL \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_full~output_o\ : std_logic;
SIGNAL \o_rd_data[0]~output_o\ : std_logic;
SIGNAL \o_rd_data[1]~output_o\ : std_logic;
SIGNAL \o_rd_data[2]~output_o\ : std_logic;
SIGNAL \o_rd_data[3]~output_o\ : std_logic;
SIGNAL \o_rd_data[4]~output_o\ : std_logic;
SIGNAL \o_rd_data[5]~output_o\ : std_logic;
SIGNAL \o_rd_data[6]~output_o\ : std_logic;
SIGNAL \o_rd_data[7]~output_o\ : std_logic;
SIGNAL \o_empty~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_wr_en~input_o\ : std_logic;
SIGNAL \i_rd_en~input_o\ : std_logic;
SIGNAL \p_control~0_combout\ : std_logic;
SIGNAL \r_fifo_count[0]~5_combout\ : std_logic;
SIGNAL \i_rst_sync~input_o\ : std_logic;
SIGNAL \r_fifo_count[0]~13_combout\ : std_logic;
SIGNAL \r_fifo_count[0]~6\ : std_logic;
SIGNAL \r_fifo_count[1]~7_combout\ : std_logic;
SIGNAL \r_fifo_count[1]~8\ : std_logic;
SIGNAL \r_fifo_count[2]~9_combout\ : std_logic;
SIGNAL \r_fifo_count[2]~10\ : std_logic;
SIGNAL \r_fifo_count[3]~11_combout\ : std_logic;
SIGNAL \r_fifo_count[3]~12\ : std_logic;
SIGNAL \r_fifo_count[4]~14_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \r_fifo_data~24_combout\ : std_logic;
SIGNAL \i_wr_data[0]~input_o\ : std_logic;
SIGNAL \r_wr_index~0_combout\ : std_logic;
SIGNAL \r_wr_index[0]~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \r_wr_index~4_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \r_wr_index~5_combout\ : std_logic;
SIGNAL \r_wr_index[0]~2_combout\ : std_logic;
SIGNAL \r_wr_index~3_combout\ : std_logic;
SIGNAL \r_rd_index[0]~feeder_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \r_rd_index~0_combout\ : std_logic;
SIGNAL \r_rd_index[1]~feeder_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \p_control~1_combout\ : std_logic;
SIGNAL \r_rd_index~3_combout\ : std_logic;
SIGNAL \r_rd_index[2]~feeder_combout\ : std_logic;
SIGNAL \r_rd_index~4_combout\ : std_logic;
SIGNAL \r_rd_index~5_combout\ : std_logic;
SIGNAL \r_rd_index[3]~feeder_combout\ : std_logic;
SIGNAL \r_rd_index~1_combout\ : std_logic;
SIGNAL \r_rd_index~2_combout\ : std_logic;
SIGNAL \i_wr_data[1]~input_o\ : std_logic;
SIGNAL \i_wr_data[2]~input_o\ : std_logic;
SIGNAL \i_wr_data[3]~input_o\ : std_logic;
SIGNAL \i_wr_data[4]~input_o\ : std_logic;
SIGNAL \i_wr_data[5]~input_o\ : std_logic;
SIGNAL \i_wr_data[6]~input_o\ : std_logic;
SIGNAL \i_wr_data[7]~input_o\ : std_logic;
SIGNAL \r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \r_fifo_data~13_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0_bypass[7]~feeder_combout\ : std_logic;
SIGNAL \r_fifo_data~14_combout\ : std_logic;
SIGNAL \r_fifo_data~15_combout\ : std_logic;
SIGNAL \r_fifo_data~16_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \r_fifo_data_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \r_fifo_data~17_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \r_fifo_data~18_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \r_fifo_data_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \r_fifo_data~19_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \r_fifo_data~20_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \r_fifo_data~21_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \r_fifo_data~22_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \r_fifo_data_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \r_fifo_data~23_combout\ : std_logic;
SIGNAL r_fifo_count : std_logic_vector(4 DOWNTO 0);
SIGNAL r_fifo_data_rtl_0_bypass : std_logic_vector(0 TO 24);
SIGNAL r_wr_index : std_logic_vector(3 DOWNTO 0);
SIGNAL r_rd_index : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_rst_sync <= i_rst_sync;
ww_i_clk <= i_clk;
ww_i_wr_en <= i_wr_en;
ww_i_wr_data <= i_wr_data;
o_full <= ww_o_full;
ww_i_rd_en <= i_rd_en;
o_rd_data <= ww_o_rd_data;
o_empty <= ww_o_empty;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\i_wr_data[7]~input_o\ & \i_wr_data[6]~input_o\ & \i_wr_data[5]~input_o\ & \i_wr_data[4]~input_o\ & \i_wr_data[3]~input_o\ & \i_wr_data[2]~input_o\ & \i_wr_data[1]~input_o\ & \i_wr_data[0]~input_o\);

\r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (r_wr_index(3) & r_wr_index(2) & r_wr_index(1) & r_wr_index(0));

\r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\r_rd_index~5_combout\ & \r_rd_index~3_combout\ & \r_rd_index~2_combout\ & \r_rd_index~0_combout\);

\r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\r_fifo_data_rtl_0|auto_generated|ram_block1a1\ <= \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\r_fifo_data_rtl_0|auto_generated|ram_block1a2\ <= \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\r_fifo_data_rtl_0|auto_generated|ram_block1a3\ <= \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\r_fifo_data_rtl_0|auto_generated|ram_block1a4\ <= \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\r_fifo_data_rtl_0|auto_generated|ram_block1a5\ <= \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\r_fifo_data_rtl_0|auto_generated|ram_block1a6\ <= \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\r_fifo_data_rtl_0|auto_generated|ram_block1a7\ <= \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y73_N23
\o_full~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal2~1_combout\,
	devoe => ww_devoe,
	o => \o_full~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\o_rd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_fifo_data~16_combout\,
	devoe => ww_devoe,
	o => \o_rd_data[0]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\o_rd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_fifo_data~17_combout\,
	devoe => ww_devoe,
	o => \o_rd_data[1]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\o_rd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_fifo_data~18_combout\,
	devoe => ww_devoe,
	o => \o_rd_data[2]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\o_rd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_fifo_data~19_combout\,
	devoe => ww_devoe,
	o => \o_rd_data[3]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\o_rd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_fifo_data~20_combout\,
	devoe => ww_devoe,
	o => \o_rd_data[4]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\o_rd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_fifo_data~21_combout\,
	devoe => ww_devoe,
	o => \o_rd_data[5]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\o_rd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_fifo_data~22_combout\,
	devoe => ww_devoe,
	o => \o_rd_data[6]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\o_rd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_fifo_data~23_combout\,
	devoe => ww_devoe,
	o => \o_rd_data[7]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\o_empty~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~1_combout\,
	devoe => ww_devoe,
	o => \o_empty~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\i_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X18_Y73_N22
\i_wr_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_wr_en,
	o => \i_wr_en~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\i_rd_en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rd_en,
	o => \i_rd_en~input_o\);

-- Location: LCCOMB_X19_Y64_N20
\p_control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_control~0_combout\ = (\i_wr_en~input_o\ & !\i_rd_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_wr_en~input_o\,
	datad => \i_rd_en~input_o\,
	combout => \p_control~0_combout\);

-- Location: LCCOMB_X19_Y64_N6
\r_fifo_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_count[0]~5_combout\ = r_fifo_count(0) $ (VCC)
-- \r_fifo_count[0]~6\ = CARRY(r_fifo_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_fifo_count(0),
	datad => VCC,
	combout => \r_fifo_count[0]~5_combout\,
	cout => \r_fifo_count[0]~6\);

-- Location: IOIBUF_X18_Y73_N15
\i_rst_sync~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rst_sync,
	o => \i_rst_sync~input_o\);

-- Location: LCCOMB_X19_Y64_N26
\r_fifo_count[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_count[0]~13_combout\ = (\i_rst_sync~input_o\) # (\i_wr_en~input_o\ $ (\i_rd_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_wr_en~input_o\,
	datac => \i_rst_sync~input_o\,
	datad => \i_rd_en~input_o\,
	combout => \r_fifo_count[0]~13_combout\);

-- Location: FF_X19_Y64_N7
\r_fifo_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_count[0]~5_combout\,
	sclr => \i_rst_sync~input_o\,
	ena => \r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_count(0));

-- Location: LCCOMB_X19_Y64_N8
\r_fifo_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_count[1]~7_combout\ = (r_fifo_count(1) & ((\p_control~0_combout\ & (!\r_fifo_count[0]~6\)) # (!\p_control~0_combout\ & (\r_fifo_count[0]~6\ & VCC)))) # (!r_fifo_count(1) & ((\p_control~0_combout\ & ((\r_fifo_count[0]~6\) # (GND))) # 
-- (!\p_control~0_combout\ & (!\r_fifo_count[0]~6\))))
-- \r_fifo_count[1]~8\ = CARRY((r_fifo_count(1) & (\p_control~0_combout\ & !\r_fifo_count[0]~6\)) # (!r_fifo_count(1) & ((\p_control~0_combout\) # (!\r_fifo_count[0]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_count(1),
	datab => \p_control~0_combout\,
	datad => VCC,
	cin => \r_fifo_count[0]~6\,
	combout => \r_fifo_count[1]~7_combout\,
	cout => \r_fifo_count[1]~8\);

-- Location: FF_X19_Y64_N9
\r_fifo_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_count[1]~7_combout\,
	sclr => \i_rst_sync~input_o\,
	ena => \r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_count(1));

-- Location: LCCOMB_X19_Y64_N10
\r_fifo_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_count[2]~9_combout\ = ((r_fifo_count(2) $ (\p_control~0_combout\ $ (\r_fifo_count[1]~8\)))) # (GND)
-- \r_fifo_count[2]~10\ = CARRY((r_fifo_count(2) & ((!\r_fifo_count[1]~8\) # (!\p_control~0_combout\))) # (!r_fifo_count(2) & (!\p_control~0_combout\ & !\r_fifo_count[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_count(2),
	datab => \p_control~0_combout\,
	datad => VCC,
	cin => \r_fifo_count[1]~8\,
	combout => \r_fifo_count[2]~9_combout\,
	cout => \r_fifo_count[2]~10\);

-- Location: FF_X19_Y64_N11
\r_fifo_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_count[2]~9_combout\,
	sclr => \i_rst_sync~input_o\,
	ena => \r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_count(2));

-- Location: LCCOMB_X19_Y64_N12
\r_fifo_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_count[3]~11_combout\ = (r_fifo_count(3) & ((\p_control~0_combout\ & (!\r_fifo_count[2]~10\)) # (!\p_control~0_combout\ & (\r_fifo_count[2]~10\ & VCC)))) # (!r_fifo_count(3) & ((\p_control~0_combout\ & ((\r_fifo_count[2]~10\) # (GND))) # 
-- (!\p_control~0_combout\ & (!\r_fifo_count[2]~10\))))
-- \r_fifo_count[3]~12\ = CARRY((r_fifo_count(3) & (\p_control~0_combout\ & !\r_fifo_count[2]~10\)) # (!r_fifo_count(3) & ((\p_control~0_combout\) # (!\r_fifo_count[2]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_count(3),
	datab => \p_control~0_combout\,
	datad => VCC,
	cin => \r_fifo_count[2]~10\,
	combout => \r_fifo_count[3]~11_combout\,
	cout => \r_fifo_count[3]~12\);

-- Location: FF_X19_Y64_N13
\r_fifo_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_count[3]~11_combout\,
	sclr => \i_rst_sync~input_o\,
	ena => \r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_count(3));

-- Location: LCCOMB_X19_Y64_N14
\r_fifo_count[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_count[4]~14_combout\ = \p_control~0_combout\ $ (\r_fifo_count[3]~12\ $ (r_fifo_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p_control~0_combout\,
	datad => r_fifo_count(4),
	cin => \r_fifo_count[3]~12\,
	combout => \r_fifo_count[4]~14_combout\);

-- Location: FF_X19_Y64_N15
\r_fifo_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_count[4]~14_combout\,
	sclr => \i_rst_sync~input_o\,
	ena => \r_fifo_count[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_count(4));

-- Location: LCCOMB_X19_Y64_N16
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!r_fifo_count(2) & (!r_fifo_count(4) & (r_fifo_count(1) & !r_fifo_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_count(2),
	datab => r_fifo_count(4),
	datac => r_fifo_count(1),
	datad => r_fifo_count(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X19_Y64_N22
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal2~0_combout\ & r_fifo_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datad => r_fifo_count(3),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X17_Y64_N20
\r_fifo_data~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data~24_combout\ = (!\i_rst_sync~input_o\ & \i_wr_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_rst_sync~input_o\,
	datad => \i_wr_en~input_o\,
	combout => \r_fifo_data~24_combout\);

-- Location: IOIBUF_X11_Y73_N15
\i_wr_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_wr_data(0),
	o => \i_wr_data[0]~input_o\);

-- Location: LCCOMB_X17_Y64_N10
\r_wr_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_wr_index~0_combout\ = (!\i_rst_sync~input_o\ & !r_wr_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_sync~input_o\,
	datac => r_wr_index(0),
	combout => \r_wr_index~0_combout\);

-- Location: LCCOMB_X17_Y64_N14
\r_wr_index[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_wr_index[0]~1_combout\ = (\i_rst_sync~input_o\) # ((\i_wr_en~input_o\ & ((!\Equal2~0_combout\) # (!r_fifo_count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_wr_en~input_o\,
	datab => \i_rst_sync~input_o\,
	datac => r_fifo_count(3),
	datad => \Equal2~0_combout\,
	combout => \r_wr_index[0]~1_combout\);

-- Location: FF_X17_Y64_N11
\r_wr_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_wr_index~0_combout\,
	ena => \r_wr_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_wr_index(0));

-- Location: LCCOMB_X17_Y64_N30
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = r_wr_index(2) $ (((r_wr_index(0) & r_wr_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_wr_index(0),
	datac => r_wr_index(2),
	datad => r_wr_index(1),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X17_Y64_N22
\r_wr_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_wr_index~4_combout\ = (!\i_rst_sync~input_o\ & (\Add2~0_combout\ & \r_wr_index[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_sync~input_o\,
	datac => \Add2~0_combout\,
	datad => \r_wr_index[0]~2_combout\,
	combout => \r_wr_index~4_combout\);

-- Location: FF_X17_Y64_N23
\r_wr_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_wr_index~4_combout\,
	ena => \r_wr_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_wr_index(2));

-- Location: LCCOMB_X17_Y64_N4
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = r_wr_index(3) $ (((r_wr_index(0) & (r_wr_index(2) & r_wr_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_wr_index(0),
	datab => r_wr_index(3),
	datac => r_wr_index(2),
	datad => r_wr_index(1),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X17_Y64_N12
\r_wr_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_wr_index~5_combout\ = (\Add2~1_combout\ & (!\i_rst_sync~input_o\ & \r_wr_index[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datac => \i_rst_sync~input_o\,
	datad => \r_wr_index[0]~2_combout\,
	combout => \r_wr_index~5_combout\);

-- Location: FF_X17_Y64_N13
\r_wr_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_wr_index~5_combout\,
	ena => \r_wr_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_wr_index(3));

-- Location: LCCOMB_X17_Y64_N28
\r_wr_index[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_wr_index[0]~2_combout\ = (((r_wr_index(2)) # (r_wr_index(1))) # (!r_wr_index(3))) # (!r_wr_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_wr_index(0),
	datab => r_wr_index(3),
	datac => r_wr_index(2),
	datad => r_wr_index(1),
	combout => \r_wr_index[0]~2_combout\);

-- Location: LCCOMB_X17_Y64_N24
\r_wr_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_wr_index~3_combout\ = (!\i_rst_sync~input_o\ & (\r_wr_index[0]~2_combout\ & (r_wr_index(1) $ (r_wr_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_sync~input_o\,
	datab => \r_wr_index[0]~2_combout\,
	datac => r_wr_index(1),
	datad => r_wr_index(0),
	combout => \r_wr_index~3_combout\);

-- Location: FF_X17_Y64_N25
\r_wr_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_wr_index~3_combout\,
	ena => \r_wr_index[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_wr_index(1));

-- Location: LCCOMB_X19_Y64_N4
\r_rd_index[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_rd_index[0]~feeder_combout\ = \r_rd_index~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_rd_index~0_combout\,
	combout => \r_rd_index[0]~feeder_combout\);

-- Location: FF_X19_Y64_N5
\r_rd_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_rd_index[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rd_index(0));

-- Location: LCCOMB_X19_Y64_N28
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!r_fifo_count(2) & (!r_fifo_count(1) & (!r_fifo_count(4) & !r_fifo_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_count(2),
	datab => r_fifo_count(1),
	datac => r_fifo_count(4),
	datad => r_fifo_count(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X19_Y64_N2
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!r_fifo_count(3) & \Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_count(3),
	datad => \Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X19_Y64_N24
\r_rd_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_rd_index~0_combout\ = (!\i_rst_sync~input_o\ & (r_rd_index(0) $ (((\i_rd_en~input_o\ & !\Equal3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_sync~input_o\,
	datab => \i_rd_en~input_o\,
	datac => r_rd_index(0),
	datad => \Equal3~1_combout\,
	combout => \r_rd_index~0_combout\);

-- Location: LCCOMB_X18_Y64_N30
\r_rd_index[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_rd_index[1]~feeder_combout\ = \r_rd_index~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_rd_index~2_combout\,
	combout => \r_rd_index[1]~feeder_combout\);

-- Location: FF_X18_Y64_N31
\r_rd_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_rd_index[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rd_index(1));

-- Location: LCCOMB_X18_Y64_N18
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = r_rd_index(2) $ (((r_rd_index(1) & r_rd_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_rd_index(1),
	datac => r_rd_index(2),
	datad => r_rd_index(0),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X19_Y64_N18
\p_control~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_control~1_combout\ = (\i_rd_en~input_o\ & ((r_fifo_count(3)) # (!\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_count(3),
	datab => \i_rd_en~input_o\,
	datad => \Equal3~0_combout\,
	combout => \p_control~1_combout\);

-- Location: LCCOMB_X18_Y64_N4
\r_rd_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_rd_index~3_combout\ = (!\i_rst_sync~input_o\ & ((\p_control~1_combout\ & (\Add3~0_combout\)) # (!\p_control~1_combout\ & ((r_rd_index(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_sync~input_o\,
	datab => \Add3~0_combout\,
	datac => r_rd_index(2),
	datad => \p_control~1_combout\,
	combout => \r_rd_index~3_combout\);

-- Location: LCCOMB_X18_Y64_N22
\r_rd_index[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_rd_index[2]~feeder_combout\ = \r_rd_index~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_rd_index~3_combout\,
	combout => \r_rd_index[2]~feeder_combout\);

-- Location: FF_X18_Y64_N23
\r_rd_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_rd_index[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rd_index(2));

-- Location: LCCOMB_X18_Y64_N14
\r_rd_index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_rd_index~4_combout\ = (r_rd_index(2) & (r_rd_index(3) $ (((r_rd_index(1) & r_rd_index(0)))))) # (!r_rd_index(2) & (r_rd_index(3) & ((r_rd_index(1)) # (!r_rd_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_rd_index(2),
	datab => r_rd_index(3),
	datac => r_rd_index(1),
	datad => r_rd_index(0),
	combout => \r_rd_index~4_combout\);

-- Location: LCCOMB_X18_Y64_N24
\r_rd_index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_rd_index~5_combout\ = (!\i_rst_sync~input_o\ & ((\p_control~1_combout\ & ((\r_rd_index~4_combout\))) # (!\p_control~1_combout\ & (r_rd_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_sync~input_o\,
	datab => r_rd_index(3),
	datac => \r_rd_index~4_combout\,
	datad => \p_control~1_combout\,
	combout => \r_rd_index~5_combout\);

-- Location: LCCOMB_X18_Y64_N28
\r_rd_index[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_rd_index[3]~feeder_combout\ = \r_rd_index~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_rd_index~5_combout\,
	combout => \r_rd_index[3]~feeder_combout\);

-- Location: FF_X18_Y64_N29
\r_rd_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_rd_index[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rd_index(3));

-- Location: LCCOMB_X18_Y64_N16
\r_rd_index~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_rd_index~1_combout\ = (r_rd_index(1) & (((!r_rd_index(0))))) # (!r_rd_index(1) & (r_rd_index(0) & ((r_rd_index(2)) # (!r_rd_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_rd_index(2),
	datab => r_rd_index(3),
	datac => r_rd_index(1),
	datad => r_rd_index(0),
	combout => \r_rd_index~1_combout\);

-- Location: LCCOMB_X18_Y64_N20
\r_rd_index~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_rd_index~2_combout\ = (!\i_rst_sync~input_o\ & ((\p_control~1_combout\ & (\r_rd_index~1_combout\)) # (!\p_control~1_combout\ & ((r_rd_index(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_rst_sync~input_o\,
	datab => \r_rd_index~1_combout\,
	datac => r_rd_index(1),
	datad => \p_control~1_combout\,
	combout => \r_rd_index~2_combout\);

-- Location: IOIBUF_X16_Y73_N8
\i_wr_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_wr_data(1),
	o => \i_wr_data[1]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\i_wr_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_wr_data(2),
	o => \i_wr_data[2]~input_o\);

-- Location: IOIBUF_X11_Y73_N8
\i_wr_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_wr_data(3),
	o => \i_wr_data[3]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\i_wr_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_wr_data(4),
	o => \i_wr_data[4]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\i_wr_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_wr_data(5),
	o => \i_wr_data[5]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\i_wr_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_wr_data(6),
	o => \i_wr_data[6]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\i_wr_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_wr_data(7),
	o => \i_wr_data[7]~input_o\);

-- Location: M9K_X15_Y64_N0
\r_fifo_data_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/fifo.ram0_fifo_34ae1a.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:r_fifo_data_rtl_0|altsyncram_e5g1:auto_generated|ALTSYNCRAM",
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
	portawe => \r_fifo_data~24_combout\,
	portbre => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	portadatain => \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \r_fifo_data_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y64_N2
\r_fifo_data_rtl_0_bypass[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_rtl_0_bypass[10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \r_fifo_data_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X14_Y64_N3
\r_fifo_data_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_data_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(10));

-- Location: FF_X14_Y64_N5
\r_fifo_data_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_wr_data[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(9));

-- Location: LCCOMB_X17_Y64_N26
\r_fifo_data_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_rtl_0_bypass[3]~feeder_combout\ = r_wr_index(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_wr_index(1),
	combout => \r_fifo_data_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X17_Y64_N27
\r_fifo_data_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_data_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(3));

-- Location: FF_X18_Y64_N21
\r_fifo_data_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_rd_index~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(4));

-- Location: LCCOMB_X17_Y64_N16
\r_fifo_data_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_rtl_0_bypass[1]~feeder_combout\ = r_wr_index(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_wr_index(0),
	combout => \r_fifo_data_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X17_Y64_N17
\r_fifo_data_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_data_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(1));

-- Location: FF_X19_Y64_N25
\r_fifo_data_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_rd_index~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(2));

-- Location: LCCOMB_X18_Y64_N26
\r_fifo_data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data~13_combout\ = (r_fifo_data_rtl_0_bypass(3) & (r_fifo_data_rtl_0_bypass(4) & (r_fifo_data_rtl_0_bypass(1) $ (!r_fifo_data_rtl_0_bypass(2))))) # (!r_fifo_data_rtl_0_bypass(3) & (!r_fifo_data_rtl_0_bypass(4) & (r_fifo_data_rtl_0_bypass(1) $ 
-- (!r_fifo_data_rtl_0_bypass(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_data_rtl_0_bypass(3),
	datab => r_fifo_data_rtl_0_bypass(4),
	datac => r_fifo_data_rtl_0_bypass(1),
	datad => r_fifo_data_rtl_0_bypass(2),
	combout => \r_fifo_data~13_combout\);

-- Location: FF_X17_Y64_N21
\r_fifo_data_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_data~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(0));

-- Location: FF_X18_Y64_N25
\r_fifo_data_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_rd_index~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(8));

-- Location: LCCOMB_X17_Y64_N18
\r_fifo_data_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_rtl_0_bypass[5]~feeder_combout\ = r_wr_index(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_wr_index(2),
	combout => \r_fifo_data_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X17_Y64_N19
\r_fifo_data_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_data_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(5));

-- Location: FF_X18_Y64_N11
\r_fifo_data_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_rd_index~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(6));

-- Location: LCCOMB_X17_Y64_N8
\r_fifo_data_rtl_0_bypass[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_rtl_0_bypass[7]~feeder_combout\ = r_wr_index(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_wr_index(3),
	combout => \r_fifo_data_rtl_0_bypass[7]~feeder_combout\);

-- Location: FF_X17_Y64_N9
\r_fifo_data_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_data_rtl_0_bypass[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(7));

-- Location: LCCOMB_X18_Y64_N10
\r_fifo_data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data~14_combout\ = (r_fifo_data_rtl_0_bypass(8) & (r_fifo_data_rtl_0_bypass(7) & (r_fifo_data_rtl_0_bypass(5) $ (!r_fifo_data_rtl_0_bypass(6))))) # (!r_fifo_data_rtl_0_bypass(8) & (!r_fifo_data_rtl_0_bypass(7) & (r_fifo_data_rtl_0_bypass(5) $ 
-- (!r_fifo_data_rtl_0_bypass(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_data_rtl_0_bypass(8),
	datab => r_fifo_data_rtl_0_bypass(5),
	datac => r_fifo_data_rtl_0_bypass(6),
	datad => r_fifo_data_rtl_0_bypass(7),
	combout => \r_fifo_data~14_combout\);

-- Location: LCCOMB_X18_Y64_N12
\r_fifo_data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data~15_combout\ = (\r_fifo_data~13_combout\ & (r_fifo_data_rtl_0_bypass(0) & \r_fifo_data~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_fifo_data~13_combout\,
	datab => r_fifo_data_rtl_0_bypass(0),
	datad => \r_fifo_data~14_combout\,
	combout => \r_fifo_data~15_combout\);

-- Location: LCCOMB_X14_Y64_N4
\r_fifo_data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data~16_combout\ = (r_fifo_data_rtl_0_bypass(10) & ((\r_fifo_data~15_combout\ & ((r_fifo_data_rtl_0_bypass(9)))) # (!\r_fifo_data~15_combout\ & (\r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (!r_fifo_data_rtl_0_bypass(10) & 
-- (((r_fifo_data_rtl_0_bypass(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_fifo_data_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => r_fifo_data_rtl_0_bypass(10),
	datac => r_fifo_data_rtl_0_bypass(9),
	datad => \r_fifo_data~15_combout\,
	combout => \r_fifo_data~16_combout\);

-- Location: LCCOMB_X14_Y64_N14
\r_fifo_data_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \r_fifo_data_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X14_Y64_N15
\r_fifo_data_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_data_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(12));

-- Location: FF_X14_Y64_N1
\r_fifo_data_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_wr_data[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(11));

-- Location: LCCOMB_X14_Y64_N0
\r_fifo_data~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data~17_combout\ = (r_fifo_data_rtl_0_bypass(12) & ((\r_fifo_data~15_combout\ & ((r_fifo_data_rtl_0_bypass(11)))) # (!\r_fifo_data~15_combout\ & (\r_fifo_data_rtl_0|auto_generated|ram_block1a1\)))) # (!r_fifo_data_rtl_0_bypass(12) & 
-- (((r_fifo_data_rtl_0_bypass(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_fifo_data_rtl_0|auto_generated|ram_block1a1\,
	datab => r_fifo_data_rtl_0_bypass(12),
	datac => r_fifo_data_rtl_0_bypass(11),
	datad => \r_fifo_data~15_combout\,
	combout => \r_fifo_data~17_combout\);

-- Location: LCCOMB_X14_Y64_N22
\r_fifo_data_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \r_fifo_data_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X14_Y64_N23
\r_fifo_data_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_data_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(14));

-- Location: FF_X14_Y64_N29
\r_fifo_data_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_wr_data[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(13));

-- Location: LCCOMB_X14_Y64_N28
\r_fifo_data~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data~18_combout\ = (r_fifo_data_rtl_0_bypass(14) & ((\r_fifo_data~15_combout\ & ((r_fifo_data_rtl_0_bypass(13)))) # (!\r_fifo_data~15_combout\ & (\r_fifo_data_rtl_0|auto_generated|ram_block1a2\)))) # (!r_fifo_data_rtl_0_bypass(14) & 
-- (((r_fifo_data_rtl_0_bypass(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_data_rtl_0_bypass(14),
	datab => \r_fifo_data_rtl_0|auto_generated|ram_block1a2\,
	datac => r_fifo_data_rtl_0_bypass(13),
	datad => \r_fifo_data~15_combout\,
	combout => \r_fifo_data~18_combout\);

-- Location: LCCOMB_X14_Y64_N18
\r_fifo_data_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \r_fifo_data_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X14_Y64_N19
\r_fifo_data_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_data_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(16));

-- Location: FF_X14_Y64_N25
\r_fifo_data_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_wr_data[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(15));

-- Location: LCCOMB_X14_Y64_N24
\r_fifo_data~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data~19_combout\ = (r_fifo_data_rtl_0_bypass(16) & ((\r_fifo_data~15_combout\ & ((r_fifo_data_rtl_0_bypass(15)))) # (!\r_fifo_data~15_combout\ & (\r_fifo_data_rtl_0|auto_generated|ram_block1a3\)))) # (!r_fifo_data_rtl_0_bypass(16) & 
-- (((r_fifo_data_rtl_0_bypass(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_fifo_data_rtl_0|auto_generated|ram_block1a3\,
	datab => r_fifo_data_rtl_0_bypass(16),
	datac => r_fifo_data_rtl_0_bypass(15),
	datad => \r_fifo_data~15_combout\,
	combout => \r_fifo_data~19_combout\);

-- Location: LCCOMB_X14_Y64_N26
\r_fifo_data_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \r_fifo_data_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X14_Y64_N27
\r_fifo_data_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_data_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(18));

-- Location: FF_X14_Y64_N21
\r_fifo_data_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_wr_data[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(17));

-- Location: LCCOMB_X14_Y64_N20
\r_fifo_data~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data~20_combout\ = (r_fifo_data_rtl_0_bypass(18) & ((\r_fifo_data~15_combout\ & ((r_fifo_data_rtl_0_bypass(17)))) # (!\r_fifo_data~15_combout\ & (\r_fifo_data_rtl_0|auto_generated|ram_block1a4\)))) # (!r_fifo_data_rtl_0_bypass(18) & 
-- (((r_fifo_data_rtl_0_bypass(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_data_rtl_0_bypass(18),
	datab => \r_fifo_data_rtl_0|auto_generated|ram_block1a4\,
	datac => r_fifo_data_rtl_0_bypass(17),
	datad => \r_fifo_data~15_combout\,
	combout => \r_fifo_data~20_combout\);

-- Location: LCCOMB_X14_Y64_N30
\r_fifo_data_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \r_fifo_data_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X14_Y64_N31
\r_fifo_data_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_data_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(20));

-- Location: FF_X14_Y64_N13
\r_fifo_data_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_wr_data[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(19));

-- Location: LCCOMB_X14_Y64_N12
\r_fifo_data~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data~21_combout\ = (r_fifo_data_rtl_0_bypass(20) & ((\r_fifo_data~15_combout\ & ((r_fifo_data_rtl_0_bypass(19)))) # (!\r_fifo_data~15_combout\ & (\r_fifo_data_rtl_0|auto_generated|ram_block1a5\)))) # (!r_fifo_data_rtl_0_bypass(20) & 
-- (((r_fifo_data_rtl_0_bypass(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_data_rtl_0_bypass(20),
	datab => \r_fifo_data_rtl_0|auto_generated|ram_block1a5\,
	datac => r_fifo_data_rtl_0_bypass(19),
	datad => \r_fifo_data~15_combout\,
	combout => \r_fifo_data~21_combout\);

-- Location: LCCOMB_X14_Y64_N6
\r_fifo_data_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \r_fifo_data_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X14_Y64_N7
\r_fifo_data_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_data_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(22));

-- Location: FF_X14_Y64_N17
\r_fifo_data_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_wr_data[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(21));

-- Location: LCCOMB_X14_Y64_N16
\r_fifo_data~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data~22_combout\ = (r_fifo_data_rtl_0_bypass(22) & ((\r_fifo_data~15_combout\ & ((r_fifo_data_rtl_0_bypass(21)))) # (!\r_fifo_data~15_combout\ & (\r_fifo_data_rtl_0|auto_generated|ram_block1a6\)))) # (!r_fifo_data_rtl_0_bypass(22) & 
-- (((r_fifo_data_rtl_0_bypass(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_data_rtl_0_bypass(22),
	datab => \r_fifo_data_rtl_0|auto_generated|ram_block1a6\,
	datac => r_fifo_data_rtl_0_bypass(21),
	datad => \r_fifo_data~15_combout\,
	combout => \r_fifo_data~22_combout\);

-- Location: LCCOMB_X14_Y64_N10
\r_fifo_data_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \r_fifo_data_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X14_Y64_N11
\r_fifo_data_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fifo_data_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(24));

-- Location: FF_X14_Y64_N9
\r_fifo_data_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_wr_data[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fifo_data_rtl_0_bypass(23));

-- Location: LCCOMB_X14_Y64_N8
\r_fifo_data~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fifo_data~23_combout\ = (r_fifo_data_rtl_0_bypass(24) & ((\r_fifo_data~15_combout\ & ((r_fifo_data_rtl_0_bypass(23)))) # (!\r_fifo_data~15_combout\ & (\r_fifo_data_rtl_0|auto_generated|ram_block1a7\)))) # (!r_fifo_data_rtl_0_bypass(24) & 
-- (((r_fifo_data_rtl_0_bypass(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_fifo_data_rtl_0_bypass(24),
	datab => \r_fifo_data_rtl_0|auto_generated|ram_block1a7\,
	datac => r_fifo_data_rtl_0_bypass(23),
	datad => \r_fifo_data~15_combout\,
	combout => \r_fifo_data~23_combout\);

ww_o_full <= \o_full~output_o\;

ww_o_rd_data(0) <= \o_rd_data[0]~output_o\;

ww_o_rd_data(1) <= \o_rd_data[1]~output_o\;

ww_o_rd_data(2) <= \o_rd_data[2]~output_o\;

ww_o_rd_data(3) <= \o_rd_data[3]~output_o\;

ww_o_rd_data(4) <= \o_rd_data[4]~output_o\;

ww_o_rd_data(5) <= \o_rd_data[5]~output_o\;

ww_o_rd_data(6) <= \o_rd_data[6]~output_o\;

ww_o_rd_data(7) <= \o_rd_data[7]~output_o\;

ww_o_empty <= \o_empty~output_o\;
END structure;


