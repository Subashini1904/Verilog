module encoder4to2 (
  input  [3:0] d,
  output reg [1:0] y
);
always @(*) begin
y = 2'b00;       
case (d)
  4'b0001: y = 2'b00;
  4'b0010: y = 2'b01;
  4'b0100: y = 2'b10;
  4'b1000: y = 2'b11;
endcase
end
endmodule

//OUTPUT//
t=0 | d=0001 | y=00
t=10 | d=0010 | y=01
t=20 | d=0100 | y=10
t=30 | d=1000 | y=11
