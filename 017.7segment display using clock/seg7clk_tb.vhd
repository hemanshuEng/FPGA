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
entity seg7clk_tb is
end seg7clk_tb;
------------------------------------------------------------

architecture behave of seg7clk_tb is
    signal r_x:STD_LOGIC_VECTOR(15 downto 0);
    signal r_clk: STD_LOGIC;
    signal r_clr: STD_LOGIC;
    signal r_seg : STD_LOGIC_VECTOR(6 downto 0);
    signal r_en :STD_LOGIC_VECTOR(3 downto 0);
    signal r_dp:STD_LOGIC;
    signal r_b :STD_LOGIC_VECTOR(1 downto 0);
    constant period: time :=10 ns;
    component seg7clk is
        port (
            x: in STD_LOGIC_VECTOR(15 downto 0);
            clk:in STD_LOGIC;
            clr:in STD_LOGIC;
            seg: out STD_LOGIC_VECTOR(6 downto 0);
            en : out STD_LOGIC_VECTOR(3 downto 0);
            dp : out STD_LOGIC;
            b : out STD_LOGIC_VECTOR(1 downto 0)
           
          ) ;
    end component seg7clk;
begin
    seg7clk_inst:seg7clk port map(r_x,r_clk,r_clr,r_seg,r_en,r_dp,r_b);
    r_x <=X"1234";
    r_clr<='0';
    clk: process
    begin 
       r_clk <= '0';
       wait for period/2;
       r_clk <= '1';
       wait for period/2;
    end process;
   
end behave ; --behave 