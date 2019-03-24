--------------------------------------------------------
-- binary to bcd testbench
--
-- Author :Hemanshu
-- Description: Biinary to bcd testbench
-- Date:24-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity bin2bcd_tb is
end bin2bcd_tb;
------------------------------------------------------------

architecture behave of bin2bcd_tb is
    signal r_B:STD_LOGIC_VECTOR(5 downto 0);
    signal r_P:STD_LOGIC_VECTOR(6 downto 0);
    component bin2bcd is
        port (
            B: in STD_LOGIC_VECTOR(5 downto 0);
            P: out STD_LOGIC_VECTOR(6 downto 0)
          ) ;
    end component bin2bcd;
begin
    bin2bcd_inst:bin2bcd port map(r_B,r_P);
    process is
    begin
        r_B <= "111011";
        wait for 10 ns;
        r_B <= "101011";
        wait for 10 ns;
        r_B <= "111010";
        wait for 10 ns;
        r_B <= "111111";
        wait for 10 ns;
        r_B <= "011011";
        wait for 10 ns;
        r_B <= "110011";
        wait for 10 ns;
    end process;
   
end behave ; --behave 