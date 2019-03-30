--------------------------------------------------------
-- half adder
--
-- Author :Hemanshu
-- Description: half adder
-- Date:30-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity halfadder is
port (
    a: in STD_LOGIC;
    b: in STD_LOGIC;
    s: out STD_LOGIC;
    c: out STD_LOGIC

  ) ;
end halfadder;
------------------------------------------------------------

architecture rtl of halfadder is
begin
    s <= a xor b;
    c <= a and b;
end rtl ; --rtl 