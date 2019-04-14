LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY shiftreg_tb  IS 
END ; 
 
ARCHITECTURE shiftreg_tb_arch OF shiftreg_tb IS
  SIGNAL data_in   :  STD_LOGIC  ; 
  SIGNAL q   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL clr   :  STD_LOGIC  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  COMPONENT shiftreg  
    PORT ( 
      data_in  : in STD_LOGIC ; 
      q  : out std_logic_vector (3 downto 0) ; 
      clr  : in STD_LOGIC ; 
      clk  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : shiftreg  
    PORT MAP ( 
      data_in   => data_in  ,
      q   => q  ,
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


-- "Constant Pattern"
-- Start Time = 500 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 data_in  <= '1'  ;
	wait for 50 ns ;
	 data_in  <= '0'  ;
	wait for 250 ns ;
	 data_in  <= '1'  ;
	wait for 200 ns ;
	 data_in  <= '0'  ;
	wait for 500 ns ;
-- dumped values till 1 us
	wait;
 End Process;
END;
