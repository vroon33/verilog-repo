// Module for Q.11) in Verilog Practice Sheet
module FSM_TwoDetector(CLK, RESET, ONE, ZERO, OUT);
    input CLK, RESET, ONE, ZERO;
    output reg OUT;

    reg [3:0] curr_state, next_state;
    reg prev_ONE, prev_ZERO;
    wire edge_ONE, edge_ZERO;

    parameter S00 = 4'b0000, S01 = 4'b0001, S02 = 4'b0010, S10 = 4'b0011, S11 = 4'b0100, S12 = 4'b0101, S20 = 4'b0110, S21 = 4'b0111, S22 = 4'b1000;
    
    always @(posedge CLK or posedge RESET)
    begin
        if (RESET)
            curr_state <= S00;
        else
            curr_state <= next_state;
    end

    always @(posedge CLK)
    begin
        prev_ONE <= RESET ? 0 : ONE;
        prev_ZERO <= RESET ? 0 : ZERO;
    end
    assign edge_ONE = ~prev_ONE & ONE;
    assign edge_ZERO = ~prev_ZERO & ZERO;

    always @(*)
    begin
        next_state = curr_state;
        case(curr_state)
            S00 : begin
                if (edge_ZERO) next_state = S01;
                else if (edge_ONE) next_state = S10;
                end
            S01 : begin
                if (edge_ZERO) next_state = S02;
                else if (edge_ONE) next_state = S11;
                end
            S02 : begin
                if (edge_ZERO) next_state = S02;
                else if (edge_ONE) next_state = S12;
                end
            S10 : begin
                if (edge_ZERO) next_state = S11;
                else if (edge_ONE) next_state = S20;
                end
            S11 : begin
                if (edge_ZERO) next_state = S12;
                else if (edge_ONE) next_state = S21;
                end
            S12 : begin
                if (edge_ZERO) next_state = S12;
                else if (edge_ONE) next_state = S22;
                end
            S20 : begin
                if (edge_ZERO) next_state = S21;
                else if (edge_ONE) next_state = S20;
                end
            S21 : begin
                if (edge_ZERO) next_state = S22;
                else if (edge_ONE) next_state = S21;
                end
            S22 : begin
                if (edge_ZERO) next_state = S22;
                else if (edge_ONE) next_state = S22;
                end
        endcase
    end

    always @(posedge CLK or posedge RESET)
    begin
        if (RESET)
            OUT <= 1'b0;
        else
            OUT <= (next_state == S22);
    end

endmodule