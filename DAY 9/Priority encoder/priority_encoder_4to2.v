module priority_encoder_4to2 (
input  [3:0] in,
output reg [1:0] out,
output reg valid
);
always @(*) begin
    valid = 1'b1;
    case (1'b1)
        in[3]: out = 2'b11;
        in[2]: out = 2'b10;
        in[1]: out = 2'b01;
        in[0]: out = 2'b00;
        default: begin
            out   = 2'b00;
            valid = 1'b0;
        end
    endcase
end
endmodule


//OUTPUT//
time=0 in=0000 out=00 valid=0
time=10 in=0001 out=00 valid=1
time=20 in=0010 out=01 valid=1
time=30 in=0011 out=01 valid=1
time=40 in=0100 out=10 valid=1
time=50 in=0101 out=10 valid=1
time=60 in=0110 out=10 valid=1
time=70 in=0111 out=10 valid=1
time=80 in=1000 out=11 valid=1
time=90 in=1001 out=11 valid=1
time=100 in=1010 out=11 valid=1
time=110 in=1011 out=11 valid=1
time=120 in=1100 out=11 valid=1
time=130 in=1101 out=11 valid=1
time=140 in=1110 out=11 valid=1
time=150 in=1111 out=11 valid=1
