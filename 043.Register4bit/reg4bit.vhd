--------------------------------------------------------
-- 4 Bit register
--
-- Author :hemanshu
-- Description: 4 bit Register
-- Date:07-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity reg4bit is
port (
    load : in STD_LOGIC;
    inp : in STD_LOGIC_VECTOR(3 downto 0);
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    q : out STD_LOGIC_VECTOR(3 downto 0)
  ) ;
end reg4bit;
------------------------------------------------------------

architecture arch of reg4bit is
begin
 
    --4 bit Register
    process(clk,clr)
    begin
         if clr = '1' then 
              q<= (others=>'0');
         elsif clk'event and clk ='1' then  
            if load = '1' then 
                q<= inp;
            end if;
         end if;
    end process;
   
end arch ; --arch 