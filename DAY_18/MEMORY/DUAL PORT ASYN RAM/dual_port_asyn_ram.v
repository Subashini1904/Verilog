module dual_port_async_ram (
input clk,
input we_a,
input [3:0] addr_a,
input [7:0] din_a,
output [7:0] dout_a,
input we_b,
input [3:0] addr_b,
input [7:0] din_b,
output [7:0] dout_b
);
reg [7:0] mem [0:15];
always @(posedge clk) begin
     if (we_a)
         mem[addr_a] <= din_a;
     if (we_b)
         mem[addr_b] <= din_b;
end
assign dout_a = mem[addr_a];
assign dout_b = mem[addr_b];
endmodule


//OUTPUT//
T=0 | A:we=0 addr= 0 din=00 dout=xx | B:we=0 addr= 0 din=00 dout=xx
T=10 | A:we=1 addr= 2 din=aa dout=xx | B:we=0 addr= 0 din=00 dout=xx
T=15 | A:we=1 addr= 2 din=aa dout=aa | B:we=0 addr= 0 din=00 dout=xx
T=20 | A:we=1 addr= 2 din=aa dout=aa | B:we=1 addr= 5 din=55 dout=xx
T=25 | A:we=0 addr= 2 din=aa dout=aa | B:we=1 addr= 5 din=55 dout=55
T=30 | A:we=0 addr= 2 din=aa dout=aa | B:we=0 addr= 5 din=55 dout=55
