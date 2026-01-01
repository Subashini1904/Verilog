module tb_single_port_async_ram;
reg clk;
reg we;
reg [3:0] addr;
reg [7:0] din;
wire [7:0] dout;
single_port_async_ram uut (
.clk(clk),
.we(we),
.addr(addr),
.din(din),
.dout(dout)
);
always #5 clk = ~clk;
initial begin
     $dumpfile("async_ram.vcd");
     $dumpvars(0, tb_single_port_async_ram);
     $monitor("T=%0t | clk=%b we=%b addr=%d din=%h dout=%h",$time, clk, we, addr, din, dout);
     clk = 0;
     we  = 0;
     addr = 0;
     din  = 0;
     #10 we = 1; addr = 4'd3; din = 8'hA5;
     #10 we = 1; addr = 4'd7; din = 8'h5A;
     #5  we = 0; addr = 4'd3;
     #5  addr = 4'd7;
     #20 $finish;
end
endmodule

