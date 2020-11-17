library ieee;
use ieee.std_logic_1164.all;

package data_types_pkg is
	
	--General constants
	constant c_bits 		: natural := 16;
	constant c_fxp_high	: natural := 4;
	constant c_fxp_low	: integer := -11;

	-- Data types for features calculation
	type t_complex is record
		re			: std_logic_vector(15 downto 0);
		img		: std_logic_vector(15 downto 0);
	end record;
	
	type t_mod_data is array (0 to 5) of t_complex;
	
	type t_frame_data is array (0 to 5) of std_logic_vector(15 downto 0);
	
	--Layer 0
	component layer_0 is
		generic(
			g_bits		: natural := c_bits;
			g_fxp_high	: natural := c_fxp_high;
			g_fxp_low	: integer := c_fxp_low);
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
	
	
	component neuron_l1_n0 is
		generic(
			g_bits_data	: natural := c_bits;
			g_fxp_high	: natural := c_fxp_high;
			g_fxp_low	: integer := c_fxp_low);
		
		port(
			i_clk			: in std_logic;
			i_rst			: in std_logic;
			i_enable		: in std_logic;
			o_mac_done	: out std_logic;
			o_done		: out std_logic;
			i_fxp_data	: in std_logic_vector((g_bits_data-1) downto 0);		
			o_fxp_data	: out std_logic_vector((g_bits_data -1) downto 0));
	 end component neuron_l1_n0;
 
	 component neuron_l1_n1 is
		generic(
			g_bits_data	: natural := c_bits;
			g_fxp_high	: natural := c_fxp_high;
			g_fxp_low	: integer := c_fxp_low);
		
		port(
			i_clk			: in std_logic;
			i_rst			: in std_logic;
			i_enable		: in std_logic;
			o_mac_done	: out std_logic;
			o_done		: out std_logic;
			i_fxp_data	: in std_logic_vector((g_bits_data-1) downto 0);		
			o_fxp_data	: out std_logic_vector((g_bits_data -1) downto 0));
	 end component neuron_l1_n1;
	 
	 component neuron_l1_n2 is
		generic(
			g_bits_data	: natural := c_bits;
			g_fxp_high	: natural := c_fxp_high;
			g_fxp_low	: integer := c_fxp_low);
		
		port(
			i_clk			: in std_logic;
			i_rst			: in std_logic;
			i_enable		: in std_logic;
			o_mac_done	: out std_logic;
			o_done		: out std_logic;
			i_fxp_data	: in std_logic_vector((g_bits_data-1) downto 0);		
			o_fxp_data	: out std_logic_vector((g_bits_data -1) downto 0));
	 end component neuron_l1_n2;
	 
	 component neuron_l1_n3 is
		generic(
			g_bits_data	: natural := c_bits;
			g_fxp_high	: natural := c_fxp_high;
			g_fxp_low	: integer := c_fxp_low);
		
		port(
			i_clk			: in std_logic;
			i_rst			: in std_logic;
			i_enable		: in std_logic;
			o_mac_done	: out std_logic;
			o_done		: out std_logic;
			i_fxp_data	: in std_logic_vector((g_bits_data-1) downto 0);		
			o_fxp_data	: out std_logic_vector((g_bits_data -1) downto 0));
	 end component neuron_l1_n3;
	 
	 component neuron_l1_n4 is
		generic(
			g_bits_data	: natural := c_bits;
			g_fxp_high	: natural := c_fxp_high;
			g_fxp_low	: integer := c_fxp_low);
		
		port(
			i_clk			: in std_logic;
			i_rst			: in std_logic;
			i_enable		: in std_logic;
			o_mac_done	: out std_logic;
			o_done		: out std_logic;
			i_fxp_data	: in std_logic_vector((g_bits_data-1) downto 0);		
			o_fxp_data	: out std_logic_vector((g_bits_data -1) downto 0));
	 end component neuron_l1_n4;
	 
	 component neuron_l1_n5 is
		generic(
			g_bits_data	: natural := c_bits;
			g_fxp_high	: natural := c_fxp_high;
			g_fxp_low	: integer := c_fxp_low);
		
		port(
			i_clk			: in std_logic;
			i_rst			: in std_logic;
			i_enable		: in std_logic;
			o_mac_done	: out std_logic;
			o_done		: out std_logic;
			i_fxp_data	: in std_logic_vector((g_bits_data-1) downto 0);		
			o_fxp_data	: out std_logic_vector((g_bits_data -1) downto 0));
	 end component neuron_l1_n5;
	
	--Layer 1 neurons
end package data_types_pkg;