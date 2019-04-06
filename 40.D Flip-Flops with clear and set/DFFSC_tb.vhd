--------------------------------------------------------
-- D Flip-Flops
--
-- Author :
-- Description: 
-- Date:06-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity dffsc_tb is
end dffsc_tb;
------------------------------------------------------------

architecture behave of dffsc_tb is
    signal clk:  STD_LOGIC;
    signal clr:  STD_LOGIC;
    signal set:  STD_LOGIC;
    signal D: STD_LOGIC;
    signal q:  STD_LOGIC;
    constant period: time :=10 ns;
    component dffsc is
        port (
                clk: in STD_LOGIC;
                clr: in STD_LOGIC;
                set: in STD_LOGIC;
                D: in STD_LOGIC;
                q: out STD_LOGIC
          ) ;
    end component dffsc;
begin 
    clr<='0';
    DUT: dffsc port map(clk,clr,set,D,q);
    clk_pro: process
    begin 
       clk <= '0';
       wait for period/2;
       clk <= '1';
       wait for period/2;
    end process;
    process is 
    begin
    clr<='1';
    D<='1';
    set<='0';
    wait for 20 ns;
    clr<='0';
    D<='1';
    set<='1';
    wait for 20 ns;
    clr<='0';
    D<='1';
    set<='0';
    wait for 20 ns;   
    clr<='0';
    D<='0';
    set<='0';
    wait for 20 ns;
    end process;
   
end behave ; --behave 