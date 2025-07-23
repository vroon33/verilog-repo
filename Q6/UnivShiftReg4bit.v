// Universal Shift Register (4-bit)

// 4:1 MUX using logic gates
module mux4to1(I1,I2,I3,I4,S1,S2,Y);
    input I1,I2,I3,I4,S1,S2;
    output Y;

    assign Y = (I1 & ~S2 & ~S1) | (I2 & ~S2 & S1) | (I3 & S2 & ~S1) | (I4 & S2 & S1);
endmodule

// D-flip-flop (positive edge triggered)
module D_flipflop(D, CLK, Q, CLR);
    input D, CLK, CLR;
    output reg Q;
    
    initial begin
        Q = 1'b0;  
    end

    always @(posedge CLK or posedge CLR)
    if (CLR)
    begin
        Q <= 1'b0;
    end
    else
    begin
        Q <= D;
    end
endmodule

// Universal Shift Register (4-bit)
module UniversalShiftRegister(CLK, Clear_b, in_left, in_right, s, I, A);
    input wire CLK, Clear_b, in_left, in_right;
    input wire [1:0] s;
    input wire [3:0] I;
    output wire [3:0] A;

    wire [3:0] mux_out;

    D_flipflop dff0 (.D(mux_out[0]), .CLK(CLK), .Q(A[0]), .CLR(~Clear_b));
    D_flipflop dff1 (.D(mux_out[1]), .CLK(CLK), .Q(A[1]), .CLR(~Clear_b));
    D_flipflop dff2 (.D(mux_out[2]), .CLK(CLK), .Q(A[2]), .CLR(~Clear_b));
    D_flipflop dff3 (.D(mux_out[3]), .CLK(CLK), .Q(A[3]), .CLR(~Clear_b));

    mux4to1 mux0 (.I1(A[0]), .I2(A[1]), .I3(in_left), .I4(I[0]), .S1(s[0]), .S2(s[1]), .Y(mux_out[0]));
    mux4to1 mux1 (.I1(A[1]), .I2(A[2]), .I3(A[0]), .I4(I[1]), .S1(s[0]), .S2(s[1]), .Y(mux_out[1]));
    mux4to1 mux2 (.I1(A[2]), .I2(A[3]), .I3(A[1]), .I4(I[2]), .S1(s[0]), .S2(s[1]), .Y(mux_out[2]));
    mux4to1 mux3 (.I1(A[3]), .I2(in_right), .I3(A[2]), .I4(I[3]), .S1(s[0]), .S2(s[1]), .Y(mux_out[3]));

endmodule