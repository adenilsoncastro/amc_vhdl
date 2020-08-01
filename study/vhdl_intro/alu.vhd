library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
	generic (N:	integer := 8);
	
	port(a,b 	: in std_logic_vector(N-1 downto 0);
		 c_in 	: in std_logic;
		opcode	: in std_logic_vector(3 downto 0);
			y  	: out std_logic_vector(N-1 downto 0));
end alu;

architecture bhv of alu is
	signal a_signed,b_signed 	: signed(N-1 downto 0);
	signal y_signed				: signed(N-1 downto 0);
	signal y_unsigned 		 	: std_logic_vector(N-1 downto 0);
	signal carrier 			 	: integer range 0 to 1;
	
	begin
	a_signed <= signed(a);
	b_signed <= signed(b);
	carrier  <= 1 when c_in='1' else 0;
	
		with opcode(2 downto 0) select
			y_unsigned <= 	not a		when "000",
							not b 		when "001",
							a and b  	when "010",
							a or b   	when "011",
							a nand b	when "100",
							a nor b  	when "101",
							a xor b  	when "110",
							a xnor b 	when others;
		
		with opcode(2 downto 0) select
			y_signed <= 	a_signed 	 when "000",
							b_signed     when "001",
							a_signed + 1 when "010",
							b_signed + 1 when "011",
							a_signed - 1 when "100",
							b_signed - 1 when "101",
							a_signed + b_signed when "110",
							a_signed + b_signed + carrier when others;
		
		
		with opcode(3) select
			y <= y_unsigned when '0',
				  std_logic_vector(y_signed) when others;
end bhv;
			
							 
		
				
			
			