module sr_latch (
input s,
input r,
output reg q,
output reg qbar
);
always @(s or r) begin
    if (s == 1 && r == 0) begin
        q = 1;
        qbar = 0;
    end
    else if (s == 0 && r == 1) begin
        q = 0;
        qbar = 1;
    end
    else if (s == 0 && r == 0) begin
        q = q;
        qbar = qbar;
    end
    else begin
        q = 1'bx;
        qbar = 1'bx;
    end
end


  //OUTPUT//
Time S  R  Q  Qbar
0    0  0  x   x
5    1  0  1   0
10   0  0  1   0
15   0  1  0   1
20   0  0  0   1
25   1  1  x   x
30   0  0  x   x
