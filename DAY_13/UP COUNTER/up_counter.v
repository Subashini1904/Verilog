module up_counter (
input clk,
input rst,
output reg [3:0] count
);
always @(posedge clk) begin
    if (rst)
        count <= 4'b0000;
    else
        count <= count + 1;
end
endmodule


//OUTPUT//
Time=0 Count=xxxx
Time=5 Count=0000
Time=15 Count=0001
Time=25 Count=0010
Time=35 Count=0011
Time=45 Count=0100
Time=55 Count=0101
Time=65 Count=0110
Time=75 Count=0111
Time=85 Count=1000
Time=95 Count=1001
Time=105 Count=1010
