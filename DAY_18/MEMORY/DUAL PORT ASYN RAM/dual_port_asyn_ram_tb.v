module tb_dual_port_async_ram;
reg clk;
reg we_a, we_b;
reg [3:0] addr_a, addr_b;
reg [7:0] din_a, din_b;
wire [7:0] dout_a, dout_b;
dual_port_async_ram uut (
.clk(clk),
.we_a(we_a), .addr_a(addr_a), .din_a(din_a), .dout_a(dout_a),
.we_b(we_b), .addr_b(addr_b), .din_b(din_b), .dout_b(dout_b)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("dual_async_ram.vcd");
    $dumpvars(0, tb_dual_port_async_ram);
    $monitor("T=%0t | A:we=%b addr=%d din=%h dout=%h | B:we=%b addr=%d din=%h dout=%h", $time, we_a, addr_a, din_a, dout_a, we_b, addr_b, din_b, dout_b);
    clk = 0;
    we_a = 0; we_b = 0;
    addr_a = 0; addr_b = 0;
    din_a = 0; din_b = 0;
    #10 we_a = 1; addr_a = 4'd2; din_a = 8'hAA;
    #10 we_b = 1; addr_b = 4'd5; din_b = 8'h55;      
    #5  we_a = 0; addr_a = 4'd2;
    #5  we_b = 0; addr_b = 4'd5;
    #20 $finish;
end
endmodule

