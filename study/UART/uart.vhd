 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 use work.all;
 
 entity uart is
	generic(
		n_bits 			: integer := 8;
		g_clks_per_bit	: integer := 5209);----50000000/9600
		
	port(
		clk, rst		: in std_logic;
		
		i_tx_dv		: in std_logic;
		tx_data		: in std_logic_vector(n_bits - 1 downto 0);
		o_tx_active : out std_logic;
		o_tx_serial : out std_logic;
		o_tx_done 	: out std_logic;
		
		i_rx_serial : in std_logic;
		o_rx_dv		: out std_logic;
		rx_data		: out std_logic_vector(n_bits - 1 downto 0));
end uart;

architecture bhv of uart is
	
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

	signal r_rx_data 	: std_logic_vector(7 downto 0) := (others => '0');
	signal r_tx_data 	: std_logic_vector(7 downto 0) := (others => '0');
	signal r_tx_dv		: std_logic := '0';

begin
	
	receiver 	: uart_rx generic map(g_clks_per_bit) port map(clk, i_rx_serial, o_rx_dv, r_rx_data);
	transmitter : uart_tx generic map(g_clks_per_bit) port map(clk, r_tx_dv, r_tx_data, o_tx_active, o_tx_serial, o_tx_done);	
	
	p_communicate : process(clk)
	begin
		if rising_edge(clk) then
			if o_rx_dv = '1' then
				r_tx_dv <= '1';
				r_tx_data <= r_rx_data;			
			else
				if o_tx_done = '1' then
					r_tx_dv <= '0';
				end if;
			end if;
		end if;
	end process p_communicate;
	
	rx_data <= r_rx_data;
end bhv;	