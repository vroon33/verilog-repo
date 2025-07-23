// Q3b) 1:4 DEMUX Using Logic gates
module demux1to4(I, S0, S1, Y0, Y1, Y2, Y3);
    input I, S0, S1;
    output Y0, Y1, Y2, Y3;
    wire notS0 = ~S0;
    wire notS1 = ~S1;

    assign Y0 = I & notS1 & notS0;
    assign Y1 = I & notS1 & S0;
    assign Y2 = I & S1 & notS0;
    assign Y3 = I & S1 & S0;

endmodule