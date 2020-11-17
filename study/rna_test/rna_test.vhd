 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;
 
 library rna_library;
 use rna_library.data_types_pkg.all;
 
 
 entity rna_test is
	generic(
		g_bits		: c_bits;
		g_fxp_high	: c_fxp_high;
		g_fxp_low	: c_fxp_low);
		
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
		o_class_0	: out std_logic_vector(g_bits-1 downto 0);
		o_class_1	: out std_logic_vector(g_bits-1 downto 0);
		o_class_2	: out std_logic_vector(g_bits-1 downto 0);
		o_class_3	: out std_logic_vector(g_bits-1 downto 0);
		o_class_4	: out std_logic_vector(g_bits-1 downto 0);
		o_class_5	: out std_logic_vector(g_bits-1 downto 0));
 end rna_test;
 
 architecture bhv of rna_test is