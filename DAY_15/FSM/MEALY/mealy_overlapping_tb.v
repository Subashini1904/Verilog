module tb_mealy_1011;
reg clk;
reg rst;
reg x;
wire z;
mealy_1011 DUT (
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
    #20 $finish;
end

initial begin
    $dumpfile("mealy_1011.vcd");
    $dumpvars(0, tb_mealy_1011);
    $monitor("T=%0t x=%b z=%b", $time, x, z);
end
endmodule

