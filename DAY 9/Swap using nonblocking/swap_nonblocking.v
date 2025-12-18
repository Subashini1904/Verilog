module swap_clocked (
input clk,
input a,
input b,
output reg a_out,
output reg b_out
);
reg temp;
always @(posedge clk) begin
    temp  <= a;
    a_out <= b;
    b_out <= temp;
end
endmodule


//OUTPUT//
time=0 clk=0 a=0 b=1 | a_out=x b_out=x
time=5 clk=1 a=0 b=1 | a_out=1 b_out=x
time=10 clk=0 a=1 b=0 | a_out=1 b_out=x
time=15 clk=1 a=1 b=0 | a_out=0 b_out=0
time=20 clk=0 a=1 b=1 | a_out=0 b_out=0
time=25 clk=1 a=1 b=1 | a_out=1 b_out=1
time=30 clk=0 a=1 b=1 | a_out=1 b_out=1
time=35 clk=1 a=1 b=1 | a_out=1 b_out=1
time=40 clk=0 a=1 b=1 | a_out=1 b_out=1
time=45 clk=1 a=1 b=1 | a_out=1 b_out=1
