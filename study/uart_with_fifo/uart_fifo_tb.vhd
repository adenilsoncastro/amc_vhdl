 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 use work.all;
 
 entity uart_fifo_tb is
 end uart_fifo_tb;
 
 architecture bhv of uart_fifO_tb is
 
 constant c_depth : integer := 5;
 constant c_width : integer := 8;
 constant c_clks_per_bit : integer := 5209;
 constant c_bit_period : time := 105 us;
 
 signal r_clock		: std_logic 			:= '0';
 signal r_reset		: std_logic 			:= '0';
 signal r_reset_sync	: std_logic 			:= '0';
 signal w_status		: std_logic_vector(3 downto 0)	:= "0000";
 signal w_rx_full		: std_logic				:= '0';
 signal w_rx_empty	: std_logic				:= '0';
 signal r_rx_serial	: std_logic				:= '0';
 signal r_rx_wr_data	: std_logic_vector(c_width-1 downto 0) := (others => '0');
 
 
 component uart_fifo is
	generic(
		g_bits 			: integer := 8;
		g_clks_per_bit	: integer := 5209;
		g_depth			: integer := 10);
		
	port(
		i_clk					: in std_logic;
		i_rst					: in std_logic;
		i_rst_sync			: in std_logic;
		o_status				: out std_logic_vector(3 downto 0);

		o_fifo_rx_full		: out std_logic;
		o_fifo_rx_empty 	: out std_logic;		
		i_rx_serial 		: in std_logic; 										-- Serial data receiveing
		rx_data				: out std_logic_vector(g_bits-1 downto 0));
 end component uart_fifo;
 
   procedure UART_WRITE_BYTE (
			i_data_in       : in  std_logic_vector(7 downto 0);
			signal o_serial : out std_logic) is
		begin
		 
			 -- Send Start Bit
			 o_serial <= '0';
			 wait for c_BIT_PERIOD;
		 
			 -- Send Data Byte
			 for ii in 0 to 7 loop
				o_serial <= i_data_in(ii);
				wait for c_BIT_PERIOD;
			 end loop;  -- ii
		 
			 -- Send Stop Bit
			 o_serial <= '1';
			 wait for c_BIT_PERIOD;
	 end UART_WRITE_BYTE;
 
 begin
	
	uart_rx_fixo : uart_fifo generic map (c_width, c_depth) port map (r_clock, r_reset, r_reset_sync, w_status, w_rx_full, w_rx_empty, r_rx_serial, r_rx_wr_data);
	
	r_clock <= not r_clock after 5 ns;
	
	p_uart : process is
	begin
	 wait until rising_edge(r_clock);
    UART_WRITE_BYTE(X"3F", r_rx_serial);
    wait until rising_edge(r_clock);
	
	
	 wait until r_clock = '1';
    r_WR_EN <= '1';
    wait until r_clock = '1';
    wait until r_clock = '1';
    wait until r_clock = '1';
    wait until r_clock = '1';
    r_WR_EN <= '0';
    r_RD_EN <= '1';
    wait until r_clock = '1';
    wait until r_clock = '1';
    wait until r_clock = '1';
    wait until r_clock = '1';
    r_RD_EN <= '0';
	 
	 if r_rx_wr_data = X"3F" then
      report "TEST PASSED: Correct Byte Received" severity note;
    else
      report "TEST FAILED: Incorrect Byte Received" severity note;
    end if;
	
	end process p_uart;
 
 
 end bhv;