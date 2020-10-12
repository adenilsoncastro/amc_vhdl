 library ieee;
 use ieee.std_logic_1164.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;
 
 library rna_library;
 use rna_library.data_types_pkg.t_frame_data;
 
 entity mean is
	generic(
		g_frame_size	: natural := 2048);
		
	port(
		i_clk		: in std_logic;
		i_enable	: in std_logic;
		i_frame	: in t_frame_data;
		o_result	: out std_logic_vector(15 downto 0);
		o_done	: out std_logic);
 end mean;
 
 architecture bhv of mean is
 
	type t_sm is (s_idle, s_calculus, s_clean);
	
	signal r_sm					: t_sm := s_idle; 
	signal r_result 			: sfixed(4 downto -11);
	signal r_frame				: t_frame_data;
	signal r_single_value	: sfixed(4 downto -11);
	signal r_index				: integer range 0 to g_frame_size;
	signal r_done				: std_logic;
	
 begin
	
	p_calculate : process(i_clk)
	begin
		if rising_edge(i_clk) then
			case r_sm is
				when s_idle =>
					if i_enable = '1' then
						r_sm <= s_calculus;
					else
						r_sm <= s_idle;
					end if;
				
				when s_calculus =>
					if r_index < g_frame_size then
						r_single_value <= to_sfixed(i_frame(r_index), r_single_value'high, r_single_value'low);
						r_result 		<= resize(r_result + r_single_value, r_result'high, r_result'low);
						r_index 			<= r_index + 1;
						r_sm 				<= s_calculus;
						r_done			<= '1';
					else
						r_sm				<= s_clean;
					end if;
				when s_clean =>
					r_index	<= 0;
					r_done 	<='0';
					r_sm		<= s_idle;
			end case;
		end if;	
	end process p_calculate;
 
	O_done 	<= r_done;
	o_result <= to_slv(r_result);
	
 end bhv;