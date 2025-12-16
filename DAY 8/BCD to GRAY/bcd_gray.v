module bcd_to_gray (
input  [3:0] bcd,
output [3:0] gray
);
assign gray = bcd ^ (bcd >> 1);
endmodule

//OUTPUT//
time=0 BCD=0000 Gray=0000
time=10 BCD=0001 Gray=0001
time=20 BCD=0010 Gray=0011
time=30 BCD=0011 Gray=0010
time=40 BCD=0100 Gray=0110
time=50 BCD=0101 Gray=0111
time=60 BCD=0110 Gray=0101
time=70 BCD=0111 Gray=0100
time=80 BCD=1000 Gray=1100
time=90 BCD=1001 Gray=1101
