module moore_1011_overlap (
input clk,
input rst,
input x,
output reg z
);
reg [2:0] state, next_state;
parameter S0 = 3'b000,
          S1 = 3'b001,
          S2 = 3'b010,
          S3 = 3'b011,
          S4 = 3'b100;  
always @(*) begin
    case (state)
        S0: next_state = x ? S1 : S0;
        S1: next_state = x ? S1 : S2;
        S2: next_state = x ? S3 : S0;
        S3: next_state = x ? S4 : S2;
        S4: next_state = x ? S1 : S2; 
        default: next_state = S0;
    endcase
end
always @(posedge clk or posedge rst) begin
    if (rst)
        state <= S0;
    else
        state <= next_state;
end
always @(*) begin
    if (state == S4)
        z = 1;
    else
        z = 0;
end
endmodule


//OUTPUT//
T=0 x=0 z=0
T=20 x=1 z=0
T=30 x=0 z=0
T=40 x=1 z=0
T=55 x=1 z=1
T=60 x=0 z=1
T=65 x=0 z=0
T=70 x=1 z=0
T=85 x=1 z=1
T=95 x=1 z=0
