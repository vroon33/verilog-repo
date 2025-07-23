// Q2c. F(A,B,C,D) = product of Maxterms(1,3,5,7,13,15)
// Y = (A + D')(B' + D') = AB' + D'
// Implementing AND using NAND gates and OR using NOR Gates, NOT using NAND gates
module problem2d(A,B,C,D,Y);
    input A,B,C,D;
    output Y;

    wire notD, notB, andAcompB;

    assign notD = ~(D & D);
    assign notB = ~(B & B);
    assign andAcompB = ~(~(A & notB) & ~(A & notB));

    assign Y = ~(~(andAcompB | notD) | ~(andAcompB | notD));
    
endmodule