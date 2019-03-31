--------------------------------------------------------
-- subtractor testbench
--
-- Author :hemanshu
-- Description: aubtractor testbench
-- Date:31-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity sub_tb is
end sub_tb;
------------------------------------------------------------

architecture behave of sub_tb is
    constant nbit : integer :=8;
    signal a:  STD_LOGIC_VECTOR(nbit-1 downto 0);
    signal b:  STD_LOGIC_VECTOR(nbit-1 downto 0);
    signal sum:  STD_LOGIC_VECTOR(nbit-1 downto 0);
    component  sub is
        generic(N:integer :=8);
        port (
            a: in STD_LOGIC_VECTOR(N-1 downto 0);
            b: in STD_LOGIC_VECTOR(N-1 downto 0);
            sum: out STD_LOGIC_VECTOR(N-1 downto 0)
          ) ;
    end component sub;
begin
    DUT:sub generic map(N => nbit) port map(a,b,sum);
    process is 
    begin
    
    b<= X"BB";
    a<= X"11";
    wait for 10 ns;
    b<= X"22";
    a<= X"11";
    wait for 10 ns;
    b<= X"45";
    a<= X"11";
    wait for 10 ns;
    end process;
end behave ; --behave 