library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l3_n3 is
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
end ram_l3_n3;

architecture rtl of ram_l3_n3 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000000110000001", "0000100001001001", "1111000111011000", "0000000100001000", "0000001011001011", "0000000101000101", "0000110101010011", "0000000110110110", "0000000000101010", "0000000001011010", "1111011111110010", "1111001111110000", "0000001101100001", "1111111011000001", "0000000010100110", "1111111000011100", "0000000110101000", "1111100010100000", "1111111100100101", "0000001011110111", "1111111010101001", "1111010101111111", "1111111100011011", "0000000110101111" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;