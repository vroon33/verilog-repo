// Q5 D-flip-flop (negative edge triggered)
module D_flipflop(D, CLK, Q, CLR);
    input D, CLK, CLR;
    output reg Q;
    
    initial begin
        Q = 1'b0;  
    end

    always @(negedge CLK or posedge CLR)
    if (CLR)
    begin
        Q <= 1'b0;
    end
    else
    begin
        Q <= D;
    end
endmodule
