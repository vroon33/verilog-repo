// Testbench for D flip-flop
`timescale 1ns/1ns
`include "D_flipflop.v"

module D_flipflop_tb;
    reg D, CLK = 0;
    reg CLR;
    wire Q;

    D_flipflop uut(D, CLK, Q, CLR);

    always begin
        CLK = ~CLK;
        #10;
    end

    initial begin
        $dumpfile("D_flipflop_tb.vcd");
        $dumpvars(0, D_flipflop_tb);
        D = 1'b0; #20;
        D = 1'b1; #20;
        D = 1'b0; #20;
        D = 1'b1; #20;
        D = 1'b0; #20;
        D = 1'b1; #20;
        D = 1'b0; #20;
        D = 1'b1; #20;

        $display("Test complete.");
        $finish;
    end
endmodule
