--------------------------------------------------------
-- N bit comparator testbench
--
-- Author :Hemanshu
-- Description: testbench  n bit comparator
-- Date:24-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;
----------------------------------------------------------
entity comp_tb is

end comp_tb;
------------------------------------------------------------

architecture behave of comp_tb is
    constant nbit 	:Integer:=8;
    signal r_x:   STD_LOGIC_VECTOR(nbit-1 downto 0);
    signal r_y:   STD_LOGIC_VECTOR(nbit-1 downto 0);
    signal r_gt:  STD_LOGIC;
    signal r_eq:  STD_LOGIC;
    signal r_lt:  STD_LOGIC;
    component comp is
        generic (N:integer);
        port (
            x: in STD_LOGIC_VECTOR(N-1 downto 0);
            y: in STD_LOGIC_VECTOR(N-1 downto 0);
            gt: out STD_LOGIC;
            eq: out STD_LOGIC;
            lt: out STD_LOGIC
          ) ;
        end component comp;
begin
    comp_n:comp generic map(nbit) port map(r_x,r_y,r_gt,r_eq,r_lt);
    r_y <=X"1A";
    process is
    begin
    for i in 0 to 2**r_x'length-1 loop
        r_x <= std_logic_vector(to_unsigned(i, r_x'length));
        wait for 10 ns; 
    end loop;
    end process;
end behave ; --behave 