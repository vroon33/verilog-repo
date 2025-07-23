// 8:1 MUX using logic gates
module mux8to1(I0,I1,I2,I3,I4,I5,I6,I7, S1,S2,S3, Y);
    input I0,I1,I2,I3,I4,I5,I6,I7,S1,S2,S3;
    output Y;

    assign Y = (I0 & ~S3 & ~S2 & ~S1) | (I1 & ~S3 & ~S2 & S1) | (I2 & ~S3 & S2 & ~S1) | (I3 & ~S3 & S2 & S1) | (I4 & S3 & ~S2 & ~S1) | (I5 & S3 & ~S2 & S1) | (I6 & S3 & S2 & ~S1) | (I7 & S3 & S2 & S1);
endmodule