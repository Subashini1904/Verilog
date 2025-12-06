module sizednum (
input [3:0] b_in,
input [15:0] hex_in,
output [3:0] b_out,
output [15:0] hex_out
);
assign b_out = b_in;
assign hex_out = hex_in;
endmodule
