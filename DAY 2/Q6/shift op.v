module shift_op (
input  [3:0] a,
input  [1:0] sh,
output [3:0] lsl, 
output [3:0] lsr,  
output [3:0] asr  
);
assign lsl = a << sh;  
assign lsr = a >> sh; 
assign asr = $signed(a) >>> sh;  
endmodule


//OUTPUT//
Time=0 | a=1010 sh=01 | LSL=0100 LSR=0101 ASR=1101
Time=10 | a=1010 sh=10 | LSL=1000 LSR=0010 ASR=1110
Time=20 | a=0101 sh=01 | LSL=1010 LSR=0010 ASR=0010
Time=30 | a=1100 sh=01 | LSL=1000 LSR=0110 ASR=1110
