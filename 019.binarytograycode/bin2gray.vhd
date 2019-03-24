--------------------------------------------------------
-- binary to gray code conveter
--
-- Author :Hemanshu
-- Description: 4 bit gray code conveter
-- Date:24-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity bin2gray is
port (
    b: in STD_LOGIC_VECTOR(3 downto 0);
    g: out STD_LOGIC_VECTOR(3 downto 0)
  ) ;
end bin2gray;
------------------------------------------------------------

architecture rtl of bin2gray is
begin
    process(b)
    begin
        g(3) <= b(3);
        for i in 2 downto 0 loop
            g(i) <= b(i+1) xor b(i);
        end loop;
   end process;
end rtl ; --rtl 