`timescale 1ns/1ps
`include "UnivShiftReg4bit.v"

module UnivShiftReg4bit_tb;
    reg CLK, Clear_b, in_left, in_right;
    reg [1:0] s;
    reg [3:0] I;
    wire [3:0] A;

    UniversalShiftRegister uut (
        .CLK(CLK),
        .Clear_b(Clear_b),
        .in_left(in_left),
        .in_right(in_right),
        .s(s),
        .I(I),
        .A(A)
    );

    // Clock generation
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK; 
    end

    initial begin
        $dumpfile("UnivShiftReg4bit_tb.vcd");
        $dumpvars(0, UnivShiftReg4bit_tb);
        
        // Initialize inputs
        Clear_b = 1;
        s = 2'b00;
        I = 4'b0000;
        in_left = 0;
        in_right = 0;
        
        // Reset
        #10 Clear_b = 0;
        #10 Clear_b = 1;
        // A = 4'b0000

        // Parallel Load
        #10 s = 2'b11;
        I = 4'b1010;
        #10;
        // A = 4'b1010

        // Hold
        #10 s = 2'b00;
        I = 4'b0101; 
        #20;
        // A = 4'b1010 

        // Shift Right
        s = 2'b01;
        in_right = 1;
        #10;
        // A = 4'b1101
        #10; 
        // A = 4'b1110
        #10; 
        // A = 4'b1111
        #10; 
        // A = 4'b1111

        // Shift Left
        s = 2'b10;
        in_left = 0;
        #10;
        // A = 4'b1110
        #10;
        // A = 4'b1100
        #10;
        // A = 4'b1000
        #10;
        // A = 4'b0000

        // Parallel Load
        s = 2'b11;
        I = 4'b0011;
        #10;
        // A = 4'b0011

        // Hold
        s = 2'b00;
        #20;
        // A = 4'b0011 

        $finish;
    end

    initial begin
        $monitor("Time=%0t, Clear_b=%b, s=%b, I=%b, in_left=%b, in_right=%b, A=%b",
                 $time, Clear_b, s, I, in_left, in_right, A);
    end

endmodule