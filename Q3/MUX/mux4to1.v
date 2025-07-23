// 4:1 MUX using logic gates
module mux4to1(I1,I2,I3,I4,S1,S2,Y);
    input I1,I2,I3,I4,S1,S2;
    output Y;

    assign Y = (I1 & ~S2 & ~S1) | (I2 & ~S2 & S1) | (I3 & S2 & ~S1) | (I4 & S2 & S1);
endmodule