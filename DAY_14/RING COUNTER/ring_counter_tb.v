module ring_counter_dff_tb;
reg clk;
reg rst;
wire q0, q1, q2, q3;
ring_counter_dff uut (
.clk(clk),
.rst(rst),
.q0(q0), .q1(q1), .q2(q2), .q3(q3)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("ring_counter_dff.vcd");
    $dumpvars(0, ring_counter_dff_tb);
    clk = 0;
    rst = 1;
    #10 rst = 0;
    #100 $finish;
end
initial begin
    $monitor("Time=%0t Q3Q2Q1Q0=%b%b%b%b", $time, q3, q2, q1, q0);
end
endmodule

