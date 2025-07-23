// Q4: 4-bit carry lookahead adder
module cla4bit(A,B,Cin, S, Cout);
    input [3:0] A;
    input [3:0] B;
    input Cin;

    output [3:0] S;
    output Cout;

    wire [3:0] G, P, C;

    assign G = A & B;
    assign P = A ^ B;

    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & Cin);
    assign C[2] = G[1] | (P[1] & (G[0] | (P[0] & Cin)));
    assign C[3] = G[2] | (P[2] & (G[1] | (P[1] & (G[0] | (P[0] & Cin)))));
    assign Cout = G[3] | (P[3] & (G[2] | (P[2] & (G[1] | (P[1] & (G[0] | (P[0] & Cin)))))));

    assign S = P ^ C;     

endmodule