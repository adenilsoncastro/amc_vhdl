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
		o_status				: out std_logic_vector(3 downto 0) := "0000";

		o_fifo_rx_full		: out std_logic;
		o_fifo_rx_empty 	: out std_logic;		
		i_rx_serial 		: in std_logic; 										-- Serial data receiveing
		rx_data				: out std_logic_vector(g_bits-1 downto 0);
		
		o_fifo_tx_full		: out std_logic;
		o_fifo_tx_empty	: out std_logic;
		o_tx_serial			: out std_logic;
		tx_data				: out std_logic);
end uart_fifo;

architecture bhv of uart_fifo is

	signal r_rx_data 				: std_logic_vector(g_bits - 1 downto 0) := (others => '0');
	signal r_rx_dv					: std_logic := '0';
	
	
	signal r_fifo_rx_wr_en		: std_logic;
	signal r_fifo_rx_wr_data	: std_logic_vector(g_bits-1 downto 0)	 := (others => '0');
	signal r_fifo_rx_rd_en		: std_logic;	
	signal r_fifo_data_in		: std_logic_vector(g_bits - 1 downto 0) := (others => '0');
	
	signal r_tx_data 				: std_logic_vector(g_bits - 1 downto 0) := (others => '0');
	signal r_tx_dv					: std_logic := '0';
	signal r_tx_active			: std_logic;
	signal r_tx_done				: std_logic := '0';
	
	signal r_fifo_tx_wr_en		: std_logic;
	signal r_fifo_tx_wr_data	: std_logic_vector(g_bits-1 downto 0)	 := (others => '0');
	signal r_fifo_tx_rd_en		: std_logic;	
	signal r_fifo_data_out		: std_logic_vector(g_bits - 1 downto 0) := (others => '0');

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
	
	component uart_tx is
		generic(
			g_clks_per_bit : integer := 5209);
			
		port(
			i_clk			: in std_logic;
			i_tx_dv		: in std_logic;
			i_tx_byte	: in std_logic_vector(7 downto 0);
			o_tx_active	: out std_logic;
			o_tx_serial	: out std_logic;
			o_tx_done	: out std_logic);
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
	
	transmitter	:uart_tx generic map(g_clks_per_bit) port map(i_clk, r_tx_dv, r_tx_data, r_tx_active, o_tx_serial, r_tx_done);
	
	fifo_tx		: fifo 	generic map(g_bits, g_depth) port map(i_rst_sync, i_clk, r_fifo_tx_wr_en, r_fifo_tx_wr_data, o_fifo_tx_full,
																					r_fifo_tx_rd_en, r_fifo_data_out, o_fifo_tx_empty);
																					
	p_receive : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if o_fifo_rx_full = '0' then
				r_fifo_rx_wr_en	<= r_rx_dv;	  -- write enable in fifo rx
				r_fifo_rx_wr_data	<= r_rx_data; --data in fifo rx
			else
				r_fifo_rx_wr_en	<= '0';
			end if;
		end if;
	end process p_receive;
	
	p_transmit : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if o_fifo_tx_empty = '0' then
				if r_tx_done = '0' then
					r_tx_dv 		<= '1';
					r_tx_data	<= r_fifo_data_out;
				else
					r_tx_dv <= '0';
				end if;
			end if;
		end if;
	end process p_transmit;
																					
	p_process : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if o_fifo_rx_empty = '0' and o_fifo_tx_full = '0' then
				r_fifo_rx_rd_en <= '1';
				r_fifo_tx_wr_en <= '1';
				r_fifo_tx_wr_data <= r_fifo_data_in;
			else
				r_fifo_rx_rd_en <= '0';
				r_fifo_tx_wr_en <= '0';
			end if;
		end if;
	end process p_process;
	
	rx_data <= r_rx_data; --serial data to leds
																					 
end bhv;	