 library ieee;
 use ieee.std_logic_1164.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;
 
 library rna_library;
 use rna_library.data_types_pkg.t_complex;
 
 
 entity abs_complex is		
	port(
		i_clk				: in std_logic;
		i_enable			: in std_logic;
		i_real			: in std_logic_vector(15 downto 0);
		i_img				: in std_logic_vector(15 downto 0);
		o_complex		: out std_logic_vector(15 downto 0));
 end abs_complex;
 
 
 architecture bhv of abs_complex is
	
	signal r_real 				: sfixed(4 downto -11) := (others => '0');
	signal r_real_squared	: sfixed(4 downto -11) := (others => '0');
	
	signal r_img  				: sfixed(4 downto -11) := (others => '0');
	signal r_img_squared		: sfixed(4 downto -11) := (others => '0');
	
	signal r_sum				: sfixed(4 downto -11) := (others => '0');
	
 begin
 
	p_abs : process(i_clk)
	
	begin 
		r_real <= to_sfixed(i_real, r_real'high, r_real'low);
		r_img  <= to_sfixed(i_img, r_img'high, r_img'low);
		
		if rising_edge(i_clk) then
			if i_enable = '1' then
				r_real_squared <= resize(r_real*r_real, r_real_squared'high, r_real_squared'low); 
				r_img_squared 	<= resize(r_img*r_img, r_img_squared'high, r_img_squared'low);		
				r_sum 			<= resize(r_real_squared + r_img_squared, r_sum'high, r_sum'low);
				
				--sqrt of r_sum ?
				
			end if;
		end if;	
	end process p_abs;
	
 o_complex <= to_slv(r_sum);
 end bhv;