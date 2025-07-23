`timescale 1ns/1ns
`include "mux2to1.v"

module mux2to1_tb;
    reg A,B,S;

    wire Y;

    mux2to1 UUT(A,B,S,Y);

    initial begin
        $dumpfile("mux2to1.vcd");
        $dumpvars(0, mux2to1_tb);

        for(integer i = 0; i < 8; i++) begin
            {A, B, S} = i; #10;
        end

        $finish;
    end
endmodule