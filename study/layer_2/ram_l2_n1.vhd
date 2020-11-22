library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l2_n1 is
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
end ram_l2_n1;

architecture rtl of ram_l2_n1 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111110001111111", "0001010100000000", "0000000000101001", "1110101101011000", "0000000000001111", "0000000110001010", "1111111101010010", "0001001000101001", "0000000110000010", "0000010100101111", "1111110011001000", "0000000000011111", "1111110110100000", "1111111110111111", "0000000000000000", "0000000100000101", "1111111111000000", "0000000000111010", "1111111100100011", "1111111011100000", "0000000010011111", "1111111011101110", "0000000100011011", "0000000011110010", "0000001010010110", "1110111011010001", "0000000011110010", "0000000100000000", "0000001000110010", "1111110110001110" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;