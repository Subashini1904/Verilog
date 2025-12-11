module comparator_4bit_tb;
reg [3:0] a, b;
wire gt, lt, eq;
comparator_4bit dut(
.a(a),
.b(b),
.gt(gt),
.lt(lt),
.eq(eq)
);
initial begin
    $dumpfile("comparator_4bit.vcd");
    $dumpvars(0, comparator_4bit_tb);

    $monitor("time=%0t | a=%b(%0d) b=%b(%0d) | gt=%b lt=%b eq=%b", $time, a, a, b, b, gt, lt, eq);
    a = 4'b0101; b = 4'b0011; #10;   
    a = 4'b0010; b = 4'b0110; #10;   
    a = 4'b1111; b = 4'b1111; #10;   
    a = 4'b1001; b = 4'b1010; #10;   
    a = 4'b0111; b = 4'b0001; #10;   
    $finish;
end
endmodule

