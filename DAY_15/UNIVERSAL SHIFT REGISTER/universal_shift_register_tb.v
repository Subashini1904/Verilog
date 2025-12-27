module tb_universal_shift_register;
reg clk;
reg rst;
reg [1:0] sel;
reg sr, sl;
reg [3:0] p_in;
wire [3:0] q;
universal_shift_register DUT (
.clk(clk),
.rst(rst),
.sel(sel),
.sr(sr),
.sl(sl),
.p_in(p_in),
.q(q)
);
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    sel = 2'b00;
    sr  = 0;
    sl  = 0;
    p_in = 4'b0000;
    #10 rst = 0;
    sel = 2'b11;
    p_in = 4'b1010;
    #10;
    sel = 2'b00;
    #10;
    sel = 2'b01;
    sr = 1;
    #10;
    sel = 2'b10;
    sl = 0;
    #10;
    #30 $finish;
end
initial begin
    $dumpfile("universal_shift_register.vcd");
    $dumpvars(0, tb_universal_shift_register);
    $monitor("Time=%0t | sel=%b | q=%b", $time, sel, q);
end
endmodule

