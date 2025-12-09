module replication_op (
input  [1:0] a,
output [7:0] y
);
assign y = {4{a}};   
endmodule
