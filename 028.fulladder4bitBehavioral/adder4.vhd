--------------------------------------------------------
-- 4-bit Adder
--
-- Author :hemanshu
-- Description: 4 bit adder using behavioral
-- Date:30-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;

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
begin 
    process(a,b)
    variable  temp :STD_LOGIC_VECTOR(4 downto 0);
    begin
       
       temp := ('0' & a) + ('0' & b);
       sum <= temp(3 downto 0);
       cf <=temp(4);
       ovf <= temp(3) xor a(3) xor b(3) xor temp(4);
    end process;     
end rtl ; --rtl     