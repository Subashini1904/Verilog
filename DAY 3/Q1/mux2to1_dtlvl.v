module mux2to1_dtlvl (
    input  a,
    input  b,
    input  s,
    output y
);
    assign y = (s & b) | (~s & a);
endmodule

