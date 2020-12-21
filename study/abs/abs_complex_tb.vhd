 library ieee;
 use ieee.std_logic_1164.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;
 
 library rna_library;
 use rna_library.data_types_pkg.all;
 
 entity abs_complex_tb is
 end abs_complex_tb;
 
 architecture bhv of abs_complex_tb is
 
 signal r_clk 		: std_logic := '0';
 signal r_enable 	: std_logic := '0';
 signal r_real		: std_logic_vector(15 downto 0) := (others => '0');
 signal r_img		: std_logic_vector(15 downto 0) := (others => '0');
 signal r_result	: std_logic_vector(15 downto 0) := (others => '0');
 signal r_done 	: std_logic := '0';
 
 
 component abs_complex is
	port(
		i_clk				: in std_logic;
		i_enable			: in std_logic;
		i_real			: in std_logic_vector(15 downto 0);
		i_img				: in std_logic_vector(15 downto 0);
		o_done			: out std_logic;
		o_complex		: out std_logic_vector(15 downto 0));
 end component;
 
 
 begin
 
 dut : abs_complex port map(r_clk, r_enable, r_real, r_img, r_done, r_result);
 
 r_clk <= not r_clk after 20 ns;
 
 p_test : process
 begin
	 r_real 	<= "0000000110010011";
	 r_img	<= "1111110001111101";
	 
	 r_enable <= '1';
	 wait until r_done = '1';
	 r_enable <= '0';
	 
	assert false report "Test finished" severity failure;
 
 end process p_test;
 
 end bhv;