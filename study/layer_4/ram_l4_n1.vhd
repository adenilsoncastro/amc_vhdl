library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l4_n1 is
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
end ram_l4_n1;

architecture rtl of ram_l4_n1 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000011110001001", "0000100110101100", "0000001011010001", "1111001100001111", "0000000110001011", "1111011010010101", "0000001000010111", "1111111101000101", "1111110011000011", "0000011000000110", "0000000111010111", "1111110000100010", "0000100000001100", "1111101111100100", "0000101111001101", "1111100101000100", "1111111101010010", "0000011011101001", "1111101110101111", "0000001000100000" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;