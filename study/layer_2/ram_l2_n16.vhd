library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l2_n16 is
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
end ram_l2_n16;

architecture rtl of ram_l2_n16 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111111110101000", "1111111000011111", "1111111110011101", "0000001011011101", "1111111100011000", "1111111000010110", "0000000011010111", "1111110111000101", "1111111110001110", "0000000001001101", "1111111100011011", "1111111011111110", "0000000011010001", "1111111111111100", "1111111111101000", "0000000011111011", "1111111110110101", "0000000100001011", "1111111011011010", "1111111010001000", "1111111111001011", "1111111100011101", "0000000000101000", "0000000010110010", "0000000110101000", "0000001000010011", "0000000011011010", "0000000001000111", "0000000000001000", "0000000001111101" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;