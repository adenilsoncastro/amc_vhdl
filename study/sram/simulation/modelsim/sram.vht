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
-- Generated on "10/16/2020 11:04:13"
                                                            
-- Vhdl Test Bench template for design  :  sram
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sram_vhd_tst IS
END sram_vhd_tst;
ARCHITECTURE sram_arch OF sram_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL i_clk : STD_LOGIC;
SIGNAL i_rst : STD_LOGIC;
SIGNAL i_rst_sync : STD_LOGIC;
SIGNAL i_rx : STD_LOGIC;
SIGNAL o_addr : STD_LOGIC_VECTOR(19 DOWNTO 0);
SIGNAL o_ce : STD_LOGIC;
SIGNAL o_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL o_lb : STD_LOGIC;
SIGNAL o_leds : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL o_oe : STD_LOGIC;
SIGNAL o_rx_empty : STD_LOGIC;
SIGNAL o_rx_full : STD_LOGIC;
SIGNAL o_tx : STD_LOGIC;
SIGNAL o_tx_empty : STD_LOGIC;
SIGNAL o_tx_full : STD_LOGIC;
SIGNAL o_ub : STD_LOGIC;
SIGNAL o_we : STD_LOGIC;
COMPONENT sram
	PORT (
	i_clk : IN STD_LOGIC;
	i_rst : IN STD_LOGIC;
	i_rst_sync : IN STD_LOGIC;
	i_rx : IN STD_LOGIC;
	o_addr : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	o_ce : OUT STD_LOGIC;
	o_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	o_lb : OUT STD_LOGIC;
	o_leds : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	o_oe : OUT STD_LOGIC;
	o_rx_empty : OUT STD_LOGIC;
	o_rx_full : OUT STD_LOGIC;
	o_tx : OUT STD_LOGIC;
	o_tx_empty : OUT STD_LOGIC;
	o_tx_full : OUT STD_LOGIC;
	o_ub : OUT STD_LOGIC;
	o_we : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sram
	PORT MAP (
-- list connections between master ports and signals
	i_clk => i_clk,
	i_rst => i_rst,
	i_rst_sync => i_rst_sync,
	i_rx => i_rx,
	o_addr => o_addr,
	o_ce => o_ce,
	o_data => o_data,
	o_lb => o_lb,
	o_leds => o_leds,
	o_oe => o_oe,
	o_rx_empty => o_rx_empty,
	o_rx_full => o_rx_full,
	o_tx => o_tx,
	o_tx_empty => o_tx_empty,
	o_tx_full => o_tx_full,
	o_ub => o_ub,
	o_we => o_we
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END sram_arch;
