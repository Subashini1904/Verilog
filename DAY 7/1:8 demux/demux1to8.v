module demux1to8 (
input d,
input [2:0]s,
output reg y0, y1, y2, y3, y4, y5, y6, y7
);
always @(*) begin
{y7, y6, y5, y4, y3, y2, y1, y0 } = 8'b00000000;
case(s)
 3'b000 : y0 = d;
 3'b001 : y1 = d;
 3'b010 : y2 = d;
 3'b011 : y3 = d;
 3'b100 : y4 = d;
 3'b101 : y5 = d;
 3'b110 : y6 = d;
 3'b111 : y7 = d;
endcase
end
endmodule

//OUTPUT//
time=0  | d=0  s=101 |y0=0, y1=0, y2=0, y3=0, y4=0, y5=0, y6=0, y7=0
time=10 | d=1  s=000 |y0=1, y1=0, y2=0, y3=0, y4=0, y5=0, y6=0, y7=0
time=20 | d=1  s=001 |y0=0, y1=1, y2=0, y3=0, y4=0, y5=0, y6=0, y7=0
time=30 | d=1  s=010 |y0=0, y1=0, y2=1, y3=0, y4=0, y5=0, y6=0, y7=0
time=40 | d=1  s=011 |y0=0, y1=0, y2=0, y3=1, y4=0, y5=0, y6=0, y7=0
time=50 | d=1  s=100 |y0=0, y1=0, y2=0, y3=0, y4=1, y5=0, y6=0, y7=0
time=60 | d=1  s=101 |y0=0, y1=0, y2=0, y3=0, y4=0, y5=1, y6=0, y7=0
time=70 | d=1  s=110 |y0=0, y1=0, y2=0, y3=0, y4=0, y5=0, y6=1, y7=0
time=80 | d=1  s=111 |y0=0, y1=0, y2=0, y3=0, y4=0, y5=0, y6=0, y7=1
