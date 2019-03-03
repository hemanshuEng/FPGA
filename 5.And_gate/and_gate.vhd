----------------------------------------------------------
-- And Gate
-- Author:hemanshu
-- Description:
-- Date :03/03/2019
-----------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

-----------------------------------------------------------
entity and_gate is 
port(
    x,y :in std_logic;
    q:   out std_logic
);
end and_gate;
architecture rtl of and_gate is

begin
    q <= x and y;
end rtl ; -- rtl