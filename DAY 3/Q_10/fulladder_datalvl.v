module full_adder (
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);
assign Sum  = A ^ B ^ Cin;         
assign Cout = (A & B) | (B & Cin) | (Cin & A); 
endmodule


//OUTPUT//
A B Cin | Sum Cout
0 0 0   | 0   0
0 1 0   | 1   0
1 0 0   | 1   0
1 1 0   | 0   1
0 0 1   | 1   0
0 1 1   | 0   1
1 0 1   | 0   1
1 1 1   | 1   1
