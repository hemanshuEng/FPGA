--------------------------------------------------------
-- half adder test bench
--
-- Author :Hemanshu
-- Description: half adder test bench
-- Date:30-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity halfadder_tb is
end halfadder_tb;
------------------------------------------------------------

architecture behave of halfadder_tb is
    signal a: STD_LOGIC;
    signal b: STD_LOGIC;
    signal s:  STD_LOGIC;
    signal c:  STD_LOGIC;
    
    component halfadder is
        port (
            a: in STD_LOGIC;
            b: in STD_LOGIC;
            s: out STD_LOGIC;
            c: out STD_LOGIC
        
          ) ;
    end component halfadder;
begin
    DUT:halfadder port map(a,b,s,c); 
    process is
        begin
        a<='0';
        b<='0';
        wait for 10 ns;
        a<='1';
        b<='0';
        wait for 10 ns;
        a<='0';
        b<='1';
        wait for 10 ns;
        a<='1';
        b<='1';
        wait for 10 ns;
        
    end process;
   
end behave ; --behave   