module mux2to1_bitselect_tb;
reg [1:0]in;
reg s;
wire y;
mux2to1_bitselect dut(
.in(in),
.s(s),
.y(y)
);
initial begin
    $dumpfile("mux2to1_bitselect.vcd");
    $dumpvars(0, mux2to1_bitselect_tb);
    $monitor("time=%0t | in={b=%b,a=%b} s=%b | y=%b", $time, in[1], in[0], s, y);
    in = 2'b00; s = 0; #10;
    in = 2'b01; s = 0; #10;
    in = 2'b10; s = 1; #10;
    in = 2'b11; s = 1; #10;
    $finish;
end
endmodule
