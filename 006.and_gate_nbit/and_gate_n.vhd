--------------------------------------------------------
-- and gate with nbit
--
-- Author :Hemanshu
-- Description:
-- Date:24/02/2019
---------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------

entity and_gate_n is
  generic(N: integer);  
  port (
    a : in std_logic_vector(N-1 downto 0);
    b : in std_logic_vector(N-1 downto 0);
    q : out std_logic_vector(N-1 downto 0)
  ) ;
end and_gate_n;

-------------------------------------------------------------

architecture rtl of and_gate_n is

begin
    q <= a and b;
end rtl ; -- rtl