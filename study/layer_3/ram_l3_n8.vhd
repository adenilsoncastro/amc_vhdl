library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l3_n8 is
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
end ram_l3_n8;

architecture rtl of ram_l3_n8 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111110001001110", "0000001000010110", "1111111100100110", "0000000000011000", "0000000000000101", "1111111010101111", "0000000101000010", "0000000010011101", "1111111000000100", "0000000101111010", "1111111001110110", "0000000001001011", "0000000001100111", "1111111110110001", "0000100010010001", "1111101110111001", "1111101111010010", "1111101100111101", "1111111111110010", "1111111001101011", "1111011110101111", "1111110100010011", "0000000000010100", "1111110110010100" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;