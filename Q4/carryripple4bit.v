// 4 bit carry ripple adder using 1 bit full adder
`timescale 1ns/1ns
`include "fulladder1bit.v"
module carryripple4bit(A,B,Cin,S, Cout);
    input [3:0] A;
    input [3:0] B;
    input Cin;
    output [3:0] S;
    output Cout;
    wire [3:0] C;

    fulladder1bit uut0(A[0],B[0],Cin,S[0],C[0]);
    fulladder1bit uut1(A[1],B[1],C[0],S[1],C[1]);
    fulladder1bit uut2(A[2],B[2],C[1],S[2],C[2]);
    fulladder1bit uut3(A[3],B[3],C[2],S[3],C[3]);

    assign Cout = C[3];
    
endmodule