LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY \dpush_tb.vhd\  IS 
END ; 
 
ARCHITECTURE \dpush_tb.vhd_arch\   OF \dpush_tb.vhd\   IS
  SIGNAL outp   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL clr   :  STD_LOGIC  ; 
  SIGNAL cclk   :  STD_LOGIC  ; 
  SIGNAL inp   :  std_logic_vector (3 downto 0)  ; 
  COMPONENT debounce4  
    PORT ( 
      outp  : out std_logic_vector (3 downto 0) ; 
      clr  : in STD_LOGIC ; 
      cclk  : in STD_LOGIC ; 
      inp  : in std_logic_vector (3 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : debounce4  
    PORT MAP ( 
      outp   => outp  ,
      clr   => clr  ,
      cclk   => cclk  ,
      inp   => inp   ) ; 



-- "Constant Pattern"
-- Start Time = 580 ns, End Time = 1 us, Period = 50 ns
  Process
	Begin
	 inp  <= "0000"  ;
	wait for 300 ns ;
	 inp  <= "0001"  ;
	wait for 10 ns ;
	 inp  <= "0000"  ;
	wait for 20 ns ;
	 inp  <= "0001"  ;
	wait for 10 ns ;
	 inp  <= "0000"  ;
	wait for 10 ns ;
	 inp  <= "0001"  ;
	wait for 200 ns ;
	 inp  <= "0000"  ;
	wait for 30 ns ;
	 inp  <= "0001"  ;
	wait for 10 ns ;
	 inp  <= "0000"  ;
	wait for 410 ns ;
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
END;
