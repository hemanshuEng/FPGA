view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /reg4bit/load 
wave create -pattern none -portmode in -language vhdl -range 3 0 /reg4bit/inp 
wave create -pattern none -portmode in -language vhdl /reg4bit/clk 
wave create -pattern none -portmode in -language vhdl /reg4bit/clr 
wave create -pattern none -portmode out -language vhdl -range 3 0 /reg4bit/q 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ps -dutycycle 50 -starttime 0ps -endtime 500ps NewSig:/reg4bit/clk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 500ns NewSig:/reg4bit/clk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 500ns NewSig:/reg4bit/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 500ns NewSig:/reg4bit/clr 
wave modify -driver freeze -pattern random -initialvalue 0000 -period 50ns -random_type Normal -seed 5 -range 3 0 -starttime 0ns -endtime 500ns NewSig:/reg4bit/inp 
wave modify -driver freeze -pattern random -initialvalue 0 -period 80ns -random_type Normal -seed 5 -starttime 0ns -endtime 500ns NewSig:/reg4bit/load 
wave modify -driver freeze -pattern random -initialvalue 0 -period 80ns -random_type Poisson -seed 5 -starttime 0ns -endtime 500ns NewSig:/reg4bit/load 
wave modify -driver freeze -pattern random -initialvalue 0 -period 80ns -random_type Uniform -seed 5 -starttime 0ns -endtime 500ns NewSig:/reg4bit/load 
wave modify -driver freeze -pattern random -initialvalue 0 -period 40ns -random_type Exponential -seed 5 -starttime 0ns -endtime 500ns NewSig:/reg4bit/load 
{wave export -file {D:/heman/Documents/FPGA/Model Sim/043.Register4bit/reg4bit_tb.vhd} -starttime 0 -endtime 500 -format vhdl -designunit reg4bit} 
WaveCollapseAll -1
wave clipboard restore
