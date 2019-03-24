
### binary to BCD converter

1. clear all bits of z zero  
2. shift B left 3bits   
        z[8:3] = B[5:0];   
3. Do 3 times   
   if Units > 4 then add 3 to Units  
   (note Units = z[9:6])  
   shift z left 1 bit   
4. Tens =  P[6:4] = z[12:10]  
   Units = P[3:0] = z[9:6]
