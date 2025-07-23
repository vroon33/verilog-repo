// Testbench for problem2d
`timescale 1ns/1ns
`include "problem2d.v"

module problem2d_tb;
    reg A,B,C,D;
    wire Y;

    problem2d uut(A,B,C,D,Y);

    initial begin
        $dumpfile("problem2d.vcd");
        $dumpvars(0, problem2d_tb);

        {A,B,C,D} = 4'd00; #10;
        {A,B,C,D} = 4'd01; #10;
        {A,B,C,D} = 4'd02; #10;
        {A,B,C,D} = 4'd03; #10;
        {A,B,C,D} = 4'd04; #10;
        {A,B,C,D} = 4'd05; #10;
        {A,B,C,D} = 4'd06; #10;
        {A,B,C,D} = 4'd07; #10;
        {A,B,C,D} = 4'd08; #10;
        {A,B,C,D} = 4'd09; #10;
        {A,B,C,D} = 4'd10; #10;
        {A,B,C,D} = 4'd11; #10;
        {A,B,C,D} = 4'd12; #10;
        {A,B,C,D} = 4'd13; #10;
        {A,B,C,D} = 4'd14; #10;
        {A,B,C,D} = 4'd15; #10;

        $display("Test is Complete.");
        $finish;
    end
endmodule