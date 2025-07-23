// 4 bit Ripple Counter using T flip flops
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

module RippleCounter4bit(CLK, A, CLR);
    input CLK, CLR;
    output [3:0] A;
    
    wire [3:0] T;
    assign T = 4'b1111; 
    
    T_flipflop uut0(T[0], CLK, A[0], CLR);
    T_flipflop uut1(T[1], A[0], A[1], CLR);
    T_flipflop uut2(T[2], A[1], A[2], CLR);
    T_flipflop uut3(T[3], A[2], A[3], CLR);
endmodule
