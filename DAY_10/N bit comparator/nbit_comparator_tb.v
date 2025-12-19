module tb_nbit_comparator;
parameter N = 4;
reg  [N-1:0] A, B;
wire gt, lt, eq;
integer i,j;
nbit_comparator #(N) dut (
.A(A),
.B(B),
.gt(gt),
.lt(lt),
.eq(eq)
);
initial begin
        for (i = 0; i < 4; i = i + 1) begin
        for (j = 0; j < 4; j = j + 1) begin
            A = i;
            B = j;
            #5;
            $display("A=%b  B=%b  | GT=%b LT=%b EQ=%b", A, B, gt, lt, eq);          
        end
        end
        $finish;
end
endmodule

