--------------------------------------------------------
-- 7 segment decoder using case statement
--
-- Author :Hemanshu
-- Description: 7 segement display (anode 7 segement)
-- Date:17-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity hex7seg is
port (
    data: in STD_LOGIC_VECTOR(3 downto 0); 
    seg: out STD_LOGIC_VECTOR(6 downto 0)
  ) ;
end hex7seg;
------------------------------------------------------------

architecture rtl  of hex7seg is
begin
    process(data) begin
        case data is
        --                abcdefg  
        when X"0" =>seg<="0000001" ; --0   
        when X"1" =>seg<="1001111" ; --1   
        when X"2" =>seg<="0010010" ; --2   
        when X"3" =>seg<="0000110" ; --3   
        when X"4" =>seg<="1001100" ; --4   
        when X"5" =>seg<="0100100" ; --5   
        when X"6" =>seg<="0100000" ; --6   
        when X"7" =>seg<="0001101" ; --7   
        when X"8" =>seg<="0000000" ; --8   
        when X"9" =>seg<="0000100" ; --9   
        when X"A" =>seg<="0001000" ; --A   
        when X"B" =>seg<="1100000" ; --B   
        when X"C" =>seg<="0110001" ; --C   
        when X"D" =>seg<="1000010" ; --D   
        when X"E" =>seg<="0110000" ; --E     
        when others =>seg<="0111000" ; --F   
        end case;
    end process;
   
end rtl ; -- rtl
---------------------------------------------------------------