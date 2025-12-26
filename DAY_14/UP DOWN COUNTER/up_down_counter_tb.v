module up_down_counter_tb;
reg clk;
reg rst;
reg up_down;
wire [3:0] count;
up_down_counter uut (
.clk(clk),
.rst(rst),
.up_down(up_down),
.count(count)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("up_down_counter.vcd");
    $dumpvars(0, up_down_counter_tb);
    clk = 0;
    rst = 1;
    up_down = 1;   
    #10 rst = 0;
    #50 up_down = 0; 
    #50 $finish;
end
initial begin
    $monitor("Time=%0t up_down=%b count=%b", $time, up_down, count);
end
endmodule

