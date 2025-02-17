library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ieee_proposed;
use ieee_proposed.fixed_pkg.all;

entity layer_test is
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
		o_fxp_n5 : out std_logic_vector(g_bits-1 downto 0));
end layer_test;

architecture bhv of layer_test is

	type t_sm is (s_idle, s_get_data, s_sinapse, s_wait_sinapse, s_wait_activation, s_clear);
	signal r_sm : t_sm := s_idle;

	signal r_enable_n0 : std_logic := '0';
	signal r_enable_n1 : std_logic := '0';
	signal r_enable_n2 : std_logic := '0';
	signal r_enable_n3 : std_logic := '0';
	signal r_enable_n4 : std_logic := '0';
	signal r_enable_n5 : std_logic := '0';

	signal r_mac_n0 : std_logic := '0';
	signal r_mac_n1 : std_logic := '0';
	signal r_mac_n2 : std_logic := '0';
	signal r_mac_n3 : std_logic := '0';
	signal r_mac_n4 : std_logic := '0';
	signal r_mac_n5 : std_logic := '0';
	signal r_mac_done : std_logic := '0';

	signal r_done_n0 : std_logic := '0';
	signal r_done_n1 : std_logic := '0';
	signal r_done_n2 : std_logic := '0';
	signal r_done_n3 : std_logic := '0';
	signal r_done_n4 : std_logic := '0';
	signal r_done_n5 : std_logic := '0';
	signal r_done : std_logic := '0';

	signal r_result_n0 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n1 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n2 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n3 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n4 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_n5 : std_logic_vector(g_bits-1 downto 0) := (others => '0');

	signal r_sinapse : integer range 0 to 6 := 0;
	constant c_inputs         : natural := 6;

	component neuron_l0_n0 is
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

	component neuron_l0_n1 is
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

	component neuron_l0_n2 is
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

	component neuron_l0_n3 is
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

	component neuron_l0_n4 is
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

	component neuron_l0_n5 is
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
	n0 : neuron_l0_n0 port map(i_clk, i_rst, r_enable_n0, r_mac_n0, r_done_n0, i_fxp, r_result_n0);
	n1 : neuron_l0_n1 port map(i_clk, i_rst, r_enable_n1, r_mac_n1, r_done_n0, i_fxp, r_result_n1);
	n2 : neuron_l0_n2 port map(i_clk, i_rst, r_enable_n2, r_mac_n2, r_done_n0, i_fxp, r_result_n2);
	n3 : neuron_l0_n3 port map(i_clk, i_rst, r_enable_n3, r_mac_n3, r_done_n0, i_fxp, r_result_n3);
	n4 : neuron_l0_n4 port map(i_clk, i_rst, r_enable_n4, r_mac_n4, r_done_n0, i_fxp, r_result_n4);
	n5 : neuron_l0_n5 port map(i_clk, i_rst, r_enable_n5, r_mac_n5, r_done_n0, i_fxp, r_result_n5);

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
					r_sinapse   <= r_sinapse + 1;
					r_sm        <= s_wait_sinapse;

				when s_wait_sinapse =>
					if (r_mac_n0 = '1') and (r_mac_n1 = '1') and (r_mac_n2 = '1') and (r_mac_n3 = '1') and (r_mac_n4 = '1') and (r_mac_n5 = '1') then
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
					if (r_done_n0 = '1') and (r_done_n1 = '1') and (r_done_n2 = '1') and (r_done_n3 = '1') and (r_done_n4 = '1') and (r_done_n5 = '1') then
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

end bhv;