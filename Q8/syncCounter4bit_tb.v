`timescale 1ns/1ps
`include "syncCounter4bit.v"

module test_syncCounter4bit;
    reg CLK;
    reg RST;
    wire [3:0] Q;
    
    syncCounter4bit uut (
        .CLK(CLK), 
        .RST(RST), 
        .Q(Q)
    );
    
    always #5 CLK = ~CLK; 
    
    initial begin
        $dumpfile("syncCounter4bit_tb.vcd");
        $dumpvars(0, test_syncCounter4bit);
        RST = 1;
        CLK = 0;
        #1;
        CLK = 0;
        RST = 0;
        #1;
        #10 RST = 0;
        #160;
        
        $finish;
    end
    
    initial begin
        $monitor("Time = %0t, Reset = %b, Q = %b", $time, RST, Q);
    end
endmodule
