view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl -range 3 0 /clkpulse/inp 
wave create -pattern none -portmode in -language vhdl /clkpulse/cclk 
wave create -pattern none -portmode in -language vhdl /clkpulse/clr 
wave create -pattern none -portmode out -language vhdl -range 3 0 /clkpulse/outp 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/clkpulse/cclk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 50ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/clkpulse/cclk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10ns NewSig:/clkpulse/clr 
wave modify -driver freeze -pattern constant -value 0 -starttime 10ns -endtime 1000ns NewSig:/clkpulse/clr 
WaveCollapseAll -1
wave clipboard restore
