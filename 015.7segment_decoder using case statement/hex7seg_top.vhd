--------------------------------------------------------
-- 7segment 
--
-- Author :Hemanshu
-- Description: top level entity
-- Date:17-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity hex7seg_top is
port (
    sw: in STD_LOGIC_VECTOR(3 downto 0);
    atog: out STD_LOGIC_VECTOR(6 downto 0);
    en: out STD_LOGIC_VECTOR(3 downto 0);
    h:out STD_LOGIC
  ) ;
end hex7seg_top;
------------------------------------------------------------

architecture rtl  of hex7seg_top is
    component hex7seg is
        port (
            data: in STD_LOGIC_VECTOR(3 downto 0); 
            seg: out STD_LOGIC_VECTOR(6 downto 0)
          ) ;
        end component hex7seg;
begin
    en <="0000";
    h <='1';
    seg:hex7seg port map(sw,atog);
   
end rtl ; -- 