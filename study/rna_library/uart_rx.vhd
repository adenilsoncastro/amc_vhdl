 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 entity uart_rx is
	generic(
		g_clks_per_bit : integer := 5209);--50000000/9600
	
	port(
		i_clk			: in std_logic;
		i_rx_serial	: in std_logic;
		o_rx_dv		: out std_logic;
		o_rx_byte	: out std_logic_vector(7 downto 0));
end uart_rx;

architecture rtl of uart_rx is
	
	type t_sm_main is (s_idle, s_rx_start_bit, s_rx_data_bits, s_rx_stop_bit, s_cleanup);
	signal r_sm_main : t_sm_main := s_idle;
	
	signal r_rx_data_r : std_logic := '0';
	signal r_rx_data	 : std_logic := '0';
	
	signal r_clk_count : integer range 0 to g_clks_per_bit - 1 := 0;
	signal r_bit_index : integer range 0 to 7 := 0;
	signal r_rx_byte   : std_logic_vector(7 downto 0) := (others => '0');
	signal r_rx_dv 	 : std_logic := '0';
	
	begin
		p_sample : process(i_clk)
		begin
			if rising_edge(i_clk) then
				r_rx_data_r <= i_rx_serial;
				r_rx_data 	<= r_rx_data_r;
			end if;
		end process p_sample;
		
			
		p_uart_rx : process(i_clk)
		begin
			if rising_edge(i_clk) then
			
				case r_sm_main is
				
					when s_idle =>
						r_rx_dv		<= '0';
						r_clk_count <= 0;
						r_bit_index <= 0;
						
						if r_rx_data = '0' then
							r_sm_main <= s_rx_start_bit;
						else
							r_sm_main <= s_idle;
						end if;
					
					when s_rx_start_bit =>
						if r_clk_count = (g_clks_per_bit - 1)/2 then
							if r_rx_data = '0' then
								r_clk_count <= 0;
								r_sm_main	<= s_rx_data_bits;
							else
								r_sm_main	<= s_idle;
							end if;
						else
							r_clk_count <= r_clk_count + 1;
							r_sm_main	<= s_rx_start_bit;
						end if;
						
					when s_rx_data_bits =>
						if r_clk_count < g_clks_per_bit - 1 then
							r_clk_count	<= r_clk_count + 1;
							r_sm_main	<= s_rx_data_bits;
						else
							r_clk_count					<= 0;
							r_rx_byte(r_bit_index)	<= r_rx_data;
							
							if r_bit_index < 7 then
								r_bit_index <= r_bit_index + 1;
								r_sm_main 	<= s_rx_data_bits;
							else
								r_bit_index <= 0;
								r_sm_main	<= s_rx_stop_bit;
							end if;
						end if;
						
					when s_rx_stop_bit =>
						if r_clk_count < g_clks_per_bit - 1 then
							r_clk_count <= r_clk_count + 1;
							r_sm_main	<= s_rx_stop_bit;
						else
							r_rx_dv		<= '1';
							r_clk_count <= 0;
							r_sm_main	<= s_cleanup;
						end if;
						
					when s_cleanup =>
						r_sm_main <= s_idle;
						r_rx_dv 	 <= '0';
						
					when others =>
						r_sm_main <= s_idle;
				end case;
			end if;
		end process p_uart_rx;
		
		o_rx_dv 	 <= r_rx_dv;
		o_rx_byte <= r_rx_byte;
end rtl;