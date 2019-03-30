--------------------------------------------------------
-- 8 to 3 Encoder using for loop
--
-- Author :Hemanshu
-- Description: 8 to 3 Encoder
-- Date:30-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;
USE IEEE.STD_LOGIC_ARITH.ALL;
----------------------------------------------------------
entity encoder83 is
port (
    x:in STD_LOGIC_VECTOR(7 downto 0);
    valid: out STD_LOGIC;
    y: out STD_LOGIC_VECTOR(2 downto 0)
  ) ;
end encoder83;
------------------------------------------------------------

architecture rtl of encoder83 is
begin
    process(x)
    variable j : integer;
    begin 
        y<= "000";
        valid <='0';
        for j in 0 to 7 loop
            if x(j) = '1' then
                y<= conv_std_logic_vector(j, 3);
                valid<='1';
            end if ;
        end loop ; --       
    end process;  
end rtl ; --rtl 