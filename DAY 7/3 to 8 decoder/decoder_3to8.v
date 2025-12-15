module decoder_3to8 (
input [2:0]a,
output reg [7:0]y
);
always @(*) begin
y = 8'b00000000;
y = 8'b00000001 << a;
end
endmodule


//OUTPUT//
time=0 | a=000 | y=00000001
time=10 | a=001 | y=00000010
time=20 | a=010 | y=00000100
time=30 | a=011 | y=00001000
time=40 | a=100 | y=00010000
time=50 | a=101 | y=00100000
time=60 | a=110 | y=01000000
time=70 | a=111 | y=10000000
