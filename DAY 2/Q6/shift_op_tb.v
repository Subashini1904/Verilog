module shift_op_tb;
reg  [3:0] a;
reg  [1:0] sh;
wire [3:0] lsl, lsr, asr;
shift_op dut (
.a(a),
.sh(sh),
.lsl(lsl),
.lsr(lsr),
.asr(asr)
);
initial begin
  $dumpfile("shift_op.vcd");
  $dumpvars(0, shift_op_tb);
  $monitor("Time=%0t | a=%b sh=%b | LSL=%b LSR=%b ASR=%b", $time, a, sh, lsl, lsr, asr);
  a = 4'b1010; sh = 2'd1; #10;
  a = 4'b1010; sh = 2'd2; #10;
  a = 4'b0101; sh = 2'd1; #10;
  a = 4'b1100; sh = 2'd1; #10;
  $finish;
end
endmodule

