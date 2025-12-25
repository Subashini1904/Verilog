module sipo_dff (
input clk,
input rst,
input serial_in,
output reg q0, q1, q2, q3
);
always @(posedge clk or posedge rst) begin
if (rst) begin
    q0 <= 0;
    q1 <= 0;
    q2 <= 0;
    q3 <= 0;
end
else begin
    q0 <= serial_in;
    q1 <= q0;
    q2 <= q1;
    q3 <= q2;
end
end
endmodule


//OUTPUT//
Time=0 SI=0 Q3Q2Q1Q0=0000
Time=20 SI=1 Q3Q2Q1Q0=0000
Time=25 SI=1 Q3Q2Q1Q0=0001
Time=30 SI=0 Q3Q2Q1Q0=0001
Time=35 SI=0 Q3Q2Q1Q0=0010
Time=40 SI=1 Q3Q2Q1Q0=0010
Time=45 SI=1 Q3Q2Q1Q0=0101
Time=55 SI=1 Q3Q2Q1Q0=1011
Time=65 SI=1 Q3Q2Q1Q0=0111
