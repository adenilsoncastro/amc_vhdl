library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l3_n1 is
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
end ram_l3_n1;

architecture rtl of ram_l3_n1 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("1111111101100101", "0000000000100010", "0000010111001110", "0000000100110111", "1111100110101100", "1111111111100000", "1111101001101000", "0000000100110001", "0000000001000010", "1111111100010100", "1111110111101110", "0000100101100100", "1111110011000001", "1111111100011011", "0000000001010101", "0000000011110001", "1111111111001010", "0000100100110000", "1111111010110110", "0000000001011000", "1111111110110001", "0001001011111101", "1111111010111000", "1111111011001010" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;