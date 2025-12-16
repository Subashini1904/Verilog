module parity_checker (
input  [7:0] data,
input        parity,
output       error
);
assign error = ^{data, parity};
endmodule


//OUTPUT//
time=0 data=00000001 parity=1 error=0
time=10 data=00000111 parity=1 error=0
time=20 data=00000001 parity=0 error=1
time=30 data=00000111 parity=0 error=1
