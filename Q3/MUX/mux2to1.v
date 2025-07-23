// 2:1 Multiplexer using Logic gates
module mux2to1(A,B,S,Y);
    input A,B,S;
    output Y;

    assign Y = (A & ~S) | (B & S);
    
endmodule