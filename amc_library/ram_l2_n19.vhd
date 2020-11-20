library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l2_n19 is
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
end ram_l2_n19;

architecture rtl of ram_l2_n19 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111110101100101", "0000010000010010", "1111110101100100", "1111110110010100", "0000111111101011", "1111111111111110", "0000001000110101", "0000001101100000", "0000010001111101", "0000000111011101", "0000000000101001", "1111110100111000", "0000000101000101", "0000001010100101", "0000000111001101", "1110100110000010", "0000001000110011", "0000000001101111", "0001010110001101", "0001010000101101", "1111110011111010", "1111111101001101", "0000001000001011", "1111110011000110", "0000000100111001", "1111110101010101", "1111101100110101", "1111110101101101", "0000000100101011", "1111100101100011" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;