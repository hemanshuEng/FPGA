--------------------------------------------------------
-- inverter n bit testbench
--
-- Author :Hemanshu
-- Description:
-- Date:03/03/2019
-- need testbench for loop for all possible out come
---------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;
----------------------------------------------------------
entity inverter_tb is 
end inverter_tb;


architecture  behave of inverter_tb is
	constant nbit 	:Integer:=3;
	signal r_sig1	:STD_LOGIC_VECTOR(nbit-1 downto 0) ;
	signal result  	:STD_LOGIC_VECTOR(nbit-1 downto 0) ;
    
    component inverter is
        generic(N: integer);  
        port (
          a : in std_logic_vector(N-1 downto 0);
          q : out std_logic_vector(N-1 downto 0)
        ) ;
      end component inverter;

begin 
    inverter_n_INST : inverter
    generic map(N => nbit)
	port map(
		a => r_sig1,
		q  => result);
process is
  begin

	for sig1 in 0 to 2**r_sig1'length -1 loop
		r_sig1 <= std_logic_vector(to_unsigned(sig1, r_sig1'length)); 
		wait for 10 ns;
  	end loop;
  end process;
     
end behave;