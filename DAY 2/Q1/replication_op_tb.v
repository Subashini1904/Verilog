module replication_op_tb;
reg  [1:0] a;
wire [7:0] y;
replication_op dut (
.a(a),
.y(y)
);
initial begin
  $dumpfile("replication_op.vcd");
  $dumpvars(0, replication_op_tb);
  $monitor("Time=%0t | a=%b | y=%b", $time, a, y);
  a = 2'b00; #10;
  a = 2'b01; #10;
  a = 2'b10; #10;
  a = 2'b11; #10;
  $finish;
end
endmodule

