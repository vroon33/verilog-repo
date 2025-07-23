// Testbench for 4-bit carry-ripple adder
`timescale 1ns/1ns
`include "carryripple4bit.v"

module carryripple4bit_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] S;
    wire Cout;

    carryripple4bit uut(A,B,Cin,S,Cout);

    initial begin
        $dumpfile("carryripple4bit_tb.vcd");
        $dumpvars(0, carryripple4bit_tb);

        A = 4'b0101; B = 4'b0011; Cin = 0; #10;
        A = 4'b0111; B = 4'b1001; Cin = 0; #10;
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;        
        A = 4'b1000; B = 4'b1000; Cin = 0; #10;     
        A = 4'b1111; B = 4'b1111; Cin = 1; #10;
 
        $finish;
    end
endmodule 