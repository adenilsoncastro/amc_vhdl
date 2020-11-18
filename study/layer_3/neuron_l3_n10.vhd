library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ieee_proposed;
use ieee_proposed.fixed_pkg.all;

entity neuron_l3_n10 is
	generic(
		g_bits        : natural := 16;
		g_fxp_high    : natural := 4;
		g_fxp_low     : integer :=-11);
	port(
		i_clk           : in std_logic;
		i_rst           : in std_logic;
		i_enable        : in std_logic;
		i_fxp_data      : in std_logic_vector(g_bits-1 downto 0);
		o_mac_done       : out std_logic;
		o_done          : out std_logic;
		o_fxp_data      : out std_logic_vector(g_bits-1 downto 0));
end neuron_l3_n10;

architecture bhv of neuron_l3_n10 is

	--Control FSM signals
	type t_sm is (s_idle, s_get_weight, s_wait_weight, s_mac, s_wait_mac, s_mac_result, s_bias, s_lut_tanh, s_wait_lut_tanh, s_clear);
	signal r_sm             : t_sm := s_idle;
	signal r_sinapse_count	: integer := 0;
	signal r_done			: std_logic := '0';
	constant c_bias			: std_logic_vector(g_bits-1 downto 0) := "0000111010001011";
	constant c_inputs		: natural := 24;

	--RAM Signals
	signal r_wr				: std_logic							 		:= '0';
	signal r_addr			: std_logic_vector(5 downto 0) 				:= "000000";
	signal r_data_in_ram	: std_logic_vector(g_bits-1 downto 0)	:= (others => '0');
	signal r_data_out_ram	    : std_logic_vector(g_bits-1 downto 0)	:= (others => '0');

	--MAC Signals
	signal r_mac_enable		: std_logic									:= '0';
	signal r_mac_done			: std_logic									:= '1';
	signal r_mac_out			: std_logic_vector(g_bits-1 downto 0)	:= (others => '0');

	--Bias Signal
	signal r_bias			: std_logic_vector(g_bits-1 downto 0)	:= (others => '0');

	--Activation Function Signals
	signal r_tanh_in        : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_tanh_result    : std_logic_vector(g_bits-1 downto 0) := (others => '0');

component ram_l3_n10 is
	generic(
		g_width       : natural := 16;
		g_depth       : natural := 50;
		g_addr_bits   : natural := 6);
	port(
		i_clk         : in std_logic;
		i_wr			: in std_logic;
		i_addr		: in std_logic_vector(g_addr_bits-1 downto 0);
		i_data		: in std_logic_vector(g_width-1 downto 0);
		o_data		: out std_logic_vector(g_width-1 downto 0));
end component;

component mac is
	generic(
		g_bits        : natural := 16;
		g_fxp_high    : natural := 4;
		g_fxp_low     : integer :=-11);
	port(
		i_clk         : in std_logic;
		i_rst         : in std_logic;
		i_enable      : in std_logic;
		i_data        : in std_logic_vector(g_bits-1 downto 0);
		i_weight		: in std_logic_vector(g_bits-1 downto 0);
		o_done		: out std_logic;
		o_data		: out std_logic_vector(g_bits-1 downto 0));
end component;

component lut_tanh is
	generic(
		g_bits        : natural := 16;
		g_fxp_high    : natural := 4;
		g_fxp_low     : integer := -11);
	port(
		i_address     : in std_logic_vector(g_bits-1 downto 0);
		o_output      : out std_logic_vector(g_bits-1 downto 0));
end component;

begin

	ram_n10 : ram_l3_n10 port map(i_clk, r_wr, r_addr, r_data_in_ram, r_data_out_ram);
	mac_n10 : mac port map(i_clk, i_rst, r_mac_enable, i_fxp_data, r_data_out_ram, r_mac_done, r_mac_out);
	act_lut_tanh : lut_tanh port map(r_tanh_in, r_tanh_result)
;
	p_neuron : process(i_clk, i_enable, r_mac_done)
	begin
		if rising_edge(i_clk) then
			case r_sm is
				when s_idle =>
					if i_enable = '1' then
						r_sm <= s_get_weight;
					else
						r_sm <= s_idle;
					end if;

				when s_get_weight =>
					r_addr 				<= std_logic_vector(to_unsigned(r_sinapse_count, r_addr'length));
					r_sinapse_count 	<= r_sinapse_count + 1;
					r_sm 					<= s_wait_weight;

				when s_wait_weight =>
					r_sm				<= s_mac;

				when s_mac =>
					r_mac_enable <= '1';
					r_sm 		 <= s_wait_mac;

				when s_wait_mac =>
					r_mac_enable <= '0';
					r_sm 		 <= s_mac_result;

				when s_mac_result =>
					if r_mac_done = '1' then
						if r_sinapse_count < c_inputs then
							r_sm <= s_get_weight;
						else
							r_sm <= s_bias;
						end if;
					else
						r_sm <= s_mac;
					end if;
				when s_bias =>
					r_bias <= to_slv(resize(to_sfixed(r_mac_out, g_fxp_high, g_fxp_low) + to_sfixed(c_bias, g_fxp_high, g_fxp_low), g_fxp_high, g_fxp_low));
					r_sm   <= s_lut_tanh;

				when s_lut_tanh =>
					r_tanh_in   <= r_bias;
					r_sm        <= s_wait_lut_tanh;

				when s_wait_lut_tanh => 
					r_done  <= '1';
					r_sm    <= s_clear;

				when s_clear =>
					r_done 			<= '0';
					r_sinapse_count <= 0;
					r_mac_enable 	<= '0';
					r_sm 			<= s_idle;

				when others =>
					r_sm <= s_idle;

			end case;
		end if;
	end process p_neuron;

	o_mac_done	<= r_mac_done;
	o_done		<= r_done;
	o_fxp_data <= r_tanh_result;
end bhv;