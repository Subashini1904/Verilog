module seven_seg_decoder (
input [3:0] bcd,
output reg [6:0] seg
);
always @(*) begin
case (bcd)
     4'd0: seg = 7'b1111110;
     4'd1: seg = 7'b0110000;
     4'd2: seg = 7'b1101101;
     4'd3: seg = 7'b1111001;
     4'd4: seg = 7'b0110011;
     4'd5: seg = 7'b1011011;
     4'd6: seg = 7'b1011111;
     4'd7: seg = 7'b1110000;
     4'd8: seg = 7'b1111111;
     4'd9: seg = 7'b1111011;
     default: seg = 7'b0000000; 
endcase
end
endmodule


//OUTPUT//
BCD  -> 7SEG (abcdefg)
 0   -> 1111110
 1   -> 0110000
 2   -> 1101101
 3   -> 1111001
 4   -> 0110011
 5   -> 1011011
 6   -> 1011111
 7   -> 1110000
 8   -> 1111111
 9   -> 1111011
