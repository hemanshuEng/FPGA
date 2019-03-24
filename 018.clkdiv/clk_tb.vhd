--------------------------------------------------------
-- testbench for seg7clk
--
-- Author :Hemanshu
-- Description: four 7 segment display using multiplexer which is handle by clock
-- Date:23-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity clk_tb is
end clk_tb;
------------------------------------------------------------

architecture behave of clk_tb is

    signal r_clk: STD_LOGIC;
    signal r_b:STD_LOGIC_VECTOR(1 downto 0);
    signal r_clr:STD_LOGIC;
    constant period: time :=10 ns;
    component clk is
        port (
            
            cl:in STD_LOGIC;
            clr:in STD_LOGIC;
            b:out STD_LOGIC_VECTOR(1 downto 0)
            
          ) ;
    end component clk;
begin
    r_clr <= '0';
    clk_inst:clk port map(r_clk,r_clr,r_b); 
    
    clk_pro: process
    begin 
       r_clk <= '0';
       wait for period/2;
       r_clk <= '1';
       wait for period/2;
    end process;
   
end behave ; --behave 