LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY \counter_tb.vhd\  IS 
  GENERIC (
    N  : INTEGER   := 8 ); 
END ; 
 
ARCHITECTURE \counter_tb.vhd_arch\   OF \counter_tb.vhd\   IS
  SIGNAL qout   :  std_logic_vector (N - 1 downto 0)  ; 
  SIGNAL clr   :  STD_LOGIC  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  COMPONENT counter  
    GENERIC ( 
      N  : INTEGER  );  
    PORT ( 
      qout  : out std_logic_vector (N - 1 downto 0) ; 
      clr  : in STD_LOGIC ; 
      clk  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : counter  
    GENERIC MAP ( 
      N  => N   )
    PORT MAP ( 
      qout   => qout  ,
      clr   => clr  ,
      clk   => clk   ) ; 



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
	 clr  <= '0'  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;
END;
