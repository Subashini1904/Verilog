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
