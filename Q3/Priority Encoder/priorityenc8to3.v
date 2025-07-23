// Priority Encoder 8 to 3 using logic gates, and enable input
module priorityenc8to3(D0, D1, D2, D3, D4, D5, D6, D7, Y0, Y1, Y2, V, E);
    input D0, D1, D2, D3, D4, D5, D6, D7, E;
    output Y0, Y1, Y2, V;

    wire D7_1, D7_2, D7_3, D6_1, D6_2, D5_1, D5_2, D4_1, D4_2, D3_1, D3_2, D2_1, D2_2, D1_1, D1_2, V1;

    assign D7_1 = (D7 & E);
    assign D7_2 = ~D7_1;
    assign D7_3 = ~D7_2;

    assign D6_1 = ~(D6 & E & D7_2);
    assign D6_2 = ~D6_1;

    assign D5_1 = ~(D5 & E & D7_2 & D6_1);
    assign D5_2 = ~D5_1;

    assign D4_1 = ~(E & D7_2 & D6_1 & D5_1 & D4);
    assign D4_2 = ~D4_1;

    assign D3_1 = ~(E & D7_2 & D6_1 & D5_1 & D4_1 & D3);
    assign D3_2 = ~D3_1;

    assign D2_1 = ~(E & D7_2 & D6_1 & D5_1 & D4_1 & D3_1 & D2);
    assign D2_2 = ~D2_1;

    assign D1_1 = ~(E & D7_2 & D6_1 & D5_1 & D4_1 & D3_1 & D2_1 & D1);
    assign D1_2 = ~D1_1;

    assign V1 = D7 | D6 | D5 | D4 | D3 | D2 | D1 | D0;
    assign V = V1 & E;

    assign Y2 = D7_3 | D6_2 | D5_2 | D4_2;
    assign Y1 = D7_3 | D6_2 | D3_2 | D2_2;
    assign Y0 = D7_3 | D5_2 | D3_2 | D1_2; 

endmodule