library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l2_n23 is
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
end ram_l2_n23;

architecture rtl of ram_l2_n23 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000000010011010", "1111110011110101", "1111111001010011", "0000000110000010", "1111111000000100", "0000000010110101", "0000001000110011", "1111110001100100", "1111001101011111", "0000001010001011", "1111111010101000", "1111110100011000", "0000000110011001", "0000001001010001", "0000001001010010", "0000010000110010", "0000001001110011", "0000001000010010", "1111101011001000", "1111110111101100", "1111111000010001", "0000001010101110", "1111111111111110", "1111110110100000", "1111110111100011", "0000010100000000", "0000001010000111", "1111111000000101", "1111111011000001", "0000000101101111" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;