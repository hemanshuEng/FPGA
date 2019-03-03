--------------------------------------------------------
-- Inverter 1 bit 
--
-- Author :Hemanshu
-- Description:
-- Date:03/03/2019
---------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity inverter_tb is 
end inverter_tb;

----------------------------------------------------------

architecture  behave of inverter_tb is
     signal sig1 :std_logic;
     signal result:std_logic;
     component inverter is
        port(
        a : in std_logic;
        q : out std_logic
        );
     end component;
    begin
        inverter_inst:inverter port map(sig1,result);
        process is
            begin
            sig1<= '0';
            wait for 10 ns;
            sig1<= '1';
            wait for 10 ns;
            end process;
    end behave;
    