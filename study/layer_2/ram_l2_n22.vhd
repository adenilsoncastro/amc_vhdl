library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l2_n22 is
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
end ram_l2_n22;

architecture rtl of ram_l2_n22 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000000001110011", "1111111010100110", "0000111000100101", "0000000000101110", "1111111111101001", "1111111110100010", "1110111110100110", "1111111001111100", "0000000000101001", "1111111111100011", "0000000100110011", "0000000000000110", "1111111101111001", "1111001001000110", "1111010000111101", "0000000001100011", "1111000010010010", "0000000000010110", "1111111110110011", "1111111111110001", "0000110011101011", "1111111111110111", "1111111101111101", "0000100010101001", "1111111011101011", "0000000001000111", "1111111111011000", "0000111011111001", "1111111111101011", "1111111101110010" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;