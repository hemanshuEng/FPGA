--------------------------------------------------------
-- N-bit Comparator using relational operators
--
-- Author :Hemanshu
-- Description: n-bit comparator
-- Date:24-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity comp is
generic (N:integer);
port (
    x: in STD_LOGIC_VECTOR(N-1 downto 0);
    y: in STD_LOGIC_VECTOR(N-1 downto 0);
    gt: out STD_LOGIC;
    eq: out STD_LOGIC;
    lt: out STD_LOGIC
  ) ;
end comp;
------------------------------------------------------------

architecture rtl of comp is
begin
    process(x,y)
    begin
        gt<='0';
        eq<='0';
        lt<='0';
        if(x>y) then
            gt <='1';
        elsif (x=y) then
            eq<= '1';
        elsif (x < y) then
            lt<= '1';
        end if;
    end process;
end rtl ; --rtl 