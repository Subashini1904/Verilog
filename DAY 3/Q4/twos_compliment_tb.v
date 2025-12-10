module twos_compliment_tb;
reg [3:0] a;
wire [3:0] y;
twos_compliment dut(
.a(a),
.y(y)
);
initial begin
  $dumpfile("twos_compliment.vcd");
  $dumpvars(0, twos_compliment_tb);
  $monitor("time=%0t  | a=%b | y=%b", $time, a, y);
  a=4'b0011;#10;
  a=4'b0001;#10;
  a=4'b1100;#10;
  a=4'b1001;#10;
  $finish;
end
endmodule
