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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "08/29/2020 14:54:32"
                                                            
-- Vhdl Test Bench template for design  :  simple_operations
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY simple_operations_vhd_tst IS
END simple_operations_vhd_tst;
ARCHITECTURE simple_operations_arch OF simple_operations_vhd_tst IS
-- constants

constant c_CLKS_PER_BIT : integer := 5209; -- 50M/9600
constant c_BIT_PERIOD : time := 100 us;

-- signals                                                   
SIGNAL i_clk : STD_LOGIC;
SIGNAL i_rd_rx : STD_LOGIC;
SIGNAL i_rst : STD_LOGIC;
SIGNAL i_rst_sync : STD_LOGIC;
SIGNAL i_rx : STD_LOGIC;
SIGNAL i_wr_tx : STD_LOGIC;
SIGNAL o_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL o_rx_empty : STD_LOGIC;
SIGNAL o_rx_full : STD_LOGIC;
SIGNAL o_tx : STD_LOGIC;
SIGNAL o_tx_empty : STD_LOGIC;
SIGNAL o_tx_full : STD_LOGIC;

-- Low-level byte-write
procedure UART_WRITE_BYTE (
	i_data_in       : in  std_logic_vector(7 downto 0);
	signal o_serial : out std_logic) is
	begin

	-- Send Start Bit
	o_serial <= '0';
	wait for c_BIT_PERIOD;

	-- Send Data Byte
	for ii in 0 to 7 loop
		o_serial <= i_data_in(ii);
		wait for c_BIT_PERIOD;
	end loop;  -- ii

	-- Send Stop Bit
	o_serial <= '1';
	wait for c_BIT_PERIOD;
end UART_WRITE_BYTE;

COMPONENT simple_operations
	PORT (
	i_clk : IN STD_LOGIC := '0';
	i_rd_rx : IN STD_LOGIC := '0';
	i_rst : IN STD_LOGIC := '0';
	i_rst_sync : IN STD_LOGIC := '0';
	i_rx : IN STD_LOGIC := '0';
	i_wr_tx : IN STD_LOGIC := '0';
	o_data : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
	o_rx_empty : BUFFER STD_LOGIC := '0';
	o_rx_full : BUFFER STD_LOGIC := '0';
	o_tx : BUFFER STD_LOGIC := '0';
	o_tx_empty : BUFFER STD_LOGIC := '0';
	o_tx_full : BUFFER STD_LOGIC := '0'
	);
END COMPONENT;

BEGIN
	i1 : simple_operations
	PORT MAP (
-- list connections between master ports and signals
	i_clk => i_clk,
	i_rd_rx => i_rd_rx,
	i_rst => i_rst,
	i_rst_sync => i_rst_sync,
	i_rx => i_rx,
	i_wr_tx => i_wr_tx,
	o_data => o_data,
	o_rx_empty => o_rx_empty,
	o_rx_full => o_rx_full,
	o_tx => o_tx,
	o_tx_empty => o_tx_empty,
	o_tx_full => o_tx_full
	);

	i_clk <= not i_clk after 20 ns;

	test : PROCESS                                               
	-- variable declarations                                     
	BEGIN                                                        
		wait for 10 ns;	
		UART_WRITE_BYTE(X"31", i_rx);
		wait until rising_edge(i_clk);
		i_rd_rx <= '1';
		wait until rising_edge(i_clk);
		i_rd_rx <= '0';
		wait for 10 ns;

		i_wr_tx <= '1';
		wait until rising_edge(i_clk);
		i_wr_tx <= '0';
		wait until rising_edge(i_clk);

		if o_data = X"31" then
			report "Serial data received successfully" severity note;
		else
			report "Error while receiving serial data" severity note;
		end if;
		
		assert false report "Tests Complete" severity failure;

	END PROCESS test;                                         
END simple_operations_arch;
