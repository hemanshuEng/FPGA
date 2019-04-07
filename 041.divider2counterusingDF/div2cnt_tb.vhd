--------------------------------------------------------
-- Divider by 2 counter
--
-- Author :Hemanshu
-- Description: Divider by 2 counter
-- Date:07-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity div2cnt_Tb is
end div2cnt_Tb;
------------------------------------------------------------

architecture behave of div2cnt_Tb is
    signal clk: STD_LOGIC;
    signal clr: STD_LOGIC;
    signal q0 : STD_LOGIC;
    constant period: time :=10 ns;
    component div2cnt is
        port (
            clk:in STD_LOGIC;
            clr:in STD_LOGIC;
            q0 : out STD_LOGIC
          ) ;
    end component div2cnt;
begin
   DUT : div2cnt port map(clk,clr,q0);
    clk_pro:process
    begin
        clk <= '0';
       wait for period/2;
       clk <= '1';
       wait for period/2;
    end process;
    process is 
    begin 
        clr<='0';
        wait for 100 ns;
        wait; 
    end process;
end behave ; --behave 