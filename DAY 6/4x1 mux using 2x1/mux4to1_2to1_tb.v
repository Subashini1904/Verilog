module mux4to1_2to1_tb;
reg i0, i1, i2, i3;
reg [1:0] s;
wire y;
mux4to1_2to1 dut (
.i0(i0),
.i1(i1),
.i2(i2),
.i3(i3),
.s(s),
.y(y)
);
initial begin
   $dumpfile("mux4to1_2to1.vcd");
   $dumpvars(0, mux4to1_2to1_tb);
   $monitor("time=%0t | i0=%b i1=%b i2=%b i3=%b | s=%b | y=%b", $time, i0, i1, i2, i3, s, y);
   i0=0; i1=1; i2=0; i3=1;

   s=2'b00; #10;   
   s=2'b01; #10;   
   s=2'b10; #10;   
   s=2'b11; #10;  
   $finish;
   end
endmodule

