// Q1. Basic logic gates
module problem1 (A, B, C, D, E, F, G, H, I);
    input A;
    input B;
    output C, D, E, F, G, H, I;

    assign I = ~A;   // NOT
    assign C = A & B;  // AND
    assign D = A | B;  // OR
    assign E = ~(A | B);  // NOR
    assign F = ~(A & B);  // NAND
    assign G = A ^ B;  // XOR
    assign H = ~(A ^ B);  // XNOR

endmodule