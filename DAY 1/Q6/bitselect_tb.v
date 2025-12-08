module bitselect_tb;
reg [7:0] data;
wire bitout;
bitselect dut(
.data(data),
.bitout(bitout)
);
initial begin
  $dumpfile("bitselect.vcd");
  $dumpvars(0,bitselect_tb);
  $monitor("time=%0t |data=%b |bitout=%b", $time, data, bitout);
  data = 8'b00000000; #10;
  data = 8'b00001000; #10; 
  data = 8'b11111111; #10;
  data = 8'b00000111; #10;  
  $finish;
end 
endmodule

