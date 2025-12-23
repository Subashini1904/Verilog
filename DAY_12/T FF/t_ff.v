module t_ff (
input clk,
input t,
output reg q
);
always @(posedge clk) begin
   if (t)
       q <= ~q;   
   else
       q <= q;   
end
endmodule


//OUTPUT//
Time  clk  T  Q
0     0    0  x
5     1    0  x
7     1    1  x
10    0    1  x
15    1    1  x
20    0    1  x
25    1    1  x
30    0    1  x
35    1    1  x
40    0    1  x
45    1    1  x
47    1    0  x
50    0    0  x
55    1    0  x
