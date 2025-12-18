module swap_blocking_tb;
reg a, b;
wire a_out, b_out;
swap_blocking dut (
.a(a),
.b(b),
.a_out(a_out),
.b_out(b_out)
);
initial begin
    $monitor("time=%0t a=%b b=%b | a_out=%b b_out=%b", $time, a, b, a_out, b_out);
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $finish;
end
endmodule

