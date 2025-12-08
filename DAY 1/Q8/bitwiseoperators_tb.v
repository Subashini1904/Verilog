module bitwise_op_tb;
reg  [3:0] a, b;
wire [3:0] and_out, or_out, xor_out, not_out;
bitwise_op dut (
.a(a),
.b(b),
.and_out(and_out),
.or_out(or_out),
.xor_out(xor_out),
.not_out(not_out)
);
initial begin
    $monitor("Time=%0t | a=%b b=%b | AND=%b OR=%b XOR=%b NOT(a)=%b",$time, a, b, and_out, or_out, xor_out, not_out);
    a = 4'b1100; b = 4'b1010; #10;
    a = 4'b1111; b = 4'b0000; #10;
    a = 4'b0101; b = 4'b0011; #10;
    $finish;
end
endmodule

