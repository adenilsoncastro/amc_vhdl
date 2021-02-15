 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_textio.all;
 use ieee.numeric_std.all;

 library std;
 use std.textio.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;
 
 library amc_library;
 use amc_library.data_types_pkg.all;

 --library modelsim_lib;
 --use modelsim_lib.util.all;
 
 entity features_tb is
 end features_tb;
 
 architecture bhv of features_tb is
 
 signal r_clk 		: std_logic := '0';
 signal r_rst 		: std_logic := '0';
 signal r_enable 	: std_logic := '0';
 signal r_input 	: std_logic_vector(15 downto 0);
 signal r_ft_0		: std_logic_vector(15 downto 0);
 signal r_ft_1		: std_logic_vector(15 downto 0);
 signal r_ft_2		: std_logic_vector(15 downto 0);
 signal r_ft_3		: std_logic_vector(15 downto 0);
 signal r_ft_4		: std_logic_vector(15 downto 0);
 signal r_ft_5		: std_logic_vector(15 downto 0);
 signal r_done		: std_logic := '0';

 file f_abs_result 				: text open write_mode is "abs_complex_result.txt";
 file f_mean_result				: text open write_mode is "mean_result.txt";
 file f_std_cn_amp_result		: text open write_mode is "std_cn_amp_result.txt";
 
 signal r_abs_result 			: std_logic_vector(15 downto 0);
 signal r_mean_result			: std_logic_vector(15 downto 0);
 signal r_std_cn_amp_result 	: std_logic_vector(15 downto 0);
 
 component features is
 	generic(
		g_bits			: natural := c_bits;
		g_fxp_high		: natural := c_fxp_high;
		g_fxp_low		: integer := c_fxp_low;
		g_frame_size	: natural := c_frame_size);	
	port(
		i_clk		: in std_logic;
		i_rst		: in std_logic;
		i_enable	: in std_logic;
		i_input 	: in std_logic_vector(g_bits-1 downto 0);
		o_ft_0	: out std_logic_vector(g_bits-1 downto 0);
		o_ft_1	: out std_logic_vector(g_bits-1 downto 0);
		o_ft_2	: out std_logic_vector(g_bits-1 downto 0);
		o_ft_3	: out std_logic_vector(g_bits-1 downto 0);
		o_ft_4	: out std_logic_vector(g_bits-1 downto 0);
		o_ft_5	: out std_logic_vector(g_bits-1 downto 0);
		o_done	: out std_logic);
 end component;
 
 begin
 
 dut : features port map(r_clk, r_rst, r_enable, r_input, r_ft_0, r_ft_1, r_ft_2, r_ft_3, r_ft_4, r_ft_5, r_done);
 r_clk <= not r_clk after 10 ns;
 
 p_test : process
 begin
	wait until rising_edge(r_clk);
	r_enable <= '1';
	wait until rising_edge(r_clk);
	r_enable <= '0';
	
	wait until r_done = '1';
	wait until rising_edge(r_clk);
	wait for 50 ns;
	
 	assert false report "Test finished" severity failure;
 end process p_test;

 p_write_file_abs : process (r_abs_result)
 variable v_line : line;
 begin
	write(v_line, r_abs_result);
	writeline(f_abs_result, v_line);
 end process p_write_file_abs;

 p_write_file_mean : process(r_mean_result)
 variable v_line : line;
 begin
	write(v_line, r_mean_result);
	writeline(f_mean_result, v_line);
 end process p_write_file_mean;
 
 p_write_file_std_cn_amp : process (r_std_cn_amp_result)
 variable v_line : line;
 begin
	write(v_line, r_std_cn_amp_result);
	writeline(f_std_cn_amp_result, v_line);
 end process p_write_file_std_cn_amp;

-- p_spy : process
-- begin
--	init_signal_spy("/features_tb/dut/r_abs_result", "/r_abs_result",1,1);
--	init_signal_spy("/features_tb/dut/r_mean_result", "/r_mean_result",1,1);
--	init_signal_spy("/features_tb/dut/r_std_cn_result", "/r_std_cn_amp_result",1,1);
--	wait;
-- end process p_spy;
 
 end bhv;