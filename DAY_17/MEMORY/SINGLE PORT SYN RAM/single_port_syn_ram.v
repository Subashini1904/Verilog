module single_port_sync_ram (
input clk,
input we,
input [3:0] addr,
input [7:0] din,
output reg [7:0] dout
);
reg [7:0] mem [0:15];   
always @(posedge clk) begin
      if (we)
         mem[addr] <= din;  
      dout <= mem[addr];     
end
endmodule


//OUTPUT//
T=0 | clk=0 we=0 addr= 0 din=00 dout=xx
T=5 | clk=1 we=0 addr= 0 din=00 dout=xx
T=10 | clk=0 we=1 addr= 2 din=aa dout=xx
T=15 | clk=1 we=1 addr= 2 din=aa dout=xx
T=20 | clk=0 we=1 addr= 5 din=55 dout=xx
T=25 | clk=1 we=1 addr= 5 din=55 dout=xx
T=30 | clk=0 we=0 addr= 2 din=55 dout=xx
T=35 | clk=1 we=0 addr= 2 din=55 dout=aa
T=40 | clk=0 we=0 addr= 5 din=55 dout=aa
T=45 | clk=1 we=0 addr= 5 din=55 dout=55
T=50 | clk=0 we=0 addr= 5 din=55 dout=55
T=55 | clk=1 we=0 addr= 5 din=55 dout=55
