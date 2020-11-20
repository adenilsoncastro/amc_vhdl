library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l3_n11 is
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
end ram_l3_n11;

architecture rtl of ram_l3_n11 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111111101111101", "1111101011111001", "1111111010100111", "1111110011011010", "0000011101111001", "1111111001010010", "0000000110001111", "1111110110111101", "1111111011110011", "0000000010100101", "0000011001100101", "1111111011001011", "0000011110001110", "0000000111101000", "0000000010111111", "1111111011111000", "0000011100110000", "0000010001001101", "0000000110101011", "0000000000010111", "1111111100011111", "1111110101111101", "0000000111111010", "0000011101101001" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;