// Exercise 9 (a) from Verilog Practice Sheet

// D-flipflop (posiitve edge triggered)
module D_flipflop(D, CLK, Q);
    input D, CLK;
    output reg Q;
    
    initial begin
        Q = 1'b0;  
    end

    always @(posedge CLK)
    begin
        Q <= D;
    end
endmodule

module Circuit(X, Y, CLK, Z, A, B);
    input X, Y, CLK;
    output Z, A, B; 

    wire A_next, B_next;
    assign A_next = X & ((~Y) | B);
    assign B_next = X & ((~B) | A);
    
    D_flipflop u1 (A_next, CLK, A);
    D_flipflop u2 (B_next, CLK, B);

    assign Z = A;
endmodule
