module conditional_op (
input  a,
input  b,
input  c,
output y
);
assign y = (c) ? a : b;
endmodule


//OUTPUT//
Time=0 | c=0 a=0 b=1 | y=1
Time=10 | c=0 a=1 b=0 | y=0
Time=20 | c=1 a=0 b=1 | y=0
Time=30 | c=1 a=1 b=0 | y=1
