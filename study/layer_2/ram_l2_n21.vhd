library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l2_n21 is
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
end ram_l2_n21;

architecture rtl of ram_l2_n21 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111110001101110", "1111111111101110", "0000000000110101", "0000000001000001", "0000000010000001", "0000000011000101", "1111111111001001", "1111111111000000", "1111111010011000", "0000001100111101", "0000000000001000", "0000000000001111", "1111111111001110", "1111111101000110", "1111111110000010", "1111111110010101", "1111111110010111", "1111111100101101", "1111111110000110", "1111111111101110", "0000000001011001", "0000000100011000", "1111111110101000", "0000000100111101", "0000000100100001", "0000000000100101", "1111111111000001", "0000000000100001", "1111111110110100", "1111110110111001" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;