library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l2_n13 is
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
end ram_l2_n13;

architecture rtl of ram_l2_n13 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111111111000001", "1111111101000100", "0001001111110101", "1111111110011000", "1111111111111000", "1111111111110111", "1110101111010000", "1111111010100111", "1111111111011010", "1111111111110111", "0000000111000110", "1111111111000000", "1111111111000100", "1110111010000000", "1110111010100010", "0000000000010000", "1110101011111100", "0000000001000001", "0000000000111111", "0000000000001011", "0001000000010010", "1111111100110011", "0000000000110101", "0000100111000110", "1111110111000100", "0000000001100000", "0000000000011010", "0001011111111010", "0000000010101110", "0000000010000110" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;