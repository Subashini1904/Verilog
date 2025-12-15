module encoder4to2_tb;
reg  [3:0] d;
wire [1:0] y;
encoder4to2 dut (
.d(d),
.y(y)
);
initial begin
   $dumpfile("encoder4to2.vcd");
   $dumpvars(0, encoder4to2_tb);
   $monitor("t=%0t | d=%b | y=%b", $time, d, y);
   d = 4'b0001; #10;
   d = 4'b0010; #10;
   d = 4'b0100; #10;
   d = 4'b1000; #10;
   $finish;
end
endmodule

