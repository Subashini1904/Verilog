module mux2to1(
  input a,
  input b,
  input c,
  output y
);
  wire f,x,z;
  not(f,a);
  and(x,f,b);
  and(z,a,c);
  or(y,x,z);
endmodule
