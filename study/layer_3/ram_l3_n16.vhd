library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l3_n16 is
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
end ram_l3_n16;

architecture rtl of ram_l3_n16 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000011111110110", "1111111100011101", "0000000000001010", "1111111111110111", "0000000011101110", "0000000000000000", "0000000010101100", "0000000000011010", "0000000010001100", "0000000000010011", "0000000100010011", "0000010101010001", "1111111110001111", "0000000000111101", "1111011110001111", "0000001001100100", "1111111111111110", "1111111101101000", "1111111111001111", "0000010011011100", "0000101000110011", "0000001110110100", "1111111110010101", "1111111010010001" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;