`timescale 1ns/1ns
`include "decoder1to2.v"

module decoder1to2_tb;
    reg A, E;
    wire Y0, Y1;

    decoder1to2 uut(A, Y0, Y1, E);

    initial begin
        $dumpfile("decoder1to2_tb.vcd");
        $dumpvars(0, decoder1to2_tb);

        E = 0; A = 0;
        #10 E = 0; A = 1;
        #10 E = 1; A = 0;
        #10 E = 1; A = 1;
        #10;
        $display("Test is complete");
        $finish;
    end
endmodule