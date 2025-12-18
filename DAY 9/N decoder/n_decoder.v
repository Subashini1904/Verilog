module decoder #(parameter N = 8)            
(
input  [$clog2(N)-1:0] in,   
output reg [N-1:0] out
);
always @(*) begin
    out = 0;                     
    out[in] = 1'b1;           
end
endmodule


//OUTPUT//
time=0 in=000 out=00000001
time=10 in=001 out=00000010
time=20 in=010 out=00000100
time=30 in=011 out=00001000
time=40 in=100 out=00010000
time=50 in=101 out=00100000
time=60 in=110 out=01000000
time=70 in=111 out=10000000
