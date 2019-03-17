--------------------------------------------------------
-- Generic 2 to 1 Mux
--
-- Author :Hemanshu
-- Description: Generic 2 to 1 mux using parameter
-- Date:17-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity mux2g is
    generic (N:integer);
    port (
        a:in STD_LOGIC_VECTOR(N-1 downto 0);
        b:in STD_LOGIC_VECTOR(N-1 downto 0);
        s:in STD_LOGIC;
        y:out STD_LOGIC_VECTOR(N-1 downto 0)
    ) ;
end mux2g;
------------------------------------------------------------

architecture mux2g of  mux2g is
begin
   r1 : process( a,b,s )
   begin
        if s = '0' then
            y <=a;
        else
            y <=b;
        end if;
   end process ; -- r1
end mux2g ; -- 

---------------------------------------------------------------