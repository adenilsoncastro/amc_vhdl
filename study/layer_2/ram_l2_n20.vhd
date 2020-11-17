library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l2_n20 is
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
end ram_l2_n20;

architecture rtl of ram_l2_n20 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111110000011011", "0000000010001010", "1111111101010010", "1111111101101101", "0000011011000110", "0000000110000000", "1111111110010011", "0000000010001110", "0000001101101001", "0000001111101100", "1111110000000110", "0001001011101000", "0000000010011010", "0000000100100000", "0000000101000110", "1111100010111010", "0000000001100111", "1110011000110001", "0000001100100011", "0000011010010001", "0000000001111011", "1111110011111011", "1111001000100101", "1111111010010010", "0000001100011011", "1111111001110110", "1111001110001111", "0000000000010011", "1111101111000100", "1111100100001010" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;