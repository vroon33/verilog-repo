// 4-bit UpDown Counter using T flip flops
module D_flipflop(D, CLK, Q, CLR);
    input D, CLK, CLR;
    output reg Q;
    
    initial begin
        Q = 1'b0;  
    end

    always @(negedge CLK or posedge CLR) 
    if(CLR)
    begin
        Q <= 1'b0;
    end
    else
    begin
        Q <= D;
    end
endmodule

module T_flipflop(T, CLK, Q, CLR);
    input T, CLK, CLR;
    output Q;
    wire D;
    
    assign D = T ^ Q;
    
    D_flipflop uut(D, CLK, Q, CLR);
endmodule

module UpDown4bit(CLK, UP, DOWN, RST, Q);
    input CLK, UP, DOWN, RST;
    output [3:0] Q;

    wire T0, T1, T2, T3;
    wire w1, w2, w3, w4, w5, w6, w7;
    assign w1 = DOWN & ~UP;
    assign w2 = (w1 & ~Q[0]);
    assign w3 = (Q[0] & UP);
    assign w4 = (w2 & ~Q[1]);
    assign w5 = (w3 & Q[1]);
    assign w6 = (w4 & ~Q[2]);
    assign w7 = (w5 & Q[2]);

    assign T0 = UP | w1;
    assign T1 = w2 | w3;
    assign T2 = w4 | w5;
    assign T3 = w6 | w7;

    T_flipflop uut0(T0, CLK, Q[0], RST);
    T_flipflop uut1(T1, CLK, Q[1], RST);
    T_flipflop uut2(T2, CLK, Q[2], RST);
    T_flipflop uut3(T3, CLK, Q[3], RST);
endmodule