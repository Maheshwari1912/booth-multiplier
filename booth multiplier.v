module booth_multiplier_4bit (
    input signed [3:0] A, B,
    output reg signed [7:0] P
);
    logic [7:0] Q, M, N;
    logic Q_1;
    logic [3:0] count;

    always @(A or B) begin
        A=8'd0;
        M={A, 4'd0};
        Q = {4'd0, B};
        Q_1=1'b0;
        count= 4'd4;
        while(count>0) begin
            case({Q[0],Q_1})
                2'b01: A=A+M;
                2'b10: A=A-M;
            endcase
            Q_1 = Q[0];
            Q = {A[0], Q[7:1]};
            A = {A[7], A[7:1]};
            count = count-1;
        end
        product = {A[7:0]};           
    end
endmodule
