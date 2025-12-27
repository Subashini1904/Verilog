module johnson_counter_dff (
input clk,
input rst,
output reg [3:0] q
);
always @(posedge clk or posedge rst) begin
    if (rst) begin
        q[3] <= 1'b0;
        q[2] <= 1'b0;
        q[1] <= 1'b0;
        q[0] <= 1'b0;
    end
    else begin
        q[3] <= ~q[0];  
        q[2] <= q[3];
        q[1] <= q[2];
        q[0] <= q[1];
    end
end
endmodule


//OUTPUT//
Time=0 | q=0000
Time=15 | q=1000
Time=25 | q=1100
Time=35 | q=1110
Time=45 | q=1111
Time=55 | q=0111
Time=65 | q=0011
Time=75 | q=0001
Time=85 | q=0000
Time=95 | q=1000
Time=105 | q=1100
