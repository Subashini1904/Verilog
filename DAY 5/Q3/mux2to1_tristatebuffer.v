module mux2to1_tristate (
input a,
input b,
input s,
output y
);
    assign y = (s == 0) ? a : 1'bz;  
    assign y = (s == 1) ? b : 1'bz;  
endmodule


//OUTPUT//
time=0 | a=0 b=0 s=0 | y=0
time=10 | a=0 b=1 s=0 | y=0
time=20 | a=1 b=0 s=1 | y=0
time=30 | a=1 b=1 s=1 | y=1
