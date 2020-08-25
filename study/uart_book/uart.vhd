 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 entity uart is
	generic(
		g_dbit 		: integer := 8;
		g_sb_tick	: integer := 16;
		g_dvsr 		: integer := 365;
		g_dvsr_bit	: integer := 9;
		g_fifo_w 	: integer := 6);
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
		i_w_data		: in std_logic_vector(7 downto 0);
		
		o_data_test : out std_logic_vector(7 downto 0));

 end uart;
 
 architecture arch of uart is
	signal r_tick					: std_logic;
	signal r_rx_done				: std_logic;
	signal r_rx_data_out 		: std_logic_vector(7 downto 0);
	signal r_rx_empty				: std_logic;
	signal r_rx_full				: std_logic;
	
	signal r_tx_fifo_out			: std_logic_vector(7 downto 0);	
	signal r_tx_empty				: std_logic;
	signal r_tx_full				: std_logic;
	signal r_tx_fifo_not_empty : std_logic;
	signal r_tx_done				: std_logic;
	
	
	component mod_m_counter is
		generic(
			g_bits	: integer := 4;
			g_mod		: integer := 10);
		port(
			i_clk			: in std_logic;
			i_rst 		: in std_logic;
			o_max_tick 	: out std_logic;
			o_count		: out std_logic_vector(g_bits-1 downto 0));
	end component;
	
	component uart_rx is
		generic(
			g_dbit		: integer := 8;
			g_sb_tick	: integer := 16);
		port(
			i_clk			: in std_logic;
			i_rst			: in std_logic;
			i_rx_serial : in std_logic;
			i_s_tick		: in std_logic;
			o_rx_done_tick: out std_logic;
			o_dout		: out std_logic_vector(g_dbit-1 downto 0));
	end component;
	
	component uart_tx is
		generic(
			g_dbit		: integer := 8;
			g_sb_tick	: integer := 16);
		port(
			i_clk			: in std_logic;
			i_rst			: in std_logic;
			i_tx_start	: in std_logic;
			i_s_tick		: in std_logic;
			i_din			: in std_logic_vector(g_dbit-1 downto 0);
			o_tx_done	: out std_logic;
			o_tx			: out std_logic);
	end component;		
	
	component fifo is
		generic(
			g_bits : natural :=8;
			g_words: natural := 10);
		port(
			i_clk			: in std_logic;
			i_rst			: in std_logic;
			i_rd			: in std_logic;
			i_wr			: in std_logic;
			i_wr_data	: in std_logic_vector(g_bits-1 downto 0);
			o_empty		: out std_logic;
			o_full		: out std_logic;
			o_rd_data	: out std_logic_vector(g_bits-1 downto 0));
	end component;		
	
	begin
		baud_generator	: mod_m_counter generic map(g_dvsr, g_dvsr_bit) port map (i_clk, i_rst, r_tick, open);
		
		receiver 		: uart_rx generic map(g_dbit, g_sb_tick) port map (i_clk, i_rst, i_rx, r_tick, r_rx_done, r_rx_data_out);
		
		transmitter		: uart_tx generic map(g_dbit, g_sb_tick) port map (i_clk, i_rst, r_tx_fifo_not_empty, r_tick, r_tx_fifo_out, r_tx_done, o_tx);
		
		fifo_rx			: fifo generic map (g_dbit, g_fifo_w) port map (i_clk, i_rst, i_rd_uart, r_rx_done, r_rx_data_out, o_rx_empty, o_rx_full, o_r_data);
	
		fifo_tx			: fifo generic map (g_dbit, g_fifo_w) port map (i_clk, i_rst, r_tx_done, i_wr_uart, i_w_data, r_tx_empty, o_tx_full, r_tx_fifo_out);
		
	r_tx_fifo_not_empty <= not r_tx_empty;	
	o_tx_empty <= r_tx_empty;
	
	o_data_test <= r_rx_data_out;

end arch;