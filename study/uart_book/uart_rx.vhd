 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 entity uart_rx is
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
 end uart_rx;
 
 architecture arch of uart_rx is
	type t_sm_main is (s_idle, s_start, s_data, s_stop);
	signal r_state_reg	: t_sm_main;
	signal r_state_next	: t_sm_main;
	
	signal r_s_reg			: unsigned (3 downto 0);
	signal r_s_next		: unsigned (3 downto 0);
	signal r_n_reg			: unsigned (2 downto 0);
	signal r_n_next		: unsigned (2 downto 0);
	signal r_b_reg			: std_logic_vector(g_dbit-1 downto 0);
	signal r_b_next		: std_logic_vector(g_dbit-1 downto 0);
	
	begin
		p_fsmd : process(i_clk, i_rst) 
		begin
			if not i_rst='1' then
				r_state_reg <= s_idle;
				r_s_reg <= (others => '0');
				r_n_reg <= (others => '0');
				r_b_reg <= (others => '0');
			elsif rising_edge(i_clk) then
				r_state_reg <= r_state_next;
				r_s_reg <= r_s_next;
				r_n_reg <= r_n_next;
				r_b_reg <= r_b_next;
			end if;
		end process p_fsmd;
	
		p_data : process (r_state_reg, r_s_reg, r_n_reg, r_b_reg, i_s_tick, i_rx_serial)
		begin
			r_state_next 	<= r_state_reg;
			r_s_next 		<= r_s_reg;
			r_n_next			<= r_n_reg;
			r_b_next			<= r_b_reg;
			o_rx_done_tick <= '0';
			
			case r_state_reg is
				when s_idle =>
					if i_rx_serial = '0' then
						r_state_next	<= s_start;
						r_s_next			<= (others => '0');
					end if;
				
				when s_start =>
					if i_s_tick = '1' then 
						if r_s_reg = 7 then
							r_state_next <= s_data;
							r_s_next 	<= (others => '0');
							r_n_next		<= (others => '0');
						else
							r_s_next <= r_s_reg + 1;
						end if;
					end if;
					
				when s_data =>
					if i_s_tick = '1' then 
						if r_s_reg = 15 then
							r_s_next <= (others => '0');
							r_b_next <= i_rx_serial & r_b_reg (7 downto 1);
							if r_n_reg = (g_dbit - 1) then
								r_state_next <= s_stop;
							else
								r_n_next <= r_n_reg + 1;
							end if;
						else
							r_s_next <= r_s_reg + 1;
						end if;
					end if;
				
				when s_stop =>
					if i_s_tick = '1' then 
						if r_s_reg = (g_sb_tick - 1) then
							r_state_next <= s_idle;
							o_rx_done_tick <= '1';
						else
							r_s_next <= r_s_reg + 1;
						end if;
					end if;
			end case;
		end process p_data;
		
	o_dout <= r_b_reg;
 end arch;