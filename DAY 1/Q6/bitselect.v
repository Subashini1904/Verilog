module bitselect(
input [7:0]data,
output bitout
);
assign bitout = data[3];
endmodule
