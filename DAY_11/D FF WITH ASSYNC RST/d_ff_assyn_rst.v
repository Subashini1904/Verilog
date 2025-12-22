module d_ff_async_rst (
input clk,
input rst,     
input d,
output reg q
);
always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 1'b0;   
    else
        q <= d;   
end
endmodule


//OUTPUT//
Time  clk  rst  d  q
0     0    1    0  0
3     0    0    0  0
5     1    0    0  0
7     1    0    1  0
10    0    0    1  0
13    0    0    0  0
15    1    1    0  0
18    1    0    0  0
20    0    0    0  0
25    1    0    0  0
30    0    0    0  0
35    1    0    0  0
