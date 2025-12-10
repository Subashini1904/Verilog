module tristate_buffer_tb;
reg a, en;
wire y;
tristate_buffer dut(
.a(a),
.en(en),
.y(y)
);
initial begin
  $dumpfile("tristate_buffer.vcd");
  $dumpvars(0, tristate_buffer_tb);
  $monitor("time=%0t | a=%b en=%b | y=%b", $time, a, en, y);
  en=0;a=0;#10;
  en=0;a=1;#10;
  en=1;a=0;#10;
  en=1;a=1;#10;
  $finish;
end
endmodule
