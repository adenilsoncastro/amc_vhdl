library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l2_n9 is
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
end ram_l2_n9;

architecture rtl of ram_l2_n9 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111010010100101", "0000010010011011", "0000001001010011", "1111110000000110", "0000000111011000", "1111011011001001", "1111110100100101", "0000010001110000", "0001100110001101", "0000110010000110", "1110110100011010", "1111010110011011", "1111000110011001", "1111110011110111", "1111110110110100", "1111101000011100", "1111110100100001", "0000101011111100", "0000110010101010", "0000001101010000", "0000001000111001", "1110000110101111", "0000110110011111", "0000001111011101", "0001011100011010", "1111101101011101", "0000101000101100", "0000000111001001", "0000110111011111", "1111011001001111" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;