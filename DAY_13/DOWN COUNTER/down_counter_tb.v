module down_counter_tb;
reg clk;
reg rst;
wire [3:0] count;
down_counter uut (
.clk(clk),
.rst(rst),
.count(count)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("down_counter.vcd");
    $dumpvars(0, down_counter_tb);
    clk = 0;
    rst = 1;
    #10 rst = 0;  
    #50 $finish;
end
initial begin
    $monitor("Time=%0t clk=%b rst=%b count=%b", $time, clk, rst, count);
end
endmodule

