// T-flipflop
`include "D_flipflop.v"
module T_flipflop(T, CLK, Q, CLR);
    input T, CLK, CLR;
    wire D;
    output Q;

    assign D = T ^ Q;

    D_flipflop uut(D, CLK, Q, CLR);
endmodule