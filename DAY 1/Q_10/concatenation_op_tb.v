module concatenation_tb;
reg  [3:0] a, b;
wire [7:0] y;
concatenation dut (
.a(a),
.b(b),
.y(y)
);
initial begin
     $monitor("Time=%0t | a=%b b=%b | y=%b", $time, a, b, y);
     a = 4'b1010; b = 4'b0101; #10;
     a = 4'b1111; b = 4'b0000; #10;
     a = 4'b0011; b = 4'b1100; #10;
     $finish;
 end
endmodule

