 library ieee;
 use ieee.std_logic_1164.all;

 entity mac_tb is 
 end mac_tb;
 
 architecture bhv of mac_tb is
 
 constant period 	: time := 20 ns;
 signal r_clk		: std_logic := '0';
 signal r_rst		: std_logic	:= '0';
 signal r_enable	: std_logic := '0';
 signal r_done		: std_logic := '0';
 signal r_data		: std_logic_vector(15 downto 0) := (others => '0');
 signal r_weight	: std_logic_vector(15 downto 0) := (others => '0');
 signal r_result	: std_logic_vector(15 downto 0) := (others => '0');
 
component mac is
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
		o_done		: out std_logic;
 		o_data		: out std_logic_vector(g_bits-1 downto 0));
 end component;
 
 begin
 
 multiply_add : mac port map(r_clk, r_rst, r_enable, r_data, r_weight, r_done, r_result);
 
 r_clk <= not r_clk after period;
 
 p_test : process is
 begin

	r_data 		<= "0000000000000010";
	r_weight 	<= "1110111100111010";
	wait until rising_edge(r_clk);
	r_enable 	<= '1';
	wait until rising_edge(r_clk);
	r_enable 	<= '0';
	
	wait until rising_edge(r_clk);

	r_data 		<= "0000011111101101";
	r_weight 	<= "0000000010000100";
	r_enable 	<= '1';
	wait until rising_edge(r_clk);
	r_enable	<= '0';

	
	wait until rising_edge(r_clk);

	r_data 		<= "0000000000110001";
	r_weight 	<= "0000000001110000";
	r_enable 	<= '1';
	wait until rising_edge(r_clk);
	r_enable	<= '0';
	
	wait until rising_edge(r_clk);

	r_data 		<= "0000000000101011";
	r_weight 	<= "0000000010011101";
	r_enable 	<= '1';
	wait until rising_edge(r_clk);
	r_enable	<= '0';
	
	wait until rising_edge(r_clk);

	r_data 		<= "0000000000101101";
	r_weight 	<= "1111111000111000";
	r_enable 	<= '1';
	wait until rising_edge(r_clk);
	r_enable	<= '0';
	
	wait until rising_edge(r_clk);

	r_data 		<= "0000000100000101";
	r_weight 	<= "1111111111110111";
	r_enable 	<= '1';
	wait until rising_edge(r_clk);
	r_enable	<= '0';
	
	wait until rising_edge(r_clk);
	r_rst 		<= '1';
	wait until rising_edge(r_clk);
	r_rst 		<= '0';
	
	assert false report "Tests completed." severity failure;
 end process p_test;
 
 end bhv;