library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity tb_sram is
end tb_sram;

architecture bhv of tb_sram is

 constant c_bit_period : time := 104 us;
 
 signal r_clk        	: std_logic	:= '0';
 signal r_rst        	: std_logic	:= '0';
 signal r_rst_sync   	: std_logic	:= '0';

 signal r_rx				: std_logic := '0';
 signal r_rx_full			: std_logic := '0';
 signal r_rx_empty		: std_logic := '0';
 signal r_tx				: std_logic := '0';
 signal r_tx_full			: std_logic := '0';
 signal r_tx_empty		: std_logic := '0';
 
 signal r_addr				: std_logic_vector(19 downto 0);
 signal r_data				: std_logic_vector(15 downto 0);
 signal r_we				: std_logic := '0';
 signal r_ce				: std_logic := '0';
 signal r_oe				: std_logic := '0';
 signal r_ub				: std_logic := '0';
 signal r_lb 				: std_logic := '0';
 
 constant c_addr_bits	: natural := 20;
 constant c_data_bits		: natural := 16;

 
 -- Low-level byte-write
procedure uart_write_byte (
 i_data_in       : in  std_logic_vector(7 downto 0);
 signal o_serial : out std_logic) is
 begin

 -- Send Start Bit
 o_serial <= '0';
 wait for c_bit_period;

 -- Send Data Byte
 for ii in 0 to 7 loop
	o_serial <= i_data_in(ii);
	wait for c_bit_period;
 end loop;  -- ii

 -- Send Stop Bit
 o_serial <= '1';
wait for c_bit_period;
end uart_write_byte;


component sram is
	port(
		i_clk 		: in std_logic;
		i_rst 		: in std_logic;
		i_rst_sync 	: in std_logic;
		
		i_rx 			: in std_logic; 
		o_rx_full 	: out std_logic;
		o_rx_empty 	: out std_logic;
		
		o_tx 			: out std_logic;
		o_tx_full 	: out std_logic;
		o_tx_empty 	: out std_logic;
		
		o_addr 		: out std_logic_vector(19 downto 0);
		o_data 		: out std_logic_vector(15 downto 0);
		o_we 			: out std_logic;
		o_ce 			: out std_logic;
		o_oe 			: out std_logic;
		o_ub 			: out std_logic;
		o_lb 			: out std_logic);
end component sram;

begin
 DUT : sram port map(r_clk, r_rst, r_rst_sync, r_rx, r_rx_full, 
							r_rx_empty,	r_tx, r_tx_full, r_tx_empty, 
							r_addr, r_data, r_we, r_ce, r_oe, r_ub, r_lb);
							
 r_clk <= not r_clk after 20ns;
 
 p_test : process is
 begin 
 
	for ii in 0 to c_addr_bits loop
		wait for 10 ns;
		uart_write_byte(X"30", r_rx);
		wait for 5 ms;
	end loop;
	
	
 
 end process p_test;
end bhv;