// A 3-bit Serial Adder
`include "fulladder1bit.v"
`include "right_shift_register.v"

// module fulladder1bit(A,B,Cin,S, Cout);
//     input A,B,Cin;
//     output S, Cout;

//     assign S = (A ^ B) ^ Cin;
//     assign Cout = (A & B) | (B & Cin) | (A & Cin);
// endmodule

// module D_flipflop(D, CLK, Q, CLR);
//     input D, CLK, CLR;
//     output reg Q;
    
//     initial begin
//         Q = 1'b0;  
//     end

//     always @(negedge CLK or posedge CLR)
//     if (CLR)
//     begin
//         Q <= 1'b0; 
//     end
//     else
//     begin
//         Q <= D;
//     end
// endmodule

// module right_shift_register(data_in, clk, data_out, OutStream);
//     input data_in, clk;
//     output data_out;
//     output wire [2:0] OutStream;

    
//     wire Q1, Q2, Q3;
//     // Q3 is LSB, Q1 is MSB
//     assign OutStream[0] = Q3;
//     assign OutStream[1] = Q2;
//     assign OutStream[2] = Q1;
    
//     D_flipflop dff1(.D(data_in), .CLK(clk), .Q(Q1), .CLR(1'b0));
//     D_flipflop dff2(.D(Q1), .CLK(clk), .Q(Q2), .CLR(1'b0));
//     D_flipflop dff3(.D(Q2), .CLK(clk), .Q(Q3), .CLR(1'b0));
    
//     assign data_out = Q3;

// endmodule

module SerialAdder3bit(clk, reset, serial_input, sum_out, carry_out);

    input clk, reset, serial_input;
    output sum_out, carry_out;
    wire augend_out, addend_out;
    wire fa_sum, fa_carry;
    wire d_ff_out;
    wire [2:0] outB;
    wire [2:0] outA;

    right_shift_register augend_reg(.data_in(fa_sum),.clk(clk),.data_out(augend_out), .OutStream(outA)); 

    right_shift_register addend_reg(.data_in(serial_input),.clk(clk),.data_out(addend_out), .OutStream(outB));

    fulladder1bit fa(.A(augend_out),.B(addend_out),.Cin(d_ff_out),.S(fa_sum),.Cout(fa_carry));

    D_flipflop carry_dff(.D(fa_carry),.CLK(clk),.Q(d_ff_out),.CLR(reset));

    assign sum_out = fa_sum;
    assign carry_out = d_ff_out;

endmodule