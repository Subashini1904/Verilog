module ones_compliment(
input [3:0]a,
output [3:0]y
);
assign y = ~a;
endmodule


//OUTPUT//
time=0 | a=0001 | y=1110
time=10 | a=1010 | y=0101
time=20 | a=0101 | y=1010
time=30 | a=1100 | y=0011
