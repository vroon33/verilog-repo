// Exercise 9(b) from Verilog Practice Sheet

// D-flipflop (positive edge triggered)
module D_flipflop(D, CLK, Q, CLR);
    input D, CLK, CLR;
    output reg Q;
    
    initial begin
        Q = 1'b0;  
    end

    always @(posedge CLK or posedge CLR)
    if(CLR)
    begin
        Q <= 1'b0;
    end
    else
    begin
        Q <= D;
    end
endmodule

// T-flipflop (positive edge triggered), since D-flipflop is.
module T_flipflop(T, CLK, Q, CLR);
    input T, CLK, CLR;
    wire D;
    output Q;

    assign D = T ^ Q;

    D_flipflop uut(D, CLK, Q, CLR);
endmodule

// Module of the given circuit
module Circuit(A, B, CLK, CLR);
    input CLK, CLR;
    output A, B;

    wire T_A, T_B;

    assign T_A = A | B;
    assign T_B = (~A) | B;

    T_flipflop u1(T_A, CLK, A, CLR);
    T_flipflop u2(T_B, CLK, B, CLR);
endmodule