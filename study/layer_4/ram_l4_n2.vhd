library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l4_n2 is
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
end ram_l4_n2;

architecture rtl of ram_l4_n2 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000000110101001", "0000001101111011", "1111111111011100", "0000010001100101", "0000101001010010", "1111011000000101", "0000010000110110", "0000011110111101", "1111110111100100", "0000100000000010", "1111011001011101", "1111100001000011", "0000101011010011", "1111110011001000", "0000100010010011", "1111111000110111", "0000011010111001", "0000100001110010", "1111101100011010", "0000010011101001" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;