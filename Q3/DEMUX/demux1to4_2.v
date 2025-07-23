// Q3b) 1:4 DEMUX using 1:2 DEMUXes
`include "demux1to2.v"

module demux1to4_2(I, S0, S1, Y0, Y1, Y2, Y3);
    input I, S0, S1;
    output Y0, Y1, Y2, Y3;
    wire Ymid1, Ymid2;
    wire notS0 = ~S0;
    wire notS1 = ~S1;

    demux1to2 uut0(I, S1, Ymid1, Ymid2);
    demux1to2 uut1(Ymid1, S0, Y0, Y1);
    demux1to2 uut2(Ymid2, S0, Y2, Y3);

endmodule