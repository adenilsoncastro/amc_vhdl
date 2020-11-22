library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l3_n7 is
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
end ram_l3_n7;

architecture rtl of ram_l3_n7 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000010100000111", "0000001100100111", "1111110011110001", "0000000000111110", "1111101110111011", "0000011011111000", "0000000100011101", "0000000010010101", "0000001111011011", "0000000010010100", "1111101001011000", "1111110101001000", "1111100011110110", "0000000001000000", "1111111110110110", "1111111110111111", "1111010010110110", "1111010011010001", "1111111110000010", "0000010100100110", "0000000001110011", "1111011000001111", "1111111110110010", "1111111100110100" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;