library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l3_n18 is
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
end ram_l3_n18;

architecture rtl of ram_l3_n18 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111111111000110", "0000000101001111", "0000000000110000", "0000011110111001", "1111111110100110", "1111111111011110", "1111111011111101", "0000100100001011", "1111111010111110", "0000000000000000", "1111111011011100", "0000000000001001", "1111111000010010", "1111100101000101", "0000000001010001", "1111111110110110", "1111110110010110", "1111111000000100", "1111100001101111", "0000000000010010", "1111111110001000", "1111111100111111", "1111011000000100", "1111111011011101" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;