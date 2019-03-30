--------------------------------------------------------
-- 4-bit Adder
--
-- Author :hemanshu
-- Description: 4 bit adder using logic equation
-- Date:30-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity adder4a is
port (
    a: in STD_LOGIC_VECTOR(3 downto 0);
    b: in STD_LOGIC_VECTOR(3 downto 0);
    cf: out STD_LOGIC;
    ovf: out STD_LOGIC;
    sum: out STD_LOGIC_VECTOR(3 downto 0)
    ) ;
end adder4a;
------------------------------------------------------------

architecture rtl of adder4a is
    signal c :STD_LOGIC_VECTOR(4 downto 0);
begin
   c(0)<='0';
   sum <= a xor b xor c(3 downto 0);
   c(4 downto 1) <= (a and b) or (c(3 downto 0)and(a xor b));
   cf <=c(4);
   ovf <= c(3) xor c(4);
end rtl ; --rtl     