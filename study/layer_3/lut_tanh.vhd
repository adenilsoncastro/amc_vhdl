 library ieee;
 use ieee.std_logic_1164.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all; 
 
 entity lut_tanh is
	generic(
		g_bits		: natural := 16;
		g_fxp_high 	: natural := 4;
		g_fxp_low	: integer := -11);
	
	port(
		i_address	: in std_logic_vector(g_bits-1 downto 0);
		o_output		: out std_logic_vector(g_bits-1 downto 0)); 
 end lut_tanh;
 
 
 architecture bhv of lut_tanh is
	
	signal r_addr	: sfixed(g_fxp_high downto g_fxp_low);
	signal r_out	: std_logic_vector(g_bits-1 downto 0);
	
 begin
	
	p_find : process(i_address, r_addr)	
	begin	
	
	r_addr <= to_sfixed(i_address, r_addr'high, r_addr'low);
	
		if r_addr <= to_sfixed(-4, g_fxp_high, g_fxp_low) 				then r_out <= "1111100000100001";
		elsif r_addr > to_sfixed(-4, g_fxp_high, g_fxp_low) 			and r_addr <= to_sfixed(-2.40625, g_fxp_high, g_fxp_low) 	then r_out <= "1111100000100000";
		elsif r_addr > to_sfixed(-2.40625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-2.0625, g_fxp_high, g_fxp_low) 		then r_out <= "1111100001000000";
		elsif r_addr > to_sfixed(-2.0625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-1.875, g_fxp_high, g_fxp_low) 		then r_out <= "1111100001100000";
		elsif r_addr > to_sfixed(-1.875, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(-1.71875, g_fxp_high, g_fxp_low) 	then r_out <= "1111100010000000";
		elsif r_addr > to_sfixed(-1.71875, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-1.59375, g_fxp_high, g_fxp_low) 	then r_out <= "1111100010100000";
		elsif r_addr > to_sfixed(-1.59375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-1.5, g_fxp_high, g_fxp_low) 			then r_out <= "1111100011000000";
		elsif r_addr > to_sfixed(-1.5, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(-1.4375, g_fxp_high, g_fxp_low) 		then r_out <= "1111100011100000";
		elsif r_addr > to_sfixed(-1.4375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-1.34375, g_fxp_high, g_fxp_low) 	then r_out <= "1111100100000000";
		elsif r_addr > to_sfixed(-1.34375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-1.28125, g_fxp_high, g_fxp_low) 	then r_out <= "1111100100100000";
		elsif r_addr > to_sfixed(-1.28125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-1.25, g_fxp_high, g_fxp_low) 		then r_out <= "1111100101000000";
		elsif r_addr > to_sfixed(-1.25, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(-1.1875, g_fxp_high, g_fxp_low) 		then r_out <= "1111100101100000";
		elsif r_addr > to_sfixed(-1.1875, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-1.15625, g_fxp_high, g_fxp_low) 	then r_out <= "1111100110000000";
		elsif r_addr > to_sfixed(-1.15625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-1.09375, g_fxp_high, g_fxp_low) 	then r_out <= "1111100110100000";
		elsif r_addr > to_sfixed(-1.09375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-1.0625, g_fxp_high, g_fxp_low) 		then r_out <= "1111100111000000";
		elsif r_addr > to_sfixed(-1.0625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-1.03125, g_fxp_high, g_fxp_low) 	then r_out <= "1111100111100000";
		elsif r_addr > to_sfixed(-1.03125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.96875, g_fxp_high, g_fxp_low) 	then r_out <= "1111101000000000";
		elsif r_addr > to_sfixed(-0.96875, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.9375, g_fxp_high, g_fxp_low) 		then r_out <= "1111101000100000";
		elsif r_addr > to_sfixed(-0.9375, g_fxp_high, g_fxp_low)		and r_addr <= to_sfixed(-0.90625, g_fxp_high, g_fxp_low) 	then r_out <= "1111101001000000";
		elsif r_addr > to_sfixed(-0.90625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.875, g_fxp_high, g_fxp_low) 		then r_out <= "1111101001100000";
		elsif r_addr > to_sfixed(-0.875, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(-0.84375, g_fxp_high, g_fxp_low) 	then r_out <= "1111101010000000";
		elsif r_addr > to_sfixed(-0.84375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.8125, g_fxp_high, g_fxp_low) 		then r_out <= "1111101010100000";
		elsif r_addr > to_sfixed(-0.8125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.78125, g_fxp_high, g_fxp_low)		then r_out <= "1111101011000000";
		elsif r_addr > to_sfixed(-0.78125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.75, g_fxp_high, g_fxp_low) 		then r_out <= "1111101100000000";
		elsif r_addr > to_sfixed(-0.75, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(-0.71875, g_fxp_high, g_fxp_low) 	then r_out <= "1111101100100000";
		elsif r_addr > to_sfixed(-0.71875, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.6875, g_fxp_high, g_fxp_low) 		then r_out <= "1111101101000000";
		elsif r_addr > to_sfixed(-0.6875, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.65625, g_fxp_high, g_fxp_low)		then r_out <= "1111101101100000";
		elsif r_addr > to_sfixed(-0.65625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.625, g_fxp_high, g_fxp_low) 		then r_out <= "1111101110100000";
		elsif r_addr > to_sfixed(-0.625, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(-0.59375, g_fxp_high, g_fxp_low) 	then r_out <= "1111101111000000";
		elsif r_addr > to_sfixed(-0.59375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.5625, g_fxp_high, g_fxp_low) 		then r_out <= "1111110000000000";
		elsif r_addr > to_sfixed(-0.5625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.53125, g_fxp_high, g_fxp_low) 	then r_out <= "1111110000100000";
		elsif r_addr > to_sfixed(-0.53125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.5, g_fxp_high, g_fxp_low) 			then r_out <= "1111110001100000";
		elsif r_addr > to_sfixed(-0.5, g_fxp_high, g_fxp_low)			and r_addr <= to_sfixed(-0.46875, g_fxp_high, g_fxp_low) 	then r_out <= "1111110010000000";
		elsif r_addr > to_sfixed(-0.46875, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.4375, g_fxp_high, g_fxp_low) 		then r_out <= "1111110011000000";
		elsif r_addr > to_sfixed(-0.4375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.40625, g_fxp_high, g_fxp_low) 	then r_out <= "1111110100000000";
		elsif r_addr > to_sfixed(-0.40625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.375, g_fxp_high, g_fxp_low) 		then r_out <= "1111110100100000";
		elsif r_addr > to_sfixed(-0.375, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(-0.34375, g_fxp_high, g_fxp_low) 	then r_out <= "1111110101100000";
		elsif r_addr > to_sfixed(-0.34375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.3125, g_fxp_high, g_fxp_low) 		then r_out <= "1111110110100000";
		elsif r_addr > to_sfixed(-0.3125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.28125, g_fxp_high, g_fxp_low) 	then r_out <= "1111110111100000";
		elsif r_addr > to_sfixed(-0.28125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.25, g_fxp_high, g_fxp_low) 		then r_out <= "1111111000100000";
		elsif r_addr > to_sfixed(-0.25, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(-0.21875, g_fxp_high, g_fxp_low) 	then r_out <= "1111111001100000";
		elsif r_addr > to_sfixed(-0.21875, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.1875, g_fxp_high, g_fxp_low) 		then r_out <= "1111111010100000";
		elsif r_addr > to_sfixed(-0.1875, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.15625, g_fxp_high, g_fxp_low) 	then r_out <= "1111111011100000";
		elsif r_addr > to_sfixed(-0.15625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.125, g_fxp_high, g_fxp_low) 		then r_out <= "1111111100000000";
		elsif r_addr > to_sfixed(-0.125, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(-0.09375, g_fxp_high, g_fxp_low) 	then r_out <= "1111111101000000";
		elsif r_addr > to_sfixed(-0.09375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.0625, g_fxp_high, g_fxp_low) 		then r_out <= "1111111110000000";
		elsif r_addr > to_sfixed(-0.0625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(-0.03125, g_fxp_high, g_fxp_low) 	then r_out <= "1111111111000000";
		elsif r_addr > to_sfixed(-0.03125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.0, g_fxp_high, g_fxp_low) 			then r_out <= "0000000000000000";
		elsif r_addr > to_sfixed(0.0, g_fxp_high, g_fxp_low) 			and r_addr <= to_sfixed(0.03125, g_fxp_high, g_fxp_low) 		then r_out <= "0000000001000000";
		elsif r_addr > to_sfixed(0.03125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.0625, g_fxp_high, g_fxp_low) 		then r_out <= "0000000010000000";
		elsif r_addr > to_sfixed(0.0625, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(0.09375, g_fxp_high, g_fxp_low) 		then r_out <= "0000000011000000";
		elsif r_addr > to_sfixed(0.09375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.125, g_fxp_high, g_fxp_low) 		then r_out <= "0000000100000000";
		elsif r_addr > to_sfixed(0.125, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(0.15625, g_fxp_high, g_fxp_low) 		then r_out <= "0000000100100000";
		elsif r_addr > to_sfixed(0.15625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.1875, g_fxp_high, g_fxp_low) 		then r_out <= "0000000101100000";
		elsif r_addr > to_sfixed(0.1875, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(0.21875, g_fxp_high, g_fxp_low) 		then r_out <= "0000000110100000";
		elsif r_addr > to_sfixed(0.21875, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.25, g_fxp_high, g_fxp_low) 			then r_out <= "0000000111100000";
		elsif r_addr > to_sfixed(0.25, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(0.28125, g_fxp_high, g_fxp_low) 		then r_out <= "0000001000100000";
		elsif r_addr > to_sfixed(0.28125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.3125, g_fxp_high, g_fxp_low) 		then r_out <= "0000001001100000";
		elsif r_addr > to_sfixed(0.3125, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(0.34375, g_fxp_high, g_fxp_low) 		then r_out <= "0000001010100000";
		elsif r_addr > to_sfixed(0.34375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.375, g_fxp_high, g_fxp_low) 		then r_out <= "0000001011100000";
		elsif r_addr > to_sfixed(0.375, g_fxp_high, g_fxp_low)		and r_addr <= to_sfixed(0.40625, g_fxp_high, g_fxp_low) 		then r_out <= "0000001100000000";
		elsif r_addr > to_sfixed(0.40625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.4375, g_fxp_high, g_fxp_low) 		then r_out <= "0000001101000000";
		elsif r_addr > to_sfixed(0.4375, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(0.46875, g_fxp_high, g_fxp_low) 		then r_out <= "0000001110000000";
		elsif r_addr > to_sfixed(0.46875, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.5, g_fxp_high, g_fxp_low) 			then r_out <= "0000001110100000";
		elsif r_addr > to_sfixed(0.5, g_fxp_high, g_fxp_low) 			and r_addr <= to_sfixed(0.53125, g_fxp_high, g_fxp_low) 		then r_out <= "0000001111100000";
		elsif r_addr > to_sfixed(0.53125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.5625, g_fxp_high, g_fxp_low) 		then r_out <= "0000010000000000";
		elsif r_addr > to_sfixed(0.5625, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(0.59375, g_fxp_high, g_fxp_low) 		then r_out <= "0000010001000000";
		elsif r_addr > to_sfixed(0.59375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.625, g_fxp_high, g_fxp_low) 		then r_out <= "0000010001100000";
		elsif r_addr > to_sfixed(0.625, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(0.65625, g_fxp_high, g_fxp_low) 		then r_out <= "0000010010100000";
		elsif r_addr > to_sfixed(0.65625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.6875, g_fxp_high, g_fxp_low) 		then r_out <= "0000010011000000";
		elsif r_addr > to_sfixed(0.6875, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(0.71875, g_fxp_high, g_fxp_low) 		then r_out <= "0000010011100000";
		elsif r_addr > to_sfixed(0.71875, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.75, g_fxp_high, g_fxp_low) 			then r_out <= "0000010100000000";
		elsif r_addr > to_sfixed(0.75, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(0.78125, g_fxp_high, g_fxp_low) 		then r_out <= "0000010101000000";
		elsif r_addr > to_sfixed(0.78125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.8125, g_fxp_high, g_fxp_low) 		then r_out <= "0000010101100000";
		elsif r_addr > to_sfixed(0.8125, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(0.84375, g_fxp_high, g_fxp_low) 		then r_out <= "0000010110000000";
		elsif r_addr > to_sfixed(0.84375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.875, g_fxp_high, g_fxp_low) 		then r_out <= "0000010110100000";
		elsif r_addr > to_sfixed(0.875, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(0.90625, g_fxp_high, g_fxp_low) 		then r_out <= "0000010111000000";
		elsif r_addr > to_sfixed(0.90625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(0.9375, g_fxp_high, g_fxp_low) 		then r_out <= "0000010111100000";
		elsif r_addr > to_sfixed(0.9375, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(1.0, g_fxp_high, g_fxp_low) 			then r_out <= "0000011000000000";
		elsif r_addr > to_sfixed(1.0, g_fxp_high, g_fxp_low) 			and r_addr <= to_sfixed(1.03125, g_fxp_high, g_fxp_low) 		then r_out <= "0000011000100000";
		elsif r_addr > to_sfixed(1.03125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(1.0625, g_fxp_high, g_fxp_low) 		then r_out <= "0000011001000000";
		elsif r_addr > to_sfixed(1.0625, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(1.125, g_fxp_high, g_fxp_low) 		then r_out <= "0000011001100000";
		elsif r_addr > to_sfixed(1.125, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(1.15625, g_fxp_high, g_fxp_low) 		then r_out <= "0000011010000000";
		elsif r_addr > to_sfixed(1.15625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(1.21875, g_fxp_high, g_fxp_low) 		then r_out <= "0000011010100000";
		elsif r_addr > to_sfixed(1.21875, g_fxp_high, g_fxp_low)		and r_addr <= to_sfixed(1.25, g_fxp_high, g_fxp_low) 			then r_out <= "0000011011000000";
		elsif r_addr > to_sfixed(1.25, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(1.3125, g_fxp_high, g_fxp_low) 		then r_out <= "0000011011100000";
		elsif r_addr > to_sfixed(1.3125, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(1.40625, g_fxp_high, g_fxp_low) 		then r_out <= "0000011100000000";
		elsif r_addr > to_sfixed(1.40625, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(1.46875, g_fxp_high, g_fxp_low) 		then r_out <= "0000011100100000";
		elsif r_addr > to_sfixed(1.46875, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(1.5625, g_fxp_high, g_fxp_low) 		then r_out <= "0000011101000000";
		elsif r_addr > to_sfixed(1.5625, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(1.6875, g_fxp_high, g_fxp_low) 		then r_out <= "0000011101100000";
		elsif r_addr > to_sfixed(1.6875, g_fxp_high, g_fxp_low) 		and r_addr <= to_sfixed(1.84375, g_fxp_high, g_fxp_low) 		then r_out <= "0000011110000000";
		elsif r_addr > to_sfixed(1.84375, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(2.03125, g_fxp_high, g_fxp_low) 		then r_out <= "0000011110100000";
		elsif r_addr > to_sfixed(2.03125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(2.375, g_fxp_high, g_fxp_low) 		then r_out <= "0000011111000000";
		elsif r_addr > to_sfixed(2.03125, g_fxp_high, g_fxp_low) 	and r_addr <= to_sfixed(3.96875, g_fxp_high, g_fxp_low) 		then r_out <= "0000011111100000";
		elsif r_addr > to_sfixed(3.96875, g_fxp_high, g_fxp_low) 	then r_out <= "0000011111100001";		
		else r_out <= "0100000000000000";
		
		end if;

	end process p_find;
	
	o_output <= r_out;
	
 end bhv;
 
 