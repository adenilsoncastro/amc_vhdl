 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_textio.all;
 use ieee.numeric_std.all;

 library std;
 use std.textio.all;
 
 entity layer_l4_tb is
 end layer_l4_tb;
 
 architecture bhv of layer_l4_tb is
 
 signal r_clk		: std_logic := '0';
 signal r_rst		: std_logic := '0';
 signal r_enable	: std_logic := '0';
 signal r_fxp_in	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_mac_done: std_logic := '0';
 signal r_done		: std_logic := '0';
 signal r_result	: std_logic_vector(6 downto 0)	:= (others => '0');


 file f_result : text open write_mode is "result.txt";
 
 component layer_l4 is
	generic(
		g_bits           : natural := 16;
		g_fxp_high 	   : natural := 4;
		g_fxp_low        : integer := -11);
	port(
		i_clk			: in std_logic;
		i_rst         : in std_logic;
		i_enable      : in std_logic;
		i_fxp         : in std_logic_vector(g_bits-1 downto 0);
		o_mac_done    : out std_logic;
		o_done        : out std_logic;
		o_result			: out std_logic_vector(6 downto 0));
 end component;
 
 begin

 dut : layer_l4 port map(r_clk, r_rst, r_enable, r_fxp_in, r_mac_done, r_done, r_result);
 
 r_clk <= not r_clk after 20 ns;
 
 p_test : process
	variable v_line : line;
	begin	
		r_enable <= '1';
		r_fxp_in <= "1111100000001011"; 
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		r_fxp_in <= "0000011111111000";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		r_fxp_in <= "1111100000000001";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		r_fxp_in <= "1111100000000010";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		r_fxp_in <= "1111111001011010";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		r_fxp_in <= "0000011111111111";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111100000000100";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111100011001101";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111100000101000";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111100001101111";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000011111100000";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111100000101110";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000011111111111";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000011111111111";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000011111111111";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111100000001010";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000011111111010";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000011111111111";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000011111111111";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000011111111111";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);


		wait until r_done = '1';
		wait until rising_edge(r_clk);
		r_rst <= '1';
		r_enable <= '0';
		wait until rising_edge(r_clk);
		r_rst <= '0';
		wait for 60 ns;	
		
		write(v_line, string'("result = ["));
		write(v_line, r_result);
		write(v_line, string'(","));
		write(v_line, string'("]"));
		writeline(f_result, v_line);
		file_close(f_result);
		
		assert false report "Test finished." severity failure;
		
	end process p_test;
end bhv; 