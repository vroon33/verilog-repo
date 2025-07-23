// Testbench for 1:4 DEMUX using 1:2 DEMUXes
`timescale 1ns/1ns
`include "demux1to4_2.v"

module demux1to4_2tb;
    reg I, S0, S1;
    wire Y0, Y1, Y2, Y3;
    
    demux1to4_2 uut(I, S0, S1, Y0, Y1, Y2, Y3);
    
    initial begin
        $dumpfile("demux1to4_2tb.vcd");
        $dumpvars(0, demux1to4_2tb);
        S1 = 1'b0; S0 = 1'b0; I = 1'b0; #10;
        S1 = 1'b0; S0 = 1'b0; I = 1'b1; #10;
        S1 = 1'b0; S0 = 1'b1; I = 1'b0; #10;
        S1 = 1'b0; S0 = 1'b1; I = 1'b1; #10;
        S1 = 1'b1; S0 = 1'b0; I = 1'b0; #10;
        S1 = 1'b1; S0 = 1'b0; I = 1'b1; #10;
        S1 = 1'b1; S0 = 1'b1; I = 1'b0; #10;
        S1 = 1'b1; S0 = 1'b1; I = 1'b1; #10;
        $finish;
    end
endmodule