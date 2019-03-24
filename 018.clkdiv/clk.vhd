--------------------------------------------------------
-- 7segment multiplexing using clock 
--
-- Author :Hemanshu
-- Description: clock used to change multilplexer stage
-- Date:23-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
----------------------------------------------------------
entity clk is
port (
    cl:in STD_LOGIC;
    clr:in STD_LOGIC;
    b : out STD_LOGIC_VECTOR(1 downto 0)
    
  ) ;
end clk;
------------------------------------------------------------

architecture rtl of clk is
 signal temp :STD_LOGIC_VECTOR(1 downto 0):="00";
begin
    
    
    process (cl,clr)
    begin
        if(clr = '1') then
            temp <= "00";  
        elsif (cl'event and cl ='1')then
            temp<= temp +1;
        end if;       
    end process;
    b<= temp;
end rtl ; --rtl 