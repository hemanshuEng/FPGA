--------------------------------------------------------
-- clock pluse
--
-- Author :Hemanhsu
-- Description: clock pluse
-- Date:14-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity clkpulse is
port (
    inp: in STD_LOGIC;
    cclk: in STD_LOGIC;
    clr: in STD_LOGIC;
    outp: out STD_LOGIC
  ) ;
end clkpulse;
------------------------------------------------------------

architecture arch of clkpulse is
    signal delay1,delay2,delay3 : STD_LOGIC;
begin
    process(cclk,clr)
    begin
        if clr= '1' then
            delay1<='0';
            delay2<='0';
            delay3<='0';
        elsif cclk'event and cclk ='1' then
            delay1<= inp;
            delay2<= delay1;
            delay3<= delay2;
        end if ;
    
    end process;
   outp <= delay1 and delay2 and not delay3;
end arch ; --arch 