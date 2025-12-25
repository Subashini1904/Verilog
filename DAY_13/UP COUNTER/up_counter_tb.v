module up_counter_tb;
reg clk;
reg rst;
wire [3:0] count;
up_counter uut (
.clk(clk),
.rst(rst),
.count(count)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("up_counter.vcd");   
    $dumpvars(0, up_counter_tb);   	
    clk = 0;
    rst = 1;
    #10 rst = 0;  
    #100 $finish;
end
initial begin
    $monitor("Time=%0t Count=%b", $time, count);
end
endmodule

