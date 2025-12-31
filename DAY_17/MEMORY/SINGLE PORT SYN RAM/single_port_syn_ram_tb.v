module tb_single_port_sync_ram;
reg clk;
reg we;
reg [3:0] addr;
reg [7:0] din;
wire [7:0] dout;
single_port_sync_ram uut (
.clk(clk),
.we(we),
.addr(addr),
.din(din),
.dout(dout)
);
always #5 clk = ~clk;
initial begin
      $dumpfile("ram.vcd");
      $dumpvars(0, tb_single_port_sync_ram);
      $monitor("T=%0t | clk=%b we=%b addr=%d din=%h dout=%h", $time, clk, we, addr, din, dout); 
      clk = 0;
      we = 0;
      addr = 0;
      din = 0;
      #10 we = 1; addr = 4'd2; din = 8'hAA;
      #10 we = 1; addr = 4'd5; din = 8'h55;
      #10 we = 0; addr = 4'd2;
      #10 addr = 4'd5;
      #20 $finish;
end
endmodule

