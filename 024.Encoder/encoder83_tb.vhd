--------------------------------------------------------
-- encoder 8 to 3 testbech
--
-- Author :Hemanshu
-- Description: encoder 8 to 3 testbech
-- Date:30-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;
----------------------------------------------------------
entity encoder83_tb is
end encoder83_tb;
------------------------------------------------------------

architecture behave of encoder83_tb is
    signal x: STD_LOGIC_VECTOR(7 downto 0);
    signal valid: STD_LOGIC;
    signal y: STD_LOGIC_VECTOR(2 downto 0);
    
    component encoder83 is
        port (
            x:in STD_LOGIC_VECTOR(7 downto 0);
            valid: out STD_LOGIC;
            y: out STD_LOGIC_VECTOR(2 downto 0)
          ) ;
    end component encoder83;
begin
    encoder83_INT:encoder83 port map(x,valid,y);
    process is
        variable var : STD_LOGIC_VECTOR(7 downto 0);
        begin
            x<="00000001";
            wait for 10 ns;
             for i in 1 to 7 loop
                var := x;
                var := var(6 downto 0) & var(7);
                x<= var;
                wait for 10 ns;
            end loop ; --
            wait;
        end process;
end behave ; --behave 