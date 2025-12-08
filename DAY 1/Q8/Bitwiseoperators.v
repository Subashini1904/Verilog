module bitwise_op (
    input  [3:0] a,
    input  [3:0] b,
    output [3:0] and_out,
    output [3:0] or_out,
    output [3:0] xor_out,
    output [3:0] not_out
);
    assign and_out = a & b;   
    assign or_out  = a | b;   
    assign xor_out = a ^ b;  
    assign not_out = ~a;      
endmodule
