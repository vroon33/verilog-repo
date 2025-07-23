// Testbench for full adder 1 bit 
`timescale 1ns/1ns
`include "fulladder1bit.v"

module fulladder1bit_tb;
    reg A,B,Cin;
    wire S, Cout;

    fulladder1bit uut(A,B,Cin,S,Cout);

    initial begin
        $dumpfile("fulladder1bit_tb.vcd");
        $dumpvars(0, fulladder1bit_tb);

        Cin = 0;
        for(integer i = 0 ; i < 4; i++) begin
            {B,A} = i; #10;
        end
        $finish;
    end
endmodule