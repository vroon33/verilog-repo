// Testbench for 2to4 decoder using logic gates
`timescale 1ns/1ns 
`include "decoder2to4.v"
module decoder2to4_tb();
    reg A1, A0, E;
    wire Y0, Y1, Y2, Y3;

    decoder2to4 decoder2to4_inst(A1, A0, Y0, Y1, Y2, Y3, E);

    initial begin
        $dumpfile("decoder2to4_tb.vcd");
        $dumpvars(0, decoder2to4_tb);

        E = 0; A1 = 0; A0 = 0;
        #10 E = 0; A1 = 0; A0 = 1;
        #10 E = 0; A1 = 1; A0 = 0;
        #10 E = 0; A1 = 1; A0 = 1;
        #10 E = 1; A1 = 0; A0 = 0;
        #10 E = 1; A1 = 0; A0 = 1;
        #10 E = 1; A1 = 1; A0 = 0;
        #10 E = 1; A1 = 1; A0 = 1;
        #10;
        $display("Test is complete");
        $finish;
    end
endmodule