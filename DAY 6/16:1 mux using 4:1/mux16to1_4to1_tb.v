module mux16to1_4to1_tb;
reg  [15:0] in;
reg  [3:0]  s;
wire y;
mux16to1_4to1 dut (
.in(in),
.s(s),
.y(y)
);
initial begin
   $dumpfile("mux16to1_4to1.vcd");
   $dumpvars(0, mux16to1_4to1_tb);
   $monitor("time=%0t | in=%b | s=%0d | y=%b", $time, in, s, y);
   in = 16'b1010_1100_0110_1001;
   
   s = 0;  #10;
   s = 1;  #10;
   s = 2;  #10;
   s = 3;  #10;
   s = 4;  #10;
   s = 5;  #10;
   s = 6;  #10;
   s = 7;  #10;
   s = 8;  #10;
   s = 9;  #10;
   s = 10; #10;
   s = 11; #10;
   s = 12; #10;
   s = 13; #10;
   s = 14; #10;
   s = 15; #10;
   $finish;
   end
endmodule

