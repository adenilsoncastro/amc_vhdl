 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all; 
 
 entity mac is
	generic(
		g_bits		: natural := 16;
		g_fxp_high	: natural := 4;
		g_fxp_low	: integer := -11);
		
	port(
		i_clk			: in std_logic;
		i_rst			: in std_logic;
		i_enable		: in std_logic;
		i_data		: in std_logic_vector(g_bits-1 downto 0);
		i_weight		: in std_logic_vector(g_bits-1 downto 0);
		o_data		: out std_logic_vector(g_bits-1 downto 0));
 end mac;
 
 architecture bhv of mac is
 
 signal r_mult			: sfixed(g_fxp_high downto g_fxp_low) := (others => '0');
 signal r_data_out	: sfixed(g_fxp_high downto g_fxp_low) := (others => '0');
 
 begin
 
 p_add : process (i_clk, i_rst)
 begin
	if i_rst = '1' then
		r_data_out <= (others => '0');
	elsif rising_edge(i_clk) then
		if i_enable = '1' then
			r_data_out <= resize(r_data_out + r_mult, g_fxp_high, g_fxp_low);
		end if;
	end if;
 end process p_add;
 
 r_mult <= resize(to_sfixed(i_weight, g_fxp_high, g_fxp_low) * to_sfixed(i_data, g_fxp_high, g_fxp_low), g_fxp_high, g_fxp_low);
 o_data <= to_slv(r_data_out);
 
 end bhv;