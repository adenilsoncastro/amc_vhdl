 library ieee;
 use ieee.std_logic_1164.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all; 
 
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
	
		if r_addr <= to_sfixed("10000000", 2, -5) then r_out <= "11000000";
		elsif r_addr > to_sfixed("10000000", 2, -5) and r_addr <= to_sfixed("10110011", 2, -5) then r_out <= "11000001";
		elsif r_addr > to_sfixed("10110011", 2, -5) and r_addr <= to_sfixed("10111110", 2, -5) then r_out <= "11000010";
		elsif r_addr > to_sfixed("10111110", 2, -5) and r_addr <= to_sfixed("11000100", 2, -5) then r_out <= "11000011";
		elsif r_addr > to_sfixed("11000100", 2, -5) and r_addr <= to_sfixed("11001001", 2, -5) then r_out <= "11000100";
		elsif r_addr > to_sfixed("11001001", 2, -5) and r_addr <= to_sfixed("11001101", 2, -5) then r_out <= "11000101";
		elsif r_addr > to_sfixed("11001101", 2, -5) and r_addr <= to_sfixed("11010000", 2, -5) then r_out <= "11000110";
		elsif r_addr > to_sfixed("11010000", 2, -5) and r_addr <= to_sfixed("11010010", 2, -5) then r_out <= "11000111";
		elsif r_addr > to_sfixed("11010010", 2, -5) and r_addr <= to_sfixed("11010101", 2, -5) then r_out <= "11001000";
		elsif r_addr > to_sfixed("11010101", 2, -5) and r_addr <= to_sfixed("11010111", 2, -5) then r_out <= "11001001";
		elsif r_addr > to_sfixed("11010111", 2, -5) and r_addr <= to_sfixed("11011000", 2, -5) then r_out <= "11001010";
		elsif r_addr > to_sfixed("11011000", 2, -5) and r_addr <= to_sfixed("11011010", 2, -5) then r_out <= "11001011";
		elsif r_addr > to_sfixed("11011010", 2, -5) and r_addr <= to_sfixed("11011011", 2, -5) then r_out <= "11001100";
		elsif r_addr > to_sfixed("11011011", 2, -5) and r_addr <= to_sfixed("11011101", 2, -5) then r_out <= "11001101";
		elsif r_addr > to_sfixed("11011101", 2, -5) and r_addr <= to_sfixed("11011110", 2, -5) then r_out <= "11001110";
		elsif r_addr > to_sfixed("11011110", 2, -5) and r_addr <= to_sfixed("11011111", 2, -5) then r_out <= "11001111";
		elsif r_addr > to_sfixed("11011111", 2, -5) and r_addr <= to_sfixed("11100001", 2, -5) then r_out <= "11010000";
		elsif r_addr > to_sfixed("11100001", 2, -5) and r_addr <= to_sfixed("11100010", 2, -5) then r_out <= "11010001";
		elsif r_addr > to_sfixed("11100010", 2, -5) and r_addr <= to_sfixed("11100011", 2, -5) then r_out <= "11010010";
		elsif r_addr > to_sfixed("11100011", 2, -5) and r_addr <= to_sfixed("11100100", 2, -5) then r_out <= "11010011";
		elsif r_addr > to_sfixed("11100100", 2, -5) and r_addr <= to_sfixed("11100101", 2, -5) then r_out <= "11010100";
		elsif r_addr > to_sfixed("11100101", 2, -5) and r_addr <= to_sfixed("11100110", 2, -5) then r_out <= "11010101";
		elsif r_addr > to_sfixed("11100110", 2, -5) and r_addr <= to_sfixed("11100111", 2, -5) then r_out <= "11010110";
		elsif r_addr > to_sfixed("11100111", 2, -5) and r_addr <= to_sfixed("11101001", 2, -5) then r_out <= "11011001";
		elsif r_addr > to_sfixed("11101001", 2, -5) and r_addr <= to_sfixed("11101010", 2, -5) then r_out <= "11011010";
		elsif r_addr > to_sfixed("11101010", 2, -5) and r_addr <= to_sfixed("11101011", 2, -5) then r_out <= "11011011";
		elsif r_addr > to_sfixed("11101011", 2, -5) and r_addr <= to_sfixed("11101100", 2, -5) then r_out <= "11011101";
		elsif r_addr > to_sfixed("11101100", 2, -5) and r_addr <= to_sfixed("11101101", 2, -5) then r_out <= "11011110";
		elsif r_addr > to_sfixed("11101101", 2, -5) and r_addr <= to_sfixed("11101110", 2, -5) then r_out <= "11100000";
		elsif r_addr > to_sfixed("11101110", 2, -5) and r_addr <= to_sfixed("11101111", 2, -5) then r_out <= "11100001";
		elsif r_addr > to_sfixed("11101111", 2, -5) and r_addr <= to_sfixed("11110000", 2, -5) then r_out <= "11100011";
		elsif r_addr > to_sfixed("11110000", 2, -5) and r_addr <= to_sfixed("11110001", 2, -5) then r_out <= "11100100";
		elsif r_addr > to_sfixed("11110001", 2, -5) and r_addr <= to_sfixed("11110010", 2, -5) then r_out <= "11100110";
		elsif r_addr > to_sfixed("11110010", 2, -5) and r_addr <= to_sfixed("11110011", 2, -5) then r_out <= "11101000";
		elsif r_addr > to_sfixed("11110011", 2, -5) and r_addr <= to_sfixed("11110100", 2, -5) then r_out <= "11101001";
		elsif r_addr > to_sfixed("11110100", 2, -5) and r_addr <= to_sfixed("11110101", 2, -5) then r_out <= "11101011";
		elsif r_addr > to_sfixed("11110101", 2, -5) and r_addr <= to_sfixed("11110110", 2, -5) then r_out <= "11101101";
		elsif r_addr > to_sfixed("11110110", 2, -5) and r_addr <= to_sfixed("11110111", 2, -5) then r_out <= "11101111";
		elsif r_addr > to_sfixed("11110111", 2, -5) and r_addr <= to_sfixed("11111000", 2, -5) then r_out <= "11110001";
		elsif r_addr > to_sfixed("11111000", 2, -5) and r_addr <= to_sfixed("11111001", 2, -5) then r_out <= "11110011";
		elsif r_addr > to_sfixed("11111001", 2, -5) and r_addr <= to_sfixed("11111010", 2, -5) then r_out <= "11110101";
		elsif r_addr > to_sfixed("11111010", 2, -5) and r_addr <= to_sfixed("11111011", 2, -5) then r_out <= "11110111";
		elsif r_addr > to_sfixed("11111011", 2, -5) and r_addr <= to_sfixed("11111100", 2, -5) then r_out <= "11111000";
		elsif r_addr > to_sfixed("11111100", 2, -5) and r_addr <= to_sfixed("11111101", 2, -5) then r_out <= "11111010";
		elsif r_addr > to_sfixed("11111101", 2, -5) and r_addr <= to_sfixed("11111110", 2, -5) then r_out <= "11111100";
		elsif r_addr > to_sfixed("11111110", 2, -5) and r_addr <= to_sfixed("11111111", 2, -5) then r_out <= "11111110";
		elsif r_addr > to_sfixed("11111111", 2, -5) and r_addr <= to_sfixed("00000000", 2, -5) then r_out <= "00000000";
		elsif r_addr > to_sfixed("00000000", 2, -5) and r_addr <= to_sfixed("00000001", 2, -5) then r_out <= "00000010";
		elsif r_addr > to_sfixed("00000001", 2, -5) and r_addr <= to_sfixed("00000010", 2, -5) then r_out <= "00000100";
		elsif r_addr > to_sfixed("00000010", 2, -5) and r_addr <= to_sfixed("00000011", 2, -5) then r_out <= "00000110";
		elsif r_addr > to_sfixed("00000011", 2, -5) and r_addr <= to_sfixed("00000100", 2, -5) then r_out <= "00001000";
		elsif r_addr > to_sfixed("00000100", 2, -5) and r_addr <= to_sfixed("00000101", 2, -5) then r_out <= "00001001";
		elsif r_addr > to_sfixed("00000101", 2, -5) and r_addr <= to_sfixed("00000110", 2, -5) then r_out <= "00001011";
		elsif r_addr > to_sfixed("00000110", 2, -5) and r_addr <= to_sfixed("00000111", 2, -5) then r_out <= "00001101";
		elsif r_addr > to_sfixed("00000111", 2, -5) and r_addr <= to_sfixed("00001000", 2, -5) then r_out <= "00001111";
		elsif r_addr > to_sfixed("00001000", 2, -5) and r_addr <= to_sfixed("00001001", 2, -5) then r_out <= "00010001";
		elsif r_addr > to_sfixed("00001001", 2, -5) and r_addr <= to_sfixed("00001010", 2, -5) then r_out <= "00010011";
		elsif r_addr > to_sfixed("00001010", 2, -5) and r_addr <= to_sfixed("00001011", 2, -5) then r_out <= "00010101";
		elsif r_addr > to_sfixed("00001011", 2, -5) and r_addr <= to_sfixed("00001100", 2, -5) then r_out <= "00010111";
		elsif r_addr > to_sfixed("00001100", 2, -5) and r_addr <= to_sfixed("00001101", 2, -5) then r_out <= "00011000";
		elsif r_addr > to_sfixed("00001101", 2, -5) and r_addr <= to_sfixed("00001110", 2, -5) then r_out <= "00011010";
		elsif r_addr > to_sfixed("00001110", 2, -5) and r_addr <= to_sfixed("00001111", 2, -5) then r_out <= "00011100";
		elsif r_addr > to_sfixed("00001111", 2, -5) and r_addr <= to_sfixed("00010000", 2, -5) then r_out <= "00011101";
		elsif r_addr > to_sfixed("00010000", 2, -5) and r_addr <= to_sfixed("00010001", 2, -5) then r_out <= "00011111";
		elsif r_addr > to_sfixed("00010001", 2, -5) and r_addr <= to_sfixed("00010010", 2, -5) then r_out <= "00100000";
		elsif r_addr > to_sfixed("00010010", 2, -5) and r_addr <= to_sfixed("00010011", 2, -5) then r_out <= "00100010";
		elsif r_addr > to_sfixed("00010011", 2, -5) and r_addr <= to_sfixed("00010100", 2, -5) then r_out <= "00100011";
		elsif r_addr > to_sfixed("00010100", 2, -5) and r_addr <= to_sfixed("00010101", 2, -5) then r_out <= "00100101";
		elsif r_addr > to_sfixed("00010101", 2, -5) and r_addr <= to_sfixed("00010110", 2, -5) then r_out <= "00100110";
		elsif r_addr > to_sfixed("00010110", 2, -5) and r_addr <= to_sfixed("00010111", 2, -5) then r_out <= "00100111";
		elsif r_addr > to_sfixed("00010111", 2, -5) and r_addr <= to_sfixed("00011000", 2, -5) then r_out <= "00101000";
		elsif r_addr > to_sfixed("00011000", 2, -5) and r_addr <= to_sfixed("00011001", 2, -5) then r_out <= "00101010";
		elsif r_addr > to_sfixed("00011001", 2, -5) and r_addr <= to_sfixed("00011010", 2, -5) then r_out <= "00101011";
		elsif r_addr > to_sfixed("00011010", 2, -5) and r_addr <= to_sfixed("00011011", 2, -5) then r_out <= "00101100";
		elsif r_addr > to_sfixed("00011011", 2, -5) and r_addr <= to_sfixed("00011100", 2, -5) then r_out <= "00101101";
		elsif r_addr > to_sfixed("00011100", 2, -5) and r_addr <= to_sfixed("00011101", 2, -5) then r_out <= "00101110";
		elsif r_addr > to_sfixed("00011101", 2, -5) and r_addr <= to_sfixed("00011110", 2, -5) then r_out <= "00101111";
		elsif r_addr > to_sfixed("00011110", 2, -5) and r_addr <= to_sfixed("00100000", 2, -5) then r_out <= "00110000";
		elsif r_addr > to_sfixed("00100000", 2, -5) and r_addr <= to_sfixed("00100001", 2, -5) then r_out <= "00110001";
		elsif r_addr > to_sfixed("00100001", 2, -5) and r_addr <= to_sfixed("00100010", 2, -5) then r_out <= "00110010";
		elsif r_addr > to_sfixed("00100010", 2, -5) and r_addr <= to_sfixed("00100100", 2, -5) then r_out <= "00110011";
		elsif r_addr > to_sfixed("00100100", 2, -5) and r_addr <= to_sfixed("00100101", 2, -5) then r_out <= "00110100";
		elsif r_addr > to_sfixed("00100101", 2, -5) and r_addr <= to_sfixed("00100111", 2, -5) then r_out <= "00110101";
		elsif r_addr > to_sfixed("00100111", 2, -5) and r_addr <= to_sfixed("00101000", 2, -5) then r_out <= "00110110";
		elsif r_addr > to_sfixed("00101000", 2, -5) and r_addr <= to_sfixed("00101010", 2, -5) then r_out <= "00110111";
		elsif r_addr > to_sfixed("00101010", 2, -5) and r_addr <= to_sfixed("00101101", 2, -5) then r_out <= "00111000";
		elsif r_addr > to_sfixed("00101101", 2, -5) and r_addr <= to_sfixed("00101111", 2, -5) then r_out <= "00111001";
		elsif r_addr > to_sfixed("00101111", 2, -5) and r_addr <= to_sfixed("00110010", 2, -5) then r_out <= "00111010";
		elsif r_addr > to_sfixed("00110010", 2, -5) and r_addr <= to_sfixed("00110110", 2, -5) then r_out <= "00111011";
		elsif r_addr > to_sfixed("00110110", 2, -5) and r_addr <= to_sfixed("00111011", 2, -5) then r_out <= "00111100";
		elsif r_addr > to_sfixed("00111011", 2, -5) and r_addr <= to_sfixed("01000001", 2, -5) then r_out <= "00111101";
		elsif r_addr > to_sfixed("01000001", 2, -5) and r_addr <= to_sfixed("01001100", 2, -5) then r_out <= "00111110";
		elsif r_addr > to_sfixed("01001100", 2, -5) and r_addr <= to_sfixed("01111111", 2, -5) then r_out <= "00111111";
		elsif r_addr > to_sfixed("01111111", 2, -5) then r_out <= "01000000";		
		else r_out <= "01000000";
		
		end if;

	end process p_find;
	
	o_output <= r_out;
	
 end bhv;
 
 