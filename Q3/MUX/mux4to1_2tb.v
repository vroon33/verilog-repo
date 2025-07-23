// Testbench for a 4:1 MUX using 2:1 MUX
`timescale 1ns/1ns
`include "mux4to1_2.v"

module mux4to1_2tb;
    reg A,B,C,D,S1,S0;

    wire Y;

    mux4to1_2 UUT(Y,A,B,C,D,S1,S0);

    initial begin
        $dumpfile("mux4to1_2.vcd");
        $dumpvars(0, mux4to1_2tb);

        for(integer i = 0; i < 64; i++) begin
            {A, B, C, D, S1, S0} = i; #10;
        end

        $finish;
    end
endmodule