--------------------------------------------------------
--  4 bit comparator
--
-- Author :Hemanshu
-- Description: 4 bit comparator using Procedure
-- Date:24-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;    
USE IEEE.STD_LOGIC_unsigned.all;
----------------------------------------------------------
entity comp4 is
port (
    x: in STD_LOGIC_VECTOR(3 downto 0);
    y: in STD_LOGIC_VECTOR(3 downto 0);
    gt: out STD_LOGIC;
    eq: out STD_LOGIC;
    lt: out STD_LOGIC
  ) ;
end comp4;
------------------------------------------------------------

architecture rtl of comp4 is
    procedure comp1bit(
        x: in STD_LOGIC;
        y: in STD_LOGIC;
        Gin : in STD_LOGIC;
        Lin : in STD_LOGIC;
        Gout: out STD_LOGIC;
        Lout: out STD_LOGIC;
        Eout: out STD_LOGIC
    ) is
    begin
        Gout:= (x and not y) or (x and Gin) or (not y and Gin);
        Eout:= (not x and not y and not Gin and not Lin) or (x and y and not Gin and not Lin);
        Lout:= (not x and y) or (not x and Lin) or (y and Lin);
    end procedure;
begin
    process(x,y)
    variable G,L,E:STD_LOGIC_VECTOR(4 downto 0);
    begin
        G(0) := '0';
        L(0) := '0';
        for i in 0 to 3 loop
            comp1bit(x(i),y(i),G(i),L(i),G(i+1),L(i+1),E(i+1));
        end loop;
        gt <=G(4);
        eq <=E(4);
        lt <=L(4);
    end process;
   
end rtl ; --rtl 