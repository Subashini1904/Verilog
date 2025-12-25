module down_counter (
input clk,
input rst,
output reg [3:0] count
);
always @(posedge clk) begin
    if (rst)
        count <= 4'b1111; 
    else
        count <= count - 1;
end
endmodule


//OUTPUT//
Time=0 clk=0 rst=1 count=xxxx
Time=5 clk=1 rst=1 count=1111
Time=10 clk=0 rst=0 count=1111
Time=15 clk=1 rst=0 count=1110
Time=20 clk=0 rst=0 count=1110
Time=25 clk=1 rst=0 count=1101
Time=30 clk=0 rst=0 count=1101
Time=35 clk=1 rst=0 count=1100
Time=40 clk=0 rst=0 count=1100
Time=45 clk=1 rst=0 count=1011
Time=50 clk=0 rst=0 count=1011
Time=55 clk=1 rst=0 count=1010
