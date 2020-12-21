 library ieee;
 use ieee.std_logic_1164.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;
 
 library rna_library;
 use rna_library.data_types_pkg.all;
 
 
 entity abs_complex is	
	generic(
		g_bits			: natural := c_bits;
		g_fxp_high		: natural := c_fxp_high;
		g_fxp_low		: integer := c_fxp_low);
	port(
		i_clk				: in std_logic;
		i_enable			: in std_logic;
		i_real			: in std_logic_vector(g_bits-1 downto 0);
		i_img				: in std_logic_vector(g_bits-1 downto 0);
		o_done			: out std_logic;
		o_complex		: out std_logic_vector(g_bits-1 downto 0));
 end abs_complex;
 
 
 architecture bhv of abs_complex is
	type t_sm is (s_idle, s_squared, s_sum, s_clear);
	signal r_sm : t_sm := s_idle;
	
	signal r_real 				: sfixed(g_fxp_high downto g_fxp_low) := (others => '0');
	signal r_real_squared	: sfixed(g_fxp_high downto g_fxp_low) := (others => '0');	
	signal r_img  				: sfixed(g_fxp_high downto g_fxp_low) := (others => '0');
	signal r_img_squared		: sfixed(g_fxp_high downto g_fxp_low) := (others => '0');	
	signal r_sum				: sfixed(g_fxp_high downto g_fxp_low) := (others => '0');
	signal r_done				: std_logic := '0';
	
 begin
 
	p_abs : process(i_clk)
	
	begin 
		r_real <= to_sfixed(i_real, r_real'high, r_real'low);
		r_img  <= to_sfixed(i_img, r_img'high, r_img'low);
		
		if rising_edge(i_clk) then
			case r_sm is
				when s_idle =>
					if i_enable = '1' then
						r_sm <= s_squared;
					else
						r_sm <= s_idle;
					end if;
				
				when s_squared =>
					r_real_squared <= resize(r_real*r_real, r_real_squared'high, r_real_squared'low); 
					r_img_squared 	<= resize(r_img*r_img, r_img_squared'high, r_img_squared'low);		
					r_sm <= s_sum;
					
				when s_sum =>
					r_sum	<= resize(r_real_squared + r_img_squared, r_sum'high, r_sum'low);
					r_done <= '1';
					r_sm 	<= s_clear;
					
				when s_clear =>
					r_real_squared <= (others => '0');
					r_img_squared 	<= (others => '0');
					r_done 			<= '0';
					r_sm 				<= s_idle;
					
				when others => 
					r_sm <= s_idle;
					
			end case;				
		end if;	
	end process p_abs;
	
 o_done 		<= r_done;	
 o_complex 	<= to_slv(r_sum);
 end bhv;