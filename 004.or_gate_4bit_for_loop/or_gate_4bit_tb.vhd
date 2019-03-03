--------------------------------------------------------
-- OR Gate 4 bit testbench
--
-- Author :Hemanshu
-- Description:
-- Date:24/02/2019
-- need testbench for loop for all possible out come
---------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

entity or_gate_4bit_tb is
end or_gate_4bit_tb;

architecture behave of OR_gate_4bit_tb is
	signal r_sig1	:STD_LOGIC_VECTOR(3 downto 0) ;
	signal r_sig2	:STD_LOGIC_VECTOR(3 downto 0) ;
	signal result  	:STD_LOGIC_VECTOR(3 downto 0) ;
	
	component or_gate_4bit is 
	port(
	a,b : in STD_LOGIC_VECTOR (3 downto 0);
	y   : out STD_LOGIC_VECTOR (3 downto 0));

	end component or_gate_4bit;

begin 
	OR_gate_INST : OR_gate_4bit
	port map(
		a => r_sig1,
		b => r_sig2,
		y  => result);
process is
  begin

	for sig1 in 0 to 2**r_sig1'length -1 loop
		for sig2 in 0 to 2**r_sig2'length-1 loop
		r_sig1 <= std_logic_vector(to_unsigned(sig1, r_sig1'length));
		r_sig2 <= std_logic_vector(to_unsigned(sig2, r_sig2'length)); 
		wait for 10 ns;
		end loop;
  	end loop;
--    r_sig1 <= "0000";
--    r_sig2 <= "0000";
--    wait for 10 ns;
--    r_sig1 <= "0000";
--    r_sig2 <= "0001";
--    wait for 10 ns;
--    r_sig1 <= "0011";
--    r_sig2 <= "1100";
--    wait for 10 ns;
--    r_sig1 <= "1000";
--    r_sig2 <= "0101";
--    wait for 10 ns;   
  end process;
     
end behave;
