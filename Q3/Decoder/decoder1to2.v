// Q3c) 1:2 Decoder using Logic Gates with enable input
module decoder1to2(A, Y0, Y1, E);
    input A, E;
    output Y0, Y1;

    assign Y0 = ~A & E;
    assign Y1 = A & E;

endmodule