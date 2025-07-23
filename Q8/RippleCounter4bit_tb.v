`timescale 1ns/1ps
`include "RippleCounter4bit.v"

module test_RippleCounter4bit;
    reg CLK;
    reg CLR;
    wire [3:0] A;
    RippleCounter4bit uut(
        .CLK(CLK),
        .A(A),
        .CLR(CLR)
    );

    always #5 CLK = ~CLK;
    initial begin
        $dumpfile("RippleCounter4bit_tb.vcd");
        $dumpvars(0, test_RippleCounter4bit);
        
        CLK = 0;
        CLR = 0;

        #1 CLR = 1;  
        #10 CLR = 0; 
        #310; 
        $finish;
    end
    
    initial begin
        $monitor("Time = %0t, CLK = %b, CLR = %b, Counter Output (A) = %b", $time, CLK, CLR, A);
    end
endmodule