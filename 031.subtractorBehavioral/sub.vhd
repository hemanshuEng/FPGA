--------------------------------------------------------
-- subtractor Nbit 
--
-- Author :hemanshu
-- Description: n bit adder
-- Date:31-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;
----------------------------------------------------------
entity sub is
generic(N:integer :=8);
port (
    a: in STD_LOGIC_VECTOR(N-1 downto 0);
    b: in STD_LOGIC_VECTOR(N-1 downto 0);
    sum: out STD_LOGIC_VECTOR(N-1 downto 0)
  ) ;
end sub;
------------------------------------------------------------

architecture rtl of sub is
begin
    process(a,b)
    begin
     sum<= a-b;
    end process;
   
end rtl ; --rtl 