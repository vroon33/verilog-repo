`timescale 1ns/1ns
`include "problem2a.v"

module problem2a_tb;
    reg A,B,C,D;
    wire Y;

    problem2a uut(A,B,C,D,Y);

    initial begin
        $dumpfile("problem2a_tb.vcd");
        $dumpvars(0, problem2a_tb);

        {A, B, C, D} = 4'b0000; #20;
        {A, B, C, D} = 4'b1111; #20;
        {A, B, C, D} = 4'b0101; #20;
        {A, B, C, D} = 4'b0000; #20;
        {A, B, C, D} = 4'b1111; #20;
        {A, B, C, D} = 4'b1010; #20;
        {A, B, C, D} = 4'b1100; #20;

        $display("Test complete.");
        $finish;
    end
endmodule