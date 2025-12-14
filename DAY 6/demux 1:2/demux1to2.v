module demux1to2 (
input  d,
input  s,
output y0,
output y1
);
assign y0 = (~s) & d;
assign y1 = ( s) & d;
endmodule


//OUTPUT//
time=0 | d=0 s=0 | y0=0 y1=0
time=10 | d=1 s=0 | y0=1 y1=0
time=20 | d=0 s=1 | y0=0 y1=0
time=30 | d=1 s=1 | y0=0 y1=1
