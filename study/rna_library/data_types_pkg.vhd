library ieee;
use ieee.std_logic_1164.all;

package data_types_pkg is
	type t_complex is record
		re		: std_logic_vector(15 downto 0);
		img		: std_logic_vector(15 downto 0);
	end record;
	
	type t_mod_data is array (0 to 5) of t_complex;
	
	type t_frame_data is array (0 to 5) of std_logic_vector(15 downto 0);
end data_types_pkg;

	