module andgate_if(
input a, b,
output reg y
);
always@(*)begin
if(a&&b)
y=1'b1;
else
y=1'b0;
end
endmodule



//OUTPUT//
time=0 | a=0 b=0 | y=0
time=10 | a=0 b=1 | y=0
time=20 | a=1 b=0 | y=0
time=30 | a=1 b=1 | y=1
