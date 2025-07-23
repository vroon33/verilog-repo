// Q2c. F(A,B,C,D) = sum of minterms(0,6,8,13,14) with don't cares(2,4,10)
// Y = CD' + B'D' + ABC'D
// Implementing AND using NAND gates and OR using NOR Gates, NOT using NAND gates
module problem2e(A,B,C,D,Y);
    input A,B,C,D;
    output Y;

    wire notD, notC, notB, andCcompD, andABCcompD, Y;

    assign notD = ~(D & D);
    assign notC = ~(C & C);
    assign notB = ~(B & B);
    assign andCcompD = ~(~(C & notD) & ~(C & notD));
    assign andBcompDcomp = ~(~(notB & notD) & ~(notB & notD));
    assign andABCcompD = ~(~(A & B & C & notD) & ~(A & B & C & notD));

    assign Y = ~(~(andCcompD | andBcompDcomp | andABCcompD) | ~(andCcompD | andBcompDcomp | andABCcompD));

endmodule