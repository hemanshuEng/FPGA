LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
USE work.random_generators.all  ; 
ENTITY reg4bit_tb  IS 
END ; 
 
ARCHITECTURE reg4bit_tb_arch OF reg4bit_tb IS
  SIGNAL load   :  STD_LOGIC  ; 
  SIGNAL q   :  std_logic_vector (3 downto 0)  ; 
  SIGNAL clr   :  STD_LOGIC  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  SIGNAL inp   :  std_logic_vector (3 downto 0)  ; 
  COMPONENT reg4bit  
    PORT ( 
      load  : in STD_LOGIC ; 
      q  : out std_logic_vector (3 downto 0) ; 
      clr  : in STD_LOGIC ; 
      clk  : in STD_LOGIC ; 
      inp  : in std_logic_vector (3 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : reg4bit  
    PORT MAP ( 
      load   => load  ,
      q   => q  ,
      clr   => clr  ,
      clk   => clk  ,
      inp   => inp   ) ; 



-- "Random Pattern"(Exponential) : seed = 5
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  Process
	variable max_rand : real := 1.0;
	variable iv : genstatus1;
	variable rndval : real;
	variable mean : real := 0.0;
	variable seed : integer := 5 ;
	Begin
	iv(NTAB) := 0;
	for Z in 1 to 10
	loop
	   dist_exponential (seed, rndval, max_rand, iv);
	   if (ieee.std_logic_arith.conv_std_logic_vector(integer(ceil(rndval)), 1) /= "1") then
		    load  <= '0'  ;
	   else
		    load  <= '1'  ;
	   end if;
	   wait for 100 ns ;
-- 1 us, repeat pattern in loop.
	end  loop;
	wait;
 End Process;


-- "Random Pattern"(Normal) : seed = 5
-- Start Time = 0 ns, End Time = 1 us, Period = 50 ns
  Process
	variable max_rand : real := pow(2.0, real(inp'length))-1.0;
	variable iv : genstatus1;
	variable iy : genstatus2;
	variable rndval : real;
	variable mean : real := 0.0;
	variable seed : integer := 5 ;
	Begin
	iv(NTAB) := 0;
	iv(NTAB+1) := 0;
	for Z in 1 to 20
	loop
	   dist_normal (seed, rndval, mean, max_rand, iv, iy);
	    inp  <= ieee.std_logic_arith.conv_std_logic_vector(integer(myceil(rndval, inp'length)), inp'length)  ;
	   wait for 50 ns ;
-- 1 us, repeat pattern in loop.
	end  loop;
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
-- Start Time = 20 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 clr  <= '1'  ;
	wait for 20 ns ;
	 clr  <= '0'  ;
	wait for 980 ns ;
-- dumped values till 1 us
	wait;
 End Process;
END;
