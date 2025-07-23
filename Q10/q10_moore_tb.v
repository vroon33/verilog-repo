// Testbench for q10 Moore model
`timescale 1ns / 1ns
`include "q10_moore.v"

module q10_moore_tb;
    reg X, CLK, RST;
    wire Y;

    q10_moore uut(Y, X, CLK, RST);

    always begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    initial begin
        $dumpfile("q10_moore_tb.vcd");
        $dumpvars(0, q10_moore_tb);

        X = 0;
        RST = 1;
        force uut.curr_state = 2'b00;
        #10 RST = 0;
        release uut.curr_state;


        #10 X = 1;
        #10 X = 0;
        #10 X = 1;
        #10 X = 1;
        #10 X = 0;
        #10 X = 0;
        #10 X = 1;
        #10 X = 0;

        $finish;
    end

    always @(posedge CLK) begin
        $display("X=%b, Y=%b", X, Y);
    end
endmodule