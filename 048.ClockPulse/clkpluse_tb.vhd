LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY clkpluse_tb  IS 
END ; 
 
ARCHITECTURE clkpluse_tb_arch OF clkpluse_tb IS
  SIGNAL outp   :  STD_LOGIC  ; 
  SIGNAL clr   :  STD_LOGIC  ; 
  SIGNAL cclk   :  STD_LOGIC  ; 
  SIGNAL inp   :  STD_LOGIC  ; 
  COMPONENT clkpulse  
    PORT ( 
      outp  : out STD_LOGIC ; 
      clr  : in STD_LOGIC ; 
      cclk  : in STD_LOGIC ; 
      inp  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : clkpulse  
    PORT MAP ( 
      outp   => outp  ,
      clr   => clr  ,
      cclk   => cclk  ,
      inp   => inp   ) ; 



-- "Constant Pattern"
-- Start Time = 200 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 inp  <= '0'  ;
	wait for 200 ns ;
	 inp  <= '1'  ;
	wait for 200 ns ;
	 inp  <= '0'  ;
	wait for 600 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 50 ns
  Process
	Begin
	 cclk  <= '0'  ;
	wait for 25 ns ;
-- 25 ns, single loop till start period.
	for Z in 1 to 19
	loop
	    cclk  <= '1'  ;
	   wait for 25 ns ;
	    cclk  <= '0'  ;
	   wait for 25 ns ;
-- 975 ns, repeat pattern in loop.
	end  loop;
	 cclk  <= '1'  ;
	wait for 25 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 100 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 clr  <= '1'  ;
	wait for 10 ns ;
	 clr  <= '0'  ;
	wait for 990 ns ;
-- dumped values till 1 us
	wait;
 End Process;
END;
