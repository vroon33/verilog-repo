// Testbench for problem2c.v
`timescale 1ns/1ns
`include "problem2c.v"

module problem2c_tb;
    reg A,B,C,D,E;
    wire Y;

    problem2c uut(A,B,C,D,E,Y);

    initial begin
        $dumpfile("problem2c.vcd");
        $dumpvars(0, problem2c_tb);

        {A,B,C,D,E} = 5'd00; #10;
        {A,B,C,D,E} = 5'd01; #10;
        {A,B,C,D,E} = 5'd02; #10;
        {A,B,C,D,E} = 5'd03; #10;
        {A,B,C,D,E} = 5'd04; #10;
        {A,B,C,D,E} = 5'd05; #10;
        {A,B,C,D,E} = 5'd06; #10;
        {A,B,C,D,E} = 5'd07; #10;
        {A,B,C,D,E} = 5'd08; #10;
        {A,B,C,D,E} = 5'd09; #10;
        {A,B,C,D,E} = 5'd10; #10;
        {A,B,C,D,E} = 5'd11; #10;
        {A,B,C,D,E} = 5'd12; #10;
        {A,B,C,D,E} = 5'd13; #10;
        {A,B,C,D,E} = 5'd14; #10;
        {A,B,C,D,E} = 5'd15; #10;
        {A,B,C,D,E} = 5'd16; #10;
        {A,B,C,D,E} = 5'd17; #10;
        {A,B,C,D,E} = 5'd18; #10;
        {A,B,C,D,E} = 5'd19; #10;
        {A,B,C,D,E} = 5'd20; #10;
        {A,B,C,D,E} = 5'd21; #10;
        {A,B,C,D,E} = 5'd22; #10;
        {A,B,C,D,E} = 5'd23; #10;
        {A,B,C,D,E} = 5'd24; #10;
        {A,B,C,D,E} = 5'd25; #10;
        {A,B,C,D,E} = 5'd26; #10;
        {A,B,C,D,E} = 5'd27; #10;
        {A,B,C,D,E} = 5'd28; #10;
        {A,B,C,D,E} = 5'd29; #10;
        {A,B,C,D,E} = 5'd30; #10;
        {A,B,C,D,E} = 5'd31; #10;

        $display("Test is Complete.");
        $finish;
    end
endmodule