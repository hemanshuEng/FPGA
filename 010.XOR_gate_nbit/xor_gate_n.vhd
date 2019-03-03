--------------------------------------------------------
-- XOR gate with nbit
--
-- Author :Hemanshu
-- Description:
-- Date:03/03/2019
---------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------

entity xor_gate_n is
  generic(N: integer);  
  port (
    a : in std_logic_vector(N-1 downto 0);
    b : in std_logic_vector(N-1 downto 0);
    q : out std_logic_vector(N-1 downto 0)
  ) ;
end xor_gate_n;

-------------------------------------------------------------

architecture rtl of xor_gate_n is

begin
    q <= a xor b;
end rtl ; -- rtl