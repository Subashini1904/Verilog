module conditional_op_tb;
reg a, b, c;
wire y;
conditional_op dut (
.a(a),
.b(b),
.c(c),
.y(y)
);
initial begin
  $dumpfile("conditional_op.vcd");
  $dumpvars(0, conditional_op_tb);
  $monitor("Time=%0t | c=%b a=%b b=%b | y=%b", $time, c, a, b, y);
  c = 0; a = 0; b = 1; #10;
  c = 0; a = 1; b = 0; #10;
  c = 1; a = 0; b = 1; #10;
  c = 1; a = 1; b = 0; #10;
  $finish;
end
endmodule

