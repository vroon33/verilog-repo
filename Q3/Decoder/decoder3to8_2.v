// 3:8 Decoder using 2:4 Decoder and 1:2 Decoder
`include "decoder2to4.v"

module decoder3to8(A2, A1, A0, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);
    input A2, A1, A0;
    output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;


    decoder2to4 uut1(A1, A0, Y0, Y1, Y2, Y3, ~A2);
    decoder2to4 uut2(A1, A0, Y4, Y5, Y6, Y7, A2);
endmodule