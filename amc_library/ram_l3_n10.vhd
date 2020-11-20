library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l3_n10 is
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
end ram_l3_n10;

architecture rtl of ram_l3_n10 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111101001101110", "1111101101110101", "0000000011001111", "1111111010000001", "0000000110101000", "1111011001101011", "1111101011111011", "1111111101011111", "1111110110010111", "0000000100110100", "0000001101110100", "0000001000000101", "1111111000011100", "0000000100011110", "1111111100011011", "1111110010110111", "0000000000101110", "0000010011000001", "0000000100011100", "1111101110010011", "0000000001010111", "0000110001110001", "0000000011001001", "0000001001001001" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;