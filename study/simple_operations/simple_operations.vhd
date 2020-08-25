 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;
 
 library rna_library; 
 use rna_library.uart_components.all;
 
 
 entity simple_operations is
	 generic(
		g_bits 			: natural := 8;
		g_clks_per_bit	: integer := 5209;----50000000/9600
		g_depth			: integer := 10);

		
	port(
		i_clk					: in std_logic;
		i_rst					: in std_logic;
		i_rst_sync			: in std_logic;
		o_status				: out std_logic_vector(3 downto 0);
		
		--FIFO RX Write
		i_fifo_rx_wr_en	: in std_logic;
		i_fifo_rx_wr_data : in std_logic_vector(g_bits-1 downto 0);
		o_fifo_rx_full		: out std_logic;
		
		--FIFO RX Read
		i_fifo_rx_rd_en	: in std_logic;
		o_fifo_rx_rd_data : out std_logic_vector(g_bits-1 downto 0);
		o_fifo_rx_empty 	: out std_logic;
		
		--FIFO TX Write
		i_fifo_tx_wr_en	: in std_logic;
		i_fifo_tx_wr_data : in std_logic_vector(g_bits-1 downto 0);
		o_fifo_tx_full		: out std_logic;
		
		--FIFO TX Read
		i_fifo_tx_rd_en	: in std_logic;
		o_fifo_tx_rd_data : out std_logic_vector(g_bits-1 downto 0);
		o_fifo_tx_empty 	: out std_logic;		
		
		
		i_tx_dv				: in std_logic;  										-- Enable for transmit
		tx_data				: in std_logic_vector(g_bits-1 downto 0);
		o_tx_active 		: out std_logic; 										-- High when transmitting data
		o_tx_serial 		: out std_logic; 										-- Serial data transmitting
		o_tx_done 			: out std_logic; 										-- High when transmit is complete for 1 clk
		
		i_rx_serial 		: in std_logic; 										-- Serial data receiveing
		o_rx_dv				: out std_logic;										-- High when receiveing is complete for 1 clk
		rx_data				: out std_logic_vector(g_bits-1 downto 0));
 end simple_operations;
 
architecture bhv of simple_operations is
	type t_fsm is(s_idle, s_get_fifo_data, s_calculus, s_put_fifo_data, s_clear);
	signal r_sm_main				: t_fsm := s_idle;
	signal r_bit_index			: integer range 0 to 7 := 0;

	
	signal r_rx_data 				: std_logic_vector(g_bits - 1 downto 0) := (others => '0');
	signal r_tx_data 				: std_logic_vector(g_bits - 1 downto 0) := (others => '0');
	signal r_tx_dv					: std_logic := '0';
	
	
	signal r_fifo_rx_wr_en		: std_logic;
	signal r_fifo_rx_wr_data	: std_logic_vector(g_bits-1 downto 0)	 := (others => '0');
	signal r_fifo_rx_rd_en		: std_logic;
	
	signal r_fifo_tx_wr_en		: std_logic;
	signal r_fifo_tx_wr_data	: std_logic_vector(g_bits-1 downto 0)	 := (others => '0');
	signal r_fifo_tx_rd_en		: std_logic;
	
	signal r_fifo_data_in		: std_logic_vector(g_bits - 1 downto 0) := (others => '0');
	signal r_fifo_data_out		: std_logic_vector(g_bits - 1 downto 0) := (others => '0');
	
	signal r_data_in				: std_logic_vector(g_bits - 1 downto 0) := (others => '0');
	signal r_data_out				: std_logic_vector(g_bits - 1 downto 0) := (others => '0');
	signal r_status				: std_logic_vector(3 downto 0)			 := (others => '0');
	
begin
	
	receiver 	: uart_rx generic map(g_clks_per_bit) port map(i_clk, i_rx_serial, o_rx_dv, r_rx_data);
	transmitter : uart_tx generic map(g_clks_per_bit) port map(i_clk, r_tx_dv, r_tx_data, o_tx_active, o_tx_serial, o_tx_done);
	
	fifo_rx		: fifo	 generic map(g_bits, g_depth) port map (i_rst_sync, i_clk, r_fifo_rx_wr_en, r_fifo_rx_wr_data, o_fifo_rx_full,
																					 r_fifo_rx_rd_en, o_fifo_rx_rd_data, o_fifo_rx_empty);
	fifo_tx		: fifo	 generic map(g_bits, g_depth) port map (i_rst_sync, i_clk, r_fifo_tx_wr_en, r_fifo_tx_wr_data, o_fifo_tx_full,
																					 r_fifo_tx_rd_en, o_fifo_tx_rd_data, o_fifo_tx_empty);
	
	p_uart_receive : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if o_rx_dv = '1' then
				if o_fifo_rx_full = '0' then
					r_fifo_rx_wr_data <= r_rx_data;
					r_fifo_rx_wr_en <= '1';		
				end if;
			else 
				r_fifo_rx_wr_en <= '0';
			end if;		
		end if;
	end process p_uart_receive;
	
	p_uart_transmit : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if o_fifo_tx_empty = '0' then
				r_fifo_tx_rd_en <= '1';
				r_tx_data <= o_fifo_tx_rd_data;				
				r_tx_dv <= '1';				
				if o_tx_done = '1' then
					r_tx_dv <= '0';
					r_fifo_tx_rd_en <= '0';
				end if;
			else
				r_tx_dv <= '0';
				r_fifo_tx_rd_en <= '0';
			end if;
		end if;
	end process p_uart_transmit;	
	
	p_calculus_fsm : process(i_clk, i_rst, o_fifo_rx_empty, r_fifo_data_in, r_bit_index, r_fifo_rx_rd_en,o_fifo_tx_full,r_fifo_tx_wr_en)
	variable aux : ufixed(0 downto -7);
	
	begin		
		if not i_rst = '1' then
			r_sm_main <= s_idle;
			r_status  <= "1111";
			r_data_in <= (others => '0');
			
		elsif rising_edge(i_clk) then
		
			case r_sm_main is
				when s_idle =>
					if o_fifo_rx_empty = '0' then
						r_sm_main <= s_get_fifo_data;
					else
						r_sm_main <= s_idle;
					end if;
					r_status <= "0001";
				
				when s_get_fifo_data =>					
						r_fifo_rx_rd_en <= '1';
						r_fifo_data_in <= o_fifo_rx_rd_data;				
						
						if r_fifo_data_in = x"30" then
							r_data_in(r_bit_index) <= '0';
						elsif r_fifo_data_in = x"31" then
							r_data_in(r_bit_index) <= '1';
						else
							r_data_in(r_bit_index) <= 'X';
						end if;
						
						if r_bit_index < g_bits-1 then
							r_bit_index 	 <= r_bit_index + 1;
							r_sm_main 		 <= s_get_fifo_data;
						else
							r_bit_index     <= 0;
							r_fifo_rx_rd_en <= '0';
							r_sm_main 	 	 <= s_calculus;
						end if;
				
				when s_calculus =>
					r_fifo_rx_rd_en <= '0';
					aux := to_ufixed(r_data_in, aux'high, aux'low);
					r_sm_main <= s_put_fifo_data;
					r_status <= "0011";
					
				when s_put_fifo_data =>
					r_fifo_data_out <= to_slv(aux);
					
					if o_fifo_tx_full = '0' then
						r_fifo_tx_wr_data <= r_fifo_data_out;
						r_fifo_tx_wr_en <= '1';
						r_sm_main <= s_clear;
					else
						r_sm_main <= s_put_fifo_data;
					end if;
					r_status <= "0100";
				
				when s_clear =>
					aux := (others => '0');
					r_fifo_data_out <= (others => '0');
					r_fifo_data_in  <= (others => '0');
					r_fifo_tx_wr_en <= '0';
					r_fifo_rx_rd_en <= '0';
					r_sm_main 		 <= s_idle;
					r_status 		 <= "0000";
				when others =>	
					r_sm_main <= s_idle;
					r_status	 <= "0111";
			end case;
		end if;
	end process p_calculus_fsm;
	
	rx_data <= r_data_in; -- Serial data assigned to RLeds
	o_status <= r_status;
	
end bhv;