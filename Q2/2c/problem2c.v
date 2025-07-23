// Q2c. Y=((A+B’)(CD + E))’
// Implementing AND using NAND gates and OR using NOR Gates, NOT using NAND gates
module problem2c(A,B,C,D,E, Y);
    input A,B,C,D,E;
    output Y;
    wire notB, orABcomp, andCD, orCDE;

    assign notB = ~(B & B);
    assign orABcomp = ~(~(A | notB) | ~(A | notB));
    assign andCD = ~(~(C & D) & ~(C & D));
    assign orCDE = ~(~(andCD | E) | ~(andCD | E));
    assign Y = ~(orABcomp & orCDE);
endmodule