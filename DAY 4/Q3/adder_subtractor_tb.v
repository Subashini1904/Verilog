module add_sub_4bit_tb;
reg  [3:0] a, b;
reg        mode;
wire [3:0] result;
wire       cout;
add_sub_4bit dut (
.a(a),
.b(b),
.mode(mode),
.result(result),
.cout(cout)
);
initial begin
    $dumpfile("add_sub_4bit.vcd");
    $dumpvars(0, add_sub_4bit_tb);
    $monitor("time=%0t | a=%b b=%b mode=%b | result=%b cout=%b",$time, a, b, mode, result, cout);
    mode = 0; a = 4'b0011; b = 4'b0101; #10;    
    mode = 0; a = 4'b1111; b = 4'b0001; #10;    
    mode = 0; a = 4'b1010; b = 4'b1010; #10;  
    mode = 1; a = 4'b0101; b = 4'b0011; #10;    
    mode = 1; a = 4'b1000; b = 4'b0001; #10;    
    mode = 1; a = 4'b0011; b = 4'b0101; #10;    
    $finish;
end
endmodule

