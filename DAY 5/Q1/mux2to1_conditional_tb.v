module mux2to1_con_tb;
reg a;
reg b;
reg s;
wire y;
mux2to1_con dut (
.a(a),
.b(b),
.s(s),
.y(y)
);
initial begin 
  $dumpfile("mux2to1_con.vcd");
  $dumpvars(0, mux2to1_con_tb);
  $monitor("time=%0t | a=%b b=%b s=%b |y=%b", $time, a, b, s, y);
  s=0;a=0;b=0;#10;
  s=0;a=1;b=1;#10;
  s=1;a=1;b=0;#10;
  s=1;a=1;b=1;#10;
  $finish;
end
endmodule

