--------------------------------------------------------
-- OR Gate 
--
-- Author :Hemanshu
-- Description:
-- Date:24/02/2019
---------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

---------------------------------------------------------

entity OR_gate_tb is 
end OR_gate_tb;

architecture behave of OR_gate_tb is 
	signal r_sig1	:STD_LOGIc :='0';
	signal r_sig2	:STD_LOGIC := '0';
	signal result  	:STD_LOGIC ;
	
	component OR_gate is 
	PORT ( 
		a : in STD_LOGIC;
		b : in STD_LOGIC;
		y  : out STD_LOGIC);
	end component OR_gate;

begin 
	OR_gate_INST : OR_gate
	port map(
		a => r_sig1,
		b => r_sig2,
		y  => result);

process is
  begin
    r_sig1 <= '0';
    r_sig2 <= '0';
    wait for 10 ns;
    r_sig1 <= '0';
    r_sig2 <= '1';
    wait for 10 ns;
    r_sig1 <= '1';
    r_sig2 <= '0';
    wait for 10 ns;
    r_sig1 <= '1';
    r_sig2 <= '1';
    wait for 10 ns;    
  end process;
     
end behave;





