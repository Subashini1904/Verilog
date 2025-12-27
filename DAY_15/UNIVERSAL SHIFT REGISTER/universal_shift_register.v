module universal_shift_register (
input clk,
input rst,
input [1:0] sel,        
input sr,            
input sl,               
input [3:0] p_in,     
output reg [3:0] q
);
always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 4'b0000;
    else begin
        case (sel)
            2'b00: q <= q;                     
            2'b01: q <= {sr, q[3:1]};            
            2'b10: q <= {q[2:0], sl};
            2'b11: q <= p_in;             
        endcase
end
end
endmodule


//OUTPUT//
Time=0 | sel=00 | q=0000
Time=10 | sel=11 | q=0000
Time=15 | sel=11 | q=1010
Time=20 | sel=00 | q=1010
Time=30 | sel=01 | q=1010
Time=35 | sel=01 | q=1101
Time=40 | sel=10 | q=1101
Time=45 | sel=10 | q=1010
Time=55 | sel=10 | q=0100
Time=65 | sel=10 | q=1000
Time=75 | sel=10 | q=0000
