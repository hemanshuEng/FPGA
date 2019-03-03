--------------------------------------------------------
-- and Gate n bit testbench
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
entity and_gate_n_tb is
end and_gate_n_tb;


architecture behave of and_gate_n_tb is
	constant nbit 	:Integer:=16;
	signal r_sig1	:STD_LOGIC_VECTOR(nbit-1 downto 0) ;
	signal r_sig2	:STD_LOGIC_VECTOR(nbit-1 downto 0) ;
	signal result  	:STD_LOGIC_VECTOR(nbit-1 downto 0) ;
    
    component and_gate_n is
        generic(N: integer);  
        port (
          a : in std_logic_vector(N-1 downto 0);
          b : in std_logic_vector(N-1 downto 0);
          q : out std_logic_vector(N-1 downto 0)
        ) ;
      end component and_gate_n;

begin 
    and_gate_n_INST : and_gate_n
    generic map(N => nbit)
	port map(
		a => r_sig1,
		b => r_sig2,
		q  => result);
process is
  begin

	for sig1 in 0 to 2**r_sig1'length -1 loop
		for sig2 in 0 to 2**r_sig2'length-1 loop
		r_sig1 <= std_logic_vector(to_unsigned(sig1, r_sig1'length));
		r_sig2 <= std_logic_vector(to_unsigned(sig2, r_sig2'length)); 
		wait for 10 ns;
		end loop;
  	end loop;
  end process;
     
end behave;