LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
USE work.random_generators.all  ; 
ENTITY reegnbit_tb  IS 
  GENERIC (
    N  : INTEGER   := 8 ); 
END ; 
 
ARCHITECTURE reegnbit_tb_arch OF reegnbit_tb IS
	constant nbit : integer :=8;
  SIGNAL d   :  std_logic_vector (nbit - 1 downto 0)  ; 
  SIGNAL load   :  STD_LOGIC  ; 
  SIGNAL q   :  std_logic_vector (nbit- 1 downto 0)  ; 
  SIGNAL clr   :  STD_LOGIC  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  COMPONENT regnbit  
    GENERIC ( 
      N  : INTEGER  );  
    PORT ( 
      d  : in std_logic_vector (N - 1 downto 0) ; 
      load  : in STD_LOGIC ; 
      q  : out std_logic_vector (N - 1 downto 0) ; 
      clr  : in STD_LOGIC ; 
      clk  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : regnbit  
    GENERIC MAP ( 
      N  => nbit   )
    PORT MAP ( 
      d   => d  ,
      load   => load  ,
      q   => q  ,
      clr   => clr  ,
      clk   => clk   ) ; 



-- "Random Pattern"(Normal) : seed = 10
-- Start Time = 0 ns, End Time = 1 us, Period = 50 ns
  Process
	variable max_rand : real := 1.0;
	variable iv : genstatus1;
	variable iy : genstatus2;
	variable rndval : real;
	variable mean : real := 0.0;
	variable seed : integer := 10 ;
	Begin
	iv(NTAB) := 0;
	iv(NTAB+1) := 0;
	for Z in 1 to 20
	loop
	   dist_normal (seed, rndval, mean, max_rand, iv, iy);
	   if (ieee.std_logic_arith.conv_std_logic_vector(integer(myceil(rndval, 1)), 1) /= "1") then
		    load  <= '0'  ;
	   else
		    load  <= '1'  ;
	   end if;
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


 -- "Random Pattern"(Normal) : seed = 5
 -- Start Time = 0 ns, End Time = 1 us, Period = 50 ns
	 Process
	 variable max_rand : real := pow(2.0, real(d'length))-1.0;
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
			 d  <= ieee.std_logic_arith.conv_std_logic_vector(integer(myceil(rndval, d'length)), d'length)  ;
			wait for 50 ns ;
 -- 1 us, repeat pattern in loop.
	 end  loop;
	 wait;
	End Process;
END;
