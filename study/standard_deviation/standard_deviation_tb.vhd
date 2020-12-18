 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_textio.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;

 library std;
 use std.textio.all;
 
 library amc_library;
 use amc_library.data_types_pkg.all;
 
 entity standard_deviation_tb is
 end standard_deviation_tb;
 
 architecture bhv of standard_deviation_tb is
 
	signal r_clk 		: std_logic := '0';
	signal r_enable	: std_logic := '0';
	signal r_rst		: std_logic := '0';
	signal r_input		: std_logic_vector(15 downto 0) := (others => '0');
	signal r_mean		: std_logic_vector(15 downto 0) := (others => '0');
	signal r_result	: std_logic_vector(15 downto 0) := (others => '0');
	signal r_pdone		: std_logic := '0'; 
	signal r_done		: std_logic := '0'; 
	
	file f_data	: text open read_mode is "QPSK_abs_complex_bin.txt";
	
	component standard_deviation is
		generic(
			g_bits			: natural := c_bits;
			g_fxp_high		: natural := c_fxp_high;
			g_fxp_low		: integer := c_fxp_low;
			g_frame_size	: natural := 10);
		port(
			i_clk		: in std_logic;
			i_rst		: in std_logic;
			i_enable	: in std_logic;
			i_input	: in std_logic_vector(g_bits-1 downto 0);
			i_mean	: in std_logic_vector(g_bits-1 downto 0);
			o_pdone	: out std_logic;
			o_result	: out std_logic_vector(g_bits-1 downto 0);
			o_done	: out std_logic);
	end component;
	
	begin
		
		dut : standard_deviation port map(r_clk, r_rst, r_enable, r_input, r_mean, r_pdone, r_result, r_done);
		r_clk <= not r_clk after 20 ns;
		
		r_mean <= "0000011001101111";
		
		p_test : process
		variable v_line : line;
		variable v_data : std_logic_vector(15 downto 0);
		
		begin
			wait until rising_edge(r_clk);
			r_enable <= '1';
			wait until rising_edge(r_clk);
			
			while not endfile(f_data) loop
				readline(f_data, v_line);
				read(v_line, v_data);
				
				r_input <= v_data;
				wait until r_pdone = '1';
			end loop;
			
			wait until rising_edge(r_clk);			
		   wait until r_done = '1';
		   wait until rising_edge(r_clk);			
		   r_enable <= '0';
		   
		   file_close(f_data);
		   
		   assert false report "Test finished." severity failure;
		end process p_test; 
 end bhv;