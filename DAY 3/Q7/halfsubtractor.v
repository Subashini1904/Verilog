module half_sub(
input a,
input b,
output diff,
output borrow
);
assign diff = a ^ b;
assign borrow = (~a) & b;
endmodule


//OUTPUT//
Time=0 |a=0 b=0 |diff=0 borrow=0
Time=10 |a=0 b=1 |diff=1 borrow=1
Time=20 |a=1 b=0 |diff=1 borrow=0
Time=30 |a=1 b=1 |diff=0 borrow=0
