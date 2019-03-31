--------------------------------------------------------
-- adder subtractor logic
--
-- Author :Hemanshu
-- Description: adder subtractor testbench
-- Date:31-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;
USE IEEE.STD_LOGIC_ARITH.ALL;
----------------------------------------------------------
entity addsub_tb is
end addsub_tb;
------------------------------------------------------------

architecture test of addsub_tb is
    signal a:  STD_LOGIC_VECTOR(3 downto 0);
    signal b:  STD_LOGIC_VECTOR(3 downto 0);
    signal e:  STD_LOGIC;
    signal cf:   STD_LOGIC;
    signal ovf:  STD_LOGIC;
    signal sum:  STD_LOGIC_VECTOR(3 downto 0);
    component addsub is
        port (
            a : in STD_LOGIC_VECTOR(3 downto 0);
            b : in STD_LOGIC_VECTOR(3 downto 0);
            e:  in STD_LOGIC;
            cf : out STD_LOGIC;
            ovf : out STD_LOGIC;
            s: out STD_LOGIC_VECTOR(3 downto 0)
          ) ;
    end component addsub;
begin
    DUT: addsub port map(a,b,e,cf,ovf,sum);
    e<='1';-- subtractor
    --e<='0' ; for adder
    b<="0111";
    process is 
    begin
        for i in 0 to 2**a'length-1 loop
            a<= conv_std_logic_vector(i,a'length);
            wait for 10 ns;
        end loop ; --  
    end process;
end test ; --test 