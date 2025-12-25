module pipo_tb;
reg clk;
reg rst;
reg [3:0] parallel_in;
wire [3:0] parallel_out;
pipo uut (
.clk(clk),
.rst(rst),
.parallel_in(parallel_in),
.parallel_out(parallel_out)
);
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    parallel_in = 4'b0000;
    #10 rst = 0;
    #10 parallel_in = 4'b1010;
    #10 parallel_in = 4'b0111;
    #10 parallel_in = 4'b1100;
    #20 $finish;
end
initial begin
    $monitor("Time=%0t Parallel_in=%b Parallel_out=%b", $time, parallel_in, parallel_out);
end
endmodule

