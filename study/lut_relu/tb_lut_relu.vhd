library ieee;
use ieee.std_logic_1164.all;

--library ieee_proposed;
--use ieee_proposed.fixed_pkg.all;

use ieee.fixed_pkg.all;

entity tb_lut_relu is
end tb_lut_relu;

architecture bhv of tb_lut_relu is
component lut_relu is
	generic(
		g_bits		: natural := 16;
		g_fxp_high	: natural := 4;
		g_fxp_low	: integer := -11);
	port(
		i_clk			: in std_logic;
		i_enable		: in std_logic;
		i_value		: in std_logic_vector(g_bits-1 downto 0);
		o_result 	: out std_logic_vector(g_bits-1 downto 0));
end component;

type test_array is array (0 to 9) of std_logic_vector(15 downto 0);
 constant t_array : test_array := ("1000000000000000", "1000001000000000", "1000001100000000", "1000010000000000", "1000010100000000", 
												"0010011000000000", "0000011100000000", "0000100000000000", "0000100100000000", "0000101000000000");
									

 signal r_clk		: std_logic := '0';
 signal r_enable	: std_logic := '0';
 signal r_in   	: std_logic_vector(15 downto 0); 
 signal r_out  	: std_logic_vector(15 downto 0);


begin 
 r_clk <= not r_clk after 20 ns;
 DUT : lut_relu port map (r_clk, r_enable, r_in, r_out);

 p_test : process
 begin
	 r_enable <= '1';
	 for i in 0 to 255 loop
		  r_in <= t_array(i);
		  wait until rising_edge(r_clk);
	 end loop;
	 wait until rising_edge(r_clk);
	 r_enable <= '0';
	 assert false report "Test finished" severity failure;
 end process p_test;
end bhv;