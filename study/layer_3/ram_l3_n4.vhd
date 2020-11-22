library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l3_n4 is
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
end ram_l3_n4;

architecture rtl of ram_l3_n4 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111111011101000", "0000100101000101", "0000010010000101", "1111111101010111", "1111110100111010", "1111111101110011", "1111100101001011", "1111111111000110", "1111111100100000", "1111111110010110", "1111011001100110", "0000101010111000", "1111110111000101", "0000000000111100", "0000000000110101", "1111111111111110", "1111011111010011", "1111110010011001", "0000000000001111", "0000001101000000", "1111111111000100", "0000100111011010", "0000000010000101", "1111110001010111" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;