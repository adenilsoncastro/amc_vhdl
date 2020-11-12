 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 entity layer_teste_tb is
 end layer_teste_tb;
 
 architecture rtl of layer_teste_tb is
 
 signal r_clk		: std_logic := '0';
 signal r_rst		: std_logic := '0';
 signal r_enable	: std_logic := '0';
 signal r_fxp_in	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_mac_done: std_logic := '0';
 signal r_done		: std_logic := '0';
 signal r_fxp_n0	: std_logic_vector(15 downto 0)	:= (others => '0'); 
 signal r_fxp_n1	: std_logic_vector(15 downto 0)	:= (others => '0'); 
 signal r_fxp_n2	: std_logic_vector(15 downto 0)	:= (others => '0'); 
 signal r_fxp_n3	: std_logic_vector(15 downto 0)	:= (others => '0'); 
 signal r_fxp_n4	: std_logic_vector(15 downto 0)	:= (others => '0'); 
 signal r_fxp_n5	: std_logic_vector(15 downto 0)	:= (others => '0'); 
 
 component layer_test is
	generic(
		g_bits		: natural := 16;
		g_fxp_high	: natural := 4;
		g_fxp_low	: integer := -11);
	port(
		i_clk			: in std_logic;
		i_rst			: in std_logic;
		i_enable		: in std_logic;
		i_fxp			: in std_logic_vector(g_bits-1 downto 0);
		o_mac_done	: out std_logic;
		o_done		: out std_logic;
		o_fxp_n0		: out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n1		: out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n2		: out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n3		: out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n4		: out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n5		: out std_logic_vector(g_bits-1 downto 0));
 end component;
 
 begin
	
	dut : layer_test port map(r_clk, r_rst, r_enable, r_fxp_in, r_mac_done, r_done, r_fxp_n0, r_fxp_n1, r_fxp_n2, r_fxp_n3, r_fxp_n4, r_fxp_n5);
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
		
		r_fxp_in <= "0000000000110001";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		r_fxp_in <= "0000000000101011";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		r_fxp_in <= "0000000000101101";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		r_fxp_in <= "0000000100000101";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		wait until r_done = '1';
		wait until rising_edge(r_clk);
		r_rst <= '1';
		r_enable <= '0';
		wait until rising_edge(r_clk);
		r_rst <= '0';
		wait for 60 ns;		
		
		assert false report "Test finished." severity failure;
		
	end process p_test;
 
 end rtl;