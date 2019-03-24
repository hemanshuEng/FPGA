--------------------------------------------------------
-- comparator 4 bit test bench
--
-- Author :Hemanshu
-- Description: 4bit comparator
-- Date:24-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

----------------------------------------------------------
entity comp4_tb is

end comp4_tb;
------------------------------------------------------------

architecture behave of comp4_tb is
    signal r_x:  STD_LOGIC_VECTOR(3 downto 0);
    signal r_y:  STD_LOGIC_VECTOR(3 downto 0);
    signal r_gt: STD_LOGIC;
    signal r_eq: STD_LOGIC;
    signal r_lt: STD_LOGIC;
    component comp4 is
        port (
            x: in STD_LOGIC_VECTOR(3 downto 0);
            y: in STD_LOGIC_VECTOR(3 downto 0);
            gt: out STD_LOGIC;
            eq: out STD_LOGIC;
            lt: out STD_LOGIC
          ) ;
        end component comp4;
begin
    comp4_inst:comp4 port map(r_x,r_y,r_gt,r_eq,r_lt);
    r_y <= X"7";
    process is
        begin
            for i in 0 to 2**r_x'length-1 loop
                r_x <= STD_LOGIC_VECTOR(to_unsigned(i,r_x'length) ); 
                wait for 10 ns;
            end loop;
    end process;
   
end  behave; -- 