--------------------------------------------------------
-- PWM signal
--
-- Author :Hemanshu
-- Description: PWM signal
-- Date:14-04-2019
---------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;
----------------------------------------------------------
entity pwm4 is
port (
    clr : in STD_LOGIC;
    clk : in STD_LOGIC;
    duty : in STD_LOGIC_VECTOR(3 downto 0);
    period :in STD_LOGIC_VECTOR(3 downto 0);
    pwm : out STD_LOGIC

  ) ;
end pwm4;
------------------------------------------------------------

architecture arch of pwm4 is
signal count :STD_LOGIC_VECTOR(3 downto 0):="0000";
begin
    cnt4 : process( clk , clr )
    begin
        if clr = '1' then
            count <= "0000";
        elsif clk'event and clk = '1' then
            if count = period - 1 then
                count <= "0000";
            else
                count <= count + 1;
            end if ;
        end if ;
    end process cnt4; -- cnt4
    
    pwmout : process( count )
    begin
        if count < duty then
            pwm<= '1';
        else
            pwm<= '0';
        end if ;
    end process ; -- pwmout
   
end arch ; --arch   