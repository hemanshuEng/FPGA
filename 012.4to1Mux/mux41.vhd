--------------------------------------------------------
-- Multiplexer 4 to 1 
--
-- Author :Hemanshu
-- Description: 4 input to 1 output
-- Date:03/03/2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity mux41 is
  port (
    a : in std_logic_vector(3 downto 0);
    s : in std_logic_vector(1 downto 0);
    q : out std_logic
  ) ;
end mux41;
------------------------------------------------------------

architecture rtl of mux41 is
begin
    p1 : process( s,a )
    begin

    case s is
    
        when "00" => q <= a(0);
        when "01" => q <= a(1);
        when "10" => q <= a(2);
        when "11" => q <= a(3);
        when others => q<= a(0);
    
    end case ;

    end process ; -- p1



end rtl ; -- rtl

---------------------------------------------------------------