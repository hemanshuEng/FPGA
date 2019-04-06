--------------------------------------------------------
-- 4 bit multipler testbench
--
-- Author :HEmanshu
-- Description: 
-- Date:06-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity mult4a_temp is
end mult4a_temp;
------------------------------------------------------------

architecture behave of mult4a_temp is
    signal a:  STD_LOGIC_VECTOR(3 downto 0);
    signal b:  STD_LOGIC_VECTOR(3 downto 0);
    signal p:  STD_LOGIC_VECTOR(7 downto 0);
    component mult4a is
        port (
            a: in STD_LOGIC_VECTOR(3 downto 0);
            b: in STD_LOGIC_VECTOR(3 downto 0);
            p: out STD_LOGIC_VECTOR(7 downto 0)
          ) ;
    end component mult4a;
begin
    DUT : mult4a port map (a,b,p);
    process is 
    begin
    
    b<= X"B";
    a<= X"4";
    wait for 10 ns;
    b<= X"2";
    a<= X"5";
    wait for 10 ns;
    b<= X"5";
    a<= X"6";
    wait for 10 ns;
    end process;
   
end behave ; --behave 