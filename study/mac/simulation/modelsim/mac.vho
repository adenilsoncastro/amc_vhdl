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

-- DATE "10/13/2020 13:38:03"

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

ENTITY 	mac IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	sload : IN std_logic;
	accum_out : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END mac;

-- Design Ports Information
-- sload	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accum_out[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mac IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_sload : std_logic;
SIGNAL ww_accum_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~0\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~1\ : std_logic;
SIGNAL \sload~input_o\ : std_logic;
SIGNAL \accum_out[0]~output_o\ : std_logic;
SIGNAL \accum_out[1]~output_o\ : std_logic;
SIGNAL \accum_out[2]~output_o\ : std_logic;
SIGNAL \accum_out[3]~output_o\ : std_logic;
SIGNAL \accum_out[4]~output_o\ : std_logic;
SIGNAL \accum_out[5]~output_o\ : std_logic;
SIGNAL \accum_out[6]~output_o\ : std_logic;
SIGNAL \accum_out[7]~output_o\ : std_logic;
SIGNAL \accum_out[8]~output_o\ : std_logic;
SIGNAL \accum_out[9]~output_o\ : std_logic;
SIGNAL \accum_out[10]~output_o\ : std_logic;
SIGNAL \accum_out[11]~output_o\ : std_logic;
SIGNAL \accum_out[12]~output_o\ : std_logic;
SIGNAL \accum_out[13]~output_o\ : std_logic;
SIGNAL \accum_out[14]~output_o\ : std_logic;
SIGNAL \accum_out[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~dataout\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~2\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~3\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~dataout\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[0]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[1]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[2]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[3]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[4]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[5]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[6]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[7]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[8]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[9]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[10]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[11]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[12]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[13]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[14]~COUT\ : std_logic;
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\ : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
ww_clk <= clk;
ww_sload <= sload;
accum_out <= ww_accum_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAA_bus\ <= (\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT15\ & \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT14\ & 
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT13\ & \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT12\ & \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT11\ & 
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT10\ & \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT9\ & \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT8\ & 
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT7\ & \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT6\ & \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT5\ & 
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT4\ & \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT3\ & \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT2\ & 
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT1\ & \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~dataout\ & \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~3\ & 
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~2\);

\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~0\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(0);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~1\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(1);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~dataout\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(2);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT1\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(3);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT2\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(4);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT3\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(5);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT4\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(6);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT5\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(7);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT6\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(8);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT7\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(9);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT8\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(10);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT9\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(11);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT10\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(12);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT11\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(13);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT12\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(14);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT13\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(15);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT14\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(16);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT15\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\(17);

\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAA_bus\ <= (\a[7]~input_o\ & \a[6]~input_o\ & \a[5]~input_o\ & \a[4]~input_o\ & \a[3]~input_o\ & \a[2]~input_o\ & \a[1]~input_o\ & \a[0]~input_o\ & gnd);

\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAB_bus\ <= (\b[7]~input_o\ & \b[6]~input_o\ & \b[5]~input_o\ & \b[4]~input_o\ & \b[3]~input_o\ & \b[2]~input_o\ & \b[1]~input_o\ & \b[0]~input_o\ & gnd);

\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~2\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(0);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~3\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(1);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~dataout\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(2);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT1\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(3);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT2\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(4);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT3\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(5);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT4\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(6);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT5\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(7);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT6\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(8);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT7\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(9);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT8\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(10);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT9\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(11);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT10\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(12);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT11\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(13);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT12\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(14);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT13\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(15);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT14\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(16);
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3~DATAOUT15\ <= \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\(17);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\accum_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(0),
	devoe => ww_devoe,
	o => \accum_out[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\accum_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(1),
	devoe => ww_devoe,
	o => \accum_out[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\accum_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(2),
	devoe => ww_devoe,
	o => \accum_out[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\accum_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(3),
	devoe => ww_devoe,
	o => \accum_out[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\accum_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(4),
	devoe => ww_devoe,
	o => \accum_out[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\accum_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(5),
	devoe => ww_devoe,
	o => \accum_out[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\accum_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(6),
	devoe => ww_devoe,
	o => \accum_out[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\accum_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(7),
	devoe => ww_devoe,
	o => \accum_out[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\accum_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(8),
	devoe => ww_devoe,
	o => \accum_out[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\accum_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(9),
	devoe => ww_devoe,
	o => \accum_out[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\accum_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(10),
	devoe => ww_devoe,
	o => \accum_out[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\accum_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(11),
	devoe => ww_devoe,
	o => \accum_out[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\accum_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(12),
	devoe => ww_devoe,
	o => \accum_out[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\accum_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(13),
	devoe => ww_devoe,
	o => \accum_out[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\accum_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(14),
	devoe => ww_devoe,
	o => \accum_out[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\accum_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(15),
	devoe => ww_devoe,
	o => \accum_out[15]~output_o\);

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

-- Location: IOIBUF_X115_Y4_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: DSPMULT_X93_Y10_N0
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAA_bus\,
	datab => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X93_Y10_N2
\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X92_Y10_N0
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(0) = (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(0) & (\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~dataout\ $ (VCC))) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(0) & (\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~dataout\ & VCC))
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[0]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(0) & \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(0),
	datab => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~dataout\,
	datad => VCC,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(0),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[0]~COUT\);

-- Location: FF_X92_Y10_N1
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(0));

-- Location: LCCOMB_X92_Y10_N2
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(1) = (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(1) & ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT1\ & 
-- (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[0]~COUT\ & VCC)) # (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT1\ & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[0]~COUT\)))) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(1) & ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT1\ & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[0]~COUT\)) # 
-- (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT1\ & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[0]~COUT\) # (GND)))))
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[1]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(1) & (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT1\ & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[0]~COUT\)) # (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(1) & ((!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[0]~COUT\) # 
-- (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(1),
	datab => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[0]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(1),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[1]~COUT\);

-- Location: FF_X92_Y10_N3
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(1));

-- Location: LCCOMB_X92_Y10_N4
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(2) = ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT2\ $ (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(2) $ 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[1]~COUT\)))) # (GND)
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[2]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT2\ & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(2)) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[1]~COUT\))) # (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT2\ & (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(2) & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT2\,
	datab => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(2),
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[1]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(2),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[2]~COUT\);

-- Location: FF_X92_Y10_N5
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(2));

-- Location: LCCOMB_X92_Y10_N6
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(3) = (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(3) & ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT3\ & 
-- (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[2]~COUT\ & VCC)) # (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT3\ & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[2]~COUT\)))) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(3) & ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT3\ & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[2]~COUT\)) # 
-- (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT3\ & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[2]~COUT\) # (GND)))))
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[3]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(3) & (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT3\ & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[2]~COUT\)) # (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(3) & ((!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[2]~COUT\) # 
-- (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(3),
	datab => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[2]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(3),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[3]~COUT\);

-- Location: FF_X92_Y10_N7
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(3));

-- Location: LCCOMB_X92_Y10_N8
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(4) = ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(4) $ (\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT4\ $ 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[3]~COUT\)))) # (GND)
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[4]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(4) & ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT4\) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[3]~COUT\))) # (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(4) & (\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT4\ & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[3]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(4),
	datab => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[3]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(4),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[4]~COUT\);

-- Location: FF_X92_Y10_N9
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(4));

-- Location: LCCOMB_X92_Y10_N10
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(5) = (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(5) & ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT5\ & 
-- (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[4]~COUT\ & VCC)) # (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT5\ & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[4]~COUT\)))) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(5) & ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT5\ & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[4]~COUT\)) # 
-- (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT5\ & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[4]~COUT\) # (GND)))))
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[5]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(5) & (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT5\ & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[4]~COUT\)) # (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(5) & ((!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[4]~COUT\) # 
-- (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(5),
	datab => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[4]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(5),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[5]~COUT\);

-- Location: FF_X92_Y10_N11
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(5));

-- Location: LCCOMB_X92_Y10_N12
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(6) = ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(6) $ (\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT6\ $ 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[5]~COUT\)))) # (GND)
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[6]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(6) & ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT6\) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[5]~COUT\))) # (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(6) & (\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT6\ & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[5]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(6),
	datab => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[5]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(6),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[6]~COUT\);

-- Location: FF_X92_Y10_N13
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(6));

-- Location: LCCOMB_X92_Y10_N14
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(7) = (\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT7\ & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(7) & 
-- (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[6]~COUT\ & VCC)) # (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(7) & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[6]~COUT\)))) # 
-- (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT7\ & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(7) & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[6]~COUT\)) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(7) & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[6]~COUT\) # (GND)))))
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[7]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT7\ & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(7) & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[6]~COUT\)) # (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT7\ & ((!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[6]~COUT\) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT7\,
	datab => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(7),
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[6]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(7),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[7]~COUT\);

-- Location: FF_X92_Y10_N15
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(7));

-- Location: LCCOMB_X92_Y10_N16
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(8) = ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT8\ $ (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(8) $ 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[7]~COUT\)))) # (GND)
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[8]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT8\ & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(8)) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[7]~COUT\))) # (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT8\ & (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(8) & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[7]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT8\,
	datab => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(8),
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[7]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(8),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[8]~COUT\);

-- Location: FF_X92_Y10_N17
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(8));

-- Location: LCCOMB_X92_Y10_N18
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(9) = (\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT9\ & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(9) & 
-- (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[8]~COUT\ & VCC)) # (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(9) & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[8]~COUT\)))) # 
-- (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT9\ & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(9) & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[8]~COUT\)) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(9) & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[8]~COUT\) # (GND)))))
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[9]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT9\ & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(9) & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[8]~COUT\)) # (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT9\ & ((!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[8]~COUT\) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT9\,
	datab => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(9),
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[8]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(9),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[9]~COUT\);

-- Location: FF_X92_Y10_N19
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(9));

-- Location: LCCOMB_X92_Y10_N20
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(10) = ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT10\ $ (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(10) $ 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[9]~COUT\)))) # (GND)
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[10]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT10\ & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(10)) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[9]~COUT\))) # (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT10\ & (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(10) & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[9]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT10\,
	datab => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(10),
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[9]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(10),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[10]~COUT\);

-- Location: FF_X92_Y10_N21
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(10));

-- Location: LCCOMB_X92_Y10_N22
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(11) = (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(11) & ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT11\ & 
-- (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[10]~COUT\ & VCC)) # (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT11\ & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[10]~COUT\)))) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(11) & ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT11\ & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[10]~COUT\)) # 
-- (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT11\ & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[10]~COUT\) # (GND)))))
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[11]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(11) & (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT11\ & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[10]~COUT\)) # (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(11) & ((!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[10]~COUT\) # 
-- (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(11),
	datab => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT11\,
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[10]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(11),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[11]~COUT\);

-- Location: FF_X92_Y10_N23
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(11));

-- Location: LCCOMB_X92_Y10_N24
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(12) = ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(12) $ (\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT12\ $ 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[11]~COUT\)))) # (GND)
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[12]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(12) & ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT12\) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[11]~COUT\))) # (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(12) & (\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT12\ & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[11]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(12),
	datab => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[11]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(12),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[12]~COUT\);

-- Location: FF_X92_Y10_N25
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(12));

-- Location: LCCOMB_X92_Y10_N26
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(13) = (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(13) & ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT13\ & 
-- (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[12]~COUT\ & VCC)) # (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT13\ & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[12]~COUT\)))) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(13) & ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT13\ & (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[12]~COUT\)) # 
-- (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT13\ & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[12]~COUT\) # (GND)))))
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[13]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(13) & (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT13\ & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[12]~COUT\)) # (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(13) & ((!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[12]~COUT\) # 
-- (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(13),
	datab => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT13\,
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[12]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(13),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[13]~COUT\);

-- Location: FF_X92_Y10_N27
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(13));

-- Location: LCCOMB_X92_Y10_N28
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(14) = ((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT14\ $ (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(14) $ 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[13]~COUT\)))) # (GND)
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[14]~COUT\ = CARRY((\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT14\ & ((\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(14)) # 
-- (!\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[13]~COUT\))) # (!\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT14\ & (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(14) & 
-- !\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[13]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT14\,
	datab => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(14),
	datad => VCC,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[13]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(14),
	cout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[14]~COUT\);

-- Location: FF_X92_Y10_N29
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(14));

-- Location: LCCOMB_X92_Y10_N30
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(15) = \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(15) $ (\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[14]~COUT\ $ 
-- (\mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(15),
	datad => \mac|altmult_accum_component|auto_generated|ded_mult1|mac_out4~DATAOUT15\,
	cin => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella[14]~COUT\,
	combout => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(15));

-- Location: FF_X92_Y10_N31
\mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_cella\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mac|altmult_accum_component|auto_generated|zaccum2|accum|acc_ffa\(15));

-- Location: IOIBUF_X115_Y35_N22
\sload~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sload,
	o => \sload~input_o\);

ww_accum_out(0) <= \accum_out[0]~output_o\;

ww_accum_out(1) <= \accum_out[1]~output_o\;

ww_accum_out(2) <= \accum_out[2]~output_o\;

ww_accum_out(3) <= \accum_out[3]~output_o\;

ww_accum_out(4) <= \accum_out[4]~output_o\;

ww_accum_out(5) <= \accum_out[5]~output_o\;

ww_accum_out(6) <= \accum_out[6]~output_o\;

ww_accum_out(7) <= \accum_out[7]~output_o\;

ww_accum_out(8) <= \accum_out[8]~output_o\;

ww_accum_out(9) <= \accum_out[9]~output_o\;

ww_accum_out(10) <= \accum_out[10]~output_o\;

ww_accum_out(11) <= \accum_out[11]~output_o\;

ww_accum_out(12) <= \accum_out[12]~output_o\;

ww_accum_out(13) <= \accum_out[13]~output_o\;

ww_accum_out(14) <= \accum_out[14]~output_o\;

ww_accum_out(15) <= \accum_out[15]~output_o\;
END structure;


