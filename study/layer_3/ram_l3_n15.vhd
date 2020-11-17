library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l3_n15 is
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
end ram_l3_n15;

architecture rtl of ram_l3_n15 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111110101111010", "1111111100111001", "1111111101000111", "1111110101100111", "0000011010001000", "1111101111110101", "0000000111000000", "1111110111001101", "1111110111101100", "0000000101100100", "0000001010000110", "1111110000010001", "0000010100001111", "0000000111110010", "0000000011000000", "1111110110001101", "0000000101101110", "1111111001110110", "0000001000011100", "1111110101011010", "1111111101010011", "1111101001101111", "0000001000010111", "1111111110000010" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;