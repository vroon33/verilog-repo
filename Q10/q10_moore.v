// Q.10) from the Verilog Practice Sheet, Moore model FSM
// state model behaviour

module q10_moore(Y, X, CLK, RST);
    input X, CLK, RST;
    output reg Y;

    parameter STATE_A = 2'b00, STATE_B = 2'b01, STATE_C = 2'b10, STATE_D = 2'b11;
    reg [1:0] curr_state, next_state;

    always @(posedge CLK or posedge RST) begin
        if (RST)
            curr_state <= STATE_A;
        else
            curr_state <= next_state;
    end

    always @(*) begin
        case (curr_state)
            STATE_A: begin next_state = X ? STATE_C : STATE_B; Y = 1'b0; end
            STATE_B: begin next_state = X ? STATE_D : STATE_C; Y = 1'b1; end
            STATE_C: begin next_state = X ? STATE_D : STATE_B; Y = 1'b1; end
            STATE_D: begin next_state = X ? STATE_A : STATE_C; Y = 1'b0; end
            default: next_state = STATE_A;
        endcase
    end

endmodule