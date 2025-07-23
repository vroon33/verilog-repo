// 8:1 MUX using 4:1 MUX from mux4to1_2.v
`include "mux4to1_2.v"
module mux8to1_2 (Y, S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7);
    input I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2;
    output Y;

    wire Y1, Y2;
    wire Y3, Y4;  

    mux4to1_2 uut1(Y1,I0,I1,I2,I3,S1,S0);
    mux4to1_2 uut2(Y2,I4,I5,I6,I7,S1,S0);
    mux4to1_2 uut3(Y,Y1,Y2,1'b1,1'b1,1'b0,S2);
    
endmodule