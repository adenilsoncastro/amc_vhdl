library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l2_n3 is
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
end ram_l2_n3;

architecture rtl of ram_l2_n3 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111111110100000", "1111111101011100", "1111010100100100", "0000000000011110", "1111111111110111", "1111111110010110", "0000110011010100", "0000000010101110", "0000000001110110", "1111111111111001", "1111111100001010", "0000000000110101", "0000000000111001", "0000101110001111", "0000110011001111", "0000000000011000", "0000110111100001", "1111111111001110", "0000000000001011", "1111111111010110", "1111001110110001", "0000000001000101", "1111111101111000", "1111100010111001", "0000000100110111", "0000000010001010", "1111111111011111", "1110111010101011", "1111111101101011", "0000000000001000" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;