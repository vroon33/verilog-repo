`timescale 1ns / 1ps
`include "SerialAdder3bit.v"
module SerialAdder3bit_tb;

    reg clk;
    reg reset;
    reg serial_input;

    wire sum_out;
    wire carry_out;

    SerialAdder3bit uut (
        .clk(clk), 
        .reset(reset), 
        .serial_input(serial_input), 
        .sum_out(sum_out), 
        .carry_out(carry_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    reg [2:0] A, B;
    integer i;

    initial begin

        $dumpfile("SerialAdder3bit_tb.vcd");
        $dumpvars(1, uut);

        reset = 1;
        serial_input = 0;
        #10;
        reset = 0;
        
        A = 3'b010;
        B = 3'b011;
        
        for (i = 0; i < 3; i = i + 1) begin
            serial_input = A[i];
            #10;
        end
        
        $display("A loaded into addend register");
        for (i = 0; i < 3; i = i + 1) begin
            serial_input = B[i];
            #10;
        end
        
        $display("B loaded into addend register");
        for (i = 0; i < 3; i = i + 1) begin
            serial_input = 0;
            #10;
        end
        
        $finish;
    end

    always @(negedge clk) begin
        $display("serial_input=%b, sum_out=%b, carry_out=%b", serial_input, sum_out, carry_out);
    end

endmodule