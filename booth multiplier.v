module booth_multiplier_4bit (
    input signed [3:0] A, B,
    output reg signed [7:0] product
);
    reg [7:0] Q, M, N;
    reg Q_1;
    reg [3:0] count;

    always @(A or B) begin
        N=8'd0;
        M={A, 4'd0};
        Q = {4'd0, B};
        Q_1=1'b0;
        count= 4'd4;
        while(count>0) begin
            case({Q[0],Q_1})
                2'b01: N=N+M;
                2'b10: N=N-M;
            endcase
            Q_1 = Q[0];
            Q = {N[0], Q[7:1]};
            N = {N[7], N[7:1]};
            count = count-1;
        end
        product = {N[7:0]};           
    end
endmodule
