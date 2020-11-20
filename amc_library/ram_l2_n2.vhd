library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l2_n2 is
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
end ram_l2_n2;

architecture rtl of ram_l2_n2 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111100001001010", "1111101011101010", "1111111001011101", "0000010101001110", "0000000010010011", "0000110100011001", "0000000100101011", "1111100111111000", "0000001100110010", "0000011011110100", "1111110100001100", "0000001010000110", "0000001100100011", "0000000011101101", "0000000010110111", "1111111110010110", "0000000010000100", "1111111011101100", "0000000001101100", "0000000000110011", "1111111010000000", "1111110110010010", "1111110000000001", "1111111101010010", "0000001101101100", "0000010111010111", "1111111011010111", "1111111011111000", "1111100011001000", "1111101100100010" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;