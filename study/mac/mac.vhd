 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mac is
	port 
	(
		a			: in std_logic_vector(7 downto 0);
		b			: in std_logic_vector (7 downto 0);
		clk			: in std_logic;
		sload		: in std_logic;
		accum_out	: out std_logic_vector (15 downto 0)
	);
	
end mac;


architecture rtl of mac is
	
	signal adder_out : std_logic_vector(15 downto 0);
	
	component mac_alt is
	port(
			clock0	: IN STD_LOGIC  := '1';
			dataa		: IN STD_LOGIC_VECTOR (7 DOWNTO 0) :=  (OTHERS => '0');
			datab		: IN STD_LOGIC_VECTOR (7 DOWNTO 0) :=  (OTHERS => '0');
			result	: OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
	end component mac_alt;

begin

	mac : mac_alt port map(clk, a, b, adder_out);
	
	accum_out <= adder_out;
	
end rtl;
