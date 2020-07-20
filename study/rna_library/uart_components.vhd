library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package uart_components is
    component uart_tx is
		generic(
			g_clks_per_bit : integer := 5209);
			
		port(
			i_clk			: in std_logic;
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
			i_clk			: in std_logic;
			i_rx_serial	: in std_logic;
			o_rx_dv		: out std_logic;
			o_rx_byte	: out std_logic_vector(7 downto 0));
    end component;
end uart_components;