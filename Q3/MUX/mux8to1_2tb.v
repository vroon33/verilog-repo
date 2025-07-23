`timescale 1ns/1ns
`include "mux8to1_2.v"

module mux8to1_2tb;
    reg S0,S1,S2;
    reg I0,I1,I2,I3,I4,I5,I6,I7;
    wire Y;

    mux8to1_2 UUT(Y,S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7);

    initial begin
        $dumpfile("mux8to1_2.vcd");
        $dumpvars(0, mux8to1_2tb);

        for(integer i = 0; i < 2000; i++) begin
            {I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2} = i; #10;
        end

        $finish;
    end
endmodule