// 4:2 Decoder using 1:2 Decoder
`include "decoder1to2.v"

module decoder2to4_2(A1, A0, Y0, Y1, Y2, Y3);
    input A1, A0;
    output Y0, Y1, Y2, Y3;

    decoder1to2 uut1(A0, Y0, Y1, ~A1);
    decoder1to2 uut2(A0, Y2, Y3, A1);

endmodule