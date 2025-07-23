// Testbench for 3to8 decoder using logic gates
`timescale 1ns/1ns
`include "decoder3to8.v"

module decoder3to8_tb();
    reg A2, A1, A0, E;
    wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

    decoder3to8 decoder3to8_inst(A2, A1, A0, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, E);

    initial begin
        $dumpfile("decoder3to8_tb.vcd");
        $dumpvars(0, decoder3to8_tb);

        E = 0; A2 = 0; A1 = 0; A0 = 0;
        #10 E = 0; A2 = 0; A1 = 0; A0 = 1;
        #10 E = 0; A2 = 0; A1 = 1; A0 = 0;
        #10 E = 0; A2 = 0; A1 = 1; A0 = 1;
        #10 E = 0; A2 = 1; A1 = 0; A0 = 0;
        #10 E = 0; A2 = 1; A1 = 0; A0 = 1;
        #10 E = 0; A2 = 1; A1 = 1; A0 = 0;
        #10 E = 0; A2 = 1; A1 = 1; A0 = 1;
        #10 E = 1; A2 = 0; A1 = 0; A0 = 0;
        #10 E = 1; A2 = 0; A1 = 0; A0 = 1;
        #10 E = 1; A2 = 0; A1 = 1; A0 = 0;
        #10 E = 1; A2 = 0; A1 = 1; A0 = 1;
        #10 E = 1; A2 = 1; A1 = 0; A0 = 0;
        #10 E = 1; A2 = 1; A1 = 0; A0 = 1;
        #10 E = 1; A2 = 1; A1= 1; A0 = 0;
        #10 E = 1; A2 = 1; A1 = 1; A0 = 1;
        #10;
        $display("Test is complete");
        $finish;
    end
endmodule