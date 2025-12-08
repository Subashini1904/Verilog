module arithmetic_op_tb;
reg  [3:0] a, b;
wire [4:0] sum, diff;
wire [7:0] prod;
wire [3:0] quot;
arithmetic_op dut (
.a(a),
.b(b),
.sum(sum),
.diff(diff),
.prod(prod),
.quot(quot)
);
 initial begin
     $monitor("Time=%0t | a=%d b=%d | SUM=%d DIFF=%d | PROD=%d QUOT=%d", $time, a, b, sum, diff, prod, quot);
     a = 10; b = 5;  #10;
     a = 8;  b = 2;  #10;
     a = 7;  b = 3;  #10;
     $finish;
 end
endmodule

