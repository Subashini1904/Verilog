module parity_generator (
input  [7:0] data,
output parity
);
assign parity = ^data;   
endmodule


//OUTPUT//
time=0 data=00000000 parity=0
time=10 data=00000001 parity=1
time=20 data=00000111 parity=1
time=30 data=11111111 parity=0
time=40 data=10101010 parity=0
