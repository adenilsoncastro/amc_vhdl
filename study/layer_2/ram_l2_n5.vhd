library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l2_n5 is
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
end ram_l2_n5;

architecture rtl of ram_l2_n5 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000010001010110", "1111111001010010", "1111110011110011", "0000000011100001", "0000001101101010", "1111111101101111", "0000001011010101", "1111111101111110", "0000011101000000", "1111100101110110", "0000010101010111", "0000000000110110", "0000001110101001", "0000001001100100", "0000001001010101", "1111101111100001", "0000001000111100", "0000000000100001", "0000011101011111", "0000001100001010", "1111111001101100", "0000000010111100", "0000000010010110", "1111101111010000", "1111101011000110", "0000000011100111", "1111111101111101", "1111111001110100", "1111111100010000", "0000001010110011" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;