// 3:8 Decoder using Logic Gates with enable input
module decoder3to8 (A2, A1, A0, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7, E);
    input A2, A1, A0, E;
    output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;

    assign Y0 = ~A2 & ~A1 & ~A0 & E;
    assign Y1 = ~A2 & ~A1 & A0 & E;
    assign Y2 = ~A2 & A1 & ~A0 & E;
    assign Y3 = ~A2 & A1 & A0 & E;
    assign Y4 = A2 & ~A1 & ~A0 & E;
    assign Y5 = A2 & ~A1 & A0 & E;
    assign Y6 = A2 & A1 & ~A0 & E;
    assign Y7 = A2 & A1 & A0 & E;
endmodule