module netdata(
 input a,
 input b,	 
 output wand w_and,
 output wor w_or,
 output tri t,
 output triand t_and
 );

assign w_and=a;
assign w_and=b;

assign w_or=a;
assign w_or=b;

assign t=(a)?1'b1:1'bz;
assign t_and=(b)?1'b1:1'bz;
endmodule
