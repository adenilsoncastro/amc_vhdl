 library ieee;
 use ieee.std_logic_1164.all;
 
 library rna_library; 
 use rna_library.uart_components.all;
 
 entity sram is
	generic(
		g_uart_bits		: natural := 8;
		g_data_bits		: natural := 16;
		g_addr_bits		: natural := 20);
		
	port(
		i_clk			: in std_logic;
		i_rst			: in std_logic;
		i_rst_sync	: in std_logic;
		
		i_rx			: in std_logic;
		o_rx_full	: out std_logic;
		o_rx_empty	: out std_logic;
				
		o_tx			: out std_logic;
		o_tx_full	: out std_logic;
		o_tx_empty	: out std_logic;
		
		o_addr		: out std_logic_vector((g_addr_bits-1) downto 0);
		o_data		: out std_logic_vector((g_data_bits-1) downto 0);
		o_we			: out std_logic;
		o_ce			: out std_logic;
		o_oe			: out std_logic;
		o_ub			: out std_logic;
		o_lb			: out std_logic);
		
 end sram;
 
 architecture bhv of sram is
 
	type t_fsm is(s_idle, s_get_fifo_data, s_process, s_write_sram, s_clear);
	signal r_sm				: t_fsm := s_idle;
 
 	signal r_rst			: std_logic;
	signal r_rst_sync		: std_logic;
	signal r_rd_rx			: std_logic;
	signal r_wr_tx			: std_logic;	
	signal r_rx_data 		: std_logic_vector((g_uart_bits-1) downto 0) := (others => '0');	
	signal r_tx_data 		: std_logic_vector((g_uart_bits-1) downto 0) := (others => '0');	
	signal r_data 			: std_logic_vector((g_uart_bits-1) downto 0) := (others => '0');
	
	signal r_index 		: integer := 0;
	signal r_addr		 	: std_logic_vector((g_addr_bits-1) downto 0);
	signal r_sram_data	: std_logic_vector((g_data_bits-1) downto 0);
	signal r_we				: std_logic := '0';
	signal r_ce				: std_logic := '1';		
	signal r_oe				: std_logic := '0';
	signal r_ub				: std_logic := '0';
	signal r_lb				: std_logic := '0';
	
 begin
	uart_unit : uart port map (i_clk, r_rst, r_rst_sync, i_rx, O_rx_full, o_rx_empty, r_rx_data, 
										r_rd_rx, o_tx, o_tx_full, o_tx_empty, r_tx_data, r_wr_tx);
 
	p_write_sram : process(i_clk)
	begin
		if r_rst = '1' then
			r_sm 		<= s_idle;
			r_data	<= (others => '0');
			r_wr_tx	<= '0';
			r_rd_rx	<= '0';
			
		elsif rising_edge(i_clk) then
			case r_sm is 
				when s_idle =>
					if o_rx_empty = '0' then
						r_rd_rx 	<= '1';
						r_wr_tx	<= '0';
						r_sm		<= s_get_fifo_data;
					else
						r_rd_rx	<= '0';
						r_wr_tx	<= '0';
						r_sm		<= s_idle;
					end if;
				
				when s_get_fifo_data =>
					r_rd_rx	<= '0';
					r_data	<= r_rx_data;
					r_sm		<= s_process;
					
				when s_process =>
					if r_index < (g_addr_bits) then
						if r_data = "00110000" then
							r_addr(r_index) <= '0';
							r_index <= r_index + 1;
						elsif r_data = "00110001" then
							r_addr(r_index) <= '1';
							r_index <= r_index + 1;
						else
							r_tx_data <= "00000110";
							r_wr_tx	 <= '1';
							--r_index	 <= 0;
							--r_sm		 <= s_idle;
						end if;
					elsif r_index >=20 and r_index < 36 then
						if r_data = "00110000" then
							r_sram_data(r_index - 20) <= '0';
							r_index <= r_index + 1;
						elsif r_data = "00110001" then
							r_sram_data(r_index - 20) <= '1';
							r_index <= r_index + 1;
						else
							r_tx_data <= "00000110";
							r_wr_tx	 <= '1';
							--r_index	 <= 0;
							--r_sm		 <= s_idle;
						end if;
					end if;
					
					if r_index = 36 then
						r_index	<= 0;
						r_sm 		<= s_write_sram;
					else
						r_sm		<= s_idle;
					end if;
						
				when s_write_sram =>
					r_we 		<= '0';
					r_ce 		<= '0';
					r_oe 		<= '0';
					r_lb 		<= '0';
					r_ub 		<= '0';
					r_wr_tx	<= '0';
					r_sm 		<= s_clear;
					
				when s_clear =>
					r_ce <= '1';
					r_data		<= (others => '0');
					--r_sram_data	<= (others => '0');
					r_addr		<= (others => '0');					
					r_sm			<= s_idle;
					
				when others =>
					r_sm <= s_idle;
					
			end case;
		end if;
			
	end process p_write_sram;
											
	r_rst			<= not i_rst;
	r_rst_sync	<= not i_rst_sync;
	
	o_addr		<= r_addr;
	o_data		<= r_sram_data;
	
	o_we			<= r_we;
	o_ce			<= r_we;
	o_oe			<= r_we;
	o_ub			<= r_we;
	o_lb			<= r_we;		
 end bhv;