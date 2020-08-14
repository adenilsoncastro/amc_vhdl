 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 use work.all;
 
 entity uart_fifo is
	generic(
		g_bits 			: integer := 8;
		g_clks_per_bit	: integer := 5209;
		g_depth			: integer := 10);----50000000/9600
		
	port(
		i_clk					: in std_logic;
		i_rst					: in std_logic;
		i_rst_sync			: in std_logic;
		o_status				: out std_logic_vector(3 downto 0);

		o_fifo_rx_full		: out std_logic;
		o_fifo_rx_empty 	: out std_logic;		
		i_rx_serial 		: in std_logic; 										-- Serial data receiveing
		rx_data				: out std_logic_vector(g_bits-1 downto 0));
end uart_fifo;

architecture bhv of uart_fifo is

	signal r_rx_data 				: std_logic_vector(g_bits - 1 downto 0) := (others => '0');
	signal r_rx_dv					: std_logic := '0';
	
	
	signal r_fifo_rx_wr_en		: std_logic;
	signal r_fifo_rx_wr_data	: std_logic_vector(g_bits-1 downto 0)	 := (others => '0');
	signal r_fifo_rx_rd_en		: std_logic;	
	signal r_fifo_data_in		: std_logic_vector(g_bits - 1 downto 0) := (others => '0');

	signal r_status				: std_logic_vector(3 downto 0)			 := (others => '0');
	
	component uart_rx is
		generic(
			g_clks_per_bit : integer := 5209);
			
		port(
			i_clk			: in std_logic;
			i_rx_serial	: in std_logic;
			o_rx_dv		: out std_logic;
			o_rx_byte	: out std_logic_vector(7 downto 0));
	end component;
	
	component fifo is
		generic(
			g_width		: natural := 8;
			g_depth		: integer := 10);
		
		port(
			i_rst_sync	: in std_logic;
			i_clk			: in std_logic;
			
			i_wr_en		: in std_logic;
			i_wr_data	: in std_logic_vector(g_width-1 downto 0);
			o_full		: out std_logic;
			
			i_rd_en		: in std_logic;
			o_rd_data	: out std_logic_vector(g_width-1 downto 0);
			o_empty		: out std_logic);
	end component;

begin
	
	receiver 	: uart_rx generic map(g_clks_per_bit) port map(i_clk, i_rx_serial, r_rx_dv, r_rx_data);
	
	fifo_rx		: fifo	 generic map(g_bits, g_depth) port map (i_rst_sync, i_clk, r_fifo_rx_wr_en, r_fifo_rx_wr_data, o_fifo_rx_full,
																					r_fifo_rx_rd_en, r_fifo_data_in, o_fifo_rx_empty);		
	
	r_fifo_rx_wr_en	<= r_rx_dv;
	r_fifo_rx_wr_data	<= r_rx_data;
	rx_data				<= r_rx_data;
																					 
end bhv;	