module mux2to1_case (
input a,
input b,
input s,
output reg y
);
always @(*) begin
    case (s)
        1'b0: y = a;
        1'b1: y = b;
        default: y = 1'b0;
    endcase
end
endmodule


//OUTPUT//
time=0 | a=0 b=0 s=0 | y=0
time=10 | a=0 b=1 s=0 | y=0
time=20 | a=1 b=0 s=1 | y=0
time=30 | a=1 b=1 s=1 | y=1
