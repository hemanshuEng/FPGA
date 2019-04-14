--------------------------------------------------------
-- N bit counter 
--
-- Author :Hemanshu
-- Description: N bit Counter
-- Date:14-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;
----------------------------------------------------------
entity counter is
generic(N:integer:=8);
port (
    clk: in STD_LOGIC;
    clr: in STD_LOGIC;
    qout: out STD_LOGIC_VECTOR(N-1 downto 0)
  ) ;
end counter;
------------------------------------------------------------

architecture arch of counter is
    signal count : STD_LOGIC_VECTOR(N-1 downto 0):= (others=>'0');
begin
     process( clk,clr )
    begin
        if clr = '1' then
            count<= (others=>'0');
        elsif clk'event and clk ='1' then
            count <= count +1;
        end if ;
    end process ; --   
    qout <= count;
end arch ; --arch   