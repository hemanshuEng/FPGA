----------------------------------------------------------
-- Xor Gate
-- Author:hemanshu
-- Description:
-- Date :03/03/2019
-----------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------------------
entity xor_gate is 
port(
    x,y :in std_logic;
    q:   out std_logic
);
end xor_gate;

architecture rtl of xor_gate is

begin
    q <= x xor y;
end rtl ; -- rtl