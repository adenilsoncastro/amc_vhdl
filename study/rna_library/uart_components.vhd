library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package uart_components is
    component uart_tx is
		generic(
			g_clks_per_bit : integer := 5209);
			
		port(
			i_clk		: in std_logic;
			i_tx_dv		: in std_logic;
			i_tx_byte	: in std_logic_vector(7 downto 0);
			o_tx_active	: out std_logic;
			o_tx_serial	: out std_logic;
			o_tx_done	: out std_logic);
	end component;
	
	component uart_rx is
		generic(
			g_clks_per_bit : integer := 5209);
			
		port(
			i_clk		: in std_logic;
			i_rx_serial	: in std_logic;
			o_rx_dv		: out std_logic;
			o_rx_byte	: out std_logic_vector(7 downto 0));
    end component;
	 
	 component fifo is
		generic(
			g_width		: natural := 8;
			g_depth		: integer := 10);
		
		port(
			i_rst_sync	: in std_logic;
			i_clk		: in std_logic;
			
			i_wr_en		: in std_logic;
			i_wr_data	: in std_logic_vector(g_width-1 downto 0);
			o_full		: out std_logic;
			
			i_rd_en		: in std_logic;
			o_rd_data	: out std_logic_vector(g_width-1 downto 0);
			o_empty		: out std_logic);
	end component;
	
end uart_components;