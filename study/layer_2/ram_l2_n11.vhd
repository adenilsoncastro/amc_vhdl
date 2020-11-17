library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l2_n11 is
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
end ram_l2_n11;

architecture rtl of ram_l2_n11 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111101101111000", "0000000011001011", "1111111101101010", "1111111111010000", "1111111101001011", "0000010011111111", "1111111111001001", "0000000110000010", "1111111111110110", "0000010010010000", "1111111110111101", "0000000100100101", "1111111101111110", "0000000000111010", "0000000001000010", "1111111101101000", "0000000001000101", "1111111101000000", "1111111101011101", "0000000001010001", "0000000001111100", "0000000000110001", "0000000000000000", "0000000001111111", "0000000011110101", "0000000001000010", "0000001001010111", "1111111101101100", "0000000000011001", "1111100001000010" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;