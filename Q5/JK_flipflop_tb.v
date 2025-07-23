// Testbench for JK flip-flop
`timescale 1ns/1ns
`include "JK_flipflop.v"

module JK_flipflop_tb;
    reg J, K, CLK = 0;
    wire Q;

    JK_flipflop uut(J, K, CLK, Q);

    always begin
        CLK = ~CLK;
        #10;
    end

    initial begin

        $dumpfile("JK_flipflop_tb.vcd");
        $dumpvars(0, JK_flipflop_tb);
        J = 1'b0; K = 1'b1; #20;
        J = 1'b1; K = 1'b0; #20;
        J = 1'b0; K = 1'b0; #20;
        J = 1'b0; K = 1'b1; #20;
        J = 1'b1; K = 1'b1; #20;
        J = 1'b1; K = 1'b0; #20;
        J = 1'b0; K = 1'b0; #20;
        J = 1'b0; K = 1'b1; #20;
        J = 1'b1; K = 1'b1; #20;

        $display("Test complete.");
        $finish;
    end
endmodule