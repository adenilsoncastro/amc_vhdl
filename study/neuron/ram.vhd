library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 entity ram is
	generic(
		g_width 		: natural := 16;
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
	"0000000000000000", "0000000000110001", "1111111101100000", "0000000000110100", "1111111110101111",
	"0000000000101100", "0000000001010100", others => "0000000000000000"); 
	
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