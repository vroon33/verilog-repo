// JK Flip flop using D flip flop\
`include "D_flipflop.v"
module JK_flipflop(J, K, CLK, Q, CLR);
    input J, K, CLK, CLR;
    wire D;
    output Q;

    assign D = (J & ~Q) | (~K & Q);

    D_flipflop uut(D, CLK, Q, CLR);
endmodule