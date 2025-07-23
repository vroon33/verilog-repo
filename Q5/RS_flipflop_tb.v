// Testbench for RS flip-flop
`timescale 1ns/1ns
`include "RS_flipflop.v"

module RS_flipflop_tb;
    reg R, S, CLK = 0;
    wire Q, notQ;

    RS_flipflop uut(R, S, CLK, Q, notQ);

    always begin
        CLK = ~CLK;
        #10;
    end

    initial begin

        $dumpfile("RS_flipflop_tb.vcd");
        $dumpvars(0, RS_flipflop_tb);
        R = 1'b0; S = 1'b1; #20;
        R = 1'b1; S = 1'b0; #20;
        R = 1'b0; S = 1'b0; #20;
        R = 1'b0; S = 1'b1; #20;
        R = 1'b1; S = 1'b0; #20;
        R = 1'b0; S = 1'b0; #20;
        R = 1'b0; S = 1'b1; #20;

        $display("Test complete.");
        $finish;
    end
endmodule