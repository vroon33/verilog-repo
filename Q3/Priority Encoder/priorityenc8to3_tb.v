// Test bench for 8-to-3 priority encoder
`timescale 1ns/1ns
`include "priorityenc8to3.v"

module priorityenc8to3_tb;
    reg D0, D1, D2, D3, D4, D5, D6, D7, E;
    wire Y0, Y1, Y2, V;

    priorityenc8to3 uut(D0, D1, D2, D3, D4, D5, D6, D7, Y0, Y1, Y2, V, E);

    initial begin
        $dumpfile("priorityenc8to3_tb.vcd");
        $dumpvars(0, priorityenc8to3_tb);

        for(integer i = 0; i < 512; i++) begin
            {E, D7, D6, D5, D4, D3, D2, D1, D0} = i; #10;
        end

        $finish;
    end
endmodule