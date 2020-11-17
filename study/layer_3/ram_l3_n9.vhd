library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_l3_n9 is
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
end ram_l3_n9;

architecture rtl of ram_l3_n9 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000001110100010", "0000100011110001", "1111101101001000", "0000000011001110", "1111100111110101", "0000010111110110", "1111111100101011", "0000000101001101", "0000000011111000", "1111111111010101", "1111100011111011", "1111110001100011", "1111110001110001", "1111111101100100", "0000000111101110", "0000000110001010", "1111010001111000", "1111001011110010", "1111111110010001", "0000101001010100", "1111111001101100", "1111100001010010", "1111111101110100", "1111110010101111" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;