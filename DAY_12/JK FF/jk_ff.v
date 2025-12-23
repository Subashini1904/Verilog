module jk_ff (
input clk,
input j,
input k,
output reg q
);
always @(posedge clk) begin
    case ({j,k})
        2'b00: q <= q;      
        2'b10: q <= 1'b1; 
        2'b01: q <= 1'b0;   
        2'b11: q <= ~q;     
    endcase
end
endmodule


//OUTPUT//
Time  clk  J  K  Q
0    0    0  0  x
5    1    0  0  x
7    1    1  0  x
10    0    1  0  x
15    1    1  0  1
17    1    0  0  1
20    0    0  0  1
25    1    0  0  1
27    1    0  1  1
30    0    0  1  1
35    1    0  1  0
37    1    0  0  0
40    0    0  0  0
45    1    0  0  0
47    1    1  1  0
50    0    1  1  0
55    1    1  1  1
60    0    1  1  1
65    1    1  1  0
