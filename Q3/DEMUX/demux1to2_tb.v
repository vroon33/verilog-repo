// Testbench for 1:2 DEMUX using Logic Gates
`timescale 1ns/1ns
`include "demux1to2.v"

module demux1to2_tb;
    reg I, S0;
    wire Y0, Y1;

    demux1to2 uut(I, S0, Y0, Y1);

    initial begin
        $dumpfile("demux1to2_tb.vcd");
        $dumpvars(0, demux1to2_tb);

        for(integer i = 0; i < 4; i++) begin
            {I, S0} = i; #10;
        end

        $finish;
    end
endmodule