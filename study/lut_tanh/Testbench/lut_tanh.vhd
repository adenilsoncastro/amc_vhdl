 library ieee;
 use ieee.std_logic_1164.all;
 
 --library ieee_proposed;
 --use ieee_proposed.fixed_pkg.all;
 
 use ieee.fixed_pkg.all;
 
 entity lut_tanh is
	generic(
		g_bits	: natural := 8);
	
	port(
		i_address	: in std_logic_vector(g_bits-1 downto 0);
		o_output		: out std_logic_vector(g_bits-1 downto 0)); 
 end lut_tanh;
 
 
 architecture bhv of lut_tanh is
	
	signal r_addr	: sfixed(2 downto -5);
	signal r_out	: std_logic_vector(g_bits-1 downto 0);
	
 begin
	
	p_find : process(i_address, r_addr)	
	begin	
	
	r_addr <= to_sfixed(i_address, r_addr'high, r_addr'low);
	
		if r_addr <= to_sfixed(-4, 2, -5) then r_out <= "11000000";
		elsif r_addr > to_sfixed(-4, 2, -5) 		and r_addr <= to_sfixed(-2.40625, 2, -5) 	then r_out <= "11000001";
		elsif r_addr > to_sfixed(-2.40625, 2, -5) 	and r_addr <= to_sfixed(-2.0625, 2, -5) 	then r_out <= "11000010";
		elsif r_addr > to_sfixed(-2.0625, 2, -5) 	and r_addr <= to_sfixed(-1.875, 2, -5) 		then r_out <= "11000011";
		elsif r_addr > to_sfixed(-1.875, 2, -5) 	and r_addr <= to_sfixed(-1.71875, 2, -5) 	then r_out <= "11000100";
		elsif r_addr > to_sfixed(-1.71875, 2, -5) 	and r_addr <= to_sfixed(-1.59375, 2, -5) 	then r_out <= "11000101";
		elsif r_addr > to_sfixed(-1.59375, 2, -5) 	and r_addr <= to_sfixed(-1.5, 2, -5) 		then r_out <= "11000110";
		elsif r_addr > to_sfixed(-1.5, 2, -5) 		and r_addr <= to_sfixed(-1.4375, 2, -5) 	then r_out <= "11000111";
		elsif r_addr > to_sfixed(-1.4375, 2, -5) 	and r_addr <= to_sfixed(-1.34375, 2, -5) 	then r_out <= "11001000";
		elsif r_addr > to_sfixed(-1.34375, 2, -5) 	and r_addr <= to_sfixed(-1.28125, 2, -5) 	then r_out <= "11001001";
		elsif r_addr > to_sfixed(-1.28125, 2, -5) 	and r_addr <= to_sfixed(-1.25, 2, -5) 		then r_out <= "11001010";
		elsif r_addr > to_sfixed(-1.25, 2, -5) 		and r_addr <= to_sfixed(-1.1875, 2, -5) 	then r_out <= "11001011";
		elsif r_addr > to_sfixed(-1.1875, 2, -5) 	and r_addr <= to_sfixed(-1.15625, 2, -5) 	then r_out <= "11001100";
		elsif r_addr > to_sfixed(-1.15625, 2, -5) 	and r_addr <= to_sfixed(-1.09375, 2, -5) 	then r_out <= "11001101";
		elsif r_addr > to_sfixed(-1.09375, 2, -5) 	and r_addr <= to_sfixed(-1.0625, 2, -5) 	then r_out <= "11001110";
		elsif r_addr > to_sfixed(-1.0625, 2, -5) 	and r_addr <= to_sfixed(-1.03125, 2, -5) 	then r_out <= "11001111";
		elsif r_addr > to_sfixed(-1.03125, 2, -5) 	and r_addr <= to_sfixed(-0.96875, 2, -5) 	then r_out <= "11010000";
		elsif r_addr > to_sfixed(-0.96875, 2, -5) 	and r_addr <= to_sfixed(-0.9375, 2, -5) 	then r_out <= "11010001";
		elsif r_addr > to_sfixed(-0.9375, 2, -5)	and r_addr <= to_sfixed(-0.90625, 2, -5) 	then r_out <= "11010010";
		elsif r_addr > to_sfixed(-0.90625, 2, -5) 	and r_addr <= to_sfixed(-0.875, 2, -5) 		then r_out <= "11010011";
		elsif r_addr > to_sfixed(-0.875, 2, -5) 	and r_addr <= to_sfixed(-0.84375, 2, -5) 	then r_out <= "11010100";
		elsif r_addr > to_sfixed(-0.84375, 2, -5) 	and r_addr <= to_sfixed(-0.8125, 2, -5) 	then r_out <= "11010101";
		elsif r_addr > to_sfixed(-0.8125, 2, -5) 	and r_addr <= to_sfixed(-0.78125, 2, -5)	then r_out <= "11010110";
		elsif r_addr > to_sfixed(-0.78125, 2, -5) 	and r_addr <= to_sfixed(-0.75, 2, -5) 		then r_out <= "11011000";
		elsif r_addr > to_sfixed(-0.75, 2, -5) 		and r_addr <= to_sfixed(-0.71875, 2, -5) 	then r_out <= "11011001";
		elsif r_addr > to_sfixed(-0.71875, 2, -5) 	and r_addr <= to_sfixed(-0.6875, 2, -5) 	then r_out <= "11011010";
		elsif r_addr > to_sfixed(-0.6875, 2, -5) 	and r_addr <= to_sfixed(-0.65625, 2, -5)	then r_out <= "11011011";
		elsif r_addr > to_sfixed(-0.65625, 2, -5) 	and r_addr <= to_sfixed(-0.625, 2, -5) 		then r_out <= "11011101";
		elsif r_addr > to_sfixed(-0.625, 2, -5) 	and r_addr <= to_sfixed(-0.59375, 2, -5) 	then r_out <= "11011110";
		elsif r_addr > to_sfixed(-0.59375, 2, -5) 	and r_addr <= to_sfixed(-0.5625, 2, -5) 	then r_out <= "11100000";
		elsif r_addr > to_sfixed(-0.5625, 2, -5) 	and r_addr <= to_sfixed(-0.53125, 2, -5) 	then r_out <= "11100001";
		elsif r_addr > to_sfixed(-0.53125, 2, -5) 	and r_addr <= to_sfixed(-0.5, 2, -5) 		then r_out <= "11100011";
		elsif r_addr > to_sfixed(-0.5, 2, -5)		and r_addr <= to_sfixed(-0.46875, 2, -5) 	then r_out <= "11100100";
		elsif r_addr > to_sfixed(-0.46875, 2, -5) 	and r_addr <= to_sfixed(-0.4375, 2, -5) 	then r_out <= "11100110";
		elsif r_addr > to_sfixed(-0.4375, 2, -5) 	and r_addr <= to_sfixed(-0.40625, 2, -5) 	then r_out <= "11101000";
		elsif r_addr > to_sfixed(-0.40625, 2, -5) 	and r_addr <= to_sfixed(-0.375, 2, -5) 		then r_out <= "11101001";
		elsif r_addr > to_sfixed(-0.375, 2, -5) 	and r_addr <= to_sfixed(-0.34375, 2, -5) 	then r_out <= "11101011";
		elsif r_addr > to_sfixed(-0.34375, 2, -5) 	and r_addr <= to_sfixed(-0.3125, 2, -5) 	then r_out <= "11101101";
		elsif r_addr > to_sfixed(-0.3125, 2, -5) 	and r_addr <= to_sfixed(-0.28125, 2, -5) 	then r_out <= "11101111";
		elsif r_addr > to_sfixed(-0.28125, 2, -5) 	and r_addr <= to_sfixed(-0.25, 2, -5) 		then r_out <= "11110001";
		elsif r_addr > to_sfixed(-0.25, 2, -5) 		and r_addr <= to_sfixed(-0.21875, 2, -5) 	then r_out <= "11110011";
		elsif r_addr > to_sfixed(-0.21875, 2, -5) 	and r_addr <= to_sfixed(-0.1875, 2, -5) 	then r_out <= "11110101";
		elsif r_addr > to_sfixed(-0.1875, 2, -5) 	and r_addr <= to_sfixed(-0.15625, 2, -5) 	then r_out <= "11110111";
		elsif r_addr > to_sfixed(-0.15625, 2, -5) 	and r_addr <= to_sfixed(-0.125, 2, -5) 		then r_out <= "11111000";
		elsif r_addr > to_sfixed(-0.125, 2, -5) 	and r_addr <= to_sfixed(-0.09375, 2, -5) 	then r_out <= "11111010";
		elsif r_addr > to_sfixed(-0.09375, 2, -5) 	and r_addr <= to_sfixed(-0.0625, 2, -5) 	then r_out <= "11111100";
		elsif r_addr > to_sfixed(-0.0625, 2, -5) 	and r_addr <= to_sfixed(-0.03125, 2, -5) 	then r_out <= "11111110";
		elsif r_addr > to_sfixed(-0.03125, 2, -5) 	and r_addr <= to_sfixed(0.0, 2, -5) 		then r_out <= "00000000";
		elsif r_addr > to_sfixed(0.0, 2, -5) 		and r_addr <= to_sfixed(0.03125, 2, -5) 	then r_out <= "00000010";
		elsif r_addr > to_sfixed(0.03125, 2, -5) 	and r_addr <= to_sfixed(0.0625, 2, -5) 		then r_out <= "00000100";
		elsif r_addr > to_sfixed(0.0625, 2, -5) 	and r_addr <= to_sfixed(0.09375, 2, -5) 	then r_out <= "00000110";
		elsif r_addr > to_sfixed(0.09375, 2, -5) 	and r_addr <= to_sfixed(0.125, 2, -5) 		then r_out <= "00001000";
		elsif r_addr > to_sfixed(0.125, 2, -5) 		and r_addr <= to_sfixed(0.15625, 2, -5) 	then r_out <= "00001001";
		elsif r_addr > to_sfixed(0.15625, 2, -5) 	and r_addr <= to_sfixed(0.1875, 2, -5) 		then r_out <= "00001011";
		elsif r_addr > to_sfixed(0.1875, 2, -5) 	and r_addr <= to_sfixed(0.21875, 2, -5) 	then r_out <= "00001101";
		elsif r_addr > to_sfixed(0.21875, 2, -5) 	and r_addr <= to_sfixed(0.25, 2, -5) 		then r_out <= "00001111";
		elsif r_addr > to_sfixed(0.25, 2, -5) 		and r_addr <= to_sfixed(0.28125, 2, -5) 	then r_out <= "00010001";
		elsif r_addr > to_sfixed(0.28125, 2, -5) 	and r_addr <= to_sfixed(0.3125, 2, -5) 		then r_out <= "00010011";
		elsif r_addr > to_sfixed(0.3125, 2, -5) 	and r_addr <= to_sfixed(0.34375, 2, -5)		then r_out <= "00010101";
		elsif r_addr > to_sfixed(0.34375, 2, -5) 	and r_addr <= to_sfixed(0.375, 2, -5) 		then r_out <= "00010111";
		elsif r_addr > to_sfixed(0.375, 2, -5)		and r_addr <= to_sfixed(0.40625, 2, -5) 	then r_out <= "00011000";
		elsif r_addr > to_sfixed(0.40625, 2, -5) 	and r_addr <= to_sfixed(0.4375, 2, -5) 		then r_out <= "00011010";
		elsif r_addr > to_sfixed(0.4375, 2, -5) 	and r_addr <= to_sfixed(0.46875, 2, -5) 	then r_out <= "00011100";
		elsif r_addr > to_sfixed(0.46875, 2, -5) 	and r_addr <= to_sfixed(0.5, 2, -5) 		then r_out <= "00011101";
		elsif r_addr > to_sfixed(0.5, 2, -5) 		and r_addr <= to_sfixed(0.53125, 2, -5) 	then r_out <= "00011111";
		elsif r_addr > to_sfixed(0.53125, 2, -5) 	and r_addr <= to_sfixed(0.5625, 2, -5) 		then r_out <= "00100000";
		elsif r_addr > to_sfixed(0.5625, 2, -5) 	and r_addr <= to_sfixed(0.59375, 2, -5) 	then r_out <= "00100010";
		elsif r_addr > to_sfixed(0.59375, 2, -5) 	and r_addr <= to_sfixed(0.625, 2, -5) 		then r_out <= "00100011";
		elsif r_addr > to_sfixed(0.625, 2, -5) 		and r_addr <= to_sfixed(0.65625, 2, -5) 	then r_out <= "00100101";
		elsif r_addr > to_sfixed(0.65625, 2, -5) 	and r_addr <= to_sfixed(0.6875, 2, -5) 		then r_out <= "00100110";
		elsif r_addr > to_sfixed(0.6875, 2, -5) 	and r_addr <= to_sfixed(0.71875, 2, -5) 	then r_out <= "00100111";
		elsif r_addr > to_sfixed(0.71875, 2, -5) 	and r_addr <= to_sfixed(0.75, 2, -5) 		then r_out <= "00101000";
		elsif r_addr > to_sfixed(0.75, 2, -5) 		and r_addr <= to_sfixed(0.78125, 2, -5) 	then r_out <= "00101010";
		elsif r_addr > to_sfixed(0.78125, 2, -5) 	and r_addr <= to_sfixed(0.8125, 2, -5) 		then r_out <= "00101011";
		elsif r_addr > to_sfixed(0.8125, 2, -5) 	and r_addr <= to_sfixed(0.84375, 2, -5) 	then r_out <= "00101100";
		elsif r_addr > to_sfixed(0.84375, 2, -5) 	and r_addr <= to_sfixed(0.875, 2, -5) 		then r_out <= "00101101";
		elsif r_addr > to_sfixed(0.875, 2, -5) 		and r_addr <= to_sfixed(0.90625, 2, -5) 	then r_out <= "00101110";
		elsif r_addr > to_sfixed(0.90625, 2, -5) 	and r_addr <= to_sfixed(0.9375, 2, -5) 		then r_out <= "00101111";
		elsif r_addr > to_sfixed(0.9375, 2, -5) 	and r_addr <= to_sfixed(1.0, 2, -5) 		then r_out <= "00110000";
		elsif r_addr > to_sfixed(1.0, 2, -5) 		and r_addr <= to_sfixed(1.03125, 2, -5) 	then r_out <= "00110001";
		elsif r_addr > to_sfixed(1.03125, 2, -5) 	and r_addr <= to_sfixed(1.0625, 2, -5) 		then r_out <= "00110010";
		elsif r_addr > to_sfixed(1.0625, 2, -5) 	and r_addr <= to_sfixed(1.125, 2, -5) 		then r_out <= "00110011";
		elsif r_addr > to_sfixed(1.125, 2, -5) 		and r_addr <= to_sfixed(1.15625, 2, -5) 	then r_out <= "00110100";
		elsif r_addr > to_sfixed(1.15625, 2, -5) 	and r_addr <= to_sfixed(1.21875, 2, -5) 	then r_out <= "00110101";
		elsif r_addr > to_sfixed(1.21875, 2, -5)	and r_addr <= to_sfixed(1.25, 2, -5) 		then r_out <= "00110110";
		elsif r_addr > to_sfixed(1.25, 2, -5) 		and r_addr <= to_sfixed(1.3125, 2, -5) 		then r_out <= "00110111";
		elsif r_addr > to_sfixed(1.3125, 2, -5) 	and r_addr <= to_sfixed(1.40625, 2, -5) 	then r_out <= "00111000";
		elsif r_addr > to_sfixed(1.40625, 2, -5) 	and r_addr <= to_sfixed(1.46875, 2, -5) 	then r_out <= "00111001";
		elsif r_addr > to_sfixed(1.46875, 2, -5) 	and r_addr <= to_sfixed(1.5625, 2, -5) 		then r_out <= "00111010";
		elsif r_addr > to_sfixed(1.5625, 2, -5) 	and r_addr <= to_sfixed(1.6875, 2, -5) 		then r_out <= "00111011";
		elsif r_addr > to_sfixed(1.6875, 2, -5) 	and r_addr <= to_sfixed(1.84375, 2, -5) 	then r_out <= "00111100";
		elsif r_addr > to_sfixed(1.84375, 2, -5) 	and r_addr <= to_sfixed(2.03125, 2, -5) 	then r_out <= "00111101";
		elsif r_addr > to_sfixed(2.03125, 2, -5) 	and r_addr <= to_sfixed(2.375, 2, -5) 		then r_out <= "00111110";
		elsif r_addr > to_sfixed(2.03125, 2, -5) 	and r_addr <= to_sfixed(3.96875, 2, -5) 	then r_out <= "00111111";
		elsif r_addr > to_sfixed(3.96875, 2, -5) 	then r_out <= "01000000";		
		else r_out <= "01000000";
		
		end if;

	end process p_find;
	
	o_output <= r_out;
	
 end bhv;
 
 