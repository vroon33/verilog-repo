// Q3b) 1:4 DEMUX Using Logic gates
module demux1to8(I, S0, S1, S2, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);
    input I, S0, S1, S2;
    output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;
    wire notS0 = ~S0;
    wire notS1 = ~S1;
    wire notS2 = ~S2;

    assign Y0 = I & notS2 & notS1 & notS0;
    assign Y1 = I & notS2 & notS1 & S0;
    assign Y2 = I & notS2 & S1 & notS0;
    assign Y3 = I & notS2 & S1 & S0;
    assign Y4 = I & S2 & notS1 & notS0;
    assign Y5 = I & S2 & notS1 & S0;
    assign Y6 = I & S2 & S1 & notS0;
    assign Y7 = I & S2 & S1 & S0;

endmodule