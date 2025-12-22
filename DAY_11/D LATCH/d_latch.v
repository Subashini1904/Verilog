module d_latch (
input d,
input en,     
output reg q
);
always @ (en or d) begin
    if (en)
        q = d;    
end
endmodule


//OUTPUT//
Time  en  d  q
0     0   0  x
5     0   1  x
10    1   1  1
15    1   0  0
20    1   1  1
25    0   1  1
30    0   0  1

