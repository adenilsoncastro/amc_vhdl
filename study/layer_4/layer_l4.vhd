library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ieee_proposed;
use ieee_proposed.fixed_pkg.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity layer_l4 is
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
		o_result			: out std_logic_vector(6 downto 0));
end layer_l4;

architecture bhv of layer_l4 is

	type t_sm is (s_idle, s_get_data, s_sinapse, s_wait_sinapse, s_max, s_wait_max, s_clear);
	signal r_sm : t_sm := s_idle;

	signal r_enable_n0 : std_logic := '0';
	signal r_enable_n1 : std_logic := '0';
	signal r_enable_n2 : std_logic := '0';
	signal r_enable_n3 : std_logic := '0';
	signal r_enable_n4 : std_logic := '0';

	signal r_mac_n0 : std_logic := '0';
	signal r_mac_n1 : std_logic := '0';
	signal r_mac_n2 : std_logic := '0';
	signal r_mac_n3 : std_logic := '0';
	signal r_mac_n4 : std_logic := '0';
	signal r_mac_done : std_logic := '0';

	signal r_done_n0 : std_logic := '0';
	signal r_done_n1 : std_logic := '0';
	signal r_done_n2 : std_logic := '0';
	signal r_done_n3 : std_logic := '0';
	signal r_done_n4 : std_logic := '0';
	signal r_done : std_logic := '0';

	signal r_result_n0 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n1 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n2 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n3 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n4 : std_logic_vector(g_bits-1 downto 0) := (others => '0');

	signal r_sinapse : integer range 0 to 20 := 0;
	constant c_inputs         : natural := 20;

	signal r_max_enable : std_logic := '0';
	signal r_max_result	: std_logic_vector(6 downto 0);

	component max is
		generic(
			g_bits        : natural := c_bits;
			g_fxp_high    : natural := c_fxp_high;
			g_fxp_low     : integer := c_fxp_low);
		port(
			i_enable    : in std_logic;
			i_neuron_1  : in std_logic_vector(g_bits-1 downto 0);
			i_neuron_2  : in std_logic_vector(g_bits-1 downto 0);
			i_neuron_3  : in std_logic_vector(g_bits-1 downto 0);
			i_neuron_4  : in std_logic_vector(g_bits-1 downto 0);
			i_neuron_5  : in std_logic_vector(g_bits-1 downto 0);
			o_result    : out std_logic_vector(6 downto 0));
	end component;

	component neuron_l4_n0 is
		generic(
			g_bits        : natural := c_bits;
			g_fxp_high    : natural := c_fxp_high;
			g_fxp_low     : integer := c_fxp_low);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l4_n1 is
		generic(
			g_bits        : natural := c_bits;
			g_fxp_high    : natural := c_fxp_high;
			g_fxp_low     : integer := c_fxp_low);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l4_n2 is
		generic(
			g_bits        : natural := c_bits;
			g_fxp_high    : natural := c_fxp_high;
			g_fxp_low     : integer := c_fxp_low);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l4_n3 is
		generic(
			g_bits        : natural := c_bits;
			g_fxp_high    : natural := c_fxp_high;
			g_fxp_low     : integer := c_fxp_low);
		port(
			i_clk         : in std_logic;
			i_rst         : in std_logic;
			i_enable      : in std_logic;
			o_mac_done    : out std_logic;
			o_done        : out std_logic;
			i_fxp_data    : in std_logic_vector(g_bits-1 downto 0);
			o_fxp_data    : out std_logic_vector(g_bits-1 downto 0));
	end component;

	component neuron_l4_n4 is
		generic(
			g_bits        : natural := c_bits;
			g_fxp_high    : natural := c_fxp_high;
			g_fxp_low     : integer := c_fxp_low);
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
	act_max	: maX port map(r_max_enable, r_result_n0, r_result_n1, r_result_n2, r_result_n3, r_result_n4, r_max_result);
	n0 : neuron_l4_n0 port map(i_clk, i_rst, r_enable_n0, r_mac_n0, r_done_n0, i_fxp, r_result_n0);
	n1 : neuron_l4_n1 port map(i_clk, i_rst, r_enable_n1, r_mac_n1, r_done_n1, i_fxp, r_result_n1);
	n2 : neuron_l4_n2 port map(i_clk, i_rst, r_enable_n2, r_mac_n2, r_done_n2, i_fxp, r_result_n2);
	n3 : neuron_l4_n3 port map(i_clk, i_rst, r_enable_n3, r_mac_n3, r_done_n3, i_fxp, r_result_n3);
	n4 : neuron_l4_n4 port map(i_clk, i_rst, r_enable_n4, r_mac_n4, r_done_n4, i_fxp, r_result_n4);

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
					r_sinapse   <= r_sinapse + 1;
					r_sm        <= s_wait_sinapse;

				when s_wait_sinapse =>
					if (r_mac_n0 = '1') and (r_mac_n1 = '1') and (r_mac_n2 = '1') and (r_mac_n3 = '1') and (r_mac_n4 = '1') and then
						r_mac_done <= '1';
						if r_sinapse < c_inputs then
							r_sm <= s_get_data;
						else
							r_sm <= s_max;
						end if;
					else
						r_sm <= s_wait_sinapse;
				end if;

				when s_max =>
					r_mac_done <= '0';
					if (r_done_n0 = '1') and (r_done_n1 = '1') and (r_done_n2 = '1') and (r_done_n3 = '1') and (r_done_n4 = '1') and then 
						r_max_enable <= '1';
						r_sm <= s_wait_max;
					else
						r_sm <= s_max;
						r_max_enable <= '0';
					end if;

				when s_wait_max =>
					r_max_enable <= '0';
					r_done <= '1';
					r_sm <= s_clear;

				when s_clear =>
					r_mac_done <= '0';
					r_max_enable <= '0';
					r_enable_n0 <= '0';
					r_enable_n1 <= '0';
					r_enable_n2 <= '0';
					r_enable_n3 <= '0';
					r_enable_n4 <= '0';
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
	o_result <= r_max_result;
end bhv;