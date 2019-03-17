--------------------------------------------------------
-- generic Mux testbench
--
-- Author :Hemanshu
-- Description: generic Mux testbech 
-- Date:17-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity mux2g_tb is
end mux2g_tb;
------------------------------------------------------------

architecture behave of mux2g_tb is
    constant nbit : integer:=3;
    signal r_sig1: STD_LOGIC_VECTOR(nbit-1 downto 0);
    signal r_sig2: STD_LOGIC_VECTOR(nbit-1 downto 0);
    signal r_s   : STD_LOGIC :='0';
    signal result: STD_LOGIC_VECTOR(nbit-1 downto 0);
    constant period: time :=10 ns;
    component mux2g is 
        generic(N:integer);
        port(
            a:in STD_LOGIC_VECTOR(N-1 downto 0);
            b:in STD_LOGIC_VECTOR(N-1 downto 0);
            s:in STD_LOGIC;
            y:out STD_LOGIC_VECTOR(N-1 downto 0)
        );
    end component mux2g;
    
begin
    mux2g_inst:mux2g generic map(N=>nbit)
                     port map(r_sig1,r_sig2,r_s,result);
    clk: process
    begin 
       r_s <= '0';
       wait for period/2;
       r_s <= '1';
       wait for period/2;
    end process;
    process is
        begin
           r_sig1 <= "010";
           r_sig2 <= "111"; 
	   wait for 100 ns;
           wait;
        end process;
   
end behave ; --behave 