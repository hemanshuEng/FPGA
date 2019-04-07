--------------------------------------------------------
-- 1-bit Register
--
-- Author :HEmanshu
-- Description: 1 bit Register
-- Date:07-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity reg1bitb is
port (
    load :in STD_LOGIC;
    inp0 :in STD_LOGIC;
    clk  :in STD_LOGIC;
    clr  :in STD_LOGIC;
    q0   :out STD_LOGIC

  ) ;
end reg1bitb;
------------------------------------------------------------

architecture arch of reg1bitb is
begin
    -- 1bit register with load
    process(clk,clr)
    begin
      if clr = '1' then
        q0 <= '0';
      elsif clk'event and clk ='1' then
           if load = '1' then
             q0 <= inp0;
            end if; 
      end if;
    end process;
   
end arch ; --arch 