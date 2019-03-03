--------------------------------------------------------
-- OR Gate 
--
-- Author :Hemanshu
-- Description:
-- Date:24/02/2019
---------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------
entity or_gate_4bit is 
port(
	a,b : in STD_LOGIC_VECTOR (3 downto 0);
	y   : out STD_LOGIC_VECTOR (3 downto 0));

end;

------------------------------------------------------------
architecture rtl of or_gate_4bit is 
begin	
	y<= a or b;
end;
