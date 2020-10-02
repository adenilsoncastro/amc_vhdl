 library ieee;
 use ieee.std_logic_1164.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all; 
 
 entity lut_relu is
	generic(
		g_bits	: natural := 8);
	port(
		i_value	: in std_logic_vector(g_bits-1 downto 0);
		o_result : out std_logic_vector(g_bits-1 downto 0));
 end lut_relu;
 
 architecture bhv of lut_relu is
 
 signal r_value 	: sfixed(2 downto -5);
 signal r_out 		: std_logic_vector(g_bits-1 downto 0);
 constant zero 	: sfixed(2 downto -5) := "00000000";
 
 begin
	 p_func : process (i_value)
	 begin
		r_value <= to_sfixed(i_value, r_value'high, r_value'low);

		if r_value > zero then r_out <= to_slv(r_value);
		else r_out <= to_slv(zero);
		end if;
	 end process p_func;
 o_result <= r_out;
 end bhv;