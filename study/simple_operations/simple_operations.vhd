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
		
		i_rx				: in std_logic;
		o_rx_full			: out std_logic;
		o_rx_empty			: out std_logic;
				
		o_tx				: out std_logic;
		o_tx_full			: out std_logic;
		o_tx_empty			: out std_logic;
		
		o_data				: out std_logic_vector(g_bits-1 downto 0));
		
 end simple_operations;
 
architecture bhv of simple_operations is

	type t_fsm is(s_idle, s_get_fifo_data, s_calculus, s_put_fifo_data, s_clear);
	signal r_sm_main	: t_fsm := s_idle;

	signal r_frame 	: mod_data;

	signal r_rst		: std_logic;
	signal r_rst_sync	: std_logic;
	signal r_rd_rx		: std_logic;
	signal r_wr_tx		: std_logic;
	
	signal r_rx_data 	: std_logic_vector(g_bits-1 downto 0) := (others => '0');	
	signal r_tx_data 	: std_logic_vector(g_bits-1 downto 0) := (others => '0');
	
	signal r_data 	: std_logic_vector(g_bits-1 downto 0) := (others => '0');
	
	
begin
	
	uart_unit : uart port map (i_clk, r_rst, r_rst_sync, i_rx, O_rx_full, o_rx_empty, r_rx_data, 
										r_rd_rx, o_tx, o_tx_full, o_tx_empty, r_tx_data, r_wr_tx);
										
	p_sop : process (i_clk, r_rst)
	begin
		if r_rst = '1' then
			r_sm_main 	<= s_idle;
			r_data		<= (others => '0');
			r_wr_tx		<= '0';
			r_rd_rx		<= '0';
			
		elsif rising_edge(i_clk) then
			case r_sm_main is
				when s_idle =>
					if o_rx_empty = '0' then						
						r_rd_rx		<= '1';
						r_sm_main 	<= s_get_fifo_data;
					else						
						r_rd_rx		<= '0';
						r_sm_main	<= s_idle;
					end if;
					
				when s_get_fifo_data =>
					r_rd_rx		<= '0';
					r_data		<= r_rx_data;
					r_sm_main	<= s_calculus;

				when s_calculus =>
					r_data 		<= std_logic_vector(unsigned(r_data) + 1);
					r_sm_main 	<= s_put_fifo_data;
				
				when s_put_fifo_data =>
					if o_tx_full = '0' then
						r_tx_data	<= r_data;
						r_wr_tx		<= '1';
						r_sm_main	<= s_clear;
					else
						r_sm_main <= s_put_fifo_data;
					end if;
				
				when s_clear =>
					r_wr_tx		<= '0';
					r_sm_main	<= s_idle;
				
				when others =>
					r_sm_main <= s_idle;
			end case;
		end if;
	end process p_sop;
										
	r_rst			<= not i_rst;
	r_rst_sync	<= not i_rst_sync;
	o_data		<= r_rx_data;
	
end bhv;