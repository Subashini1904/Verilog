module mux2to1_plvl(
input a,
input b,
input s,
output reg y
);
always @(*) 
begin 
 if(s == 1'b0)
   y = a;
 else
   y = b;
end
endmodule


//OUTPUT//
Time=0 | a=0 b=0 s=0 | y=0
Time=10 | a=0 b=1 s=0 | y=0
Time=20 | a=1 b=0 s=0 | y=1
Time=30 | a=1 b=1 s=0 | y=1
Time=40 | a=0 b=0 s=1 | y=0
Time=50 | a=0 b=1 s=1 | y=1
Time=60 | a=1 b=0 s=1 | y=0
Time=70 | a=1 b=1 s=1 | y=1
