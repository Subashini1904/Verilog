module d_latch_tb;
reg d;
reg en;
wire q;
d_latch DUT (
.d(d),
.en(en),
.q(q)
);
initial begin
    $dumpfile("d_latch.vcd");
    $dumpvars(0, d_latch_tb);    	
    $display("Time  en  d  q");
    $monitor("%0t    %b   %b  %b", $time, en, d, q);
    en = 0; d = 0; 
    #5 d = 1;        
    #5 en = 1;       
    #5 d = 0;      
    #5 d = 1;        
    #5 en = 0;    
    #5 d = 0;    
    #10 $finish;
end
endmodule

