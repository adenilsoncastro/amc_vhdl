 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_textio.all;
 use ieee.numeric_std.all;

 library std;
 use std.textio.all;
 
 entity amc_tb is
 end amc_tb;
 
 architecture bhv of amc_tb is
 
 signal r_clk		: std_logic := '0';
 signal r_rst		: std_logic := '0';
 signal r_enable	: std_logic := '0';
 signal r_ft_0		: std_logic_vector(15 downto 0) := (others => '0');
 signal r_ft_1		: std_logic_vector(15 downto 0) := (others => '0');
 signal r_ft_2		: std_logic_vector(15 downto 0) := (others => '0');
 signal r_ft_3		: std_logic_vector(15 downto 0) := (others => '0');
 signal r_ft_4		: std_logic_vector(15 downto 0) := (others => '0');
 signal r_ft_5		: std_logic_vector(15 downto 0) := (others => '0');
 signal r_done		: std_logic := '0';
 signal r_result 	: std_logic_vector(6 downto 0)  := (others => '0');
 
 file f_result : text open write_mode is "result.txt";
 
 component amc is
 	generic(
		g_bits		: natural := 16;
		g_fxp_high	: natural := 4;
		g_fxp_low	: integer := -11);
		
	port(
		i_clk			: in std_logic;
		i_rst			: in std_logic;
		i_enable		: in std_logic;
		i_ft_0		: in std_logic_vector(g_bits-1 downto 0);
		i_ft_1		: in std_logic_vector(g_bits-1 downto 0);
		i_ft_2		: in std_logic_vector(g_bits-1 downto 0);
		i_ft_3		: in std_logic_vector(g_bits-1 downto 0);
		i_ft_4		: in std_logic_vector(g_bits-1 downto 0);
		i_ft_5		: in std_logic_vector(g_bits-1 downto 0);
		o_done		: out std_logic;
		o_result		: out std_logic_vector(6 downto 0));
 end component;
 
 begin
 
 dut : amc port map(r_clk, r_rst, r_enable, r_ft_0, r_ft_1, r_ft_2, r_ft_3, r_ft_4, r_ft_5, r_done, r_result);
 
 r_clk <= not r_clk after 20 ns;
 
 p_test : process
 variable v_line : line;
 begin
	r_ft_0 <= "0000000000000010";
	r_ft_1 <= "0000011111101101";
	r_ft_2 <= "0000000000110001";
	r_ft_3 <= "0000000000101011";
	r_ft_4 <= "0000000000101101";
	r_ft_5 <= "0000000100000101";
	
	wait until rising_edge(r_clk);
	r_enable <= '1';
	
	wait until r_done = '1';
	wait until rising_edge(r_clk);
	r_enable <= '0';
	r_rst <= '1';
	wait until rising_edge(r_clk);
	
	write(v_line, string'("result = ["));
	write(v_line, r_result);
	write(v_line, string'("]"));
	writeline(f_result, v_line);
	file_close(f_result);
	
	if r_result = "0000110" then
		report "Test passed - Modulation classified as 16QAM." severity note;
	else
		report "Teste failed - Modulation not classified as 16QAM." severity note;
	end if;
	
	assert false report "Test finished." severity failure;
		
 end process p_test;
 
 end bhv;