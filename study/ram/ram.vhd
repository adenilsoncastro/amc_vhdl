library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 entity ram is
	generic(
		g_width 		: natural := 8;
		g_depth 		: natural := 10;
		g_addr_bits : natural := 4);
	
	port(
		i_clk			: in std_logic;
		i_wr			: in std_logic;
		i_addr		: in std_logic_vector(g_addr_bits-1 downto 0);
		i_data		: in std_logic_vector(g_width-1 downto 0);
		o_data		: out std_logic_vector(g_width-1 downto 0));
 end ram;
 
 architecture rtl of ram is
	type t_mem is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_mem : t_mem :=(
	"11111111", "11010101", "01101010", "11010010", "01110001",
	"01010100", "00101010", "10010100", "01010101", "01010101"); 
	
 begin
	p_ram : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_wr='1') then
				r_mem(to_integer(unsigned(i_addr))) <= i_data;
			end if;
			o_data <= r_mem(to_integer(unsigned(i_addr)));
		end if;
	end process p_ram; 
 end rtl;