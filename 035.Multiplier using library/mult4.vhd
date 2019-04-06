--------------------------------------------------------
-- 4 bit mulitpler
--
-- Author :Hemanshu
-- Description: 4 bit multipler using library
-- Date:06-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;
----------------------------------------------------------
entity mult4a is
port (
    a: in STD_LOGIC_VECTOR(3 downto 0);
    b: in STD_LOGIC_VECTOR(3 downto 0);
    p: out STD_LOGIC_VECTOR(7 downto 0)
  ) ;
end mult4a;
------------------------------------------------------------

architecture arch of mult4a is
begin
   p<= a * b;
end arch ; --arch 