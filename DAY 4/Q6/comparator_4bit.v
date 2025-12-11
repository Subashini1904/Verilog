module comparator_4bit(
input  [3:0] a,
input  [3:0] b,
output reg gt, 
output reg lt, 
output reg eq
);
always @(*) begin
  if (a > b) begin
        gt = 1; lt = 0; eq = 0;
  end
  else if (a < b) begin
        gt = 0; lt = 1; eq = 0;
  end
  else begin
        gt = 0; lt = 0; eq = 1;
  end
end
endmodule


//OUTPUT//
time=0 | a=0101(5) b=0011(3) | gt=1 lt=0 eq=0
time=10 | a=0010(2) b=0110(6) | gt=0 lt=1 eq=0
time=20 | a=1111(15) b=1111(15) | gt=0 lt=0 eq=1
time=30 | a=1001(9) b=1010(10) | gt=0 lt=1 eq=0
time=40 | a=0111(7) b=0001(1) | gt=1 lt=0 eq=0
