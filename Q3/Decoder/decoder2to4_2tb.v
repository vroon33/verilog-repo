// Testbench for 4:2 Decoder using 1:2 Decoder
`timescale 1ns/1ns
`include "decoder2to4_2.v"

module decoder2to4_2_tb();
    reg A1, A0;
    wire Y0, Y1, Y2, Y3;

    decoder2to4_2 decoder2to4_2_inst(A1, A0, Y0, Y1, Y2, Y3);

    initial begin
        $dumpfile("decoder2to4_2_tb.vcd");
        $dumpvars(0, decoder2to4_2_tb);

        for(integer i = 0; i < 4; i++) begin
            {A1, A0} = i; #10;
        end
        $display("Test is complete");
        $finish;
    end
endmodule