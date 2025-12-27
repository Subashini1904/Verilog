module johnson_counter_dff_tb;
reg clk;
reg rst;
wire [3:0] q;
johnson_counter_dff DUT (
.clk(clk),
.rst(rst),
.q(q)
);
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    #10 rst = 0;
    #100 $finish;
end
initial begin
    $dumpfile("johnson_dff.vcd");
    $dumpvars(0,johnson_counter_dff_tb);
    $monitor("Time=%0t | q=%b", $time, q);
end
endmodule

