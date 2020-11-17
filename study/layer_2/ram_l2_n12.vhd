library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l2_n12 is
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
end ram_l2_n12;

architecture rtl of ram_l2_n12 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000000100100100", "1111111111000010", "0000000110001111", "0000000011101101", "1111111000101000", "1111110100000110", "1111111011110011", "1111111100010101", "1111110000001001", "1111111111000101", "1111111111100100", "1111111010110010", "0000000010110111", "1111111001000111", "1111111100001110", "0000000101010101", "1111111010010101", "0000000100100110", "1111111001001001", "1111110111110011", "0000000110110000", "1111111111111100", "0000000011111101", "0000000101101011", "1111111111001011", "0000000011101010", "0000000100110100", "0000000011101010", "0000001000101100", "0000000100001010" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;