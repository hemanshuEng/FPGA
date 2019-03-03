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
entity  inverter is
    port(
        a : in std_logic;
        q : out std_logic
    );
end inverter;

-------------------------------------------------------------
architecture rtl of inverter is 
begin 
    q <= not a;
end rtl;