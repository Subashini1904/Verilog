module mealy_1011_non_overlap (
input clk,
input rst,
input x,
output reg z
);
reg [1:0] state, next_state;
parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10,
          S3 = 2'b11;
always @(*) begin
z = 0;
    case (state)
        S0: begin
            if (x) next_state = S1;
            else   next_state = S0;
        end

        S1: begin
            if (x) next_state = S1;
            else   next_state = S2;
        end

        S2: begin
            if (x) next_state = S3;
            else   next_state = S0;
        end

        S3: begin
            if (x) begin
                z = 1;             
                next_state = S0;    
            end
            else
                next_state = S2;
        end

        default: next_state = S0;
    endcase
end
always @(posedge clk or posedge rst) begin
    if (rst)
        state <= S0;
    else
        state <= next_state;
end
endmodule


//OUTPUT//
T=0 x=0 z=0
T=20 x=1 z=0
T=30 x=0 z=0
T=40 x=1 z=0
T=45 x=1 z=1
T=55 x=1 z=0
T=60 x=0 z=0
T=70 x=1 z=0
