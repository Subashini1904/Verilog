module swap_blocking (
input a,
input b,
output reg a_out,
output reg b_out
);
reg temp;
always @(*) begin
    temp  = a;
    a_out = b;
    b_out = temp;
end
endmodule


//OUTPUT//
time=0 a=0 b=1 | a_out=1 b_out=0
time=10 a=1 b=0 | a_out=0 b_out=1
time=20 a=1 b=1 | a_out=1 b_out=1
