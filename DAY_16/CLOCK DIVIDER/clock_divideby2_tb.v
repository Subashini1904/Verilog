module tb_clk_div2;
reg clk;
reg rst;
wire clk_out;
clk_div2 uut (
.clk(clk),
.rst(rst),
.clk_out(clk_out)
);
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end
initial begin
    rst = 1;
    #10 rst = 0;
    #100 $finish;
end
initial begin
    $monitor("Time=%0t | clk=%b | clk_out=%b", $time, clk, clk_out);
end
initial begin
    $dumpfile("clk_div2.vcd");
    $dumpvars(0, tb_clk_div2);
end
endmodule

