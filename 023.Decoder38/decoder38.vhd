--------------------------------------------------------
-- 3 to 8 Decoder -- for loop
--
-- Author :Hemanshu
-- Description: 3 to 8 Decoder
-- Date:24-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;

----------------------------------------------------------
entity decode38b is
port (
    a: in STD_LOGIC_VECTOR(2 downto 0);
    y: out STD_LOGIC_VECTOR(7 downto 0)
  ) ;
end decode38b;
------------------------------------------------------------

architecture rtl of decode38b is
begin
    process(a)
    variable j:integer;
    begin
        j := conv_integer(a);
        for i in 0 to 7 loop
            if(i = j) then
                y(i) <= '1';
            else
                y(i) <= '0';
            end if;
        end loop;
    
    end process;
   
end rtl ; --rtl 