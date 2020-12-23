 library ieee;
 use ieee.std_logic_1164.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;
 
 library rna_library;
 use rna_library.data_types_pkg.all;
 
 entity mean is
	generic(
		g_bits			: natural := c_bits;
		g_fxp_high		: natural := c_fxp_high;
		g_fxp_low		: integer := c_fxp_low;
		g_frame_size	: natural := 10);
		
	port(
		i_clk		: in std_logic;
		i_enable	: in std_logic;
		i_rst		: in std_logic;
		i_input	: in std_logic_vector(g_bits-1 downto 0);
		o_result	: out std_logic_vector(g_bits-1 downto 0);
		o_done	: out std_logic);
 end mean;
 
 architecture bhv of mean is
 
	type t_sm is (s_idle, s_add, s_divide, s_clean);
	
	signal r_sm					: t_sm := s_idle; 
	signal r_acc				: sfixed(15 downto -16) := (others => '0');
	signal r_index				: natural range 0 to g_frame_size := 0;
	
	signal r_result 			: sfixed(4 downto -11):= (others => '0');
	signal r_done				: std_logic := '0';
	
 begin
	
	p_calculate : process(i_clk)
	begin
		if rising_edge(i_clk) then
			if i_rst = '1' then
				r_sm 		<= s_idle;
				r_acc		<= (others => '0');
				r_index  <= 0;
				r_result <= (others => '0');
				r_done	<= '0';
			else				
				case r_sm is
					when s_idle =>
						if i_enable = '1' then
							r_sm <= s_add;
						else
							r_sm <= s_idle;
						end if;
					
					when s_add =>
						if r_index < g_frame_size then
							r_acc 	<= resize(r_acc + to_sfixed(i_input, g_fxp_high, g_fxp_low), r_acc'high, r_acc'low);
							r_index 	<= r_index + 1;
							r_sm 		<= s_add;						
						else
							r_sm		<= s_divide;
						end if;
						
					when s_divide =>
						r_result <= resize(r_acc / g_frame_size, r_result'high, r_result'low);
						r_done 	<= '1';
						r_sm 		<= s_clean;					
						
					when s_clean =>
						r_index	<= 0;
						r_done 	<='0';
						r_acc		<= (others => '0');
						r_sm		<= s_idle;
					
					when others =>
						r_sm <= s_idle;
						
				end case;
			end if;
		end if;	
	end process p_calculate;
 
	O_done 	<= r_done;
	o_result <= to_slv(r_result);
	
 end bhv;