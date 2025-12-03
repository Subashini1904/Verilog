module half_sub_tb;
reg a, b;
wire diff, borrow;
half_sub uut(
.a(a),
.b(b),
.diff(diff),
.borrow(borrow)
);
initial begin
   $dumpfile("half_sub.vcd");
   $dumpvars(0, half_sub_tb);
   $monitor("Time=%0t |a=%b b=%b |diff=%b borrow=%b",$time, a, b, diff, borrow);
   a = 0; b = 0; #10;
   a = 0; b = 1; #10;
   a = 1; b = 0; #10;
   a = 1; b = 1; #10;
   $finish;
end
endmodule
