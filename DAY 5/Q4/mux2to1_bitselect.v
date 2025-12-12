module mux2to1_bitselect(
input [1:0]in,
input s,
output y
);
assign y = in[s];
endmodule


//OUTPUT//
time=0 | in={b=0,a=0} s=0 | y=0
time=10 | in={b=0,a=1} s=0 | y=1
time=20 | in={b=1,a=0} s=1 | y=1
time=30 | in={b=1,a=1} s=1 | y=1
