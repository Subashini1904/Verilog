module add_sub_4bit(
input [3:0] a,
input [3:0] b,
input mode,    
output reg [3:0] result,
output reg   cout
);
reg [4:0] temp;  
always @(*) begin
 if(mode == 0)
   temp = a + b;             
 else
   temp = a + (~b + 1);      
   result = temp[3:0];     
   cout   = temp[4];              
 end
endmodule



//OUTPUT//
time=0 | a=0011 b=0101 mode=0 | result=1000 cout=0
time=10 | a=1111 b=0001 mode=0 | result=0000 cout=1
time=20 | a=1010 b=1010 mode=0 | result=0100 cout=1
time=30 | a=0101 b=0011 mode=1 | result=0010 cout=0
time=40 | a=1000 b=0001 mode=1 | result=0111 cout=0
