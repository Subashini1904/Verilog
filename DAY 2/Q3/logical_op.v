module logical(
input a,
input b,
output and_out,
output or_out,
output not_out
);
assign and_out = a && b;
assign or_out = a || b;
assign not_out = !a;
endmodule
