--------------------------------------------------------
-- 3 bit Counter
--
-- Author :HEmanshu
-- Description: 3 bit Counter
-- Date:14-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;

----------------------------------------------------------
entity count3b is
port (
    clk: in STD_LOGIC;
    clr: in STD_LOGIC;
    qout: out STD_LOGIC_VECTOR(2 downto 0)

  ) ;
end count3b;
------------------------------------------------------------

architecture arch of count3b is
    signal count :STD_LOGIC_VECTOR(2 downto 0):= "000";
begin
    process(clk,clr)
    begin
        if clr = '1' then
            count <= "000";
        elsif clk'event and clk = '1' then
            count <= count + 1;
        end if ;
    
    end process;--end of process    
   qout <= count;
end arch ; --arch 