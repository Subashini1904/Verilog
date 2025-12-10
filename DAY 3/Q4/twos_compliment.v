module twos_compliment(
input [3:0]a,
output [3:0]y
);
assign y = ~a + 4'b0001;
endmodule


//OUTPUT//
time=0  | a=0011 | y=1101
time=10  | a=0001 | y=1111
time=20  | a=1100 | y=0100
time=30  | a=1001 | y=0111
