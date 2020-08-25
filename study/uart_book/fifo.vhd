 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 
 entity fifo is 
	generic(
		g_bits : natural :=8;
		g_words: natural := 4);
	port(
		i_clk			: in std_logic;
		i_rst			: in std_logic;
		i_rd			: in std_logic;
		i_wr			: in std_logic;
		i_wr_data	: in std_logic_vector(g_bits-1 downto 0);
		o_empty		: out std_logic;
		o_full		: out std_logic;
		o_rd_data	: out std_logic_vector(g_bits-1 downto 0));
 end fifo;
 
 architecture arch of fifo is
	type t_reg_file is array (2**g_words-1 downto 0) of std_logic_vector (g_bits-1 downto 0);
	signal r_array			: t_reg_file;
	signal r_w_ptr 		: std_logic_vector(g_words-1 downto 0);
	signal r_w_ptr_next 	: std_logic_vector(g_words-1 downto 0);
	signal r_w_ptr_succ 	: std_logic_vector(g_words-1 downto 0);
	
	signal r_ptr 			: std_logic_vector(g_words-1 downto 0);
	signal r_ptr_next  	: std_logic_vector(g_words-1 downto 0);
	signal r_ptr_succ 	: std_logic_vector(g_words-1 downto 0);
	
	signal r_full 			: std_logic;
	signal r_empty 		: std_logic;
	signal r_full_next 	: std_logic;
	signal r_empty_next 	: std_logic;
	signal r_wr_op 		: std_logic_vector(1 downto 0);
	signal r_wr_en 		: std_logic;
	
	begin
		p_register_file : process(i_clk, i_rst)
		begin
			if not i_rst = '1' then
				r_array <= (others => (others => '0'));
			elsif rising_edge(i_clk) then
				if r_wr_en = '1' then
					r_array(to_integer(unsigned(r_w_ptr))) <= i_wr_data;
				end if;
			end if;
		end process p_register_file;
		
		p_control : process (i_clk, i_rst)
		begin
			if not i_rst = '1' then
				r_w_ptr 	<= (others => '0');
				r_ptr 	<= (others => '0');
				r_full 	<= '0';
				r_empty 	<= '1';
			elsif rising_edge(i_clk) then
				r_w_ptr 	<= r_w_ptr_next;
				r_ptr 	<= r_ptr_next;
				r_full 	<= r_full_next;
				r_empty 	<= r_empty_next;
			end if;
		end process p_control;
		
		p_pointers : process(r_w_ptr, r_w_ptr_succ, r_ptr, r_ptr_succ, r_wr_op, r_empty, r_full) 
		begin
			r_w_ptr_next <= r_w_ptr;
			r_ptr_next	 <= r_ptr;
			r_full_next	 <= r_full;
			r_empty_next <= r_empty;
			
			case r_wr_op is
				when "00" =>
				
				when "01" =>
					if (r_empty /= '1') then
						r_ptr_next 	<= r_ptr_succ;
						r_full_next <= '0';
						if r_ptr_succ = r_w_ptr then
							r_empty_next <= '1';
						end if;
					end if;
				
				when "10" =>
					if (r_full /= '1') then
						r_w_ptr_next <= r_w_ptr_succ;
						r_empty_next <= '0';
						if r_w_ptr_succ = r_ptr then
							r_full_next <= '1';
						end if;
					end if;
				
				when others =>
					r_w_ptr_next <= r_w_ptr_succ;
					r_ptr_next 	 <= r_ptr_succ;
			end case;
		end process p_pointers;
	
	o_rd_data <= r_array(to_integer(unsigned(r_ptr)));
	r_wr_en <= i_wr and (not r_full);
	
	r_w_ptr_succ <= std_logic_vector(unsigned(r_w_ptr) + 1);
	r_ptr_succ	<= std_logic_vector(unsigned(r_ptr) + 1);
	r_wr_op <= i_wr & i_rd;
	
	o_full <= r_full;
	o_empty <= r_empty;

end arch;
				
			
	
	