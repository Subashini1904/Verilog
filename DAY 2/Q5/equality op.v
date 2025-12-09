module equality_op (
    input  [3:0] a,
    input  [3:0] b,
    output eq,   
    output ne,   
    output ceq,   
    output cne   
);
    assign eq  = (a == b);
    assign ne  = (a != b);
    assign ceq = (a === b);
    assign cne = (a !== b);
endmodule


//OUTPUT//
time=0 | a=1010 b=1010 | eq==1 | ne!==0 | ceq===1 | cne!==0
time=10 | a=1010 b=0101 | eq==0 | ne!==1 | ceq===0 | cne!==1
time=20 | a=10x1 b=10x1 | eq==x | ne!==x | ceq===1 | cne!==0
time=30 | a=10x1 b=1011 | eq==x | ne!==x | ceq===0 | cne!==1
