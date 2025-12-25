module sipo_dff_tb;
reg clk;
reg rst;
reg serial_in;
wire q0, q1, q2, q3;
sipo_dff uut (
.clk(clk),
.rst(rst),
.serial_in(serial_in),
.q0(q0), .q1(q1), .q2(q2), .q3(q3)
);
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    serial_in = 0;
    #10 rst = 0;
    #10 serial_in = 1;
    #10 serial_in = 0;
    #10 serial_in = 1;
    #10 serial_in = 1;
    #20 $finish;
end
initial begin
    $monitor("Time=%0t SI=%b Q3Q2Q1Q0=%b%b%b%b", $time, serial_in, q3, q2, q1, q0);
end
endmodule

