`timescale 1ns/1ps
`include "UpDown4bit.v"

module test_UpDown4bit;
    reg CLK;
    reg UP;
    reg DOWN;
    reg RST;
    
    wire [3:0] Q;
    
    UpDown4bit uut (
        .CLK(CLK),
        .UP(UP),
        .DOWN(DOWN),
        .RST(RST),
        .Q(Q)
    );
    
    always #5 CLK = ~CLK;
    
    initial begin
        $dumpfile("UpDown4bit_tb.vcd");
        $dumpvars(0, test_UpDown4bit);
        RST = 1;
        CLK = 0;
        UP = 0;
        DOWN = 0;
        #1;

        RST = 1;
        #1;
        RST = 0;

        #1 UP = 1; DOWN = 0;
        #150;    
        UP = 0; DOWN = 1;
        #150;
        $finish;
    end
endmodule
