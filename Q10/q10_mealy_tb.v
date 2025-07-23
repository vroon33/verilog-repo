// Module for Q10) Mealy machine testbench
`timescale 1ns/1ps
`include "q10_mealy.v"
module q10_mealy_tb;
    reg X, CLK, RST;
    wire Y;

    q10_mealy uut(Y, X, CLK, RST);

    always begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    initial begin
        $dumpfile("q10_mealy_tb.vcd");
        $dumpvars(0, q10_mealy_tb);

        X = 0; 
        RST = 1;
        force uut.curr_state = 2'b00;
        #10 RST = 0;
        release uut.curr_state;

        #10; X = 0; 
        #10; X = 1;
        #10; X = 1;
        #10; X = 0;
        #10; X = 0;
        #10; X = 1; 
        #10; X = 0; 
        #10; X = 0;

        $finish;
    end

    initial begin
        $monitor("Time = %0t, RST = %b, X = %b, Y = %b, State = %b", $time, RST, X, Y, uut.curr_state);
    end
endmodule