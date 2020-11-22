 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
  
 library amc_library;
 use amc_library.data_types_pkg.all;
 
 entity amc is
	generic(
		g_bits		: natural := c_bits;
		g_fxp_high	: natural := c_fxp_high;
		g_fxp_low	: integer := c_fxp_low);
		
	port(
		i_clk			: in std_logic;
		i_rst			: in std_logic;
		i_enable		: in std_logic;
		i_ft_0		: in std_logic_vector(g_bits-1 downto 0);
		i_ft_1		: in std_logic_vector(g_bits-1 downto 0);
		i_ft_2		: in std_logic_vector(g_bits-1 downto 0);
		i_ft_3		: in std_logic_vector(g_bits-1 downto 0);
		i_ft_4		: in std_logic_vector(g_bits-1 downto 0);
		i_ft_5		: in std_logic_vector(g_bits-1 downto 0);
		o_done		: out std_logic;
		o_result		: out std_logic_vector(6 downto 0));
 end amc;
 
 architecture bhv of amc is
 
 type t_sm is (s_idle, s_input_layer, s_hl_1, s_hl_2, s_hl_3, s_hl_4, s_output_layer, s_clear);
 signal r_sm : t_sm := s_idle;
 
 --General constants and signals
 --IL = Input Layer
 --HL = Hidden Layer
 --OL = Output Layer
 constant c_il 	: natural 	:= 6;
 constant c_hl_1	: natural 	:= 6;
 constant c_hl_2	: natural 	:= 30;
 constant c_hl_3	: natural 	:= 24;
 constant c_ol		: natural 	:= 20;
 signal r_done		: std_logic := '0';
 
 --Enable signal of each layer
 signal r_enable_il	: std_logic := '0';
 signal r_enable_hl1 : std_logic := '0';
 signal r_enable_hl2	: std_logic := '0';
 signal r_enable_hl3	: std_logic := '0';
 signal r_enable_ol	: std_logic := '0';
 
 --Counter signals to control each sinapse
 signal r_count_il	: natural range 0 to c_il := 0;
 signal r_count_hl_1 : natural range 0 to c_hl_1 := 0;
 signal r_count_hl_2	: natural range 0 to c_hl_2 := 0;
 signal r_count_hl_3	: natural range 0 to c_hl_3 := 0;
 signal r_count_ol	: natural range 0 to c_ol := 0;
 
 --Input signals for each layer
 signal r_input_il	: std_logic_vector(g_bits-1 downto 0) := (others => '0');
 signal r_input_hl1	: std_logic_vector(g_bits-1 downto 0) := (others => '0');
 signal r_input_hl2	: std_logic_vector(g_bits-1 downto 0) := (others => '0');
 signal r_input_hl3	: std_logic_vector(g_bits-1 downto 0) := (others => '0');
 signal r_input_ol	: std_logic_vector(g_bits-1 downto 0) := (others => '0');
 
 --Result signals of each neuron of each layer
	--Input layer
	signal r_result_il_n0 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_il_n1 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_il_n2 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_il_n3 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_il_n4 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_il_n5 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	
	--Hidden layer 1
	signal r_result_hl1_n0 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n1 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n2 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n3 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n4 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n5 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n6 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n7 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n8 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n9 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n10 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n11 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n12 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n13 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n14 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n15 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n16 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n17 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n18 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n19 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n20 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n21 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n22 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n23 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n24 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n25 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n26 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n27 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n28 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl1_n29 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	
	--Hidden layer 2
	signal r_result_hl2_n0 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n1 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n2 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n3 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n4 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n5 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n6 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n7 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n8 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n9 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n10 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n11 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n12 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n13 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n14 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n15 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n16 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n17 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n18 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n19 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n20 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n21 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n22 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl2_n23 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	
	--Hidden layer 3
	signal r_result_hl3_n0 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n1 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n2 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n3 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n4 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n5 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n6 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n7 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n8 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n9 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n10 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n11 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n12 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n13 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n14 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n15 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n16 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n17 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n18 : std_logic_vector(g_bits-1 downto 0) := (others => '0');
	signal r_result_hl3_n19 : std_logic_vector(g_bits-1 downto 0) := (others => '0');

	--Output layer
	signal r_result_ol : std_logic_vector(6 downto 0) := (others => '0');
	
 --MAC done signals for each layer
 signal r_mac_done_il	: std_logic := '0';
 signal r_mac_done_hl1	: std_logic := '0';
 signal r_mac_done_hl2	: std_logic := '0';
 signal r_mac_done_hl3	: std_logic := '0';
 signal r_mac_done_ol	: std_logic := '0';
 
		
 --Done signals of each layer
 signal r_il_done		: std_logic := '0';
 signal r_hl_1_done	: std_logic := '0';
 signal r_hl_2_done	: std_logic	:= '0';
 signal r_hl_3_done	: std_logic	:= '0';
 signal r_ol_done		: std_logic := '0';
 
 
 begin
 il	: layer_l0 port map(i_clk, i_rst, r_enable_il, r_input_il, r_mac_done_il, r_il_done, r_result_il_n0, r_result_il_n1, r_result_il_n2, r_result_il_n3, r_result_il_n4, r_result_il_n5);
 hl1	: layer_l1 port map(i_clk, i_rst, r_enable_hl1, r_input_hl1, r_mac_done_hl1, r_hl_1_done, r_result_hl1_n0, r_result_hl1_n1, r_result_hl1_n2, r_result_hl1_n3, r_result_hl1_n4, r_result_hl1_n5, r_result_hl1_n6, r_result_hl1_n7, r_result_hl1_n8, r_result_hl1_n9, r_result_hl1_n10, r_result_hl1_n11, r_result_hl1_n12, r_result_hl1_n13, r_result_hl1_n14, r_result_hl1_n15, r_result_hl1_n16, r_result_hl1_n17, r_result_hl1_n18, r_result_hl1_n19, r_result_hl1_n20, r_result_hl1_n21, r_result_hl1_n22, r_result_hl1_n23, r_result_hl1_n24, r_result_hl1_n25, r_result_hl1_n26, r_result_hl1_n27, r_result_hl1_n28, r_result_hl1_n29);
 hl2	: layer_l2 port map(i_clk, i_rst, r_enable_hl2, r_input_hl2, r_mac_done_hl2, r_hl_2_done, r_result_hl2_n0, r_result_hl2_n1, r_result_hl2_n2, r_result_hl2_n3, r_result_hl2_n4, r_result_hl2_n5, r_result_hl2_n6, r_result_hl2_n7, r_result_hl2_n8, r_result_hl2_n9, r_result_hl2_n10, r_result_hl2_n11, r_result_hl2_n12, r_result_hl2_n13, r_result_hl2_n14, r_result_hl2_n15, r_result_hl2_n16, r_result_hl2_n17, r_result_hl2_n18, r_result_hl2_n19, r_result_hl2_n20, r_result_hl2_n21, r_result_hl2_n22, r_result_hl2_n23);
 hl3	: layer_l3 port map(i_clk, i_rst, r_enable_hl3, r_input_hl3, r_mac_done_hl3, r_hl_3_done, r_result_hl3_n0, r_result_hl3_n1, r_result_hl3_n2, r_result_hl3_n3, r_result_hl3_n4, r_result_hl3_n5, r_result_hl3_n6, r_result_hl3_n7, r_result_hl3_n8, r_result_hl3_n9, r_result_hl3_n10, r_result_hl3_n11, r_result_hl3_n12, r_result_hl3_n13, r_result_hl3_n14, r_result_hl3_n15, r_result_hl3_n16, r_result_hl3_n17, r_result_hl3_n18, r_result_hl3_n19);
 ol	: layer_l4 port map(i_clk, i_rst, r_enable_ol, r_input_ol, r_mac_done_ol, r_ol_done, r_result_ol);
 
 
 p_amc : process(i_clk)
 begin
	if i_rst = '1' then
			--reset signals here
	else
		if rising_edge(i_clk) then		
			case r_sm is
				when s_idle =>
					if i_enable = '1' then
						r_sm 			<= s_input_layer;
						r_enable_il <= '1';
					else
						r_sm <= s_idle;
					end if;	
				
				when s_input_layer =>
					if r_mac_done_il = '1' then
						if r_count_il < c_il then
							r_count_il <= r_count_il + 1;
							r_sm <= s_input_layer;
						end if;
					elsif r_il_done = '1' then						
						r_sm <= s_hl_1;
						r_enable_il  <= '0';
						r_enable_hl1 <= '1';
					else
						r_sm <= s_input_layer;
					end if;
				
				when s_hl_1 =>
					if r_mac_done_hl1 = '1' then
						if r_count_hl_1 < c_hl_1 then
							r_count_hl_1 <= r_count_hl_1 + 1;
						end if;
					elsif r_hl_1_done = '1' then
						r_sm <= s_hl_2;
						r_enable_hl1 <= '0';
						r_enable_hl2 <= '1';					
					else
						r_sm <= s_hl_1;
					end if;
				
				when s_hl_2 =>
					if r_mac_done_hl2 = '1' then
						if r_count_hl_2 < c_hl_2 then
							r_count_hl_2 <= r_count_hl_2 + 1;
						end if;
					elsif r_hl_2_done = '1' then
						r_sm <= s_hl_3;
						r_enable_hl2 <= '0';
						r_enable_hl3 <= '1';						
					else
						r_sm <= s_hl_2;
					end if;
					
				when s_hl_3 =>
					if r_mac_done_hl3 = '1' then
						if r_count_hl_3 < c_hl_3 then
							r_count_hl_3 <= r_count_hl_3 + 1;
						end if;
					elsif r_hl_3_done = '1' then
						r_sm <= s_output_layer;
						r_enable_hl3 <= '0';
						r_enable_ol <= '1';						
					else
						r_sm <= s_hl_3;
					end if;					
				
				when s_output_layer =>
					if r_mac_done_ol = '1' then
						if r_count_ol < c_ol then
							r_count_ol <= r_count_ol + 1;
						end if;
					elsif r_ol_done = '1' then
						r_done <= '1';
						r_sm <= s_clear;
						r_enable_ol <= '0';
					else 
						r_sm <= s_output_layer;
					end if;
					
				when s_clear =>
					r_count_il		<= 0;
					r_count_hl_1 	<= 0;
					r_count_hl_2	<= 0;
					r_count_hl_3	<= 0;
				   r_count_ol		<= 0;
					r_done			<= '0';
					r_enable_il		<= '0';
					r_enable_hl1 	<= '0';
					r_enable_hl2	<= '0';
					r_enable_hl3	<= '0';
					r_enable_ol		<= '0';
					r_sm 				<= s_idle;
				
				when others =>
					r_sm <= s_idle;
				
			end case;				
		end if;
	end if;	
 end process p_amc;
 
 with r_count_il select
	r_input_il <= i_ft_0 when 0,
					  i_ft_1 when 1,
					  i_ft_2 when 2,
					  i_ft_3 when 3,
					  i_ft_4 when 4,
					  i_ft_5 when 5,
					  (others => '0') when others;
 
 with r_count_hl_1 select
	r_input_hl1 <= r_result_il_n0 when 0,
						 r_result_il_n1 when 1,
						 r_result_il_n2 when 2,
						 r_result_il_n3 when 3,
						 r_result_il_n4 when 4,
						 r_result_il_n5 when 5,
					    (others => '0') when others;
					  
 with r_count_hl_2 select
	r_input_hl2 <= r_result_hl1_n0  when 0,
						 r_result_hl1_n1  when 1,
						 r_result_hl1_n2  when 2,
						 r_result_hl1_n3  when 3,
						 r_result_hl1_n4  when 4,
						 r_result_hl1_n5  when 5,
						 r_result_hl1_n6  when 6,
						 r_result_hl1_n7  when 7,
						 r_result_hl1_n8  when 8,
						 r_result_hl1_n9  when 9,
						 r_result_hl1_n10 when 10,
						 r_result_hl1_n11 when 11,
						 r_result_hl1_n12 when 12,
						 r_result_hl1_n13 when 13,
						 r_result_hl1_n14 when 14,
						 r_result_hl1_n15 when 15,
						 r_result_hl1_n16 when 16,
						 r_result_hl1_n17 when 17,
						 r_result_hl1_n18 when 18,
						 r_result_hl1_n19 when 19,
						 r_result_hl1_n20 when 20,
						 r_result_hl1_n21 when 21,
						 r_result_hl1_n22 when 22,
						 r_result_hl1_n23 when 23,
						 r_result_hl1_n24 when 24,
						 r_result_hl1_n25 when 25,
						 r_result_hl1_n26 when 26,
						 r_result_hl1_n27 when 27,
						 r_result_hl1_n28 when 28,
						 r_result_hl1_n29 when 29,
						 (others => '0') when others;
 
 with r_count_hl_3 select
	r_input_hl3 <= r_result_hl2_n0  when 0,
						 r_result_hl2_n1  when 1,
						 r_result_hl2_n2  when 2,
						 r_result_hl2_n3  when 3,
						 r_result_hl2_n4  when 4,
						 r_result_hl2_n5  when 5,
						 r_result_hl2_n6  when 6,
						 r_result_hl2_n7  when 7,
						 r_result_hl2_n8  when 8,
						 r_result_hl2_n9  when 9,
						 r_result_hl2_n10 when 10,
						 r_result_hl2_n11 when 11,
						 r_result_hl2_n12 when 12,
						 r_result_hl2_n13 when 13,
						 r_result_hl2_n14 when 14,
						 r_result_hl2_n15 when 15,
						 r_result_hl2_n16 when 16,
						 r_result_hl2_n17 when 17,
						 r_result_hl2_n18 when 18,
						 r_result_hl2_n19 when 19,
						 r_result_hl2_n20 when 20,
						 r_result_hl2_n21 when 21,
						 r_result_hl2_n22 when 22,
						 r_result_hl2_n23 when 23,
						 (others => '0') when others;
						 
 with r_count_ol select
	r_input_ol <= r_result_hl3_n0  when 0,
					  r_result_hl3_n1  when 1,
					  r_result_hl3_n2  when 2,
					  r_result_hl3_n3  when 3,
					  r_result_hl3_n4  when 4,
					  r_result_hl3_n5  when 5,
					  r_result_hl3_n6  when 6,
					  r_result_hl3_n7  when 7,
					  r_result_hl3_n8  when 8,
					  r_result_hl3_n9  when 9,
					  r_result_hl3_n10 when 10,
					  r_result_hl3_n11 when 11,
					  r_result_hl3_n12 when 12,
					  r_result_hl3_n13 when 13,
					  r_result_hl3_n14 when 14,
					  r_result_hl3_n15 when 15,
					  r_result_hl3_n16 when 16,
					  r_result_hl3_n17 when 17,
					  r_result_hl3_n18 when 18,
					  r_result_hl3_n19 when 19,
					  (others => '0') when others;					 
						 
 
 o_done 		<= r_done;
 o_result 	<= r_result_ol;
 
 end bhv;