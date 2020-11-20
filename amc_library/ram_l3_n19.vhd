library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library amc_library;
use amc_library.data_types_pkg.all;

entity ram_l3_n19 is
	generic(
		g_width   : natural := c_bits;
		g_depth 	: natural := 50;
		g_addr_bits : natural := 5);
	port(
		i_clk			: in std_logic;
		i_wr			: in std_logic;
		i_addr		: in std_logic_vector(g_addr_bits-1 downto 0);
		i_data		: in std_logic_vector(g_width-1 downto 0);
		o_data		: out std_logic_vector(g_width-1 downto 0));
end ram_l3_n19;

architecture rtl of ram_l3_n19 is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem := ("0000000100000110", "1111100100010001", "0000001101101111", "0000010000100100", "1111100010110100", "0000001011010110", "1111101100111010", "0000010001111011", "0000001000000011", "1111111000010000", "0000100001110101", "0000001011100001", "1111101110010110", "1111110000001100", "1111111001100111", "0000001100101010", "1111101111101011", "0000110001110110", "1111110100011001", "0000000100010010", "0000000111110011", "1111111001100110", "1111110001011100", "0000001101110000" , others => (others => '0'));

begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;	end process p_ram;end rtl;