module decoder_tb;
parameter N = 8;
reg  [$clog2(N)-1:0] in;
wire [N-1:0] out;
integer i;
decoder #(N) dut (
.in(in),
.out(out)
);
initial begin
    $monitor("time=%0t in=%b out=%b", $time, in, out);
    for (i = 0; i < N; i = i + 1) begin
        in = i;
        #10;
    end
    $finish;
end
endmodule

