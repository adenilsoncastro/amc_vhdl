 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 entity uart_tx is
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
 end uart_tx;
		
 architecture arch of uart_tx is
	type t_sm_main is (s_idle, s_start, s_data, s_stop);
	signal r_state_reg	: t_sm_main := s_idle;
	signal r_state_next	: t_sm_main := s_idle;
	
	signal r_s_reg			: unsigned (3 downto 0);
	signal r_s_next		: unsigned (3 downto 0);
	signal r_n_reg			: unsigned (2 downto 0);
	signal r_n_next		: unsigned (2 downto 0);
	signal r_b_reg			: std_logic_vector(g_dbit-1 downto 0);
	signal r_b_next		: std_logic_vector(g_dbit-1 downto 0);
	signal r_tx_reg		: std_logic;
	signal r_tx_next		: std_logic;
	
 begin
	p_fsmd : process(i_clk, i_rst) 
	begin
		if not i_rst='1' then
			r_state_reg <= s_idle;
			r_s_reg <= (others => '0');
			r_n_reg <= (others => '0');
			r_b_reg <= (others => '0');
			r_tx_reg<= '1';
		elsif rising_edge(i_clk) then
			r_state_reg <= r_state_next;
			r_s_reg <= r_s_next;
			r_n_reg <= r_n_next;
			r_b_reg <= r_b_next;
			r_tx_reg<= r_tx_next;
		end if;
	end process p_fsmd;
	
	p_data : process(r_state_reg, r_s_reg, r_n_reg, r_b_reg, i_s_tick, r_tx_reg, i_tx_start, i_din)
	begin
		r_state_next 	<= r_state_reg;
		r_s_next 		<= r_s_reg;
		r_n_next			<= r_n_reg;
		r_b_next			<= r_b_reg;
		r_tx_next		<= r_tx_reg;
		o_tx_done 		<= '0';
		
		case r_state_reg is
			when s_idle =>
				r_tx_next <= '1';
				if i_tx_start ='1' then
					r_state_next <= s_start;
					r_s_next 	<= (others => '0');
					r_b_next		<= i_din;
				end if;
			
			when s_start =>
				r_tx_next <= '0';
				if i_s_tick = '1' then
					if r_s_reg = 15 then
						r_state_next <= s_data;
						r_s_next		 <= (others => '0');
						r_n_next 	 <= (others => '0');
					else
						r_s_next <= r_s_reg + 1;
					end if;
				end if;
			
			when s_data =>
				r_tx_next <= r_b_reg(0);
				if i_s_tick = '1' then
					if r_s_reg = 15 then
						r_s_next <= (others => '0');
						r_b_next <= '0' & r_b_reg(7 downto 1);
						if r_n_reg = (g_dbit-1) then
							r_state_next <= s_stop;
						else
							r_n_next <= r_n_reg + 1;
						end if;
					else
						r_s_next <= r_s_reg + 1;
					end if;
				end if;
			
			when s_stop =>
				r_tx_next <= '1';
				if i_s_tick = '1' then
					if r_s_reg=(g_sb_tick-1) then
						r_state_next <= s_idle;
						o_tx_done <= '1';
					else
						r_s_next <= r_s_reg + 1;
					end if;
				end if;
		end case;
	end process;
	o_tx <= r_tx_reg;
 end arch;
	