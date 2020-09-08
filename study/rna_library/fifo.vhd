library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo is
	generic(
		g_width	: natural := 8;
		g_depth	: integer := 10);
	
	port(
		i_rst_sync	: in std_logic;
		i_clk		: in std_logic;
		
		i_wr_en		: in std_logic;
		i_wr_data	: in std_logic_vector(g_width-1 downto 0);
		o_full		: out std_logic;
		
		i_rd_en		: in std_logic;
		o_rd_data	: out std_logic_vector(g_width-1 downto 0);
		o_empty		: out std_logic);
end fifo;

architecture bhv of fifo is
	type t_fifo_data is array (0 to g_depth-1) of std_logic_vector(g_width-1 downto 0);
	signal r_fifo_data : t_fifo_data := (others => (others => '0'));
	
	signal r_wr_index  : integer range 0 to g_depth-1 := 0;
	signal r_rd_index  : integer range 0 to g_depth-1 := 0;
	
	signal r_fifo_count: integer range -1 to g_depth+1:= 0;
	
	signal w_full 		 : std_logic;
	signal w_empty	 	 : std_logic;
	
	begin
		p_control : process(i_clk) is
		begin
			if rising_edge(i_clk) then
				if i_rst_sync = '1' then
					r_fifo_count <= 0;
					r_wr_index	 <= 0;
					r_rd_index	 <= 0;
				else
					
					if (i_wr_en = '1' and i_rd_en = '0') then
						r_fifo_count <= r_fifo_count + 1;
					elsif (i_wr_en = '0' and i_rd_en = '1') then
						r_fifo_count <= r_fifo_count - 1;
					end if;
					
					if (i_wr_en = '1' and w_full = '0') then
						if r_wr_index = g_depth-1 then
							r_wr_index <= 0;
						else
							r_wr_index <= r_wr_index + 1;
						end if;
					end if;
					
					if (i_rd_en = '1' and w_empty = '0') then
						if r_rd_index = g_depth-1 then
							r_rd_index <= 0;
						else
							r_rd_index <= r_rd_index + 1;
						end if;
					end if;
					
					if i_wr_en = '1' then
						r_fifo_data(r_wr_index) <= i_wr_data;
					end if;
				end if;
			end if;
		end process p_control;
	
	o_rd_data <= r_fifo_data(r_rd_index);
	
	w_full  <= '1' when r_fifo_count = g_depth else '0';
	w_empty <= '1' when r_fifo_count = 0		 else '0';
	
	o_full  <= w_full;
	o_empty <= w_empty;
		
end bhv;