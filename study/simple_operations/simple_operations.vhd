 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;
 
 library rna_library; 
 use rna_library.uart_components.all;
 use rna_library.data_types_pkg.all;
 
 
 entity simple_operations is
	 generic(
		g_bits 			: natural := 8;
		g_clks_per_bit	: integer := 5209;----50000000/9600
		g_depth			: integer := 10);

		
	port(
		i_clk				: in std_logic;
		i_rst				: in std_logic;
		i_rst_sync			: in std_logic;
		
		i_rx					: in std_logic;
		i_rd_rx				: in std_logic;
		o_rx_full			: out std_logic;
		o_rx_empty			: out std_logic;
				
		o_tx					: out std_logic;
		i_wr_tx				: in std_logic;
		o_tx_full			: out std_logic;
		o_tx_empty			: out std_logic;
		
		o_data				: out std_logic_vector(g_bits-1 downto 0));
		
 end simple_operations;
 
architecture bhv of simple_operations is

	signal frame 		: mod_data;

	signal r_rst		: std_logic;
	signal r_rst_sync	: std_logic;
	signal r_rd_rx		: std_logic;
	signal r_wr_tx		: std_logic;
	
	signal r_rx_data 	: std_logic_vector(g_bits-1 downto 0) := (others => '0');
	
	signal r_tx_data 	: std_logic_vector(g_bits-1 downto 0) := (others => '0');
	
	
begin
	
	uart_unit : uart port map (i_clk, r_rst, r_rst_sync, i_rx, O_rx_full, o_rx_empty, r_rx_data, r_rd_rx,
										o_tx, o_tx_full, o_tx_empty, r_tx_data, r_wr_tx);
										
	r_rst			<= not i_rst;
	r_rst_sync	<= not i_rst_sync;
	r_rd_rx		<= not i_rd_rx;
	r_wr_tx		<= not i_wr_tx;
	
	r_tx_data 	<= std_logic_vector(unsigned(r_rx_data) + 1);
	o_data		<= r_rx_data;
	
	--o_rd <= r_rd_rx;
	--o_wr <= r_wr_tx;
	
end bhv;