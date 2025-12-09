module relational_op_tb;
reg  [3:0] a, b;
wire gt, lt, ge, le;
relational_op dut (
.a(a),
.b(b),
.gt(gt),
.lt(lt),
.ge(ge),
.le(le)
 );
  initial begin
     $dumpfile("relational_op.vcd");
     $dumpvars(0, relational_op_tb);
     $monitor("Time=%0t | a=%d b=%d | GT=%b LT=%b GE=%b LE=%b", $time, a, b, gt, lt, ge, le);
     a = 4'd5;  b = 4'd3;  #10;  
     a = 4'd2;  b = 4'd7;  #10; 
     a = 4'd4;  b = 4'd4;  #10;  
     a = 4'd1;  b = 4'd9;  #10; 
     $finish;
   end
endmodule

