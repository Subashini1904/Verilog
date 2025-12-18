module swap_clocked_tb;
reg clk;
reg a, b;
wire a_out, b_out;
swap_clocked dut (
.clk(clk),
.a(a),
.b(b),
.a_out(a_out),
.b_out(b_out)
);
initial begin
    clk = 0;
    forever #5 clk = ~clk;   
end
initial begin
    $monitor("time=%0t clk=%b a=%b b=%b | a_out=%b b_out=%b", $time, clk, a, b, a_out, b_out);
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    #20 $finish;
end
endmodule

