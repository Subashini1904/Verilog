module priority_encoder_4to2_tb;
reg  [3:0] in;
wire [1:0] out;
wire valid;
integer i;
priority_encoder_4to2 dut (
.in(in),
.out(out),
.valid(valid)
);
initial begin
   $dumpfile("priority_encoder_4to2.vcd");
   $dumpvars(0, priority_encoder_4to2_tb);
   $monitor("time=%0t in=%b out=%b valid=%b", $time, in, out, valid);
        for (i = 0; i < 16; i = i + 1) begin
        in = i;
        #10;
   end
   $finish;
end
endmodule

