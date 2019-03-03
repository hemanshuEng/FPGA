--------------------------------------------------------
-- Multiplexer testbench
--
-- Author :Hemanshu
-- Description:
-- Date:03/03/2019
---------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity mux41_tb is
end mux41_tb;

----------------------------------------------------------
architecture behave of mux41_tb is

    signal sig1 : std_logic_vector(3 downto 0):="0000";
    signal en : std_logic_vector (1 downto 0):= "00";
    signal output :std_logic;
    component  mux41 is
        port (
            a : in std_logic_vector(3 downto 0);
            s : in std_logic_vector(1 downto 0);
            q : out std_logic
        ) ;
      end component mux41;

begin
    mux21_inst : mux41 port map(sig1,en,output);
    process
    begin
        sig1 <= "0101";
        en <="00";
        wait for 10 ns;
        sig1 <= "0101";
        en <="01";
        wait for 10 ns;
        sig1 <= "0101";
        en <="10";
        wait for 10 ns;
        sig1 <= "0101";
        en <="11";
        wait for 10 ns;
    end process ; -- test

end behave ; -- behave