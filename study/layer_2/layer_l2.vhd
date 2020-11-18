library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ieee_proposed;
use ieee_proposed.fixed_pkg.all;

entity layer_l2 is
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
		o_fxp_n19 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n20 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n21 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n22 : out std_logic_vector(g_bits-1 downto 0);
		o_fxp_n23 : out std_logic_vector(g_bits-1 downto 0));
end layer_l2;

architecture bhv of layer_l2 is

	type t_sm is (s_idle, s_get_data, s_sinapse, s_wait_sinapse, s_wait_activation, s_clear);
	signal r_sm : t_sm := s_idle;

	signal r_enable_n0 : std_logic := '0';
	signal r_enable_n1 : std_logic := '0';
	signal r_enable_n2 : std_logic := '0';
	signal r_enable_n3 : std_logic := '0';
	signal r_enable_n4 : std_logic := '0';
	signal r_enable_n5 : std_logic := '0';
	signal r_enable_n6 : std_logic := '0';
	signal r_enable_n7 : std_logic := '0';
	signal r_enable_n8 : std_logic := '0';
	signal r_enable_n9 : std_logic := '0';
	signal r_enable_n10 : std_logic := '0';
	signal r_enable_n11 : std_logic := '0';
	signal r_enable_n12 : std_logic := '0';
	signal r_enable_n13 : std_logic := '0';
	signal r_enable_n14 : std_logic := '0';
	signal r_enable_n15 : std_logic := '0';
	signal r_enable_n16 : std_logic := '0';
	signal r_enable_n17 : std_logic := '0';
	signal r_enable_n18 : std_logic := '0';
	signal r_enable_n19 : std_logic := '0';
	signal r_enable_n20 : std_logic := '0';
	signal r_enable_n21 : std_logic := '0';
	signal r_enable_n22 : std_logic := '0';
	signal r_enable_n23 : std_logic := '0';

	signal r_mac_n0 : std_logic := '0';
	signal r_mac_n1 : std_logic := '0';
	signal r_mac_n2 : std_logic := '0';
	signal r_mac_n3 : std_logic := '0';
	signal r_mac_n4 : std_logic := '0';
	signal r_mac_n5 : std_logic := '0';
	signal r_mac_n6 : std_logic := '0';
	signal r_mac_n7 : std_logic := '0';
	signal r_mac_n8 : std_logic := '0';
	signal r_mac_n9 : std_logic := '0';
	signal r_mac_n10 : std_logic := '0';
	signal r_mac_n11 : std_logic := '0';
	signal r_mac_n12 : std_logic := '0';
	signal r_mac_n13 : std_logic := '0';
	signal r_mac_n14 : std_logic := '0';
	signal r_mac_n15 : std_logic := '0';
	signal r_mac_n16 : std_logic := '0';
	signal r_mac_n17 : std_logic := '0';
	signal r_mac_n18 : std_logic := '0';
	signal r_mac_n19 : std_logic := '0';
	signal r_mac_n20 : std_logic := '0';
	signal r_mac_n21 : std_logic := '0';
	signal r_mac_n22 : std_logic := '0';
	signal r_mac_n23 : std_logic := '0';
	signal r_mac_done : std_logic := '0';

	signal r_done_n0 : std_logic := '0';
	signal r_done_n1 : std_logic := '0';
	signal r_done_n2 : std_logic := '0';
	signal r_done_n3 : std_logic := '0';
	signal r_done_n4 : std_logic := '0';
	signal r_done_n5 : std_logic := '0';
	signal r_done_n6 : std_logic := '0';
	signal r_done_n7 : std_logic := '0';
	signal r_done_n8 : std_logic := '0';
	signal r_done_n9 : std_logic := '0';
	signal r_done_n10 : std_logic := '0';
	signal r_done_n11 : std_logic := '0';
	signal r_done_n12 : std_logic := '0';
	signal r_done_n13 : std_logic := '0';
	signal r_done_n14 : std_logic := '0';
	signal r_done_n15 : std_logic := '0';
	signal r_done_n16 : std_logic := '0';
	signal r_done_n17 : std_logic := '0';
	signal r_done_n18 : std_logic := '0';
	signal r_done_n19 : std_logic := '0';
	signal r_done_n20 : std_logic := '0';
	signal r_done_n21 : std_logic := '0';
	signal r_done_n22 : std_logic := '0';
	signal r_done_n23 : std_logic := '0';
	signal r_done : std_logic := '0';

	signal r_result_n0 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n1 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n2 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n3 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n4 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n5 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n6 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n7 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n8 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n9 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n10 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n11 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n12 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n13 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n14 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n15 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n16 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n17 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n18 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n19 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n20 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n21 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n22 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n23 : std_logic_vector(g_bits-1 downto 0) := (others => '0');

	signal r_sinapse : integer range 0 to 30 := 0;
	constant c_inputs         : natural := 30;

	component neuron_l2_n0 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n1 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n2 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n3 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n4 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n5 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n6 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n7 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n8 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n9 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n10 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n11 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n12 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n13 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n14 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n15 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n16 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n17 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n18 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n19 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n20 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n21 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n22 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l2_n23 is
		generic(
			g_bits        : natural := 16;
			g_fxp_high    : natural := 4;
			g_fxp_low     : integer :=-11);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

begin
	n0 : neuron_l2_n0 port map(i_clk, i_rst, r_enable_n0, r_mac_n0, r_done_n0, i_fxp, r_result_n0);
	n1 : neuron_l2_n1 port map(i_clk, i_rst, r_enable_n1, r_mac_n1, r_done_n1, i_fxp, r_result_n1);
	n2 : neuron_l2_n2 port map(i_clk, i_rst, r_enable_n2, r_mac_n2, r_done_n2, i_fxp, r_result_n2);
	n3 : neuron_l2_n3 port map(i_clk, i_rst, r_enable_n3, r_mac_n3, r_done_n3, i_fxp, r_result_n3);
	n4 : neuron_l2_n4 port map(i_clk, i_rst, r_enable_n4, r_mac_n4, r_done_n4, i_fxp, r_result_n4);
	n5 : neuron_l2_n5 port map(i_clk, i_rst, r_enable_n5, r_mac_n5, r_done_n5, i_fxp, r_result_n5);
	n6 : neuron_l2_n6 port map(i_clk, i_rst, r_enable_n6, r_mac_n6, r_done_n6, i_fxp, r_result_n6);
	n7 : neuron_l2_n7 port map(i_clk, i_rst, r_enable_n7, r_mac_n7, r_done_n7, i_fxp, r_result_n7);
	n8 : neuron_l2_n8 port map(i_clk, i_rst, r_enable_n8, r_mac_n8, r_done_n8, i_fxp, r_result_n8);
	n9 : neuron_l2_n9 port map(i_clk, i_rst, r_enable_n9, r_mac_n9, r_done_n9, i_fxp, r_result_n9);
	n10 : neuron_l2_n10 port map(i_clk, i_rst, r_enable_n10, r_mac_n10, r_done_n10, i_fxp, r_result_n10);
	n11 : neuron_l2_n11 port map(i_clk, i_rst, r_enable_n11, r_mac_n11, r_done_n11, i_fxp, r_result_n11);
	n12 : neuron_l2_n12 port map(i_clk, i_rst, r_enable_n12, r_mac_n12, r_done_n12, i_fxp, r_result_n12);
	n13 : neuron_l2_n13 port map(i_clk, i_rst, r_enable_n13, r_mac_n13, r_done_n13, i_fxp, r_result_n13);
	n14 : neuron_l2_n14 port map(i_clk, i_rst, r_enable_n14, r_mac_n14, r_done_n14, i_fxp, r_result_n14);
	n15 : neuron_l2_n15 port map(i_clk, i_rst, r_enable_n15, r_mac_n15, r_done_n15, i_fxp, r_result_n15);
	n16 : neuron_l2_n16 port map(i_clk, i_rst, r_enable_n16, r_mac_n16, r_done_n16, i_fxp, r_result_n16);
	n17 : neuron_l2_n17 port map(i_clk, i_rst, r_enable_n17, r_mac_n17, r_done_n17, i_fxp, r_result_n17);
	n18 : neuron_l2_n18 port map(i_clk, i_rst, r_enable_n18, r_mac_n18, r_done_n18, i_fxp, r_result_n18);
	n19 : neuron_l2_n19 port map(i_clk, i_rst, r_enable_n19, r_mac_n19, r_done_n19, i_fxp, r_result_n19);
	n20 : neuron_l2_n20 port map(i_clk, i_rst, r_enable_n20, r_mac_n20, r_done_n20, i_fxp, r_result_n20);
	n21 : neuron_l2_n21 port map(i_clk, i_rst, r_enable_n21, r_mac_n21, r_done_n21, i_fxp, r_result_n21);
	n22 : neuron_l2_n22 port map(i_clk, i_rst, r_enable_n22, r_mac_n22, r_done_n22, i_fxp, r_result_n22);
	n23 : neuron_l2_n23 port map(i_clk, i_rst, r_enable_n23, r_mac_n23, r_done_n23, i_fxp, r_result_n23);

	p_layer : process(i_clk, i_enable)
	begin
		if rising_edge(i_clk) then
			case r_sm is
				when s_idle =>
					if i_enable = '1' then
						r_sm <= s_get_data;
					else
						r_sm <= s_idle;
					end if;

				when s_get_data =>
					r_mac_done  <= '0';
					r_sm        <= s_sinapse;

				when s_sinapse =>
					r_enable_n0 <= '1';
					r_enable_n1 <= '1';
					r_enable_n2 <= '1';
					r_enable_n3 <= '1';
					r_enable_n4 <= '1';
					r_enable_n5 <= '1';
					r_enable_n6 <= '1';
					r_enable_n7 <= '1';
					r_enable_n8 <= '1';
					r_enable_n9 <= '1';
					r_enable_n10 <= '1';
					r_enable_n11 <= '1';
					r_enable_n12 <= '1';
					r_enable_n13 <= '1';
					r_enable_n14 <= '1';
					r_enable_n15 <= '1';
					r_enable_n16 <= '1';
					r_enable_n17 <= '1';
					r_enable_n18 <= '1';
					r_enable_n19 <= '1';
					r_enable_n20 <= '1';
					r_enable_n21 <= '1';
					r_enable_n22 <= '1';
					r_enable_n23 <= '1';
					r_sinapse   <= r_sinapse + 1;
					r_sm        <= s_wait_sinapse;

				when s_wait_sinapse =>
					if (r_mac_n0 = '1') and (r_mac_n1 = '1') and (r_mac_n2 = '1') and (r_mac_n3 = '1') and (r_mac_n4 = '1') and (r_mac_n5 = '1') and (r_mac_n6 = '1') and (r_mac_n7 = '1') and (r_mac_n8 = '1') and (r_mac_n9 = '1') and (r_mac_n10 = '1') and (r_mac_n11 = '1') and (r_mac_n12 = '1') and (r_mac_n13 = '1') and (r_mac_n14 = '1') and (r_mac_n15 = '1') and (r_mac_n16 = '1') and (r_mac_n17 = '1') and (r_mac_n18 = '1') and (r_mac_n19 = '1') and (r_mac_n20 = '1') and (r_mac_n21 = '1') and (r_mac_n22 = '1') and (r_mac_n23 = '1') then
						r_mac_done <= '1';
						if r_sinapse < c_inputs then
							r_sm <= s_get_data;
						else
							r_sm <= s_wait_activation;
						end if;
					else
						r_sm <= s_wait_sinapse;
					end if;

				when s_wait_activation =>
					r_mac_done <= '0';
					if (r_done_n0 = '1') and (r_done_n1 = '1') and (r_done_n2 = '1') and (r_done_n3 = '1') and (r_done_n4 = '1') and (r_done_n5 = '1') and (r_done_n6 = '1') and (r_done_n7 = '1') and (r_done_n8 = '1') and (r_done_n9 = '1') and (r_done_n10 = '1') and (r_done_n11 = '1') and (r_done_n12 = '1') and (r_done_n13 = '1') and (r_done_n14 = '1') and (r_done_n15 = '1') and (r_done_n16 = '1') and (r_done_n17 = '1') and (r_done_n18 = '1') and (r_done_n19 = '1') and (r_done_n20 = '1') and (r_done_n21 = '1') and (r_done_n22 = '1') and (r_done_n23 = '1') then
						r_done <= '1';
						r_sm   <= s_clear;
					else
						r_sm <= s_wait_activation;
						r_done <= '0';
					end if;

				when s_clear =>
					r_mac_done <= '0';
					r_enable_n0 <= '0';
					r_enable_n1 <= '0';
					r_enable_n2 <= '0';
					r_enable_n3 <= '0';
					r_enable_n4 <= '0';
					r_enable_n5 <= '0';
					r_enable_n6 <= '0';
					r_enable_n7 <= '0';
					r_enable_n8 <= '0';
					r_enable_n9 <= '0';
					r_enable_n10 <= '0';
					r_enable_n11 <= '0';
					r_enable_n12 <= '0';
					r_enable_n13 <= '0';
					r_enable_n14 <= '0';
					r_enable_n15 <= '0';
					r_enable_n16 <= '0';
					r_enable_n17 <= '0';
					r_enable_n18 <= '0';
					r_enable_n19 <= '0';
					r_enable_n20 <= '0';
					r_enable_n21 <= '0';
					r_enable_n22 <= '0';
					r_enable_n23 <= '0';
					r_done <= '0';
					r_sinapse <= 0;
					r_sm      <= s_idle;

				when others =>
					 r_sm <= s_idle;
			end case;
		end if;
	end process p_layer;

	o_done      <= r_done;
	o_mac_done  <= r_mac_done;
	o_fxp_n0 <= r_result_n0;
	o_fxp_n1 <= r_result_n1;
	o_fxp_n2 <= r_result_n2;
	o_fxp_n3 <= r_result_n3;
	o_fxp_n4 <= r_result_n4;
	o_fxp_n5 <= r_result_n5;
	o_fxp_n6 <= r_result_n6;
	o_fxp_n7 <= r_result_n7;
	o_fxp_n8 <= r_result_n8;
	o_fxp_n9 <= r_result_n9;
	o_fxp_n10 <= r_result_n10;
	o_fxp_n11 <= r_result_n11;
	o_fxp_n12 <= r_result_n12;
	o_fxp_n13 <= r_result_n13;
	o_fxp_n14 <= r_result_n14;
	o_fxp_n15 <= r_result_n15;
	o_fxp_n16 <= r_result_n16;
	o_fxp_n17 <= r_result_n17;
	o_fxp_n18 <= r_result_n18;
	o_fxp_n19 <= r_result_n19;
	o_fxp_n20 <= r_result_n20;
	o_fxp_n21 <= r_result_n21;
	o_fxp_n22 <= r_result_n22;
	o_fxp_n23 <= r_result_n23;

end bhv;