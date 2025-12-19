module tb_seven_seg_decoder;
reg  [3:0] bcd;
wire [6:0] seg;
integer i;
seven_seg_decoder dut (
.bcd(bcd),
.seg(seg)
);
initial begin
   $display("BCD  -> 7SEG (abcdefg)");
   for (i = 0; i < 10; i = i + 1) begin
        bcd = i;
        #5;
        $display("%d   -> %b", bcd, seg);
   end
   $finish;
end
endmodule

