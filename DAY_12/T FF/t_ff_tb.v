module t_ff_tb;
reg clk;
reg t;
wire q;
t_ff uut (
.clk(clk),
.t(t),
.q(q)
);
always #5 clk = ~clk;
initial begin
    $dumpfile("t_ff.vcd");
    $dumpvars(0, t_ff_tb);
    $display("Time  clk  T  Q");
    $monitor("%0t    %b    %b  %b", $time, clk, t, q);
    clk = 0;
    t   = 0;
    #7  t = 1;  
    #10 t = 1;   
    #10 t = 1; 
    #10 t = 1;   
    #10 t = 0;  
    #10 $finish;
end
endmodule

