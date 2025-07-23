// Test bench for a 8:1 MUX using logic gates
`timescale 1ns/1ns
`include "mux8to1.v"

module mux8to1_tb;
    reg I0,I1,I2,I3,I4,I5,I6,I7,S1,S2,S3;
    wire Y;

    mux8to1 uut(I0,I1,I2,I3,I4,I5,I6,I7,S1,S2,S3,Y);

    initial begin
        $dumpfile("mux8to1.vcd");
        $dumpvars(0, mux8to1_tb);

        for(integer i = 0; i < 2000; i++) begin
            {I7, I6, I5, I4, I3, I2, I1, I0, S1, S2, S3}  = i; #10;
        end

        $finish;
    end
endmodule