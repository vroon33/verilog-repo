// 1:8 DEMUX using 1:4 DEMUXes
`include "demux1to4.v"

module demux1to8_2(I, S0, S1, S2, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);

    input I, S0, S1, S2;
    output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;
    wire Ymid1, Ymid2, Ymid3, Ymid4;
    wire Ytemp1, Ytemp2, Ytemp3, Ytemp4, Ytemp5, Ytemp6, Ytemp7, Ytemp8;

    demux1to4 uut0(I, S1, S2, Ymid1, Ymid2, Ymid3, Ymid4);
    demux1to4 uut1(Ymid1, S0, 1'b0, Y0, Y1, Ytemp1, Ytemp2);
    demux1to4 uut2(Ymid2, S0, 1'b0, Y2, Y3, Ytemp3, Ytemp4);
    demux1to4 uut3(Ymid3, S0, 1'b0, Y4, Y5, Ytemp5, Ytemp6);
    demux1to4 uut4(Ymid4, S0, 1'b0, Y6, Y7, Ytemp7, Ytemp8);    

endmodule