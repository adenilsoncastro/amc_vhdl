library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l2_n15 is
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
end ram_l2_n15;

architecture rtl of ram_l2_n15 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000011001001000", "1111100010111100", "0000000010100011", "0000010111111111", "0000101010011110", "0000000100010011", "0000000001010001", "1111100100011000", "1111111010100011", "1111100001110111", "0000100011000111", "0000010010011000", "0000101111011101", "0000000100100011", "0000000010011111", "1111100001110111", "0000000010000010", "1111100011001111", "0000010011010110", "0000011110010110", "1111111101101100", "0000100011000011", "1110110001101011", "1111111010110000", "1111100011101000", "0000011100010001", "1110101010100011", "1111111011011011", "1110101101111000", "0000011100110100" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;