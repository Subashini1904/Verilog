module reduction_tb;
reg  [3:0] a;
wire and_out, or_out, xor_out;
reduction dut (
.a(a),
.and_out(and_out),
.or_out(or_out),
.xor_out(xor_out)
 );
 initial begin
     $dumpfile("reduction.vcd");
     $dumpvars(0, reduction_tb);
     $monitor("Time=%0t | a=%b | AND=%b OR=%b XOR=%b", $time, a, and_out, or_out, xor_out);
     a = 4'b0000; #10;
     a = 4'b1111; #10;
     a = 4'b1010; #10;
     a = 4'b1101; #10;
     $finish;
 end
endmodule

