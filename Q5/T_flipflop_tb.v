// Testbench for T flip-flop
`timescale 1ns/1ns
`include "T_flipflop.v"

module T_flipflop_tb;
    reg T, CLK = 0;
    wire Q;

    T_flipflop uut(T, CLK, Q);

    always begin
        CLK = ~CLK;
        #10;
    end

    initial begin

        $dumpfile("T_flipflop_tb.vcd");
        $dumpvars(0, T_flipflop_tb);
        T = 1'b0; #20;
        T = 1'b1; #20;
        T = 1'b0; #20;
        T = 1'b0; #20;
        T = 1'b0; #20;
        T = 1'b1; #20;
        T = 1'b1; #20;
        T = 1'b1; #20;
        T = 1'b0; #20;
        T = 1'b1; #20;

        $display("Test complete.");
        $finish;
    end
endmodule