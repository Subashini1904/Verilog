module sr_latch_tb;
reg s, r;
wire q, qbar;
sr_latch uut (
.s(s),
.r(r),
.q(q),
.qbar(qbar)
);
initial begin
    $dumpfile("sr_latch.vcd");
    $dumpvars(0,sr_latch_tb);
    $display("Time  S  R  Q  Qbar");
    $monitor("%0t   %b  %b  %b   %b", $time, s, r, q, qbar);
    s = 0; r = 0;    
    #5  s = 1; r = 0; 
    #5  s = 0; r = 0; 
    #5  s = 0; r = 1; 
    #5  s = 0; r = 0; 
    #5  s = 1; r = 1; 
    #5  s = 0; r = 0; 
    #10 $finish;
end
endmodule

