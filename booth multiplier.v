module booth_multiplier_4bit (
    input logic [3:0] A, B,
    output logic [7:0] P
);
    logic [4:0] Q, M;
    logic Q_1;
    logic [7:0] Acc;
    integer i;

    always_comb begin
        Q = {B, 1'b0}; // Extend B with an extra bit
        M = A;
        Acc = 8'b0;

        for (i = 0; i < 4; i = i + 1) begin
            case ({Q[0], Q_1})
                2'b01: Acc = Acc + {M, 4'b0};  // Add A shifted
                2'b10: Acc = Acc - {M, 4'b0};  // Subtract A shifted
                default: Acc = Acc;            // No operation
            endcase
            Q_1 = Q[0];
            Q = {Acc[0], Q[4:1]}; // Shift right
            Acc = Acc >> 1;
        end

        P = Acc; // Final product
    end
endmodule
