module unsizednum_tb;
reg a,b;
wire y;
unsizednum dut(
.a(a),
.b(b),
.y(y)
);
initial begin
  $dumpfile("unsizednum.vcd");
  $dumpvars(0, unsizednum_tb);
  $monitor("time=%0t | a=%b b=%b | y=%b", $time, a, b, y);
  a=0;b=0;#10;
  a=0;b=1;#10;
  a=1;b=0;#10;
  a=1;b=1;#10;
  $finish;
end
endmodule
