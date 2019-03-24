--------------------------------------------------------
-- testbench for binary to gray code
--
-- Author :Heamshu
-- Description: 4 bit binary to gray code testbench
-- Date:24-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

----------------------------------------------------------
entity bin2gray_tb is
end bin2gray_tb;
------------------------------------------------------------

architecture behave of bin2gray_tb is
    signal r_bin :STD_LOGIC_VECTOR(3 downto 0);
    signal r_gray:STD_LOGIC_VECTOR(3 downto 0);
    component bin2gray is
        port (
            b: in STD_LOGIC_VECTOR(3 downto 0);
            g: out STD_LOGIC_VECTOR(3 downto 0)
          ) ;
    end component bin2gray;
begin
    bin2gray_inst: bin2gray port map(r_bin,r_gray);
    process is
    begin
        for i in 0 to 2**r_bin'length-1 loop
            r_bin <= STD_LOGIC_VECTOR(to_unsigned(i,r_bin'length) ); 
            wait for 10 ns;
        end loop;
    end process;
end behave ; --behave 