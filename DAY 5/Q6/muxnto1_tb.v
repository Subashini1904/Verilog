module mux_n1_tb;
parameter N = 8;                          
reg [N-1:0] in;
reg [$clog2(N)-1:0] sel;
wire y;
mux_n1 #(N) dut (
.in(in),
.sel(sel),
.y(y)
);
initial begin
  $dumpfile("mux_n1.vcd");
  $dumpvars(0, mux_n1_tb);
  $monitor("time=%0t | in=%b | sel=%0d | y=%b", $time, in, sel, y);
  in = 8'b10101100;   

  sel = 0; #10;  
  sel = 1; #10;   
  sel = 2; #10;   
  sel = 3; #10; 
  sel = 4; #10;
  sel = 5; #10;
  sel = 6; #10;
  sel = 7; #10;  
  $finish;
end
endmodule

