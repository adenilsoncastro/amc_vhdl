 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;
 
 library work;
 use work.all;
 
 entity neuron_tb is
 end neuron_tb;
 
 architecture bhv of neuron_tb is
 
 signal r_clk 		: std_logic 							:= '0';
 signal r_rst		: std_logic								:= '0';
 signal r_enable	: std_logic								:= '0';
 signal r_mac_done: std_logic								:= '0';
 signal r_done		: std_logic								:= '0';
 signal r_fxp_in	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_out	: std_logic_vector(15 downto 0)	:= (others => '0'); 
 
 component neuron is
	generic(
		g_bits_data	: natural := 16;
		g_fxp_high	: natural := 4;
		g_fxp_low	: integer := -11);
	
	port(
		i_clk			: in std_logic;
		i_rst			: in std_logic;
		i_enable		: in std_logic;
		o_mac_done	: out std_logic;
		o_done		: out std_logic;
		i_fxp_data	: in std_logic_vector((g_bits_data-1) downto 0);		
		o_fxp_data	: out std_logic_vector((g_bits_data -1) downto 0));
 end component neuron;
 
 begin
 
 dut : neuron port map(r_clk, r_rst, r_enable, r_mac_done, r_done, r_fxp_in, r_fxp_out);
 
 r_clk <= not r_clk after 20 ns;
 
 p_test : process
 begin
 
 r_enable <= '1';
 r_fxp_in <= "0000000000000010"; 
 wait until r_mac_done = '1';
 wait until rising_edge(r_clk);
 
 r_fxp_in <= "0000011111101101";
 wait until r_mac_done = '1';
 wait until rising_edge(r_clk);
 
 r_fxp_in 		<= "0000000000110001";
 wait until r_mac_done = '1';
 wait until rising_edge(r_clk);
 
 r_fxp_in 		<= "0000000000101011";
 wait until r_mac_done = '1';
 wait until rising_edge(r_clk);
 
 r_fxp_in 		<= "0000000000101101";
 wait until r_mac_done = '1';
 wait until rising_edge(r_clk);
 
 r_fxp_in 		<= "0000000100000101";
 wait until r_mac_done = '1';
 wait until rising_edge(r_clk);
 
 wait until r_done = '1';
 wait until rising_edge(r_clk);
 r_rst <= '1';
 r_enable <= '0';
 wait until rising_edge(r_clk);
 r_rst <= '0';
 wait for 50 ns;
 
 assert false report "Test finished." severity failure;
 end process p_test;
 
 end bhv;