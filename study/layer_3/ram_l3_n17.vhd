library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l3_n17 is
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
end ram_l3_n17;

architecture rtl of ram_l3_n17 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000000101001010", "1111001101010111", "0000000110010111", "0000001010001001", "1111101101000010", "0000001101010001", "1111111000101110", "0000001001110111", "0000001001111010", "1111110100101100", "0000100101100010", "1111101011100011", "1111100010110111", "1111111000000011", "1111111110011010", "0000001110000100", "1111101011100011", "0001001000110100", "1111110011100110", "0000000100111101", "0000000011000011", "1111100111111101", "1111110101000100", "1111111111011110" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;