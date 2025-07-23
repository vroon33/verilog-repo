// 4 Bit Synchronous Counter using T flip flops
`include "T_flipflop.v"
module syncCounter4bit(CLK, RST, Q);
    input CLK, RST;
    output [3:0] Q;

    wire T0, T1, T2, T3;
    assign T0 = 1'b1;
    assign T1 = Q[0];
    assign T2 = Q[0] & Q[1];
    assign T3 = Q[0] & Q[1] & Q[2];

    T_flipflop uut0(T0, CLK, Q[0], RST);
    T_flipflop uut1(T1, CLK, Q[1], RST);
    T_flipflop uut2(T2, CLK, Q[2], RST);
    T_flipflop uut3(T3, CLK, Q[3], RST);
endmodule