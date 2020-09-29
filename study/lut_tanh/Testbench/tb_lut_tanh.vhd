 library ieee;
 use ieee.std_logic_1164.all;
 
 --library ieee_proposed;
 --use ieee_proposed.fixed_pkg.all;
 
 use ieee.fixed_pkg.all;
 
 entity tb_lut_tanh is
 end tb_lut_tanh;
 
 architecture bhv of tb_lut_tanh is
 
 component lut_tanh is
	port( 
		i_lut : in std_ulogic_vector(7 downto 0);
		o_lut : out std_ulogic_vector(7 downto 0));
 end component;
 
 signal r_in  : std_ulogic_vector(7 downto 0);
 signal r_out : std_ulogic_vector(7 downto 0);
 
 begin
 
 DUT : lut_tanh port map (r_in, r_out);
 
	 p_test : process
	 begin

		r_in <= "10000000";
		wait for 5ns;
		r_in <= "11010110";
		wait for 5ns;
	 end process p_test;
 
 end bhv;