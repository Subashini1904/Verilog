module full_sub_tb;
reg a, b, bin;
wire diff, bout;
full_sub dut(
.a(a),
.b(b),
.bin(bin),
.diff(diff),
.bout(bout)
);
initial begin
   $dumpfile("full_sub.vcd");
   $dumpvars(0, full_sub_tb);
   $monitor("t=%0t | a=%b b=%b bin=%b | diff=%b bout=%b",$time, a, b, bin, diff, bout);
   a=0; b=0; bin=0; #10;
   a=0; b=0; bin=1; #10;
   a=0; b=1; bin=0; #10;
   a=0; b=1; bin=1; #10;
   a=1; b=0; bin=0; #10;
   a=1; b=0; bin=1; #10;
   a=1; b=1; bin=0; #10;
   a=1; b=1; bin=1; #10;
   $finish;
end
endmodule
