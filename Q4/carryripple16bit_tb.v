// Testbench for the 16 bit carry ripple adder
`timescale 1ns / 1ns
`include "carryripple16bit.v"
module carryripple16bit_tb;
    reg [15:0] A;
    reg [15:0] B;
    reg Cin;
    wire [15:0] S;
    wire Cout;

    carryripple16bit uut(A, B, Cin, S, Cout);

    initial begin
        $dumpfile("carryripple16bit_tb.vcd");
        $dumpvars(0, carryripple16bit_tb);

        A = 16'd20768; B = 16'd13344; Cin = 0; #10;
        A = 16'd32767; B = 16'd59483; Cin = 0; #10;

    end
endmodule