library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l2_n18 is
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
end ram_l2_n18;

architecture rtl of ram_l2_n18 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111111111011000", "1111111011000111", "0000111100010001", "0000000100110011", "1111111110110001", "0000000000010011", "1111000001100000", "1111111100010100", "1111111111011000", "1111111110011010", "0000000101000100", "1111111111100010", "1111111110010110", "1111001010010010", "1111001010010110", "1111111111011110", "1110111111110110", "1111111111101011", "1111111110111000", "1111111101100111", "0000110101001001", "1111111101011100", "1111111111000101", "0000100010101010", "1111111011011011", "1111111101010110", "1111111111010001", "0001000010110011", "0000000010011110", "0000000000101001" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;