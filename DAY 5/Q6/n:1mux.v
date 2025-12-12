module mux_n1 #(parameter N = 8)                       
(
 input  [N-1:0] in,                      
 input  [$clog2(N)-1:0] sel,             
 output reg y
);
  always @(*) begin
     y = in[sel];                         
  end
endmodule
