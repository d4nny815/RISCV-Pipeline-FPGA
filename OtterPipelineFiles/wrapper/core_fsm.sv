module CPU_FSM (
    input clk,
    input rst,
    output logic CPU_reset
    );

typedef enum logic { 
    STARTUP,
    RUNNING
} state_type;
state_type PS, NS;

always_ff @(posedge clk) begin
    if (rst) begin
        PS <= STARTUP;
    end else begin
        PS <= NS;
    end
end

always_comb begin
    CPU_reset = 1'b0;
    case (PS)
        STARTUP: begin
            CPU_reset = 1'b1;
            NS = RUNNING;
        end
        RUNNING: begin
            CPU_reset = 1'b0;
            NS = RUNNING;
        end
        default: begin
            NS = STARTUP;
        end
    endcase
end

endmodule