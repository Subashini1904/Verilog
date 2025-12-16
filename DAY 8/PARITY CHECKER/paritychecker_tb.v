module parity_checker_tb;
reg  [7:0] data;
reg parity;
wire error;
parity_checker dut (
.data(data),
.parity(parity),
.error(error)
);
initial begin
    $monitor("time=%0t data=%b parity=%b error=%b", $time, data, parity, error);
    data = 8'b00000001; parity = 1'b1; #10;
    data = 8'b00000111; parity = 1'b1; #10;
    data = 8'b00000001; parity = 1'b0; #10;
    data = 8'b00000111; parity = 1'b0; #10;
    $finish;
end
endmodule


