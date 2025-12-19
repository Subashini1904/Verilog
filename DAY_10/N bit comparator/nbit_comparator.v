module nbit_comparator #(parameter N = 4)(
input [N-1:0] A,
input [N-1:0] B,
output reg gt,
output reg lt,
output reg eq
);
always @(*) begin
    if (A > B) begin
        gt = 1;
        lt = 0;
        eq = 0;
end
    else if (A < B) begin
        gt = 0;
        lt = 1;
        eq = 0;
end
    else begin
        gt = 0;
        lt = 0;
        eq = 1;
end
end
endmodule

//OUTPUT//
A=0000  B=0000  | GT=0 LT=0 EQ=1
A=0000  B=0001  | GT=0 LT=1 EQ=0
A=0000  B=0010  | GT=0 LT=1 EQ=0
A=0000  B=0011  | GT=0 LT=1 EQ=0
A=0001  B=0000  | GT=1 LT=0 EQ=0
A=0001  B=0001  | GT=0 LT=0 EQ=1
A=0001  B=0010  | GT=0 LT=1 EQ=0
A=0001  B=0011  | GT=0 LT=1 EQ=0
A=0010  B=0000  | GT=1 LT=0 EQ=0
A=0010  B=0001  | GT=1 LT=0 EQ=0
A=0010  B=0010  | GT=0 LT=0 EQ=1
A=0010  B=0011  | GT=0 LT=1 EQ=0
A=0011  B=0000  | GT=1 LT=0 EQ=0
A=0011  B=0001  | GT=1 LT=0 EQ=0
A=0011  B=0010  | GT=1 LT=0 EQ=0
A=0011  B=0011  | GT=0 LT=0 EQ=1
