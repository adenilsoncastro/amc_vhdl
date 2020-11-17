library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l3_n6 is
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
end ram_l3_n6;

architecture rtl of ram_l3_n6 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000000000001001", "1111111001101110", "1111110111100100", "1111110111000101", "0000011111101110", "0000000000011011", "0000001000011010", "1111111000010101", "0000000010010010", "1111111011000010", "0000001111011101", "1111101011011010", "0000001100010010", "0000000110010011", "1111111110111010", "0000000000011110", "0000001010100100", "1111100010000100", "0000000111100110", "1111111101101000", "0000000010011110", "1111010100001101", "0000000110011011", "0000010111001000" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;