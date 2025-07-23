// Testbench for Exercise 9(b) from Verilog Practice Sheet
`timescale 1ns/1ns
`include "Exercise9_b.v"

module Exercise9_tb;
    reg CLK, CLR;
    wire A, B;
    
    Circuit uut(A, B, CLK, CLR);

    always begin
        forever #5 CLK = ~CLK;
    end

    initial begin
        $dumpfile("Exercise9_btb.vcd");
        $dumpvars(0, Exercise9_tb);

        CLK = 0;
        CLR = 1;
        #10 CLR = 0;

        #200 $finish;
    end

    initial begin
        $monitor("Time = %0t, A = %b, B = %b", $time, A, B);
    end

endmodule

