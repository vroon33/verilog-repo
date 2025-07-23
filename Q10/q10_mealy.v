module q10_mealy(Y, X, CLK, RST);  
    input X, CLK, RST;
    output reg Y;

    parameter STATE_A = 2'b00, STATE_B = 2'b01, STATE_C = 2'b10, STATE_D = 2'b11;
    reg [1:0] curr_state, next_state;

    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            curr_state = STATE_A;
        end
        else begin
            curr_state <= next_state;
        end
    end

    always @(*) begin
        case (curr_state)
            STATE_A: begin
                next_state = X ? STATE_C : STATE_B;
                Y = X ? 1'b0 : 1'b1;
            end 
            STATE_B: begin 
                next_state = X ? STATE_D : STATE_C;
                Y = X ? 1'b1 : 1'b0;
            end
            STATE_C: begin
                next_state = X ? STATE_D : STATE_B;
                Y = X ? 1'b1 : 1'b0;
            end  
            STATE_D: begin
                next_state = X ? STATE_A : STATE_C;
                Y = X ? 1'b0 : 1'b1;
            end  
            default: begin
                next_state = STATE_A;
            end 
        endcase
    end
endmodule