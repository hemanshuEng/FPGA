LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY \PWM_tb.vhd\  IS 
END ; 
 
ARCHITECTURE \PWM_tb.vhd_arch\   OF \PWM_tb.vhd\   IS
  SIGNAL pwm   :  STD_LOGIC  ; 
  SIGNAL clr   :  STD_LOGIC  ; 
  SIGNAL duty   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  SIGNAL period   :  std_logic_vector (3 downto 0)  ; 
  COMPONENT pwm4  
    PORT ( 
      pwm  : out STD_LOGIC ; 
      clr  : in STD_LOGIC ; 
      duty  : in std_logic_vector (3 downto 0) ; 
      clk  : in STD_LOGIC ; 
      period  : in std_logic_vector (3 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : pwm4  
    PORT MAP ( 
      pwm   => pwm  ,
      clr   => clr  ,
      duty   => duty  ,
      clk   => clk  ,
      period   => period   ) ; 



-- "Constant Pattern"
-- Start Time = 10 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 clr  <= '1'  ;
	wait for 10 ns ;
	 clr  <= '0'  ;
	wait for 990 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 20 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 49
	loop
	    clk  <= '1'  ;
	   wait for 10 ns ;
	    clk  <= '0'  ;
	   wait for 10 ns ;
-- 990 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 duty  <= "0100"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 period  <= "1101"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;
END;
