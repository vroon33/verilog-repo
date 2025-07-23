// RS flip flop (positive edge triggered)
module RS_flipflop(R, S, CLK, Q, notQ);
    input R, S, CLK;
    output Q, notQ;

    wire notR, notS;
    nand n1(notR, R, CLK);
    nand n2(notS, S, CLK);
    nand n3(Q, notS, notQ);
    nand n4(notQ, notR, Q);
    
endmodule