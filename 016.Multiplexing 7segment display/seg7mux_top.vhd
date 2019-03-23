--------------------------------------------------------
-- 7 segment top level entity 
--
-- Author :Hemanshu
-- Description: 7 segment display using multiplexing
-- Date:23-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity seg7mux_top is
port (
    sw: in STD_LOGIC_VECTOR(3 downto 0);
    atog: out STD_LOGIC_VECTOR(6 downto 0);
    en: out STD_LOGIC_VECTOR(3 downto 0);
    h:out STD_LOGIC
  ) ;
end seg7mux_top;
------------------------------------------------------------

architecture rtl of seg7mux_top is
    component  seg7mux is
        port (
            sw: in  STD_LOGIC_VECTOR(3 downto 0);
            seg: out STD_LOGIC_VECTOR(6 downto 0);
            en : out STD_LOGIC_VECTOR(3 downto 0);
            dp : out STD_LOGIC
          ) ;
    end component seg7mux ;
begin
    seg7mux_inst:seg7mux_top port map(sw,atog,en,h); 
end rtl ; --rtl 