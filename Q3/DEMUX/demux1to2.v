// Q3b) 1:2 DEMUX Using Logic gates
module demux1to2(I, S0, Y0, Y1);
    input I, S0;
    output Y0, Y1;
    wire notS0 = ~S0;
    assign Y0 = I & notS0;
    assign Y1 = I & S0;

endmodule