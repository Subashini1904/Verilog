module decoder_3to8_tb;
reg [2:0]a;
wire [7:0]y;
integer i;
decoder_3to8 dut(
.a(a),
.y(y)
);
initial begin
  $dumpfile("decoder_3to8.vcd");
  $dumpvars(0, decoder_3to8_tb);
  $monitor("time=%0t | a=%b | y=%b", $time, a, y);
  for(i=0;i<8;i=i+1)
  begin
   a = i[2:0];
   #10;
  end
end
endmodule

