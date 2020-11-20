library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l2_n4 is
	generic(
		g_width   : natural := c_bits;
		g_depth 	: natural := 50;
		g_addr_bits : natural := 5);
	port(
		i_clk			: in std_logic;
		i_wr			: in std_logic;
		i_addr		: in std_logic_vector(g_addr_bits-1 downto 0);
		i_data		: in std_logic_vector(g_width-1 downto 0);
		o_data		: out std_logic_vector(g_width-1 downto 0));
end ram_l2_n4;

architecture rtl of ram_l2_n4 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000010001001100", "1111111110101110", "0000001011101111", "0000000011110001", "1111110110101111", "1111110110110110", "1111110110011110", "1111111101001011", "1111011000001100", "1111110100110111", "0000000001001100", "0000000000101111", "1111101101100100", "1111101111011011", "1111110001101100", "0000000100100110", "1111110101000001", "1111111101011110", "1111110010000100", "1111111001111010", "0000001101100000", "1111110101110111", "0000000001100001", "0000010101110010", "1111111000101111", "0000000011010111", "0000000010100110", "0000001011000100", "0000010001101110", "0000001100101110" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;