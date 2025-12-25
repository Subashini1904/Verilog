module piso_dff_tb;
reg clk;
reg rst;
reg load;
reg [3:0] parallel_in;
wire serial_out;
piso_dff uut (
.clk(clk),
.rst(rst),
.load(load),
.parallel_in(parallel_in),
.serial_out(serial_out)
);
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    load = 0;
    parallel_in = 4'b0000;
    #10 rst = 0;
    #10 load = 1;
    parallel_in = 4'b1011;
    #10 load = 0;  
    #50 $finish;
end
initial begin
    $monitor("Time=%0t Load=%b Parallel=%b Serial_out=%b", $time, load, parallel_in, serial_out);
end
endmodule

