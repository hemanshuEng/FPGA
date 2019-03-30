--------------------------------------------------------
-- full adder Nbit 
--
-- Author :hemanshu
-- Description: n bit adder
-- Date:30-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;
----------------------------------------------------------
entity adder is
generic(N:integer :=8);
port (
    a: in STD_LOGIC_VECTOR(N-1 downto 0);
    b: in STD_LOGIC_VECTOR(N-1 downto 0);
    sum: out STD_LOGIC_VECTOR(N-1 downto 0)
  ) ;
end adder;
------------------------------------------------------------

architecture rtl of adder is
begin
    process(a,b)
    begin
     sum<= a+b;
    end process;
   
end rtl ; --rtl 