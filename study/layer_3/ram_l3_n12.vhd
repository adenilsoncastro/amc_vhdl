library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l3_n12 is
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
end ram_l3_n12;

architecture rtl of ram_l3_n12 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000000001111010", "1111111110000101", "0000010110010111", "0000000110000001", "1110110010001100", "0000001010111011", "1111011011110001", "0000000110111101", "0000000111000100", "1111111001101111", "0000000011101111", "1111111110111101", "1110111111010011", "1111111100010101", "0000000000101001", "0000001011010101", "1111000111011010", "1111111100001111", "1111111010111010", "0000001010000000", "0000000001010100", "0000000000000110", "1111111001011100", "1111100110110101" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;