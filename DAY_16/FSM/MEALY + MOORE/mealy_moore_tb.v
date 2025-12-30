module tb_seq_10101_mealy_moore;
reg clk;
reg rst;
reg x;
wire z_mealy;
wire z_moore;
seq_10101_mealy_moore DUT (
.clk(clk),
.rst(rst),
.x(x),
.z_mealy(z_mealy),
.z_moore(z_moore)
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
    #10 x = 0;
    #10 x = 1;   

    #10 x = 0;
    #10 x = 1;  
    #30 $finish;
end
initial begin
    $dumpfile("mealy_moore_10101.vcd");
    $dumpvars(0, tb_seq_10101_mealy_moore);
    $monitor("T=%0t x=%b Mealy=%b Moore=%b", $time, x, z_mealy, z_moore);
end
endmodule

