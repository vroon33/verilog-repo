// Testbench for Exercise 9(a) from Verilog Practice Sheet
`timescale 1ns/1ns
`include "Exercise9_a.v" 

module Exercise9_atb;
    reg X, Y, CLK;
    wire Z, A, B;

    Circuit uut (X, Y, CLK, Z, A, B);
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    initial begin
        $dumpfile("Exercise9_atb.vcd");
        $dumpvars(0, Exercise9_atb);
        X = 0; Y = 0;
        #20;
        for (integer i = 0; i < 4; i = i + 1) begin
            {X, Y} = i;
            #20;
        end
        $finish;
    end

    initial begin
        $monitor("Time = %0t, X = %b, Y = %b, A = %b, B = %b, Z = %b", $time, X, Y, A, B, Z);
    end
endmodule