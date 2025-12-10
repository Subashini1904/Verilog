module half_adder(
    input  a,
    input  b,
    output sum,
    output carry
);
    assign sum = a ^ b;  
    assign carry = a & b;
endmodule


//OUTPUT//
Time=0 | a=0 b=0 | sum=0 carry=0
Time=10 | a=0 b=1 | sum=1 carry=0
Time=20 | a=1 b=0 | sum=1 carry=0
Time=30 | a=1 b=1 | sum=0 carry=1
