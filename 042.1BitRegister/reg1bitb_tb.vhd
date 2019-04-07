LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY \reg1bitb_tb.vhd\  IS 
END ; 
 
ARCHITECTURE \reg1bitb_tb.vhd_arch\   OF \reg1bitb_tb.vhd\   IS
  SIGNAL load   :  STD_LOGIC  ; 
  SIGNAL q0   :  STD_LOGIC  ; 
  SIGNAL clr   :  STD_LOGIC  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  SIGNAL inp0   :  STD_LOGIC  ; 
  COMPONENT reg1bitb  
    PORT ( 
      load  : in STD_LOGIC ; 
      q0  : out STD_LOGIC ; 
      clr  : in STD_LOGIC ; 
      clk  : in STD_LOGIC ; 
      inp0  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : reg1bitb  
    PORT MAP ( 
      load   => load  ,
      q0   => q0  ,
      clr   => clr  ,
      clk   => clk  ,
      inp0   => inp0   ) ; 



-- "Constant Pattern"
-- Start Time = 200 ns, End Time = 500 ns, Period = 50 ns
  Process
	Begin
	 load  <= '0'  ;
	wait for 100 ns ;
	 load  <= '1'  ;
	wait for 100 ns ;
	 load  <= '0'  ;
	wait for 300 ns ;
-- dumped values till 500 ns
	wait;
 End Process;


-- "Repeater Pattern" Repeat Forever
-- Start Time = 0 ns, End Time = 500 ns, Period = 50 ns
  Process
	Begin
	for Z in 1 to 2
	loop
	    inp0  <= '1'  ;
	   wait for 50 ns ;
	    inp0  <= '0'  ;
	   wait for 50 ns ;
	    inp0  <= '1'  ;
	   wait for 50 ns ;
	    inp0  <= '1'  ;
	   wait for 50 ns ;
	    inp0  <= '1'  ;
	   wait for 50 ns ;
-- 500 ns, repeat pattern in loop.
	end  loop;
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 500 ns, Period = 20 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 24
	loop
	    clk  <= '1'  ;
	   wait for 10 ns ;
	    clk  <= '0'  ;
	   wait for 10 ns ;
-- 490 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 500 ns
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 500 ns, Period = 0 ns
  Process
	Begin
	 clr  <= '0'  ;
	wait for 500 ns ;
-- dumped values till 500 ns
	wait;
 End Process;
END;
