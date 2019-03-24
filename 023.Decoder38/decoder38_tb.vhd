--------------------------------------------------------
-- testbench for decoder38
--
-- Author :Hemanshu
-- Description: decoder 3 to 8
-- Date:24-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;
----------------------------------------------------------
entity  decoder38_tb is

end decoder38_tb;
------------------------------------------------------------

architecture behave of decoder38_tb is
    signal r_a :STD_LOGIC_VECTOR(2 downto 0);
    signal r_y :STD_LOGIC_VECTOR(7 downto 0);
    component decode38b is
        port (
            a: in STD_LOGIC_VECTOR(2 downto 0);
            y: out STD_LOGIC_VECTOR(7 downto 0)
          ) ;
    end component decode38b;
begin
    decoder38_in:decode38b port map(r_a,r_y);
    process is
    begin
        for i in 0 to 2**r_a'length-1 loop
            r_a<= STD_LOGIC_VECTOR(to_unsigned(i,r_a'length));
            wait for 10 ns;
        end loop;
    end process;
   
end  behave; --behave 