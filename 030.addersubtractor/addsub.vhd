--------------------------------------------------------
-- adder and subtractor using logic equations
--
-- Author :Hemanshu
-- Description: adder and subtractor using logic equations for 4bit 
-- Date:31-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


----------------------------------------------------------
entity addsub is
port (
    a : in STD_LOGIC_VECTOR(3 downto 0);
    b : in STD_LOGIC_VECTOR(3 downto 0);
    e:  in STD_LOGIC;
    cf : out STD_LOGIC;
    ovf : out STD_LOGIC;
    s: out STD_LOGIC_VECTOR(3 downto 0)
  ) ;
end addsub;
------------------------------------------------------------

architecture rtl of addsub is
    signal c:STD_LOGIC_VECTOR(4 downto 0);
    signal bx: STD_LOGIC_VECTOR(3 downto 0);

begin
    bx <=b xor (E & E & E & E);
    c(0)<= E;
    s<= a xor bx xor c(3 downto 0);
    c(4 downto 1 ) <= (a and bx) or (c(3 downto 0) and (a xor bx));
    cf <= c(4);
    ovf <= c(3) xor c(4);
end rtl ; --rtl 