  library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_textio.all;
 use ieee.numeric_std.all;

 library std;
 use std.textio.all;
 
 entity layer_l3_tb is
 end layer_l3_tb;
 
 architecture bhv of layer_l3_tb is
 
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
 signal r_fxp_n6	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_n7	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_n8	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_n9	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_n10	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_n11	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_n12	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_n13	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_n14	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_n15	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_n16	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_n17	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_n18	: std_logic_vector(15 downto 0)	:= (others => '0');
 signal r_fxp_n19	: std_logic_vector(15 downto 0)	:= (others => '0');

 file f_result : text open write_mode is "result.txt";
 
 component layer_l3 is
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
		o_fxp_n0 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n1 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n2 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n3 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n4 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n5 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n6 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n7 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n8 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n9 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n10 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n11 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n12 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n13 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n14 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n15 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n16 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n17 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n18 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n19 : out std_logic_vector(g_bits-1 downto 0));
 end component;
 
 begin

 dut : layer_l3 port map(r_clk, r_rst, r_enable, r_fxp_in, r_mac_done, r_done,
										r_fxp_n0, r_fxp_n1, r_fxp_n2, r_fxp_n3, 
										r_fxp_n4, r_fxp_n5, r_fxp_n6, r_fxp_n7, 
										r_fxp_n8, r_fxp_n9, r_fxp_n10, r_fxp_n11,
										r_fxp_n12, r_fxp_n13, r_fxp_n14, r_fxp_n15, 
										r_fxp_n16, r_fxp_n17, r_fxp_n18, r_fxp_n19);
 
 r_clk <= not r_clk after 20 ns;
 
 p_test : process
	variable v_line : line;
	begin	
		r_enable <= '1';
		r_fxp_in <= "0000011011100011"; 
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		r_fxp_in <= "1111101100110110";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		r_fxp_in <= "0000011000111111";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		r_fxp_in <= "0000011111100111";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		r_fxp_in <= "1111100110110011";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);
		
		r_fxp_in <= "1111110110110101";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111100110100001";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000011111001110";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111110010100101";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000011011000100";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000010011000101";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000001000000011";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111101101001011";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111100000000011";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111100011110000";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000001011000010";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111111101010111";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000010001101100";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111100000001110";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000011000110100";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000011010100011";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "0000000101011101";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111100000010011";
		wait until r_mac_done = '1';
		wait until rising_edge(r_clk);

		r_fxp_in <= "1111110011010000";
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
		write(v_line, r_fxp_n0);
		write(v_line, string'(","));
		write(v_line, r_fxp_n1);
		write(v_line, string'(","));
		write(v_line, r_fxp_n2);
		write(v_line, string'(","));
		write(v_line, r_fxp_n3);
		write(v_line, string'(","));
		write(v_line, r_fxp_n4);
		write(v_line, string'(","));
		write(v_line, r_fxp_n5);
		write(v_line, string'(","));
		write(v_line, r_fxp_n6);
		write(v_line, string'(","));
		write(v_line, r_fxp_n7);
		write(v_line, string'(","));
		write(v_line, r_fxp_n8);
		write(v_line, string'(","));
		write(v_line, r_fxp_n9);
		write(v_line, string'(","));
		write(v_line, r_fxp_n10);
		write(v_line, string'(","));
		write(v_line, r_fxp_n11);
		write(v_line, string'(","));
		write(v_line, r_fxp_n12);
		write(v_line, string'(","));
		write(v_line, r_fxp_n13);
		write(v_line, string'(","));
		write(v_line, r_fxp_n14);
		write(v_line, string'(","));
		write(v_line, r_fxp_n15);
		write(v_line, string'(","));
		write(v_line, r_fxp_n16);
		write(v_line, string'(","));
		write(v_line, r_fxp_n17);
		write(v_line, string'(","));
		write(v_line, r_fxp_n18);
		write(v_line, string'(","));
		write(v_line, r_fxp_n19);
		write(v_line, string'("]"));
		writeline(f_result, v_line);
		file_close(f_result);
		
		assert false report "Test finished." severity failure;
		
	end process p_test;
end bhv; 