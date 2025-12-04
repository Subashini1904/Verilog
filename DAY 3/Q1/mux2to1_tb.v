module mux2to1_tb;
reg a, b, c;
wire y;
mux2to1 dut(
  .a(a),
  .b(b),
  .c(c),
  .y(y)
);
initial begin
  $dumpfile("mux2to1.vcd");
  $dumpvars(0, mux2to1_tb);
  $monitor("time=%0t | a=%b b=%b c=%b | y=%b", $time, a, b, c, y);
  a=0; b=0; c=0; #10;
  a=0; b=0; c=1; #10;
  a=0; b=1; c=0; #10;
  a=0; b=1; c=1; #10;
  a=1; b=0; c=0; #10;
  a=1; b=0; c=1; #10;
  a=1; b=1; c=0; #10;
  a=1; b=1; c=1; #10;
  $finish;
end
endmodule



