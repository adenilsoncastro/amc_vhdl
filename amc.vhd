 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
  
 library amc_library;
 use amc_library.data_types_pkg.all;
 
 entity amc is
	generic(
		g_bits		: natural := c_bits;
		g_fxp_high	: natural := c_fxp_high;
		g_fxp_low	: integer := c_fxp_low);
		
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
 end amc;
 
 architecture bhv of amc is
 
 type t_sm is (s_idle, s_layer_0, s_layer_1, s_layer_2, s_layer_3, s_layer_4, s_result, s_clear);
 signal r_sm : t_sm := s_idle;
 
 signal r_layer_0_done : std_logic := '0';
 

 
 begin
 layer0 : layer_0 port map(i_clk, i_rst, i_enable, i_ft_0, r_layer_0_done, open, o_class_0, open,open,open,open,open);
 
 end bhv;