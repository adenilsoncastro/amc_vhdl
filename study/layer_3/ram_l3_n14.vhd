library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l3_n14 is
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
end ram_l3_n14;

architecture rtl of ram_l3_n14 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000000110110010", "0000000011000110", "0000010010111010", "0000001000100110", "1111010000011111", "0000000110011110", "1111101011001011", "0000001000101111", "0000000010101001", "1111111011110000", "1111111101011100", "0000010110101011", "1111011000101011", "1111111000100110", "1111110111011101", "0000000111100101", "1111100010011100", "0000010110111100", "1111111010111101", "0000001100001110", "0000000111010000", "0000111010111110", "1111111001101111", "1111110110001110" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;