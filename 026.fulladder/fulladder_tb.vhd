--------------------------------------------------------
-- full adder test bench
--
-- Author :Hemanshu
-- Description: full adder test bench
-- Date:30-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity fulladder_tb is
end fulladder_tb;
------------------------------------------------------------

architecture behave of fulladder_tb is
    signal a: STD_LOGIC;
    signal b: STD_LOGIC;
    signal cin: STD_LOGIC; 
    signal sum:  STD_LOGIC;
    signal cout:  STD_LOGIC;
    
    component fulladder is
        port (
            a: in STD_LOGIC;
            b: in STD_LOGIC;
            cin: in STD_LOGIC;
            sum: out STD_LOGIC;
            cout: out STD_LOGIC
        
          ) ;
    end component fulladder;
begin
    DUT:fulladder port map(a,b,cin,sum,cout); 
    process is
        begin
        a<='0';
        b<='0';
        cin<='0';
        wait for 10 ns;
        a<='1';
        b<='0';
        cin<='0';
        wait for 10 ns;
        a<='0';
        b<='1';
        cin<='0';
        wait for 10 ns;
        a<='1';
        b<='1';
        cin<='0';
        wait for 10 ns;
        a<='0';
        b<='0';
        cin<='1';
        wait for 10 ns;
        a<='1';
        b<='0';
        cin<='1';
        wait for 10 ns;
        a<='0';
        b<='1';
        cin<='1';
        wait for 10 ns;
        a<='1';
        b<='1';
        cin<='1';
        wait for 10 ns;
        
    end process;
   
end behave ; --behave   