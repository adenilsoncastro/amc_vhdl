library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l3_n2 is
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
end ram_l3_n2;

architecture rtl of ram_l3_n2 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000000111001111", "1111111100001100", "1111111101001000", "0000000001100001", "0000010100110011", "0000100001110100", "0000000100101110", "1111110001101110", "0000011101110010", "1111011110100000", "1111111011100000", "0000001100001111", "0001100011010100", "0000000010001101", "1111110011110001", "0000000001000101", "0001001011101000", "0000101010001101", "0000000001101111", "0000000010110001", "0000001011011110", "1111111110000001", "0000000100101010", "0000001111000101" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;