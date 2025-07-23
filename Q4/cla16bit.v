// 16-bit CLA using 4-bit CLA
`include "cla4bit.v"

module cla16bit(A, B, Cin, S, Cout);
    input [15:0] A;
    input [15:0] B;
    input Cin;

    output [15:0] S;
    output Cout;

    wire [2:0] C; 

    cla4bit uut0(A[3:0], B[3:0], Cin, S[3:0], C[0]);
    cla4bit uut1(A[7:4], B[7:4], C[0], S[7:4], C[1]);
    cla4bit uut2(A[11:8], B[11:8], C[1], S[11:8], C[2]);
    cla4bit uut3(A[15:12], B[15:12], C[2], S[15:12], Cout);

endmodule