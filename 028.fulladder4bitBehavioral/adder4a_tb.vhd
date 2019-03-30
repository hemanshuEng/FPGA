--------------------------------------------------------
-- adder 4 bit testbench
--
-- Author :Heamnshu
-- Description: adder 4 bit testbench
-- Date:30-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;
USE IEEE.STD_LOGIC_ARITH.ALL;
----------------------------------------------------------
entity adder4a_tb is
end adder4a_tb;
------------------------------------------------------------

architecture behave of adder4a_tb is
    signal a:  STD_LOGIC_VECTOR(3 downto 0);
    signal b:  STD_LOGIC_VECTOR(3 downto 0);
    signal cf:   STD_LOGIC;
    signal ovf:  STD_LOGIC;
    signal sum:  STD_LOGIC_VECTOR(3 downto 0);
    component adder4a is
        port (
            a: in STD_LOGIC_VECTOR(3 downto 0);
            b: in STD_LOGIC_VECTOR(3 downto 0);
            cf: out STD_LOGIC;
            ovf: out STD_LOGIC;
            sum: out STD_LOGIC_VECTOR(3 downto 0)
            ) ;
    end component adder4a;
begin
    DUT: adder4a port map(a,b,cf,ovf,sum);
    b<="0111";
    process is 
    begin
        for i in 0 to 2**a'length-1 loop
            a<= conv_std_logic_vector(i,a'length);
            wait for 10 ns;
        end loop ; --  
    end process;
   
end behave ; --behave 