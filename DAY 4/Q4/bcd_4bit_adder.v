module bcd_adder(
input  [3:0] a,       
input  [3:0] b,       
input  cin,     
output reg [3:0] sum, 
output reg  cout  
);
reg [4:0] temp;  
always @(*) begin
temp = a + b + cin; 
   if (temp > 9) begin
       temp = temp + 6;
       cout = 1;
   end
   else begin
       cout = 0;
end
sum = temp[3:0];
end
endmodule



//OUTPUT//
time=0 | a=0011 (3)  b=0100 (4)  cin=0 | sum=0111 (7) cout=0
time=10 | a=0101 (5)  b=0101 (5)  cin=0 | sum=0000 (0) cout=1
time=20 | a=1001 (9)  b=0001 (1)  cin=0 | sum=0000 (0) cout=1
time=30 | a=1000 (8)  b=1001 (9)  cin=1 | sum=1000 (8) cout=1
time=40 | a=0100 (4)  b=0110 (6)  cin=0 | sum=0000 (0) cout=1

