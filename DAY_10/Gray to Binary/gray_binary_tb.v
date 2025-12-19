module tb_gray_to_binary;
reg [3:0] gray;
wire [3:0] binary;
integer i;
gray_to_binary dut (
.gray(gray),
.binary(binary)
);
initial begin
    $display("Gray  -> Binary");
    for (i = 0; i < 8; i = i + 1) begin
        gray = i[3:0];     
        #5;
        $display("%b -> %b", gray, binary);
end
    $finish;
end
endmodule

