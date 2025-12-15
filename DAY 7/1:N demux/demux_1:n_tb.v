module demux_1toN_tb;
reg d;
reg [2:0] s;          
wire [7:0] y;
demux_1toN #(.N(8)) dut (
.d(d),
.s(s),
.y(y)
);
initial begin
  $dumpfile("demux_1toN.vcd");
  $dumpvars(0, demux_1toN_tb);
  $monitor("t=%0t | d=%b s=%b | y=%b", $time, d, s, y);
  d = 1;
  s = 3'b000; #10;
  s = 3'b001; #10;
  s = 3'b010; #10;
  s = 3'b011; #10;
  s = 3'b100; #10;
  s = 3'b101; #10;
  s = 3'b110; #10;
  s = 3'b111; #10;
  d = 0; s = 3'b010; #10;
  $finish;
end
endmodule

