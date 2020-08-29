 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 entity top_level is
	generic(
		g_dbit 		: integer := 8);
	port(
		i_clk			: in std_logic;
		i_rst			: in std_logic;
		
		i_sdb			: in std_logic; --sdb --> send data back
		i_rx			: in std_logic;
		o_tx			: out std_logic;
		o_rx_full	: out std_logic;
		o_rx_empty	: out std_logic;
		o_tx_full	: out std_logic;
		o_tx_empty	: out std_logic;
		o_data		: out std_logic_vector(g_dbit-1 downto 0));
 end top_level;
 
 architecture bhv of top_level is
 
 signal r_rst : std_logic;
 signal r_sdb : std_logic;
 signal r_received_data : std_logic_vector(g_dbit-1 downto 0);
 signal r_transmit_data : std_logic_vector(g_dbit-1 downto 0);
 
 component uart is
	port(
		i_clk			: in std_logic;
		i_rst			: in std_logic;
		i_rd_uart	: in std_logic;
		i_wr_uart	: in std_logic;
		
		i_rx			: in std_logic;		
		o_rx_full	: out std_logic;
		o_rx_empty	: out std_logic;
		o_r_data		: out std_logic_vector(7 downto 0);

		o_tx			: out std_logic;		
		o_tx_full	: out std_logic;
		o_tx_empty	: out std_logic;
		i_w_data		: in std_logic_vector(7 downto 0));
 end component;
 
 begin
 
	uart_unit : uart port map(i_clk, r_rst, r_sdb, r_sdb, i_rx, o_rx_full, o_rx_empty, r_received_data, o_tx, o_tx_full, o_tx_empty, r_transmit_data);
	
	r_transmit_data <= std_logic_vector(unsigned(r_received_data) + 1);
	o_data			 <= r_received_data;
	r_rst				 <= not i_rst;
	r_sdb				 <= not i_sdb;
 
 end bhv;