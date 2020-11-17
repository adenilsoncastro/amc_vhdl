library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l2_n10 is
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
end ram_l2_n10;

architecture rtl of ram_l2_n10 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000011000100101", "1110101111111010", "1111111101000100", "0001001010101011", "0000000110010110", "1111111110100101", "0000000001110111", "1110110010110100", "1111111001100110", "1111011010111101", "0000010111111010", "0000000011101100", "1111111111110001", "0000000010010110", "0000000100010000", "1111111000101010", "0000000000110100", "1111111001111010", "0000001000011011", "0000000101011011", "1111111110001010", "0000001100001000", "1111111111000001", "1111111010101010", "1111100111000110", "0001001011111001", "1111111110100010", "0000000001000100", "1111111101111010", "0000001101010011" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;