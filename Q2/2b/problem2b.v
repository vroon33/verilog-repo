// Q2b: Y = (ABC + DE)F 
// Implementing AND using NAND gates and OR using NOR Gates, NOT using NAND gates
module problem2b(A, B, C, D, E, F, Y);
    input A, B, C, D, E, F;
    output Y;
    wire andABC, andCD, y1, y2;
    assign andABC = ~(~(A & B & C) & ~(A & B & C));
    
    assign andDE = ~(~(D & E) & ~(D & E));
    assign orABCDE = ~(~(andABC | andDE) | ~(andABC | andDE));

    assign Y = ~(~(orABCDE & F) & ~(orABCDE & F));
    
endmodule