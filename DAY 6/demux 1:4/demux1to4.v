module demux1to4 (
input  d,
input  [1:0] s,
output y0, y1, y2, y3
);
assign y0 = d & ~s[1] & ~s[0];  
assign y1 = d & ~s[1] &  s[0]; 
assign y2 = d &  s[1] & ~s[0];  
assign y3 = d &  s[1] &  s[0]; 
endmodule


//OUTPUT//
time=0 | d=0 s=00 | y0=0 y1=0 y2=0 y3=0
time=10 | d=1 s=00 | y0=1 y1=0 y2=0 y3=0
time=20 | d=1 s=01 | y0=0 y1=1 y2=0 y3=0
time=30 | d=1 s=10 | y0=0 y1=0 y2=1 y3=0
time=40 | d=1 s=11 | y0=0 y1=0 y2=0 y3=1
