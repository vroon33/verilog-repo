// Testbench for 1:8 DEMUX using Logic Gates
`timescale 1ns/1ns
`include "demux1to8.v"

module demux1to8_tb;
    reg I, S0, S1, S2;
    wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

    demux1to8 uut(I, S0, S1, S2, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);

    initial begin
        $dumpfile("demux1to8_tb.vcd");
        $dumpvars(0, demux1to8_tb);

        for(integer i = 0; i < 16; i++) begin
            {S2, S1, S0, I} = i; #10;
        end

        $finish;
    end
endmodule