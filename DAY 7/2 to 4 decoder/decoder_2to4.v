module decoder2to4 (
input  [1:0] a,
output reg [3:0] y
);
always @(*) begin
y = 4'b0000;   
case (a)
    2'b00: y = 4'b0001;
    2'b01: y = 4'b0010;
    2'b10: y = 4'b0100;
    2'b11: y = 4'b1000;
endcase
end
endmodule


//OUTPUT//
t=0 | a=00 | y=0001
t=10 | a=01 | y=0010
t=20 | a=10 | y=0100
t=30 | a=11 | y=1000
