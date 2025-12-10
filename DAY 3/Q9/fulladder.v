module fulladder(
    input a,
    input b,
    input cin,
    output sum,
    output carry
);
    wire s1, c1, c2;
    xor (s1, a, b);       
    xor (sum, s1, cin);  
    and (c1, a, b);       
    and (c2, s1, cin);    
    or  (carry, c1, c2);  
endmodule


//OUTPUT//
time=0 | a=0 b=0 cin=0 | sum=0 carry=0
time=10 | a=0 b=0 cin=1 | sum=1 carry=0
time=20 | a=0 b=1 cin=0 | sum=1 carry=0
time=30 | a=0 b=1 cin=1 | sum=0 carry=1
time=40 | a=1 b=0 cin=0 | sum=1 carry=0
time=50 | a=1 b=0 cin=1 | sum=0 carry=1
time=60 | a=1 b=1 cin=0 | sum=0 carry=1
time=70 | a=1 b=1 cin=1 | sum=1 carry=1
