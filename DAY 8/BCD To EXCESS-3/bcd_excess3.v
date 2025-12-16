module bcd_to_excess3 (
input  [3:0] bcd,
output [3:0] excess3
);
assign excess3 = bcd + 4'b0011;
endmodule


//OUTPUT//
time=0 BCD=0000 Excess-3=0011
time=10 BCD=0001 Excess-3=0100
time=20 BCD=0010 Excess-3=0101
time=30 BCD=0011 Excess-3=0110
time=40 BCD=0100 Excess-3=0111
time=50 BCD=0101 Excess-3=1000
time=60 BCD=0110 Excess-3=1001
time=70 BCD=0111 Excess-3=1010
time=80 BCD=1000 Excess-3=1011
time=90 BCD=1001 Excess-3=1100
