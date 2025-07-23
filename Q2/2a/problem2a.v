// Q2a: Y = AB + CD using NAND gates
module problem2a(A, B, C, D, Y);
    input A, B, C, D;
    output Y;
    wire andAB, andCD, y1, y2;

    assign nandAB = ~(A & B);
    assign nandCD = ~(C & D);
    assign Y = ~(nandAB & nandCD);
    
endmodule