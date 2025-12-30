module clk_div2(
input clk,
input rst,
output reg clk_out
);
always @(posedge clk or posedge rst) begin
if(rst) 
  clk_out <= 1'b0;
else 
  clk_out <= ~clk_out;
end
endmodule

//OUTPUT//
Time=0 | clk=0 | clk_out=0
Time=5 | clk=1 | clk_out=0
Time=10 | clk=0 | clk_out=0
Time=15 | clk=1 | clk_out=1
Time=20 | clk=0 | clk_out=1
Time=25 | clk=1 | clk_out=0
Time=30 | clk=0 | clk_out=0
Time=35 | clk=1 | clk_out=1
Time=40 | clk=0 | clk_out=1
Time=45 | clk=1 | clk_out=0
Time=50 | clk=0 | clk_out=0
Time=55 | clk=1 | clk_out=1
Time=60 | clk=0 | clk_out=1
Time=65 | clk=1 | clk_out=0
Time=70 | clk=0 | clk_out=0
Time=75 | clk=1 | clk_out=1
Time=80 | clk=0 | clk_out=1
Time=85 | clk=1 | clk_out=0
Time=90 | clk=0 | clk_out=0
Time=95 | clk=1 | clk_out=1
Time=100 | clk=0 | clk_out=1
Time=105 | clk=1 | clk_out=0
