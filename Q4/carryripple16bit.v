// 16 bit carry ripple adder using 4 bit carry ripple adder
`include "carryripple4bit.v"
module carryripple16bit(A,B,Cin,S, Cout);
    input [15:0] A;
    input [15:0] B;
    input Cin;
    output [15:0] S;
    output Cout;
    wire [15:0] C;

    carryripple4bit uut0(A[3:0],B[3:0],Cin,S[3:0],C[3]);
    carryripple4bit uut1(A[7:4],B[7:4],C[3],S[7:4],C[7]);
    carryripple4bit uut2(A[11:8],B[11:8],C[7],S[11:8],C[11]);
    carryripple4bit uut3(A[15:12],B[15:12],C[11],S[15:12],C[15]);

    assign Cout = C[15];

endmodule