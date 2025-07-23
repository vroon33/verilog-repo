// Testbench for FSM_TwoDetector.v
`timescale 1ns/1ps
`include "FSM_TwoDetector.v"

module FSM_TwoDetector_tb;
    reg CLK, RESET, ONE, ZERO;
    wire OUT;

    always begin
       forever #5 CLK = ~CLK;
    end
    FSM_TwoDetector uut(CLK, RESET, ONE, ZERO, OUT);


    initial begin
        $dumpfile("FSM_TwoDetector_tb.vcd");
        $dumpvars(0, FSM_TwoDetector_tb);
        
        CLK = 0; RESET = 1; ONE = 0; ZERO = 0;
        #10 RESET = 0;
        #10 ONE = 1;
        #10 ONE = 1;
        #10 ONE = 1;
        #10 ONE = 0;
        #10 ZERO = 1;
        #10 ZERO = 1;
        #10 ZERO = 1;
        #10 ZERO = 1;
        #10 ZERO = 0;
        #10 ONE = 1;
        #10 ONE = 0;
        #10 ZERO = 1;
        #10 ZERO = 0;
        #10 ONE = 1;
        #10 ONE = 0;
        #10 ZERO = 1;
        #10 ZERO = 0;
        #10 ONE = 1;
        #10 ONE = 0;

        // Case 2
        #10 RESET = 1;
        #10 RESET = 0;
        #10 ONE = 1;
        #10 ONE = 0;
        #10 ZERO = 1;
        #10 ZERO = 0;
        #10 ONE = 1;
        #10 ONE = 0;
        #10 ZERO = 1;
        #10 ZERO = 0;
        #10 $finish;
    end
endmodule