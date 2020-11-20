library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l2_n17 is
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
end ram_l2_n17;

architecture rtl of ram_l2_n17 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111111010101010", "1111011011111100", "1111111100100011", "0000100011000001", "0000000010001000", "0000001001010101", "0000000001111001", "1111011100110011", "0000000000110001", "0000000001010110", "1111111101010101", "0000000010101101", "1111111110000000", "0000000101111100", "0000000011010000", "1111111101001101", "0000000001111011", "1111111101001011", "0000000110010010", "0000000001001111", "1111111011011000", "1111111111101100", "0000000010000011", "1111111011111010", "0000000001100101", "0000100100100111", "1111111101111100", "1111111101011100", "1111111111111111", "1111111100100101" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;