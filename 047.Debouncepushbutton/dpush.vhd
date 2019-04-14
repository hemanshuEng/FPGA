--------------------------------------------------------
-- debounce pushbutton
--
-- Author :Hemanhsu
-- Description: debounce 4 pushbutton
-- Date:14-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity debounce4 is
port (
    inp: in STD_LOGIC_VECTOR(3 downto 0);
    cclk: in STD_LOGIC;
    clr: in STD_LOGIC;
    outp: out STD_LOGIC_VECTOR(3 downto 0)
  ) ;
end debounce4;
------------------------------------------------------------

architecture arch of debounce4 is
    signal delay1,delay2,delay3 : STD_LOGIC_VECTOR(3 downto 0);
begin
    process(cclk,clr)
    begin
        if clr= '1' then
            delay1<="0000";
            delay2<="0000";
            delay3<="0000";
        elsif cclk'event and cclk ='1' then
            delay1<= inp;
            delay2<= delay1;
            delay3<= delay2;
        end if ;
    
    end process;
   outp <= delay1 and delay2 and delay3;
end arch ; --arch 