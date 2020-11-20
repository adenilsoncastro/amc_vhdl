library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ieee_proposed;
use ieee_proposed.fixed_pkg.all;

entity max is
   generic(
       g_bits		: natural := 16;
       g_fxp_high 	: natural := 4;
       g_fxp_low	: integer := -11);
   port(
       i_enable		: in std_logic;
       i_neuron_1	: in std_logic_vector(g_bits-1 downto 0);
       i_neuron_2	: in std_logic_vector(g_bits-1 downto 0);
       i_neuron_3	: in std_logic_vector(g_bits-1 downto 0);
       i_neuron_4	: in std_logic_vector(g_bits-1 downto 0);
       i_neuron_5	: in std_logic_vector(g_bits-1 downto 0);
       o_result		: out std_logic_vector(6 downto 0));
end max;

architecture bhv of max is
   signal r_neuron_1 : sfixed(g_fxp_high downto g_fxp_low) 	:= (others => '0');
   signal r_neuron_2 : sfixed(g_fxp_high downto g_fxp_low) 	:= (others => '0');
   signal r_neuron_3 : sfixed(g_fxp_high downto g_fxp_low) 	:= (others => '0');
   signal r_neuron_4 : sfixed(g_fxp_high downto g_fxp_low) 	:= (others => '0');
   signal r_neuron_5 : sfixed(g_fxp_high downto g_fxp_low) 	:= (others => '0');
   signal r_result	: std_logic_vector(3 downto 0) 			:= (others => '0');

begin

   p_evaluate : process(i_enable, r_neuron_1, r_neuron_2, r_neuron_3, r_neuron_4, r_neuron_5)
   begin
       if i_enable = '1' then
           if (r_neuron_1 > r_neuron_2) and (r_neuron_1 > r_neuron_3) and (r_neuron_1 > r_neuron_4) and (r_neuron_1 > r_neuron_5) then
               r_result <= "0000";
           elsif (r_neuron_2 > r_neuron_1) and (r_neuron_2 > r_neuron_3) and (r_neuron_2 > r_neuron_4) and (r_neuron_2 > r_neuron_5) then
               r_result <= "0001";
           elsif (r_neuron_3 > r_neuron_1) and (r_neuron_3 > r_neuron_2) and (r_neuron_3 > r_neuron_4) and (r_neuron_3 > r_neuron_5) then
               r_result <= "0010";
           elsif (r_neuron_4 > r_neuron_1) and (r_neuron_4 > r_neuron_2) and (r_neuron_4 > r_neuron_3) and (r_neuron_4 > r_neuron_5) then
               r_result <= "0011";
           elsif (r_neuron_5 > r_neuron_1) and (r_neuron_5 > r_neuron_2) and (r_neuron_5 > r_neuron_3) and (r_neuron_5 > r_neuron_4) then
               r_result <= "0100";
           else
               r_result <= "1010";
           end if;
       else
           r_result <= "1111";
       end if;
   end process p_evaluate;
   
   
   with r_result select
       o_result <= "0000001" when "0000",
                       "1001111" when "0001",
                       "0010010" when "0010",
                       "0000110" when "0011",
                       "1001100" when "0100",
                       "0001000" when "1010",
                       "0000000" when others;	
   
  r_neuron_1 	<= to_sfixed(i_neuron_1, g_fxp_high, g_fxp_low);
  r_neuron_2 	<= to_sfixed(i_neuron_2, g_fxp_high, g_fxp_low);
  r_neuron_3 	<= to_sfixed(i_neuron_3, g_fxp_high, g_fxp_low);
  r_neuron_4 	<= to_sfixed(i_neuron_4, g_fxp_high, g_fxp_low);
  r_neuron_5 	<= to_sfixed(i_neuron_5, g_fxp_high, g_fxp_low);
   
end bhv;