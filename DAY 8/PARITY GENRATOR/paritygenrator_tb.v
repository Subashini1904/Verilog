module parity_generator_tb;
reg  [7:0] data;
wire parity;
parity_generator dut (
.data(data),
.parity(parity)
);
initial begin
    $monitor("time=%0t data=%b parity=%b", $time, data, parity);
    data = 8'b00000000; #10;
    data = 8'b00000001; #10;
    data = 8'b00000111; #10;
    data = 8'b11111111; #10;
    data = 8'b10101010; #10;
    $finish;
end
endmodule

