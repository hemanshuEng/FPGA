--------------------------------------------------------
-- 4-bit shift register
--
-- Author :Hemanshu
-- Description: 4 bit shift register
-- Date:14-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity shiftreg is
port (
    clk: in STD_LOGIC;
    clr: in STD_LOGIC;
    data_in : in STD_LOGIC;
    q : out STD_LOGIC_VECTOR(3 downto 0)

  ) ;
end shiftreg;
------------------------------------------------------------

architecture arch of shiftreg is
    signal qs :STD_LOGIC_VECTOR(3 downto 0);
begin
    process(clk,clr)
    begin
        if clr= '1' then
            qs<= (others=>'0');
        elsif clk'event and clk ='1' then
            qs(3)<= data_in;
            qs(2 downto 0) <= qs(3 downto 1);
        end if ;
    
    end process;
   q<= qs;
end arch ; -- arch