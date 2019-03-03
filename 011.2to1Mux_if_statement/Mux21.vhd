--------------------------------------------------------
-- Multiplexer
--
-- Author :Hemanshu
-- Description:
-- Date:03/03/2019
---------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity mux21 is
  port (
    a: in std_logic;
    b: in std_logic;
    s: in std_logic;
    q: out std_logic
  ) ;
end mux21;

-------------------------------------------------------------
architecture rtl of mux21 is
begin
    p1 : process( a,b,s )
    begin
        if s = '0' then
            q <= a;
        else
            q <= b;            
        end if ;
    end process p1 ; -- p1

end rtl ; -- rtl

----- end of file --------------------------------------------