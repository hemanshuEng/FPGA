LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY count3b_tb  IS 
END ; 
 
ARCHITECTURE count3b_tb_arch OF count3b_tb IS
  SIGNAL qout   :  std_logic_vector (2 downto 0)  ; 
  SIGNAL clr   :  STD_LOGIC  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  COMPONENT count3b  
    PORT ( 
      qout  : out std_logic_vector (2 downto 0) ; 
      clr  : in STD_LOGIC ; 
      clk  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : count3b  
    PORT MAP ( 
      qout   => qout  ,
      clr   => clr  ,
      clk   => clk   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 50 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 25 ns ;
-- 25 ns, single loop till start period.
	for Z in 1 to 19
	loop
	    clk  <= '1'  ;
	   wait for 25 ns ;
	    clk  <= '0'  ;
	   wait for 25 ns ;
-- 975 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 25 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 clr  <= '0'  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;
END;
