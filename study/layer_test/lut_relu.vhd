 library ieee;
 use ieee.std_logic_1164.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all; 
 
 entity lut_relu is
	generic(
		g_bits		: natural := 16;
		g_fxp_high	: natural := 4;
		g_fxp_low	: integer := -11);
	port(
		i_clk			: in std_logic;
		i_enable		: in std_logic;
		i_value		: in std_logic_vector(g_bits-1 downto 0);
		o_result 	: out std_logic_vector(g_bits-1 downto 0));
 end lut_relu;
 
 architecture bhv of lut_relu is
 
 signal r_value 	: sfixed(g_fxp_high downto g_fxp_low) := (others => '0');
 signal r_out 		: std_logic_vector(g_bits-1 downto 0) := (others => '0');
 constant zero 	: sfixed(g_fxp_high downto g_fxp_low) := (others => '0');
 
 begin
	 p_func : process (i_clk, i_enable, i_value)
	 begin
		if rising_edge(i_clk) then
			if i_enable = '1' then
				if r_value > zero then r_out <= to_slv(r_value);
				else r_out <= to_slv(zero);
				end if;
			else
				r_out <= (others => '0');
			end if;
		end if;
	 end process p_func;
 r_value <= to_sfixed(i_value, r_value'high, r_value'low);
 o_result <= r_out;
 end bhv;