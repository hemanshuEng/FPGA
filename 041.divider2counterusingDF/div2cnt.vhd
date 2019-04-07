--------------------------------------------------------
-- Divide by 2 Counter
--
-- Author :Hemanshu
-- Description: Divider by 2 counter
-- Date:06-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity div2cnt is
port (
    clk:in STD_LOGIC;
    clr:in STD_LOGIC;
    q0 : out STD_LOGIC
  ) ;
end div2cnt;
------------------------------------------------------------

architecture arch of div2cnt is
  signal D:STD_LOGIC := '0';
  signal q:STD_LOGIC := '0';
begin
  D<= not q;
  process(clk,clr)
  begin
  
      if(clr='1') then
          q<='0';
      elsif(clk'event and clk ='1') then
          q<= D;
      end if;
  end process;
   q0 <= q;
end arch ; --arch 