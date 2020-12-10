library ieee;
use ieee.std_logic_1164.all;

package data_types_pkg is
	
	--General constants
	constant c_bits 	: natural := 16;
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
	component layer_l0 is
		generic(
		g_bits		: natural := c_bits;
		g_fxp_high 	: natural := c_fxp_high;
		g_fxp_low 	: integer := c_fxp_low);
	port(
		i_clk			: in std_logic;
		i_rst			: in std_logic;
		i_enable		: in std_logic;
		i_fxp			: in std_logic_vector(g_bits-1 downto 0);
		o_mac_done	: out std_logic;
		o_done		: out std_logic;
		o_fxp_n0 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n1 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n2 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n3 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n4 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n5 : out std_logic_vector(g_bits-1 downto 0));
	end component;
	
	--Layer 1
	component layer_l1 is
		generic(
			g_bits           : natural := c_bits;
			g_fxp_high 	   : natural := c_fxp_high;
			g_fxp_low        : integer := c_fxp_low);
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
			o_fxp_n19 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n20 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n21 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n22 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n23 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n24 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n25 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n26 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n27 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n28 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n29 : out std_logic_vector(g_bits-1 downto 0));
	end component;
	
	--Layer 2
	component layer_l2 is
		generic(
			g_bits           : natural := c_bits;
			g_fxp_high 	   : natural := c_fxp_high;
			g_fxp_low        : integer := c_fxp_low);
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
			o_fxp_n19 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n20 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n21 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n22 : out std_logic_vector(g_bits-1 downto 0);
			o_fxp_n23 : out std_logic_vector(g_bits-1 downto 0));
	end component;
	
	--Layer 3
	component layer_l3 is
		generic(
			g_bits           : natural := c_bits;
			g_fxp_high 	   : natural := c_fxp_high;
			g_fxp_low        : integer := c_fxp_low);
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
	
	--Layer 4
	component layer_l4 is
		generic(
		g_bits		: natural := c_bits;
		g_fxp_high	: natural := c_fxp_high;
		g_fxp_low   : integer := c_fxp_low);
	port(
		i_clk			: in std_logic;
		i_rst       : in std_logic;
		i_enable    : in std_logic;
		i_fxp       : in std_logic_vector(g_bits-1 downto 0);
		o_mac_done  : out std_logic;
		o_done      : out std_logic;
		o_result		: out std_logic_vector(6 downto 0));
	end component;
	
end package data_types_pkg;