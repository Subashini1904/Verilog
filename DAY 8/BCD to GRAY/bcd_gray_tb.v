module bcd_to_gray_tb;
reg [3:0] bcd;
wire [3:0] gray;
integer i;
bcd_to_gray dut (
.bcd(bcd),
.gray(gray)
);
initial begin
    $monitor("time=%0t BCD=%b Gray=%b", $time, bcd, gray);
    for (i = 0; i <= 9; i = i + 1) begin
        bcd = i;
        #10;
    end
    $finish;
end
endmodule

