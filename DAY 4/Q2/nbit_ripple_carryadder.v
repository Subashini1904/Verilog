module ripplecarry_adder_nbit #(parameter N = 8)(
input [N-1:0] a,
input [N-1:0] b,
input cin,
output reg[N-1:0] sum,
output reg cout
);
reg [N:0]temp;
always @(*) 
begin
temp = a + b + cin;
sum = temp[N-1:0];
cout = temp[N];
end
endmodule




//OUTPUT//
time=0 | a=00000000 b=00000000 cin=0 | sum=00000000 cout=0
time=10 | a=00000011 b=00000101 cin=0 | sum=00001000 cout=0
time=20 | a=00001111 b=00000001 cin=0 | sum=00010000 cout=0
time=30 | a=00001001 b=00000110 cin=1 | sum=00010000 cout=0
time=40 | a=00001111 b=00001111 cin=1 | sum=00011111 cout=0
