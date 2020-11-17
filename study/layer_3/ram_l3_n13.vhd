library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l3_n13 is
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
end ram_l3_n13;

architecture rtl of ram_l3_n13 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000000000001010", "0000000011111001", "1111111110101000", "0000110010111111", "0000000011010000", "0000000001111111", "0000000010100111", "0000101101101000", "0000000100011001", "1111111100110110", "1111111010101001", "1111111111100011", "0000000011001001", "1111010011111011", "1111111110101110", "1111111111111000", "1111111111001111", "0000000110000110", "1111010110001101", "0000000000100010", "0000000000010000", "1111111101110110", "1111010011000111", "0000000001111010" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;