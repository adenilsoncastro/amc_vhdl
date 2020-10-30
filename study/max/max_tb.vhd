 library ieee;
 use ieee.std_logic_1164.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;
 
 entity max_tb is
 end max_tb;
 
 architecture bhv of max_tb is
 
 signal r_enable 		: std_logic := '0';
 signal r_neuron_1 	: std_logic_vector(15 downto 0) := (others => '0');
 signal r_neuron_2 	: std_logic_vector(15 downto 0) := (others => '0');
 signal r_neuron_3 	: std_logic_vector(15 downto 0) := (others => '0');
 signal r_neuron_4 	: std_logic_vector(15 downto 0) := (others => '0');
 signal r_neuron_5 	: std_logic_vector(15 downto 0) := (others => '0');
 signal r_result		: std_logic_vector(6 downto 0)  := (others => '0');
 constant g_bits		: natural := 16;
 
 component max is
	port(
		i_enable		: in std_logic;
		i_neuron_1	: in std_logic_vector(g_bits-1 downto 0);
		i_neuron_2	: in std_logic_vector(g_bits-1 downto 0);
		i_neuron_3	: in std_logic_vector(g_bits-1 downto 0);
		i_neuron_4	: in std_logic_vector(g_bits-1 downto 0);
		i_neuron_5	: in std_logic_vector(g_bits-1 downto 0);
		o_result		: out std_logic_vector(6 downto 0));
 end component;
 
 begin
 
 max_function : max port map(r_enable, r_neuron_1, r_neuron_2, r_neuron_3, r_neuron_4, r_neuron_5, r_result);
 
	 p_test : process is
	 begin
		 wait for 10ns;
		 r_enable <= '1';
		 wait for 10ns;
		 r_enable <= '0';
		 wait for 10ns; 
		 r_neuron_1 <= "0000000000000001";
		 r_enable <= '1';
		 wait for 10ns;
		 r_enable <= '0';
		 r_neuron_1 <= "0000000000000000";
		 wait for 10ns;
		 
		 r_neuron_2 <= "0000000000000001";
		 r_enable <= '1';
		 wait for 10ns;
		 r_enable <= '0';
		 r_neuron_2 <= "0000000000000000";
		 wait for 10ns;
		 
		 r_neuron_3 <= "0000000000000001";
		 r_enable <= '1';
		 wait for 10ns;
		 r_enable <= '0';
		 r_neuron_3 <= "0000000000000000";
		 wait for 10ns;
		 
		 r_neuron_4 <= "0000000000000001";
		 r_enable <= '1';
		 wait for 10ns;
		 r_enable <= '0';
		 r_neuron_4 <= "0000000000000000";
		 wait for 10ns;
		 
		 r_neuron_5 <= "0000000000000001";
		 r_enable <= '1';
		 wait for 10ns;
		 r_enable <= '0';
		 r_neuron_5 <= "0000000000000000";
		 wait for 10ns;
		 
		 r_neuron_1 <= "0000000000000011";
		 r_neuron_2 <= "0000000000000010";
		 r_enable <= '1';
		 wait for 10ns;
		 r_enable <= '0';
		 r_neuron_1 <= "0000000000000000";
		 r_neuron_2 <= "0000000000000000";
		 wait for 10ns;
		 
		 assert false report "Tests completed." severity failure;
	 end process p_test;
 
 end bhv;