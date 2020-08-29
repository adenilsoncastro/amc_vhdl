 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 library rna_library; 
 use rna_library.uart_components.all;
 
 entity uart is
	generic(
		g_bits 				: natural := 8;
		g_clks_per_bit		: integer := 5209;----50000000/9600
		g_depth				: integer := 10);
		
	port(
		i_clk 				: in std_logic;
		i_rst					: in std_logic;
		i_rst_sync			: in std_logic;
		
		i_rx					: in std_logic;
		o_fifo_rx_full		: out std_logic;
		o_fifo_rx_empty	: out std_logic;
		o_rx_data			: out std_logic_vector(g_bits-1 downto 0);
		i_rd_uart			: in std_logic;
		
		o_tx					: out std_logic;
		o_fifo_tx_full		: out std_logic;
		o_fifo_tx_empty	: out std_logic;
		i_tx_data			: in std_logic_vector(g_bits-1 downto 0);
		i_wr_uart			: in std_logic);
		
 end uart;
 
 architecture bhv of uart is
 
	signal r_rx_dv					: std_logic := '0';
	signal r_rx_data 				: std_logic_vector(g_bits - 1 downto 0) := (others => '0');
 
	signal r_tx_dv					: std_logic := '0';
	signal r_tx_active			: std_logic := '0';
	signal r_tx_done				: std_logic := '0';
	signal r_tx_data 				: std_logic_vector(g_bits - 1 downto 0) := (others => '0');
	
 begin
 
 	receiver 	: uart_rx generic map(g_clks_per_bit) port map(i_clk, i_rx, r_rx_dv, r_rx_data);
	
	fifo_rx		: fifo	 generic map(g_bits, g_depth) port map (i_rst_sync, i_clk, r_rx_dv, r_rx_data, o_fifo_rx_full,
																				 i_rd_uart, o_rx_data, o_fifo_rx_empty);
	
	transmitter : uart_tx generic map(g_clks_per_bit) port map(i_clk, r_tx_dv, r_tx_data, r_tx_active, o_tx, r_tx_done);	

	fifo_tx		: fifo	 generic map(g_bits, g_depth) port map (i_rst_sync, i_clk, i_wr_uart, i_tx_data, o_fifo_tx_full,
																					 r_tx_done, r_tx_data, o_fifo_tx_empty);
	r_tx_dv	<= not o_fifo_tx_empty;
 
 end bhv;