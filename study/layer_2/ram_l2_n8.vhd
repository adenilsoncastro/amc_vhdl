library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l2_n8 is
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
end ram_l2_n8;

architecture rtl of ram_l2_n8 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000010100100001", "1111110011001010", "1111111011101000", "0000001001000000", "0000010110000010", "0000001001001110", "0000001001011011", "1111110010001100", "1111101111111110", "1111011101111111", "0000110100111101", "0000000110111010", "0000100100001011", "0000000111010101", "0000000111000101", "1111110100110111", "0000000111001101", "1111110100010011", "0000000110010001", "0000010101000000", "1111110110101011", "0000110000100111", "1111101100000000", "1111110100101010", "1111001110001110", "0000001110010000", "1111101011011001", "1111110110001110", "1111100001100101", "0000001011010000" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;