module pipo (
input clk,
input rst,
input [3:0] parallel_in,
output reg [3:0] parallel_out
);
always @(posedge clk or posedge rst) begin
    if (rst)
        parallel_out <= 4'b0000;
    else
        parallel_out <= parallel_in;
end
endmodule


//OUTPUT//
Time=0 Parallel_in=0000 Parallel_out=0000
Time=20 Parallel_in=1010 Parallel_out=0000
Time=25 Parallel_in=1010 Parallel_out=1010
Time=30 Parallel_in=0111 Parallel_out=1010
Time=35 Parallel_in=0111 Parallel_out=0111
Time=40 Parallel_in=1100 Parallel_out=0111
Time=45 Parallel_in=1100 Parallel_out=1100
