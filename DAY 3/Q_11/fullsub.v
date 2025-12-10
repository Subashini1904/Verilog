module full_sub(
 input a,
 input b,
 input bin,
 output diff,
 output bout
);
assign diff = a ^ b ^ bin;
assign bout = (~a & b) | ((~a | b) & bin);
endmodule 


//OUTPUT//
t=0 | a=0 b=0 bin=0 | diff=0 bout=0
t=10 | a=0 b=0 bin=1 | diff=1 bout=1
t=20 | a=0 b=1 bin=0 | diff=1 bout=1
t=30 | a=0 b=1 bin=1 | diff=0 bout=1
t=40 | a=1 b=0 bin=0 | diff=1 bout=0
t=50 | a=1 b=0 bin=1 | diff=0 bout=0
t=60 | a=1 b=1 bin=0 | diff=0 bout=0
t=70 | a=1 b=1 bin=1 | diff=1 bout=1
