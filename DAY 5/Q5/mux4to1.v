module mux4to1(
input i0,i1,i2,i3,
input [1:0]s,
output reg y
);
always @(*) begin
if(s == 2'b00)
 y = i0;
else if(s == 2'b01)
 y = i1;
else if(s == 2'b10)
 y = i2;
else
 y=i3;
end
endmodule


//OUTPUT//
Time | s | i0 i1 i2 i3 | y
0 | 00 | 0  1  0  1 | 0
10 | 01 | 0  1  0  1 | 1
20 | 10 | 0  1  0  1 | 0
30 | 11 | 0  1  0  1 | 1
