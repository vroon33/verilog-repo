// Test bench for a 4:1 MUX using logic gates
`timescale 1ns/1ns
`include "mux4to1.v"

module mux4to1_tb;
    reg I1,I2,I3,I4,S1,S2;
    wire Y;

    mux4to1 uut(I1,I2,I3,I4,S1,S2,Y);

    initial begin
        $dumpfile("mux4to1.vcd");
        $dumpvars(0, mux4to1_tb);

        for(integer i = 0; i < 64; i++) begin
            {I1, I2, I3, I4, S1, S2} = i; #10;
        end

        $finish;
    end
endmodule