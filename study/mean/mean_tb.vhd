 library ieee;
 use ieee.std_logic_1164.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;
 
 library rna_library;
 use rna_library.data_types_pkg.all;
 
 entity mean_tb is
 end mean_tb;
 
 architecture bhv of mean_tb is
 
 signal r_clk 		: std_logic := '0';
 signal r_enable	: std_logic := '0';
 signal r_input	: std_logic_vector(15 downto 0) := (others => '0');
 signal r_result	: std_logic_vector(15 downto 0) := (others => '0');
 signal r_done		: std_logic := '0';
 
 component mean is
 	generic(
		g_bits			: natural := c_bits;
		g_fxp_high		: natural := c_fxp_high;
		g_fxp_low		: integer := c_fxp_low;
		g_frame_size	: natural := 10);
		
	port(
		i_clk		: in std_logic;
		i_enable	: in std_logic;
		i_input	: in std_logic_vector(g_bits-1 downto 0);
		o_result	: out std_logic_vector(g_bits-1 downto 0);
		o_done	: out std_logic);
 end component;
 
 begin 
	
	dut : mean port map(r_clk, r_enable, r_input, r_result, r_done);
	
	r_clk <= not r_clk after 20 ns;
	
	p_test : process
	begin
		wait until rising_edge(r_clk);
		r_enable <= '1';
		r_input  <= "0000000111011010";
		
		wait until rising_edge(r_clk);
		r_input  <= "0000001010100110";
		
		wait until rising_edge(r_clk);
		r_input  <= "0000000110000000";
		
		wait until rising_edge(r_clk);
		r_input  <= "0000011100101110";
		
		wait until rising_edge(r_clk);
		r_input  <= "0000011010101110";
		
		wait until rising_edge(r_clk);
		r_input  <= "0000100000011101";
		
		wait until rising_edge(r_clk);
		r_input  <= "0000011100111100";
		
		wait until rising_edge(r_clk);
		r_input  <= "0000001110110001";
		
		wait until rising_edge(r_clk);
		r_input  <= "0000110010001110";
		
		wait until rising_edge(r_clk);
		r_input  <= "0000110011100001";
		
		wait until rising_edge(r_clk);
		
		wait until r_done = '1';
		r_enable <= '0';
		
		assert false report "Test finished." severity failure;
		
	end process p_test;
 
 end bhv;