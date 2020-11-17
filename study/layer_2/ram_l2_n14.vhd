library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l2_n14 is
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
end ram_l2_n14;

architecture rtl of ram_l2_n14 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000010001000110", "1111111010000010", "0000000110111010", "0000000100001010", "1111100010011000", "1111111001000001", "1111111011011001", "1111111010100100", "1111111011011001", "1111110000000010", "0000010001101001", "1110101101111100", "1111111111011011", "1111111010000101", "1111111100101100", "0000011111011101", "1111111110000000", "0001101111110010", "1111110111000011", "1111011111000101", "0000000101010001", "0000001100101001", "0001000000000001", "0000000101111110", "1111110010100000", "0000000100110011", "0000110111000111", "0000000100101011", "0000010101101001", "0000011010011100" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;