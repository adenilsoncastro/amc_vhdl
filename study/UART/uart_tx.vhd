library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_tx is
	generic(
		g_clks_per_bit : integer := 5209);--50000000/9600
	
	port(
		i_clk			: in std_logic;
		i_tx_dv		: in std_logic;
		i_tx_byte	: in std_logic_vector(7 downto 0);
		o_tx_active	: out std_logic;
		o_tx_serial	: out std_logic;
		o_tx_done	: out std_logic);
end uart_tx;

architecture rtl of uart_tx is
	type t_sm_main is (s_idle, s_tx_start_bit, s_tx_data_bits, s_tx_stop_bit, s_cleanup);
	signal r_sm_main : t_sm_main := s_idle;
	
	signal r_clk_count	: integer range 0 to g_clks_per_bit - 1 := 0;
	signal r_bit_index 	: integer range 0 to 7 := 0;
	signal r_tx_data		: std_logic_vector(7 downto 0) := (others => '0');
	signal r_tx_done		: std_logic := '0';
	
	begin 
		p_uart_tx : process(i_clk)
		begin
			if rising_edge(i_clk) then
			
				case r_sm_main is
				
					when s_idle =>
						o_tx_active 	<= '0';
						o_tx_serial 	<= '1';
						r_tx_done		<= '0';
						r_clk_count	<= 0;
						r_bit_index		<= 0;
						
						if i_tx_dv = '1' then
							r_tx_data <= i_tx_byte;
							r_sm_main <= s_tx_start_bit;
						else
							r_sm_main <= s_idle;
						end if;
					
					when s_tx_start_bit =>
						o_tx_active <= '1';
						o_tx_serial <= '0';
						
						if r_clk_count < g_clks_per_bit - 1 then
							r_clk_count <= r_clk_count + 1;
							r_sm_main 	<= s_tx_start_bit;
						else
							r_clk_count <= 0;
							r_sm_main 	<= s_tx_data_bits;
						end if;
					
					when s_tx_data_bits =>
						o_tx_serial <= r_tx_data(r_bit_index);
						
						if r_clk_count < g_clks_per_bit - 1 then
							r_clk_count <= r_clk_count + 1;
							r_sm_main 	<= s_tx_data_bits;
						else
							r_clk_count <= 0;
							
							if r_bit_index < 7 then
								r_bit_index <= r_bit_index + 1;
								r_sm_main 	<= s_tx_data_bits;
							else
								r_bit_index <= 0;
								r_sm_main 	<= s_tx_stop_bit;
							end if;
						end if;
					
					when s_tx_stop_bit =>
						o_tx_serial <= '1';
						
						if r_clk_count < g_clks_per_bit - 1 then 
							r_clk_count <= r_clk_count + 1;
							r_sm_main 	<= s_tx_stop_bit;
						else
							r_tx_done 	<= '1';
							r_clk_count <= 0;
							r_sm_main	<= s_cleanup;
						end if;
						
					when s_cleanup =>
						o_tx_active <= '0';
						r_tx_done	<= '1';
						r_sm_main	<= s_idle;
					
					when others =>
						r_sm_main <= s_idle;
				end case;
			end if;
		end process p_uart_tx;
	
	o_tx_done <= r_tx_done;
end rtl;
	
							