module single_port_async_ram (
input clk,
input we,
input [3:0] addr,
input [7:0] din,
output [7:0] dout
);
reg [7:0] mem [0:15];
always @(posedge clk) begin
     if (we)
        mem[addr] <= din;
end
assign dout = mem[addr];
endmodule


//OUTPUT//
T=0 | clk=0 we=0 addr= 0 din=00 dout=xx
T=5 | clk=1 we=0 addr= 0 din=00 dout=xx
T=10 | clk=0 we=1 addr= 3 din=a5 dout=xx
T=15 | clk=1 we=1 addr= 3 din=a5 dout=a5
T=20 | clk=0 we=1 addr= 7 din=5a dout=xx
T=25 | clk=1 we=0 addr= 3 din=5a dout=a5
T=30 | clk=0 we=0 addr= 7 din=5a dout=xx
T=35 | clk=1 we=0 addr= 7 din=5a dout=xx
T=40 | clk=0 we=0 addr= 7 din=5a dout=xx
T=45 | clk=1 we=0 addr= 7 din=5a dout=xx

