--------------------------------------------------------
-- testebnch for 7segment multiplexing
--
-- Author :hemanshu
-- Description: 
-- Date:23-03-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------
entity seg7mux_tb is
end seg7mux_tb;
------------------------------------------------------------

architecture behave of seg7mux_tb is
    signal r_sw:STD_LOGIC_VECTOR(3 downto 0);
    signal r_seg:STD_LOGIC_VECTOR(6 downto 0);
    signal r_en:STD_LOGIC_VECTOR(3 downto 0);
    signal r_dp:STD_LOGIC; 
    component  seg7mux is
        port (
            sw: in  STD_LOGIC_VECTOR(3 downto 0);
            seg: out STD_LOGIC_VECTOR(6 downto 0);
            en : out STD_LOGIC_VECTOR(3 downto 0);
            dp : out STD_LOGIC
          ) ;
    end component seg7mux ;
begin
   seg7mux_inst:seg7mux port map(r_sw,r_seg,r_en,r_dp);
   process is
    begin
        r_sw <= "0000";
        wait for 10 ns;
        r_sw <= "0001";
        wait for 10 ns;
        r_sw <= "0010";
        wait for 10 ns;
        r_sw <= "0100";
        wait for 10 ns;
        r_sw <= "1000";
        wait for 10 ns;
    end process;
end behave ; --behave 