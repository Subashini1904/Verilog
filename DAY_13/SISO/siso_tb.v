module siso_tb;
reg clk, rst, serial_in;
wire serial_out;
siso uut (
.clk(clk),
.rst(rst),
.serial_in(serial_in),
.serial_out(serial_out)
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
        $monitor("Time=%0t | In=%b | Out=%b", $time, serial_in, serial_out);
    end
endmodule

