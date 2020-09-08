library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity simple_operations_tb is
end simple_operations_tb;

architecture behave of simple_operations_tb is

constant c_clks_per_bit : integer := 5209; -- 50M/9600
constant c_bit_period : time := 104 us;

signal r_clk        : std_logic                     := '0';
signal r_rst        : std_logic                     := '0';
signal r_rst_sync   : std_logic                     := '0';

signal r_rx_serial  : std_logic                     := '1';
signal w_rd_rx      : std_logic                     := '0';
signal w_rx_full    : std_logic                     := '0';
signal w_rx_empty   : std_logic                     := '0';

signal w_tx_serial  : std_logic                     := '0';
signal w_wr_tx      : std_logic                     := '0';
signal w_tx_full    : std_logic                     := '0';
signal w_tx_empty   : std_logic                     := '0';

signal r_rx_data       : std_logic_vector(7 DOWNTO 0)  := (others => '0');
signal r_tx_data       : std_logic_vector(7 DOWNTO 0)  := (others => '0');

-- Low-level byte-write
procedure uart_write_byte (
	i_data_in       : in  std_logic_vector(7 downto 0);
	signal o_serial : out std_logic) is
	begin

	-- Send Start Bit
	o_serial <= '0';
	wait for c_bit_period;

	-- Send Data Byte
	for ii in 0 to 7 loop
		o_serial <= i_data_in(ii);
		wait for c_bit_period;
	end loop;  -- ii

	-- Send Stop Bit
	o_serial <= '1';
	wait for c_bit_period;
end uart_write_byte;

component uart is
    generic(
        g_bits 				: natural := 8;
        g_clks_per_bit		: integer := 5209;----50000000/9600
        g_depth				: integer := 10);
    port(
        i_clk 				: in std_logic;
        i_rst					: in std_logic;
        i_rst_sync			: in std_logic;
        
        i_rx					: in std_logic;
        o_fifo_rx_full		: out std_logic;
        o_fifo_rx_empty	: out std_logic;
        o_rx_data			: out std_logic_vector(g_bits-1 downto 0);
        i_rd_uart			: in std_logic;
        
        o_tx					: out std_logic;
        o_fifo_tx_full		: out std_logic;
        o_fifo_tx_empty	: out std_logic;
        i_tx_data			: in std_logic_vector(g_bits-1 downto 0);
        i_wr_uart			: in std_logic);
end component;

begin
    DUT : uart 
        port map (
            i_clk => r_clk, 
            i_rst => r_rst, 
            i_rst_sync => r_rst_sync, 
            i_rx => r_rx_serial,
            o_fifo_rx_full => w_rx_full, 
            o_fifo_rx_empty => w_rx_empty, 
            o_rx_data => r_rx_data, 
            i_rd_uart => w_rd_rx,
            o_tx => w_tx_serial, 
            o_fifo_tx_full => w_tx_full, 
            o_fifo_tx_empty => w_tx_empty, 
            i_tx_data => r_tx_data, 
            i_wr_uart => w_wr_tx
        );

    r_clk <= not r_clk after 20 ns;

    test : process is
    begin
        wait for 10 ns;
        uart_write_byte(X"31", r_rx_serial);
        wait for 5 ms;
        wait until rising_edge(r_clk);

        wait until rising_edge(r_clk);
        w_rd_rx <= '1';
        wait until rising_edge(r_clk);
        w_rd_rx <= '0';

        wait for 10 ns;

        r_tx_data 	<= std_logic_vector(unsigned(r_rx_data) + 1);

        wait until rising_edge(r_clk);

        w_wr_tx <= '1';
        wait until rising_edge(r_clk);
        w_wr_tx <= '0';

        wait for 10 ms;

		if r_tx_data = X"32" then
			report "Serial data received successfully" severity note;
		else
			report "Error while receiving serial data" severity note;
		end if;
		
		assert false report "Tests Complete" severity failure;

    end process test;

end behave;