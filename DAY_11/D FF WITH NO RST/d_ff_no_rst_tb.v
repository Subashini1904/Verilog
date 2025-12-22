module d_ff_tb;
reg clk;
reg d;
wire q;
d_ff uut (
.clk(clk),
.d(d),
.q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("d_ff_no_rst.vcd");
    $dumpvars(0, d_ff_tb);
    $display("Time  clk  d  q");
    $monitor("%0t    %b    %b  %b", $time, clk, d, q);
    clk = 0;
    d   = 0;
    #7  d = 1;   
    #10 d = 0;  
    #10 d = 1;
    #20 $finish;
end
endmodule

