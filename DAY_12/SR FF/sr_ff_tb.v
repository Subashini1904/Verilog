module tb_sr_ff;
reg clk;
reg s,r;
wire q;
sr_ff uut (
.clk(clk),
.s(s),
.r(r),
.q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("sr_ff.vcd");
    $dumpvars(0, tb_sr_ff);
    $display("Time  clk  S  R  Q");
    $monitor("%0t    %b    %b  %b  %b", $time, clk, s, r, q);
    clk = 0;
    s = 0;
    r = 0;
    #7  s = 1; r = 0;   
    #10 s = 0; r = 0; 
    #10 s = 0; r = 1;   
    #10 s = 0; r = 0;   
    #10 s = 1; r = 1; 
    #10 s = 0; r = 0;
    #10 $finish;
end
endmodule

