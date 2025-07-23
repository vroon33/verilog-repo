`timescale 1ns/1ns
`include "decoder3to8_2.v"

module decoder3to8_2_tb;
    reg A2, A1, A0;
    wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

    decoder3to8 uut(A2, A1, A0, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);

    initial begin
        $dumpfile("decoder3to8_2_tb.vcd");
        $dumpvars(0, decoder3to8_2_tb);

        for(integer i = 0; i < 8; i++) begin
            {A2, A1, A0} = i; #10;
        end
        $display("Test is complete");
        $finish;
    end
endmodule