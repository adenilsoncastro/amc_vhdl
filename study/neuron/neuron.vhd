 library ieee;
 use ieee.std_logic_1164.all;
 
 library ieee_proposed;
 use ieee_proposed.fixed_pkg.all;
 
 library rna_library;
 use rna_library.data_types_pkg.all;
 
 library work;
 use work.all;
 
 entity neuron is
	generic(
		g_addr		: std_logic_vector(18 downto 0) := "0000000000000000000";
		g_bits_data	: natural := 16;
		g_bits_ctrl	: natural := 4);
	
	port(
		i_clk			: in std_logic;
		i_enable		: in std_logic;
		i_ctrl		: in std_logic_vector((g_bits_ctrl-1) downto 0);
		i_fxp_data	: in std_logic_vector((g_bits_data-1) downto 0);
		
		o_fxp_data	: out std_logic_vector((g_bits_data -1) downto 0));
 end neuron;
  
 architecture rtl of neuron is
	
--	fsm deve:
--		1)verificar se enable esta em nível alto
--		2)consultar o peso na ram
--		3)enviar para o MAC o fxp da entrada e o peso consultado na ram
--		4)repetir o passo três até ter completado todos os pesos da respectiva layer
--		5)enviar o resultado do MAC para a ACTF
--		6)retornar na saída o resultado da ACTF
 
 begin
  
 end rtl;