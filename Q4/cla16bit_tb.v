// Testbench for 16 bit CLA using 4 bit CLA
`timescale 1ns/1ns
`include "cla16bit.v"

module cla16bit_tb;
    reg [15:0] A;
    reg [15:0] B;
    reg Cin;
    wire [15:0] S;
    wire Cout;

    cla16bit uut(A,B,Cin,S,Cout);

    initial begin
        $dumpfile("cla16bit_tb.vcd");
        $dumpvars(0, cla16bit_tb);

        A = 16'b0110101010111101; B = 16'b1010101011011101; Cin = 1'b0; #10; // 218 + 341 = 559
        A = 16'b1011101010111101; B = 16'b1101101011011101; Cin = 1'b1; #10; // 186 + 218 + 1 = 405
        $finish;
    end
endmodule