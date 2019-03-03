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
entity mux21_tb is
end mux21_tb;

----------------------------------------------------------
architecture behave of mux21_tb is

    signal sig1,sig2,en : std_logic := '0';
    signal output :std_logic;
    component  mux21 is
        port (
          a: in std_logic;
          b: in std_logic;
          s: in std_logic;
          q: out std_logic
        ) ;
      end component mux21;

begin
    mux21_inst : mux21 port map(sig1,sig2,en,output);
    process
    begin
        sig1 <= '0';
        sig2 <= '0';
        en <='0';
        wait for 10 ns;
        sig1 <= '1';
        sig2 <= '0';
        en <='0';
        wait for 10 ns;
        sig1 <= '0';
        sig2 <= '0';
        en <='1';
        wait for 10 ns;
        sig1 <= '0';
        sig2 <= '1';
        en <='1';
        wait for 10 ns;
    end process ; -- test

end behave ; -- behave