library ieee;
use ieee.std_logic_1164.all;

package data_types_pkg is
	
	constant c_bits 		: natural := 16;
	constant c_fxp_high	: natural := 4;
	constant c_fxp_low	: integer := -11;
	constant c_frame_size: natural := 2048;
	
	type t_complex is record
		re		: std_logic_vector(15 downto 0);
		img	: std_logic_vector(15 downto 0);
	end record;
	
	type t_mod_data is array (0 to 5) of t_complex;
	
	type t_frame_data is array (0 to 5) of std_logic_vector(15 downto 0);
	
end package data_types_pkg;

	