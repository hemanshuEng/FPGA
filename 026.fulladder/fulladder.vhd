--------------------------------------------------------
-- Full adder using logic equation
--
-- Author :Hemanshu
-- Description: full adder using logic equation
-- Date:30-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity fulladder is
port (
    a: in STD_LOGIC;
    b: in STD_LOGIC;
    cin: in STD_LOGIC;
    sum: out STD_LOGIC;
    cout: out STD_LOGIC
  ) ;
end fulladder;
------------------------------------------------------------

architecture rtl of fulladder is
begin
    sum <= cin xor(a xor b);
    cout<= (a and b) or (cin and(a xor b)); 
end rtl ; --rtl 