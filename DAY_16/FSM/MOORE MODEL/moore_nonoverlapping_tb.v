module tb_moore_1011_non_overlap;
reg clk;
reg rst;
reg x;
wire z;
moore_1011_non_overlap DUT (
.clk(clk),
.rst(rst),
.x(x),
.z(z)
);
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    x = 0;
    #10 rst = 0;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;
    #10 x = 1;   

    #10 x = 0;
    #10 x = 1;
    #10 x = 1; 

    #30 $finish;
end
initial begin
    $dumpfile("moore_1011_non.vcd");
    $dumpvars(0, tb_moore_1011_non_overlap);
    $monitor("T=%0t x=%b z=%b", $time, x, z);
end
endmodule

