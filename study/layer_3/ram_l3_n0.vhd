library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l3_n0 is
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
end ram_l3_n0;

architecture rtl of ram_l3_n0 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111100100010010", "1111110011000110", "0000011011010011", "0000000110000000", "0000001011010100", "0000001010000011", "1111101011010010", "0000001000000101", "0000010111000110", "1111001011001111", "0000001000111010", "0000000010101000", "1111111000111010", "1111111010111010", "1111111001001111", "1111111001011101", "0000001100100111", "0000110111111111", "1111111000001011", "1111100100100111", "0000000011010010", "0000000110110000", "1111111001010011", "0001010111001000" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;