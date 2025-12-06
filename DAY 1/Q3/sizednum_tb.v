module sizednum_tb;
reg [3:0] b_in;
reg [15:0] hex_in;
wire [3:0] b_out;
wire [15:0] hex_out;
sizednum dut(
.b_in(b_in),
.hex_in(hex_in),
.b_out(b_out),
.hex_out(hex_out)
);
initial begin 
  $dumpfile("sizednum.vcd");
  $dumpvars(0, sizednum_tb);
  $monitor("time=%0t | b_in=%b hex_in=%h | b_out=%b hex_out=%h" ,$time, b_in, hex_in, b_out, hex_out);
  b_in=4'b1001;
  hex_in=15'h4a;#10;
  b_in=4'b1100;
  hex_in=15'h22f;#10;
  b_in=4'b1010;
  hex_in=15'h5e;#10;
  $finish;
end
endmodule
