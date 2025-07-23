// Testbench for problem2b.v
`timescale 1ns/1ns
`include "problem2b.v"

module problem2b_tb;
    reg A,B,C,D,E,F;
    wire Y;

    problem2b uut(A,B,C,D,E,F,Y);

    initial begin
        $dumpfile("problem2b_tb.vcd");
        $dumpvars(0, problem2b_tb);

        {A, B, C, D, E, F} = 6'd01; #20;
        {A, B, C, D, E, F} = 6'd06; #20;
        {A, B, C, D, E, F} = 6'd10; #20;
        {A, B, C, D, E, F} = 6'd14; #20;
        {A, B, C, D, E, F} = 6'd18; #20;
        {A, B, C, D, E, F} = 6'd22; #20;
        {A, B, C, D, E, F} = 6'b111001; #20;
        {A, B, C, D, E, F} = 6'd26; #20;
        {A, B, C, D, E, F} = 6'd30; #20;
        {A, B, C, D, E, F} = 6'd34; #20;
        {A, B, C, D, E, F} = 6'b101111; #20;
        {A, B, C, D, E, F} = 6'd40; #20;
        {A, B, C, D, E, F} = 6'd48; #20;
        {A, B, C, D, E, F} = 6'd56; #20;
        {A, B, C, D, E, F} = 6'd62; #20;

        $display("Test complete.");
        $finish;
    end
endmodule