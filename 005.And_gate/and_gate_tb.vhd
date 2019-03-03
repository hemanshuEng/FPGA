--------------------------------------------------------
-- and Gate testbench
--
-- Author :Hemanshu
-- Description:
-- Date:24/02/2019
---------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity and_gate_tb is 
end and_gate_tb;


-----------------------------------------------------------
architecture behave of and_gate_tb is

    signal sig1 :std_logic;
    signal sig2 :std_logic;
    signal result:std_logic;

    component and_gate is
        port(
            x,y :in std_logic;
            q:   out std_logic
            );
    end component and_gate;
begin
    and_gate_inst:and_gate port map(sig1,sig2,result);
    process is
    begin
        sig1 <= '0';
        sig2 <= '0';
        wait for 10 ns;
        sig1 <= '0';
        sig2 <= '1';
        wait for 10 ns;
        sig1 <= '1';
        sig2 <= '0';
        wait for 10 ns;
        sig1 <= '1';
        sig2 <= '1';
        wait for 10 ns; 
    end process ; -- 

end behave ; -- behave