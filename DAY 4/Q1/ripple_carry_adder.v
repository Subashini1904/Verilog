module ripplecarry_adder(
input [3:0] a,
input [3:0] b,
input cin,
output reg[3:0] sum,
output reg cout
);
reg [4:0]temp;
always @(*) 
begin
temp = a + b + cin;
sum = temp[3:0];
cout = temp[4];
end
endmodule


//OUTPUT//
time=0 | a=0000 b=0000 cin=0 | sum=0000 cout=0
time=10 | a=0011 b=0101 cin=0 | sum=1000 cout=0
time=20 | a=1111 b=0001 cin=0 | sum=0000 cout=1
time=30 | a=1001 b=0110 cin=1 | sum=0000 cout=1
time=40 | a=1111 b=1111 cin=1 | sum=1111 cout=1
