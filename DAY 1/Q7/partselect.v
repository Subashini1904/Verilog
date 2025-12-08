module partselect (
    input  [7:0] data,
    output [3:0] partout
);
    assign partout = data[7:4];  
endmodule
