// Test bench for 4 bit CLA
`timescale 1ns/1ns
`include "cla4bit.v"

module cla4bit_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] S;
    wire Cout;

    cla4bit uut(A,B,Cin,S,Cout);

    initial begin
        $dumpfile("cla4bit_tb.vcd");
        $dumpvars(0, cla4bit_tb);

        A = 4'b0110; B = 4'b1010; Cin = 1'b0; #10; 
        A = 4'b1011; B = 4'b1101; Cin = 1'b1; #10; // 11 + 13 + 1 = 25
        $finish;
    end

endmodule