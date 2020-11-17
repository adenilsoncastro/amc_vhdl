library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l3_n5 is
	generic(
		g_width   : natural := 16;
		g_depth 	: natural := 50;
		g_addr_bits : natural := 5);
	port(
		i_clk			: in std_logic;
		i_wr			: in std_logic;
		i_addr		: in std_logic_vector(g_addr_bits-1 downto 0);
		i_data		: in std_logic_vector(g_width-1 downto 0);
		o_data		: out std_logic_vector(g_width-1 downto 0));
end ram_l3_n5;

architecture rtl of ram_l3_n5 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000000101101001", "0000000000111111", "1111111011101000", "1111111111011110", "0000001100011011", "1111001111111010", "0000000010111000", "1111111101010110", "1101100101011000", "0001110101010100", "1111111111100001", "0000111101000111", "0000000110111011", "1111111111000100", "0000001110011001", "1111010101011010", "0000011000011011", "1111111011010110", "0000000011010101", "0000011011101011", "1111110100101001", "0001001101111011", "0000000001110001", "1111000111100010" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;