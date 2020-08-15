  library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 entity mod_m_counter is
	generic(
		g_bits	: integer := 4;
		g_mod		: integer := 10);
	port(
		i_clk			: in std_logic;
		i_rst 		: in std_logic;
		o_max_tick 	: out std_logic;
		o_count		: out std_logic_vector(g_bits-1 downto 0));
 end  mod_m_counter;
 
 architecture arch of mod_m_counter is
	signal r_reg	: unsigned(g_bits-1 downto 0);
	signal r_next	: unsigned(g_bits-1 downto 0);
	
	begin
		p_count : process(i_clk, i_rst)
		begin
			if not i_rst='1' then
				r_reg	<= (others => '0');
			elsif rising_edge(i_clk) then
				r_reg <= r_next;
			end if;
		end process p_count;
	
	r_next <= (others => '0') when r_reg=(g_mod-1) else r_reg + 1;
	o_count<= std_logic_vector(r_reg);
	o_max_tick <= '1' when r_reg=(g_mod-1) else '0';
end arch;