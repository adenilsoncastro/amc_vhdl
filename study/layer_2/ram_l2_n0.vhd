library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l2_n0 is
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
end ram_l2_n0;

architecture rtl of ram_l2_n0 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111110110001000", "1111111111011010", "1111111011010101", "1111111111101111", "0001010110011000", "1111111110100001", "0000000010010001", "0000000100100111", "0000011000010111", "0000000011111110", "1111111101001110", "0000010111100010", "1111111110000111", "0000000100010010", "0000000001111111", "1110001110001010", "0000000010010111", "1111011000000101", "0000111111001100", "0001110000011011", "1111111001101100", "1111111001101011", "1111110010101100", "1111111001111001", "0000001011000110", "1111111100111110", "1110111000011101", "1111111101100010", "1111111101111111", "1111101000010101" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;