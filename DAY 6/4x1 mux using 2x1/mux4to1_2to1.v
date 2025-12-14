module mux4to1_2to1 (
    input i0, i1, i2, i3,
    input [1:0] s,
    output y
);
    wire w0, w1;
    assign w0 = (s[0]) ? i1 : i0;
    assign w1 = (s[0]) ? i3 : i2;
    assign y  = (s[1]) ? w1 : w0;
endmodule


//OUTPUT//
time=0 | i0=0 i1=1 i2=0 i3=1 | s=00 | y=0
time=10 | i0=0 i1=1 i2=0 i3=1 | s=01 | y=1
time=20 | i0=0 i1=1 i2=0 i3=1 | s=10 | y=0
time=30 | i0=0 i1=1 i2=0 i3=1 | s=11 | y=1
