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

entity OR_gate is 
PORT ( 
	a : in STD_LOGIC;
	b : in STD_LOGIC;
	y : out STD_LOGIC);
end OR_gate;

-----------------------------------------------------------

architecture  rtl of OR_gate is 
begin
	y <= a or b;


end rtl;



-----------------------------------------------------------