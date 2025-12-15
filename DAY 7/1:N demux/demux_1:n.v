module demux_1toN #(parameter N = 8)
(
input d,
input [$clog2(N)-1:0]s,
output reg [N-1:0]y
);
always @(*) begin
 y={N{1'b0}};
 y[s]=d;
end
endmodule


//OUTPUT//
t=0 | d=1 s=000 | y=00000001
t=10 | d=1 s=001 | y=00000010
t=20 | d=1 s=010 | y=00000100
t=30 | d=1 s=011 | y=00001000
t=40 | d=1 s=100 | y=00010000
t=50 | d=1 s=101 | y=00100000
t=60 | d=1 s=110 | y=01000000
t=70 | d=1 s=111 | y=10000000
t=80 | d=0 s=010 | y=00000000
