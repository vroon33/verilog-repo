// Testbench for 1:4 DEMUX using Logic Gates
`timescale 1ns/1ns
`include "demux1to4.v"

module demux1to4_tb;
    reg I, S0, S1;
    wire Y0, Y1, Y2, Y3;

    demux1to4 uut(I, S0, S1, Y0, Y1, Y2, Y3);

    initial begin
        $dumpfile("demux1to4_tb.vcd");
        $dumpvars(0, demux1to4_tb);

        for(integer i = 0; i < 8; i++) begin
            {S1, S0, I} = i; #10;
        end

        $finish;
    end
endmodule