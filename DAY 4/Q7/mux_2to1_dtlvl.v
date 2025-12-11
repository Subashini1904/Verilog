module mux2to1_dtlvl (
    input  a,
    input  b,
    input  s,
    output y
);
    assign y = (s & b) | (~s & a);
endmodule


//OUTPUT//
Time=0 | s=0 a=0 b=0 | y=0
Time=10 | s=0 a=1 b=1 | y=1
Time=20 | s=1 a=0 b=1 | y=1
Time=30 | s=1 a=1 b=0 | y=0


