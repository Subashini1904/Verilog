module arithmetic_op (
input  [3:0] a,
input  [3:0] b,
output [4:0] sum,
output [4:0] diff,
output [7:0] prod,
output [3:0] quot
);
    assign sum  = a + b;   
    assign diff = a - b;  
    assign prod = a * b;   
    assign quot = a / b;  
endmodule
