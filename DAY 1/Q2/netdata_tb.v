module netdata_tb;
reg a,b;
wire w_and, w_or, t, t_and;
netdata dut(
.a(a),
.b(b),
.w_and(w_and),
.w_or(w_or),
.t(t),
.t_and(t_and)
);
initial begin
   $dumpfile("netdata.vcd");
   $dumpvars(0, netdata_tb);
   $monitor("time=%0t | a=%b b=%b | w_and=%b w_or=%b t=%b t_and=%b", $time, a, b, w_and, w_or, t, t_and);
   a=0;b=1;#10;
   a=1;b=0;#10;
   a=1;b=1;#10;
   $finish;
end
endmodule
