module equality_op_tb;
   reg [3:0]a;
   reg [3:0]b;
   wire eq;
   wire ne;
   wire ceq;
   wire cne;
equality_op dut(
.a(a),
.b(b),
.eq(eq),
.ne(ne),
.ceq(ceq),
.cne(cne)
);
initial begin 
  $dumpfile("equality_op.vcd");
  $dumpvars(0, equality_op_tb);
  $monitor("time=%0t | a=%b b=%b | eq==%b | ne!==%b | ceq===%b | cne!==%b", $time, a, b, eq, ne, ceq, cne);
  a = 4'b1010; b = 4'b1010; #10;   
  a = 4'b1010; b = 4'b0101; #10;  
  a = 4'b10x1; b = 4'b10x1; #10;   
  a = 4'b10x1; b = 4'b1011; #10;  
  $finish;
end
endmodule 
