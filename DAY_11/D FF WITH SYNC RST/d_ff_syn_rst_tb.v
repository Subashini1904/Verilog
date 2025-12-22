module d_ff_sync_rst_tb;
reg clk;
reg rst;
reg d;
wire q;
d_ff_sync_rst uut (
.clk(clk),
.rst(rst),
.d(d),
.q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("d_ff_sync_rst.vcd");
    $dumpvars(0, d_ff_sync_rst_tb);
    $display("Time  clk  rst  d  q");
    $monitor("%0t    %b    %b    %b  %b", $time, clk, rst, d, q);
    clk = 0;
    rst = 1;   
    d   = 0;
    #3  rst = 0;   
    #4  d = 1;
    #6  d = 0;
    #2  rst = 1;   
    #4  rst = 0;
    #20 $finish;
end
endmodule

