--------------------------------------------------------
-- Inverter n bit 
--
-- Author :Hemanshu
-- Description:
-- Date:03/03/2019
---------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity  inverter is
    generic(N:integer);
    port(
        a : in std_logic_vector(N-1 downto 0);
        q : out std_logic_vector(N-1 downto 0)
    );
end inverter;

-------------------------------------------------------------
architecture rtl of inverter is 
begin 
    q <= not a;
end rtl;

----End of file----------------------------------------------