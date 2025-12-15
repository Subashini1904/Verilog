module demux1to8_tb;
reg d;
reg [2:0]s;
wire y0, y1, y2, y3, y4, y5, y6, y7;
demux1to8 dut(
.d(d),
.s(s),
.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3),
.y4(y4),
.y5(y5),
.y6(y6),
.y7(y7)
);
initial begin
  $dumpfile("demux1to8.vcd");
  $dumpvars(0, demux1to8_tb);
  $monitor("time=%0t | d=%b  s=%b |y0=%b, y1=%b, y2=%b, y3=%b, y4=%b, y5=%b, y6=%b, y7=%b", $time, d, s, y0, y1, y2, y3, y4, y5, y6, y7);
  d = 1'b0;s = 3'b101;#10;
  d = 1'b1;s = 3'b000;#10;
  d = 1'b1;s = 3'b001;#10;
  d = 1'b1;s = 3'b010;#10;
  d = 1'b1;s = 3'b011;#10;
  d = 1'b1;s = 3'b100;#10;
  d = 1'b1;s = 3'b101;#10;
  d = 1'b1;s = 3'b110;#10;
  d = 1'b1;s = 3'b111;#10;
  $finish;
end
endmodule


