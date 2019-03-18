--------------------------------------------------------
-- 7 segement test bench
--
-- Author :Hemanshu
-- Description: 7segment test bench
-- Date:17-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity hex7seg_tb is
end hex7seg_tb;
------------------------------------------------------------

architecture behave of hex7seg_tb is
    signal r_data:STD_LOGIC_VECTOR(3 downto 0);
    signal r_seg:STD_LOGIC_VECTOR(6 downto 0); 
    component hex7seg is
        port (
            data: in STD_LOGIC_VECTOR(3 downto 0); 
            seg: out STD_LOGIC_VECTOR(6 downto 0)
          ) ;
        end component hex7seg;
begin
    hex7seg_inst:hex7seg port map(r_data,r_seg);
    process is 
    begin
        r_data <= x"0";
        wait for 10 ns;
        r_data <= x"1";
        wait for 10 ns;
        r_data <= x"2";
        wait for 10 ns;
        r_data <= x"3";
        wait for 10 ns;
        r_data <= x"4";
        wait for 10 ns;
        r_data <= x"5";
        wait for 10 ns;
        r_data <= x"6";
        wait for 10 ns;
        r_data <= x"7";
        wait for 10 ns;
        r_data <= x"8";
        wait for 10 ns;
        r_data <= x"9";
        wait for 10 ns;
        r_data <= x"A";
        wait for 10 ns;
        r_data <= x"B";
        wait for 10 ns;
        r_data <= x"C";
        wait for 10 ns;
        r_data <= x"D";
        wait for 10 ns;
        r_data <= x"E";
        wait for 10 ns;
        r_data <= x"F";
        wait for 10 ns;
    end process;
   
end behave ; --behave 