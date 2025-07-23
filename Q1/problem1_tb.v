// Testbench for problem1.v
`timescale 1ns/1ns
`include "problem1.v"

module problem1_tb;

    reg A, B;
    wire C, D, E, F, G, H, I;

    problem1 uut (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .F(F),
        .G(G),
        .H(H),
        .I(I)
    );

    initial begin
        A = 0;
        B = 0;

        $dumpfile("problem1_tb.vcd");
        $dumpvars(0, problem1_tb);

        #10 A = 0; B = 1;
        #10 A = 1; B = 0;
        #10 A = 1; B = 1;

        #10 A = 0; B = 0;
        #10 A = 0; B = 1;
        #10 A = 1; B = 0;

        $display("Test Complete");
    end

endmodule