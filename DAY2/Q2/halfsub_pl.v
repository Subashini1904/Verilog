module half_sub(
input a,
input b,
output reg diff,
output reg borrow
);
always@(a or b) begin
diff = a ^ b;
borrow = (~a) & b;
end
endmodule
