--------------------------------------------------------
-- D FLip-Flop with clear and set 
--
-- Author :Hemanshu
-- Description: D Flip-FLop
-- Date:06-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity dffsc is
port (
        clk: in STD_LOGIC;
        clr: in STD_LOGIC;
        set: in STD_LOGIC;
        D: in STD_LOGIC;
        q: out STD_LOGIC
  ) ;
end dffsc;
------------------------------------------------------------

architecture arch of dffsc is
begin
   process (clk,clr,set)
   begin
        if(clr ='1') then
            q<= '0';
        elsif(set = '1')then
            q<= '1';
        elsif(clk'event and clk ='1') then
            q<= D;
        end if;
   
   end process;
end arch ; --arch 