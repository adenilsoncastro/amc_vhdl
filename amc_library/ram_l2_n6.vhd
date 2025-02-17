library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l2_n6 is
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
end ram_l2_n6;

architecture rtl of ram_l2_n6 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000011001001101", "0000001100011100", "0000000110111111", "1111110100000001", "1111111001110111", "1111011010110110", "1111110111111111", "0000010001110110", "1111110010111100", "1111101010001001", "0000001001000011", "1111111001111000", "1111110001010001", "1111110111101111", "1111110110010101", "0000000000111001", "1111111010101010", "0000000010000011", "1111111010010010", "1111111001011100", "0000001000001111", "0000000100011001", "0000001111110100", "0000001001001100", "1111110011111101", "1111110000110010", "0000001001110111", "0000000111000111", "0000011100001100", "0000001011001110" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;