module jk_ff_tb;
reg clk;
reg j, k;
wire q;
jk_ff uut (
.clk(clk),
.j(j),
.k(k),
.q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("jk_ff.vcd");
    $dumpvars(0, jk_ff_tb);
    $display("Time  clk  J  K  Q");
    $monitor("%0t    %b    %b  %b  %b", $time, clk, j, k, q);
    clk = 0;
    j   = 0;
    k   = 0;
    #7  j = 1; k = 0;   
    #10 j = 0; k = 0;   
    #10 j = 0; k = 1;   
    #10 j = 0; k = 0; 
    #10 j = 1; k = 1;   
    #10 j = 1; k = 1;   
    #10 $finish;
end
endmodule

