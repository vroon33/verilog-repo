// Full Adder 1 bit using logic gates
// Assume variable Cin, in the testbench we tie it to 0
module fulladder1bit(A,B,Cin,S, Cout);
    input A,B,Cin;
    output S, Cout;

    assign S = (A ^ B) ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (A & Cin);

endmodule