// Q3c) 2:4 Decoder using Logic Gates with the enable input
module decoder2to4(A1, A0, Y0, Y1, Y2, Y3, E);
    input A1, A0, E;
    output Y0, Y1, Y2, Y3;

    assign Y0 = ~A1 & ~A0 & E;
    assign Y1 = ~A1 & A0 & E;
    assign Y2 = A1 & ~A0 & E;
    assign Y3 = A1 & A0 & E;

endmodule