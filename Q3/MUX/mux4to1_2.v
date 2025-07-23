// 4:1 MUX using 2:1 MUX from mux2to1.v
`include "mux2to1.v"
module mux4to1_2 (Y, A, B, C, D, S1, S0);

    input A,B,C,D,S1,S0;
    output Y;

    wire Y1, Y2;

    mux2to1 UUT1(A,B,S0,Y1);
    mux2to1 UUT2(C,D,S0,Y2);
    mux2to1 UUT3(Y1,Y2,S1,Y);
endmodule