module d_ff (
input clk,
input d,
output reg q
);
always @(posedge clk) begin
    q <= d;
end
endmodule


//OUTPUT//
Time  clk  d  q
0     0    0  x
5     1    0  0
7     1    1  0
10    0    1  0
15    1    1  1
17    1    0  1
20    0    0  1
25    1    0  0
27    1    1  0
30    0    1  0
35    1    1  1
40    0    1  1
45    1    1  1
