library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port(
			s		: 	out std_logic;
			c_out	: 	out std_logic;
			x		: 	in std_logic;
			y		: 	in std_logic;
			c_in	: 	in std_logic);
end full_adder;

architecture bhv of full_adder is

signal inputs	:	std_logic_vector(2 downto 0);
signal outputs	:	std_logic_vector(1 downto 0);

begin
	inputs <= c_in & x & y;
	c_out  <= outputs(1);
	s		 <= outputs(0);
	
	adder_process	:	process(inputs)
		begin
			case inputs is
				when "000" =>
					outputs <= "00";
				when "001" =>
					outputs <= "01";
				when "010" =>
					outputs <= "01";
				when "011" =>
					outputs <= "10";
				when "100" =>
					outputs <= "01";
				when "101" =>
					outputs <= "10";
				when "110" =>
					outputs <= "10";
				when "111" =>
					outputs <= "11";
				when others =>
					outputs <= (others => 'X');
			end case;
	end process adder_process;
end bhv;