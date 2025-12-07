module c_mos_tb;
reg x;
wire f;
c_mos dut(
.x(x),
.f(f)
);
initial begin 
  $dumpfile("c_mos.vcd");
  $dumpvars(0, c_mos_tb);
  $monitor("time=0%t | x=%d | f=%d", $time, x, f);
  x=0;#1;
  x=1;#1;
  x=0;#1;
  $finish;
end 
endmodule
