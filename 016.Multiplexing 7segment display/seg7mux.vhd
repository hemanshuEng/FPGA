--------------------------------------------------------
-- 7 segment display using Multiplexing 
--
-- Author :HEmanshu
-- Description: 7segment display using multiplexing , process
-- Date:23-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity  seg7mux is
port (
    sw: in  STD_LOGIC_VECTOR(3 downto 0);
    seg: out STD_LOGIC_VECTOR(6 downto 0);
    en : out STD_LOGIC_VECTOR(3 downto 0);
    dp : out STD_LOGIC
  ) ;
end seg7mux ;
------------------------------------------------------------

architecture rtl of seg7mux is

    signal x :STD_LOGIC_VECTOR(15 downto 0);
    signal s :STD_LOGIC_VECTOR(1 downto 0);
    signal digit:STD_LOGIC_VECTOR(3 downto 0);
    begin
    x <= X"1234";
    en <= not sw;
    s(1) <= sw(2) or sw(3);
    s(0) <= sw(1) or sw(3);
    dp <='1';

    -- 4 to 1 mux: mux44
    process(s)
    begin
        case s is
            when "00" => digit <=x(3 downto 0);
            when "01" => digit <=x(7 downto 4);
            when "10" => digit <=x(11 downto 8);
            when others => digit <=x(15 downto 12);
        end case;
    end process;
   
    -- 7 segment
    process(digit) begin
        case digit is
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
end  rtl; --rtl 